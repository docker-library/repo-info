## `mariadb:noble`

```console
$ docker pull mariadb@sha256:c237fd50cc48d6f2b87c4ca66d52f3b5eef7271b3bea7aee586c0be19d5b460d
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

### `mariadb:noble` - linux; amd64

```console
$ docker pull mariadb@sha256:63b29a06fbde176102a20d90fee92b2bac3a112a4f47816cac18da9b70767393
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.3 MB (105299709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57c69e064d6c79e7cbe8c77a3342327d13455947616e7e7908bda2fbad348e34`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mariadbd"]`

```dockerfile
# Mon, 17 Aug 2026 13:09:48 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:09:48 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:09:48 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:09:50 GMT
ADD file:cb9335ce6f27399c2b17787739d6675502767c53e0335ded2a5f0d003d996650 in / 
# Mon, 17 Aug 2026 13:09:51 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:23:55 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql --home-dir /var/lib/mysql && userdel --remove ubuntu # buildkit
# Tue, 18 Aug 2026 19:24:07 GMT
ENV GOSU_VERSION=1.19
# Tue, 18 Aug 2026 19:24:07 GMT
ARG GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
# Tue, 18 Aug 2026 19:24:07 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
RUN set -eux; 	apt-get update; 	DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends 		ca-certificates 		gpg 		gpgv 		libjemalloc2 		libtcmalloc-minimal4t64 		pwgen 		tzdata 		xz-utils 		zstd ; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get install -y --no-install-recommends 		dirmngr 		gpg-agent 		wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -q -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -q -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	GNUPGHOME="$(mktemp -d)"; 	export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --export "$GPG_KEYS" > /etc/apt/trusted.gpg.d/mariadb.gpg; 	if command -v gpgconf >/dev/null; then 		gpgconf --kill all; 	fi; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] ||	apt-mark manual $savedAptMark >/dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 18 Aug 2026 19:24:07 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 18 Aug 2026 19:24:07 GMT
ENV LANG=C.UTF-8
# Tue, 18 Aug 2026 19:24:07 GMT
LABEL org.opencontainers.image.authors=MariaDB Community org.opencontainers.image.title=MariaDB Database org.opencontainers.image.description=MariaDB Database for relational SQL org.opencontainers.image.documentation=https://hub.docker.com/_/mariadb/ org.opencontainers.image.base.name=docker.io/library/ubuntu:noble org.opencontainers.image.licenses=GPL-2.0 org.opencontainers.image.source=https://github.com/MariaDB/mariadb-docker org.opencontainers.image.vendor=MariaDB Community org.opencontainers.image.version=12.3.2 org.opencontainers.image.url=https://github.com/MariaDB/mariadb-docker
# Tue, 18 Aug 2026 19:24:07 GMT
ARG MARIADB_VERSION=1:12.3.2+maria~ubu2404
# Tue, 18 Aug 2026 19:24:07 GMT
ENV MARIADB_VERSION=1:12.3.2+maria~ubu2404
# Tue, 18 Aug 2026 19:24:07 GMT
ARG REPOSITORY=http://archive.mariadb.org/mariadb-12.3.2/repo/ubuntu/ noble main main/debug
# Tue, 18 Aug 2026 19:24:07 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:12.3.2+maria~ubu2404 REPOSITORY=http://archive.mariadb.org/mariadb-12.3.2/repo/ubuntu/ noble main main/debug
RUN set -e;	echo "deb ${REPOSITORY}" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb # buildkit
# Tue, 18 Aug 2026 19:24:20 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:12.3.2+maria~ubu2404 REPOSITORY=http://archive.mariadb.org/mariadb-12.3.2/repo/ubuntu/ noble main main/debug
RUN set -ex; 	{ 		echo "mariadb-server" mysql-server/root_password password 'unused'; 		echo "mariadb-server" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	apt-get update; 	mkdir -p /var/lib/mysql/mysql ; touch /var/lib/mysql/mysql/user.frm ; 	apt-get install -y --no-install-recommends mariadb-server-galera="$MARIADB_VERSION" mariadb-backup socat 	; 	rm -rf /var/lib/apt/lists/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /run/mysqld; 	chmod 1777 /run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user\s)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user\s)/#&/'; 	printf "[mariadb]\nhost-cache-size=0\nskip-name-resolve\n" > /etc/mysql/mariadb.conf.d/05-skipcache.cnf; 	if [ -L /etc/mysql/my.cnf ]; then 		sed -i -e '/includedir/ {N;s/\(.*\)\n\(.*\)/\n\2\n\1/}' /etc/mysql/mariadb.cnf; 	fi # buildkit
# Tue, 18 Aug 2026 19:24:20 GMT
VOLUME [/var/lib/mysql]
# Tue, 18 Aug 2026 19:24:20 GMT
COPY healthcheck.sh /usr/local/bin/healthcheck.sh # buildkit
# Tue, 18 Aug 2026 19:24:20 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 18 Aug 2026 19:24:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Aug 2026 19:24:20 GMT
EXPOSE map[3306/tcp:{}]
# Tue, 18 Aug 2026 19:24:20 GMT
CMD ["mariadbd"]
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71fc539b309a9c3d0b15568b629b2a136ade389e762e2ff49d445b5467377e21`  
		Last Modified: Tue, 18 Aug 2026 19:24:33 GMT  
		Size: 1.3 KB (1342 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0823aa11c04c65f4f6abca8c0f1a5ca74ff1b72294cbb5acf1575e028751caf0`  
		Last Modified: Tue, 18 Aug 2026 19:24:35 GMT  
		Size: 5.2 MB (5245569 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef4e113f30b95423af6e26440597d0ce807096cf928cd83fda864b6e6cee1baf`  
		Last Modified: Tue, 18 Aug 2026 19:24:33 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b9fa11a3618f89861117845321307a05f3b58b2558c61086743d0cd5c5bde12`  
		Last Modified: Tue, 18 Aug 2026 19:24:35 GMT  
		Size: 330.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4373608fb269941bc8fcd70ca7db9938e0dea6ce3ba93fc65d3aa6fdda7aba41`  
		Last Modified: Tue, 18 Aug 2026 19:24:37 GMT  
		Size: 70.3 MB (70287019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4b83b8f70d27eda0c82c9d6add520f345e029bda1da89f47a0b9eecfd11725a`  
		Last Modified: Tue, 18 Aug 2026 19:24:34 GMT  
		Size: 4.0 KB (4034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d1c2cce3f0a7a12a78d7ad100b75d3d40c2f94aa415a3e46e8a73bf16687cb0`  
		Last Modified: Tue, 18 Aug 2026 19:24:36 GMT  
		Size: 8.5 KB (8492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mariadb:noble` - unknown; unknown

```console
$ docker pull mariadb@sha256:0b2ec5b36f6946b1991d704dd4e4ab5141ce1509e5a624bdc29c2bacab4b8baf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4298688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1eb30342c34e6860464f2e070bf01409cf0bf809e3b3b11133b0725b51d6c928`

```dockerfile
```

-	Layers:
	-	`sha256:5173751ac3f173fcf6712936cd8fa62a41c72519be538ed4edbed5311a9b1b30`  
		Last Modified: Tue, 18 Aug 2026 19:24:35 GMT  
		Size: 4.3 MB (4266621 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2f4b4a1b0af3f7ec374ec1bf1e63858ba2ed6d972dd57871fe335fbcee605d1d`  
		Last Modified: Tue, 18 Aug 2026 19:24:35 GMT  
		Size: 32.1 KB (32067 bytes)  
		MIME: application/vnd.in-toto+json

### `mariadb:noble` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:f3761402303ebafc3bb4cb174afae399d71acd72b260f19139b5337dc39065f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.1 MB (103077444 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fabdcd1b066b18b6f7ec91ee4fc3a91227b20c3926a5b2a01dcdcf403c0030e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mariadbd"]`

```dockerfile
# Mon, 17 Aug 2026 13:11:31 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:11:31 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:11:31 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:11:34 GMT
ADD file:0387b3d029de8fa08641ccfaa44c6a4ad07b93035420d53b49783ea27527d153 in / 
# Mon, 17 Aug 2026 13:11:34 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:23:56 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql --home-dir /var/lib/mysql && userdel --remove ubuntu # buildkit
# Tue, 18 Aug 2026 19:24:09 GMT
ENV GOSU_VERSION=1.19
# Tue, 18 Aug 2026 19:24:09 GMT
ARG GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
# Tue, 18 Aug 2026 19:24:09 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
RUN set -eux; 	apt-get update; 	DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends 		ca-certificates 		gpg 		gpgv 		libjemalloc2 		libtcmalloc-minimal4t64 		pwgen 		tzdata 		xz-utils 		zstd ; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get install -y --no-install-recommends 		dirmngr 		gpg-agent 		wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -q -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -q -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	GNUPGHOME="$(mktemp -d)"; 	export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --export "$GPG_KEYS" > /etc/apt/trusted.gpg.d/mariadb.gpg; 	if command -v gpgconf >/dev/null; then 		gpgconf --kill all; 	fi; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] ||	apt-mark manual $savedAptMark >/dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 18 Aug 2026 19:24:09 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 18 Aug 2026 19:24:09 GMT
ENV LANG=C.UTF-8
# Tue, 18 Aug 2026 19:24:09 GMT
LABEL org.opencontainers.image.authors=MariaDB Community org.opencontainers.image.title=MariaDB Database org.opencontainers.image.description=MariaDB Database for relational SQL org.opencontainers.image.documentation=https://hub.docker.com/_/mariadb/ org.opencontainers.image.base.name=docker.io/library/ubuntu:noble org.opencontainers.image.licenses=GPL-2.0 org.opencontainers.image.source=https://github.com/MariaDB/mariadb-docker org.opencontainers.image.vendor=MariaDB Community org.opencontainers.image.version=12.3.2 org.opencontainers.image.url=https://github.com/MariaDB/mariadb-docker
# Tue, 18 Aug 2026 19:24:09 GMT
ARG MARIADB_VERSION=1:12.3.2+maria~ubu2404
# Tue, 18 Aug 2026 19:24:09 GMT
ENV MARIADB_VERSION=1:12.3.2+maria~ubu2404
# Tue, 18 Aug 2026 19:24:09 GMT
ARG REPOSITORY=http://archive.mariadb.org/mariadb-12.3.2/repo/ubuntu/ noble main main/debug
# Tue, 18 Aug 2026 19:24:10 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:12.3.2+maria~ubu2404 REPOSITORY=http://archive.mariadb.org/mariadb-12.3.2/repo/ubuntu/ noble main main/debug
RUN set -e;	echo "deb ${REPOSITORY}" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb # buildkit
# Tue, 18 Aug 2026 19:24:24 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:12.3.2+maria~ubu2404 REPOSITORY=http://archive.mariadb.org/mariadb-12.3.2/repo/ubuntu/ noble main main/debug
RUN set -ex; 	{ 		echo "mariadb-server" mysql-server/root_password password 'unused'; 		echo "mariadb-server" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	apt-get update; 	mkdir -p /var/lib/mysql/mysql ; touch /var/lib/mysql/mysql/user.frm ; 	apt-get install -y --no-install-recommends mariadb-server-galera="$MARIADB_VERSION" mariadb-backup socat 	; 	rm -rf /var/lib/apt/lists/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /run/mysqld; 	chmod 1777 /run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user\s)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user\s)/#&/'; 	printf "[mariadb]\nhost-cache-size=0\nskip-name-resolve\n" > /etc/mysql/mariadb.conf.d/05-skipcache.cnf; 	if [ -L /etc/mysql/my.cnf ]; then 		sed -i -e '/includedir/ {N;s/\(.*\)\n\(.*\)/\n\2\n\1/}' /etc/mysql/mariadb.cnf; 	fi # buildkit
# Tue, 18 Aug 2026 19:24:24 GMT
VOLUME [/var/lib/mysql]
# Tue, 18 Aug 2026 19:24:24 GMT
COPY healthcheck.sh /usr/local/bin/healthcheck.sh # buildkit
# Tue, 18 Aug 2026 19:24:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 18 Aug 2026 19:24:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Aug 2026 19:24:24 GMT
EXPOSE map[3306/tcp:{}]
# Tue, 18 Aug 2026 19:24:24 GMT
CMD ["mariadbd"]
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6572083bbb94317b074c23af04705d597b88a7dd091176ac3e56c327b044a17`  
		Last Modified: Tue, 18 Aug 2026 19:24:38 GMT  
		Size: 1.3 KB (1342 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7339ea9b6c152c59121cb0f0e3e80a49d7112c6a05c58317a4f555da3ac9398`  
		Last Modified: Tue, 18 Aug 2026 19:24:39 GMT  
		Size: 5.1 MB (5055393 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1755f5abe301dc37c30743c6a090cc3b09bb15b20dde4b33a94c8bd02ed7c7f4`  
		Last Modified: Tue, 18 Aug 2026 19:24:38 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc4f20b829605a32879a6269b4a05007712e224abad8069900f7cea012f935fd`  
		Last Modified: Tue, 18 Aug 2026 19:24:38 GMT  
		Size: 329.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:272e2c9d55d44b0490480c98c333e109136e63e7ec50cd2d6f1e9e253838e1f8`  
		Last Modified: Tue, 18 Aug 2026 19:24:41 GMT  
		Size: 69.1 MB (69120502 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8195387c2032c21d892d10ecc69edfd235df350e3c1848b470e606918796c689`  
		Last Modified: Tue, 18 Aug 2026 19:24:39 GMT  
		Size: 4.0 KB (4034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2288fbbbd585a1829d5a728ac93e0709aa7cfd9064a21184e55471bd818bad16`  
		Last Modified: Tue, 18 Aug 2026 19:24:40 GMT  
		Size: 8.5 KB (8493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mariadb:noble` - unknown; unknown

```console
$ docker pull mariadb@sha256:7d31123062864618ebd7aa4a8d86a7c8f7bdb903393a514c43b4d31a844a66fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4306226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d7bce3f66cd34e0306256ac7bfd1d8354e8a1eb577f3c51f5b3a63714ea8f1e`

```dockerfile
```

-	Layers:
	-	`sha256:777004d3002d02bb3f53b644a0bf743264a083e9b6ba5afe03620ad40cfa4ce6`  
		Last Modified: Tue, 18 Aug 2026 19:24:38 GMT  
		Size: 4.3 MB (4273922 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:262a89c5efb5d99a11453dbb12e70c65a0441c2c0b254fa13eeb25c78f40503b`  
		Last Modified: Tue, 18 Aug 2026 19:24:38 GMT  
		Size: 32.3 KB (32304 bytes)  
		MIME: application/vnd.in-toto+json

### `mariadb:noble` - linux; ppc64le

```console
$ docker pull mariadb@sha256:90ef40ec6a694a64850ac018325ba509ccf6cbf89cf685d4508b0d116049ff3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.6 MB (117639534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f86e16c20339129f3db6d6e1c09f66d4f40f05fa38a1026556c477b90654621a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mariadbd"]`

```dockerfile
# Fri, 31 Jul 2026 20:44:29 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:44:29 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:44:29 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:44:32 GMT
ADD file:de84028a58b37b343ef7acd8f4c9a3bfde61683d6c522e683a978115b04d031b in / 
# Fri, 31 Jul 2026 20:44:33 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 02:06:40 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql --home-dir /var/lib/mysql && userdel --remove ubuntu # buildkit
# Tue, 04 Aug 2026 02:07:11 GMT
ENV GOSU_VERSION=1.19
# Tue, 04 Aug 2026 02:07:11 GMT
ARG GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
# Tue, 04 Aug 2026 02:07:11 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
RUN set -eux; 	apt-get update; 	DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends 		ca-certificates 		gpg 		gpgv 		libjemalloc2 		libtcmalloc-minimal4t64 		pwgen 		tzdata 		xz-utils 		zstd ; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get install -y --no-install-recommends 		dirmngr 		gpg-agent 		wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -q -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -q -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	GNUPGHOME="$(mktemp -d)"; 	export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --export "$GPG_KEYS" > /etc/apt/trusted.gpg.d/mariadb.gpg; 	if command -v gpgconf >/dev/null; then 		gpgconf --kill all; 	fi; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] ||	apt-mark manual $savedAptMark >/dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 04 Aug 2026 02:07:11 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 04 Aug 2026 02:07:11 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 02:07:11 GMT
LABEL org.opencontainers.image.authors=MariaDB Community org.opencontainers.image.title=MariaDB Database org.opencontainers.image.description=MariaDB Database for relational SQL org.opencontainers.image.documentation=https://hub.docker.com/_/mariadb/ org.opencontainers.image.base.name=docker.io/library/ubuntu:noble org.opencontainers.image.licenses=GPL-2.0 org.opencontainers.image.source=https://github.com/MariaDB/mariadb-docker org.opencontainers.image.vendor=MariaDB Community org.opencontainers.image.version=12.3.2 org.opencontainers.image.url=https://github.com/MariaDB/mariadb-docker
# Tue, 04 Aug 2026 02:07:11 GMT
ARG MARIADB_VERSION=1:12.3.2+maria~ubu2404
# Tue, 04 Aug 2026 02:07:11 GMT
ENV MARIADB_VERSION=1:12.3.2+maria~ubu2404
# Tue, 04 Aug 2026 02:07:11 GMT
ARG REPOSITORY=http://archive.mariadb.org/mariadb-12.3.2/repo/ubuntu/ noble main main/debug
# Tue, 04 Aug 2026 02:07:12 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:12.3.2+maria~ubu2404 REPOSITORY=http://archive.mariadb.org/mariadb-12.3.2/repo/ubuntu/ noble main main/debug
RUN set -e;	echo "deb ${REPOSITORY}" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb # buildkit
# Tue, 04 Aug 2026 02:07:53 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:12.3.2+maria~ubu2404 REPOSITORY=http://archive.mariadb.org/mariadb-12.3.2/repo/ubuntu/ noble main main/debug
RUN set -ex; 	{ 		echo "mariadb-server" mysql-server/root_password password 'unused'; 		echo "mariadb-server" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	apt-get update; 	mkdir -p /var/lib/mysql/mysql ; touch /var/lib/mysql/mysql/user.frm ; 	apt-get install -y --no-install-recommends mariadb-server-galera="$MARIADB_VERSION" mariadb-backup socat 	; 	rm -rf /var/lib/apt/lists/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /run/mysqld; 	chmod 1777 /run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user\s)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user\s)/#&/'; 	printf "[mariadb]\nhost-cache-size=0\nskip-name-resolve\n" > /etc/mysql/mariadb.conf.d/05-skipcache.cnf; 	if [ -L /etc/mysql/my.cnf ]; then 		sed -i -e '/includedir/ {N;s/\(.*\)\n\(.*\)/\n\2\n\1/}' /etc/mysql/mariadb.cnf; 	fi # buildkit
# Tue, 04 Aug 2026 02:07:53 GMT
VOLUME [/var/lib/mysql]
# Tue, 04 Aug 2026 02:07:55 GMT
COPY healthcheck.sh /usr/local/bin/healthcheck.sh # buildkit
# Tue, 04 Aug 2026 02:07:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 02:07:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Aug 2026 02:07:55 GMT
EXPOSE map[3306/tcp:{}]
# Tue, 04 Aug 2026 02:07:55 GMT
CMD ["mariadbd"]
```

-	Layers:
	-	`sha256:9d1bffbd46bb5cede430c07896855e38e8bfe397bbc67fe1808f03623a4aad12`  
		Last Modified: Fri, 31 Jul 2026 22:22:43 GMT  
		Size: 34.3 MB (34310673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b36703e7181728903314fa860300439297f745f02d29faaeed9d018b35a53aac`  
		Last Modified: Tue, 04 Aug 2026 02:08:25 GMT  
		Size: 1.3 KB (1347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4398ba8a29ff6fc06e3efcfd2d4852ad05737894045f6a5c56ba32e0474ed28`  
		Last Modified: Tue, 04 Aug 2026 02:08:26 GMT  
		Size: 8.5 MB (8511138 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:715ead16c67831c8d37094a47e10ebfc30e96606c85fa969e4f917edbb66f01e`  
		Last Modified: Tue, 04 Aug 2026 02:08:25 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:143986d051bee53cf065a64e25e75800d121875534b3ab616ff26f6b2d41b095`  
		Last Modified: Tue, 04 Aug 2026 02:08:25 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e1ee10d337646f667c6937265cf4ff42d20756d74573d9b37501b53c9ba8fc3`  
		Last Modified: Tue, 04 Aug 2026 02:08:29 GMT  
		Size: 74.8 MB (74803402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e7e5992979034b576f35c711fd9f1b5936716ee82d26a95b2b4e2e8b70a60b0`  
		Last Modified: Tue, 04 Aug 2026 02:08:27 GMT  
		Size: 4.0 KB (4034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6845801dd38dd9c984b4d20edc4b0f6d45450b57e8ee96893862f449c26f913a`  
		Last Modified: Tue, 04 Aug 2026 02:08:27 GMT  
		Size: 8.5 KB (8492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mariadb:noble` - unknown; unknown

```console
$ docker pull mariadb@sha256:ad27b84589a5d1f64e89fc29dd16237cf744a9682275c645e145911ee78faee7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4306724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2522258489642f97fedcef4a9e6760f73eb32867c0b6451920ba22ee1d728cf`

```dockerfile
```

-	Layers:
	-	`sha256:c68667f5dc07fae5a4cc7563442009e8058ab3d4d33b0709a5db8d05f456a2da`  
		Last Modified: Tue, 04 Aug 2026 02:08:26 GMT  
		Size: 4.3 MB (4274568 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9e805ef8aeae83573ca183b1c2f90856b7df1ca1bd6b38afaffa4924b2d38cb0`  
		Last Modified: Tue, 04 Aug 2026 02:08:25 GMT  
		Size: 32.2 KB (32156 bytes)  
		MIME: application/vnd.in-toto+json

### `mariadb:noble` - linux; s390x

```console
$ docker pull mariadb@sha256:06511b8272d34f8f0abcfd4a1662b583ea3c166e5c70d4f47d9e8a4e3fa3fd04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.6 MB (109555195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05ef5d4bea539479eb13f2388acc0fdab0686bea862fd3121a1de60c800c80e1`
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
# Tue, 18 Aug 2026 19:23:21 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql --home-dir /var/lib/mysql && userdel --remove ubuntu # buildkit
# Tue, 18 Aug 2026 19:23:31 GMT
ENV GOSU_VERSION=1.19
# Tue, 18 Aug 2026 19:23:31 GMT
ARG GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
# Tue, 18 Aug 2026 19:23:31 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
RUN set -eux; 	apt-get update; 	DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends 		ca-certificates 		gpg 		gpgv 		libjemalloc2 		libtcmalloc-minimal4t64 		pwgen 		tzdata 		xz-utils 		zstd ; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get install -y --no-install-recommends 		dirmngr 		gpg-agent 		wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -q -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -q -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	GNUPGHOME="$(mktemp -d)"; 	export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --export "$GPG_KEYS" > /etc/apt/trusted.gpg.d/mariadb.gpg; 	if command -v gpgconf >/dev/null; then 		gpgconf --kill all; 	fi; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] ||	apt-mark manual $savedAptMark >/dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 18 Aug 2026 19:23:31 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 18 Aug 2026 19:23:31 GMT
ENV LANG=C.UTF-8
# Tue, 18 Aug 2026 19:23:31 GMT
LABEL org.opencontainers.image.authors=MariaDB Community org.opencontainers.image.title=MariaDB Database org.opencontainers.image.description=MariaDB Database for relational SQL org.opencontainers.image.documentation=https://hub.docker.com/_/mariadb/ org.opencontainers.image.base.name=docker.io/library/ubuntu:noble org.opencontainers.image.licenses=GPL-2.0 org.opencontainers.image.source=https://github.com/MariaDB/mariadb-docker org.opencontainers.image.vendor=MariaDB Community org.opencontainers.image.version=12.3.2 org.opencontainers.image.url=https://github.com/MariaDB/mariadb-docker
# Tue, 18 Aug 2026 19:23:31 GMT
ARG MARIADB_VERSION=1:12.3.2+maria~ubu2404
# Tue, 18 Aug 2026 19:23:31 GMT
ENV MARIADB_VERSION=1:12.3.2+maria~ubu2404
# Tue, 18 Aug 2026 19:23:31 GMT
ARG REPOSITORY=http://archive.mariadb.org/mariadb-12.3.2/repo/ubuntu/ noble main main/debug
# Tue, 18 Aug 2026 19:23:31 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:12.3.2+maria~ubu2404 REPOSITORY=http://archive.mariadb.org/mariadb-12.3.2/repo/ubuntu/ noble main main/debug
RUN set -e;	echo "deb ${REPOSITORY}" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb # buildkit
# Tue, 18 Aug 2026 19:23:41 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:12.3.2+maria~ubu2404 REPOSITORY=http://archive.mariadb.org/mariadb-12.3.2/repo/ubuntu/ noble main main/debug
RUN set -ex; 	{ 		echo "mariadb-server" mysql-server/root_password password 'unused'; 		echo "mariadb-server" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	apt-get update; 	mkdir -p /var/lib/mysql/mysql ; touch /var/lib/mysql/mysql/user.frm ; 	apt-get install -y --no-install-recommends mariadb-server-galera="$MARIADB_VERSION" mariadb-backup socat 	; 	rm -rf /var/lib/apt/lists/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /run/mysqld; 	chmod 1777 /run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user\s)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user\s)/#&/'; 	printf "[mariadb]\nhost-cache-size=0\nskip-name-resolve\n" > /etc/mysql/mariadb.conf.d/05-skipcache.cnf; 	if [ -L /etc/mysql/my.cnf ]; then 		sed -i -e '/includedir/ {N;s/\(.*\)\n\(.*\)/\n\2\n\1/}' /etc/mysql/mariadb.cnf; 	fi # buildkit
# Tue, 18 Aug 2026 19:23:41 GMT
VOLUME [/var/lib/mysql]
# Tue, 18 Aug 2026 19:23:41 GMT
COPY healthcheck.sh /usr/local/bin/healthcheck.sh # buildkit
# Tue, 18 Aug 2026 19:23:41 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 18 Aug 2026 19:23:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Aug 2026 19:23:41 GMT
EXPOSE map[3306/tcp:{}]
# Tue, 18 Aug 2026 19:23:41 GMT
CMD ["mariadbd"]
```

-	Layers:
	-	`sha256:5d1d3f92cfa6f52fd8d52857915fa3c3464dbd12014bfc03e5e163fc72a4de1d`  
		Last Modified: Mon, 17 Aug 2026 14:27:57 GMT  
		Size: 29.9 MB (29935255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:478f1fb686d58eb493a79e794eccb70d99b022eefc397095bf7a122ff5b66322`  
		Last Modified: Tue, 18 Aug 2026 19:24:05 GMT  
		Size: 1.3 KB (1341 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6701d20ef3cbe6b6487146a8dbae83bd391b068d9e681d82150941fd0cf2e87`  
		Last Modified: Tue, 18 Aug 2026 19:24:05 GMT  
		Size: 5.4 MB (5402755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:780410873365542996b7ee92fc721d0e6807474f4aee01f1bf2bc09ecd4d596a`  
		Last Modified: Tue, 18 Aug 2026 19:24:05 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48bf6e166e2afb8799407da9ac6f4aeeab1727660d06fd5a6e128eb3691da551`  
		Last Modified: Tue, 18 Aug 2026 19:24:05 GMT  
		Size: 330.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:789114333d0570a013edb8ea44a0a51efbfa56b1128affb60ecbc5688b0e0292`  
		Last Modified: Tue, 18 Aug 2026 19:24:07 GMT  
		Size: 74.2 MB (74202870 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ac0ca493e1e8e9c764da9d4fdf61f987c6873e0b8570b3a627edf54a0e5fb56`  
		Last Modified: Tue, 18 Aug 2026 19:24:06 GMT  
		Size: 4.0 KB (4034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94b51d5fdcd3bf9b47bae78f0d4706dbd8ecc26ea96346d1d4ad58a9deb03ebe`  
		Last Modified: Tue, 18 Aug 2026 19:24:06 GMT  
		Size: 8.5 KB (8494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mariadb:noble` - unknown; unknown

```console
$ docker pull mariadb@sha256:c557b1317f217cfceaba0d8f582b2c00055a1e7fef33584328b60e394ad58c1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4300407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62aff3518c600ae1221d87d5e97e3fb90e8b05c2e5902c14abe05067e20abd6c`

```dockerfile
```

-	Layers:
	-	`sha256:8ed2de1eb0105c372c10ac4869fd088e3d8ab6a148b81ed0821e8a3739614328`  
		Last Modified: Tue, 18 Aug 2026 19:24:05 GMT  
		Size: 4.3 MB (4268340 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:20b7829eb8ca463fbee980719a02ce92c8506b47f494c950982ce3cd2ec42105`  
		Last Modified: Tue, 18 Aug 2026 19:24:05 GMT  
		Size: 32.1 KB (32067 bytes)  
		MIME: application/vnd.in-toto+json
