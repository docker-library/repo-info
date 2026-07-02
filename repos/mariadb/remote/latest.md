## `mariadb:latest`

```console
$ docker pull mariadb@sha256:628f228f0fd5913a220438693576b29b6fe4dc1fa0a1298c0e98579fae28635f
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
$ docker pull mariadb@sha256:4dedfbe3213f352f8924340a61b5cf4146be1e3e539eda4310efe50741a21b8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.7 MB (107691602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73d2c069f75f0c7900c6bf85a1f48dad9071e0c1644fe804fd1d585f16a9134f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mariadbd"]`

```dockerfile
# Mon, 22 Jun 2026 21:24:17 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:24:18 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:24:18 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:24:20 GMT
ADD file:8c609c85109d07bf47cf268a175b3be8bbe34fc0c41d15d99b090d099f4dc837 in / 
# Mon, 22 Jun 2026 21:24:21 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:30:03 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql --home-dir /var/lib/mysql && userdel --remove ubuntu # buildkit
# Thu, 02 Jul 2026 02:30:16 GMT
ENV GOSU_VERSION=1.19
# Thu, 02 Jul 2026 02:30:16 GMT
ARG GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
# Thu, 02 Jul 2026 02:30:16 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
RUN set -eux; 	apt-get update; 	DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends 		ca-certificates 		gpg 		gpgv 		libjemalloc2 		libtcmalloc-minimal4t64 		pwgen 		tzdata 		xz-utils 		zstd ; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get install -y --no-install-recommends 		dirmngr 		gpg-agent 		wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -q -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -q -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	GNUPGHOME="$(mktemp -d)"; 	export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --export "$GPG_KEYS" > /etc/apt/trusted.gpg.d/mariadb.gpg; 	if command -v gpgconf >/dev/null; then 		gpgconf --kill all; 	fi; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] ||	apt-mark manual $savedAptMark >/dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 02 Jul 2026 02:30:16 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 02 Jul 2026 02:30:16 GMT
ENV LANG=C.UTF-8
# Thu, 02 Jul 2026 02:30:16 GMT
LABEL org.opencontainers.image.authors=MariaDB Community org.opencontainers.image.title=MariaDB Database org.opencontainers.image.description=MariaDB Database for relational SQL org.opencontainers.image.documentation=https://hub.docker.com/_/mariadb/ org.opencontainers.image.base.name=docker.io/library/ubuntu:noble org.opencontainers.image.licenses=GPL-2.0 org.opencontainers.image.source=https://github.com/MariaDB/mariadb-docker org.opencontainers.image.vendor=MariaDB Community org.opencontainers.image.version=12.3.2 org.opencontainers.image.url=https://github.com/MariaDB/mariadb-docker
# Thu, 02 Jul 2026 02:30:16 GMT
ARG MARIADB_VERSION=1:12.3.2+maria~ubu2404
# Thu, 02 Jul 2026 02:30:16 GMT
ENV MARIADB_VERSION=1:12.3.2+maria~ubu2404
# Thu, 02 Jul 2026 02:30:16 GMT
ARG REPOSITORY=http://archive.mariadb.org/mariadb-12.3.2/repo/ubuntu/ noble main main/debug
# Thu, 02 Jul 2026 02:30:16 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:12.3.2+maria~ubu2404 REPOSITORY=http://archive.mariadb.org/mariadb-12.3.2/repo/ubuntu/ noble main main/debug
RUN set -e;	echo "deb ${REPOSITORY}" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb # buildkit
# Thu, 02 Jul 2026 02:30:33 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:12.3.2+maria~ubu2404 REPOSITORY=http://archive.mariadb.org/mariadb-12.3.2/repo/ubuntu/ noble main main/debug
RUN set -ex; 	{ 		echo "mariadb-server" mysql-server/root_password password 'unused'; 		echo "mariadb-server" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	apt-get update; 	mkdir -p /var/lib/mysql/mysql ; touch /var/lib/mysql/mysql/user.frm ; 	apt-get install -y --no-install-recommends mariadb-server-galera="$MARIADB_VERSION" mariadb-backup socat 	; 	rm -rf /var/lib/apt/lists/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /run/mysqld; 	chmod 1777 /run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user\s)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user\s)/#&/'; 	printf "[mariadb]\nhost-cache-size=0\nskip-name-resolve\n" > /etc/mysql/mariadb.conf.d/05-skipcache.cnf; 	if [ -L /etc/mysql/my.cnf ]; then 		sed -i -e '/includedir/ {N;s/\(.*\)\n\(.*\)/\n\2\n\1/}' /etc/mysql/mariadb.cnf; 	fi # buildkit
# Thu, 02 Jul 2026 02:30:33 GMT
VOLUME [/var/lib/mysql]
# Thu, 02 Jul 2026 02:30:33 GMT
COPY healthcheck.sh /usr/local/bin/healthcheck.sh # buildkit
# Thu, 02 Jul 2026 02:30:33 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 02:30:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Jul 2026 02:30:33 GMT
EXPOSE map[3306/tcp:{}]
# Thu, 02 Jul 2026 02:30:33 GMT
CMD ["mariadbd"]
```

