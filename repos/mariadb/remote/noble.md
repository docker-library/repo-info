## `mariadb:noble`

```console
$ docker pull mariadb@sha256:a02fe89cb597d4375812b2eac90cf9d0775d4686daa7f7cc750ebbcad7525bbc
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
$ docker pull mariadb@sha256:8382dfcc3ae600edd95815c6b0ac4b202f12e7c7b0dc21dd7c5c2476740a5cd8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 MB (115011520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08b9ef5c4ddd48a7c273eb0f40038f17b9ebd65ff093ac625b67983cef1183d9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mariadbd"]`

```dockerfile
# Mon, 17 Aug 2026 13:37:16 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:37:16 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:37:16 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:37:19 GMT
ADD file:2c1f3ca3b8968d5c5bcce4fb1290d9ca7224bbde9578f0051bf2d5493b3b6481 in / 
# Mon, 17 Aug 2026 13:37:20 GMT
CMD ["/bin/bash"]
# Wed, 19 Aug 2026 22:11:36 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql --home-dir /var/lib/mysql && userdel --remove ubuntu # buildkit
# Wed, 19 Aug 2026 22:12:02 GMT
ENV GOSU_VERSION=1.19
# Wed, 19 Aug 2026 22:12:02 GMT
ARG GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
# Wed, 19 Aug 2026 22:12:02 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
RUN set -eux; 	apt-get update; 	DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends 		ca-certificates 		gpg 		gpgv 		libjemalloc2 		libtcmalloc-minimal4t64 		pwgen 		tzdata 		xz-utils 		zstd ; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get install -y --no-install-recommends 		dirmngr 		gpg-agent 		wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -q -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -q -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	GNUPGHOME="$(mktemp -d)"; 	export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --export "$GPG_KEYS" > /etc/apt/trusted.gpg.d/mariadb.gpg; 	if command -v gpgconf >/dev/null; then 		gpgconf --kill all; 	fi; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] ||	apt-mark manual $savedAptMark >/dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 19 Aug 2026 22:12:03 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 19 Aug 2026 22:12:03 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 22:12:03 GMT
LABEL org.opencontainers.image.authors=MariaDB Community org.opencontainers.image.title=MariaDB Database org.opencontainers.image.description=MariaDB Database for relational SQL org.opencontainers.image.documentation=https://hub.docker.com/_/mariadb/ org.opencontainers.image.base.name=docker.io/library/ubuntu:noble org.opencontainers.image.licenses=GPL-2.0 org.opencontainers.image.source=https://github.com/MariaDB/mariadb-docker org.opencontainers.image.vendor=MariaDB Community org.opencontainers.image.version=12.3.2 org.opencontainers.image.url=https://github.com/MariaDB/mariadb-docker
# Wed, 19 Aug 2026 22:12:03 GMT
ARG MARIADB_VERSION=1:12.3.2+maria~ubu2404
# Wed, 19 Aug 2026 22:12:03 GMT
ENV MARIADB_VERSION=1:12.3.2+maria~ubu2404
# Wed, 19 Aug 2026 22:12:03 GMT
ARG REPOSITORY=http://archive.mariadb.org/mariadb-12.3.2/repo/ubuntu/ noble main main/debug
# Wed, 19 Aug 2026 22:12:03 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:12.3.2+maria~ubu2404 REPOSITORY=http://archive.mariadb.org/mariadb-12.3.2/repo/ubuntu/ noble main main/debug
RUN set -e;	echo "deb ${REPOSITORY}" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb # buildkit
# Wed, 19 Aug 2026 22:12:31 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:12.3.2+maria~ubu2404 REPOSITORY=http://archive.mariadb.org/mariadb-12.3.2/repo/ubuntu/ noble main main/debug
RUN set -ex; 	{ 		echo "mariadb-server" mysql-server/root_password password 'unused'; 		echo "mariadb-server" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	apt-get update; 	mkdir -p /var/lib/mysql/mysql ; touch /var/lib/mysql/mysql/user.frm ; 	apt-get install -y --no-install-recommends mariadb-server-galera="$MARIADB_VERSION" mariadb-backup socat 	; 	rm -rf /var/lib/apt/lists/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /run/mysqld; 	chmod 1777 /run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user\s)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user\s)/#&/'; 	printf "[mariadb]\nhost-cache-size=0\nskip-name-resolve\n" > /etc/mysql/mariadb.conf.d/05-skipcache.cnf; 	if [ -L /etc/mysql/my.cnf ]; then 		sed -i -e '/includedir/ {N;s/\(.*\)\n\(.*\)/\n\2\n\1/}' /etc/mysql/mariadb.cnf; 	fi # buildkit
# Wed, 19 Aug 2026 22:12:31 GMT
VOLUME [/var/lib/mysql]
# Wed, 19 Aug 2026 22:12:32 GMT
COPY healthcheck.sh /usr/local/bin/healthcheck.sh # buildkit
# Wed, 19 Aug 2026 22:12:32 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 19 Aug 2026 22:12:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 19 Aug 2026 22:12:32 GMT
EXPOSE map[3306/tcp:{}]
# Wed, 19 Aug 2026 22:12:32 GMT
CMD ["mariadbd"]
```

