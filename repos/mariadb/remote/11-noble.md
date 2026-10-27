## `mariadb:11-noble`

```console
$ docker pull mariadb@sha256:c4124d1afa875e47f2892edf26b482fa54f796e2f342d3717a04ca091a22a9bd
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

### `mariadb:11-noble` - linux; amd64

```console
$ docker pull mariadb@sha256:8a4a99eff981d95c3ab12d019b82fe59725fb7761f1f9a5f155bc3f025528f4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.9 MB (103911440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f2506b4b989879f5e004ba606b1d6711d467dee12be80c81799dd046fcc753c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mariadbd"]`

```dockerfile
# Sun, 25 Oct 2026 14:17:45 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:17:45 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:17:45 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:17:47 GMT
ADD file:eed88e94d6aa7c9da62836e137f889e03988c1a6b237b0cedb6ca666dfaa98ea in / 
# Sun, 25 Oct 2026 14:17:47 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:24:28 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql --home-dir /var/lib/mysql && userdel --remove ubuntu # buildkit
# Mon, 26 Oct 2026 23:24:41 GMT
ENV GOSU_VERSION=1.19
# Mon, 26 Oct 2026 23:24:41 GMT
ARG GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
# Mon, 26 Oct 2026 23:24:41 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
RUN set -eux; 	apt-get update; 	DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends 		ca-certificates 		gpg 		gpgv 		libjemalloc2 		libtcmalloc-minimal4t64 		pwgen 		tzdata 		xz-utils 		zstd ; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get install -y --no-install-recommends 		dirmngr 		gpg-agent 		wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -q -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -q -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	GNUPGHOME="$(mktemp -d)"; 	export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --export "$GPG_KEYS" > /etc/apt/trusted.gpg.d/mariadb.gpg; 	if command -v gpgconf >/dev/null; then 		gpgconf --kill all; 	fi; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] ||	apt-mark manual $savedAptMark >/dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 26 Oct 2026 23:24:41 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 26 Oct 2026 23:24:41 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 23:24:41 GMT
LABEL org.opencontainers.image.authors=MariaDB Community org.opencontainers.image.title=MariaDB Database org.opencontainers.image.description=MariaDB Database for relational SQL org.opencontainers.image.documentation=https://hub.docker.com/_/mariadb/ org.opencontainers.image.base.name=docker.io/library/ubuntu:noble org.opencontainers.image.licenses=GPL-2.0 org.opencontainers.image.source=https://github.com/MariaDB/mariadb-docker org.opencontainers.image.vendor=MariaDB Community org.opencontainers.image.version=11.8.9 org.opencontainers.image.url=https://github.com/MariaDB/mariadb-docker
# Mon, 26 Oct 2026 23:24:41 GMT
ARG MARIADB_VERSION=1:11.8.9+maria~ubu2404
# Mon, 26 Oct 2026 23:24:41 GMT
ENV MARIADB_VERSION=1:11.8.9+maria~ubu2404
# Mon, 26 Oct 2026 23:24:41 GMT
ARG REPOSITORY=http://archive.mariadb.org/mariadb-11.8.9/repo/ubuntu/ noble main main/debug
# Mon, 26 Oct 2026 23:24:42 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:11.8.9+maria~ubu2404 REPOSITORY=http://archive.mariadb.org/mariadb-11.8.9/repo/ubuntu/ noble main main/debug
RUN set -e;	echo "deb ${REPOSITORY}" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb # buildkit
# Mon, 26 Oct 2026 23:24:57 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:11.8.9+maria~ubu2404 REPOSITORY=http://archive.mariadb.org/mariadb-11.8.9/repo/ubuntu/ noble main main/debug
RUN set -ex; 	{ 		echo "mariadb-server" mysql-server/root_password password 'unused'; 		echo "mariadb-server" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	apt-get update; 	mkdir -p /var/lib/mysql/mysql ; touch /var/lib/mysql/mysql/user.frm ; 	apt-get install -y --no-install-recommends mariadb-server="$MARIADB_VERSION" mariadb-backup socat 	; 	rm -rf /var/lib/apt/lists/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /run/mysqld; 	chmod 1777 /run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user\s)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user\s)/#&/'; 	printf "[mariadb]\nhost-cache-size=0\nskip-name-resolve\n" > /etc/mysql/mariadb.conf.d/05-skipcache.cnf; 	if [ -L /etc/mysql/my.cnf ]; then 		sed -i -e '/includedir/ {N;s/\(.*\)\n\(.*\)/\n\2\n\1/}' /etc/mysql/mariadb.cnf; 	fi # buildkit
# Mon, 26 Oct 2026 23:24:57 GMT
VOLUME [/var/lib/mysql]
# Mon, 26 Oct 2026 23:24:57 GMT
COPY healthcheck.sh /usr/local/bin/healthcheck.sh # buildkit
# Mon, 26 Oct 2026 23:24:57 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 26 Oct 2026 23:24:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Oct 2026 23:24:57 GMT
EXPOSE map[3306/tcp:{}]
# Mon, 26 Oct 2026 23:24:57 GMT
CMD ["mariadbd"]
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abf44d6524257544311ea2bf1c1494c2a27f6445e4a281733117662859b71bb4`  
		Last Modified: Mon, 26 Oct 2026 23:25:11 GMT  
		Size: 1.3 KB (1336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51cb608ce6b7243cdd76c693fd369571f15c1672e3ab65d0323400a4478a47fe`  
		Last Modified: Mon, 26 Oct 2026 23:25:11 GMT  
		Size: 5.2 MB (5244547 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2297701ffd6e7fadf826e6049f04ce874ff94e775a7c14fa1712a522fb0f2b57`  
		Last Modified: Mon, 26 Oct 2026 23:25:11 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0543510fe2ed5411ba8084e227072b21375390d211e3385b5f469a7f57c72e8b`  
		Last Modified: Mon, 26 Oct 2026 23:25:11 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b22508c864c4ea207f29369e7d11c4898afaa6c9b56d4223304c57547e269fac`  
		Last Modified: Mon, 26 Oct 2026 23:25:13 GMT  
		Size: 68.9 MB (68884970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a3b048a97c1add04df9cdc37b1a2f7d3a326edc64f1908ab7a11c31d0efc803`  
		Last Modified: Mon, 26 Oct 2026 23:25:12 GMT  
		Size: 4.0 KB (4034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61cd5f8046b196034c61fde01bc6cab5787d396a18fb7d1590190147b278a5f2`  
		Last Modified: Mon, 26 Oct 2026 23:25:12 GMT  
		Size: 8.5 KB (8493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mariadb:11-noble` - unknown; unknown

```console
$ docker pull mariadb@sha256:9665a4572716264bde3bcc80773a2e945104c1bad19e71c9181d4d48485f9fbc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4287988 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f7d9685cc2c040a3d29258ed09615d3012caf30ecebd3b11844f720c3b8a673`

```dockerfile
```

-	Layers:
	-	`sha256:ce87bd690e674ad84b1eb931cb8eb2d8dca2c8cd437c51092d32fbbfd17badc6`  
		Last Modified: Mon, 26 Oct 2026 23:25:11 GMT  
		Size: 4.3 MB (4257133 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3c346e1ee97218e3b4eb872ece1d56bcd23079a96aa44e19d641b5b4feff8823`  
		Last Modified: Mon, 26 Oct 2026 23:25:11 GMT  
		Size: 30.9 KB (30855 bytes)  
		MIME: application/vnd.in-toto+json

### `mariadb:11-noble` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:51d5a3273562df11f0642bf1815ae64922f1657b0ee0edff35b65a4f489c3925
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.0 MB (102046844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0b34663106328bc5f394a84ed4b6bad19e3b3a42cfd1f1e58c9323451e43825`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mariadbd"]`

```dockerfile
# Sun, 25 Oct 2026 14:18:00 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:18:00 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:18:00 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:03 GMT
ADD file:2c901e275b6c59fa9cf0fb689a9665247088dba23d45178d9aa52ec3263de265 in / 
# Sun, 25 Oct 2026 14:18:03 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:29:08 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql --home-dir /var/lib/mysql && userdel --remove ubuntu # buildkit
# Mon, 26 Oct 2026 23:29:28 GMT
ENV GOSU_VERSION=1.19
# Mon, 26 Oct 2026 23:29:28 GMT
ARG GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
# Mon, 26 Oct 2026 23:29:28 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
RUN set -eux; 	apt-get update; 	DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends 		ca-certificates 		gpg 		gpgv 		libjemalloc2 		libtcmalloc-minimal4t64 		pwgen 		tzdata 		xz-utils 		zstd ; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get install -y --no-install-recommends 		dirmngr 		gpg-agent 		wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -q -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -q -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	GNUPGHOME="$(mktemp -d)"; 	export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --export "$GPG_KEYS" > /etc/apt/trusted.gpg.d/mariadb.gpg; 	if command -v gpgconf >/dev/null; then 		gpgconf --kill all; 	fi; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] ||	apt-mark manual $savedAptMark >/dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 26 Oct 2026 23:29:28 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 26 Oct 2026 23:29:28 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 23:29:28 GMT
LABEL org.opencontainers.image.authors=MariaDB Community org.opencontainers.image.title=MariaDB Database org.opencontainers.image.description=MariaDB Database for relational SQL org.opencontainers.image.documentation=https://hub.docker.com/_/mariadb/ org.opencontainers.image.base.name=docker.io/library/ubuntu:noble org.opencontainers.image.licenses=GPL-2.0 org.opencontainers.image.source=https://github.com/MariaDB/mariadb-docker org.opencontainers.image.vendor=MariaDB Community org.opencontainers.image.version=11.8.9 org.opencontainers.image.url=https://github.com/MariaDB/mariadb-docker
# Mon, 26 Oct 2026 23:29:28 GMT
ARG MARIADB_VERSION=1:11.8.9+maria~ubu2404
# Mon, 26 Oct 2026 23:29:28 GMT
ENV MARIADB_VERSION=1:11.8.9+maria~ubu2404
# Mon, 26 Oct 2026 23:29:28 GMT
ARG REPOSITORY=http://archive.mariadb.org/mariadb-11.8.9/repo/ubuntu/ noble main main/debug
# Mon, 26 Oct 2026 23:29:28 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:11.8.9+maria~ubu2404 REPOSITORY=http://archive.mariadb.org/mariadb-11.8.9/repo/ubuntu/ noble main main/debug
RUN set -e;	echo "deb ${REPOSITORY}" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb # buildkit
# Mon, 26 Oct 2026 23:29:43 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:11.8.9+maria~ubu2404 REPOSITORY=http://archive.mariadb.org/mariadb-11.8.9/repo/ubuntu/ noble main main/debug
RUN set -ex; 	{ 		echo "mariadb-server" mysql-server/root_password password 'unused'; 		echo "mariadb-server" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	apt-get update; 	mkdir -p /var/lib/mysql/mysql ; touch /var/lib/mysql/mysql/user.frm ; 	apt-get install -y --no-install-recommends mariadb-server="$MARIADB_VERSION" mariadb-backup socat 	; 	rm -rf /var/lib/apt/lists/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /run/mysqld; 	chmod 1777 /run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user\s)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user\s)/#&/'; 	printf "[mariadb]\nhost-cache-size=0\nskip-name-resolve\n" > /etc/mysql/mariadb.conf.d/05-skipcache.cnf; 	if [ -L /etc/mysql/my.cnf ]; then 		sed -i -e '/includedir/ {N;s/\(.*\)\n\(.*\)/\n\2\n\1/}' /etc/mysql/mariadb.cnf; 	fi # buildkit
# Mon, 26 Oct 2026 23:29:43 GMT
VOLUME [/var/lib/mysql]
# Mon, 26 Oct 2026 23:29:43 GMT
COPY healthcheck.sh /usr/local/bin/healthcheck.sh # buildkit
# Mon, 26 Oct 2026 23:29:43 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 26 Oct 2026 23:29:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Oct 2026 23:29:43 GMT
EXPOSE map[3306/tcp:{}]
# Mon, 26 Oct 2026 23:29:43 GMT
CMD ["mariadbd"]
```

-	Layers:
	-	`sha256:e2d2bb84d02254f4be480ca3c62f94fc12ac959c11b3ce5bd7da3f411b2b9607`  
		Last Modified: Sun, 25 Oct 2026 14:50:12 GMT  
		Size: 28.9 MB (28940126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d3320846117d3ce4024491f60ffaa72ec09e41a3125508c231aead0ab99e32d`  
		Last Modified: Mon, 26 Oct 2026 23:29:57 GMT  
		Size: 1.3 KB (1336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01a210b710fb2f66d6ee8e1b96db760f1da9f32dc0a75dd5ffe177d98ea97a00`  
		Last Modified: Mon, 26 Oct 2026 23:29:58 GMT  
		Size: 5.1 MB (5054378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7d76aafce229ff1a8079281212c2e91180f1a625016601d50742ce22c47b09f`  
		Last Modified: Mon, 26 Oct 2026 23:29:57 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d74caf92fe3f2b9145a597842db9131f50c25646fd8c000f65df527436d9d206`  
		Last Modified: Mon, 26 Oct 2026 23:29:58 GMT  
		Size: 331.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03a26801e8b97a3839906656d894bf675d4ef0ee198a7f89772b5ad59dbf459b`  
		Last Modified: Mon, 26 Oct 2026 23:30:00 GMT  
		Size: 68.0 MB (68038033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10a28cff79c65bc8283cc753e59b92246ae06030c49e67556e55f7a59cd2b9b3`  
		Last Modified: Mon, 26 Oct 2026 23:29:58 GMT  
		Size: 4.0 KB (4033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:158ff33defc9e7d7d4591b925711d32ffd2ff55296424370c162796065a2d4f4`  
		Last Modified: Mon, 26 Oct 2026 23:29:59 GMT  
		Size: 8.5 KB (8491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mariadb:11-noble` - unknown; unknown

```console
$ docker pull mariadb@sha256:0aad6692e7f8109d1c87cd2f04e9ef8913c94911f9872bbe1b28b8fdb66f30d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4295429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ab8712db7875dceda0a2014a9fe4d9671aa3b4fa0971139c6d1bc5920c22ca0`

```dockerfile
```

-	Layers:
	-	`sha256:6c7389246a7a3e3ee7c37d2d3e866dbc41580e1d0aa9f2b357a767be3cb95c59`  
		Last Modified: Mon, 26 Oct 2026 23:29:58 GMT  
		Size: 4.3 MB (4264386 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c7ea232108a28d8d6167bb8564a1f98c83e5a475b9c3ba834534863fd20da759`  
		Last Modified: Mon, 26 Oct 2026 23:29:57 GMT  
		Size: 31.0 KB (31043 bytes)  
		MIME: application/vnd.in-toto+json

### `mariadb:11-noble` - linux; ppc64le

```console
$ docker pull mariadb@sha256:91e4afe73a54af9da1817a133c420e9da5370ed902487ae972ef93dda13513f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.8 MB (113834390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd1b6a8413d42fc01429cca09bb73dadb9b17c067a3707f6ead3608a8892f1f5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mariadbd"]`

```dockerfile
# Sun, 25 Oct 2026 14:18:35 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:18:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:18:35 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:39 GMT
ADD file:ef742f6d40def62a9b4c0b916161e4ab04e1a6b83bc4e20803daa0d5ab2ea12b in / 
# Sun, 25 Oct 2026 14:18:39 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 05:47:57 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql --home-dir /var/lib/mysql && userdel --remove ubuntu # buildkit
# Tue, 27 Oct 2026 05:48:33 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 05:48:33 GMT
ARG GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
# Tue, 27 Oct 2026 05:48:33 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
RUN set -eux; 	apt-get update; 	DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends 		ca-certificates 		gpg 		gpgv 		libjemalloc2 		libtcmalloc-minimal4t64 		pwgen 		tzdata 		xz-utils 		zstd ; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get install -y --no-install-recommends 		dirmngr 		gpg-agent 		wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -q -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -q -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	GNUPGHOME="$(mktemp -d)"; 	export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --export "$GPG_KEYS" > /etc/apt/trusted.gpg.d/mariadb.gpg; 	if command -v gpgconf >/dev/null; then 		gpgconf --kill all; 	fi; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] ||	apt-mark manual $savedAptMark >/dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 05:48:33 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 27 Oct 2026 05:48:33 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 05:48:33 GMT
LABEL org.opencontainers.image.authors=MariaDB Community org.opencontainers.image.title=MariaDB Database org.opencontainers.image.description=MariaDB Database for relational SQL org.opencontainers.image.documentation=https://hub.docker.com/_/mariadb/ org.opencontainers.image.base.name=docker.io/library/ubuntu:noble org.opencontainers.image.licenses=GPL-2.0 org.opencontainers.image.source=https://github.com/MariaDB/mariadb-docker org.opencontainers.image.vendor=MariaDB Community org.opencontainers.image.version=11.8.9 org.opencontainers.image.url=https://github.com/MariaDB/mariadb-docker
# Tue, 27 Oct 2026 05:48:33 GMT
ARG MARIADB_VERSION=1:11.8.9+maria~ubu2404
# Tue, 27 Oct 2026 05:48:33 GMT
ENV MARIADB_VERSION=1:11.8.9+maria~ubu2404
# Tue, 27 Oct 2026 05:48:33 GMT
ARG REPOSITORY=http://archive.mariadb.org/mariadb-11.8.9/repo/ubuntu/ noble main main/debug
# Tue, 27 Oct 2026 05:49:36 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:11.8.9+maria~ubu2404 REPOSITORY=http://archive.mariadb.org/mariadb-11.8.9/repo/ubuntu/ noble main main/debug
RUN set -e;	echo "deb ${REPOSITORY}" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb # buildkit
# Tue, 27 Oct 2026 05:50:08 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:11.8.9+maria~ubu2404 REPOSITORY=http://archive.mariadb.org/mariadb-11.8.9/repo/ubuntu/ noble main main/debug
RUN set -ex; 	{ 		echo "mariadb-server" mysql-server/root_password password 'unused'; 		echo "mariadb-server" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	apt-get update; 	mkdir -p /var/lib/mysql/mysql ; touch /var/lib/mysql/mysql/user.frm ; 	apt-get install -y --no-install-recommends mariadb-server="$MARIADB_VERSION" mariadb-backup socat 	; 	rm -rf /var/lib/apt/lists/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /run/mysqld; 	chmod 1777 /run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user\s)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user\s)/#&/'; 	printf "[mariadb]\nhost-cache-size=0\nskip-name-resolve\n" > /etc/mysql/mariadb.conf.d/05-skipcache.cnf; 	if [ -L /etc/mysql/my.cnf ]; then 		sed -i -e '/includedir/ {N;s/\(.*\)\n\(.*\)/\n\2\n\1/}' /etc/mysql/mariadb.cnf; 	fi # buildkit
# Tue, 27 Oct 2026 05:50:08 GMT
VOLUME [/var/lib/mysql]
# Tue, 27 Oct 2026 05:50:09 GMT
COPY healthcheck.sh /usr/local/bin/healthcheck.sh # buildkit
# Tue, 27 Oct 2026 05:50:10 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 05:50:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 05:50:10 GMT
EXPOSE map[3306/tcp:{}]
# Tue, 27 Oct 2026 05:50:10 GMT
CMD ["mariadbd"]
```

-	Layers:
	-	`sha256:400d78a2b842f2bd938ae79326cc66475d11b949ac6b2acbfbc7709090964eb8`  
		Last Modified: Sun, 25 Oct 2026 14:50:25 GMT  
		Size: 34.4 MB (34378308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39316d0697ae6ff14bea7850697c8945877ad500f4ee9ca92fa06b5357087f09`  
		Last Modified: Tue, 27 Oct 2026 05:49:58 GMT  
		Size: 1.3 KB (1344 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:876653a271af834bd71f6491c1f05a00b2bba2324d52f4d73f63d88cc67ff2aa`  
		Last Modified: Tue, 27 Oct 2026 05:49:58 GMT  
		Size: 5.9 MB (5880394 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e73203651e444bf1b96498be6c609b774d89d486a9b929418391c2d45e1bc33d`  
		Last Modified: Tue, 27 Oct 2026 05:49:58 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:317503f58a2c20984ec2695bbdb2e7cb06a929424e9f4521d03ce79687811073`  
		Last Modified: Tue, 27 Oct 2026 05:50:49 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c7ec65cd39989253dd8aee60047a171fc0a02a3e66b99a9f454e4abadb961f2`  
		Last Modified: Tue, 27 Oct 2026 05:50:51 GMT  
		Size: 73.6 MB (73561363 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2852300887476a1e2c78aabec60d83a2ad9a8634fe188100b2e60cf6d41299be`  
		Last Modified: Tue, 27 Oct 2026 05:50:49 GMT  
		Size: 4.0 KB (4036 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:610c44c38a6dbc68f1df5861a34424f239bf19139ffa7f1afe212fb26fcaac61`  
		Last Modified: Tue, 27 Oct 2026 05:50:49 GMT  
		Size: 8.5 KB (8494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mariadb:11-noble` - unknown; unknown

```console
$ docker pull mariadb@sha256:8733c5b9d4b02bb0f859e27501512c4b05c1929f2b84354b15b8aa000b182e25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4295975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5364ea70671eb5fd84172accbf046549448f949c7b8062c97bf6e27fd22ce74`

```dockerfile
```

-	Layers:
	-	`sha256:712635bfb39a7daa56e1506388471a2abe2fe3e1e029de264ed54dd7f0f9e89b`  
		Last Modified: Tue, 27 Oct 2026 05:50:49 GMT  
		Size: 4.3 MB (4265056 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5bdcb63577f686f949f141546392a25aaba0fc9acb2ec8c07dc9062508c43091`  
		Last Modified: Tue, 27 Oct 2026 05:50:49 GMT  
		Size: 30.9 KB (30919 bytes)  
		MIME: application/vnd.in-toto+json

### `mariadb:11-noble` - linux; s390x

```console
$ docker pull mariadb@sha256:c182763b5dd5f8c37d0ed955804454b9ee3287428033c2543d0db67e3ab93979
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.2 MB (108184866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bb66d687df562b507e39a6bd96ccb55390a90c368c32c9e5ee896803bb766ee`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mariadbd"]`

```dockerfile
# Sun, 25 Oct 2026 14:17:59 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:17:59 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:17:59 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:00 GMT
ADD file:c2156dcf753b3a0ab0d36b29087b8209a73050420505b4ce2fb173267e1306b5 in / 
# Sun, 25 Oct 2026 14:18:01 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 00:00:59 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql --home-dir /var/lib/mysql && userdel --remove ubuntu # buildkit
# Tue, 27 Oct 2026 00:01:12 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 00:01:12 GMT
ARG GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
# Tue, 27 Oct 2026 00:01:12 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
RUN set -eux; 	apt-get update; 	DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends 		ca-certificates 		gpg 		gpgv 		libjemalloc2 		libtcmalloc-minimal4t64 		pwgen 		tzdata 		xz-utils 		zstd ; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get install -y --no-install-recommends 		dirmngr 		gpg-agent 		wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -q -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -q -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	GNUPGHOME="$(mktemp -d)"; 	export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --export "$GPG_KEYS" > /etc/apt/trusted.gpg.d/mariadb.gpg; 	if command -v gpgconf >/dev/null; then 		gpgconf --kill all; 	fi; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] ||	apt-mark manual $savedAptMark >/dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 00:01:12 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 27 Oct 2026 00:01:12 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 00:01:12 GMT
LABEL org.opencontainers.image.authors=MariaDB Community org.opencontainers.image.title=MariaDB Database org.opencontainers.image.description=MariaDB Database for relational SQL org.opencontainers.image.documentation=https://hub.docker.com/_/mariadb/ org.opencontainers.image.base.name=docker.io/library/ubuntu:noble org.opencontainers.image.licenses=GPL-2.0 org.opencontainers.image.source=https://github.com/MariaDB/mariadb-docker org.opencontainers.image.vendor=MariaDB Community org.opencontainers.image.version=11.8.9 org.opencontainers.image.url=https://github.com/MariaDB/mariadb-docker
# Tue, 27 Oct 2026 00:01:12 GMT
ARG MARIADB_VERSION=1:11.8.9+maria~ubu2404
# Tue, 27 Oct 2026 00:01:12 GMT
ENV MARIADB_VERSION=1:11.8.9+maria~ubu2404
# Tue, 27 Oct 2026 00:01:12 GMT
ARG REPOSITORY=http://archive.mariadb.org/mariadb-11.8.9/repo/ubuntu/ noble main main/debug
# Tue, 27 Oct 2026 00:01:32 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:11.8.9+maria~ubu2404 REPOSITORY=http://archive.mariadb.org/mariadb-11.8.9/repo/ubuntu/ noble main main/debug
RUN set -e;	echo "deb ${REPOSITORY}" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb # buildkit
# Tue, 27 Oct 2026 00:01:57 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:11.8.9+maria~ubu2404 REPOSITORY=http://archive.mariadb.org/mariadb-11.8.9/repo/ubuntu/ noble main main/debug
RUN set -ex; 	{ 		echo "mariadb-server" mysql-server/root_password password 'unused'; 		echo "mariadb-server" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	apt-get update; 	mkdir -p /var/lib/mysql/mysql ; touch /var/lib/mysql/mysql/user.frm ; 	apt-get install -y --no-install-recommends mariadb-server="$MARIADB_VERSION" mariadb-backup socat 	; 	rm -rf /var/lib/apt/lists/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /run/mysqld; 	chmod 1777 /run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user\s)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user\s)/#&/'; 	printf "[mariadb]\nhost-cache-size=0\nskip-name-resolve\n" > /etc/mysql/mariadb.conf.d/05-skipcache.cnf; 	if [ -L /etc/mysql/my.cnf ]; then 		sed -i -e '/includedir/ {N;s/\(.*\)\n\(.*\)/\n\2\n\1/}' /etc/mysql/mariadb.cnf; 	fi # buildkit
# Tue, 27 Oct 2026 00:01:57 GMT
VOLUME [/var/lib/mysql]
# Tue, 27 Oct 2026 00:01:57 GMT
COPY healthcheck.sh /usr/local/bin/healthcheck.sh # buildkit
# Tue, 27 Oct 2026 00:01:57 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 00:01:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 00:01:57 GMT
EXPOSE map[3306/tcp:{}]
# Tue, 27 Oct 2026 00:01:57 GMT
CMD ["mariadbd"]
```

-	Layers:
	-	`sha256:f0fdb9cf963ef02d3c2868640dfc39eba181814f056a5ff58b2befec68fae0f7`  
		Last Modified: Sun, 25 Oct 2026 14:50:38 GMT  
		Size: 29.9 MB (29947050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1eead3a41d62cbb3de4d84daec226a37515cf74735ea584006889d618a47c61`  
		Last Modified: Tue, 27 Oct 2026 00:02:01 GMT  
		Size: 1.3 KB (1336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac2e9ac811edb2af48ea6e55c8874c1d0ecd83aa545c0e09c44a46391255c297`  
		Last Modified: Tue, 27 Oct 2026 00:02:02 GMT  
		Size: 5.4 MB (5401271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e196fb3c3d148122b6f7ed8199f7c0966fb69eb519044a7e98f88e0014fb0d5a`  
		Last Modified: Tue, 27 Oct 2026 00:02:02 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec21f3956d080ee69acb934424388b52b2229fe76c15f0201b3a28474c1ae383`  
		Last Modified: Tue, 27 Oct 2026 00:02:21 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8218eb85593481729e4e6cc12a90ff427bec86b3f23525c9d7ae32de5029879e`  
		Last Modified: Tue, 27 Oct 2026 00:02:23 GMT  
		Size: 72.8 MB (72822234 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b2cc24e0be4895258ebae843e616f35f51f631535790a4ee660d2fd77bf2057`  
		Last Modified: Tue, 27 Oct 2026 00:02:21 GMT  
		Size: 4.0 KB (4032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5612aa160b8f3cb0378b2a858686cf459f28ed9e5ee26828a774e9adb3d62f8d`  
		Last Modified: Tue, 27 Oct 2026 00:02:21 GMT  
		Size: 8.5 KB (8493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mariadb:11-noble` - unknown; unknown

```console
$ docker pull mariadb@sha256:b259667003bd9bd9079fe39019095e4ab771f1742d775fe9ca386bd42cf03deb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4289707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb5e28761666cdf506820424a92f40a63d4bb14d5fb73e6473d1eda716d90f0a`

```dockerfile
```

-	Layers:
	-	`sha256:90aec9a3a5e4a7c5867dda3c8f7f6fd0a85aa3d1b0121cca68803994518174c5`  
		Last Modified: Tue, 27 Oct 2026 00:02:22 GMT  
		Size: 4.3 MB (4258852 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:969e6467edb4b3682735d68ac7aa522e74204b5e42e9db73aeb4db234eb990a0`  
		Last Modified: Tue, 27 Oct 2026 00:02:21 GMT  
		Size: 30.9 KB (30855 bytes)  
		MIME: application/vnd.in-toto+json