-	Layers:
	-	`sha256:ca2678b20700c15185707964d9211b1a6406196114bf675f568b6025d37b3888`  
		Last Modified: Tue, 23 Jun 2026 01:34:01 GMT  
		Size: 29.7 MB (29735601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d18d73b371db3fd88356e3cc95b063990c9f6dc6143e69d281f855d32ddd8c51`  
		Last Modified: Thu, 02 Jul 2026 02:30:49 GMT  
		Size: 1.3 KB (1343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0509ab96435eeee66e4bd9371735421868c1a58a14fb1b6bc2f65bbd52ff0881`  
		Last Modified: Thu, 02 Jul 2026 02:30:50 GMT  
		Size: 5.2 MB (5245826 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d139c1d2a03b188f59324a7e131614442d5c1f6749ddaa2931360b2e5fbb4ad`  
		Last Modified: Thu, 02 Jul 2026 02:30:49 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8917dad17dd6603cd424e1d2778dae80488f557b58daedc1ab2fb5e2a83b0eb`  
		Last Modified: Thu, 02 Jul 2026 02:30:49 GMT  
		Size: 329.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8968c4a6b703b8813ce3e1dfa4702912292622231de6481a051d29b4eeaebf99`  
		Last Modified: Thu, 02 Jul 2026 02:30:53 GMT  
		Size: 72.7 MB (72695861 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93f279b7c1809bfb9929278bc6238c19c053ce96947178aada48dee3406a91b8`  
		Last Modified: Thu, 02 Jul 2026 02:30:50 GMT  
		Size: 4.0 KB (4033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f0e385cdc59937f66b95af811a9f7b924d28e4412e596f316ea5639c6cfec14`  
		Last Modified: Thu, 02 Jul 2026 02:30:51 GMT  
		Size: 8.5 KB (8493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mariadb:latest` - unknown; unknown

```console
$ docker pull mariadb@sha256:ef23fe9d7d1aa4e124c3f16d1e512eef9db0a77964f5a5d15b7fb0f78de6187c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4298646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7cd040dc18b2b17a129c73a6d36308b1771de054bc65418a462845188eea208b`

```dockerfile
```

-	Layers:
	-	`sha256:bdb7a1efe6419825243f4b4404e270eb7bba591e1b9783825c985e91bd2d7758`  
		Last Modified: Thu, 02 Jul 2026 02:30:50 GMT  
		Size: 4.3 MB (4266579 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1c21b5ac4ab19fa9cd4b1e70af1082111421fda05cc49d1a78c0404eeeb8a0e7`  
		Last Modified: Thu, 02 Jul 2026 02:30:49 GMT  
		Size: 32.1 KB (32067 bytes)  
		MIME: application/vnd.in-toto+json

### `mariadb:latest` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:1e3658574c1029fbd947704d25e4bf49444b170660af3e1d19fd62a77fecb660
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.4 MB (105436526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ef51dc40daa6dace706ae42bd05a427f940a863c04ed0476e0a9a19c30f0f9a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mariadbd"]`

```dockerfile
# Mon, 22 Jun 2026 21:25:05 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:25:05 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:25:05 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:25:07 GMT
ADD file:cdc9a547b921f36a32310f732815bbee6c6e4f5bd768ab5d49cdc0aa1b9f4785 in / 
# Mon, 22 Jun 2026 21:25:07 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:29:07 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql --home-dir /var/lib/mysql && userdel --remove ubuntu # buildkit
# Thu, 02 Jul 2026 02:29:20 GMT
ENV GOSU_VERSION=1.19
# Thu, 02 Jul 2026 02:29:20 GMT
ARG GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
# Thu, 02 Jul 2026 02:29:20 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
RUN set -eux; 	apt-get update; 	DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends 		ca-certificates 		gpg 		gpgv 		libjemalloc2 		libtcmalloc-minimal4t64 		pwgen 		tzdata 		xz-utils 		zstd ; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get install -y --no-install-recommends 		dirmngr 		gpg-agent 		wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -q -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -q -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	GNUPGHOME="$(mktemp -d)"; 	export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --export "$GPG_KEYS" > /etc/apt/trusted.gpg.d/mariadb.gpg; 	if command -v gpgconf >/dev/null; then 		gpgconf --kill all; 	fi; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] ||	apt-mark manual $savedAptMark >/dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 02 Jul 2026 02:29:20 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 02 Jul 2026 02:29:20 GMT
ENV LANG=C.UTF-8
# Thu, 02 Jul 2026 02:29:20 GMT
LABEL org.opencontainers.image.authors=MariaDB Community org.opencontainers.image.title=MariaDB Database org.opencontainers.image.description=MariaDB Database for relational SQL org.opencontainers.image.documentation=https://hub.docker.com/_/mariadb/ org.opencontainers.image.base.name=docker.io/library/ubuntu:noble org.opencontainers.image.licenses=GPL-2.0 org.opencontainers.image.source=https://github.com/MariaDB/mariadb-docker org.opencontainers.image.vendor=MariaDB Community org.opencontainers.image.version=12.3.2 org.opencontainers.image.url=https://github.com/MariaDB/mariadb-docker
# Thu, 02 Jul 2026 02:29:20 GMT
ARG MARIADB_VERSION=1:12.3.2+maria~ubu2404
# Thu, 02 Jul 2026 02:29:20 GMT
ENV MARIADB_VERSION=1:12.3.2+maria~ubu2404
# Thu, 02 Jul 2026 02:29:20 GMT
ARG REPOSITORY=http://archive.mariadb.org/mariadb-12.3.2/repo/ubuntu/ noble main main/debug
# Thu, 02 Jul 2026 02:29:20 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:12.3.2+maria~ubu2404 REPOSITORY=http://archive.mariadb.org/mariadb-12.3.2/repo/ubuntu/ noble main main/debug
RUN set -e;	echo "deb ${REPOSITORY}" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb # buildkit
# Thu, 02 Jul 2026 02:29:35 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:12.3.2+maria~ubu2404 REPOSITORY=http://archive.mariadb.org/mariadb-12.3.2/repo/ubuntu/ noble main main/debug
RUN set -ex; 	{ 		echo "mariadb-server" mysql-server/root_password password 'unused'; 		echo "mariadb-server" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	apt-get update; 	mkdir -p /var/lib/mysql/mysql ; touch /var/lib/mysql/mysql/user.frm ; 	apt-get install -y --no-install-recommends mariadb-server-galera="$MARIADB_VERSION" mariadb-backup socat 	; 	rm -rf /var/lib/apt/lists/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /run/mysqld; 	chmod 1777 /run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user\s)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user\s)/#&/'; 	printf "[mariadb]\nhost-cache-size=0\nskip-name-resolve\n" > /etc/mysql/mariadb.conf.d/05-skipcache.cnf; 	if [ -L /etc/mysql/my.cnf ]; then 		sed -i -e '/includedir/ {N;s/\(.*\)\n\(.*\)/\n\2\n\1/}' /etc/mysql/mariadb.cnf; 	fi # buildkit
# Thu, 02 Jul 2026 02:29:35 GMT
VOLUME [/var/lib/mysql]
# Thu, 02 Jul 2026 02:29:35 GMT
COPY healthcheck.sh /usr/local/bin/healthcheck.sh # buildkit
# Thu, 02 Jul 2026 02:29:35 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 02:29:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Jul 2026 02:29:35 GMT
EXPOSE map[3306/tcp:{}]
# Thu, 02 Jul 2026 02:29:35 GMT
CMD ["mariadbd"]
```

-	Layers:
	-	`sha256:4b987da45db4d6278590ab89840c7167ea397df222f3ee4cdb77c3e15694b1a9`  
		Last Modified: Tue, 23 Jun 2026 01:34:08 GMT  
		Size: 28.9 MB (28884180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb7c95d681f4bb461f7b2206f962a8c93ceb2001242fdf7b006fdbf85052d1e0`  
		Last Modified: Thu, 02 Jul 2026 02:29:50 GMT  
		Size: 1.3 KB (1343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:743a3a1140cb6cdaab173c93a9ff6777ee2ecf5b1a105618fca93a876d3616d7`  
		Last Modified: Thu, 02 Jul 2026 02:29:51 GMT  
		Size: 5.1 MB (5055921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2ec9063e70146303d1e2ca29fdebacf85cdc4064634ac5e785bc49cd3fcef49`  
		Last Modified: Thu, 02 Jul 2026 02:29:51 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7da2e5a407c72b3d41229bb2f428fac472d877ffe660296b7b98ab5360e1f835`  
		Last Modified: Thu, 02 Jul 2026 02:29:50 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90b6fe8c6ae5c23116b6fb4695962b654fcf1b0cd9270ac562273307cc7d9ee9`  
		Last Modified: Thu, 02 Jul 2026 02:29:54 GMT  
		Size: 71.5 MB (71482104 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2a8afa5fcd95a655c357a3ac0ffe1d57f9113ae6562cd2ea65015a86e0a76e5`  
		Last Modified: Thu, 02 Jul 2026 02:29:52 GMT  
		Size: 4.0 KB (4036 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:798ad736f3a1f4b1a7682cd81a108dcdbc2a1ad033c8b57c711bd8f8de84ad23`  
		Last Modified: Thu, 02 Jul 2026 02:29:52 GMT  
		Size: 8.5 KB (8495 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mariadb:latest` - unknown; unknown

```console
$ docker pull mariadb@sha256:520af337badf6553e767e0b20b83cbd301c37840bb4eef63dc6cf8d56b3aafbe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4306184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12ce64fb7d87d51de26bd4a3997cf37abe666d0ba547507650ca800c3b993c96`

```dockerfile
```

-	Layers:
	-	`sha256:cef9fea16d4f4822cf2fa1827960c219fee66e2dbd064ac01b33b8b5979b63b9`  
		Last Modified: Thu, 02 Jul 2026 02:29:51 GMT  
		Size: 4.3 MB (4273880 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a8e41edb9755cf899f70dd53a94b2249fa944d294559aab08f9f6dbe569be270`  
		Last Modified: Thu, 02 Jul 2026 02:29:50 GMT  
		Size: 32.3 KB (32304 bytes)  
		MIME: application/vnd.in-toto+json

### `mariadb:latest` - linux; ppc64le

```console
$ docker pull mariadb@sha256:085be068c669830a51467196fc62a9de2955cff53db327dc616ee79497972bab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.6 MB (117592594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:912d0031019c213a31e89839f95f490e90be4abd1b0aefaefea1a62702dcdc65`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mariadbd"]`

```dockerfile
# Mon, 22 Jun 2026 21:24:57 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:24:57 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:24:57 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:25:00 GMT
ADD file:80a608ac5245946ff88c571e9d9b1259a58a3a309e569fbe7ed52f07c2ed3b39 in / 
# Mon, 22 Jun 2026 21:25:01 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:52:32 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql --home-dir /var/lib/mysql && userdel --remove ubuntu # buildkit
# Thu, 02 Jul 2026 02:53:01 GMT
ENV GOSU_VERSION=1.19
# Thu, 02 Jul 2026 02:53:01 GMT
ARG GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
# Thu, 02 Jul 2026 02:53:01 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
RUN set -eux; 	apt-get update; 	DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends 		ca-certificates 		gpg 		gpgv 		libjemalloc2 		libtcmalloc-minimal4t64 		pwgen 		tzdata 		xz-utils 		zstd ; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get install -y --no-install-recommends 		dirmngr 		gpg-agent 		wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -q -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -q -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	GNUPGHOME="$(mktemp -d)"; 	export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --export "$GPG_KEYS" > /etc/apt/trusted.gpg.d/mariadb.gpg; 	if command -v gpgconf >/dev/null; then 		gpgconf --kill all; 	fi; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] ||	apt-mark manual $savedAptMark >/dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 02 Jul 2026 02:53:01 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 02 Jul 2026 02:53:01 GMT
ENV LANG=C.UTF-8
# Thu, 02 Jul 2026 02:53:01 GMT
LABEL org.opencontainers.image.authors=MariaDB Community org.opencontainers.image.title=MariaDB Database org.opencontainers.image.description=MariaDB Database for relational SQL org.opencontainers.image.documentation=https://hub.docker.com/_/mariadb/ org.opencontainers.image.base.name=docker.io/library/ubuntu:noble org.opencontainers.image.licenses=GPL-2.0 org.opencontainers.image.source=https://github.com/MariaDB/mariadb-docker org.opencontainers.image.vendor=MariaDB Community org.opencontainers.image.version=12.3.2 org.opencontainers.image.url=https://github.com/MariaDB/mariadb-docker
# Thu, 02 Jul 2026 02:53:01 GMT
ARG MARIADB_VERSION=1:12.3.2+maria~ubu2404
# Thu, 02 Jul 2026 02:53:01 GMT
ENV MARIADB_VERSION=1:12.3.2+maria~ubu2404
# Thu, 02 Jul 2026 02:53:01 GMT
ARG REPOSITORY=http://archive.mariadb.org/mariadb-12.3.2/repo/ubuntu/ noble main main/debug
# Thu, 02 Jul 2026 02:53:02 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:12.3.2+maria~ubu2404 REPOSITORY=http://archive.mariadb.org/mariadb-12.3.2/repo/ubuntu/ noble main main/debug
RUN set -e;	echo "deb ${REPOSITORY}" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb # buildkit
# Thu, 02 Jul 2026 02:53:52 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:12.3.2+maria~ubu2404 REPOSITORY=http://archive.mariadb.org/mariadb-12.3.2/repo/ubuntu/ noble main main/debug
RUN set -ex; 	{ 		echo "mariadb-server" mysql-server/root_password password 'unused'; 		echo "mariadb-server" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	apt-get update; 	mkdir -p /var/lib/mysql/mysql ; touch /var/lib/mysql/mysql/user.frm ; 	apt-get install -y --no-install-recommends mariadb-server-galera="$MARIADB_VERSION" mariadb-backup socat 	; 	rm -rf /var/lib/apt/lists/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /run/mysqld; 	chmod 1777 /run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user\s)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user\s)/#&/'; 	printf "[mariadb]\nhost-cache-size=0\nskip-name-resolve\n" > /etc/mysql/mariadb.conf.d/05-skipcache.cnf; 	if [ -L /etc/mysql/my.cnf ]; then 		sed -i -e '/includedir/ {N;s/\(.*\)\n\(.*\)/\n\2\n\1/}' /etc/mysql/mariadb.cnf; 	fi # buildkit
# Thu, 02 Jul 2026 02:53:52 GMT
VOLUME [/var/lib/mysql]
# Thu, 02 Jul 2026 02:53:52 GMT
COPY healthcheck.sh /usr/local/bin/healthcheck.sh # buildkit
# Thu, 02 Jul 2026 02:53:53 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 02:53:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Jul 2026 02:53:53 GMT
EXPOSE map[3306/tcp:{}]
# Thu, 02 Jul 2026 02:53:53 GMT
CMD ["mariadbd"]
```

-	Layers:
	-	`sha256:54973426d6a3ff47babf11aed16ea13dd9377608c1d09a81758f109a18049199`  
		Last Modified: Tue, 23 Jun 2026 01:34:28 GMT  
		Size: 34.3 MB (34313476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3386d1773798d3f96a4bbfc2d0bd71b79ea263b8b64d7f7cd687a695e8f7bd8`  
		Last Modified: Thu, 02 Jul 2026 02:54:25 GMT  
		Size: 1.4 KB (1350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0e6841682a4a1f81f9dff0dac4f65c134059b5aa6120da1cfb16d19752788d8`  
		Last Modified: Thu, 02 Jul 2026 02:54:25 GMT  
		Size: 5.9 MB (5882611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88b67facc8ea3a5ab57cc51b5dfe9f6422e16e33111a9062866a2e6904331a5d`  
		Last Modified: Thu, 02 Jul 2026 02:54:25 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d37f9444bed14bf6704b596d99298299c317e76d84447205412c980cf930cbd4`  
		Last Modified: Thu, 02 Jul 2026 02:54:25 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fc0f00ee1cbaa432291365af94bef038a8bc7e66966ecabcc1f43066161ee50`  
		Last Modified: Thu, 02 Jul 2026 02:54:29 GMT  
		Size: 77.4 MB (77382182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0048d8d3dcbe7ab1df98e3137b4c24eb8ee3d162530c60d5bf419a1648fdae3d`  
		Last Modified: Thu, 02 Jul 2026 02:54:26 GMT  
		Size: 4.0 KB (4035 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5b9e7d001de4aa44bc3defb22ef3560fff452fcce5ad87dabe085166aea3677`  
		Last Modified: Thu, 02 Jul 2026 02:54:26 GMT  
		Size: 8.5 KB (8492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mariadb:latest` - unknown; unknown

```console
$ docker pull mariadb@sha256:e43c31fadef1fcb07321a9ed1cda43d95a80052a96a8086b00b85ab716ff80dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4306682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3ca4284d4fec5213c8db6cd33586170bba995fa12c712e98856327d1633c09b`

```dockerfile
```

-	Layers:
	-	`sha256:9c549a509bd6c87249436ac2b3f03d3c399992994ae2b1d63f24910554ee4dde`  
		Last Modified: Thu, 02 Jul 2026 02:54:25 GMT  
		Size: 4.3 MB (4274526 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e581e05f1ebe01e868ea5cde5caf025027485b7a381acc684eff32c2cff60bab`  
		Last Modified: Thu, 02 Jul 2026 02:54:25 GMT  
		Size: 32.2 KB (32156 bytes)  
		MIME: application/vnd.in-toto+json

### `mariadb:latest` - linux; s390x

```console
$ docker pull mariadb@sha256:78cd058194362d6e8853122075faafde446311bcd751064dbb0bb4a6aa945509
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.2 MB (112188930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b49eb33dcbcb81b82ff5a8f03118240f6bd6a7127b7006af1f9f3223bd14f42a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mariadbd"]`

```dockerfile
# Mon, 22 Jun 2026 21:24:04 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:24:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:24:04 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:24:05 GMT
ADD file:2e6c463b4adb9218af4efdc52eb0c653c0b81b2e15486825eeeee9fbbf21b4c7 in / 
# Mon, 22 Jun 2026 21:24:05 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:25:15 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql --home-dir /var/lib/mysql && userdel --remove ubuntu # buildkit
# Thu, 02 Jul 2026 02:25:27 GMT
ENV GOSU_VERSION=1.19
# Thu, 02 Jul 2026 02:25:27 GMT
ARG GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
# Thu, 02 Jul 2026 02:25:27 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
RUN set -eux; 	apt-get update; 	DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends 		ca-certificates 		gpg 		gpgv 		libjemalloc2 		libtcmalloc-minimal4t64 		pwgen 		tzdata 		xz-utils 		zstd ; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get install -y --no-install-recommends 		dirmngr 		gpg-agent 		wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -q -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -q -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	GNUPGHOME="$(mktemp -d)"; 	export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --export "$GPG_KEYS" > /etc/apt/trusted.gpg.d/mariadb.gpg; 	if command -v gpgconf >/dev/null; then 		gpgconf --kill all; 	fi; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] ||	apt-mark manual $savedAptMark >/dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 02 Jul 2026 02:25:27 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 02 Jul 2026 02:25:27 GMT
ENV LANG=C.UTF-8
# Thu, 02 Jul 2026 02:25:27 GMT
LABEL org.opencontainers.image.authors=MariaDB Community org.opencontainers.image.title=MariaDB Database org.opencontainers.image.description=MariaDB Database for relational SQL org.opencontainers.image.documentation=https://hub.docker.com/_/mariadb/ org.opencontainers.image.base.name=docker.io/library/ubuntu:noble org.opencontainers.image.licenses=GPL-2.0 org.opencontainers.image.source=https://github.com/MariaDB/mariadb-docker org.opencontainers.image.vendor=MariaDB Community org.opencontainers.image.version=12.3.2 org.opencontainers.image.url=https://github.com/MariaDB/mariadb-docker
# Thu, 02 Jul 2026 02:25:27 GMT
ARG MARIADB_VERSION=1:12.3.2+maria~ubu2404
# Thu, 02 Jul 2026 02:25:27 GMT
ENV MARIADB_VERSION=1:12.3.2+maria~ubu2404
# Thu, 02 Jul 2026 02:25:27 GMT
ARG REPOSITORY=http://archive.mariadb.org/mariadb-12.3.2/repo/ubuntu/ noble main main/debug
# Thu, 02 Jul 2026 02:25:27 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:12.3.2+maria~ubu2404 REPOSITORY=http://archive.mariadb.org/mariadb-12.3.2/repo/ubuntu/ noble main main/debug
RUN set -e;	echo "deb ${REPOSITORY}" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb # buildkit
# Thu, 02 Jul 2026 02:25:38 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:12.3.2+maria~ubu2404 REPOSITORY=http://archive.mariadb.org/mariadb-12.3.2/repo/ubuntu/ noble main main/debug
RUN set -ex; 	{ 		echo "mariadb-server" mysql-server/root_password password 'unused'; 		echo "mariadb-server" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	apt-get update; 	mkdir -p /var/lib/mysql/mysql ; touch /var/lib/mysql/mysql/user.frm ; 	apt-get install -y --no-install-recommends mariadb-server-galera="$MARIADB_VERSION" mariadb-backup socat 	; 	rm -rf /var/lib/apt/lists/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /run/mysqld; 	chmod 1777 /run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user\s)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user\s)/#&/'; 	printf "[mariadb]\nhost-cache-size=0\nskip-name-resolve\n" > /etc/mysql/mariadb.conf.d/05-skipcache.cnf; 	if [ -L /etc/mysql/my.cnf ]; then 		sed -i -e '/includedir/ {N;s/\(.*\)\n\(.*\)/\n\2\n\1/}' /etc/mysql/mariadb.cnf; 	fi # buildkit
# Thu, 02 Jul 2026 02:25:38 GMT
VOLUME [/var/lib/mysql]
# Thu, 02 Jul 2026 02:25:38 GMT
COPY healthcheck.sh /usr/local/bin/healthcheck.sh # buildkit
# Thu, 02 Jul 2026 02:25:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 02:25:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Jul 2026 02:25:38 GMT
EXPOSE map[3306/tcp:{}]
# Thu, 02 Jul 2026 02:25:38 GMT
CMD ["mariadbd"]
```

-	Layers:
	-	`sha256:017bf1549f7106f258688738600d68c2eebf2c29476ebfe929e2762f93f82609`  
		Last Modified: Tue, 23 Jun 2026 01:35:07 GMT  
		Size: 29.9 MB (29941314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8864a31fc48b2bd3345038bb122b17b27f356556c26a1dcb6f66b5ce39a1e5e1`  
		Last Modified: Thu, 02 Jul 2026 02:26:03 GMT  
		Size: 1.3 KB (1341 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7335f1ec3bee406a7c65715b11e3b262f80882cbd57d368c1b32cb5318f767b0`  
		Last Modified: Thu, 02 Jul 2026 02:26:03 GMT  
		Size: 5.4 MB (5403089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71ad0e54916377dccedf46c2c3c73baedcf86279f237b9f200aaac317c7b7212`  
		Last Modified: Thu, 02 Jul 2026 02:26:02 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdf320c4489c0a0b825e1996d8a1618db98e1648f682b2cbd4638b7ee44cd032`  
		Last Modified: Thu, 02 Jul 2026 02:26:03 GMT  
		Size: 330.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63141d617f2a0620b5824a1638fbc2b6833f5ac46fd93b87971ce20f147b5ec5`  
		Last Modified: Thu, 02 Jul 2026 02:26:05 GMT  
		Size: 76.8 MB (76830214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f559fa095c9590f9a8089f3485f2912f50be9e4480cb6aa66cb82f194b5a8d5b`  
		Last Modified: Thu, 02 Jul 2026 02:26:04 GMT  
		Size: 4.0 KB (4034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c79f0d8d8fd485d7b06e3e6988be7ee05afa9875afd6cffee4fba42c3e7c8e1`  
		Last Modified: Thu, 02 Jul 2026 02:26:04 GMT  
		Size: 8.5 KB (8492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mariadb:latest` - unknown; unknown

```console
$ docker pull mariadb@sha256:03e4e6bcf6b90c76e7a042422b443eb813f130128fa73876b9e71611f2cfba30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4300366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6aa3edadcf7245b675fb9b3b9741763fd8db780c93758f03d8ff827d02541157`

```dockerfile
```

-	Layers:
	-	`sha256:7b02a7c71a0b0016361e61205216b63c3111bb90f1a55c8b0dc2d30b8bfbfe6a`  
		Last Modified: Thu, 02 Jul 2026 02:26:02 GMT  
		Size: 4.3 MB (4268298 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f720d3211150bb93b778d3836b63b1066b273fd8b69917d6cf80fcdf725f5a83`  
		Last Modified: Thu, 02 Jul 2026 02:26:02 GMT  
		Size: 32.1 KB (32068 bytes)  
		MIME: application/vnd.in-toto+json
