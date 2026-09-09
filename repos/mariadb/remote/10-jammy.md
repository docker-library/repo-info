## `mariadb:10-jammy`

```console
$ docker pull mariadb@sha256:fa8838754b591be046e1a1733a3f113cab32953ed2ed47b9adfd19cb4f3bd315
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
$ docker pull mariadb@sha256:ab2006938ed319f467ea98b3bb6c944757c2f10b953b3038a8a8113bd81e1b75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.1 MB (104140925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:469ca2503d14f4ee8e7960ad186840a1cf4574378bb79608d40e46bd238c2f28`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mariadbd"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Mon, 24 Aug 2026 18:05:03 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql --home-dir /var/lib/mysql # buildkit
# Mon, 24 Aug 2026 18:05:16 GMT
ENV GOSU_VERSION=1.19
# Mon, 24 Aug 2026 18:05:16 GMT
ARG GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
# Mon, 24 Aug 2026 18:05:16 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
RUN set -eux; 	apt-get update; 	DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends 		ca-certificates 		gpg 		gpgv 		libjemalloc2 		libtcmalloc-minimal4 		pwgen 		tzdata 		xz-utils 		zstd ; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get install -y --no-install-recommends 		dirmngr 		gpg-agent 		wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -q -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -q -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	GNUPGHOME="$(mktemp -d)"; 	export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --export "$GPG_KEYS" > /etc/apt/trusted.gpg.d/mariadb.gpg; 	if command -v gpgconf >/dev/null; then 		gpgconf --kill all; 	fi; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] ||	apt-mark manual $savedAptMark >/dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 24 Aug 2026 18:05:16 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 24 Aug 2026 18:05:16 GMT
ENV LANG=C.UTF-8
# Mon, 24 Aug 2026 18:05:16 GMT
LABEL org.opencontainers.image.authors=MariaDB Community org.opencontainers.image.title=MariaDB Database org.opencontainers.image.description=MariaDB Database for relational SQL org.opencontainers.image.documentation=https://hub.docker.com/_/mariadb/ org.opencontainers.image.base.name=docker.io/library/ubuntu:jammy org.opencontainers.image.licenses=GPL-2.0 org.opencontainers.image.source=https://github.com/MariaDB/mariadb-docker org.opencontainers.image.vendor=MariaDB Community org.opencontainers.image.version=10.11.19 org.opencontainers.image.url=https://github.com/MariaDB/mariadb-docker
# Mon, 24 Aug 2026 18:05:16 GMT
ARG MARIADB_VERSION=1:10.11.19+maria~ubu2204
# Mon, 24 Aug 2026 18:05:16 GMT
ENV MARIADB_VERSION=1:10.11.19+maria~ubu2204
# Mon, 24 Aug 2026 18:05:16 GMT
ARG REPOSITORY=http://archive.mariadb.org/mariadb-10.11.19/repo/ubuntu/ jammy main main/debug
# Mon, 24 Aug 2026 18:05:16 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:10.11.19+maria~ubu2204 REPOSITORY=http://archive.mariadb.org/mariadb-10.11.19/repo/ubuntu/ jammy main main/debug
RUN set -e;	echo "deb ${REPOSITORY}" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb # buildkit
# Mon, 24 Aug 2026 18:05:30 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:10.11.19+maria~ubu2204 REPOSITORY=http://archive.mariadb.org/mariadb-10.11.19/repo/ubuntu/ jammy main main/debug
RUN set -ex; 	{ 		echo "mariadb-server" mysql-server/root_password password 'unused'; 		echo "mariadb-server" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	apt-get update; 	mkdir -p /var/lib/mysql/mysql ; touch /var/lib/mysql/mysql/user.frm ; 	apt-get install -y --no-install-recommends mariadb-server="$MARIADB_VERSION" mariadb-backup socat 	; 	rm -rf /var/lib/apt/lists/*; 	rm -rf /var/lib/mysql /etc/mysql/mariadb.conf.d/50-mysqld_safe.cnf; 	mkdir -p /var/lib/mysql /run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /run/mysqld; 	chmod 1777 /run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user\s)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user\s)/#&/'; 	printf "[mariadb]\nhost-cache-size=0\nskip-name-resolve\n" > /etc/mysql/mariadb.conf.d/05-skipcache.cnf; 	if [ -L /etc/mysql/my.cnf ]; then 		sed -i -e '/includedir/ {N;s/\(.*\)\n\(.*\)/\n\2\n\1/}' /etc/mysql/mariadb.cnf; 	fi # buildkit
# Mon, 24 Aug 2026 18:05:30 GMT
VOLUME [/var/lib/mysql]
# Mon, 24 Aug 2026 18:05:30 GMT
COPY healthcheck.sh /usr/local/bin/healthcheck.sh # buildkit
# Mon, 24 Aug 2026 18:05:30 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 24 Aug 2026 18:05:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 24 Aug 2026 18:05:30 GMT
EXPOSE map[3306/tcp:{}]
# Mon, 24 Aug 2026 18:05:30 GMT
CMD ["mariadbd"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0b110f562490c91255d7790fa31030ca66ee54ee76fe73a9dcb37f7b99f5bf0`  
		Last Modified: Mon, 24 Aug 2026 18:05:44 GMT  
		Size: 1.7 KB (1722 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c10d7f0cd20abcebef921372ac6b4f769b8b16dcaf575f6e11a87b54f67459d`  
		Last Modified: Mon, 24 Aug 2026 18:05:44 GMT  
		Size: 5.6 MB (5565778 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92ff57b1eb9ba474d823a74b9ac9381d830076265efdbb17b925819868d78bf4`  
		Last Modified: Mon, 24 Aug 2026 18:05:44 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bee7ee7d49c714c07abf05729a1ee8f0cc02cb3301339d2e92ca1458232476c`  
		Last Modified: Mon, 24 Aug 2026 18:05:44 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38a738597cc9708a5517cca361cd9b7bac37e53597bedca0b6cd712808df70c5`  
		Last Modified: Mon, 24 Aug 2026 18:05:47 GMT  
		Size: 68.8 MB (68823556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:758b07585e0a90f1b7f29a9b768440c7df3aed139319a80123132fb2d61a3c6c`  
		Last Modified: Mon, 24 Aug 2026 18:05:45 GMT  
		Size: 4.0 KB (4017 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bf9ac32a939e76b842a6717e371b3746cb6fad91b207c12d20b9c3f8c18bec1`  
		Last Modified: Mon, 24 Aug 2026 18:05:45 GMT  
		Size: 8.5 KB (8460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mariadb:10-jammy` - unknown; unknown

```console
$ docker pull mariadb@sha256:82ebdc5f71e3656a3ccad4fe033f3948ab1c8afe2f4b4bb95ea51ef95aacdc38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4816101 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56f81e6e24e58b98c16b7e316e3d0844ee371592b5260cbd6abaf26afba69473`

```dockerfile
```

-	Layers:
	-	`sha256:f8b370294f644de3d5f36b3cc4cb257fc8bda1e10318ea59f2300364d7ea7de5`  
		Last Modified: Mon, 24 Aug 2026 18:05:44 GMT  
		Size: 4.8 MB (4785194 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:db02198483d119bd8cf6941fdd046fb365b89d1713e14b8789b18359896f56db`  
		Last Modified: Mon, 24 Aug 2026 18:05:44 GMT  
		Size: 30.9 KB (30907 bytes)  
		MIME: application/vnd.in-toto+json

### `mariadb:10-jammy` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:09e8f3632ba4a7066d4e5998ba950eb0f69eb48c1af110fac39152740ce62c66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.0 MB (101026199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7e3dae8dc3312252133a5574ac4660d10c14018cafae7c5f0b70e8ae1120018`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mariadbd"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:40 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:40 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:40 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:43 GMT
ADD file:b920ec328a9d4f41fbaa4e839ab5a48ad3f138f98a847b3ee8c48142817ee32d in / 
# Thu, 03 Sep 2026 12:14:43 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 01:38:18 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql --home-dir /var/lib/mysql # buildkit
# Wed, 09 Sep 2026 01:38:38 GMT
ENV GOSU_VERSION=1.19
# Wed, 09 Sep 2026 01:38:38 GMT
ARG GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
# Wed, 09 Sep 2026 01:38:38 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
RUN set -eux; 	apt-get update; 	DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends 		ca-certificates 		gpg 		gpgv 		libjemalloc2 		libtcmalloc-minimal4 		pwgen 		tzdata 		xz-utils 		zstd ; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get install -y --no-install-recommends 		dirmngr 		gpg-agent 		wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -q -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -q -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	GNUPGHOME="$(mktemp -d)"; 	export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --export "$GPG_KEYS" > /etc/apt/trusted.gpg.d/mariadb.gpg; 	if command -v gpgconf >/dev/null; then 		gpgconf --kill all; 	fi; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] ||	apt-mark manual $savedAptMark >/dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 09 Sep 2026 01:38:38 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 09 Sep 2026 01:38:38 GMT
ENV LANG=C.UTF-8
# Wed, 09 Sep 2026 01:38:38 GMT
LABEL org.opencontainers.image.authors=MariaDB Community org.opencontainers.image.title=MariaDB Database org.opencontainers.image.description=MariaDB Database for relational SQL org.opencontainers.image.documentation=https://hub.docker.com/_/mariadb/ org.opencontainers.image.base.name=docker.io/library/ubuntu:jammy org.opencontainers.image.licenses=GPL-2.0 org.opencontainers.image.source=https://github.com/MariaDB/mariadb-docker org.opencontainers.image.vendor=MariaDB Community org.opencontainers.image.version=10.11.19 org.opencontainers.image.url=https://github.com/MariaDB/mariadb-docker
# Wed, 09 Sep 2026 01:38:38 GMT
ARG MARIADB_VERSION=1:10.11.19+maria~ubu2204
# Wed, 09 Sep 2026 01:38:38 GMT
ENV MARIADB_VERSION=1:10.11.19+maria~ubu2204
# Wed, 09 Sep 2026 01:38:38 GMT
ARG REPOSITORY=http://archive.mariadb.org/mariadb-10.11.19/repo/ubuntu/ jammy main main/debug
# Wed, 09 Sep 2026 01:38:38 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:10.11.19+maria~ubu2204 REPOSITORY=http://archive.mariadb.org/mariadb-10.11.19/repo/ubuntu/ jammy main main/debug
RUN set -e;	echo "deb ${REPOSITORY}" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb # buildkit
# Wed, 09 Sep 2026 01:38:57 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:10.11.19+maria~ubu2204 REPOSITORY=http://archive.mariadb.org/mariadb-10.11.19/repo/ubuntu/ jammy main main/debug
RUN set -ex; 	{ 		echo "mariadb-server" mysql-server/root_password password 'unused'; 		echo "mariadb-server" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	apt-get update; 	mkdir -p /var/lib/mysql/mysql ; touch /var/lib/mysql/mysql/user.frm ; 	apt-get install -y --no-install-recommends mariadb-server="$MARIADB_VERSION" mariadb-backup socat 	; 	rm -rf /var/lib/apt/lists/*; 	rm -rf /var/lib/mysql /etc/mysql/mariadb.conf.d/50-mysqld_safe.cnf; 	mkdir -p /var/lib/mysql /run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /run/mysqld; 	chmod 1777 /run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user\s)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user\s)/#&/'; 	printf "[mariadb]\nhost-cache-size=0\nskip-name-resolve\n" > /etc/mysql/mariadb.conf.d/05-skipcache.cnf; 	if [ -L /etc/mysql/my.cnf ]; then 		sed -i -e '/includedir/ {N;s/\(.*\)\n\(.*\)/\n\2\n\1/}' /etc/mysql/mariadb.cnf; 	fi # buildkit
# Wed, 09 Sep 2026 01:38:57 GMT
VOLUME [/var/lib/mysql]
# Wed, 09 Sep 2026 01:38:57 GMT
COPY healthcheck.sh /usr/local/bin/healthcheck.sh # buildkit
# Wed, 09 Sep 2026 01:38:57 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 09 Sep 2026 01:38:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 09 Sep 2026 01:38:57 GMT
EXPOSE map[3306/tcp:{}]
# Wed, 09 Sep 2026 01:38:57 GMT
CMD ["mariadbd"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b24530e8206735e3fabf18e37113d0606aebb260493e4b90366f86f39151658a`  
		Last Modified: Wed, 09 Sep 2026 01:39:12 GMT  
		Size: 1.7 KB (1725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91ead5a78b3fa66af3e89dd992bc9f6491fa4b238b61477644a7d8185bfb091f`  
		Last Modified: Wed, 09 Sep 2026 01:39:13 GMT  
		Size: 5.4 MB (5410091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f835d1ae8e4f02a7f8e24c52e58f0d63dd9662d70cb4d9a3bcfd8a73959512ca`  
		Last Modified: Wed, 09 Sep 2026 01:39:12 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a29e6c21613c509d3f1602af0b56a7075ce8c32472fdd2a9c5e755f7499e81c6`  
		Last Modified: Wed, 09 Sep 2026 01:39:12 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08741c69fa15f0c43be3c84982007ed9ad3742d7c20754c87b26c7ea21326efc`  
		Last Modified: Wed, 09 Sep 2026 01:39:15 GMT  
		Size: 67.9 MB (67918709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe00a5a0940bbae444aab13c99d16c2a636674aab6633d1d973394ab7d2870c8`  
		Last Modified: Wed, 09 Sep 2026 01:39:13 GMT  
		Size: 4.0 KB (4017 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:998d850218065ebe845f346237d8b4f92bba40e1a50b71b2c68b73f8fb97b7bd`  
		Last Modified: Wed, 09 Sep 2026 01:39:13 GMT  
		Size: 8.5 KB (8460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mariadb:10-jammy` - unknown; unknown

```console
$ docker pull mariadb@sha256:ff08b1b61ff0239bc7cb83ed9402674a92045bf101164d4d91be15cfa4ef8d2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4822767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e64ed98bfbd88a13ccb885552bf79e5062757e25b2d96a04e37f3da7f6d78f1e`

```dockerfile
```

-	Layers:
	-	`sha256:814bbc8af59b0e9c433ec77d9d57a29225bfdad4b3605ab5191058ee04eda718`  
		Last Modified: Wed, 09 Sep 2026 01:39:13 GMT  
		Size: 4.8 MB (4791672 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:639b72854450b155f6994895bf4e8ad2ac494e7a98e75bad47bee29fbed23c5e`  
		Last Modified: Wed, 09 Sep 2026 01:39:12 GMT  
		Size: 31.1 KB (31095 bytes)  
		MIME: application/vnd.in-toto+json

### `mariadb:10-jammy` - linux; ppc64le

```console
$ docker pull mariadb@sha256:f37ac078711fd5e4e157a140723476273df1b6932f31eb630a39ef389c49d0ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.7 MB (111714141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4c7166afd8f8bcbb5216687d280c00c3339f538cda35553411069c05f35537a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mariadbd"]`

```dockerfile
# Mon, 10 Aug 2026 17:41:01 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:41:01 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:41:01 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:41:05 GMT
ADD file:d76e60867a1f84b7db03c693179093620dc98a06de4f58fdcc806cfc4e4be11c in / 
# Mon, 10 Aug 2026 17:41:05 GMT
CMD ["/bin/bash"]
# Mon, 24 Aug 2026 18:08:25 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql --home-dir /var/lib/mysql # buildkit
# Mon, 24 Aug 2026 18:08:54 GMT
ENV GOSU_VERSION=1.19
# Mon, 24 Aug 2026 18:08:54 GMT
ARG GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
# Mon, 24 Aug 2026 18:08:54 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
RUN set -eux; 	apt-get update; 	DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends 		ca-certificates 		gpg 		gpgv 		libjemalloc2 		libtcmalloc-minimal4 		pwgen 		tzdata 		xz-utils 		zstd ; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get install -y --no-install-recommends 		dirmngr 		gpg-agent 		wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -q -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -q -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	GNUPGHOME="$(mktemp -d)"; 	export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --export "$GPG_KEYS" > /etc/apt/trusted.gpg.d/mariadb.gpg; 	if command -v gpgconf >/dev/null; then 		gpgconf --kill all; 	fi; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] ||	apt-mark manual $savedAptMark >/dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 24 Aug 2026 18:08:54 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 24 Aug 2026 18:08:54 GMT
ENV LANG=C.UTF-8
# Mon, 24 Aug 2026 18:08:54 GMT
LABEL org.opencontainers.image.authors=MariaDB Community org.opencontainers.image.title=MariaDB Database org.opencontainers.image.description=MariaDB Database for relational SQL org.opencontainers.image.documentation=https://hub.docker.com/_/mariadb/ org.opencontainers.image.base.name=docker.io/library/ubuntu:jammy org.opencontainers.image.licenses=GPL-2.0 org.opencontainers.image.source=https://github.com/MariaDB/mariadb-docker org.opencontainers.image.vendor=MariaDB Community org.opencontainers.image.version=10.11.19 org.opencontainers.image.url=https://github.com/MariaDB/mariadb-docker
# Mon, 24 Aug 2026 18:08:54 GMT
ARG MARIADB_VERSION=1:10.11.19+maria~ubu2204
# Mon, 24 Aug 2026 18:08:54 GMT
ENV MARIADB_VERSION=1:10.11.19+maria~ubu2204
# Mon, 24 Aug 2026 18:08:54 GMT
ARG REPOSITORY=http://archive.mariadb.org/mariadb-10.11.19/repo/ubuntu/ jammy main main/debug
# Mon, 24 Aug 2026 18:08:54 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:10.11.19+maria~ubu2204 REPOSITORY=http://archive.mariadb.org/mariadb-10.11.19/repo/ubuntu/ jammy main main/debug
RUN set -e;	echo "deb ${REPOSITORY}" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb # buildkit
# Mon, 24 Aug 2026 18:09:17 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:10.11.19+maria~ubu2204 REPOSITORY=http://archive.mariadb.org/mariadb-10.11.19/repo/ubuntu/ jammy main main/debug
RUN set -ex; 	{ 		echo "mariadb-server" mysql-server/root_password password 'unused'; 		echo "mariadb-server" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	apt-get update; 	mkdir -p /var/lib/mysql/mysql ; touch /var/lib/mysql/mysql/user.frm ; 	apt-get install -y --no-install-recommends mariadb-server="$MARIADB_VERSION" mariadb-backup socat 	; 	rm -rf /var/lib/apt/lists/*; 	rm -rf /var/lib/mysql /etc/mysql/mariadb.conf.d/50-mysqld_safe.cnf; 	mkdir -p /var/lib/mysql /run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /run/mysqld; 	chmod 1777 /run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user\s)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user\s)/#&/'; 	printf "[mariadb]\nhost-cache-size=0\nskip-name-resolve\n" > /etc/mysql/mariadb.conf.d/05-skipcache.cnf; 	if [ -L /etc/mysql/my.cnf ]; then 		sed -i -e '/includedir/ {N;s/\(.*\)\n\(.*\)/\n\2\n\1/}' /etc/mysql/mariadb.cnf; 	fi # buildkit
# Mon, 24 Aug 2026 18:09:17 GMT
VOLUME [/var/lib/mysql]
# Mon, 24 Aug 2026 18:09:17 GMT
COPY healthcheck.sh /usr/local/bin/healthcheck.sh # buildkit
# Mon, 24 Aug 2026 18:09:17 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 24 Aug 2026 18:09:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 24 Aug 2026 18:09:17 GMT
EXPOSE map[3306/tcp:{}]
# Mon, 24 Aug 2026 18:09:17 GMT
CMD ["mariadbd"]
```

-	Layers:
	-	`sha256:f91e00e792a8adfcd4df0b5c8e802d3b4d1e06477f9753454043a7ce76772758`  
		Last Modified: Mon, 10 Aug 2026 20:09:02 GMT  
		Size: 34.6 MB (34638145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88a689ede86fdc6622c229cf964e31f9c393163c23ac26fc73a751fb1782ccd7`  
		Last Modified: Mon, 24 Aug 2026 18:09:48 GMT  
		Size: 1.7 KB (1724 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd746c7ac188e2c8655a0dfbe8caa244df8f2d01093984700d296653b36413f6`  
		Last Modified: Mon, 24 Aug 2026 18:09:48 GMT  
		Size: 6.1 MB (6058921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98193f502c1610e0c4a0086e4f0d8d7cf6a2c3dc2e12bc4f80f23937fa0eb31d`  
		Last Modified: Mon, 24 Aug 2026 18:09:48 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:373f4fa1a857e4cd7802837048a8bea7c927a8baf736db852014363d612b7904`  
		Last Modified: Mon, 24 Aug 2026 18:09:48 GMT  
		Size: 337.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c0371100b3df6d66592574044a1fc3a7697f4cb2268ae73254942b1341522f2`  
		Last Modified: Mon, 24 Aug 2026 18:09:51 GMT  
		Size: 71.0 MB (71002420 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42b333773c5e30647c922f8377d6967831c441171aabaa0978b5eb871b926412`  
		Last Modified: Mon, 24 Aug 2026 18:09:49 GMT  
		Size: 4.0 KB (4017 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5d005ce84385be035417cbb789e8ecc05c12b8edc090e0fa35b25fac1447d01`  
		Last Modified: Mon, 24 Aug 2026 18:09:49 GMT  
		Size: 8.5 KB (8461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mariadb:10-jammy` - unknown; unknown

```console
$ docker pull mariadb@sha256:5be985d081cbf065652b15420f59c24e2256435677391d233e78a9016023985e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4823973 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f1c8f16ca1e1f08adaf53ad12a7d9f7b70c97efc6934d1ad17ffa2498897f7a`

```dockerfile
```

-	Layers:
	-	`sha256:bd111a50ed80cfcdc8d18e6b5ec10e4e55505eaadbf0c1fed817d67be57693d2`  
		Last Modified: Mon, 24 Aug 2026 18:09:48 GMT  
		Size: 4.8 MB (4793002 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:29045066ed126415eb36dd58dbc3f76e359108206af15097673c3fe230c0d645`  
		Last Modified: Mon, 24 Aug 2026 18:09:48 GMT  
		Size: 31.0 KB (30971 bytes)  
		MIME: application/vnd.in-toto+json

### `mariadb:10-jammy` - linux; s390x

```console
$ docker pull mariadb@sha256:ac018bd410d606773c96875bfd619b5968af9f32d0df86622d43c01fc5c51f37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.8 MB (101768814 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b97edd54c6e859d0a0cd183488a85956cfa71810457ebeec739a214a290e8ac`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mariadbd"]`

```dockerfile
# Mon, 10 Aug 2026 17:41:22 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:41:22 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:41:22 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:41:24 GMT
ADD file:ebe1295278656f2efe95b21ab9586cdaa8c816836b56de7bf7a802fc92465272 in / 
# Mon, 10 Aug 2026 17:41:24 GMT
CMD ["/bin/bash"]
# Mon, 24 Aug 2026 18:07:29 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql --home-dir /var/lib/mysql # buildkit
# Mon, 24 Aug 2026 18:08:03 GMT
ENV GOSU_VERSION=1.19
# Mon, 24 Aug 2026 18:08:03 GMT
ARG GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
# Mon, 24 Aug 2026 18:08:03 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
RUN set -eux; 	apt-get update; 	DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends 		ca-certificates 		gpg 		gpgv 		libjemalloc2 		libtcmalloc-minimal4 		pwgen 		tzdata 		xz-utils 		zstd ; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get install -y --no-install-recommends 		dirmngr 		gpg-agent 		wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -q -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -q -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	GNUPGHOME="$(mktemp -d)"; 	export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --export "$GPG_KEYS" > /etc/apt/trusted.gpg.d/mariadb.gpg; 	if command -v gpgconf >/dev/null; then 		gpgconf --kill all; 	fi; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] ||	apt-mark manual $savedAptMark >/dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 24 Aug 2026 18:08:03 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 24 Aug 2026 18:08:03 GMT
ENV LANG=C.UTF-8
# Mon, 24 Aug 2026 18:08:03 GMT
LABEL org.opencontainers.image.authors=MariaDB Community org.opencontainers.image.title=MariaDB Database org.opencontainers.image.description=MariaDB Database for relational SQL org.opencontainers.image.documentation=https://hub.docker.com/_/mariadb/ org.opencontainers.image.base.name=docker.io/library/ubuntu:jammy org.opencontainers.image.licenses=GPL-2.0 org.opencontainers.image.source=https://github.com/MariaDB/mariadb-docker org.opencontainers.image.vendor=MariaDB Community org.opencontainers.image.version=10.11.19 org.opencontainers.image.url=https://github.com/MariaDB/mariadb-docker
# Mon, 24 Aug 2026 18:08:03 GMT
ARG MARIADB_VERSION=1:10.11.19+maria~ubu2204
# Mon, 24 Aug 2026 18:08:03 GMT
ENV MARIADB_VERSION=1:10.11.19+maria~ubu2204
# Mon, 24 Aug 2026 18:08:03 GMT
ARG REPOSITORY=http://archive.mariadb.org/mariadb-10.11.19/repo/ubuntu/ jammy main main/debug
# Mon, 24 Aug 2026 18:08:03 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:10.11.19+maria~ubu2204 REPOSITORY=http://archive.mariadb.org/mariadb-10.11.19/repo/ubuntu/ jammy main main/debug
RUN set -e;	echo "deb ${REPOSITORY}" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb # buildkit
# Mon, 24 Aug 2026 18:08:24 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:10.11.19+maria~ubu2204 REPOSITORY=http://archive.mariadb.org/mariadb-10.11.19/repo/ubuntu/ jammy main main/debug
RUN set -ex; 	{ 		echo "mariadb-server" mysql-server/root_password password 'unused'; 		echo "mariadb-server" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	apt-get update; 	mkdir -p /var/lib/mysql/mysql ; touch /var/lib/mysql/mysql/user.frm ; 	apt-get install -y --no-install-recommends mariadb-server="$MARIADB_VERSION" mariadb-backup socat 	; 	rm -rf /var/lib/apt/lists/*; 	rm -rf /var/lib/mysql /etc/mysql/mariadb.conf.d/50-mysqld_safe.cnf; 	mkdir -p /var/lib/mysql /run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /run/mysqld; 	chmod 1777 /run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user\s)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user\s)/#&/'; 	printf "[mariadb]\nhost-cache-size=0\nskip-name-resolve\n" > /etc/mysql/mariadb.conf.d/05-skipcache.cnf; 	if [ -L /etc/mysql/my.cnf ]; then 		sed -i -e '/includedir/ {N;s/\(.*\)\n\(.*\)/\n\2\n\1/}' /etc/mysql/mariadb.cnf; 	fi # buildkit
# Mon, 24 Aug 2026 18:08:24 GMT
VOLUME [/var/lib/mysql]
# Mon, 24 Aug 2026 18:08:24 GMT
COPY healthcheck.sh /usr/local/bin/healthcheck.sh # buildkit
# Mon, 24 Aug 2026 18:08:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 24 Aug 2026 18:08:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 24 Aug 2026 18:08:24 GMT
EXPOSE map[3306/tcp:{}]
# Mon, 24 Aug 2026 18:08:24 GMT
CMD ["mariadbd"]
```

-	Layers:
	-	`sha256:3c9503cfff1c82d12820c3c752940964f6a091cb183b44e45fc5a003b8d47e87`  
		Last Modified: Mon, 10 Aug 2026 20:09:16 GMT  
		Size: 28.2 MB (28210903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:715af448807a1e4dc272a2be06144d01d4edbbd063d84b7654ff10915ba909cb`  
		Last Modified: Mon, 24 Aug 2026 18:08:57 GMT  
		Size: 1.7 KB (1721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80ae7b9736b45d506e136d9475c7084c39e72424473c9da644308f65c0d3947e`  
		Last Modified: Mon, 24 Aug 2026 18:08:57 GMT  
		Size: 5.5 MB (5457218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa4b514ce4707a0b010c82b211025816c027273ef94b706a8e420c438cd4a4c4`  
		Last Modified: Mon, 24 Aug 2026 18:08:57 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d66a877af283f0c221341c7c3ca4390f0bac879a8ed95625139cf243418404f7`  
		Last Modified: Mon, 24 Aug 2026 18:08:57 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:132ca9112195b3ec9d14eede7b061ac2ab76190302c5bf3414d6e78930c476ef`  
		Last Modified: Mon, 24 Aug 2026 18:09:00 GMT  
		Size: 68.1 MB (68086046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c9ec9a598de1c258297a21e94544138c4cb061d8b65a793d612076bf50e394e`  
		Last Modified: Mon, 24 Aug 2026 18:08:58 GMT  
		Size: 4.0 KB (4016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3261560c3fee52b95cdb7b5ff9f7b332dfb01e9499fa2c87699bec19809acb73`  
		Last Modified: Mon, 24 Aug 2026 18:08:58 GMT  
		Size: 8.5 KB (8459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mariadb:10-jammy` - unknown; unknown

```console
$ docker pull mariadb@sha256:3211be6550c063fde8f27a2f73f450b38e4a14cbe34544d23032445397a92a44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4816424 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d0910d155e57b2b0eaf06b1f09715f7bc624cd4bed1884abcc549525c9859fe`

```dockerfile
```

-	Layers:
	-	`sha256:b7d5b5840c9f41ea001e46201c13baece4926caf1a620e1f019c8b0cd698aa77`  
		Last Modified: Mon, 24 Aug 2026 18:08:57 GMT  
		Size: 4.8 MB (4785517 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c8c804075b9d215a4b05b815e1a187db559d0676e8b703e14e0cf291c7f44eac`  
		Last Modified: Mon, 24 Aug 2026 18:08:56 GMT  
		Size: 30.9 KB (30907 bytes)  
		MIME: application/vnd.in-toto+json
