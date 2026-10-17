## `mariadb:resolute`

```console
$ docker pull mariadb@sha256:0e4bb0f339feba125d1154fbacd36c16ec8518f52e44e1f82ecec7d6771caf39
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

### `mariadb:resolute` - linux; amd64

```console
$ docker pull mariadb@sha256:e9da0249be70b36d1eed6b2d1537aecf9a65ba6f3982a5fe8dcc773815a87721
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.9 MB (119876635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c912705a92a6b0645980ede642c047dbf24197c0a0cde1af8668aa51b68e4e31`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mariadbd"]`

```dockerfile
# Tue, 06 Oct 2026 21:25:29 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/.temp_layer.9621.tar --tag 26.04
# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-10-06T21:25:30.040262+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-10-06T21:25:30.040262+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/.temp_layer.control_data.9621.tar
# Sat, 17 Oct 2026 00:31:21 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql --home-dir /var/lib/mysql && userdel --remove ubuntu # buildkit
# Sat, 17 Oct 2026 00:31:39 GMT
ENV GOSU_VERSION=1.19
# Sat, 17 Oct 2026 00:31:39 GMT
ARG GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
# Sat, 17 Oct 2026 00:31:39 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
RUN set -eux; 	apt-get update; 	DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends 		ca-certificates 		gpg 		gpgv 		libjemalloc2 		libtcmalloc-minimal4t64 		pwgen 		tzdata 		xz-utils 		zstd ; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get install -y --no-install-recommends 		dirmngr 		gpg-agent 		wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -q -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -q -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	GNUPGHOME="$(mktemp -d)"; 	export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --export "$GPG_KEYS" > /etc/apt/trusted.gpg.d/mariadb.gpg; 	if command -v gpgconf >/dev/null; then 		gpgconf --kill all; 	fi; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] ||	apt-mark manual $savedAptMark >/dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 17 Oct 2026 00:31:39 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Sat, 17 Oct 2026 00:31:39 GMT
ENV LANG=C.UTF-8
# Sat, 17 Oct 2026 00:31:39 GMT
LABEL org.opencontainers.image.authors=MariaDB Community org.opencontainers.image.title=MariaDB Database org.opencontainers.image.description=MariaDB Database for relational SQL org.opencontainers.image.documentation=https://hub.docker.com/_/mariadb/ org.opencontainers.image.base.name=docker.io/library/ubuntu:resolute org.opencontainers.image.licenses=GPL-2.0 org.opencontainers.image.source=https://github.com/MariaDB/mariadb-docker org.opencontainers.image.vendor=MariaDB Community org.opencontainers.image.version=13.0.2 org.opencontainers.image.url=https://github.com/MariaDB/mariadb-docker
# Sat, 17 Oct 2026 00:31:39 GMT
ARG MARIADB_VERSION=1:13.0.2+maria~ubu2604
# Sat, 17 Oct 2026 00:31:39 GMT
ENV MARIADB_VERSION=1:13.0.2+maria~ubu2604
# Sat, 17 Oct 2026 00:31:39 GMT
ARG REPOSITORY=http://archive.mariadb.org/mariadb-13.0.2/repo/ubuntu/ resolute main main/debug
# Sat, 17 Oct 2026 00:31:39 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:13.0.2+maria~ubu2604 REPOSITORY=http://archive.mariadb.org/mariadb-13.0.2/repo/ubuntu/ resolute main main/debug
RUN set -e;	echo "deb ${REPOSITORY}" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb # buildkit
# Sat, 17 Oct 2026 00:31:57 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:13.0.2+maria~ubu2604 REPOSITORY=http://archive.mariadb.org/mariadb-13.0.2/repo/ubuntu/ resolute main main/debug
RUN set -ex; 	{ 		echo "mariadb-server" mysql-server/root_password password 'unused'; 		echo "mariadb-server" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	apt-get update; 	mkdir -p /var/lib/mysql/mysql ; touch /var/lib/mysql/mysql/user.frm ; 	apt-get install -y --no-install-recommends mariadb-server-galera="$MARIADB_VERSION" mariadb-backup socat 	; 	rm -rf /var/lib/apt/lists/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /run/mysqld; 	chmod 1777 /run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user\s)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user\s)/#&/'; 	printf "[mariadb]\nhost-cache-size=0\nskip-name-resolve\n" > /etc/mysql/mariadb.conf.d/05-skipcache.cnf; 	if [ -L /etc/mysql/my.cnf ]; then 		sed -i -e '/includedir/ {N;s/\(.*\)\n\(.*\)/\n\2\n\1/}' /etc/mysql/mariadb.cnf; 	fi # buildkit
# Sat, 17 Oct 2026 00:31:57 GMT
VOLUME [/var/lib/mysql]
# Sat, 17 Oct 2026 00:31:57 GMT
COPY healthcheck.sh /usr/local/bin/healthcheck.sh # buildkit
# Sat, 17 Oct 2026 00:31:57 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 17 Oct 2026 00:31:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Oct 2026 00:31:57 GMT
EXPOSE map[3306/tcp:{}]
# Sat, 17 Oct 2026 00:31:57 GMT
CMD ["mariadbd"]
```

-	Layers:
	-	`sha256:435bf5c20694c99dd5a9877e58e24b26a2207fcf8c692a3c3ce3c867770a5b41`  
		Last Modified: Wed, 07 Oct 2026 20:45:12 GMT  
		Size: 42.1 MB (42149117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9d511d19a19ebdeda520e0752f184d457905c7a310df5b748d133a51274ecd4`  
		Last Modified: Wed, 07 Oct 2026 20:45:15 GMT  
		Size: 391.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ad028bab5ec078dd0b3d507f1d57bce6cb98a4e6fbabfda8910ba062a814caf`  
		Last Modified: Sat, 17 Oct 2026 00:32:14 GMT  
		Size: 1.3 KB (1341 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eeb874bed09fc521bff1645f6635124223246cbb613afd2b1219efb009229767`  
		Last Modified: Sat, 17 Oct 2026 00:32:14 GMT  
		Size: 5.8 MB (5756637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97906c8ec2701ec8dc31d43013d62b46ac912ebcac92feccd852f26e89c1bde7`  
		Last Modified: Sat, 17 Oct 2026 00:32:14 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c8d5005e1c12d3668ba58bbf9a856f0fc51a24775c85ef4357dd015deba000f`  
		Last Modified: Sat, 17 Oct 2026 00:32:14 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f9e8d1dd29b1efb368b4ff4472ae3a32d29022c6364d54d2a4f1dee2f3cbab1`  
		Last Modified: Sat, 17 Oct 2026 00:32:17 GMT  
		Size: 72.0 MB (71956165 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eced4a61a8cd4bf845c4fd24799c1556fb8a6d49ac88651d6fdf9bcecec14033`  
		Last Modified: Sat, 17 Oct 2026 00:32:15 GMT  
		Size: 4.0 KB (4038 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c051d006adc1fa23da1509689d4c515c88bbd0acedfc83d0f67cd911ae13f5e6`  
		Last Modified: Sat, 17 Oct 2026 00:32:15 GMT  
		Size: 8.5 KB (8497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mariadb:resolute` - unknown; unknown

```console
$ docker pull mariadb@sha256:48fcbbc7eb262e9ac77a100460a8cc03a4ef9ba2718f7ec99f4d5028ccb7a4bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6230663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02180b0466a40e141c3e80223f7ef27243451da718c766100101db7dc2baf396`

```dockerfile
```

-	Layers:
	-	`sha256:5bd7074cb014b2fdaf5c39a567e53ef963f5f660a6cdff76dedb6e6610f28910`  
		Last Modified: Sat, 17 Oct 2026 00:32:15 GMT  
		Size: 6.2 MB (6197930 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5476adb0ffcc59ea7a56948dc41c90db6a9d5d482094e6ff9fd77a4b85bbeb88`  
		Last Modified: Sat, 17 Oct 2026 00:32:14 GMT  
		Size: 32.7 KB (32733 bytes)  
		MIME: application/vnd.in-toto+json

### `mariadb:resolute` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:945b885fa8b3c472afeb5f2c18b615823bce1683879e69a663307e9fc37e8340
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.9 MB (116910405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a140c8f220ff32c7221c4c175d91bed10883d20d52e0f5f3bcba3ae681015f2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mariadbd"]`

```dockerfile
# Tue, 06 Oct 2026 20:38:11 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/.temp_layer.9614.tar --tag 26.04
# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-10-06T20:38:12.175309+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-10-06T20:38:12.175309+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/.temp_layer.control_data.9614.tar
# Sat, 17 Oct 2026 00:31:01 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql --home-dir /var/lib/mysql && userdel --remove ubuntu # buildkit
# Sat, 17 Oct 2026 00:31:23 GMT
ENV GOSU_VERSION=1.19
# Sat, 17 Oct 2026 00:31:23 GMT
ARG GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
# Sat, 17 Oct 2026 00:31:23 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
RUN set -eux; 	apt-get update; 	DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends 		ca-certificates 		gpg 		gpgv 		libjemalloc2 		libtcmalloc-minimal4t64 		pwgen 		tzdata 		xz-utils 		zstd ; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get install -y --no-install-recommends 		dirmngr 		gpg-agent 		wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -q -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -q -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	GNUPGHOME="$(mktemp -d)"; 	export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --export "$GPG_KEYS" > /etc/apt/trusted.gpg.d/mariadb.gpg; 	if command -v gpgconf >/dev/null; then 		gpgconf --kill all; 	fi; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] ||	apt-mark manual $savedAptMark >/dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 17 Oct 2026 00:31:23 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Sat, 17 Oct 2026 00:31:23 GMT
ENV LANG=C.UTF-8
# Sat, 17 Oct 2026 00:31:23 GMT
LABEL org.opencontainers.image.authors=MariaDB Community org.opencontainers.image.title=MariaDB Database org.opencontainers.image.description=MariaDB Database for relational SQL org.opencontainers.image.documentation=https://hub.docker.com/_/mariadb/ org.opencontainers.image.base.name=docker.io/library/ubuntu:resolute org.opencontainers.image.licenses=GPL-2.0 org.opencontainers.image.source=https://github.com/MariaDB/mariadb-docker org.opencontainers.image.vendor=MariaDB Community org.opencontainers.image.version=13.0.2 org.opencontainers.image.url=https://github.com/MariaDB/mariadb-docker
# Sat, 17 Oct 2026 00:31:23 GMT
ARG MARIADB_VERSION=1:13.0.2+maria~ubu2604
# Sat, 17 Oct 2026 00:31:23 GMT
ENV MARIADB_VERSION=1:13.0.2+maria~ubu2604
# Sat, 17 Oct 2026 00:31:23 GMT
ARG REPOSITORY=http://archive.mariadb.org/mariadb-13.0.2/repo/ubuntu/ resolute main main/debug
# Sat, 17 Oct 2026 00:31:23 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:13.0.2+maria~ubu2604 REPOSITORY=http://archive.mariadb.org/mariadb-13.0.2/repo/ubuntu/ resolute main main/debug
RUN set -e;	echo "deb ${REPOSITORY}" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb # buildkit
# Sat, 17 Oct 2026 00:31:41 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:13.0.2+maria~ubu2604 REPOSITORY=http://archive.mariadb.org/mariadb-13.0.2/repo/ubuntu/ resolute main main/debug
RUN set -ex; 	{ 		echo "mariadb-server" mysql-server/root_password password 'unused'; 		echo "mariadb-server" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	apt-get update; 	mkdir -p /var/lib/mysql/mysql ; touch /var/lib/mysql/mysql/user.frm ; 	apt-get install -y --no-install-recommends mariadb-server-galera="$MARIADB_VERSION" mariadb-backup socat 	; 	rm -rf /var/lib/apt/lists/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /run/mysqld; 	chmod 1777 /run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user\s)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user\s)/#&/'; 	printf "[mariadb]\nhost-cache-size=0\nskip-name-resolve\n" > /etc/mysql/mariadb.conf.d/05-skipcache.cnf; 	if [ -L /etc/mysql/my.cnf ]; then 		sed -i -e '/includedir/ {N;s/\(.*\)\n\(.*\)/\n\2\n\1/}' /etc/mysql/mariadb.cnf; 	fi # buildkit
# Sat, 17 Oct 2026 00:31:41 GMT
VOLUME [/var/lib/mysql]
# Sat, 17 Oct 2026 00:31:41 GMT
COPY healthcheck.sh /usr/local/bin/healthcheck.sh # buildkit
# Sat, 17 Oct 2026 00:31:41 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 17 Oct 2026 00:31:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Oct 2026 00:31:41 GMT
EXPOSE map[3306/tcp:{}]
# Sat, 17 Oct 2026 00:31:41 GMT
CMD ["mariadbd"]
```

-	Layers:
	-	`sha256:00dbf11534ae4abda99e035d0e681f5254da63d2f778eaed69f1e5f6be9a6092`  
		Last Modified: Wed, 07 Oct 2026 20:45:23 GMT  
		Size: 41.1 MB (41107810 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8eae6888566fa953bb1c57088f997a22020e240963959b195cbe865109eabd9`  
		Last Modified: Wed, 07 Oct 2026 20:45:26 GMT  
		Size: 386.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60d72df0aa7b4da33fc209b73dbd15b360f167fc6f5c8b94b2dd6c4302371c57`  
		Last Modified: Sat, 17 Oct 2026 00:31:59 GMT  
		Size: 1.3 KB (1342 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b967e20e8d036cb4c1983681027121367515c609c44a5c09fef7ea5fdbeeab0`  
		Last Modified: Sat, 17 Oct 2026 00:31:59 GMT  
		Size: 5.5 MB (5501691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81de0e21a89c403cfd8d6d6b688ff94a04c6cc82a0ae2517fcce9ba19c0a37d0`  
		Last Modified: Sat, 17 Oct 2026 00:31:59 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df1c2e6c4eddc1d67a57ab5bd080f1d5bb65e7567ced5d3beebf08a7711149b7`  
		Last Modified: Sat, 17 Oct 2026 00:31:59 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83f69b3ea5b2fc4d4a4454a4cc8e8f659b0ab62863b8585d0d4aa327ab0d8581`  
		Last Modified: Sat, 17 Oct 2026 00:32:02 GMT  
		Size: 70.3 MB (70286198 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c50d4b6297ede6d19823fa4d259b6a8883752b05bcf3b32a9a335c0765e46162`  
		Last Modified: Sat, 17 Oct 2026 00:32:01 GMT  
		Size: 4.0 KB (4034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79d2632a5159ffa8c47eb4f9fb748a8a724b204583d09b55c00fb4ad9c07af37`  
		Last Modified: Sat, 17 Oct 2026 00:32:01 GMT  
		Size: 8.5 KB (8495 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mariadb:resolute` - unknown; unknown

```console
$ docker pull mariadb@sha256:d462a22becf74f9816cb2b5c1e3626070482468e40f04fa9ed183a65b210f7e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6237334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1250dd4d1e16ff3d05fd4d4c444233d6d17b91b72e2bc3fc04ff1d9bc4587eab`

```dockerfile
```

-	Layers:
	-	`sha256:46fd0687bd0fc5b01055fd6783b47297867d6737c178c5a644a6ea37948d15b6`  
		Last Modified: Sat, 17 Oct 2026 00:31:59 GMT  
		Size: 6.2 MB (6204389 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3b71cd3feef9ccbbce91f6e13cd6bf3e5cfbc4e9e58cf812d246e2a0d744114a`  
		Last Modified: Sat, 17 Oct 2026 00:31:59 GMT  
		Size: 32.9 KB (32945 bytes)  
		MIME: application/vnd.in-toto+json

### `mariadb:resolute` - linux; ppc64le

```console
$ docker pull mariadb@sha256:8a80a69ab2fca02720b29034435c23e7723d1c56e6d2f11c2facfa55c33a5b6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.5 MB (130473634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5d1a59c715a30a2645e78ae4c2218a35664d543b0bca3d4fcedb2cc32b768df`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mariadbd"]`

```dockerfile
# Tue, 06 Oct 2026 20:40:52 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/.temp_layer.9489.tar --tag 26.04
# Tue, 06 Oct 2026 20:40:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Tue, 06 Oct 2026 20:40:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Tue, 06 Oct 2026 20:40:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 20:40:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-10-06T20:40:52.926628+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 06 Oct 2026 20:40:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-10-06T20:40:52.926628+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 06 Oct 2026 20:40:52 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/.temp_layer.control_data.9489.tar
# Sat, 17 Oct 2026 01:32:14 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql --home-dir /var/lib/mysql && userdel --remove ubuntu # buildkit
# Sat, 17 Oct 2026 01:33:25 GMT
ENV GOSU_VERSION=1.19
# Sat, 17 Oct 2026 01:33:25 GMT
ARG GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
# Sat, 17 Oct 2026 01:33:25 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
RUN set -eux; 	apt-get update; 	DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends 		ca-certificates 		gpg 		gpgv 		libjemalloc2 		libtcmalloc-minimal4t64 		pwgen 		tzdata 		xz-utils 		zstd ; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get install -y --no-install-recommends 		dirmngr 		gpg-agent 		wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -q -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -q -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	GNUPGHOME="$(mktemp -d)"; 	export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --export "$GPG_KEYS" > /etc/apt/trusted.gpg.d/mariadb.gpg; 	if command -v gpgconf >/dev/null; then 		gpgconf --kill all; 	fi; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] ||	apt-mark manual $savedAptMark >/dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 17 Oct 2026 01:33:26 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Sat, 17 Oct 2026 01:33:26 GMT
ENV LANG=C.UTF-8
# Sat, 17 Oct 2026 01:33:26 GMT
LABEL org.opencontainers.image.authors=MariaDB Community org.opencontainers.image.title=MariaDB Database org.opencontainers.image.description=MariaDB Database for relational SQL org.opencontainers.image.documentation=https://hub.docker.com/_/mariadb/ org.opencontainers.image.base.name=docker.io/library/ubuntu:resolute org.opencontainers.image.licenses=GPL-2.0 org.opencontainers.image.source=https://github.com/MariaDB/mariadb-docker org.opencontainers.image.vendor=MariaDB Community org.opencontainers.image.version=13.0.2 org.opencontainers.image.url=https://github.com/MariaDB/mariadb-docker
# Sat, 17 Oct 2026 01:33:26 GMT
ARG MARIADB_VERSION=1:13.0.2+maria~ubu2604
# Sat, 17 Oct 2026 01:33:26 GMT
ENV MARIADB_VERSION=1:13.0.2+maria~ubu2604
# Sat, 17 Oct 2026 01:33:26 GMT
ARG REPOSITORY=http://archive.mariadb.org/mariadb-13.0.2/repo/ubuntu/ resolute main main/debug
# Sat, 17 Oct 2026 01:33:26 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:13.0.2+maria~ubu2604 REPOSITORY=http://archive.mariadb.org/mariadb-13.0.2/repo/ubuntu/ resolute main main/debug
RUN set -e;	echo "deb ${REPOSITORY}" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb # buildkit
# Sat, 17 Oct 2026 01:34:37 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:13.0.2+maria~ubu2604 REPOSITORY=http://archive.mariadb.org/mariadb-13.0.2/repo/ubuntu/ resolute main main/debug
RUN set -ex; 	{ 		echo "mariadb-server" mysql-server/root_password password 'unused'; 		echo "mariadb-server" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	apt-get update; 	mkdir -p /var/lib/mysql/mysql ; touch /var/lib/mysql/mysql/user.frm ; 	apt-get install -y --no-install-recommends mariadb-server-galera="$MARIADB_VERSION" mariadb-backup socat 	; 	rm -rf /var/lib/apt/lists/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /run/mysqld; 	chmod 1777 /run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user\s)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user\s)/#&/'; 	printf "[mariadb]\nhost-cache-size=0\nskip-name-resolve\n" > /etc/mysql/mariadb.conf.d/05-skipcache.cnf; 	if [ -L /etc/mysql/my.cnf ]; then 		sed -i -e '/includedir/ {N;s/\(.*\)\n\(.*\)/\n\2\n\1/}' /etc/mysql/mariadb.cnf; 	fi # buildkit
# Sat, 17 Oct 2026 01:34:37 GMT
VOLUME [/var/lib/mysql]
# Sat, 17 Oct 2026 01:34:38 GMT
COPY healthcheck.sh /usr/local/bin/healthcheck.sh # buildkit
# Sat, 17 Oct 2026 01:34:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 17 Oct 2026 01:34:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Oct 2026 01:34:39 GMT
EXPOSE map[3306/tcp:{}]
# Sat, 17 Oct 2026 01:34:39 GMT
CMD ["mariadbd"]
```

-	Layers:
	-	`sha256:a262d7f3fc44532425408a05158e95511d4ebe3af8c0a1de354e7157bb27d6f0`  
		Last Modified: Wed, 07 Oct 2026 20:45:34 GMT  
		Size: 47.2 MB (47226803 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15f84129b3088bcac32100330a0fc3d834e81f5cfe23a85ce237f2a63cc920d6`  
		Last Modified: Wed, 07 Oct 2026 20:45:37 GMT  
		Size: 391.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0f84dbd08244731e4ee7d554bb09e39bd588b564f9220b6e18af3b669e152ae`  
		Last Modified: Sat, 17 Oct 2026 01:35:29 GMT  
		Size: 1.3 KB (1347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bd9addf793f4a6aa74b2c534f0230c4ffcdbf504585087c35ed048aa15c969a`  
		Last Modified: Sat, 17 Oct 2026 01:35:30 GMT  
		Size: 6.6 MB (6576360 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c68a4accc811a724021bb2d2c06fb061b65e955981f3e2c735d4997706fc4fe`  
		Last Modified: Sat, 17 Oct 2026 01:35:29 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f40a1c5af44426ce879dde5ed39f9d3617316a1c271626cfb47a8c70ae29a791`  
		Last Modified: Sat, 17 Oct 2026 01:35:29 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1274b25a28b0e3c1fcff6c3b278ac08735077a22af95066a297cebfff30c25f`  
		Last Modified: Sat, 17 Oct 2026 01:35:33 GMT  
		Size: 76.7 MB (76655743 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7de4861f89e65b828fe58064182f0ab8d975c65c4a975b33a8fd59d0a628ca33`  
		Last Modified: Sat, 17 Oct 2026 01:35:31 GMT  
		Size: 4.0 KB (4039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f938069d0aebf0643b5e5bfa9ef013b648965f9e032230933f5b1cb06d67bf51`  
		Last Modified: Sat, 17 Oct 2026 01:35:31 GMT  
		Size: 8.5 KB (8500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mariadb:resolute` - unknown; unknown

```console
$ docker pull mariadb@sha256:c285954b27d66cfa4c8df2354c00e4b2c8c731ad32b2031ff14da25015a97c09
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6237777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd7225e330e52a0a1bf4be431659cdbfade87ad060df614525a4b7d6b0d5a8bd`

```dockerfile
```

-	Layers:
	-	`sha256:80ebba5032cfa31a2660ef43d1e0a79d4e477d961f0a937b103e02400489e9de`  
		Last Modified: Sat, 17 Oct 2026 01:35:30 GMT  
		Size: 6.2 MB (6204968 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c40a04edea3eaa1b7e118007710ac05e0be25dda573be7c17105ababd46ec2b5`  
		Last Modified: Sat, 17 Oct 2026 01:35:29 GMT  
		Size: 32.8 KB (32809 bytes)  
		MIME: application/vnd.in-toto+json

### `mariadb:resolute` - linux; s390x

```console
$ docker pull mariadb@sha256:f95efb33f6f42c947938694700b3f711356e32dd47215434c500a8bb5b551d4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.6 MB (123628503 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ac4e68c9b1bc08e9f63052e0244d7bec9990e6f17c5d32e908fb4a8eec69cb4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mariadbd"]`

```dockerfile
# Tue, 06 Oct 2026 20:37:54 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/.temp_layer.9530.tar --tag 26.04
# Tue, 06 Oct 2026 20:37:54 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Tue, 06 Oct 2026 20:37:54 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Tue, 06 Oct 2026 20:37:54 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 20:37:54 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-10-06T20:37:54.627411+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 06 Oct 2026 20:37:54 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-10-06T20:37:54.627411+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 06 Oct 2026 20:37:54 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/.temp_layer.control_data.9530.tar
# Sat, 17 Oct 2026 00:41:38 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql --home-dir /var/lib/mysql && userdel --remove ubuntu # buildkit
# Sat, 17 Oct 2026 00:43:30 GMT
ENV GOSU_VERSION=1.19
# Sat, 17 Oct 2026 00:43:30 GMT
ARG GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
# Sat, 17 Oct 2026 00:43:30 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
RUN set -eux; 	apt-get update; 	DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends 		ca-certificates 		gpg 		gpgv 		libjemalloc2 		libtcmalloc-minimal4t64 		pwgen 		tzdata 		xz-utils 		zstd ; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get install -y --no-install-recommends 		dirmngr 		gpg-agent 		wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -q -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -q -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	GNUPGHOME="$(mktemp -d)"; 	export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --export "$GPG_KEYS" > /etc/apt/trusted.gpg.d/mariadb.gpg; 	if command -v gpgconf >/dev/null; then 		gpgconf --kill all; 	fi; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] ||	apt-mark manual $savedAptMark >/dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 17 Oct 2026 00:43:30 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Sat, 17 Oct 2026 00:43:30 GMT
ENV LANG=C.UTF-8
# Sat, 17 Oct 2026 00:43:30 GMT
LABEL org.opencontainers.image.authors=MariaDB Community org.opencontainers.image.title=MariaDB Database org.opencontainers.image.description=MariaDB Database for relational SQL org.opencontainers.image.documentation=https://hub.docker.com/_/mariadb/ org.opencontainers.image.base.name=docker.io/library/ubuntu:resolute org.opencontainers.image.licenses=GPL-2.0 org.opencontainers.image.source=https://github.com/MariaDB/mariadb-docker org.opencontainers.image.vendor=MariaDB Community org.opencontainers.image.version=13.0.2 org.opencontainers.image.url=https://github.com/MariaDB/mariadb-docker
# Sat, 17 Oct 2026 00:43:30 GMT
ARG MARIADB_VERSION=1:13.0.2+maria~ubu2604
# Sat, 17 Oct 2026 00:43:30 GMT
ENV MARIADB_VERSION=1:13.0.2+maria~ubu2604
# Sat, 17 Oct 2026 00:43:30 GMT
ARG REPOSITORY=http://archive.mariadb.org/mariadb-13.0.2/repo/ubuntu/ resolute main main/debug
# Sat, 17 Oct 2026 00:43:32 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:13.0.2+maria~ubu2604 REPOSITORY=http://archive.mariadb.org/mariadb-13.0.2/repo/ubuntu/ resolute main main/debug
RUN set -e;	echo "deb ${REPOSITORY}" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb # buildkit
# Sat, 17 Oct 2026 00:46:51 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:13.0.2+maria~ubu2604 REPOSITORY=http://archive.mariadb.org/mariadb-13.0.2/repo/ubuntu/ resolute main main/debug
RUN set -ex; 	{ 		echo "mariadb-server" mysql-server/root_password password 'unused'; 		echo "mariadb-server" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	apt-get update; 	mkdir -p /var/lib/mysql/mysql ; touch /var/lib/mysql/mysql/user.frm ; 	apt-get install -y --no-install-recommends mariadb-server-galera="$MARIADB_VERSION" mariadb-backup socat 	; 	rm -rf /var/lib/apt/lists/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /run/mysqld; 	chmod 1777 /run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user\s)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user\s)/#&/'; 	printf "[mariadb]\nhost-cache-size=0\nskip-name-resolve\n" > /etc/mysql/mariadb.conf.d/05-skipcache.cnf; 	if [ -L /etc/mysql/my.cnf ]; then 		sed -i -e '/includedir/ {N;s/\(.*\)\n\(.*\)/\n\2\n\1/}' /etc/mysql/mariadb.cnf; 	fi # buildkit
# Sat, 17 Oct 2026 00:46:51 GMT
VOLUME [/var/lib/mysql]
# Sat, 17 Oct 2026 00:46:54 GMT
COPY healthcheck.sh /usr/local/bin/healthcheck.sh # buildkit
# Sat, 17 Oct 2026 00:46:57 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 17 Oct 2026 00:46:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Oct 2026 00:46:57 GMT
EXPOSE map[3306/tcp:{}]
# Sat, 17 Oct 2026 00:46:57 GMT
CMD ["mariadbd"]
```

-	Layers:
	-	`sha256:58b222a7d654928db697f09ab35f1d28b63e1b80b1af8ba0b211c6212710fe68`  
		Last Modified: Wed, 07 Oct 2026 20:46:06 GMT  
		Size: 41.9 MB (41852469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc8cf00cdaca93b7dc1efd035532bf98c814789c3b27840617465396585a28ca`  
		Last Modified: Wed, 07 Oct 2026 20:46:09 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ce0eb9be046ac5f4d50b5b66cb6e9f773e3d522745372250f503f213a2de1fe`  
		Last Modified: Sat, 17 Oct 2026 00:47:54 GMT  
		Size: 1.4 KB (1355 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e773021424797ffee6e88758763a63f2fdb8aeb21bb859e749a4dabc66bda5e`  
		Last Modified: Sat, 17 Oct 2026 00:47:56 GMT  
		Size: 5.9 MB (5887234 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b07200fd6a615b4996ae0b067632ae618f2a59b80c94945140f55780f5530a6`  
		Last Modified: Sat, 17 Oct 2026 00:47:55 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04de6856045b745fc0b603a198c7f151b923bbc35b9a83f2f87d1a64fa6ff819`  
		Last Modified: Sat, 17 Oct 2026 00:47:59 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffaaeb7342cc5dd7b369123d4f3e4835a57318f1c942ad9a793f5a08818812d4`  
		Last Modified: Sat, 17 Oct 2026 00:48:03 GMT  
		Size: 75.9 MB (75874065 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03204e6508c514550056ee5b0753a4a5b54642261b20d4f4bc34b1b37b19f668`  
		Last Modified: Sat, 17 Oct 2026 00:47:59 GMT  
		Size: 4.0 KB (4039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9fd79be7f74257e59b3a035a4f50714f3e7858b8fee0aeccdce2cf5ad0547ae`  
		Last Modified: Sat, 17 Oct 2026 00:47:59 GMT  
		Size: 8.5 KB (8499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mariadb:resolute` - unknown; unknown

```console
$ docker pull mariadb@sha256:b611b9f982a74c20784ef66379b35a3882e8538c069138d78fc05a7bd7977f28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6230795 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43e673658a49bb3f0a0ad70ff9551e0c134faaca2f4164b72e0b61f7610f7def`

```dockerfile
```

-	Layers:
	-	`sha256:1c18bc3dae0b71a68badbbc69598d6d3d131123774dff24de78a1c5c6baa018c`  
		Last Modified: Sat, 17 Oct 2026 00:47:59 GMT  
		Size: 6.2 MB (6198062 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:24c9caaaa4a95623d205567dbac35ddbfe72d8fefddb0416a04dc0adfac689b9`  
		Last Modified: Sat, 17 Oct 2026 00:47:59 GMT  
		Size: 32.7 KB (32733 bytes)  
		MIME: application/vnd.in-toto+json
