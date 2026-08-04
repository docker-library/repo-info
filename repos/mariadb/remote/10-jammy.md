## `mariadb:10-jammy`

```console
$ docker pull mariadb@sha256:de61fed4a40d3842f3ee09944ba52792156cfd9adf489b2cc670fc6ded28df8d
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

### `mariadb:10-jammy` - linux; amd64

```console
$ docker pull mariadb@sha256:992d5668eb9a5f153253c2f13d4e72717b7c24a27f271f47647af3b7e5a3c109
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.0 MB (104042495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a3c5f4fdaa7fbd746f690e497525c5f1f755bf361f7fde5f44dd48af0d615a1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mariadbd"]`

```dockerfile
# Fri, 31 Jul 2026 21:53:09 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:53:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:53:09 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:53:11 GMT
ADD file:4501ff54ffd37d854b1cfbcd2e37da58bf8a49da3a6a82232d03e7556d337a92 in / 
# Fri, 31 Jul 2026 21:53:12 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:41:38 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql --home-dir /var/lib/mysql # buildkit
# Tue, 04 Aug 2026 01:41:56 GMT
ENV GOSU_VERSION=1.19
# Tue, 04 Aug 2026 01:41:56 GMT
ARG GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
# Tue, 04 Aug 2026 01:41:56 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
RUN set -eux; 	apt-get update; 	DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends 		ca-certificates 		gpg 		gpgv 		libjemalloc2 		libtcmalloc-minimal4 		pwgen 		tzdata 		xz-utils 		zstd ; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get install -y --no-install-recommends 		dirmngr 		gpg-agent 		wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -q -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -q -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	GNUPGHOME="$(mktemp -d)"; 	export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --export "$GPG_KEYS" > /etc/apt/trusted.gpg.d/mariadb.gpg; 	if command -v gpgconf >/dev/null; then 		gpgconf --kill all; 	fi; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] ||	apt-mark manual $savedAptMark >/dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 04 Aug 2026 01:41:57 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 04 Aug 2026 01:41:57 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:41:57 GMT
LABEL org.opencontainers.image.authors=MariaDB Community org.opencontainers.image.title=MariaDB Database org.opencontainers.image.description=MariaDB Database for relational SQL org.opencontainers.image.documentation=https://hub.docker.com/_/mariadb/ org.opencontainers.image.base.name=docker.io/library/ubuntu:jammy org.opencontainers.image.licenses=GPL-2.0 org.opencontainers.image.source=https://github.com/MariaDB/mariadb-docker org.opencontainers.image.vendor=MariaDB Community org.opencontainers.image.version=10.11.18 org.opencontainers.image.url=https://github.com/MariaDB/mariadb-docker
# Tue, 04 Aug 2026 01:41:57 GMT
ARG MARIADB_VERSION=1:10.11.18+maria~ubu2204
# Tue, 04 Aug 2026 01:41:57 GMT
ENV MARIADB_VERSION=1:10.11.18+maria~ubu2204
# Tue, 04 Aug 2026 01:41:57 GMT
ARG REPOSITORY=http://archive.mariadb.org/mariadb-10.11.18/repo/ubuntu/ jammy main main/debug
# Tue, 04 Aug 2026 01:41:57 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:10.11.18+maria~ubu2204 REPOSITORY=http://archive.mariadb.org/mariadb-10.11.18/repo/ubuntu/ jammy main main/debug
RUN set -e;	echo "deb ${REPOSITORY}" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb # buildkit
# Tue, 04 Aug 2026 01:42:35 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:10.11.18+maria~ubu2204 REPOSITORY=http://archive.mariadb.org/mariadb-10.11.18/repo/ubuntu/ jammy main main/debug
RUN set -ex; 	{ 		echo "mariadb-server" mysql-server/root_password password 'unused'; 		echo "mariadb-server" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	apt-get update; 	mkdir -p /var/lib/mysql/mysql ; touch /var/lib/mysql/mysql/user.frm ; 	apt-get install -y --no-install-recommends mariadb-server="$MARIADB_VERSION" mariadb-backup socat 	; 	rm -rf /var/lib/apt/lists/*; 	rm -rf /var/lib/mysql /etc/mysql/mariadb.conf.d/50-mysqld_safe.cnf; 	mkdir -p /var/lib/mysql /run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /run/mysqld; 	chmod 1777 /run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user\s)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user\s)/#&/'; 	printf "[mariadb]\nhost-cache-size=0\nskip-name-resolve\n" > /etc/mysql/mariadb.conf.d/05-skipcache.cnf; 	if [ -L /etc/mysql/my.cnf ]; then 		sed -i -e '/includedir/ {N;s/\(.*\)\n\(.*\)/\n\2\n\1/}' /etc/mysql/mariadb.cnf; 	fi # buildkit
# Tue, 04 Aug 2026 01:42:35 GMT
VOLUME [/var/lib/mysql]
# Tue, 04 Aug 2026 01:42:35 GMT
COPY healthcheck.sh /usr/local/bin/healthcheck.sh # buildkit
# Tue, 04 Aug 2026 01:42:35 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 01:42:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 01:42:35 GMT
EXPOSE map[3306/tcp:{}]
# Tue, 04 Aug 2026 01:42:35 GMT
CMD ["mariadbd"]
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72271d0e485ab73e2d37fd32730af706db58f7d092e9037bb029d2d5b55b1b9e`  
		Last Modified: Tue, 04 Aug 2026 01:42:50 GMT  
		Size: 1.7 KB (1721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11d1623c5fd8db526e0b16ef433c33b3d18c7de9fe415edb920c8527c077295e`  
		Last Modified: Tue, 04 Aug 2026 01:42:50 GMT  
		Size: 5.6 MB (5565849 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c321427c4d7df0115b98e9e4712182d2bb6909cc9e1e0f08c03f419e17eb6a7`  
		Last Modified: Tue, 04 Aug 2026 01:42:50 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea2f2b862ebeae92a7408dc76606dccaa6551da005ef356c4febd1e3c3c4aa94`  
		Last Modified: Tue, 04 Aug 2026 01:42:50 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28308b5e0b05dd3437e8778943d5a84e33f7911bdc96b396530184cc0637c2cd`  
		Last Modified: Tue, 04 Aug 2026 01:42:53 GMT  
		Size: 68.7 MB (68725477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8acea3ceb42fb42231bacd32986b59bb9a8f35dfa979fc92f5a15aaf76d5ac22`  
		Last Modified: Tue, 04 Aug 2026 01:42:51 GMT  
		Size: 4.0 KB (4016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0178eeb35cbd54573c5dd5bb4c8f697b6809287c62eac7cdf233e4860a966f5`  
		Last Modified: Tue, 04 Aug 2026 01:42:51 GMT  
		Size: 8.5 KB (8460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mariadb:10-jammy` - unknown; unknown

```console
$ docker pull mariadb@sha256:71a943bfabcc8661e115d155f5cd3b45a893c90bb89cccd1346ef0bd927e356e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4816102 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c138342b814abcacfc11eb77d3e108bb54f5a5eca8a5488b9edeea358c170d7e`

```dockerfile
```

-	Layers:
	-	`sha256:1a0a770def72ec0969885567ba94da248a2e762a0013f25e754f7eb8ae6832fe`  
		Last Modified: Tue, 04 Aug 2026 01:42:50 GMT  
		Size: 4.8 MB (4785195 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d7087fc1a4dae9cfac41e2ab950129b9730fc1d5c6cf91a2bbbda9db24a7bec7`  
		Last Modified: Tue, 04 Aug 2026 01:42:50 GMT  
		Size: 30.9 KB (30907 bytes)  
		MIME: application/vnd.in-toto+json

### `mariadb:10-jammy` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:445bb26f9e3228157113d2be32b71675c7567a193e8272641d2607aa6373bb0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.6 MB (98594946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ef50c35a9cef5e0074606846cc837d3238c59a02ca1e2c06eb958327112841c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mariadbd"]`

```dockerfile
# Fri, 31 Jul 2026 21:58:10 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:58:10 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:58:10 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:58:12 GMT
ADD file:66c837214dd75fd34fbf726aabdc4c4a739297d5d853247e4c885c4bce5b7f6a in / 
# Fri, 31 Jul 2026 21:58:12 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:41:45 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql --home-dir /var/lib/mysql # buildkit
# Tue, 04 Aug 2026 01:42:03 GMT
ENV GOSU_VERSION=1.19
# Tue, 04 Aug 2026 01:42:03 GMT
ARG GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
# Tue, 04 Aug 2026 01:42:03 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
RUN set -eux; 	apt-get update; 	DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends 		ca-certificates 		gpg 		gpgv 		libjemalloc2 		libtcmalloc-minimal4 		pwgen 		tzdata 		xz-utils 		zstd ; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get install -y --no-install-recommends 		dirmngr 		gpg-agent 		wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -q -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -q -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	GNUPGHOME="$(mktemp -d)"; 	export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --export "$GPG_KEYS" > /etc/apt/trusted.gpg.d/mariadb.gpg; 	if command -v gpgconf >/dev/null; then 		gpgconf --kill all; 	fi; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] ||	apt-mark manual $savedAptMark >/dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 04 Aug 2026 01:42:03 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 04 Aug 2026 01:42:03 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:42:03 GMT
LABEL org.opencontainers.image.authors=MariaDB Community org.opencontainers.image.title=MariaDB Database org.opencontainers.image.description=MariaDB Database for relational SQL org.opencontainers.image.documentation=https://hub.docker.com/_/mariadb/ org.opencontainers.image.base.name=docker.io/library/ubuntu:jammy org.opencontainers.image.licenses=GPL-2.0 org.opencontainers.image.source=https://github.com/MariaDB/mariadb-docker org.opencontainers.image.vendor=MariaDB Community org.opencontainers.image.version=10.11.18 org.opencontainers.image.url=https://github.com/MariaDB/mariadb-docker
# Tue, 04 Aug 2026 01:42:03 GMT
ARG MARIADB_VERSION=1:10.11.18+maria~ubu2204
# Tue, 04 Aug 2026 01:42:03 GMT
ENV MARIADB_VERSION=1:10.11.18+maria~ubu2204
# Tue, 04 Aug 2026 01:42:03 GMT
ARG REPOSITORY=http://archive.mariadb.org/mariadb-10.11.18/repo/ubuntu/ jammy main main/debug
# Tue, 04 Aug 2026 01:42:03 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:10.11.18+maria~ubu2204 REPOSITORY=http://archive.mariadb.org/mariadb-10.11.18/repo/ubuntu/ jammy main main/debug
RUN set -e;	echo "deb ${REPOSITORY}" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb # buildkit
# Tue, 04 Aug 2026 01:42:32 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:10.11.18+maria~ubu2204 REPOSITORY=http://archive.mariadb.org/mariadb-10.11.18/repo/ubuntu/ jammy main main/debug
RUN set -ex; 	{ 		echo "mariadb-server" mysql-server/root_password password 'unused'; 		echo "mariadb-server" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	apt-get update; 	mkdir -p /var/lib/mysql/mysql ; touch /var/lib/mysql/mysql/user.frm ; 	apt-get install -y --no-install-recommends mariadb-server="$MARIADB_VERSION" mariadb-backup socat 	; 	rm -rf /var/lib/apt/lists/*; 	rm -rf /var/lib/mysql /etc/mysql/mariadb.conf.d/50-mysqld_safe.cnf; 	mkdir -p /var/lib/mysql /run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /run/mysqld; 	chmod 1777 /run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user\s)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user\s)/#&/'; 	printf "[mariadb]\nhost-cache-size=0\nskip-name-resolve\n" > /etc/mysql/mariadb.conf.d/05-skipcache.cnf; 	if [ -L /etc/mysql/my.cnf ]; then 		sed -i -e '/includedir/ {N;s/\(.*\)\n\(.*\)/\n\2\n\1/}' /etc/mysql/mariadb.cnf; 	fi # buildkit
# Tue, 04 Aug 2026 01:42:32 GMT
VOLUME [/var/lib/mysql]
# Tue, 04 Aug 2026 01:42:32 GMT
COPY healthcheck.sh /usr/local/bin/healthcheck.sh # buildkit
# Tue, 04 Aug 2026 01:42:32 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 01:42:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 01:42:32 GMT
EXPOSE map[3306/tcp:{}]
# Tue, 04 Aug 2026 01:42:32 GMT
CMD ["mariadbd"]
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd043802329fdb45a8e2a5b224a3457e5e1443f6addff122f6d94cb591b981f4`  
		Last Modified: Tue, 04 Aug 2026 01:42:47 GMT  
		Size: 1.7 KB (1721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0be27ca3ab86c39bf073ce0eaff52f25f51a378485cb1f65acfce7a5b0ecd771`  
		Last Modified: Tue, 04 Aug 2026 01:42:47 GMT  
		Size: 5.4 MB (5409696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c63d58bf8e510654ace1bbe6d98f64a41985a01aded8f2fbb870e6024a0c29f`  
		Last Modified: Tue, 04 Aug 2026 01:42:47 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17eb5a9bd1b5c73de2d0658dd12ff3989994f5efb3dbd850138323d9eedc0b5f`  
		Last Modified: Tue, 04 Aug 2026 01:42:47 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:558f0b113af74c6d3bcc26f16afcd709d60fc6479bd0ad76d29c0f5a9f586392`  
		Last Modified: Tue, 04 Aug 2026 01:42:50 GMT  
		Size: 65.6 MB (65550574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4e889827290332b02ff734864afaece7a7d0330bb23ed33142d2f74230fd645`  
		Last Modified: Tue, 04 Aug 2026 01:42:48 GMT  
		Size: 4.0 KB (4015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e78030150a556d55fe8bb69ba905e87c0a49ff316dcdf3573b6a9668e80b1ebe`  
		Last Modified: Tue, 04 Aug 2026 01:42:48 GMT  
		Size: 8.5 KB (8458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mariadb:10-jammy` - unknown; unknown

```console
$ docker pull mariadb@sha256:fb115b928160b56f7598ee03bc0f8415e7bf819f9380ed187a7a3d72b04452a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4822728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4a3d4ce1778fcbfcda0ee275a4fb1c4248b40637849984028536b6093e1888b`

```dockerfile
```

-	Layers:
	-	`sha256:9c7a7448d95169b9e8498d32493d84e197ed29e0b60cfe86b92640cf3f28769b`  
		Last Modified: Tue, 04 Aug 2026 01:42:47 GMT  
		Size: 4.8 MB (4791633 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:207b38729fadefbc45790e4a5d69380a2ce8fdbacb1faec6d394df536fa0e59f`  
		Last Modified: Tue, 04 Aug 2026 01:42:47 GMT  
		Size: 31.1 KB (31095 bytes)  
		MIME: application/vnd.in-toto+json

### `mariadb:10-jammy` - linux; ppc64le

```console
$ docker pull mariadb@sha256:821b3b0addb65a056792716b35c1569009dc6da230042947947965e4bace1706
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.6 MB (111598351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12eecf8605d6f33eadb58b2fa18fe43047572e62ce4721e198f6971b1e24bd1d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mariadbd"]`

```dockerfile
# Fri, 31 Jul 2026 21:52:30 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:52:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:52:30 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:52:33 GMT
ADD file:f48db2a791f6b574e2518d202e6b75268dc7b57826c0aa7a238e41ef3f2dbaeb in / 
# Fri, 31 Jul 2026 21:52:34 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 02:09:48 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql --home-dir /var/lib/mysql # buildkit
# Tue, 04 Aug 2026 02:10:20 GMT
ENV GOSU_VERSION=1.19
# Tue, 04 Aug 2026 02:10:20 GMT
ARG GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
# Tue, 04 Aug 2026 02:10:20 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
RUN set -eux; 	apt-get update; 	DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends 		ca-certificates 		gpg 		gpgv 		libjemalloc2 		libtcmalloc-minimal4 		pwgen 		tzdata 		xz-utils 		zstd ; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get install -y --no-install-recommends 		dirmngr 		gpg-agent 		wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -q -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -q -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	GNUPGHOME="$(mktemp -d)"; 	export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --export "$GPG_KEYS" > /etc/apt/trusted.gpg.d/mariadb.gpg; 	if command -v gpgconf >/dev/null; then 		gpgconf --kill all; 	fi; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] ||	apt-mark manual $savedAptMark >/dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 04 Aug 2026 02:10:21 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 04 Aug 2026 02:10:21 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 02:10:21 GMT
LABEL org.opencontainers.image.authors=MariaDB Community org.opencontainers.image.title=MariaDB Database org.opencontainers.image.description=MariaDB Database for relational SQL org.opencontainers.image.documentation=https://hub.docker.com/_/mariadb/ org.opencontainers.image.base.name=docker.io/library/ubuntu:jammy org.opencontainers.image.licenses=GPL-2.0 org.opencontainers.image.source=https://github.com/MariaDB/mariadb-docker org.opencontainers.image.vendor=MariaDB Community org.opencontainers.image.version=10.11.18 org.opencontainers.image.url=https://github.com/MariaDB/mariadb-docker
# Tue, 04 Aug 2026 02:10:21 GMT
ARG MARIADB_VERSION=1:10.11.18+maria~ubu2204
# Tue, 04 Aug 2026 02:10:21 GMT
ENV MARIADB_VERSION=1:10.11.18+maria~ubu2204
# Tue, 04 Aug 2026 02:10:21 GMT
ARG REPOSITORY=http://archive.mariadb.org/mariadb-10.11.18/repo/ubuntu/ jammy main main/debug
# Tue, 04 Aug 2026 02:10:21 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:10.11.18+maria~ubu2204 REPOSITORY=http://archive.mariadb.org/mariadb-10.11.18/repo/ubuntu/ jammy main main/debug
RUN set -e;	echo "deb ${REPOSITORY}" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb # buildkit
# Tue, 04 Aug 2026 02:11:09 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:10.11.18+maria~ubu2204 REPOSITORY=http://archive.mariadb.org/mariadb-10.11.18/repo/ubuntu/ jammy main main/debug
RUN set -ex; 	{ 		echo "mariadb-server" mysql-server/root_password password 'unused'; 		echo "mariadb-server" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	apt-get update; 	mkdir -p /var/lib/mysql/mysql ; touch /var/lib/mysql/mysql/user.frm ; 	apt-get install -y --no-install-recommends mariadb-server="$MARIADB_VERSION" mariadb-backup socat 	; 	rm -rf /var/lib/apt/lists/*; 	rm -rf /var/lib/mysql /etc/mysql/mariadb.conf.d/50-mysqld_safe.cnf; 	mkdir -p /var/lib/mysql /run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /run/mysqld; 	chmod 1777 /run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user\s)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user\s)/#&/'; 	printf "[mariadb]\nhost-cache-size=0\nskip-name-resolve\n" > /etc/mysql/mariadb.conf.d/05-skipcache.cnf; 	if [ -L /etc/mysql/my.cnf ]; then 		sed -i -e '/includedir/ {N;s/\(.*\)\n\(.*\)/\n\2\n\1/}' /etc/mysql/mariadb.cnf; 	fi # buildkit
# Tue, 04 Aug 2026 02:11:09 GMT
VOLUME [/var/lib/mysql]
# Tue, 04 Aug 2026 02:11:10 GMT
COPY healthcheck.sh /usr/local/bin/healthcheck.sh # buildkit
# Tue, 04 Aug 2026 02:11:11 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 02:11:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 02:11:11 GMT
EXPOSE map[3306/tcp:{}]
# Tue, 04 Aug 2026 02:11:11 GMT
CMD ["mariadbd"]
```

-	Layers:
	-	`sha256:f47d82beca9eaeb15de580e2a4f77f430e6d50327a147c5b9295c3c9879cbaeb`  
		Last Modified: Fri, 31 Jul 2026 22:54:10 GMT  
		Size: 34.6 MB (34637666 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60b1afbf9132d4067f514c5ebd645034d651361d33ad1d915b6d355bb4549c1d`  
		Last Modified: Tue, 04 Aug 2026 02:11:40 GMT  
		Size: 1.7 KB (1718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3d12aaccc08334314c0ef89bb529cfb897720f8bbae9e10362fb6fee43a2178`  
		Last Modified: Tue, 04 Aug 2026 02:11:41 GMT  
		Size: 6.1 MB (6058547 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecbbabae4de7e3e17a6a5810c384cca83feb5e23f4bcde2f26636a8218c94da9`  
		Last Modified: Tue, 04 Aug 2026 02:11:40 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e476f04f5879d85e71e8cbe71e2286854d04ae37bb864fe92e59bb7a4c574830`  
		Last Modified: Tue, 04 Aug 2026 02:11:43 GMT  
		Size: 336.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f7af89f4c8024ac7e59225197f2544f96d243f2e446d2b4f96b60d8790f717e`  
		Last Modified: Tue, 04 Aug 2026 02:11:45 GMT  
		Size: 70.9 MB (70887488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb139d956c4248b597c17765842deeb83387b7d04643d464949ba3ae1a989a10`  
		Last Modified: Tue, 04 Aug 2026 02:11:43 GMT  
		Size: 4.0 KB (4018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3816548c4ab48175e4929c61d30d9f4f4a8a2a2ec4112099268d74211de619f`  
		Last Modified: Tue, 04 Aug 2026 02:11:43 GMT  
		Size: 8.5 KB (8462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mariadb:10-jammy` - unknown; unknown

```console
$ docker pull mariadb@sha256:6f2c94b409723d697f6e432dc88c7d092f6187e420060d996be2bd83b8d3ee6e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4823974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a47e908598f6f38407ff4c0ac30c6a3273f90196fd06b33f3f8f037e204d23c6`

```dockerfile
```

-	Layers:
	-	`sha256:4554ddef7db1066b8e82aae1418c791c1b5dc64c5aa9a13507fcf4b3bf3788a1`  
		Last Modified: Tue, 04 Aug 2026 02:11:43 GMT  
		Size: 4.8 MB (4793003 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8100d0ea294dcce508ddc05a1e728215f42988e9f7adc86b342134239dc5730e`  
		Last Modified: Tue, 04 Aug 2026 02:11:43 GMT  
		Size: 31.0 KB (30971 bytes)  
		MIME: application/vnd.in-toto+json

### `mariadb:10-jammy` - linux; s390x

```console
$ docker pull mariadb@sha256:b8e2199c46aaefa55652e4303954a147c67c9ade0e04cdd8a542d2626468edd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.7 MB (101666703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d53c648acc2f65a5d58cccb95f0996e5d3c9def0b638a20cf972d7b3e3a192f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mariadbd"]`

```dockerfile
# Fri, 31 Jul 2026 21:55:19 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:55:19 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:55:19 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:55:21 GMT
ADD file:98836c73e1ff3d764fd3ad911919bc2fa26732cdc016cedf045ad454f04a7e20 in / 
# Fri, 31 Jul 2026 21:55:21 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:32:48 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql --home-dir /var/lib/mysql # buildkit
# Tue, 04 Aug 2026 01:32:59 GMT
ENV GOSU_VERSION=1.19
# Tue, 04 Aug 2026 01:32:59 GMT
ARG GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
# Tue, 04 Aug 2026 01:32:59 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
RUN set -eux; 	apt-get update; 	DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends 		ca-certificates 		gpg 		gpgv 		libjemalloc2 		libtcmalloc-minimal4 		pwgen 		tzdata 		xz-utils 		zstd ; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get install -y --no-install-recommends 		dirmngr 		gpg-agent 		wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -q -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -q -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	GNUPGHOME="$(mktemp -d)"; 	export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --export "$GPG_KEYS" > /etc/apt/trusted.gpg.d/mariadb.gpg; 	if command -v gpgconf >/dev/null; then 		gpgconf --kill all; 	fi; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] ||	apt-mark manual $savedAptMark >/dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 04 Aug 2026 01:32:59 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 04 Aug 2026 01:32:59 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 01:32:59 GMT
LABEL org.opencontainers.image.authors=MariaDB Community org.opencontainers.image.title=MariaDB Database org.opencontainers.image.description=MariaDB Database for relational SQL org.opencontainers.image.documentation=https://hub.docker.com/_/mariadb/ org.opencontainers.image.base.name=docker.io/library/ubuntu:jammy org.opencontainers.image.licenses=GPL-2.0 org.opencontainers.image.source=https://github.com/MariaDB/mariadb-docker org.opencontainers.image.vendor=MariaDB Community org.opencontainers.image.version=10.11.18 org.opencontainers.image.url=https://github.com/MariaDB/mariadb-docker
# Tue, 04 Aug 2026 01:32:59 GMT
ARG MARIADB_VERSION=1:10.11.18+maria~ubu2204
# Tue, 04 Aug 2026 01:32:59 GMT
ENV MARIADB_VERSION=1:10.11.18+maria~ubu2204
# Tue, 04 Aug 2026 01:32:59 GMT
ARG REPOSITORY=http://archive.mariadb.org/mariadb-10.11.18/repo/ubuntu/ jammy main main/debug
# Tue, 04 Aug 2026 01:32:59 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:10.11.18+maria~ubu2204 REPOSITORY=http://archive.mariadb.org/mariadb-10.11.18/repo/ubuntu/ jammy main main/debug
RUN set -e;	echo "deb ${REPOSITORY}" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb # buildkit
# Tue, 04 Aug 2026 01:33:16 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:10.11.18+maria~ubu2204 REPOSITORY=http://archive.mariadb.org/mariadb-10.11.18/repo/ubuntu/ jammy main main/debug
RUN set -ex; 	{ 		echo "mariadb-server" mysql-server/root_password password 'unused'; 		echo "mariadb-server" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	apt-get update; 	mkdir -p /var/lib/mysql/mysql ; touch /var/lib/mysql/mysql/user.frm ; 	apt-get install -y --no-install-recommends mariadb-server="$MARIADB_VERSION" mariadb-backup socat 	; 	rm -rf /var/lib/apt/lists/*; 	rm -rf /var/lib/mysql /etc/mysql/mariadb.conf.d/50-mysqld_safe.cnf; 	mkdir -p /var/lib/mysql /run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /run/mysqld; 	chmod 1777 /run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user\s)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user\s)/#&/'; 	printf "[mariadb]\nhost-cache-size=0\nskip-name-resolve\n" > /etc/mysql/mariadb.conf.d/05-skipcache.cnf; 	if [ -L /etc/mysql/my.cnf ]; then 		sed -i -e '/includedir/ {N;s/\(.*\)\n\(.*\)/\n\2\n\1/}' /etc/mysql/mariadb.cnf; 	fi # buildkit
# Tue, 04 Aug 2026 01:33:16 GMT
VOLUME [/var/lib/mysql]
# Tue, 04 Aug 2026 01:33:16 GMT
COPY healthcheck.sh /usr/local/bin/healthcheck.sh # buildkit
# Tue, 04 Aug 2026 01:33:16 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 01:33:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 01:33:16 GMT
EXPOSE map[3306/tcp:{}]
# Tue, 04 Aug 2026 01:33:16 GMT
CMD ["mariadbd"]
```

-	Layers:
	-	`sha256:0c891f1f0f7387672dc5f23b57a662b266f4decb4523b0b77d0abc0b1e165161`  
		Last Modified: Fri, 31 Jul 2026 22:54:24 GMT  
		Size: 28.2 MB (28210302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a78aa5ff9b285449fe87766bb4c6ee57b59ae172b60514d8b2d767685b0b5680`  
		Last Modified: Tue, 04 Aug 2026 01:33:41 GMT  
		Size: 1.7 KB (1720 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32b200a7e1058ac5b7afe1ce4f0c064d154f98b9f31db45b10a1732d587e83b2`  
		Last Modified: Tue, 04 Aug 2026 01:33:41 GMT  
		Size: 5.5 MB (5456936 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9faf097fd421aad1d3a3d2a6027ce7748ca8129ed79c902cffbb8a8e067aa5a6`  
		Last Modified: Tue, 04 Aug 2026 01:33:41 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a28812c8b19f9ca5efb8d7d9531d57525df64046c459dd5f52d7d22c72ff8100`  
		Last Modified: Tue, 04 Aug 2026 01:33:43 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5167b7ce3523bbe568dca3c52e8f5c7adc8be51c04d6f0a7d2d6a3ac913457f6`  
		Last Modified: Tue, 04 Aug 2026 01:33:44 GMT  
		Size: 68.0 MB (67984822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6070fbb6f9c3c0543a81857257d74812a2597bb95a222867d0c6bfd7f90f55a7`  
		Last Modified: Tue, 04 Aug 2026 01:33:42 GMT  
		Size: 4.0 KB (4015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9501a976897a99f84d38fe27e27282d851699cadc3b5ac003442242fd9313d39`  
		Last Modified: Tue, 04 Aug 2026 01:33:43 GMT  
		Size: 8.5 KB (8458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mariadb:10-jammy` - unknown; unknown

```console
$ docker pull mariadb@sha256:4981e92c8e793ad999da0af2cdd98a34b39995b97a4124ba59da23a6f874ace6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4816424 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85ad95062eff42e9158e2305948b45ac33e6290c68921aa1bd3391545d15da7c`

```dockerfile
```

-	Layers:
	-	`sha256:cd8dddd69599eaefe9acfb8c76a13cd7909b8151e7330b16e8531d43d07938d1`  
		Last Modified: Tue, 04 Aug 2026 01:33:43 GMT  
		Size: 4.8 MB (4785518 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7772cf26f630044de42f708d1ac54ccdfad1a4095c5722f05ed0ca7bb7a425fc`  
		Last Modified: Tue, 04 Aug 2026 01:33:42 GMT  
		Size: 30.9 KB (30906 bytes)  
		MIME: application/vnd.in-toto+json
