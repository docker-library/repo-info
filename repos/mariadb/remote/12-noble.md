## `mariadb:12-noble`

```console
$ docker pull mariadb@sha256:99c125f103f5d081ebbc9ffe064e63daf7f688ac33a5f7f29af2d7260a96debf
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
$ docker pull mariadb@sha256:0bc74b350f89ce2e1c4e69e3bfd920139498fae237141cad57315c03484020c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.4 MB (105429134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d313c7aa9a4a070ecceddc79a5be4942b10a765d7c6ecc1a67e1421e79f34f3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mariadbd"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:52 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:52 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:52 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:54 GMT
ADD file:7121eb4a5ba391efb4ba9a38c532d1c5dc2d22d276f04e062f357eea36ee62c4 in / 
# Fri, 02 Oct 2026 08:10:55 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:31:27 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql --home-dir /var/lib/mysql && userdel --remove ubuntu # buildkit
# Sat, 17 Oct 2026 00:31:46 GMT
ENV GOSU_VERSION=1.19
# Sat, 17 Oct 2026 00:31:46 GMT
ARG GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
# Sat, 17 Oct 2026 00:31:46 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
RUN set -eux; 	apt-get update; 	DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends 		ca-certificates 		gpg 		gpgv 		libjemalloc2 		libtcmalloc-minimal4t64 		pwgen 		tzdata 		xz-utils 		zstd ; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get install -y --no-install-recommends 		dirmngr 		gpg-agent 		wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -q -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -q -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	GNUPGHOME="$(mktemp -d)"; 	export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --export "$GPG_KEYS" > /etc/apt/trusted.gpg.d/mariadb.gpg; 	if command -v gpgconf >/dev/null; then 		gpgconf --kill all; 	fi; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] ||	apt-mark manual $savedAptMark >/dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 17 Oct 2026 00:31:46 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Sat, 17 Oct 2026 00:31:46 GMT
ENV LANG=C.UTF-8
# Sat, 17 Oct 2026 00:31:46 GMT
LABEL org.opencontainers.image.authors=MariaDB Community org.opencontainers.image.title=MariaDB Database org.opencontainers.image.description=MariaDB Database for relational SQL org.opencontainers.image.documentation=https://hub.docker.com/_/mariadb/ org.opencontainers.image.base.name=docker.io/library/ubuntu:noble org.opencontainers.image.licenses=GPL-2.0 org.opencontainers.image.source=https://github.com/MariaDB/mariadb-docker org.opencontainers.image.vendor=MariaDB Community org.opencontainers.image.version=12.3.3 org.opencontainers.image.url=https://github.com/MariaDB/mariadb-docker
# Sat, 17 Oct 2026 00:31:46 GMT
ARG MARIADB_VERSION=1:12.3.3+maria~ubu2404
# Sat, 17 Oct 2026 00:31:46 GMT
ENV MARIADB_VERSION=1:12.3.3+maria~ubu2404
# Sat, 17 Oct 2026 00:31:46 GMT
ARG REPOSITORY=http://archive.mariadb.org/mariadb-12.3.3/repo/ubuntu/ noble main main/debug
# Sat, 17 Oct 2026 00:31:46 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:12.3.3+maria~ubu2404 REPOSITORY=http://archive.mariadb.org/mariadb-12.3.3/repo/ubuntu/ noble main main/debug
RUN set -e;	echo "deb ${REPOSITORY}" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb # buildkit
# Sat, 17 Oct 2026 00:32:05 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:12.3.3+maria~ubu2404 REPOSITORY=http://archive.mariadb.org/mariadb-12.3.3/repo/ubuntu/ noble main main/debug
RUN set -ex; 	{ 		echo "mariadb-server" mysql-server/root_password password 'unused'; 		echo "mariadb-server" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	apt-get update; 	mkdir -p /var/lib/mysql/mysql ; touch /var/lib/mysql/mysql/user.frm ; 	apt-get install -y --no-install-recommends mariadb-server-galera="$MARIADB_VERSION" mariadb-backup socat 	; 	rm -rf /var/lib/apt/lists/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /run/mysqld; 	chmod 1777 /run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user\s)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user\s)/#&/'; 	printf "[mariadb]\nhost-cache-size=0\nskip-name-resolve\n" > /etc/mysql/mariadb.conf.d/05-skipcache.cnf; 	if [ -L /etc/mysql/my.cnf ]; then 		sed -i -e '/includedir/ {N;s/\(.*\)\n\(.*\)/\n\2\n\1/}' /etc/mysql/mariadb.cnf; 	fi # buildkit
# Sat, 17 Oct 2026 00:32:05 GMT
VOLUME [/var/lib/mysql]
# Sat, 17 Oct 2026 00:32:05 GMT
COPY healthcheck.sh /usr/local/bin/healthcheck.sh # buildkit
# Sat, 17 Oct 2026 00:32:05 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 17 Oct 2026 00:32:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Oct 2026 00:32:05 GMT
EXPOSE map[3306/tcp:{}]
# Sat, 17 Oct 2026 00:32:05 GMT
CMD ["mariadbd"]
```

