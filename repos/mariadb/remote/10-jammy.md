## `mariadb:10-jammy`

```console
$ docker pull mariadb@sha256:e5fe75b2b9de0eb9f6f9a4d9c97272fb3a7480e389ccd487a786bab2a12cc0d7
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
$ docker pull mariadb@sha256:5d60ca6129f939453472f4ed385c54820ec57f3aa384a8646619f9bc0e3b5eab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.5 MB (104479734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec2fa140aa0c2c511ac51c8d1d9b312d0172f620acbb0469475ef1aec783195a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mariadbd"]`

```dockerfile
# Tue, 17 Nov 2026 09:18:24 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:18:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:18:24 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:18:27 GMT
ADD file:577abcbf057cdd5d520b6dbfa56d772c9fb1fa3dd63cb6db8942d63dfc9d902b in / 
# Tue, 17 Nov 2026 09:18:27 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:24:06 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql --home-dir /var/lib/mysql # buildkit
# Fri, 20 Nov 2026 03:24:19 GMT
ENV GOSU_VERSION=1.19
# Fri, 20 Nov 2026 03:24:19 GMT
ARG GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
# Fri, 20 Nov 2026 03:24:19 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
RUN set -eux; 	apt-get update; 	DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends 		ca-certificates 		gpg 		gpgv 		libjemalloc2 		libtcmalloc-minimal4 		pwgen 		tzdata 		xz-utils 		zstd ; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get install -y --no-install-recommends 		dirmngr 		gpg-agent 		wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -q -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -q -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	GNUPGHOME="$(mktemp -d)"; 	export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --export "$GPG_KEYS" > /etc/apt/trusted.gpg.d/mariadb.gpg; 	if command -v gpgconf >/dev/null; then 		gpgconf --kill all; 	fi; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] ||	apt-mark manual $savedAptMark >/dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Fri, 20 Nov 2026 03:24:19 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 20 Nov 2026 03:24:19 GMT
ENV LANG=C.UTF-8
# Fri, 20 Nov 2026 03:24:19 GMT
LABEL org.opencontainers.image.authors=MariaDB Community org.opencontainers.image.title=MariaDB Database org.opencontainers.image.description=MariaDB Database for relational SQL org.opencontainers.image.documentation=https://hub.docker.com/_/mariadb/ org.opencontainers.image.base.name=docker.io/library/ubuntu:jammy org.opencontainers.image.licenses=GPL-2.0 org.opencontainers.image.source=https://github.com/MariaDB/mariadb-docker org.opencontainers.image.vendor=MariaDB Community org.opencontainers.image.version=10.11.19 org.opencontainers.image.url=https://github.com/MariaDB/mariadb-docker
# Fri, 20 Nov 2026 03:24:19 GMT
ARG MARIADB_VERSION=1:10.11.19+maria~ubu2204
# Fri, 20 Nov 2026 03:24:19 GMT
ENV MARIADB_VERSION=1:10.11.19+maria~ubu2204
# Fri, 20 Nov 2026 03:24:19 GMT
ARG REPOSITORY=http://archive.mariadb.org/mariadb-10.11.19/repo/ubuntu/ jammy main main/debug
# Fri, 20 Nov 2026 03:24:19 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:10.11.19+maria~ubu2204 REPOSITORY=http://archive.mariadb.org/mariadb-10.11.19/repo/ubuntu/ jammy main main/debug
RUN set -e;	echo "deb ${REPOSITORY}" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb # buildkit
# Fri, 20 Nov 2026 03:29:26 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:10.11.19+maria~ubu2204 REPOSITORY=http://archive.mariadb.org/mariadb-10.11.19/repo/ubuntu/ jammy main main/debug
RUN set -ex; 	{ 		echo "mariadb-server" mysql-server/root_password password 'unused'; 		echo "mariadb-server" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	apt-get update; 	mkdir -p /var/lib/mysql/mysql ; touch /var/lib/mysql/mysql/user.frm ; 	apt-get install -y --no-install-recommends mariadb-server="$MARIADB_VERSION" mariadb-backup socat 	; 	rm -rf /var/lib/apt/lists/*; 	rm -rf /var/lib/mysql /etc/mysql/mariadb.conf.d/50-mysqld_safe.cnf; 	mkdir -p /var/lib/mysql /run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /run/mysqld; 	chmod 1777 /run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user\s)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user\s)/#&/'; 	printf "[mariadb]\nhost-cache-size=0\nskip-name-resolve\n" > /etc/mysql/mariadb.conf.d/05-skipcache.cnf; 	if [ -L /etc/mysql/my.cnf ]; then 		sed -i -e '/includedir/ {N;s/\(.*\)\n\(.*\)/\n\2\n\1/}' /etc/mysql/mariadb.cnf; 	fi # buildkit
# Fri, 20 Nov 2026 03:29:26 GMT
VOLUME [/var/lib/mysql]
# Fri, 20 Nov 2026 03:29:26 GMT
COPY healthcheck.sh /usr/local/bin/healthcheck.sh # buildkit
# Fri, 20 Nov 2026 03:29:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 20 Nov 2026 03:29:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 20 Nov 2026 03:29:26 GMT
EXPOSE map[3306/tcp:{}]
# Fri, 20 Nov 2026 03:29:26 GMT
CMD ["mariadbd"]
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d45b7b3343c02474a7b68fd0a901a143c7c8c0b1ca46bd06020b0f4ff7599ca1`  
		Last Modified: Fri, 20 Nov 2026 03:29:41 GMT  
		Size: 1.7 KB (1718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5da42185b2b5e1345ccd3d74f09c28058d016ebdd2af3bd740de780bd4f3eeb5`  
		Last Modified: Fri, 20 Nov 2026 03:29:41 GMT  
		Size: 5.6 MB (5566300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33315c9297f1a22376efa9c9b516b707d5fcf2644de4223a29a8697a4ae9b89d`  
		Last Modified: Fri, 20 Nov 2026 03:29:41 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f61839c627be1e96d46fb206061829bd8ffa79bab435228d0a64928c79f00253`  
		Last Modified: Fri, 20 Nov 2026 03:29:41 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9bb6723b82223a870f37e13bf06684df7f14b83916dc480c979e8c6bdf3423a`  
		Last Modified: Fri, 20 Nov 2026 03:29:44 GMT  
		Size: 68.8 MB (68828982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a4a4458d1529b4d386e634eb71b7b3b7eda22409645179b73a694830f9a6d7b`  
		Last Modified: Fri, 20 Nov 2026 03:29:42 GMT  
		Size: 4.0 KB (4015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8449b1fa44889a5414cc21f79ced64b8e09e4661677396aff2c2ff22ea3fa1d`  
		Last Modified: Fri, 20 Nov 2026 03:29:43 GMT  
		Size: 8.5 KB (8456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mariadb:10-jammy` - unknown; unknown

```console
$ docker pull mariadb@sha256:0cb5f9241a5d77e67df5cceae7dbb05b87c8d9d31b9d69236d583c5c4b0c3617
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4816137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1202c3aed599dd79051baed38045a6d09bf12e0884b3c4fc191aa920fbde771f`

```dockerfile
```

-	Layers:
	-	`sha256:0dbc519725086519d039751a82518ea4379db8c746f8e6e12a82522b6b6e4819`  
		Last Modified: Fri, 20 Nov 2026 03:29:41 GMT  
		Size: 4.8 MB (4785230 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:883b455e866cba50eba1b1c4ff94d1918cf2005aa5ce1260ae0fcd4df4b8c325`  
		Last Modified: Fri, 20 Nov 2026 03:29:41 GMT  
		Size: 30.9 KB (30907 bytes)  
		MIME: application/vnd.in-toto+json

### `mariadb:10-jammy` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:7cefc3f36a20f2f773a7c81f5b683dd6901dab98df71468176ed70b7540e8d6e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.1 MB (99084518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b2b17f0eef32eba3786faf2de9b3ce7f10ce9228875a0fccd7b5efbf813b135`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mariadbd"]`

```dockerfile
# Tue, 17 Nov 2026 09:19:59 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:19:59 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:19:59 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:20:01 GMT
ADD file:6bce4fdebb10a8b24e53d16e55018c30492d5ee28cb2fef5f2d3c884f6604f00 in / 
# Tue, 17 Nov 2026 09:20:01 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:24:42 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql --home-dir /var/lib/mysql # buildkit
# Fri, 20 Nov 2026 03:25:00 GMT
ENV GOSU_VERSION=1.19
# Fri, 20 Nov 2026 03:25:00 GMT
ARG GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
# Fri, 20 Nov 2026 03:25:00 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
RUN set -eux; 	apt-get update; 	DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends 		ca-certificates 		gpg 		gpgv 		libjemalloc2 		libtcmalloc-minimal4 		pwgen 		tzdata 		xz-utils 		zstd ; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get install -y --no-install-recommends 		dirmngr 		gpg-agent 		wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -q -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -q -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	GNUPGHOME="$(mktemp -d)"; 	export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --export "$GPG_KEYS" > /etc/apt/trusted.gpg.d/mariadb.gpg; 	if command -v gpgconf >/dev/null; then 		gpgconf --kill all; 	fi; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] ||	apt-mark manual $savedAptMark >/dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Fri, 20 Nov 2026 03:25:00 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 20 Nov 2026 03:25:00 GMT
ENV LANG=C.UTF-8
# Fri, 20 Nov 2026 03:25:00 GMT
LABEL org.opencontainers.image.authors=MariaDB Community org.opencontainers.image.title=MariaDB Database org.opencontainers.image.description=MariaDB Database for relational SQL org.opencontainers.image.documentation=https://hub.docker.com/_/mariadb/ org.opencontainers.image.base.name=docker.io/library/ubuntu:jammy org.opencontainers.image.licenses=GPL-2.0 org.opencontainers.image.source=https://github.com/MariaDB/mariadb-docker org.opencontainers.image.vendor=MariaDB Community org.opencontainers.image.version=10.11.19 org.opencontainers.image.url=https://github.com/MariaDB/mariadb-docker
# Fri, 20 Nov 2026 03:25:00 GMT
ARG MARIADB_VERSION=1:10.11.19+maria~ubu2204
# Fri, 20 Nov 2026 03:25:00 GMT
ENV MARIADB_VERSION=1:10.11.19+maria~ubu2204
# Fri, 20 Nov 2026 03:25:00 GMT
ARG REPOSITORY=http://archive.mariadb.org/mariadb-10.11.19/repo/ubuntu/ jammy main main/debug
# Fri, 20 Nov 2026 03:25:01 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:10.11.19+maria~ubu2204 REPOSITORY=http://archive.mariadb.org/mariadb-10.11.19/repo/ubuntu/ jammy main main/debug
RUN set -e;	echo "deb ${REPOSITORY}" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb # buildkit
# Fri, 20 Nov 2026 03:29:42 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:10.11.19+maria~ubu2204 REPOSITORY=http://archive.mariadb.org/mariadb-10.11.19/repo/ubuntu/ jammy main main/debug
RUN set -ex; 	{ 		echo "mariadb-server" mysql-server/root_password password 'unused'; 		echo "mariadb-server" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	apt-get update; 	mkdir -p /var/lib/mysql/mysql ; touch /var/lib/mysql/mysql/user.frm ; 	apt-get install -y --no-install-recommends mariadb-server="$MARIADB_VERSION" mariadb-backup socat 	; 	rm -rf /var/lib/apt/lists/*; 	rm -rf /var/lib/mysql /etc/mysql/mariadb.conf.d/50-mysqld_safe.cnf; 	mkdir -p /var/lib/mysql /run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /run/mysqld; 	chmod 1777 /run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user\s)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user\s)/#&/'; 	printf "[mariadb]\nhost-cache-size=0\nskip-name-resolve\n" > /etc/mysql/mariadb.conf.d/05-skipcache.cnf; 	if [ -L /etc/mysql/my.cnf ]; then 		sed -i -e '/includedir/ {N;s/\(.*\)\n\(.*\)/\n\2\n\1/}' /etc/mysql/mariadb.cnf; 	fi # buildkit
# Fri, 20 Nov 2026 03:29:42 GMT
VOLUME [/var/lib/mysql]
# Fri, 20 Nov 2026 03:29:42 GMT
COPY healthcheck.sh /usr/local/bin/healthcheck.sh # buildkit
# Fri, 20 Nov 2026 03:29:42 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 20 Nov 2026 03:29:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 20 Nov 2026 03:29:42 GMT
EXPOSE map[3306/tcp:{}]
# Fri, 20 Nov 2026 03:29:42 GMT
CMD ["mariadbd"]
```

-	Layers:
	-	`sha256:f74d428f3a50d80794f319eb7946ab24cf864bf8f7b5ce874517630417932f0c`  
		Last Modified: Tue, 17 Nov 2026 10:29:10 GMT  
		Size: 28.0 MB (28001401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67edeb4e6a3db3e07fedd3e23be8ea3f5312294db4db885408a38909fbdc05a6`  
		Last Modified: Fri, 20 Nov 2026 03:29:57 GMT  
		Size: 1.7 KB (1723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c913459c1daf8003dbc3b7c847c9d8af0f1c9ceebf953b437fcaa26b54e4a581`  
		Last Modified: Fri, 20 Nov 2026 03:29:57 GMT  
		Size: 5.4 MB (5409505 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:523b85ba2f565f3f29b907f3572aec70b30ee76b0401f84934b4c6dbc4f7ba20`  
		Last Modified: Fri, 20 Nov 2026 03:29:57 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df546ba0271fe90b149448b6e09fbedd6fc167c6732d72d1d11d7f4f81c7894a`  
		Last Modified: Fri, 20 Nov 2026 03:29:57 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99b5985b0809115e458951a824dd4b9b6685297a6b8819d7d2578e28276d2d1b`  
		Last Modified: Fri, 20 Nov 2026 03:29:59 GMT  
		Size: 65.7 MB (65658964 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b393489457907cf7fd8737e05e5e24135e3bb44d01562d47f8db833612e3ff6f`  
		Last Modified: Fri, 20 Nov 2026 03:29:58 GMT  
		Size: 4.0 KB (4016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d61c0458862ca84d4a76d8b9e3c7df62204eccd47a2771c916ab7001f60f3e4`  
		Last Modified: Fri, 20 Nov 2026 03:29:58 GMT  
		Size: 8.5 KB (8458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mariadb:10-jammy` - unknown; unknown

```console
$ docker pull mariadb@sha256:5afbb8fd37218be5810ec7f6b5e3439fa7a9583e7595fd3bc3af08274fdfb1e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4822763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:756333b2bf20e5416a6d6a523956cd7aa665997a5e79f96b1245344537a7f302`

```dockerfile
```

-	Layers:
	-	`sha256:fbf67a8708ae113fc0e6378274fc43b31924974ea11af0b7b5b1ef84ef1eee76`  
		Last Modified: Fri, 20 Nov 2026 03:29:57 GMT  
		Size: 4.8 MB (4791668 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:99b8c0efa1bd6c82d43ba8778d4c425e49033351c26343a3a63357c60dd2da7c`  
		Last Modified: Fri, 20 Nov 2026 03:29:57 GMT  
		Size: 31.1 KB (31095 bytes)  
		MIME: application/vnd.in-toto+json

### `mariadb:10-jammy` - linux; ppc64le

```console
$ docker pull mariadb@sha256:64223e8547075b9370ec14f847abeb918f05266a7c1397284423207ddf3615a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.1 MB (112100914 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd77d45c052c0c31b8e5c046c7cc662b113d7aa9bd999ea69b678235f790c6e5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mariadbd"]`

```dockerfile
# Tue, 17 Nov 2026 09:20:22 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:20:22 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:20:22 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:20:25 GMT
ADD file:864e29ad8b1d92dce321e0401fe4ef4bbac836267e9967e73cb6394dc831cccb in / 
# Tue, 17 Nov 2026 09:20:26 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 04:59:49 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql --home-dir /var/lib/mysql # buildkit
# Fri, 20 Nov 2026 05:00:19 GMT
ENV GOSU_VERSION=1.19
# Fri, 20 Nov 2026 05:00:19 GMT
ARG GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
# Fri, 20 Nov 2026 05:00:19 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
RUN set -eux; 	apt-get update; 	DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends 		ca-certificates 		gpg 		gpgv 		libjemalloc2 		libtcmalloc-minimal4 		pwgen 		tzdata 		xz-utils 		zstd ; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get install -y --no-install-recommends 		dirmngr 		gpg-agent 		wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -q -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -q -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	GNUPGHOME="$(mktemp -d)"; 	export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --export "$GPG_KEYS" > /etc/apt/trusted.gpg.d/mariadb.gpg; 	if command -v gpgconf >/dev/null; then 		gpgconf --kill all; 	fi; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] ||	apt-mark manual $savedAptMark >/dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Fri, 20 Nov 2026 05:00:20 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 20 Nov 2026 05:00:20 GMT
ENV LANG=C.UTF-8
# Fri, 20 Nov 2026 05:00:20 GMT
LABEL org.opencontainers.image.authors=MariaDB Community org.opencontainers.image.title=MariaDB Database org.opencontainers.image.description=MariaDB Database for relational SQL org.opencontainers.image.documentation=https://hub.docker.com/_/mariadb/ org.opencontainers.image.base.name=docker.io/library/ubuntu:jammy org.opencontainers.image.licenses=GPL-2.0 org.opencontainers.image.source=https://github.com/MariaDB/mariadb-docker org.opencontainers.image.vendor=MariaDB Community org.opencontainers.image.version=10.11.19 org.opencontainers.image.url=https://github.com/MariaDB/mariadb-docker
# Fri, 20 Nov 2026 05:00:20 GMT
ARG MARIADB_VERSION=1:10.11.19+maria~ubu2204
# Fri, 20 Nov 2026 05:00:20 GMT
ENV MARIADB_VERSION=1:10.11.19+maria~ubu2204
# Fri, 20 Nov 2026 05:00:20 GMT
ARG REPOSITORY=http://archive.mariadb.org/mariadb-10.11.19/repo/ubuntu/ jammy main main/debug
# Fri, 20 Nov 2026 05:00:20 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:10.11.19+maria~ubu2204 REPOSITORY=http://archive.mariadb.org/mariadb-10.11.19/repo/ubuntu/ jammy main main/debug
RUN set -e;	echo "deb ${REPOSITORY}" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb # buildkit
# Fri, 20 Nov 2026 05:01:08 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:10.11.19+maria~ubu2204 REPOSITORY=http://archive.mariadb.org/mariadb-10.11.19/repo/ubuntu/ jammy main main/debug
RUN set -ex; 	{ 		echo "mariadb-server" mysql-server/root_password password 'unused'; 		echo "mariadb-server" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	apt-get update; 	mkdir -p /var/lib/mysql/mysql ; touch /var/lib/mysql/mysql/user.frm ; 	apt-get install -y --no-install-recommends mariadb-server="$MARIADB_VERSION" mariadb-backup socat 	; 	rm -rf /var/lib/apt/lists/*; 	rm -rf /var/lib/mysql /etc/mysql/mariadb.conf.d/50-mysqld_safe.cnf; 	mkdir -p /var/lib/mysql /run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /run/mysqld; 	chmod 1777 /run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user\s)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user\s)/#&/'; 	printf "[mariadb]\nhost-cache-size=0\nskip-name-resolve\n" > /etc/mysql/mariadb.conf.d/05-skipcache.cnf; 	if [ -L /etc/mysql/my.cnf ]; then 		sed -i -e '/includedir/ {N;s/\(.*\)\n\(.*\)/\n\2\n\1/}' /etc/mysql/mariadb.cnf; 	fi # buildkit
# Fri, 20 Nov 2026 05:01:08 GMT
VOLUME [/var/lib/mysql]
# Fri, 20 Nov 2026 05:01:09 GMT
COPY healthcheck.sh /usr/local/bin/healthcheck.sh # buildkit
# Fri, 20 Nov 2026 05:01:10 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 20 Nov 2026 05:01:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 20 Nov 2026 05:01:10 GMT
EXPOSE map[3306/tcp:{}]
# Fri, 20 Nov 2026 05:01:10 GMT
CMD ["mariadbd"]
```

-	Layers:
	-	`sha256:a7ab357fd9dc2ccd4042230501ebce1346ff82314b13a35f8a4382786359aba5`  
		Last Modified: Tue, 17 Nov 2026 10:29:26 GMT  
		Size: 35.0 MB (35021662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b7d7b09532d69462ebc1326ebd7091c68383a4ea4f8488d11756809282bb2ef`  
		Last Modified: Fri, 20 Nov 2026 05:01:46 GMT  
		Size: 1.7 KB (1721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5610d59a844de6ccb682eb3d7dceeda9f9b92f2c1596ffa82812dc95da2a42a2`  
		Last Modified: Fri, 20 Nov 2026 05:01:47 GMT  
		Size: 6.1 MB (6059263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:376c53771b4112684c2fbd9ebb92fa45f27ef7ce9c4648f38f5ea0a20adbf392`  
		Last Modified: Fri, 20 Nov 2026 05:01:46 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3380c38a92ef111880134ec861023a2c747aa38e4a5d4670d6e117138730fed5`  
		Last Modified: Fri, 20 Nov 2026 05:01:47 GMT  
		Size: 336.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d1917122dcc15d223bb0ae436275f9e6a5358ecbbd492e405375740e393ef00`  
		Last Modified: Fri, 20 Nov 2026 05:01:50 GMT  
		Size: 71.0 MB (71005341 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc9f44561af6fa478dc06bf20d8b3d3568824606c06032766c4ae48a4996ac6d`  
		Last Modified: Fri, 20 Nov 2026 05:01:48 GMT  
		Size: 4.0 KB (4016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38d09db0f32e2c65b6125ae4f7b113bd68428dacb8e381a3d6053d3ace55a7b6`  
		Last Modified: Fri, 20 Nov 2026 05:01:48 GMT  
		Size: 8.5 KB (8459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mariadb:10-jammy` - unknown; unknown

```console
$ docker pull mariadb@sha256:9ab947a3f155949d3ddeb6be263611a3290d62de2e38f6561b3bc584896a0bc1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4824009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a4dd4906345ab0471f58616b7a43a4c968635fce64b1397bd0a449fe24d1d1b`

```dockerfile
```

-	Layers:
	-	`sha256:dc780241b9cb9367594ed4f978e147e5d3d9e4e59f328dd2279e3b7f7cef99e8`  
		Last Modified: Fri, 20 Nov 2026 05:01:47 GMT  
		Size: 4.8 MB (4793038 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d7c6b871325ad7cf7b19a63e553b8d5eb54320f9a87ca260c6e26df4ed6aef9e`  
		Last Modified: Fri, 20 Nov 2026 05:01:46 GMT  
		Size: 31.0 KB (30971 bytes)  
		MIME: application/vnd.in-toto+json

### `mariadb:10-jammy` - linux; s390x

```console
$ docker pull mariadb@sha256:f8cb69c93c3ae0892918a4d5a148cc218ec57bae762e949f133e188e596cb97d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.1 MB (102098512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0db32996071eaad3fdd336e2dd8a842703ddcea36807ab490beef5a935553d41`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mariadbd"]`

```dockerfile
# Tue, 17 Nov 2026 09:18:34 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:18:34 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:18:35 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:18:36 GMT
ADD file:a83bdb195516c0bca280c16e544e4f0bdf6a82e6b162e8d9b57202bce79791b7 in / 
# Tue, 17 Nov 2026 09:18:36 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:23:28 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql --home-dir /var/lib/mysql # buildkit
# Fri, 20 Nov 2026 03:23:40 GMT
ENV GOSU_VERSION=1.19
# Fri, 20 Nov 2026 03:23:40 GMT
ARG GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
# Fri, 20 Nov 2026 03:23:40 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
RUN set -eux; 	apt-get update; 	DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends 		ca-certificates 		gpg 		gpgv 		libjemalloc2 		libtcmalloc-minimal4 		pwgen 		tzdata 		xz-utils 		zstd ; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get install -y --no-install-recommends 		dirmngr 		gpg-agent 		wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -q -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -q -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	GNUPGHOME="$(mktemp -d)"; 	export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --export "$GPG_KEYS" > /etc/apt/trusted.gpg.d/mariadb.gpg; 	if command -v gpgconf >/dev/null; then 		gpgconf --kill all; 	fi; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] ||	apt-mark manual $savedAptMark >/dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Fri, 20 Nov 2026 03:23:40 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 20 Nov 2026 03:23:40 GMT
ENV LANG=C.UTF-8
# Fri, 20 Nov 2026 03:23:40 GMT
LABEL org.opencontainers.image.authors=MariaDB Community org.opencontainers.image.title=MariaDB Database org.opencontainers.image.description=MariaDB Database for relational SQL org.opencontainers.image.documentation=https://hub.docker.com/_/mariadb/ org.opencontainers.image.base.name=docker.io/library/ubuntu:jammy org.opencontainers.image.licenses=GPL-2.0 org.opencontainers.image.source=https://github.com/MariaDB/mariadb-docker org.opencontainers.image.vendor=MariaDB Community org.opencontainers.image.version=10.11.19 org.opencontainers.image.url=https://github.com/MariaDB/mariadb-docker
# Fri, 20 Nov 2026 03:23:40 GMT
ARG MARIADB_VERSION=1:10.11.19+maria~ubu2204
# Fri, 20 Nov 2026 03:23:40 GMT
ENV MARIADB_VERSION=1:10.11.19+maria~ubu2204
# Fri, 20 Nov 2026 03:23:40 GMT
ARG REPOSITORY=http://archive.mariadb.org/mariadb-10.11.19/repo/ubuntu/ jammy main main/debug
# Fri, 20 Nov 2026 03:23:40 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:10.11.19+maria~ubu2204 REPOSITORY=http://archive.mariadb.org/mariadb-10.11.19/repo/ubuntu/ jammy main main/debug
RUN set -e;	echo "deb ${REPOSITORY}" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb # buildkit
# Fri, 20 Nov 2026 03:28:16 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:10.11.19+maria~ubu2204 REPOSITORY=http://archive.mariadb.org/mariadb-10.11.19/repo/ubuntu/ jammy main main/debug
RUN set -ex; 	{ 		echo "mariadb-server" mysql-server/root_password password 'unused'; 		echo "mariadb-server" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	apt-get update; 	mkdir -p /var/lib/mysql/mysql ; touch /var/lib/mysql/mysql/user.frm ; 	apt-get install -y --no-install-recommends mariadb-server="$MARIADB_VERSION" mariadb-backup socat 	; 	rm -rf /var/lib/apt/lists/*; 	rm -rf /var/lib/mysql /etc/mysql/mariadb.conf.d/50-mysqld_safe.cnf; 	mkdir -p /var/lib/mysql /run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /run/mysqld; 	chmod 1777 /run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user\s)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user\s)/#&/'; 	printf "[mariadb]\nhost-cache-size=0\nskip-name-resolve\n" > /etc/mysql/mariadb.conf.d/05-skipcache.cnf; 	if [ -L /etc/mysql/my.cnf ]; then 		sed -i -e '/includedir/ {N;s/\(.*\)\n\(.*\)/\n\2\n\1/}' /etc/mysql/mariadb.cnf; 	fi # buildkit
# Fri, 20 Nov 2026 03:28:16 GMT
VOLUME [/var/lib/mysql]
# Fri, 20 Nov 2026 03:28:16 GMT
COPY healthcheck.sh /usr/local/bin/healthcheck.sh # buildkit
# Fri, 20 Nov 2026 03:28:16 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 20 Nov 2026 03:28:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 20 Nov 2026 03:28:16 GMT
EXPOSE map[3306/tcp:{}]
# Fri, 20 Nov 2026 03:28:16 GMT
CMD ["mariadbd"]
```

-	Layers:
	-	`sha256:0210d82c56b8b437087f28e0731e9e1fcb3ad03a1ea704993d475df7f4fc3a8d`  
		Last Modified: Tue, 17 Nov 2026 10:29:39 GMT  
		Size: 28.5 MB (28539018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a460b0ffbd0010b15e16a170c5b02d44dfe92763b318170f3dd042c4817589b5`  
		Last Modified: Fri, 20 Nov 2026 03:28:39 GMT  
		Size: 1.7 KB (1716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83aaefaf459101f5f20edae127f8bda90953999eb7088218bdc93639df8c16c9`  
		Last Modified: Fri, 20 Nov 2026 03:28:39 GMT  
		Size: 5.5 MB (5456383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2d62a8387edfd9a8171deb5ffea887fa5cde475734856d8dd1c58bc2af774d2`  
		Last Modified: Fri, 20 Nov 2026 03:28:39 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef2642c45e7b4715afe498446c52c1b5820a4142160a54a456205cabf5c771ef`  
		Last Modified: Fri, 20 Nov 2026 03:28:39 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e3ecfd1d776d8ecc8547cf2abf4a3e8a5d4079b4d882e8ac51d11709b110e80`  
		Last Modified: Fri, 20 Nov 2026 03:28:41 GMT  
		Size: 68.1 MB (68088474 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a400c0433862547f82636f8c763243fb3084c98b5c5dbaf386e56ffd0338a15f`  
		Last Modified: Fri, 20 Nov 2026 03:28:40 GMT  
		Size: 4.0 KB (4016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60482d8eb6d1c3b77b8ddf58924db0f296ebe09b2063f9156a2c2e00287c1ff9`  
		Last Modified: Fri, 20 Nov 2026 03:28:40 GMT  
		Size: 8.5 KB (8457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mariadb:10-jammy` - unknown; unknown

```console
$ docker pull mariadb@sha256:3897ad37b916c68e1b1924dc7974146cbc0de1e08624c76bec285d669ba9a4d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4816460 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cba60c1055cf026f18ee6a1e720c017a3f674f180cfadadfacfb36c571e9fdfa`

```dockerfile
```

-	Layers:
	-	`sha256:39769623c8fcaccdd19ecf90c6a28a0624e76bfef248dca4146a8dc31e3494b1`  
		Last Modified: Fri, 20 Nov 2026 03:28:39 GMT  
		Size: 4.8 MB (4785553 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:26fdc00cd3493030502edb715c9c9ae0f971d181a650d669aa16633def522664`  
		Last Modified: Fri, 20 Nov 2026 03:28:39 GMT  
		Size: 30.9 KB (30907 bytes)  
		MIME: application/vnd.in-toto+json
