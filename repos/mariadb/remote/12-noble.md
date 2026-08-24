## `mariadb:12-noble`

```console
$ docker pull mariadb@sha256:dd9b303aed4f4890ed09f766d8ca9ddfd176c0c6f6267feff53b3192ec65a979
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
$ docker pull mariadb@sha256:ebfd70b7d9681eae911fa3f11b1e5b76b19e316ddd6cc9fc699f86dc881d0b30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.4 MB (105412226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9088b63a827c19d498883827e2939c0358320c888a7b0870aee152771ab259e3`
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
# Mon, 24 Aug 2026 18:04:23 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql --home-dir /var/lib/mysql && userdel --remove ubuntu # buildkit
# Mon, 24 Aug 2026 18:04:33 GMT
ENV GOSU_VERSION=1.19
# Mon, 24 Aug 2026 18:04:33 GMT
ARG GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
# Mon, 24 Aug 2026 18:04:33 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
RUN set -eux; 	apt-get update; 	DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends 		ca-certificates 		gpg 		gpgv 		libjemalloc2 		libtcmalloc-minimal4t64 		pwgen 		tzdata 		xz-utils 		zstd ; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get install -y --no-install-recommends 		dirmngr 		gpg-agent 		wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -q -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -q -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	GNUPGHOME="$(mktemp -d)"; 	export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --export "$GPG_KEYS" > /etc/apt/trusted.gpg.d/mariadb.gpg; 	if command -v gpgconf >/dev/null; then 		gpgconf --kill all; 	fi; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] ||	apt-mark manual $savedAptMark >/dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 24 Aug 2026 18:04:33 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 24 Aug 2026 18:04:33 GMT
ENV LANG=C.UTF-8
# Mon, 24 Aug 2026 18:04:33 GMT
LABEL org.opencontainers.image.authors=MariaDB Community org.opencontainers.image.title=MariaDB Database org.opencontainers.image.description=MariaDB Database for relational SQL org.opencontainers.image.documentation=https://hub.docker.com/_/mariadb/ org.opencontainers.image.base.name=docker.io/library/ubuntu:noble org.opencontainers.image.licenses=GPL-2.0 org.opencontainers.image.source=https://github.com/MariaDB/mariadb-docker org.opencontainers.image.vendor=MariaDB Community org.opencontainers.image.version=12.3.3 org.opencontainers.image.url=https://github.com/MariaDB/mariadb-docker
# Mon, 24 Aug 2026 18:04:33 GMT
ARG MARIADB_VERSION=1:12.3.3+maria~ubu2404
# Mon, 24 Aug 2026 18:04:33 GMT
ENV MARIADB_VERSION=1:12.3.3+maria~ubu2404
# Mon, 24 Aug 2026 18:04:33 GMT
ARG REPOSITORY=http://archive.mariadb.org/mariadb-12.3.3/repo/ubuntu/ noble main main/debug
# Mon, 24 Aug 2026 18:04:33 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:12.3.3+maria~ubu2404 REPOSITORY=http://archive.mariadb.org/mariadb-12.3.3/repo/ubuntu/ noble main main/debug
RUN set -e;	echo "deb ${REPOSITORY}" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb # buildkit
# Mon, 24 Aug 2026 18:04:46 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:12.3.3+maria~ubu2404 REPOSITORY=http://archive.mariadb.org/mariadb-12.3.3/repo/ubuntu/ noble main main/debug
RUN set -ex; 	{ 		echo "mariadb-server" mysql-server/root_password password 'unused'; 		echo "mariadb-server" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	apt-get update; 	mkdir -p /var/lib/mysql/mysql ; touch /var/lib/mysql/mysql/user.frm ; 	apt-get install -y --no-install-recommends mariadb-server-galera="$MARIADB_VERSION" mariadb-backup socat 	; 	rm -rf /var/lib/apt/lists/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /run/mysqld; 	chmod 1777 /run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user\s)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user\s)/#&/'; 	printf "[mariadb]\nhost-cache-size=0\nskip-name-resolve\n" > /etc/mysql/mariadb.conf.d/05-skipcache.cnf; 	if [ -L /etc/mysql/my.cnf ]; then 		sed -i -e '/includedir/ {N;s/\(.*\)\n\(.*\)/\n\2\n\1/}' /etc/mysql/mariadb.cnf; 	fi # buildkit
# Mon, 24 Aug 2026 18:04:46 GMT
VOLUME [/var/lib/mysql]
# Mon, 24 Aug 2026 18:04:46 GMT
COPY healthcheck.sh /usr/local/bin/healthcheck.sh # buildkit
# Mon, 24 Aug 2026 18:04:46 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 24 Aug 2026 18:04:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 24 Aug 2026 18:04:46 GMT
EXPOSE map[3306/tcp:{}]
# Mon, 24 Aug 2026 18:04:46 GMT
CMD ["mariadbd"]
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df6b1a21c290e95b252965d43dd9c24a99cb05e08bdc9c8d88a9189c97e196f3`  
		Last Modified: Mon, 24 Aug 2026 18:05:01 GMT  
		Size: 1.3 KB (1343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a9ef46f9d8b0bcebf7719309f71c99cc7436eabe1f482a4ed8b535ab16b2cf5`  
		Last Modified: Mon, 24 Aug 2026 18:05:01 GMT  
		Size: 5.2 MB (5245520 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16cb5824b040e8a44592544b67816e651f1110e21b5330724639f0f999afe5c0`  
		Last Modified: Mon, 24 Aug 2026 18:05:01 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1f9f9fa37a7d5d9fb5335aa7fefb67de3e12f2a928e41a9b63432e2c9da216a`  
		Last Modified: Mon, 24 Aug 2026 18:05:01 GMT  
		Size: 330.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6dd9d3b9c55f660fc18f1af3439d19dff78952f58480da9842c2c4f5d9e4710c`  
		Last Modified: Mon, 24 Aug 2026 18:05:04 GMT  
		Size: 70.4 MB (70399583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1683e20ab0c6bcfd2b980a5b2d1c251d63fd1cfb281a7f2214d428152fded795`  
		Last Modified: Mon, 24 Aug 2026 18:05:02 GMT  
		Size: 4.0 KB (4034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb4db3a413f5046c2bb0cabc4246edba554b0d30bbf7d1adf3513f72e8b6c6a3`  
		Last Modified: Mon, 24 Aug 2026 18:05:02 GMT  
		Size: 8.5 KB (8493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mariadb:12-noble` - unknown; unknown

```console
$ docker pull mariadb@sha256:2afbd293aa96b80349a3350ba938de0a84fa4f20d250399a5c43bfb289ee6412
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4298688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1a7b1463c312ce43f7934153a6c43aa401e5986277f3304c2e9081ce4046e04`

```dockerfile
```

-	Layers:
	-	`sha256:c2f6cf3c92aea089d2b52c9f489e9d9526c2d9191208358ed0e455e7f991b019`  
		Last Modified: Mon, 24 Aug 2026 18:05:01 GMT  
		Size: 4.3 MB (4266620 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6f6184bc93fbbb4f7acb81890b0ad76b400f9cefdb543f8f69b9fff9bb6c3948`  
		Last Modified: Mon, 24 Aug 2026 18:05:01 GMT  
		Size: 32.1 KB (32068 bytes)  
		MIME: application/vnd.in-toto+json

### `mariadb:12-noble` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:a74d5702a14e2912d5edf939c0e450068a9fecb294b624e113dcf1bb50bc3307
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.2 MB (103167125 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e35d4114eefa3ec17dcb7494f68dda2db7fe0404368d841aff793e7aae8c5a44`
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
# Mon, 24 Aug 2026 18:03:36 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql --home-dir /var/lib/mysql && userdel --remove ubuntu # buildkit
# Mon, 24 Aug 2026 18:03:48 GMT
ENV GOSU_VERSION=1.19
# Mon, 24 Aug 2026 18:03:48 GMT
ARG GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
# Mon, 24 Aug 2026 18:03:48 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
RUN set -eux; 	apt-get update; 	DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends 		ca-certificates 		gpg 		gpgv 		libjemalloc2 		libtcmalloc-minimal4t64 		pwgen 		tzdata 		xz-utils 		zstd ; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get install -y --no-install-recommends 		dirmngr 		gpg-agent 		wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -q -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -q -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	GNUPGHOME="$(mktemp -d)"; 	export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --export "$GPG_KEYS" > /etc/apt/trusted.gpg.d/mariadb.gpg; 	if command -v gpgconf >/dev/null; then 		gpgconf --kill all; 	fi; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] ||	apt-mark manual $savedAptMark >/dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 24 Aug 2026 18:03:48 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 24 Aug 2026 18:03:48 GMT
ENV LANG=C.UTF-8
# Mon, 24 Aug 2026 18:03:48 GMT
LABEL org.opencontainers.image.authors=MariaDB Community org.opencontainers.image.title=MariaDB Database org.opencontainers.image.description=MariaDB Database for relational SQL org.opencontainers.image.documentation=https://hub.docker.com/_/mariadb/ org.opencontainers.image.base.name=docker.io/library/ubuntu:noble org.opencontainers.image.licenses=GPL-2.0 org.opencontainers.image.source=https://github.com/MariaDB/mariadb-docker org.opencontainers.image.vendor=MariaDB Community org.opencontainers.image.version=12.3.3 org.opencontainers.image.url=https://github.com/MariaDB/mariadb-docker
# Mon, 24 Aug 2026 18:03:48 GMT
ARG MARIADB_VERSION=1:12.3.3+maria~ubu2404
# Mon, 24 Aug 2026 18:03:48 GMT
ENV MARIADB_VERSION=1:12.3.3+maria~ubu2404
# Mon, 24 Aug 2026 18:03:48 GMT
ARG REPOSITORY=http://archive.mariadb.org/mariadb-12.3.3/repo/ubuntu/ noble main main/debug
# Mon, 24 Aug 2026 18:03:48 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:12.3.3+maria~ubu2404 REPOSITORY=http://archive.mariadb.org/mariadb-12.3.3/repo/ubuntu/ noble main main/debug
RUN set -e;	echo "deb ${REPOSITORY}" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb # buildkit
# Mon, 24 Aug 2026 18:04:02 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:12.3.3+maria~ubu2404 REPOSITORY=http://archive.mariadb.org/mariadb-12.3.3/repo/ubuntu/ noble main main/debug
RUN set -ex; 	{ 		echo "mariadb-server" mysql-server/root_password password 'unused'; 		echo "mariadb-server" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	apt-get update; 	mkdir -p /var/lib/mysql/mysql ; touch /var/lib/mysql/mysql/user.frm ; 	apt-get install -y --no-install-recommends mariadb-server-galera="$MARIADB_VERSION" mariadb-backup socat 	; 	rm -rf /var/lib/apt/lists/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /run/mysqld; 	chmod 1777 /run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user\s)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user\s)/#&/'; 	printf "[mariadb]\nhost-cache-size=0\nskip-name-resolve\n" > /etc/mysql/mariadb.conf.d/05-skipcache.cnf; 	if [ -L /etc/mysql/my.cnf ]; then 		sed -i -e '/includedir/ {N;s/\(.*\)\n\(.*\)/\n\2\n\1/}' /etc/mysql/mariadb.cnf; 	fi # buildkit
# Mon, 24 Aug 2026 18:04:02 GMT
VOLUME [/var/lib/mysql]
# Mon, 24 Aug 2026 18:04:02 GMT
COPY healthcheck.sh /usr/local/bin/healthcheck.sh # buildkit
# Mon, 24 Aug 2026 18:04:02 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 24 Aug 2026 18:04:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 24 Aug 2026 18:04:02 GMT
EXPOSE map[3306/tcp:{}]
# Mon, 24 Aug 2026 18:04:02 GMT
CMD ["mariadbd"]
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d096ddfa70cf92435686711107766760fcb2163173e87874c5639fc06b146e8d`  
		Last Modified: Mon, 24 Aug 2026 18:04:17 GMT  
		Size: 1.3 KB (1343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c62fab59ddc00be28c6c9d024ad0adf73da205b564f225f907339e9f2ccda952`  
		Last Modified: Mon, 24 Aug 2026 18:04:17 GMT  
		Size: 5.1 MB (5055417 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b869aa85f33ec9d3b179151b74882284589e2efba42ffdcfb0ec5dfaf55048d`  
		Last Modified: Mon, 24 Aug 2026 18:04:17 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:962fb7ae4016d3ba682c5d3ece7ed5b324ab284e1032ebbeae9d26ab3af16e3b`  
		Last Modified: Mon, 24 Aug 2026 18:04:17 GMT  
		Size: 330.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cdd3b2479b84aa7f8da10c2a0f034e7fcb0fe4127cc0c05ead5e4207788a5c7`  
		Last Modified: Mon, 24 Aug 2026 18:04:20 GMT  
		Size: 69.2 MB (69210153 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28af85b9661d6b51c10ab233ff2d3d51012dc730ae2b4f43e01315bb4f598aae`  
		Last Modified: Mon, 24 Aug 2026 18:04:18 GMT  
		Size: 4.0 KB (4036 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d6d94277faa96d3dade0fbf6f4e4026e2134aa303eb43e71ec684405172c84c`  
		Last Modified: Mon, 24 Aug 2026 18:04:18 GMT  
		Size: 8.5 KB (8495 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mariadb:12-noble` - unknown; unknown

```console
$ docker pull mariadb@sha256:5e73ff0e42ac8076733ecac585f2e5375562ac510c0ed54fa19291a985a98c07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4306224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6cadce4eda375001baa2a9b4ebf03a8abeaf6032ff0897390f31733905ad61c`

```dockerfile
```

-	Layers:
	-	`sha256:fd33a1758cbe35cc35bd4f9646a6c3509458ca472b61fb180db49225a529d710`  
		Last Modified: Mon, 24 Aug 2026 18:04:17 GMT  
		Size: 4.3 MB (4273921 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7825e721685913614dc629e61c4a70b132fb3ff2f8291d6d2111da36140a74ac`  
		Last Modified: Mon, 24 Aug 2026 18:04:17 GMT  
		Size: 32.3 KB (32303 bytes)  
		MIME: application/vnd.in-toto+json

### `mariadb:12-noble` - linux; ppc64le

```console
$ docker pull mariadb@sha256:cc6ef155cd5326c7d7fe62649d77eb1f376f911b97bb3cb0faa2f9832039d49c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 MB (115131978 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4be7b99f2275e0194e7b6609103631ae0a729aa3662259070ec97b5aaa27366`
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
LABEL org.opencontainers.image.authors=MariaDB Community org.opencontainers.image.title=MariaDB Database org.opencontainers.image.description=MariaDB Database for relational SQL org.opencontainers.image.documentation=https://hub.docker.com/_/mariadb/ org.opencontainers.image.base.name=docker.io/library/ubuntu:noble org.opencontainers.image.licenses=GPL-2.0 org.opencontainers.image.source=https://github.com/MariaDB/mariadb-docker org.opencontainers.image.vendor=MariaDB Community org.opencontainers.image.version=12.3.3 org.opencontainers.image.url=https://github.com/MariaDB/mariadb-docker
# Wed, 19 Aug 2026 22:12:03 GMT
ARG MARIADB_VERSION=1:12.3.3+maria~ubu2404
# Wed, 19 Aug 2026 22:12:03 GMT
ENV MARIADB_VERSION=1:12.3.3+maria~ubu2404
# Wed, 19 Aug 2026 22:12:03 GMT
ARG REPOSITORY=http://archive.mariadb.org/mariadb-12.3.3/repo/ubuntu/ noble main main/debug
# Mon, 24 Aug 2026 18:04:22 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:12.3.3+maria~ubu2404 REPOSITORY=http://archive.mariadb.org/mariadb-12.3.3/repo/ubuntu/ noble main main/debug
RUN set -e;	echo "deb ${REPOSITORY}" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb # buildkit
# Mon, 24 Aug 2026 18:04:49 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:12.3.3+maria~ubu2404 REPOSITORY=http://archive.mariadb.org/mariadb-12.3.3/repo/ubuntu/ noble main main/debug
RUN set -ex; 	{ 		echo "mariadb-server" mysql-server/root_password password 'unused'; 		echo "mariadb-server" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	apt-get update; 	mkdir -p /var/lib/mysql/mysql ; touch /var/lib/mysql/mysql/user.frm ; 	apt-get install -y --no-install-recommends mariadb-server-galera="$MARIADB_VERSION" mariadb-backup socat 	; 	rm -rf /var/lib/apt/lists/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /run/mysqld; 	chmod 1777 /run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user\s)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user\s)/#&/'; 	printf "[mariadb]\nhost-cache-size=0\nskip-name-resolve\n" > /etc/mysql/mariadb.conf.d/05-skipcache.cnf; 	if [ -L /etc/mysql/my.cnf ]; then 		sed -i -e '/includedir/ {N;s/\(.*\)\n\(.*\)/\n\2\n\1/}' /etc/mysql/mariadb.cnf; 	fi # buildkit
# Mon, 24 Aug 2026 18:04:49 GMT
VOLUME [/var/lib/mysql]
# Mon, 24 Aug 2026 18:04:50 GMT
COPY healthcheck.sh /usr/local/bin/healthcheck.sh # buildkit
# Mon, 24 Aug 2026 18:04:50 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 24 Aug 2026 18:04:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 24 Aug 2026 18:04:50 GMT
EXPOSE map[3306/tcp:{}]
# Mon, 24 Aug 2026 18:04:50 GMT
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
	-	`sha256:0fa82971fe0f3db58c7ebb17d93ea50a5be2babb3d303a9c89af7257c5a493c0`  
		Last Modified: Mon, 24 Aug 2026 18:05:21 GMT  
		Size: 336.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1147db01553c5f764a4e8c5a1a2a2328c836a488977e96993d734a69089b8ef`  
		Last Modified: Mon, 24 Aug 2026 18:05:24 GMT  
		Size: 74.9 MB (74924241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85cf0d3513532d91e4b6bee9a22e0d1d68b2314e36540261074113dfcf47a152`  
		Last Modified: Mon, 24 Aug 2026 18:05:21 GMT  
		Size: 4.0 KB (4029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ee6feda6aa1e614f8ad0dee4ce3afddb63289c874f569a0aa2105e17f647645`  
		Last Modified: Mon, 24 Aug 2026 18:05:21 GMT  
		Size: 8.5 KB (8489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mariadb:12-noble` - unknown; unknown

```console
$ docker pull mariadb@sha256:b775234842dfa121561019f735724cc4baa82fd346bf8a59ab4e33b23d2a2b82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4306723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8af827907bd1d33ace00215e7996a651ad3302861b2a6251e80385866a0e17e`

```dockerfile
```

-	Layers:
	-	`sha256:d0d9c4f2c98c02b95ba3de3f08bd35873f133f2581ef3829e3c97f93ae43fc58`  
		Last Modified: Mon, 24 Aug 2026 18:05:21 GMT  
		Size: 4.3 MB (4274567 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9bbd2927a04dbc2bc7896107e68bb825d3a02513dbe08cfced03e90114836ef4`  
		Last Modified: Mon, 24 Aug 2026 18:05:21 GMT  
		Size: 32.2 KB (32156 bytes)  
		MIME: application/vnd.in-toto+json

### `mariadb:12-noble` - linux; s390x

```console
$ docker pull mariadb@sha256:f78967f7a3ccf7b28039f14869eb473f46aa756deaa6c74d28eb127b2d9a4a83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.7 MB (109695285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc7b5718428c5840afa15e4cd53021ce475b17d19c13bdeb758598b375f4c8c2`
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
# Mon, 24 Aug 2026 18:02:49 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql --home-dir /var/lib/mysql && userdel --remove ubuntu # buildkit
# Mon, 24 Aug 2026 18:03:29 GMT
ENV GOSU_VERSION=1.19
# Mon, 24 Aug 2026 18:03:29 GMT
ARG GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
# Mon, 24 Aug 2026 18:03:29 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
RUN set -eux; 	apt-get update; 	DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends 		ca-certificates 		gpg 		gpgv 		libjemalloc2 		libtcmalloc-minimal4t64 		pwgen 		tzdata 		xz-utils 		zstd ; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get install -y --no-install-recommends 		dirmngr 		gpg-agent 		wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -q -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -q -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	GNUPGHOME="$(mktemp -d)"; 	export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --export "$GPG_KEYS" > /etc/apt/trusted.gpg.d/mariadb.gpg; 	if command -v gpgconf >/dev/null; then 		gpgconf --kill all; 	fi; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] ||	apt-mark manual $savedAptMark >/dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 24 Aug 2026 18:03:30 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 24 Aug 2026 18:03:30 GMT
ENV LANG=C.UTF-8
# Mon, 24 Aug 2026 18:03:30 GMT
LABEL org.opencontainers.image.authors=MariaDB Community org.opencontainers.image.title=MariaDB Database org.opencontainers.image.description=MariaDB Database for relational SQL org.opencontainers.image.documentation=https://hub.docker.com/_/mariadb/ org.opencontainers.image.base.name=docker.io/library/ubuntu:noble org.opencontainers.image.licenses=GPL-2.0 org.opencontainers.image.source=https://github.com/MariaDB/mariadb-docker org.opencontainers.image.vendor=MariaDB Community org.opencontainers.image.version=12.3.3 org.opencontainers.image.url=https://github.com/MariaDB/mariadb-docker
# Mon, 24 Aug 2026 18:03:30 GMT
ARG MARIADB_VERSION=1:12.3.3+maria~ubu2404
# Mon, 24 Aug 2026 18:03:30 GMT
ENV MARIADB_VERSION=1:12.3.3+maria~ubu2404
# Mon, 24 Aug 2026 18:03:30 GMT
ARG REPOSITORY=http://archive.mariadb.org/mariadb-12.3.3/repo/ubuntu/ noble main main/debug
# Mon, 24 Aug 2026 18:03:30 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:12.3.3+maria~ubu2404 REPOSITORY=http://archive.mariadb.org/mariadb-12.3.3/repo/ubuntu/ noble main main/debug
RUN set -e;	echo "deb ${REPOSITORY}" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb # buildkit
# Mon, 24 Aug 2026 18:04:04 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:12.3.3+maria~ubu2404 REPOSITORY=http://archive.mariadb.org/mariadb-12.3.3/repo/ubuntu/ noble main main/debug
RUN set -ex; 	{ 		echo "mariadb-server" mysql-server/root_password password 'unused'; 		echo "mariadb-server" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	apt-get update; 	mkdir -p /var/lib/mysql/mysql ; touch /var/lib/mysql/mysql/user.frm ; 	apt-get install -y --no-install-recommends mariadb-server-galera="$MARIADB_VERSION" mariadb-backup socat 	; 	rm -rf /var/lib/apt/lists/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /run/mysqld; 	chmod 1777 /run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user\s)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user\s)/#&/'; 	printf "[mariadb]\nhost-cache-size=0\nskip-name-resolve\n" > /etc/mysql/mariadb.conf.d/05-skipcache.cnf; 	if [ -L /etc/mysql/my.cnf ]; then 		sed -i -e '/includedir/ {N;s/\(.*\)\n\(.*\)/\n\2\n\1/}' /etc/mysql/mariadb.cnf; 	fi # buildkit
# Mon, 24 Aug 2026 18:04:04 GMT
VOLUME [/var/lib/mysql]
# Mon, 24 Aug 2026 18:04:04 GMT
COPY healthcheck.sh /usr/local/bin/healthcheck.sh # buildkit
# Mon, 24 Aug 2026 18:04:05 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 24 Aug 2026 18:04:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 24 Aug 2026 18:04:05 GMT
EXPOSE map[3306/tcp:{}]
# Mon, 24 Aug 2026 18:04:05 GMT
CMD ["mariadbd"]
```

-	Layers:
	-	`sha256:5d1d3f92cfa6f52fd8d52857915fa3c3464dbd12014bfc03e5e163fc72a4de1d`  
		Last Modified: Mon, 17 Aug 2026 14:27:57 GMT  
		Size: 29.9 MB (29935255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddefb8c414eb9d9ff4007a85cab2e374a53697cd004eeaed8c2903697641fedf`  
		Last Modified: Mon, 24 Aug 2026 18:04:34 GMT  
		Size: 1.3 KB (1339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d195c1a94e3c60a7dd7a074888884ff67e9371454c1569c3a1b623751c297aae`  
		Last Modified: Mon, 24 Aug 2026 18:04:35 GMT  
		Size: 5.4 MB (5402945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:680fb2f98bb15ed84a3a7be8366103b41f28500a2f2107db67bd6bc72d3c5b89`  
		Last Modified: Mon, 24 Aug 2026 18:04:34 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42bb8865f01144d9c209c7017f935c0d4f1bb449c038f082d8730f7393b8628d`  
		Last Modified: Mon, 24 Aug 2026 18:04:34 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25c656b1480ba87eb8a985de3d2f3dd14c05c78e25ab4d287b9b7eb1910ef14d`  
		Last Modified: Mon, 24 Aug 2026 18:04:37 GMT  
		Size: 74.3 MB (74342770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39d494380c6b5c3728f72dc51b2a848e6aafa0c7f16d9a526f7676f8227eb775`  
		Last Modified: Mon, 24 Aug 2026 18:04:35 GMT  
		Size: 4.0 KB (4035 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee6cd68d72332647190ad5e4bd4cd6f6b80299a9f41c51dc2c7e37c35e5d38ea`  
		Last Modified: Mon, 24 Aug 2026 18:04:35 GMT  
		Size: 8.5 KB (8493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mariadb:12-noble` - unknown; unknown

```console
$ docker pull mariadb@sha256:fe76380a09449b0f7838d80709a979b2ae2df3a4bf5dd2b589e41b71b2f7a8d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4300407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52f352505d9745d54aba80d080c1d6b60b127e306fae61a4f5b3f4505685406c`

```dockerfile
```

-	Layers:
	-	`sha256:9d3dcfaa94f034f4e7cda4d111c620945a2f0d60f5551599f7a1c5e06796573e`  
		Last Modified: Mon, 24 Aug 2026 18:04:34 GMT  
		Size: 4.3 MB (4268339 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bb926d68855e7b8a3413a719343f64b94afe556f0645bc0e3bdcda3427dd42da`  
		Last Modified: Mon, 24 Aug 2026 18:04:34 GMT  
		Size: 32.1 KB (32068 bytes)  
		MIME: application/vnd.in-toto+json
