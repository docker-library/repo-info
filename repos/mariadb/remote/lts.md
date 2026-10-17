## `mariadb:lts`

```console
$ docker pull mariadb@sha256:faae028e4d73efc946526ae1d5ba57181d4f162d64e60b6482c85095da31a084
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

### `mariadb:lts` - linux; amd64

```console
$ docker pull mariadb@sha256:aed2b5ccc6356b54dda3b461e01584b420e549bb958cdfbf717ac22d75a84602
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.8 MB (107837515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:deb9a3a5e1952c4bddf4b1afe48fd6040295a6d7c41379ce68c0d067512ca912`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mariadbd"]`

```dockerfile
# Fri, 18 Sep 2026 21:20:35 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:20:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:20:35 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:20:37 GMT
ADD file:6c214fc3c3c22122c7eb68f7fb32783df308e60b1eaeb9baf7e4d0cc961d448d in / 
# Fri, 18 Sep 2026 21:20:38 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:30:29 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql --home-dir /var/lib/mysql && userdel --remove ubuntu # buildkit
# Fri, 02 Oct 2026 01:30:47 GMT
ENV GOSU_VERSION=1.19
# Fri, 02 Oct 2026 01:30:47 GMT
ARG GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
# Fri, 02 Oct 2026 01:30:47 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
RUN set -eux; 	apt-get update; 	DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends 		ca-certificates 		gpg 		gpgv 		libjemalloc2 		libtcmalloc-minimal4t64 		pwgen 		tzdata 		xz-utils 		zstd ; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get install -y --no-install-recommends 		dirmngr 		gpg-agent 		wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -q -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -q -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	GNUPGHOME="$(mktemp -d)"; 	export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --export "$GPG_KEYS" > /etc/apt/trusted.gpg.d/mariadb.gpg; 	if command -v gpgconf >/dev/null; then 		gpgconf --kill all; 	fi; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] ||	apt-mark manual $savedAptMark >/dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Fri, 02 Oct 2026 01:30:47 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 02 Oct 2026 01:30:47 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:30:47 GMT
LABEL org.opencontainers.image.authors=MariaDB Community org.opencontainers.image.title=MariaDB Database org.opencontainers.image.description=MariaDB Database for relational SQL org.opencontainers.image.documentation=https://hub.docker.com/_/mariadb/ org.opencontainers.image.base.name=docker.io/library/ubuntu:noble org.opencontainers.image.licenses=GPL-2.0 org.opencontainers.image.source=https://github.com/MariaDB/mariadb-docker org.opencontainers.image.vendor=MariaDB Community org.opencontainers.image.version=12.3.3 org.opencontainers.image.url=https://github.com/MariaDB/mariadb-docker
# Fri, 02 Oct 2026 01:30:47 GMT
ARG MARIADB_VERSION=1:12.3.3+maria~ubu2404
# Fri, 02 Oct 2026 01:30:47 GMT
ENV MARIADB_VERSION=1:12.3.3+maria~ubu2404
# Fri, 02 Oct 2026 01:30:47 GMT
ARG REPOSITORY=http://archive.mariadb.org/mariadb-12.3.3/repo/ubuntu/ noble main main/debug
# Fri, 02 Oct 2026 01:30:47 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:12.3.3+maria~ubu2404 REPOSITORY=http://archive.mariadb.org/mariadb-12.3.3/repo/ubuntu/ noble main main/debug
RUN set -e;	echo "deb ${REPOSITORY}" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb # buildkit
# Fri, 02 Oct 2026 01:31:00 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:12.3.3+maria~ubu2404 REPOSITORY=http://archive.mariadb.org/mariadb-12.3.3/repo/ubuntu/ noble main main/debug
RUN set -ex; 	{ 		echo "mariadb-server" mysql-server/root_password password 'unused'; 		echo "mariadb-server" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	apt-get update; 	mkdir -p /var/lib/mysql/mysql ; touch /var/lib/mysql/mysql/user.frm ; 	apt-get install -y --no-install-recommends mariadb-server-galera="$MARIADB_VERSION" mariadb-backup socat 	; 	rm -rf /var/lib/apt/lists/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /run/mysqld; 	chmod 1777 /run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user\s)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user\s)/#&/'; 	printf "[mariadb]\nhost-cache-size=0\nskip-name-resolve\n" > /etc/mysql/mariadb.conf.d/05-skipcache.cnf; 	if [ -L /etc/mysql/my.cnf ]; then 		sed -i -e '/includedir/ {N;s/\(.*\)\n\(.*\)/\n\2\n\1/}' /etc/mysql/mariadb.cnf; 	fi # buildkit
# Fri, 02 Oct 2026 01:31:00 GMT
VOLUME [/var/lib/mysql]
# Fri, 02 Oct 2026 01:31:00 GMT
COPY healthcheck.sh /usr/local/bin/healthcheck.sh # buildkit
# Fri, 02 Oct 2026 01:31:00 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 02 Oct 2026 01:31:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 02 Oct 2026 01:31:00 GMT
EXPOSE map[3306/tcp:{}]
# Fri, 02 Oct 2026 01:31:00 GMT
CMD ["mariadbd"]
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95d441f6021c51a4cc700b5132acc821bf343e37ccb1f386d1135ceddd0ca178`  
		Last Modified: Fri, 02 Oct 2026 01:31:14 GMT  
		Size: 1.3 KB (1343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6246840d94435638d18cf5e2060f9da9dae00198a37c55178e55337a18f0eb2a`  
		Last Modified: Fri, 02 Oct 2026 01:31:14 GMT  
		Size: 7.7 MB (7656017 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdf718a2e9a0c4f3b23d12b5d67cbc97f672bf2b1b405667ac56774d5bc31b46`  
		Last Modified: Fri, 02 Oct 2026 01:31:14 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54b1ffdfb7ec26e3b9627761a594504233c8d2af9b05305be9a26966efffb0b9`  
		Last Modified: Fri, 02 Oct 2026 01:31:14 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e80f2f0005b8648a8af51d428180fc6f1eb6e14bd819cae7faae906239d10dbd`  
		Last Modified: Fri, 02 Oct 2026 01:31:17 GMT  
		Size: 70.4 MB (70402759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d77bd56b2dd6f4dbdecf576535062d7e34457167fa06b0009c92625cbf113f80`  
		Last Modified: Fri, 02 Oct 2026 01:31:15 GMT  
		Size: 4.0 KB (4035 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bc5dcec34dd7e6049baeb350d2225d938af4e97ff30667f38bd86624b20b418`  
		Last Modified: Fri, 02 Oct 2026 01:31:16 GMT  
		Size: 8.5 KB (8491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mariadb:lts` - unknown; unknown

```console
$ docker pull mariadb@sha256:e285846e61e5c0b37166ebbcc9f4e172d3bf3aab0fc7a1a9ef0b50c0a94a3d4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4297516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff7c2753e70fc8881d05fd95c36b302bc0ee36b7ba3d0d22c4158426946f00b9`

```dockerfile
```

-	Layers:
	-	`sha256:722aaaccfab0bfff82bf8c5f99e2a6aa84c54910dff2b7daada2b8ff27ecefbc`  
		Last Modified: Fri, 02 Oct 2026 01:31:15 GMT  
		Size: 4.3 MB (4266046 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7a5c7ff8f80aa67e2a8b07cac6d89594a32850d3633813ac9d00a9a4fec68168`  
		Last Modified: Fri, 02 Oct 2026 01:31:14 GMT  
		Size: 31.5 KB (31470 bytes)  
		MIME: application/vnd.in-toto+json

### `mariadb:lts` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:a74facdf7c75f67cfcee589b99fbd34dd36c9782c26cabd2401d11e1f4412ffe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.2 MB (103230250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9df6fc1218f4df61fd9df3486487a53ed1f892887c987b90aeba6f6412cfc7e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mariadbd"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:23 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:23 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:23 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:25 GMT
ADD file:41d2e63ceb0b90641106340bc81ee11125254db51ee5a9d49e666bcf0388814f in / 
# Fri, 02 Oct 2026 08:10:26 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:31:14 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql --home-dir /var/lib/mysql && userdel --remove ubuntu # buildkit
# Sat, 17 Oct 2026 00:31:33 GMT
ENV GOSU_VERSION=1.19
# Sat, 17 Oct 2026 00:31:33 GMT
ARG GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
# Sat, 17 Oct 2026 00:31:33 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
RUN set -eux; 	apt-get update; 	DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends 		ca-certificates 		gpg 		gpgv 		libjemalloc2 		libtcmalloc-minimal4t64 		pwgen 		tzdata 		xz-utils 		zstd ; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get install -y --no-install-recommends 		dirmngr 		gpg-agent 		wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -q -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -q -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	GNUPGHOME="$(mktemp -d)"; 	export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --export "$GPG_KEYS" > /etc/apt/trusted.gpg.d/mariadb.gpg; 	if command -v gpgconf >/dev/null; then 		gpgconf --kill all; 	fi; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] ||	apt-mark manual $savedAptMark >/dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 17 Oct 2026 00:31:33 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Sat, 17 Oct 2026 00:31:33 GMT
ENV LANG=C.UTF-8
# Sat, 17 Oct 2026 00:31:33 GMT
LABEL org.opencontainers.image.authors=MariaDB Community org.opencontainers.image.title=MariaDB Database org.opencontainers.image.description=MariaDB Database for relational SQL org.opencontainers.image.documentation=https://hub.docker.com/_/mariadb/ org.opencontainers.image.base.name=docker.io/library/ubuntu:noble org.opencontainers.image.licenses=GPL-2.0 org.opencontainers.image.source=https://github.com/MariaDB/mariadb-docker org.opencontainers.image.vendor=MariaDB Community org.opencontainers.image.version=12.3.3 org.opencontainers.image.url=https://github.com/MariaDB/mariadb-docker
# Sat, 17 Oct 2026 00:31:33 GMT
ARG MARIADB_VERSION=1:12.3.3+maria~ubu2404
# Sat, 17 Oct 2026 00:31:33 GMT
ENV MARIADB_VERSION=1:12.3.3+maria~ubu2404
# Sat, 17 Oct 2026 00:31:33 GMT
ARG REPOSITORY=http://archive.mariadb.org/mariadb-12.3.3/repo/ubuntu/ noble main main/debug
# Sat, 17 Oct 2026 00:31:33 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:12.3.3+maria~ubu2404 REPOSITORY=http://archive.mariadb.org/mariadb-12.3.3/repo/ubuntu/ noble main main/debug
RUN set -e;	echo "deb ${REPOSITORY}" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb # buildkit
# Sat, 17 Oct 2026 00:31:50 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:12.3.3+maria~ubu2404 REPOSITORY=http://archive.mariadb.org/mariadb-12.3.3/repo/ubuntu/ noble main main/debug
RUN set -ex; 	{ 		echo "mariadb-server" mysql-server/root_password password 'unused'; 		echo "mariadb-server" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	apt-get update; 	mkdir -p /var/lib/mysql/mysql ; touch /var/lib/mysql/mysql/user.frm ; 	apt-get install -y --no-install-recommends mariadb-server-galera="$MARIADB_VERSION" mariadb-backup socat 	; 	rm -rf /var/lib/apt/lists/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /run/mysqld; 	chmod 1777 /run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user\s)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user\s)/#&/'; 	printf "[mariadb]\nhost-cache-size=0\nskip-name-resolve\n" > /etc/mysql/mariadb.conf.d/05-skipcache.cnf; 	if [ -L /etc/mysql/my.cnf ]; then 		sed -i -e '/includedir/ {N;s/\(.*\)\n\(.*\)/\n\2\n\1/}' /etc/mysql/mariadb.cnf; 	fi # buildkit
# Sat, 17 Oct 2026 00:31:50 GMT
VOLUME [/var/lib/mysql]
# Sat, 17 Oct 2026 00:31:50 GMT
COPY healthcheck.sh /usr/local/bin/healthcheck.sh # buildkit
# Sat, 17 Oct 2026 00:31:50 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 17 Oct 2026 00:31:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Oct 2026 00:31:50 GMT
EXPOSE map[3306/tcp:{}]
# Sat, 17 Oct 2026 00:31:50 GMT
CMD ["mariadbd"]
```

-	Layers:
	-	`sha256:d5aec63251bb323f816a0f4b8a554bd84e478466a9ed1068daef07368328e9a3`  
		Last Modified: Fri, 02 Oct 2026 08:36:21 GMT  
		Size: 28.9 MB (28939761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e79dea9830f8ccc57f27cb598fe3520e6844eb30b9d09a730b0bb6acc430503d`  
		Last Modified: Sat, 17 Oct 2026 00:32:05 GMT  
		Size: 1.3 KB (1343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdcd055961a52d44ed1146644ad5efeeb2b6fd44075793b2d911fa58d9a1ff4e`  
		Last Modified: Sat, 17 Oct 2026 00:32:05 GMT  
		Size: 5.1 MB (5055616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79d051fc4bdab70bea48f3342da4fd31e8598c11605c30ecc3a6f1f2f3e3c8e7`  
		Last Modified: Sat, 17 Oct 2026 00:32:05 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4153d83f4f45d557cc9517dcf9ddef29e40d3f8fe685b44eb74d3ebe1af7dfb3`  
		Last Modified: Sat, 17 Oct 2026 00:32:05 GMT  
		Size: 328.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13d949b7a69e35d6b766a41281391a68e603fb48a959d458f49fc5e29bfb5b50`  
		Last Modified: Sat, 17 Oct 2026 00:32:08 GMT  
		Size: 69.2 MB (69220558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:544c68150cfcfa92db5abea28f57504e5a2d596abf8a4c0e986d30730e532214`  
		Last Modified: Sat, 17 Oct 2026 00:32:06 GMT  
		Size: 4.0 KB (4035 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:503117c2aca227f72cecc981d931c0f6288486dbe430ce8d2c10b6f2d8ef1418`  
		Last Modified: Sat, 17 Oct 2026 00:32:06 GMT  
		Size: 8.5 KB (8493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mariadb:lts` - unknown; unknown

```console
$ docker pull mariadb@sha256:9d23be854de22bea901588f6fc1c14fc30eba4f8a4a41578735bf7eb435f3bc2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4305011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52c769b48bbe401ad9ffe17707f1e7ea8d501f82fec400d3bde0a9c0af519c65`

```dockerfile
```

-	Layers:
	-	`sha256:ca58b2f9c3ad6ca73d70255e042693526e691ddd713f208e1f3a2a1f9ed52274`  
		Last Modified: Sat, 17 Oct 2026 00:32:05 GMT  
		Size: 4.3 MB (4273329 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e6eebe95575f4d0fb8df88ab122f763d18419f21b965a3a97c9ff25feb8689d6`  
		Last Modified: Sat, 17 Oct 2026 00:32:05 GMT  
		Size: 31.7 KB (31682 bytes)  
		MIME: application/vnd.in-toto+json

### `mariadb:lts` - linux; ppc64le

```console
$ docker pull mariadb@sha256:7f0742016b1be81023c0d5c8cdd5ae4aa79df27d70b029aa52e1619f16abfb2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.9 MB (117903032 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2eeb115fe8271b4401608233fc244afe2acb0e042ecaec01fbcc3bbdff01028d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mariadbd"]`

```dockerfile
# Fri, 18 Sep 2026 21:23:50 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:23:50 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:23:50 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:23:53 GMT
ADD file:65c699fd9797e3453b1d9214a3d29d981984167bbdef224150cdb4da169e2a77 in / 
# Fri, 18 Sep 2026 21:23:54 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 04:48:30 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql --home-dir /var/lib/mysql && userdel --remove ubuntu # buildkit
# Fri, 02 Oct 2026 04:49:15 GMT
ENV GOSU_VERSION=1.19
# Fri, 02 Oct 2026 04:49:15 GMT
ARG GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
# Fri, 02 Oct 2026 04:49:15 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
RUN set -eux; 	apt-get update; 	DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends 		ca-certificates 		gpg 		gpgv 		libjemalloc2 		libtcmalloc-minimal4t64 		pwgen 		tzdata 		xz-utils 		zstd ; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get install -y --no-install-recommends 		dirmngr 		gpg-agent 		wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -q -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -q -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	GNUPGHOME="$(mktemp -d)"; 	export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --export "$GPG_KEYS" > /etc/apt/trusted.gpg.d/mariadb.gpg; 	if command -v gpgconf >/dev/null; then 		gpgconf --kill all; 	fi; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] ||	apt-mark manual $savedAptMark >/dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Fri, 02 Oct 2026 04:49:16 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 02 Oct 2026 04:49:16 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 04:49:16 GMT
LABEL org.opencontainers.image.authors=MariaDB Community org.opencontainers.image.title=MariaDB Database org.opencontainers.image.description=MariaDB Database for relational SQL org.opencontainers.image.documentation=https://hub.docker.com/_/mariadb/ org.opencontainers.image.base.name=docker.io/library/ubuntu:noble org.opencontainers.image.licenses=GPL-2.0 org.opencontainers.image.source=https://github.com/MariaDB/mariadb-docker org.opencontainers.image.vendor=MariaDB Community org.opencontainers.image.version=12.3.3 org.opencontainers.image.url=https://github.com/MariaDB/mariadb-docker
# Fri, 02 Oct 2026 04:49:16 GMT
ARG MARIADB_VERSION=1:12.3.3+maria~ubu2404
# Fri, 02 Oct 2026 04:49:16 GMT
ENV MARIADB_VERSION=1:12.3.3+maria~ubu2404
# Fri, 02 Oct 2026 04:49:16 GMT
ARG REPOSITORY=http://archive.mariadb.org/mariadb-12.3.3/repo/ubuntu/ noble main main/debug
# Fri, 02 Oct 2026 04:49:18 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:12.3.3+maria~ubu2404 REPOSITORY=http://archive.mariadb.org/mariadb-12.3.3/repo/ubuntu/ noble main main/debug
RUN set -e;	echo "deb ${REPOSITORY}" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb # buildkit
# Fri, 02 Oct 2026 04:49:56 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:12.3.3+maria~ubu2404 REPOSITORY=http://archive.mariadb.org/mariadb-12.3.3/repo/ubuntu/ noble main main/debug
RUN set -ex; 	{ 		echo "mariadb-server" mysql-server/root_password password 'unused'; 		echo "mariadb-server" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	apt-get update; 	mkdir -p /var/lib/mysql/mysql ; touch /var/lib/mysql/mysql/user.frm ; 	apt-get install -y --no-install-recommends mariadb-server-galera="$MARIADB_VERSION" mariadb-backup socat 	; 	rm -rf /var/lib/apt/lists/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /run/mysqld; 	chmod 1777 /run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user\s)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user\s)/#&/'; 	printf "[mariadb]\nhost-cache-size=0\nskip-name-resolve\n" > /etc/mysql/mariadb.conf.d/05-skipcache.cnf; 	if [ -L /etc/mysql/my.cnf ]; then 		sed -i -e '/includedir/ {N;s/\(.*\)\n\(.*\)/\n\2\n\1/}' /etc/mysql/mariadb.cnf; 	fi # buildkit
# Fri, 02 Oct 2026 04:49:56 GMT
VOLUME [/var/lib/mysql]
# Fri, 02 Oct 2026 04:49:58 GMT
COPY healthcheck.sh /usr/local/bin/healthcheck.sh # buildkit
# Fri, 02 Oct 2026 04:49:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 02 Oct 2026 04:49:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 02 Oct 2026 04:49:58 GMT
EXPOSE map[3306/tcp:{}]
# Fri, 02 Oct 2026 04:49:58 GMT
CMD ["mariadbd"]
```

-	Layers:
	-	`sha256:02a2dd31affb75e9ad8595e0b0a537f3d60ecf8145f7dcd72eeaf14132bf426d`  
		Last Modified: Fri, 18 Sep 2026 22:30:11 GMT  
		Size: 34.4 MB (34376509 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3b38b61d8b82b5e66997fc33344ce1b496df3d35aab12917b90aad7bb349da5`  
		Last Modified: Fri, 02 Oct 2026 04:50:37 GMT  
		Size: 1.3 KB (1343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d142d8c16e8ab42e968dcf15e65237fed32224a990d63b2b4a5ddefd88afc71c`  
		Last Modified: Fri, 02 Oct 2026 04:50:39 GMT  
		Size: 8.6 MB (8575078 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bb72bb6d7e0072839919a0218bf545c49787491f2a952e1780414cfb3719e09`  
		Last Modified: Fri, 02 Oct 2026 04:50:37 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e389c9f6db548fdc620db68333132cfacf8ce940f008ed1e16fec30ec57619d`  
		Last Modified: Fri, 02 Oct 2026 04:50:38 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:963eed8ea87d33917e47f1ff3277ec7221a8a0565e78c1b6553f6ff27f61d568`  
		Last Modified: Fri, 02 Oct 2026 04:50:41 GMT  
		Size: 74.9 MB (74937126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed19dbd698be2afc3742bf0e884a116c0718b8f1c259cd7e30fb5657c1b93454`  
		Last Modified: Fri, 02 Oct 2026 04:50:39 GMT  
		Size: 4.0 KB (4035 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5417ca83ade3459830af5c5801aef54e3498c2d0c2fab5f6731c8c8df0c8e06`  
		Last Modified: Fri, 02 Oct 2026 04:50:39 GMT  
		Size: 8.5 KB (8493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mariadb:lts` - unknown; unknown

```console
$ docker pull mariadb@sha256:65230de0df1ccc293d6898d3ada705b4c669256c0fd23a073e95529e143ebf7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4305527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e6044269b5e09f2e13c0760ee7cacab13956baa85c37a78113ef51e7724891b`

```dockerfile
```

-	Layers:
	-	`sha256:3d424f67525ab213bfc7d2a2c43dd5500cc5081b1c6a63e78e0095e6a2bb7127`  
		Last Modified: Fri, 02 Oct 2026 04:50:38 GMT  
		Size: 4.3 MB (4273981 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6dd0dc94b7d555a683768f730c35a709ea816f6f23edc3919cf25eddebc437d6`  
		Last Modified: Fri, 02 Oct 2026 04:50:37 GMT  
		Size: 31.5 KB (31546 bytes)  
		MIME: application/vnd.in-toto+json

### `mariadb:lts` - linux; s390x

```console
$ docker pull mariadb@sha256:cd833fa8d8d37fb6cdac8f6830448d1ddc3a391b0b886c6d551acdeb64a9d10b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.8 MB (111810689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74114bd9e44dacd52407b2f170ac7fc34922e0b0b09e56bd71055e9ae246cf79`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mariadbd"]`

```dockerfile
# Fri, 18 Sep 2026 21:22:48 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:22:48 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:22:48 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:22:50 GMT
ADD file:dbe84e9fbddf57955eb8069675a3842837c04eb1416213c2d50049efd3dad787 in / 
# Fri, 18 Sep 2026 21:22:50 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 02:05:35 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql --home-dir /var/lib/mysql && userdel --remove ubuntu # buildkit
# Fri, 02 Oct 2026 02:05:50 GMT
ENV GOSU_VERSION=1.19
# Fri, 02 Oct 2026 02:05:50 GMT
ARG GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
# Fri, 02 Oct 2026 02:05:50 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
RUN set -eux; 	apt-get update; 	DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends 		ca-certificates 		gpg 		gpgv 		libjemalloc2 		libtcmalloc-minimal4t64 		pwgen 		tzdata 		xz-utils 		zstd ; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get install -y --no-install-recommends 		dirmngr 		gpg-agent 		wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -q -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -q -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	GNUPGHOME="$(mktemp -d)"; 	export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --export "$GPG_KEYS" > /etc/apt/trusted.gpg.d/mariadb.gpg; 	if command -v gpgconf >/dev/null; then 		gpgconf --kill all; 	fi; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] ||	apt-mark manual $savedAptMark >/dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Fri, 02 Oct 2026 02:05:50 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 02 Oct 2026 02:05:50 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 02:05:50 GMT
LABEL org.opencontainers.image.authors=MariaDB Community org.opencontainers.image.title=MariaDB Database org.opencontainers.image.description=MariaDB Database for relational SQL org.opencontainers.image.documentation=https://hub.docker.com/_/mariadb/ org.opencontainers.image.base.name=docker.io/library/ubuntu:noble org.opencontainers.image.licenses=GPL-2.0 org.opencontainers.image.source=https://github.com/MariaDB/mariadb-docker org.opencontainers.image.vendor=MariaDB Community org.opencontainers.image.version=12.3.3 org.opencontainers.image.url=https://github.com/MariaDB/mariadb-docker
# Fri, 02 Oct 2026 02:05:50 GMT
ARG MARIADB_VERSION=1:12.3.3+maria~ubu2404
# Fri, 02 Oct 2026 02:05:50 GMT
ENV MARIADB_VERSION=1:12.3.3+maria~ubu2404
# Fri, 02 Oct 2026 02:05:50 GMT
ARG REPOSITORY=http://archive.mariadb.org/mariadb-12.3.3/repo/ubuntu/ noble main main/debug
# Fri, 02 Oct 2026 02:05:50 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:12.3.3+maria~ubu2404 REPOSITORY=http://archive.mariadb.org/mariadb-12.3.3/repo/ubuntu/ noble main main/debug
RUN set -e;	echo "deb ${REPOSITORY}" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb # buildkit
# Fri, 02 Oct 2026 02:06:10 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:12.3.3+maria~ubu2404 REPOSITORY=http://archive.mariadb.org/mariadb-12.3.3/repo/ubuntu/ noble main main/debug
RUN set -ex; 	{ 		echo "mariadb-server" mysql-server/root_password password 'unused'; 		echo "mariadb-server" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	apt-get update; 	mkdir -p /var/lib/mysql/mysql ; touch /var/lib/mysql/mysql/user.frm ; 	apt-get install -y --no-install-recommends mariadb-server-galera="$MARIADB_VERSION" mariadb-backup socat 	; 	rm -rf /var/lib/apt/lists/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /run/mysqld; 	chmod 1777 /run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user\s)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user\s)/#&/'; 	printf "[mariadb]\nhost-cache-size=0\nskip-name-resolve\n" > /etc/mysql/mariadb.conf.d/05-skipcache.cnf; 	if [ -L /etc/mysql/my.cnf ]; then 		sed -i -e '/includedir/ {N;s/\(.*\)\n\(.*\)/\n\2\n\1/}' /etc/mysql/mariadb.cnf; 	fi # buildkit
# Fri, 02 Oct 2026 02:06:10 GMT
VOLUME [/var/lib/mysql]
# Fri, 02 Oct 2026 02:06:10 GMT
COPY healthcheck.sh /usr/local/bin/healthcheck.sh # buildkit
# Fri, 02 Oct 2026 02:06:10 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 02 Oct 2026 02:06:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 02 Oct 2026 02:06:10 GMT
EXPOSE map[3306/tcp:{}]
# Fri, 02 Oct 2026 02:06:10 GMT
CMD ["mariadbd"]
```

-	Layers:
	-	`sha256:108aebd72dd457ee7da6e519c157e975c9f75fedf3563478a69f28606232305c`  
		Last Modified: Fri, 18 Sep 2026 22:30:25 GMT  
		Size: 29.9 MB (29945320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7c5ed78bb71a57210d5c0fa747c7000c1c7d1e1335544f836083bb3818dd889`  
		Last Modified: Fri, 02 Oct 2026 02:06:39 GMT  
		Size: 1.3 KB (1343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41ccf56654aea4c638848d9eae34b23f0579ec522226bed744770b2c64a8ef9c`  
		Last Modified: Fri, 02 Oct 2026 02:06:39 GMT  
		Size: 7.5 MB (7503362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13b59a6e825a114d9542d4ae3fada0a02adc3cf3cca80ee99347a9e4c4fb2828`  
		Last Modified: Fri, 02 Oct 2026 02:06:39 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eee0d36b4dc0d9cc7da2582c269d0fe1aa3e59c10dc93752ab6df7d6e8b7b1e1`  
		Last Modified: Fri, 02 Oct 2026 02:06:39 GMT  
		Size: 330.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6d3b06fef1aa7949571ea75812431f862a2fa9c7a1cb93c6305aa0bfaa637c1`  
		Last Modified: Fri, 02 Oct 2026 02:06:41 GMT  
		Size: 74.3 MB (74347689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba20d710f3de81c1664483808d481b0a0dbadb02eb0e1a40bef83c4b6a03f299`  
		Last Modified: Fri, 02 Oct 2026 02:06:40 GMT  
		Size: 4.0 KB (4034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd85a8808cb2965b461ce28780552dd5733f5c4a785c8bbbc4ab5948bc29a50f`  
		Last Modified: Fri, 02 Oct 2026 02:06:40 GMT  
		Size: 8.5 KB (8495 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mariadb:lts` - unknown; unknown

```console
$ docker pull mariadb@sha256:9df5d790ee118e1b4805e6d59fa2768a07d224651690a9ea137552ea57c68bc2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4299233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db33b91d782b839bf251a65f581977cc9a233260ac89608716dc3fe3cd0a084a`

```dockerfile
```

-	Layers:
	-	`sha256:ff19a429365fe1a2dfa8779bf44b1dd5cdb8464aa5645369d6e2c9043e8480c3`  
		Last Modified: Fri, 02 Oct 2026 02:06:39 GMT  
		Size: 4.3 MB (4267765 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6f1e26f3372b4549c0a7781e2af380bc35999008d791e1f17688ef0e993e9933`  
		Last Modified: Fri, 02 Oct 2026 02:06:39 GMT  
		Size: 31.5 KB (31468 bytes)  
		MIME: application/vnd.in-toto+json