-	Layers:
	-	`sha256:f2b4ef06ff01a67d4bed7657a4ae379a7d07934b7c3e743454a22a0d5275fb2b`  
		Last Modified: Fri, 02 Oct 2026 08:36:14 GMT  
		Size: 29.8 MB (29765758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e69e085ed19a455fa56a4920af80415677d50772896ee4cd78339c612fc2d4e`  
		Last Modified: Sat, 17 Oct 2026 00:32:19 GMT  
		Size: 1.3 KB (1341 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:230217bba892e8c5652c34097121347638398a82e25cbd901a5060e1d0f9dd9a`  
		Last Modified: Sat, 17 Oct 2026 00:32:20 GMT  
		Size: 5.2 MB (5245739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:736fb0925e0e1be010bcf840e7edee78ada2b8f6e6d85ce70202cbec6a101089`  
		Last Modified: Sat, 17 Oct 2026 00:32:19 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c63ed494258a99a6d2d281909877e962a13b73b1835236276168692c2332fb2e`  
		Last Modified: Sat, 17 Oct 2026 00:32:19 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a151992c3a5d39e7404b6143eaf4aeabd0359bf10ecf0a761c7bb979836769c1`  
		Last Modified: Sat, 17 Oct 2026 00:32:22 GMT  
		Size: 70.4 MB (70403318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66e4b2043c41957b91be5b048baad11b82a08bff16aab62676b128044be3587f`  
		Last Modified: Sat, 17 Oct 2026 00:32:21 GMT  
		Size: 4.0 KB (4034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eed18a35f34577edd7eee4c771e1a54817fc40bf8aba1ea094448c1a4f045937`  
		Last Modified: Sat, 17 Oct 2026 00:32:21 GMT  
		Size: 8.5 KB (8496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mariadb:12-noble` - unknown; unknown

```console
$ docker pull mariadb@sha256:4855b727ea0ec94a14723a4cefde92bed03835c6280bc1bc3fac3e7b69d97f24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4297521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f77b310ceaf83a0f08439222885acb42b19cf8c10a0f40d97ecc9460963852a`

```dockerfile
```

-	Layers:
	-	`sha256:f888806ad006d12f1f36d1cc5779744efed5b764bfc353c1994f0ad4ea09caa5`  
		Last Modified: Sat, 17 Oct 2026 00:32:20 GMT  
		Size: 4.3 MB (4266052 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:508e8c6abc858033489e240fa44387ee6c6701131672e48e21a2b096646ca090`  
		Last Modified: Sat, 17 Oct 2026 00:32:19 GMT  
		Size: 31.5 KB (31469 bytes)  
		MIME: application/vnd.in-toto+json

### `mariadb:12-noble` - linux; arm64 variant v8

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

### `mariadb:12-noble` - unknown; unknown

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

### `mariadb:12-noble` - linux; ppc64le

```console
$ docker pull mariadb@sha256:6fe26c2a4b8b5b3f0f27a54685f98c3fb8886a77dfc714186b05e74a194e7503
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.2 MB (115212746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:890f25a59dc7ebf3998229b01b395e0bb1ad2d8f2ac1a9fe15df8886a59ba5e8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mariadbd"]`

```dockerfile
# Fri, 02 Oct 2026 08:03:52 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:03:52 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:03:53 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:03:57 GMT
ADD file:453509713ec04b626052519f384e2b9d016f8f4971a3e6dd75d87e74e89202c9 in / 
# Fri, 02 Oct 2026 08:03:57 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 01:36:08 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql --home-dir /var/lib/mysql && userdel --remove ubuntu # buildkit
# Sat, 17 Oct 2026 01:37:03 GMT
ENV GOSU_VERSION=1.19
# Sat, 17 Oct 2026 01:37:03 GMT
ARG GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
# Sat, 17 Oct 2026 01:37:03 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
RUN set -eux; 	apt-get update; 	DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends 		ca-certificates 		gpg 		gpgv 		libjemalloc2 		libtcmalloc-minimal4t64 		pwgen 		tzdata 		xz-utils 		zstd ; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get install -y --no-install-recommends 		dirmngr 		gpg-agent 		wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -q -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -q -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	GNUPGHOME="$(mktemp -d)"; 	export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --export "$GPG_KEYS" > /etc/apt/trusted.gpg.d/mariadb.gpg; 	if command -v gpgconf >/dev/null; then 		gpgconf --kill all; 	fi; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] ||	apt-mark manual $savedAptMark >/dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 17 Oct 2026 01:37:05 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Sat, 17 Oct 2026 01:37:05 GMT
ENV LANG=C.UTF-8
# Sat, 17 Oct 2026 01:37:05 GMT
LABEL org.opencontainers.image.authors=MariaDB Community org.opencontainers.image.title=MariaDB Database org.opencontainers.image.description=MariaDB Database for relational SQL org.opencontainers.image.documentation=https://hub.docker.com/_/mariadb/ org.opencontainers.image.base.name=docker.io/library/ubuntu:noble org.opencontainers.image.licenses=GPL-2.0 org.opencontainers.image.source=https://github.com/MariaDB/mariadb-docker org.opencontainers.image.vendor=MariaDB Community org.opencontainers.image.version=12.3.3 org.opencontainers.image.url=https://github.com/MariaDB/mariadb-docker
# Sat, 17 Oct 2026 01:37:05 GMT
ARG MARIADB_VERSION=1:12.3.3+maria~ubu2404
# Sat, 17 Oct 2026 01:37:05 GMT
ENV MARIADB_VERSION=1:12.3.3+maria~ubu2404
# Sat, 17 Oct 2026 01:37:05 GMT
ARG REPOSITORY=http://archive.mariadb.org/mariadb-12.3.3/repo/ubuntu/ noble main main/debug
# Sat, 17 Oct 2026 01:37:05 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:12.3.3+maria~ubu2404 REPOSITORY=http://archive.mariadb.org/mariadb-12.3.3/repo/ubuntu/ noble main main/debug
RUN set -e;	echo "deb ${REPOSITORY}" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb # buildkit
# Sat, 17 Oct 2026 01:38:17 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:12.3.3+maria~ubu2404 REPOSITORY=http://archive.mariadb.org/mariadb-12.3.3/repo/ubuntu/ noble main main/debug
RUN set -ex; 	{ 		echo "mariadb-server" mysql-server/root_password password 'unused'; 		echo "mariadb-server" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	apt-get update; 	mkdir -p /var/lib/mysql/mysql ; touch /var/lib/mysql/mysql/user.frm ; 	apt-get install -y --no-install-recommends mariadb-server-galera="$MARIADB_VERSION" mariadb-backup socat 	; 	rm -rf /var/lib/apt/lists/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /run/mysqld; 	chmod 1777 /run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user\s)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user\s)/#&/'; 	printf "[mariadb]\nhost-cache-size=0\nskip-name-resolve\n" > /etc/mysql/mariadb.conf.d/05-skipcache.cnf; 	if [ -L /etc/mysql/my.cnf ]; then 		sed -i -e '/includedir/ {N;s/\(.*\)\n\(.*\)/\n\2\n\1/}' /etc/mysql/mariadb.cnf; 	fi # buildkit
# Sat, 17 Oct 2026 01:38:17 GMT
VOLUME [/var/lib/mysql]
# Sat, 17 Oct 2026 01:38:18 GMT
COPY healthcheck.sh /usr/local/bin/healthcheck.sh # buildkit
# Sat, 17 Oct 2026 01:38:19 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 17 Oct 2026 01:38:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Oct 2026 01:38:19 GMT
EXPOSE map[3306/tcp:{}]
# Sat, 17 Oct 2026 01:38:19 GMT
CMD ["mariadbd"]
```

-	Layers:
	-	`sha256:d56805ebb73a9b4ab3eaf5e6375e8f25df35aba5e48ca970deb58001dac1f2ca`  
		Last Modified: Fri, 02 Oct 2026 08:36:36 GMT  
		Size: 34.4 MB (34377990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:339727c456c6e2e3a3caf79c10b2216173a3fdc678618e6ce38d2b92ca4056bb`  
		Last Modified: Sat, 17 Oct 2026 01:39:04 GMT  
		Size: 1.3 KB (1339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba682fd39af3a04d3ac0ee29b98139e617c9842c24ad2bddb13b5e2da04c730c`  
		Last Modified: Sat, 17 Oct 2026 01:39:04 GMT  
		Size: 5.9 MB (5882428 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4428545ced959e074d9ff1886ebf69bd4d92544985326a4314e97ef93774529`  
		Last Modified: Sat, 17 Oct 2026 01:39:04 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:130cd3c6717ca1e7c8cd21f86e2569cbe2ec0942e93cab0847b626fc33283c9c`  
		Last Modified: Sat, 17 Oct 2026 01:39:09 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcdff93b0a485b93dec6b73c33614f4ee0d34c15a8386285e95270b7eb17c4d2`  
		Last Modified: Sat, 17 Oct 2026 01:39:11 GMT  
		Size: 74.9 MB (74938010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d37bbfba0e9570f3e5e0498b079d5e154df696854012b0fe55d77fc171bdea76`  
		Last Modified: Sat, 17 Oct 2026 01:39:09 GMT  
		Size: 4.0 KB (4036 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca3dae0fc9001c7c9ef9d4026562fc57b36d2f455f92aa1189bbb1fcb0539079`  
		Last Modified: Sat, 17 Oct 2026 01:39:09 GMT  
		Size: 8.5 KB (8495 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mariadb:12-noble` - unknown; unknown

```console
$ docker pull mariadb@sha256:bbf0981f307fb9d81f25f83ebdf35388c1163dfef2141a87257be2d0d2087fe0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4305533 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a629d3453e39e522db1f6721ad9aa64ca6298f6ef15b5353914e436421c1526`

```dockerfile
```

-	Layers:
	-	`sha256:13a92e55fcc676fb50666c12645a6fca6a4188d26af87e8c032a4a9b0fcf26e3`  
		Last Modified: Sat, 17 Oct 2026 01:39:09 GMT  
		Size: 4.3 MB (4273987 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:be50507e64d8fb75798bad86d150e1d3dcc90b1f58254cee5147393fef144d54`  
		Last Modified: Sat, 17 Oct 2026 01:39:09 GMT  
		Size: 31.5 KB (31546 bytes)  
		MIME: application/vnd.in-toto+json

### `mariadb:12-noble` - linux; s390x

```console
$ docker pull mariadb@sha256:0a5c5f67c472cbdba4fb525c1ba97acbd3565efea6fa089ce9077a6fadcb3b76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.7 MB (109712761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13fd1c4b3e2099e4653ebb7094ebdfef98f34ae193489b8dde9eca09d5b93636`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mariadbd"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:03 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:03 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:03 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:04 GMT
ADD file:82fcbc85b577996d551267407ad62089cd19d90c5b58692649763a56286be003 in / 
# Fri, 02 Oct 2026 08:10:04 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:43:22 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql --home-dir /var/lib/mysql && userdel --remove ubuntu # buildkit
# Sat, 17 Oct 2026 00:44:50 GMT
ENV GOSU_VERSION=1.19
# Sat, 17 Oct 2026 00:44:50 GMT
ARG GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
# Sat, 17 Oct 2026 00:44:50 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
RUN set -eux; 	apt-get update; 	DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends 		ca-certificates 		gpg 		gpgv 		libjemalloc2 		libtcmalloc-minimal4t64 		pwgen 		tzdata 		xz-utils 		zstd ; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get install -y --no-install-recommends 		dirmngr 		gpg-agent 		wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -q -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -q -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	GNUPGHOME="$(mktemp -d)"; 	export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --export "$GPG_KEYS" > /etc/apt/trusted.gpg.d/mariadb.gpg; 	if command -v gpgconf >/dev/null; then 		gpgconf --kill all; 	fi; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] ||	apt-mark manual $savedAptMark >/dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 17 Oct 2026 00:44:52 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Sat, 17 Oct 2026 00:44:52 GMT
ENV LANG=C.UTF-8
# Sat, 17 Oct 2026 00:44:52 GMT
LABEL org.opencontainers.image.authors=MariaDB Community org.opencontainers.image.title=MariaDB Database org.opencontainers.image.description=MariaDB Database for relational SQL org.opencontainers.image.documentation=https://hub.docker.com/_/mariadb/ org.opencontainers.image.base.name=docker.io/library/ubuntu:noble org.opencontainers.image.licenses=GPL-2.0 org.opencontainers.image.source=https://github.com/MariaDB/mariadb-docker org.opencontainers.image.vendor=MariaDB Community org.opencontainers.image.version=12.3.3 org.opencontainers.image.url=https://github.com/MariaDB/mariadb-docker
# Sat, 17 Oct 2026 00:44:52 GMT
ARG MARIADB_VERSION=1:12.3.3+maria~ubu2404
# Sat, 17 Oct 2026 00:44:52 GMT
ENV MARIADB_VERSION=1:12.3.3+maria~ubu2404
# Sat, 17 Oct 2026 00:44:52 GMT
ARG REPOSITORY=http://archive.mariadb.org/mariadb-12.3.3/repo/ubuntu/ noble main main/debug
# Sat, 17 Oct 2026 00:44:55 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:12.3.3+maria~ubu2404 REPOSITORY=http://archive.mariadb.org/mariadb-12.3.3/repo/ubuntu/ noble main main/debug
RUN set -e;	echo "deb ${REPOSITORY}" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb # buildkit
# Sat, 17 Oct 2026 00:47:30 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:12.3.3+maria~ubu2404 REPOSITORY=http://archive.mariadb.org/mariadb-12.3.3/repo/ubuntu/ noble main main/debug
RUN set -ex; 	{ 		echo "mariadb-server" mysql-server/root_password password 'unused'; 		echo "mariadb-server" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	apt-get update; 	mkdir -p /var/lib/mysql/mysql ; touch /var/lib/mysql/mysql/user.frm ; 	apt-get install -y --no-install-recommends mariadb-server-galera="$MARIADB_VERSION" mariadb-backup socat 	; 	rm -rf /var/lib/apt/lists/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /run/mysqld; 	chmod 1777 /run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user\s)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user\s)/#&/'; 	printf "[mariadb]\nhost-cache-size=0\nskip-name-resolve\n" > /etc/mysql/mariadb.conf.d/05-skipcache.cnf; 	if [ -L /etc/mysql/my.cnf ]; then 		sed -i -e '/includedir/ {N;s/\(.*\)\n\(.*\)/\n\2\n\1/}' /etc/mysql/mariadb.cnf; 	fi # buildkit
# Sat, 17 Oct 2026 00:47:30 GMT
VOLUME [/var/lib/mysql]
# Sat, 17 Oct 2026 00:47:30 GMT
COPY healthcheck.sh /usr/local/bin/healthcheck.sh # buildkit
# Sat, 17 Oct 2026 00:47:31 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 17 Oct 2026 00:47:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Oct 2026 00:47:31 GMT
EXPOSE map[3306/tcp:{}]
# Sat, 17 Oct 2026 00:47:31 GMT
CMD ["mariadbd"]
```

-	Layers:
	-	`sha256:065d1f6c380ca54736c8a4f70bc4b730e9eb82685c699b9c66d38d0136763b43`  
		Last Modified: Fri, 02 Oct 2026 08:36:52 GMT  
		Size: 29.9 MB (29946330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:789161688dd7689d78cfea8d1858b8f9a54c49bf89ea126d9d07985b538f95a9`  
		Last Modified: Sat, 17 Oct 2026 00:48:18 GMT  
		Size: 1.4 KB (1354 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5a99225a0b693817959cd60a62ed674861a965f3d2c453beb6382f60da60148`  
		Last Modified: Sat, 17 Oct 2026 00:48:18 GMT  
		Size: 5.4 MB (5403324 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac3bd3b1b6269f38159b3c381f7299c56d7187458c101abaed12a53d3fcd324f`  
		Last Modified: Sat, 17 Oct 2026 00:48:16 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e69cd89a6b22ee83dfacb5cf89c62a832500dc2e713ac8c14050fd3546084b4`  
		Last Modified: Sat, 17 Oct 2026 00:48:19 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b5d43fc2ca29be8f4d6e704ddcf5c1da8a14d3721374447a46024e12f331b22`  
		Last Modified: Sat, 17 Oct 2026 00:48:25 GMT  
		Size: 74.3 MB (74348772 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69ef39ca974ec9c97f9f45a1b6e3445168bb8bf7d2c78b4ffbc6316fd5431c96`  
		Last Modified: Sat, 17 Oct 2026 00:48:21 GMT  
		Size: 4.0 KB (4036 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8e91fea73791379b252247fffb45a2abe5690d50966ba3c8d257a5e0d357a10`  
		Last Modified: Sat, 17 Oct 2026 00:48:22 GMT  
		Size: 8.5 KB (8495 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mariadb:12-noble` - unknown; unknown

```console
$ docker pull mariadb@sha256:a64bc292f6c34d697648a3083db00226bb795fdae19c55be0cdb3cc11a54fe79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4299241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e9b9676b473ccdc7123990180ab0b36adb49393202243f797d0a5cf51d04b70`

```dockerfile
```

-	Layers:
	-	`sha256:ab8d9804ccd5278bfc049081818cbd64bcb49d1c35f910427808246e0b3bb3eb`  
		Last Modified: Sat, 17 Oct 2026 00:48:19 GMT  
		Size: 4.3 MB (4267771 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e90356b900b4eacc0a5b5933608eb0f86ebbcf666eda5c3aa5b76d3081b0a1e8`  
		Last Modified: Sat, 17 Oct 2026 00:48:17 GMT  
		Size: 31.5 KB (31470 bytes)  
		MIME: application/vnd.in-toto+json
