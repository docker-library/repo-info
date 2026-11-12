## `mariadb:12-noble`

```console
$ docker pull mariadb@sha256:4ebbcf100a3ba320766dfa0e1af008df12261301db6ef72798c7650f70794aed
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

### `mariadb:12-noble` - linux; amd64

```console
$ docker pull mariadb@sha256:8f98e05b6dbf5da5647cd7f2ccfcb67e98c696110bd8ca7362486fb7a66709c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.9 MB (107863852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51a2bafd0a356432e53f4981bd79930da04215609a44cf6b26b05b3b02e1d3ad`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mariadbd"]`

```dockerfile
# Tue, 10 Nov 2026 08:36:30 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:36:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:36:30 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:36:34 GMT
ADD file:3c41cdb0a333e30d2a3c4a90a152da473ef44ae84245fd34a49167a6b8f26cc6 in / 
# Tue, 10 Nov 2026 08:36:35 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:29:29 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql --home-dir /var/lib/mysql && userdel --remove ubuntu # buildkit
# Wed, 11 Nov 2026 23:29:44 GMT
ENV GOSU_VERSION=1.19
# Wed, 11 Nov 2026 23:29:44 GMT
ARG GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
# Wed, 11 Nov 2026 23:29:44 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
RUN set -eux; 	apt-get update; 	DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends 		ca-certificates 		gpg 		gpgv 		libjemalloc2 		libtcmalloc-minimal4t64 		pwgen 		tzdata 		xz-utils 		zstd ; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get install -y --no-install-recommends 		dirmngr 		gpg-agent 		wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -q -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -q -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	GNUPGHOME="$(mktemp -d)"; 	export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --export "$GPG_KEYS" > /etc/apt/trusted.gpg.d/mariadb.gpg; 	if command -v gpgconf >/dev/null; then 		gpgconf --kill all; 	fi; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] ||	apt-mark manual $savedAptMark >/dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 11 Nov 2026 23:29:44 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 11 Nov 2026 23:29:44 GMT
ENV LANG=C.UTF-8
# Wed, 11 Nov 2026 23:29:44 GMT
LABEL org.opencontainers.image.authors=MariaDB Community org.opencontainers.image.title=MariaDB Database org.opencontainers.image.description=MariaDB Database for relational SQL org.opencontainers.image.documentation=https://hub.docker.com/_/mariadb/ org.opencontainers.image.base.name=docker.io/library/ubuntu:noble org.opencontainers.image.licenses=GPL-2.0 org.opencontainers.image.source=https://github.com/MariaDB/mariadb-docker org.opencontainers.image.vendor=MariaDB Community org.opencontainers.image.version=12.3.3 org.opencontainers.image.url=https://github.com/MariaDB/mariadb-docker
# Wed, 11 Nov 2026 23:29:44 GMT
ARG MARIADB_VERSION=1:12.3.3+maria~ubu2404
# Wed, 11 Nov 2026 23:29:44 GMT
ENV MARIADB_VERSION=1:12.3.3+maria~ubu2404
# Wed, 11 Nov 2026 23:29:44 GMT
ARG REPOSITORY=http://archive.mariadb.org/mariadb-12.3.3/repo/ubuntu/ noble main main/debug
# Wed, 11 Nov 2026 23:29:44 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:12.3.3+maria~ubu2404 REPOSITORY=http://archive.mariadb.org/mariadb-12.3.3/repo/ubuntu/ noble main main/debug
RUN set -e;	echo "deb ${REPOSITORY}" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb # buildkit
# Wed, 11 Nov 2026 23:30:25 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:12.3.3+maria~ubu2404 REPOSITORY=http://archive.mariadb.org/mariadb-12.3.3/repo/ubuntu/ noble main main/debug
RUN set -ex; 	{ 		echo "mariadb-server" mysql-server/root_password password 'unused'; 		echo "mariadb-server" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	apt-get update; 	mkdir -p /var/lib/mysql/mysql ; touch /var/lib/mysql/mysql/user.frm ; 	apt-get install -y --no-install-recommends mariadb-server-galera="$MARIADB_VERSION" mariadb-backup socat 	; 	rm -rf /var/lib/apt/lists/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /run/mysqld; 	chmod 1777 /run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user\s)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user\s)/#&/'; 	printf "[mariadb]\nhost-cache-size=0\nskip-name-resolve\n" > /etc/mysql/mariadb.conf.d/05-skipcache.cnf; 	if [ -L /etc/mysql/my.cnf ]; then 		sed -i -e '/includedir/ {N;s/\(.*\)\n\(.*\)/\n\2\n\1/}' /etc/mysql/mariadb.cnf; 	fi # buildkit
# Wed, 11 Nov 2026 23:30:25 GMT
VOLUME [/var/lib/mysql]
# Wed, 11 Nov 2026 23:30:25 GMT
COPY healthcheck.sh /usr/local/bin/healthcheck.sh # buildkit
# Wed, 11 Nov 2026 23:30:25 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 23:30:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 23:30:25 GMT
EXPOSE map[3306/tcp:{}]
# Wed, 11 Nov 2026 23:30:25 GMT
CMD ["mariadbd"]
```

-	Layers:
	-	`sha256:26538842dfbfed820e62531e047bc6cfd3359a7e0a52f59c1a951ccc6ca787fe`  
		Last Modified: Wed, 11 Nov 2026 22:58:09 GMT  
		Size: 29.8 MB (29793223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f132120cbd6dea2d8fcdd694baf100125745b80e78050169ff1cd2b5ce2a1425`  
		Last Modified: Wed, 11 Nov 2026 23:30:41 GMT  
		Size: 1.3 KB (1345 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c2f52f951200a904d8a236191a4ee2df46325728f96d0e8bbb26933130c0ef6`  
		Last Modified: Wed, 11 Nov 2026 23:30:41 GMT  
		Size: 5.2 MB (5244654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:445879fa405330e25eac26dfd7525f596efff3bf30a516a3eafa97feb68067d2`  
		Last Modified: Wed, 11 Nov 2026 23:30:41 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:747aab77e8d8c4d4ec3e12dbe755034eaacdf42607f399b40c6f1096fa7f2683`  
		Last Modified: Wed, 11 Nov 2026 23:30:41 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43954a1c65db4ae1f3104749b88a81d06bc912e5a3b39edcf44d04ae3f1504e4`  
		Last Modified: Wed, 11 Nov 2026 23:30:44 GMT  
		Size: 72.8 MB (72811656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0432491b7da1ccd8edc4f0160ca51cddb11dde07d8c5a15933088b536146bf0e`  
		Last Modified: Wed, 11 Nov 2026 23:30:42 GMT  
		Size: 4.0 KB (4034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d568ea7fc676711075bff80386363b4d275fd488285cfc4a7dc7add402139d2`  
		Last Modified: Wed, 11 Nov 2026 23:30:42 GMT  
		Size: 8.5 KB (8492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mariadb:12-noble` - unknown; unknown

```console
$ docker pull mariadb@sha256:866af3bd847dcbe2b823dace1d2d67d4ae074430d8803c680ccc0288d015eb3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4297481 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cd9bb7336e09ac75fdb7e420c078f0a7e4ad33347b378d71305c3d3e1353b95`

```dockerfile
```

-	Layers:
	-	`sha256:4f8b4321478209807b0680d6dff4fe14331dfbcd4b9ef6d62db45dbb5816e04a`  
		Last Modified: Wed, 11 Nov 2026 23:30:41 GMT  
		Size: 4.3 MB (4266012 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c6314108715c73152b0a65dcb18f2101f95b77b13dc61254b894c85ff0b5a0fd`  
		Last Modified: Wed, 11 Nov 2026 23:30:41 GMT  
		Size: 31.5 KB (31469 bytes)  
		MIME: application/vnd.in-toto+json

### `mariadb:12-noble` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:ae84e923082a85464bdec854d2bf1a49cbe5b688d3ce82980568ffde4495c38c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.3 MB (103253147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9dbafd1896cfe572487d064809fac9adb1cc9252743368052d1fd3cc4f48a2c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mariadbd"]`

```dockerfile
# Tue, 10 Nov 2026 08:33:24 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:33:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:33:24 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:33:26 GMT
ADD file:aeac09a5d64b4f3ea9f6270bab8e042832a855d9ab77269736eef18fda7dc7bb in / 
# Tue, 10 Nov 2026 08:33:26 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:32:54 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql --home-dir /var/lib/mysql && userdel --remove ubuntu # buildkit
# Wed, 11 Nov 2026 23:33:10 GMT
ENV GOSU_VERSION=1.19
# Wed, 11 Nov 2026 23:33:10 GMT
ARG GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
# Wed, 11 Nov 2026 23:33:10 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
RUN set -eux; 	apt-get update; 	DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends 		ca-certificates 		gpg 		gpgv 		libjemalloc2 		libtcmalloc-minimal4t64 		pwgen 		tzdata 		xz-utils 		zstd ; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get install -y --no-install-recommends 		dirmngr 		gpg-agent 		wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -q -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -q -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	GNUPGHOME="$(mktemp -d)"; 	export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --export "$GPG_KEYS" > /etc/apt/trusted.gpg.d/mariadb.gpg; 	if command -v gpgconf >/dev/null; then 		gpgconf --kill all; 	fi; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] ||	apt-mark manual $savedAptMark >/dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 11 Nov 2026 23:33:10 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 11 Nov 2026 23:33:10 GMT
ENV LANG=C.UTF-8
# Wed, 11 Nov 2026 23:33:10 GMT
LABEL org.opencontainers.image.authors=MariaDB Community org.opencontainers.image.title=MariaDB Database org.opencontainers.image.description=MariaDB Database for relational SQL org.opencontainers.image.documentation=https://hub.docker.com/_/mariadb/ org.opencontainers.image.base.name=docker.io/library/ubuntu:noble org.opencontainers.image.licenses=GPL-2.0 org.opencontainers.image.source=https://github.com/MariaDB/mariadb-docker org.opencontainers.image.vendor=MariaDB Community org.opencontainers.image.version=12.3.3 org.opencontainers.image.url=https://github.com/MariaDB/mariadb-docker
# Wed, 11 Nov 2026 23:33:10 GMT
ARG MARIADB_VERSION=1:12.3.3+maria~ubu2404
# Wed, 11 Nov 2026 23:33:10 GMT
ENV MARIADB_VERSION=1:12.3.3+maria~ubu2404
# Wed, 11 Nov 2026 23:33:10 GMT
ARG REPOSITORY=http://archive.mariadb.org/mariadb-12.3.3/repo/ubuntu/ noble main main/debug
# Wed, 11 Nov 2026 23:33:10 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:12.3.3+maria~ubu2404 REPOSITORY=http://archive.mariadb.org/mariadb-12.3.3/repo/ubuntu/ noble main main/debug
RUN set -e;	echo "deb ${REPOSITORY}" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb # buildkit
# Wed, 11 Nov 2026 23:34:24 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:12.3.3+maria~ubu2404 REPOSITORY=http://archive.mariadb.org/mariadb-12.3.3/repo/ubuntu/ noble main main/debug
RUN set -ex; 	{ 		echo "mariadb-server" mysql-server/root_password password 'unused'; 		echo "mariadb-server" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	apt-get update; 	mkdir -p /var/lib/mysql/mysql ; touch /var/lib/mysql/mysql/user.frm ; 	apt-get install -y --no-install-recommends mariadb-server-galera="$MARIADB_VERSION" mariadb-backup socat 	; 	rm -rf /var/lib/apt/lists/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /run/mysqld; 	chmod 1777 /run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user\s)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user\s)/#&/'; 	printf "[mariadb]\nhost-cache-size=0\nskip-name-resolve\n" > /etc/mysql/mariadb.conf.d/05-skipcache.cnf; 	if [ -L /etc/mysql/my.cnf ]; then 		sed -i -e '/includedir/ {N;s/\(.*\)\n\(.*\)/\n\2\n\1/}' /etc/mysql/mariadb.cnf; 	fi # buildkit
# Wed, 11 Nov 2026 23:34:24 GMT
VOLUME [/var/lib/mysql]
# Wed, 11 Nov 2026 23:34:24 GMT
COPY healthcheck.sh /usr/local/bin/healthcheck.sh # buildkit
# Wed, 11 Nov 2026 23:34:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 23:34:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 23:34:24 GMT
EXPOSE map[3306/tcp:{}]
# Wed, 11 Nov 2026 23:34:24 GMT
CMD ["mariadbd"]
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:507e44714cf9086e842a447502c61b23e38c3130fb39266a5adc7a634805c352`  
		Last Modified: Wed, 11 Nov 2026 23:34:39 GMT  
		Size: 1.3 KB (1341 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2bd324c535c3ba96930d3cb496e737d41f6e52006894b4a43c98392860fc2bd`  
		Last Modified: Wed, 11 Nov 2026 23:34:40 GMT  
		Size: 5.1 MB (5055248 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5b36305bac775d4ada89ccd6ff57b4d5823d6e47e3b868d631ddc9dc73964c0`  
		Last Modified: Wed, 11 Nov 2026 23:33:58 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94812693a1d79fd4f792904b99f2445b8cbb9799b8a8be0cb77d53d46ed000eb`  
		Last Modified: Wed, 11 Nov 2026 23:34:40 GMT  
		Size: 329.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a293a0b05f12a4d2dfddd0331688e5061f589b111c3cc1859766266803a7abd3`  
		Last Modified: Wed, 11 Nov 2026 23:34:42 GMT  
		Size: 69.2 MB (69218328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed73d0b997a7a1a3ab9a4619bd8cc0ea0e8deb19b2900779430c0bea8cb98f44`  
		Last Modified: Wed, 11 Nov 2026 23:34:40 GMT  
		Size: 4.0 KB (4035 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df44600aab8592993d9ac362a162257f62755e9ce679380a00096a67df87d3f2`  
		Last Modified: Wed, 11 Nov 2026 23:34:41 GMT  
		Size: 8.5 KB (8492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mariadb:12-noble` - unknown; unknown

```console
$ docker pull mariadb@sha256:812daf7515e8affcb07a1bb62b57e42b13bfa29935ae800b857df76799550157
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4304971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:504e5e95a25c947d033be441a6e776fcc80aadccf9fbec41e3fecd36148fbe06`

```dockerfile
```

-	Layers:
	-	`sha256:ab8494672b39155d87ba8ecced532539a469bcd34bb5654018156f273adcfae0`  
		Last Modified: Wed, 11 Nov 2026 23:34:40 GMT  
		Size: 4.3 MB (4273289 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9f6e162b610d04486cb961b960412f3af70a87ac18b4ca2e24c10a226568ade6`  
		Last Modified: Wed, 11 Nov 2026 23:34:39 GMT  
		Size: 31.7 KB (31682 bytes)  
		MIME: application/vnd.in-toto+json

### `mariadb:12-noble` - linux; ppc64le

```console
$ docker pull mariadb@sha256:99b95cb4010549e2f8db09bca00e798f71adfbf4d31d09b85b2343f5d72a1ff2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.2 MB (115234449 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5abb7bd1dd765e7ba186ce272b5c7445a526770c2acde5d9de6f601248496180`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mariadbd"]`

```dockerfile
# Tue, 10 Nov 2026 08:32:56 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:32:56 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:32:56 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:33:00 GMT
ADD file:89eeaf81edaeaabcc6b5e0c1d26ef4eb2e89301509f4585cbcd17562fbf95198 in / 
# Tue, 10 Nov 2026 08:33:01 GMT
CMD ["/bin/bash"]
# Thu, 12 Nov 2026 03:30:17 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql --home-dir /var/lib/mysql && userdel --remove ubuntu # buildkit
# Thu, 12 Nov 2026 03:31:54 GMT
ENV GOSU_VERSION=1.19
# Thu, 12 Nov 2026 03:31:54 GMT
ARG GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
# Thu, 12 Nov 2026 03:31:54 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
RUN set -eux; 	apt-get update; 	DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends 		ca-certificates 		gpg 		gpgv 		libjemalloc2 		libtcmalloc-minimal4t64 		pwgen 		tzdata 		xz-utils 		zstd ; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get install -y --no-install-recommends 		dirmngr 		gpg-agent 		wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -q -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -q -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	GNUPGHOME="$(mktemp -d)"; 	export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --export "$GPG_KEYS" > /etc/apt/trusted.gpg.d/mariadb.gpg; 	if command -v gpgconf >/dev/null; then 		gpgconf --kill all; 	fi; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] ||	apt-mark manual $savedAptMark >/dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 12 Nov 2026 03:31:57 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 12 Nov 2026 03:31:57 GMT
ENV LANG=C.UTF-8
# Thu, 12 Nov 2026 03:31:57 GMT
LABEL org.opencontainers.image.authors=MariaDB Community org.opencontainers.image.title=MariaDB Database org.opencontainers.image.description=MariaDB Database for relational SQL org.opencontainers.image.documentation=https://hub.docker.com/_/mariadb/ org.opencontainers.image.base.name=docker.io/library/ubuntu:noble org.opencontainers.image.licenses=GPL-2.0 org.opencontainers.image.source=https://github.com/MariaDB/mariadb-docker org.opencontainers.image.vendor=MariaDB Community org.opencontainers.image.version=12.3.3 org.opencontainers.image.url=https://github.com/MariaDB/mariadb-docker
# Thu, 12 Nov 2026 03:31:57 GMT
ARG MARIADB_VERSION=1:12.3.3+maria~ubu2404
# Thu, 12 Nov 2026 03:31:57 GMT
ENV MARIADB_VERSION=1:12.3.3+maria~ubu2404
# Thu, 12 Nov 2026 03:31:57 GMT
ARG REPOSITORY=http://archive.mariadb.org/mariadb-12.3.3/repo/ubuntu/ noble main main/debug
# Thu, 12 Nov 2026 03:31:58 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:12.3.3+maria~ubu2404 REPOSITORY=http://archive.mariadb.org/mariadb-12.3.3/repo/ubuntu/ noble main main/debug
RUN set -e;	echo "deb ${REPOSITORY}" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb # buildkit
# Thu, 12 Nov 2026 03:35:22 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:12.3.3+maria~ubu2404 REPOSITORY=http://archive.mariadb.org/mariadb-12.3.3/repo/ubuntu/ noble main main/debug
RUN set -ex; 	{ 		echo "mariadb-server" mysql-server/root_password password 'unused'; 		echo "mariadb-server" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	apt-get update; 	mkdir -p /var/lib/mysql/mysql ; touch /var/lib/mysql/mysql/user.frm ; 	apt-get install -y --no-install-recommends mariadb-server-galera="$MARIADB_VERSION" mariadb-backup socat 	; 	rm -rf /var/lib/apt/lists/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /run/mysqld; 	chmod 1777 /run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user\s)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user\s)/#&/'; 	printf "[mariadb]\nhost-cache-size=0\nskip-name-resolve\n" > /etc/mysql/mariadb.conf.d/05-skipcache.cnf; 	if [ -L /etc/mysql/my.cnf ]; then 		sed -i -e '/includedir/ {N;s/\(.*\)\n\(.*\)/\n\2\n\1/}' /etc/mysql/mariadb.cnf; 	fi # buildkit
# Thu, 12 Nov 2026 03:35:22 GMT
VOLUME [/var/lib/mysql]
# Thu, 12 Nov 2026 03:35:26 GMT
COPY healthcheck.sh /usr/local/bin/healthcheck.sh # buildkit
# Thu, 12 Nov 2026 03:35:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 12 Nov 2026 03:35:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Nov 2026 03:35:26 GMT
EXPOSE map[3306/tcp:{}]
# Thu, 12 Nov 2026 03:35:26 GMT
CMD ["mariadbd"]
```

-	Layers:
	-	`sha256:f78755e68daa4220d3ba6537baccb7cf864d4848b823995344317af2921d0d92`  
		Last Modified: Wed, 11 Nov 2026 23:14:15 GMT  
		Size: 34.4 MB (34406511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dc630d55671ccd189f8acb19f3aa33ee5cf7feb6f005947a38175e71f3bf6f4`  
		Last Modified: Thu, 12 Nov 2026 03:37:07 GMT  
		Size: 1.3 KB (1346 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b968a51353532f09ee7e0dca16a2d8cadd7ee2286a98c7ee4f0dd8ca31db4ef`  
		Last Modified: Thu, 12 Nov 2026 03:37:07 GMT  
		Size: 5.9 MB (5881676 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28b4d726afb7e7dec81713c15278041a1ca46c1e896c75072dc217b1a360a218`  
		Last Modified: Thu, 12 Nov 2026 03:37:07 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cad839932909e43d68e23583cc3dd06a3dbe86f98e3a5cfc1c1b6ac3baa6994`  
		Last Modified: Thu, 12 Nov 2026 03:37:14 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c68d2359e32cb0cc77863e786d886921dc1ebbc39ccfd69a34be1a767694eb33`  
		Last Modified: Thu, 12 Nov 2026 03:37:17 GMT  
		Size: 74.9 MB (74931945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dd2e6e3947a7a17cdd741aab0a0455fe47988d3aa568029709c8395c1fbfad6`  
		Last Modified: Thu, 12 Nov 2026 03:37:14 GMT  
		Size: 4.0 KB (4034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5118f4476d0742d55648054dfa0ce07c6fffb7e7b270494c10e90cfe49c12b5`  
		Last Modified: Thu, 12 Nov 2026 03:37:14 GMT  
		Size: 8.5 KB (8491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mariadb:12-noble` - unknown; unknown

```console
$ docker pull mariadb@sha256:cf777194c6e5ee021d3e79afbccd2a3e7e9e44d6b058a704d500a43e55e33c44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4305493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:752e73aca9439544a638999c0b68ffdbdf235fddbf8b3dfa2b06bc1d92de6c68`

```dockerfile
```

-	Layers:
	-	`sha256:5e146d07c523b2c9072bb9f60ff0b8ae3becd7924c6f4fb64ded811dbe72c0e1`  
		Last Modified: Thu, 12 Nov 2026 03:37:15 GMT  
		Size: 4.3 MB (4273947 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4591b6299b45abba4bea6fef0350c56503dbb7663386d773c704837da88ac60b`  
		Last Modified: Thu, 12 Nov 2026 03:37:14 GMT  
		Size: 31.5 KB (31546 bytes)  
		MIME: application/vnd.in-toto+json

### `mariadb:12-noble` - linux; s390x

```console
$ docker pull mariadb@sha256:0389799fea4ebbb38fbce097bdb41ceb7d9689eb7bd378e45a73a8a9f71a3275
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.7 MB (109730384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebc49fc830aacb7ccff57291fe1947444fddcc7e4e1c14dbea8363b608f9da17`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mariadbd"]`

```dockerfile
# Tue, 10 Nov 2026 08:37:01 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:37:01 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:37:01 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:37:02 GMT
ADD file:cd6ae236aa13077d423218b776b66e2af298e76f13baa19a6432bfa2416d84e1 in / 
# Tue, 10 Nov 2026 08:37:03 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:25:56 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql --home-dir /var/lib/mysql && userdel --remove ubuntu # buildkit
# Wed, 11 Nov 2026 23:26:06 GMT
ENV GOSU_VERSION=1.19
# Wed, 11 Nov 2026 23:26:06 GMT
ARG GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
# Wed, 11 Nov 2026 23:26:06 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
RUN set -eux; 	apt-get update; 	DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends 		ca-certificates 		gpg 		gpgv 		libjemalloc2 		libtcmalloc-minimal4t64 		pwgen 		tzdata 		xz-utils 		zstd ; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get install -y --no-install-recommends 		dirmngr 		gpg-agent 		wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -q -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -q -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	GNUPGHOME="$(mktemp -d)"; 	export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --export "$GPG_KEYS" > /etc/apt/trusted.gpg.d/mariadb.gpg; 	if command -v gpgconf >/dev/null; then 		gpgconf --kill all; 	fi; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] ||	apt-mark manual $savedAptMark >/dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 11 Nov 2026 23:26:06 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 11 Nov 2026 23:26:06 GMT
ENV LANG=C.UTF-8
# Wed, 11 Nov 2026 23:26:06 GMT
LABEL org.opencontainers.image.authors=MariaDB Community org.opencontainers.image.title=MariaDB Database org.opencontainers.image.description=MariaDB Database for relational SQL org.opencontainers.image.documentation=https://hub.docker.com/_/mariadb/ org.opencontainers.image.base.name=docker.io/library/ubuntu:noble org.opencontainers.image.licenses=GPL-2.0 org.opencontainers.image.source=https://github.com/MariaDB/mariadb-docker org.opencontainers.image.vendor=MariaDB Community org.opencontainers.image.version=12.3.3 org.opencontainers.image.url=https://github.com/MariaDB/mariadb-docker
# Wed, 11 Nov 2026 23:26:06 GMT
ARG MARIADB_VERSION=1:12.3.3+maria~ubu2404
# Wed, 11 Nov 2026 23:26:06 GMT
ENV MARIADB_VERSION=1:12.3.3+maria~ubu2404
# Wed, 11 Nov 2026 23:26:06 GMT
ARG REPOSITORY=http://archive.mariadb.org/mariadb-12.3.3/repo/ubuntu/ noble main main/debug
# Wed, 11 Nov 2026 23:26:07 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:12.3.3+maria~ubu2404 REPOSITORY=http://archive.mariadb.org/mariadb-12.3.3/repo/ubuntu/ noble main main/debug
RUN set -e;	echo "deb ${REPOSITORY}" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb # buildkit
# Wed, 11 Nov 2026 23:26:34 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:12.3.3+maria~ubu2404 REPOSITORY=http://archive.mariadb.org/mariadb-12.3.3/repo/ubuntu/ noble main main/debug
RUN set -ex; 	{ 		echo "mariadb-server" mysql-server/root_password password 'unused'; 		echo "mariadb-server" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	apt-get update; 	mkdir -p /var/lib/mysql/mysql ; touch /var/lib/mysql/mysql/user.frm ; 	apt-get install -y --no-install-recommends mariadb-server-galera="$MARIADB_VERSION" mariadb-backup socat 	; 	rm -rf /var/lib/apt/lists/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /run/mysqld; 	chmod 1777 /run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user\s)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user\s)/#&/'; 	printf "[mariadb]\nhost-cache-size=0\nskip-name-resolve\n" > /etc/mysql/mariadb.conf.d/05-skipcache.cnf; 	if [ -L /etc/mysql/my.cnf ]; then 		sed -i -e '/includedir/ {N;s/\(.*\)\n\(.*\)/\n\2\n\1/}' /etc/mysql/mariadb.cnf; 	fi # buildkit
# Wed, 11 Nov 2026 23:26:34 GMT
VOLUME [/var/lib/mysql]
# Wed, 11 Nov 2026 23:26:34 GMT
COPY healthcheck.sh /usr/local/bin/healthcheck.sh # buildkit
# Wed, 11 Nov 2026 23:26:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 23:26:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 23:26:34 GMT
EXPOSE map[3306/tcp:{}]
# Wed, 11 Nov 2026 23:26:34 GMT
CMD ["mariadbd"]
```

-	Layers:
	-	`sha256:bd74e3675913208a1119a54d3789c9fc5c9abdb19b714ce963adc875d0495d64`  
		Last Modified: Wed, 11 Nov 2026 22:58:51 GMT  
		Size: 30.0 MB (29967584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9af1a644b6fc5b0d467df7e6e3c650c0d39dc51d35847f8be6a5675d7b7d2a2`  
		Last Modified: Wed, 11 Nov 2026 23:26:57 GMT  
		Size: 1.3 KB (1339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78315bcf3fba3615c080c8936a8db619534a8172165c5f4e9c54c361d329f39d`  
		Last Modified: Wed, 11 Nov 2026 23:26:58 GMT  
		Size: 5.4 MB (5401749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30291c87439b6ba95fa9ee992663a268a60c3ba12aa877c4c04718392daa09eb`  
		Last Modified: Wed, 11 Nov 2026 23:26:57 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:661397874c0ee805b39fa84554023cd2373bff0b6b78a540957a59f58d2315ed`  
		Last Modified: Wed, 11 Nov 2026 23:26:58 GMT  
		Size: 330.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff847c5b81ac0b6fcf2266c7b732bac0a5603da6ca958ce0f98252cf48d9bcac`  
		Last Modified: Wed, 11 Nov 2026 23:27:00 GMT  
		Size: 74.3 MB (74346747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6650e8431203f782030c18805a4eea0b67be93f0c17191d6a35c18696da910c6`  
		Last Modified: Wed, 11 Nov 2026 23:26:58 GMT  
		Size: 4.0 KB (4030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ade93c24f4d55b4281149198967992093107d1fae5fb070621631de453235b99`  
		Last Modified: Wed, 11 Nov 2026 23:26:59 GMT  
		Size: 8.5 KB (8489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mariadb:12-noble` - unknown; unknown

```console
$ docker pull mariadb@sha256:21848d3672d6eac8cc3215f7a4fe2caf67928de276d8c494a50b7381df7c10bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4299201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5244d0e2c726491e647c86d4fa549d0a7b6f7b3b07696bb82315e6a03b53b427`

```dockerfile
```

-	Layers:
	-	`sha256:74de0588857006f25e0df63ec0ea69845dfc12ff35f7ad594f92ff02140a77ec`  
		Last Modified: Wed, 11 Nov 2026 23:26:58 GMT  
		Size: 4.3 MB (4267731 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aa764b2013366db3077208e74a40e89c9d2b958e6d247a37096d34d20b3b94ba`  
		Last Modified: Wed, 11 Nov 2026 23:26:58 GMT  
		Size: 31.5 KB (31470 bytes)  
		MIME: application/vnd.in-toto+json