-	Layers:
	-	`sha256:9ce277f493517cc144a5fc2f41269e529e99b662f089df362b22f62d1fbb7436`  
		Last Modified: Mon, 17 Aug 2026 14:27:41 GMT  
		Size: 34.3 MB (34311195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0160dbb4d7e8d13049b3227e85d49e564f4b66d4802ed3d0f37d12659429f14a`  
		Last Modified: Wed, 19 Aug 2026 22:13:02 GMT  
		Size: 1.3 KB (1339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdfed1a2228d04286dd5998a64bf035cc22fdf74766fffa907357cd72ebca555`  
		Last Modified: Wed, 19 Aug 2026 22:13:02 GMT  
		Size: 5.9 MB (5882233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:134d42eabc36e4e70bb700424c307eeeebedc84af05d3a087fb1e8c6c70881ef`  
		Last Modified: Wed, 19 Aug 2026 22:13:02 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:817ca25dc226405058fd86e45a02586be8f2f87ee05b81dceaaf006ab2cd3b3c`  
		Last Modified: Wed, 19 Aug 2026 22:13:02 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcffb22c1985f84ca30da0b28a41cd01dbd0cda1497f0a651b3eeb07f5b98f82`  
		Last Modified: Wed, 19 Aug 2026 22:13:05 GMT  
		Size: 74.8 MB (74803785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44fe42482a19fe09a1840f4dc8181eaa2cb319254d28a79e2b175883487338a4`  
		Last Modified: Wed, 19 Aug 2026 22:13:03 GMT  
		Size: 4.0 KB (4031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f15fe1ce084e06a8ef9d9dbee1e59e43f4b18581b20182087acb20df82ff39c6`  
		Last Modified: Wed, 19 Aug 2026 22:13:03 GMT  
		Size: 8.5 KB (8489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mariadb:noble` - unknown; unknown

```console
$ docker pull mariadb@sha256:f967ca98a4334185c93c93e9b5ba4de498b829c035174dd9cd4ee63fe6adb44e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4306724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2da7a04dfab4bad6beb85a14e0614b1eae6215f829565b382c93296cba1cd5fd`

```dockerfile
```

-	Layers:
	-	`sha256:20541c0f798a25dd879147da5e82c991996e7fb98692ce73d5b226f39f057765`  
		Last Modified: Wed, 19 Aug 2026 22:13:02 GMT  
		Size: 4.3 MB (4274568 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e92b5edbe42f5f3bec0300fc48ea0291d7580a675d3d56dacb075538100e20a8`  
		Last Modified: Wed, 19 Aug 2026 22:13:02 GMT  
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
