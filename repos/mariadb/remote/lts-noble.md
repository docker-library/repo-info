## `mariadb:lts-noble`

```console
$ docker pull mariadb@sha256:d46e102fa8b9b72bfcdeb56f9dd538742092119dc8b11f31fe662605cd234cd9
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

### `mariadb:lts-noble` - linux; amd64

```console
$ docker pull mariadb@sha256:71541e69e0a1fbec2fa57d6b3b30d751c7847ca77ce66f5af4ffff48060c37c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.4 MB (105429753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2215e9af96633257b5b4151123d4f77757b8b005d2922df21951e121267a66b5`
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
# Mon, 26 Oct 2026 23:24:26 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql --home-dir /var/lib/mysql && userdel --remove ubuntu # buildkit
# Mon, 26 Oct 2026 23:24:42 GMT
ENV GOSU_VERSION=1.19
# Mon, 26 Oct 2026 23:24:42 GMT
ARG GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
# Mon, 26 Oct 2026 23:24:42 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
RUN set -eux; 	apt-get update; 	DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends 		ca-certificates 		gpg 		gpgv 		libjemalloc2 		libtcmalloc-minimal4t64 		pwgen 		tzdata 		xz-utils 		zstd ; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get install -y --no-install-recommends 		dirmngr 		gpg-agent 		wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -q -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -q -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	GNUPGHOME="$(mktemp -d)"; 	export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --export "$GPG_KEYS" > /etc/apt/trusted.gpg.d/mariadb.gpg; 	if command -v gpgconf >/dev/null; then 		gpgconf --kill all; 	fi; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] ||	apt-mark manual $savedAptMark >/dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 26 Oct 2026 23:24:42 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 26 Oct 2026 23:24:42 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 23:24:42 GMT
LABEL org.opencontainers.image.authors=MariaDB Community org.opencontainers.image.title=MariaDB Database org.opencontainers.image.description=MariaDB Database for relational SQL org.opencontainers.image.documentation=https://hub.docker.com/_/mariadb/ org.opencontainers.image.base.name=docker.io/library/ubuntu:noble org.opencontainers.image.licenses=GPL-2.0 org.opencontainers.image.source=https://github.com/MariaDB/mariadb-docker org.opencontainers.image.vendor=MariaDB Community org.opencontainers.image.version=12.3.3 org.opencontainers.image.url=https://github.com/MariaDB/mariadb-docker
# Mon, 26 Oct 2026 23:24:42 GMT
ARG MARIADB_VERSION=1:12.3.3+maria~ubu2404
# Mon, 26 Oct 2026 23:24:42 GMT
ENV MARIADB_VERSION=1:12.3.3+maria~ubu2404
# Mon, 26 Oct 2026 23:24:42 GMT
ARG REPOSITORY=http://archive.mariadb.org/mariadb-12.3.3/repo/ubuntu/ noble main main/debug
# Mon, 26 Oct 2026 23:24:43 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:12.3.3+maria~ubu2404 REPOSITORY=http://archive.mariadb.org/mariadb-12.3.3/repo/ubuntu/ noble main main/debug
RUN set -e;	echo "deb ${REPOSITORY}" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb # buildkit
# Mon, 26 Oct 2026 23:24:58 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:12.3.3+maria~ubu2404 REPOSITORY=http://archive.mariadb.org/mariadb-12.3.3/repo/ubuntu/ noble main main/debug
RUN set -ex; 	{ 		echo "mariadb-server" mysql-server/root_password password 'unused'; 		echo "mariadb-server" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	apt-get update; 	mkdir -p /var/lib/mysql/mysql ; touch /var/lib/mysql/mysql/user.frm ; 	apt-get install -y --no-install-recommends mariadb-server-galera="$MARIADB_VERSION" mariadb-backup socat 	; 	rm -rf /var/lib/apt/lists/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /run/mysqld; 	chmod 1777 /run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user\s)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user\s)/#&/'; 	printf "[mariadb]\nhost-cache-size=0\nskip-name-resolve\n" > /etc/mysql/mariadb.conf.d/05-skipcache.cnf; 	if [ -L /etc/mysql/my.cnf ]; then 		sed -i -e '/includedir/ {N;s/\(.*\)\n\(.*\)/\n\2\n\1/}' /etc/mysql/mariadb.cnf; 	fi # buildkit
# Mon, 26 Oct 2026 23:24:58 GMT
VOLUME [/var/lib/mysql]
# Mon, 26 Oct 2026 23:24:58 GMT
COPY healthcheck.sh /usr/local/bin/healthcheck.sh # buildkit
# Mon, 26 Oct 2026 23:24:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 26 Oct 2026 23:24:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Oct 2026 23:24:58 GMT
EXPOSE map[3306/tcp:{}]
# Mon, 26 Oct 2026 23:24:58 GMT
CMD ["mariadbd"]
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08c60fc5d876b9a91bb9c7902514d3a2b44da7eee8c6cf59bf13637231d71313`  
		Last Modified: Mon, 26 Oct 2026 23:25:12 GMT  
		Size: 1.3 KB (1336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7419c9a80d1a9bb365e4d23c48689192578b5de0a2d353d7d5d1b055aeae872`  
		Last Modified: Mon, 26 Oct 2026 23:25:13 GMT  
		Size: 5.2 MB (5244575 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45e9f0b25d1e54e0cce7f7c83755b2061e0817faf697ec1d9236202523ddc07d`  
		Last Modified: Mon, 26 Oct 2026 23:25:12 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b27583aa0e1ae7f671795c837ce5b49d281be8fbdf7c9fb087487ae045d523d3`  
		Last Modified: Mon, 26 Oct 2026 23:25:12 GMT  
		Size: 331.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e93eb7c7bca3007dfb6b0bce23cb044d2c7330c8ad5fe73c7d9bb83a59a85c15`  
		Last Modified: Mon, 26 Oct 2026 23:25:15 GMT  
		Size: 70.4 MB (70403262 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3216356006ff1e5646c2fb75fc029fd9a208904a5efbdd59b84ac85f79a7883e`  
		Last Modified: Mon, 26 Oct 2026 23:25:14 GMT  
		Size: 4.0 KB (4030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4219b9f00dc2809bd9e3e4a535a71efa93fa0a12a07917cb7b7918fa9fd0892`  
		Last Modified: Mon, 26 Oct 2026 23:25:14 GMT  
		Size: 8.5 KB (8491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mariadb:lts-noble` - unknown; unknown

```console
$ docker pull mariadb@sha256:220b089ffcec6e8d2e5261f8aec1964af969594ebd5f04f6387db01eb261d346
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4296878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39c1f1a43b09ea1095cb75ff5338018f13ac3cfb4ee0124dd67ac2a55e726bc5`

```dockerfile
```

-	Layers:
	-	`sha256:abd2cf06fe0fbb1c421b56c3a072f6f6479ef48ae848263c8ad8e00a515decae`  
		Last Modified: Mon, 26 Oct 2026 23:25:13 GMT  
		Size: 4.3 MB (4265408 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fd0ea29e8bbecd23610a4d0331c610a2c92cb62e54cea4eb3ef2952183880fa6`  
		Last Modified: Mon, 26 Oct 2026 23:25:12 GMT  
		Size: 31.5 KB (31470 bytes)  
		MIME: application/vnd.in-toto+json

### `mariadb:lts-noble` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:5670cdd45526f77299085f699becf9d31a0244316a4d39c2fb4a60fc17c80f80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.2 MB (103229380 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70e01556b0e2208667c7adc8940e4e0d22e5668edd5ba888ee238f59211c79ec`
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
# Mon, 26 Oct 2026 23:29:00 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql --home-dir /var/lib/mysql && userdel --remove ubuntu # buildkit
# Mon, 26 Oct 2026 23:29:18 GMT
ENV GOSU_VERSION=1.19
# Mon, 26 Oct 2026 23:29:18 GMT
ARG GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
# Mon, 26 Oct 2026 23:29:18 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
RUN set -eux; 	apt-get update; 	DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends 		ca-certificates 		gpg 		gpgv 		libjemalloc2 		libtcmalloc-minimal4t64 		pwgen 		tzdata 		xz-utils 		zstd ; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get install -y --no-install-recommends 		dirmngr 		gpg-agent 		wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -q -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -q -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	GNUPGHOME="$(mktemp -d)"; 	export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --export "$GPG_KEYS" > /etc/apt/trusted.gpg.d/mariadb.gpg; 	if command -v gpgconf >/dev/null; then 		gpgconf --kill all; 	fi; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] ||	apt-mark manual $savedAptMark >/dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 26 Oct 2026 23:29:18 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 26 Oct 2026 23:29:18 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 23:29:18 GMT
LABEL org.opencontainers.image.authors=MariaDB Community org.opencontainers.image.title=MariaDB Database org.opencontainers.image.description=MariaDB Database for relational SQL org.opencontainers.image.documentation=https://hub.docker.com/_/mariadb/ org.opencontainers.image.base.name=docker.io/library/ubuntu:noble org.opencontainers.image.licenses=GPL-2.0 org.opencontainers.image.source=https://github.com/MariaDB/mariadb-docker org.opencontainers.image.vendor=MariaDB Community org.opencontainers.image.version=12.3.3 org.opencontainers.image.url=https://github.com/MariaDB/mariadb-docker
# Mon, 26 Oct 2026 23:29:18 GMT
ARG MARIADB_VERSION=1:12.3.3+maria~ubu2404
# Mon, 26 Oct 2026 23:29:18 GMT
ENV MARIADB_VERSION=1:12.3.3+maria~ubu2404
# Mon, 26 Oct 2026 23:29:18 GMT
ARG REPOSITORY=http://archive.mariadb.org/mariadb-12.3.3/repo/ubuntu/ noble main main/debug
# Mon, 26 Oct 2026 23:29:18 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:12.3.3+maria~ubu2404 REPOSITORY=http://archive.mariadb.org/mariadb-12.3.3/repo/ubuntu/ noble main main/debug
RUN set -e;	echo "deb ${REPOSITORY}" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb # buildkit
# Mon, 26 Oct 2026 23:29:35 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:12.3.3+maria~ubu2404 REPOSITORY=http://archive.mariadb.org/mariadb-12.3.3/repo/ubuntu/ noble main main/debug
RUN set -ex; 	{ 		echo "mariadb-server" mysql-server/root_password password 'unused'; 		echo "mariadb-server" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	apt-get update; 	mkdir -p /var/lib/mysql/mysql ; touch /var/lib/mysql/mysql/user.frm ; 	apt-get install -y --no-install-recommends mariadb-server-galera="$MARIADB_VERSION" mariadb-backup socat 	; 	rm -rf /var/lib/apt/lists/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /run/mysqld; 	chmod 1777 /run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user\s)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user\s)/#&/'; 	printf "[mariadb]\nhost-cache-size=0\nskip-name-resolve\n" > /etc/mysql/mariadb.conf.d/05-skipcache.cnf; 	if [ -L /etc/mysql/my.cnf ]; then 		sed -i -e '/includedir/ {N;s/\(.*\)\n\(.*\)/\n\2\n\1/}' /etc/mysql/mariadb.cnf; 	fi # buildkit
# Mon, 26 Oct 2026 23:29:35 GMT
VOLUME [/var/lib/mysql]
# Mon, 26 Oct 2026 23:29:35 GMT
COPY healthcheck.sh /usr/local/bin/healthcheck.sh # buildkit
# Mon, 26 Oct 2026 23:29:35 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 26 Oct 2026 23:29:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Oct 2026 23:29:35 GMT
EXPOSE map[3306/tcp:{}]
# Mon, 26 Oct 2026 23:29:35 GMT
CMD ["mariadbd"]
```

-	Layers:
	-	`sha256:e2d2bb84d02254f4be480ca3c62f94fc12ac959c11b3ce5bd7da3f411b2b9607`  
		Last Modified: Sun, 25 Oct 2026 14:50:12 GMT  
		Size: 28.9 MB (28940126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9893ca22022ccad7821ff838f28d82fd54a25786ad451fa0a8c03f1d70f43629`  
		Last Modified: Mon, 26 Oct 2026 23:29:50 GMT  
		Size: 1.3 KB (1339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de4cf9a80c16a5cad27dd84b52cc466a8d87f25d8315222ff82184f1826c5ae4`  
		Last Modified: Mon, 26 Oct 2026 23:29:50 GMT  
		Size: 5.1 MB (5054401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e51b7fc32b2383a0a17952422af58f86393ceb907c4349337bfdcb2c5a47742`  
		Last Modified: Mon, 26 Oct 2026 23:29:50 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59bd2ae86416d173a03dd271e6f0b4411a72d850e7d275be353590964062b370`  
		Last Modified: Mon, 26 Oct 2026 23:29:50 GMT  
		Size: 329.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac010979dbfdfe8c6265174e7fe8f831f506aa00089434995edc3c171706444d`  
		Last Modified: Mon, 26 Oct 2026 23:29:53 GMT  
		Size: 69.2 MB (69220542 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:352979e657bcd215ea97419fd9b960cef202fb98bd3328effd17f45a419c6585`  
		Last Modified: Mon, 26 Oct 2026 23:29:51 GMT  
		Size: 4.0 KB (4035 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ae75ff7485aa6a571fcb86f3e4c05d1d3236530d7246d4e2e82594757568c22`  
		Last Modified: Mon, 26 Oct 2026 23:29:51 GMT  
		Size: 8.5 KB (8492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mariadb:lts-noble` - unknown; unknown

```console
$ docker pull mariadb@sha256:d9d9e5bb86b87b1e4398a75014ca57b92d56aa3c89f7e421251f7bcf0e03301b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4304367 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22b445e0c1dc3cd072e1f0014253cfc91c0b54132ec19626915e852180f83fb9`

```dockerfile
```

-	Layers:
	-	`sha256:985d4da264a8f6bca575f68b254fcf0cb392dc346f5c2b80b10f1f0b75ac2fb4`  
		Last Modified: Mon, 26 Oct 2026 23:29:50 GMT  
		Size: 4.3 MB (4272685 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bf68b2300e6f550814bd49cf32162575ae5bb120f2df7ab4bf20a697c5502bc3`  
		Last Modified: Mon, 26 Oct 2026 23:29:50 GMT  
		Size: 31.7 KB (31682 bytes)  
		MIME: application/vnd.in-toto+json

### `mariadb:lts-noble` - linux; ppc64le

```console
$ docker pull mariadb@sha256:32f9d6c54edd4f50c77786e71240fbeab01d6ce4bea13955b6c3a1503f3da61a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.2 MB (115210755 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:631774789893489df09bf5dd1e2e606d726c36646012e9d11fac92f4a263b01a`
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
LABEL org.opencontainers.image.authors=MariaDB Community org.opencontainers.image.title=MariaDB Database org.opencontainers.image.description=MariaDB Database for relational SQL org.opencontainers.image.documentation=https://hub.docker.com/_/mariadb/ org.opencontainers.image.base.name=docker.io/library/ubuntu:noble org.opencontainers.image.licenses=GPL-2.0 org.opencontainers.image.source=https://github.com/MariaDB/mariadb-docker org.opencontainers.image.vendor=MariaDB Community org.opencontainers.image.version=12.3.3 org.opencontainers.image.url=https://github.com/MariaDB/mariadb-docker
# Tue, 27 Oct 2026 05:48:33 GMT
ARG MARIADB_VERSION=1:12.3.3+maria~ubu2404
# Tue, 27 Oct 2026 05:48:33 GMT
ENV MARIADB_VERSION=1:12.3.3+maria~ubu2404
# Tue, 27 Oct 2026 05:48:33 GMT
ARG REPOSITORY=http://archive.mariadb.org/mariadb-12.3.3/repo/ubuntu/ noble main main/debug
# Tue, 27 Oct 2026 05:48:34 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:12.3.3+maria~ubu2404 REPOSITORY=http://archive.mariadb.org/mariadb-12.3.3/repo/ubuntu/ noble main main/debug
RUN set -e;	echo "deb ${REPOSITORY}" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb # buildkit
# Tue, 27 Oct 2026 05:49:19 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:12.3.3+maria~ubu2404 REPOSITORY=http://archive.mariadb.org/mariadb-12.3.3/repo/ubuntu/ noble main main/debug
RUN set -ex; 	{ 		echo "mariadb-server" mysql-server/root_password password 'unused'; 		echo "mariadb-server" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	apt-get update; 	mkdir -p /var/lib/mysql/mysql ; touch /var/lib/mysql/mysql/user.frm ; 	apt-get install -y --no-install-recommends mariadb-server-galera="$MARIADB_VERSION" mariadb-backup socat 	; 	rm -rf /var/lib/apt/lists/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /run/mysqld; 	chmod 1777 /run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user\s)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user\s)/#&/'; 	printf "[mariadb]\nhost-cache-size=0\nskip-name-resolve\n" > /etc/mysql/mariadb.conf.d/05-skipcache.cnf; 	if [ -L /etc/mysql/my.cnf ]; then 		sed -i -e '/includedir/ {N;s/\(.*\)\n\(.*\)/\n\2\n\1/}' /etc/mysql/mariadb.cnf; 	fi # buildkit
# Tue, 27 Oct 2026 05:49:19 GMT
VOLUME [/var/lib/mysql]
# Tue, 27 Oct 2026 05:49:19 GMT
COPY healthcheck.sh /usr/local/bin/healthcheck.sh # buildkit
# Tue, 27 Oct 2026 05:49:20 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 05:49:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 05:49:20 GMT
EXPOSE map[3306/tcp:{}]
# Tue, 27 Oct 2026 05:49:20 GMT
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
	-	`sha256:0f3089b1e0d392cad07cbc8c1fa7b89d9e75ca083f86483301e701062dc3f7b3`  
		Last Modified: Tue, 27 Oct 2026 05:49:58 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd22171cb41b47e642debbbcc400edc67f385f2a36c2074e81057301667ecf3c`  
		Last Modified: Tue, 27 Oct 2026 05:50:01 GMT  
		Size: 74.9 MB (74937735 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba875abd30cd9b6c2c5767bed2c84f7bbd5b91db12125d854fdad3c472c1ddac`  
		Last Modified: Tue, 27 Oct 2026 05:49:59 GMT  
		Size: 4.0 KB (4035 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fed459c160533bcc8b44df6138400da60845b70afc848fe36000890bf6296ac5`  
		Last Modified: Tue, 27 Oct 2026 05:49:59 GMT  
		Size: 8.5 KB (8491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mariadb:lts-noble` - unknown; unknown

```console
$ docker pull mariadb@sha256:99bee53f329e23927886e8e473a5f0d3edac7643e217aa16ed638b11aa9837e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4304889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:209e8232e337b8595155b04cfbfbcf6dbd6a7fcb7bc70d3bc7a809615238e645`

```dockerfile
```

-	Layers:
	-	`sha256:a764c88bc549406e0607a7b18f6c3533913cddaad8a98986fcaa09e7fc7adb19`  
		Last Modified: Tue, 27 Oct 2026 05:49:58 GMT  
		Size: 4.3 MB (4273343 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f33a0386d58177e5f41bae123b7a9244a10b276590e63631834fca02cbcd0007`  
		Last Modified: Tue, 27 Oct 2026 05:49:58 GMT  
		Size: 31.5 KB (31546 bytes)  
		MIME: application/vnd.in-toto+json

### `mariadb:lts-noble` - linux; s390x

```console
$ docker pull mariadb@sha256:8b9c5e7639331c7920ae2f85728480777dce312190fd6c0388f04178f31faabb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.7 MB (109710447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67217ac5a9586e7c9f09e7646d095bc4810f0e21555807174dbe7c2b61614744`
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
LABEL org.opencontainers.image.authors=MariaDB Community org.opencontainers.image.title=MariaDB Database org.opencontainers.image.description=MariaDB Database for relational SQL org.opencontainers.image.documentation=https://hub.docker.com/_/mariadb/ org.opencontainers.image.base.name=docker.io/library/ubuntu:noble org.opencontainers.image.licenses=GPL-2.0 org.opencontainers.image.source=https://github.com/MariaDB/mariadb-docker org.opencontainers.image.vendor=MariaDB Community org.opencontainers.image.version=12.3.3 org.opencontainers.image.url=https://github.com/MariaDB/mariadb-docker
# Tue, 27 Oct 2026 00:01:12 GMT
ARG MARIADB_VERSION=1:12.3.3+maria~ubu2404
# Tue, 27 Oct 2026 00:01:12 GMT
ENV MARIADB_VERSION=1:12.3.3+maria~ubu2404
# Tue, 27 Oct 2026 00:01:12 GMT
ARG REPOSITORY=http://archive.mariadb.org/mariadb-12.3.3/repo/ubuntu/ noble main main/debug
# Tue, 27 Oct 2026 00:01:13 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:12.3.3+maria~ubu2404 REPOSITORY=http://archive.mariadb.org/mariadb-12.3.3/repo/ubuntu/ noble main main/debug
RUN set -e;	echo "deb ${REPOSITORY}" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb # buildkit
# Tue, 27 Oct 2026 00:01:32 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:12.3.3+maria~ubu2404 REPOSITORY=http://archive.mariadb.org/mariadb-12.3.3/repo/ubuntu/ noble main main/debug
RUN set -ex; 	{ 		echo "mariadb-server" mysql-server/root_password password 'unused'; 		echo "mariadb-server" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	apt-get update; 	mkdir -p /var/lib/mysql/mysql ; touch /var/lib/mysql/mysql/user.frm ; 	apt-get install -y --no-install-recommends mariadb-server-galera="$MARIADB_VERSION" mariadb-backup socat 	; 	rm -rf /var/lib/apt/lists/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /run/mysqld; 	chmod 1777 /run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user\s)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user\s)/#&/'; 	printf "[mariadb]\nhost-cache-size=0\nskip-name-resolve\n" > /etc/mysql/mariadb.conf.d/05-skipcache.cnf; 	if [ -L /etc/mysql/my.cnf ]; then 		sed -i -e '/includedir/ {N;s/\(.*\)\n\(.*\)/\n\2\n\1/}' /etc/mysql/mariadb.cnf; 	fi # buildkit
# Tue, 27 Oct 2026 00:01:32 GMT
VOLUME [/var/lib/mysql]
# Tue, 27 Oct 2026 00:01:32 GMT
COPY healthcheck.sh /usr/local/bin/healthcheck.sh # buildkit
# Tue, 27 Oct 2026 00:01:32 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 00:01:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 00:01:32 GMT
EXPOSE map[3306/tcp:{}]
# Tue, 27 Oct 2026 00:01:32 GMT
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
	-	`sha256:90b547aa31a5f16a80978d3d1eb37d987aa50ee924bac30787f3991f38259878`  
		Last Modified: Tue, 27 Oct 2026 00:02:02 GMT  
		Size: 331.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5f8e370e4f068873b27173075a108086c9a3a579f5a7f35764bfceed47980f4`  
		Last Modified: Tue, 27 Oct 2026 00:02:04 GMT  
		Size: 74.3 MB (74347821 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ff0a0a1bdac5bfd90cb89cea99779375bcfcd607e2e6cd3af32b2c6085ba53f`  
		Last Modified: Tue, 27 Oct 2026 00:02:03 GMT  
		Size: 4.0 KB (4032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e827408b2bde4321facd013427ea8178e0cc23383e595438d819e124b8fad2e`  
		Last Modified: Tue, 27 Oct 2026 00:02:03 GMT  
		Size: 8.5 KB (8490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mariadb:lts-noble` - unknown; unknown

```console
$ docker pull mariadb@sha256:16ced78306b92074ec5854ae288c2693f8449478bfaae79e1a0cbbc79aea9dd0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4298597 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e41601d9a34af6409d39a7e405a2640b279417465ddfa3849e9344d0228f34b2`

```dockerfile
```

-	Layers:
	-	`sha256:d27b0b52761930b0a5bd37327f06c6424a9332718a3b162a1f0933a7577a7dfb`  
		Last Modified: Tue, 27 Oct 2026 00:02:02 GMT  
		Size: 4.3 MB (4267127 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:87c53cb976189d4cabc080ce6bc93d837a6b7756d1105d8bbe656ab073670072`  
		Last Modified: Tue, 27 Oct 2026 00:02:02 GMT  
		Size: 31.5 KB (31470 bytes)  
		MIME: application/vnd.in-toto+json
