## `mariadb:12-noble`

```console
$ docker pull mariadb@sha256:4aaf88b3106382c8c18e49f0cec60267be618fc22f858c4503afb2a2555afed3
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
$ docker pull mariadb@sha256:498c22ac4abbb94f6091199f5f96f312a3d71929a235cccd351882f18b8c1a01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.5 MB (105454907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c034c3896847aa38861b33b653674c6faa2b205b4ef78dfbcf4d3cec7876fd76`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mariadbd"]`

```dockerfile
# Tue, 10 Nov 2026 18:35:15 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:35:15 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:35:15 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:35:17 GMT
ADD file:54dafd97985c3ec227e2c96be9290657cf2ab456885b5fc8a24c9278bca65e60 in / 
# Tue, 10 Nov 2026 18:35:18 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:23:52 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql --home-dir /var/lib/mysql && userdel --remove ubuntu # buildkit
# Fri, 20 Nov 2026 03:24:02 GMT
ENV GOSU_VERSION=1.19
# Fri, 20 Nov 2026 03:24:02 GMT
ARG GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
# Fri, 20 Nov 2026 03:24:02 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
RUN set -eux; 	apt-get update; 	DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends 		ca-certificates 		gpg 		gpgv 		libjemalloc2 		libtcmalloc-minimal4t64 		pwgen 		tzdata 		xz-utils 		zstd ; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get install -y --no-install-recommends 		dirmngr 		gpg-agent 		wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -q -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -q -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	GNUPGHOME="$(mktemp -d)"; 	export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --export "$GPG_KEYS" > /etc/apt/trusted.gpg.d/mariadb.gpg; 	if command -v gpgconf >/dev/null; then 		gpgconf --kill all; 	fi; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] ||	apt-mark manual $savedAptMark >/dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Fri, 20 Nov 2026 03:24:02 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 20 Nov 2026 03:24:02 GMT
ENV LANG=C.UTF-8
# Fri, 20 Nov 2026 03:24:02 GMT
LABEL org.opencontainers.image.authors=MariaDB Community org.opencontainers.image.title=MariaDB Database org.opencontainers.image.description=MariaDB Database for relational SQL org.opencontainers.image.documentation=https://hub.docker.com/_/mariadb/ org.opencontainers.image.base.name=docker.io/library/ubuntu:noble org.opencontainers.image.licenses=GPL-2.0 org.opencontainers.image.source=https://github.com/MariaDB/mariadb-docker org.opencontainers.image.vendor=MariaDB Community org.opencontainers.image.version=12.3.3 org.opencontainers.image.url=https://github.com/MariaDB/mariadb-docker
# Fri, 20 Nov 2026 03:24:02 GMT
ARG MARIADB_VERSION=1:12.3.3+maria~ubu2404
# Fri, 20 Nov 2026 03:24:02 GMT
ENV MARIADB_VERSION=1:12.3.3+maria~ubu2404
# Fri, 20 Nov 2026 03:24:02 GMT
ARG REPOSITORY=http://archive.mariadb.org/mariadb-12.3.3/repo/ubuntu/ noble main main/debug
# Fri, 20 Nov 2026 03:24:02 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:12.3.3+maria~ubu2404 REPOSITORY=http://archive.mariadb.org/mariadb-12.3.3/repo/ubuntu/ noble main main/debug
RUN set -e;	echo "deb ${REPOSITORY}" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb # buildkit
# Fri, 20 Nov 2026 03:29:14 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:12.3.3+maria~ubu2404 REPOSITORY=http://archive.mariadb.org/mariadb-12.3.3/repo/ubuntu/ noble main main/debug
RUN set -ex; 	{ 		echo "mariadb-server" mysql-server/root_password password 'unused'; 		echo "mariadb-server" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	apt-get update; 	mkdir -p /var/lib/mysql/mysql ; touch /var/lib/mysql/mysql/user.frm ; 	apt-get install -y --no-install-recommends mariadb-server-galera="$MARIADB_VERSION" mariadb-backup socat 	; 	rm -rf /var/lib/apt/lists/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /run/mysqld; 	chmod 1777 /run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user\s)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user\s)/#&/'; 	printf "[mariadb]\nhost-cache-size=0\nskip-name-resolve\n" > /etc/mysql/mariadb.conf.d/05-skipcache.cnf; 	if [ -L /etc/mysql/my.cnf ]; then 		sed -i -e '/includedir/ {N;s/\(.*\)\n\(.*\)/\n\2\n\1/}' /etc/mysql/mariadb.cnf; 	fi # buildkit
# Fri, 20 Nov 2026 03:29:14 GMT
VOLUME [/var/lib/mysql]
# Fri, 20 Nov 2026 03:29:14 GMT
COPY healthcheck.sh /usr/local/bin/healthcheck.sh # buildkit
# Fri, 20 Nov 2026 03:29:14 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 20 Nov 2026 03:29:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 20 Nov 2026 03:29:14 GMT
EXPOSE map[3306/tcp:{}]
# Fri, 20 Nov 2026 03:29:14 GMT
CMD ["mariadbd"]
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a8c62f555e8754421783564cc422461a7f445cf3c4aad714f6d46e5e691b5e8`  
		Last Modified: Fri, 20 Nov 2026 03:29:23 GMT  
		Size: 1.3 KB (1343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3920507a15454c1ad0d92b51e7a8f1d7f7771f2b96a2bdd61ac8bf35218b91a1`  
		Last Modified: Fri, 20 Nov 2026 03:29:28 GMT  
		Size: 5.2 MB (5244629 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3692309602dbe37992fdb64874cc747ded0e3e12dc03e9a87669d306c120845`  
		Last Modified: Fri, 20 Nov 2026 03:29:27 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24d3a6bfe6cc306c8e52394e5f41cc38632da9a972f736c91148cfcd995c50ff`  
		Last Modified: Fri, 20 Nov 2026 03:29:27 GMT  
		Size: 330.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09acc6f8bf2a262ba5c6bc20cddd71a23a787493ddb35f9c5de3499b3f5d6a26`  
		Last Modified: Fri, 20 Nov 2026 03:29:29 GMT  
		Size: 70.4 MB (70402662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:040e1436b4af9b3f0b165f990572e7167ab03750398ac59621f0d7b2c4513333`  
		Last Modified: Fri, 20 Nov 2026 03:29:28 GMT  
		Size: 4.0 KB (4036 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e508d529bd68bb4ee36511925b761f9cec509ed27e64cf79a044899625f4236`  
		Last Modified: Fri, 20 Nov 2026 03:29:29 GMT  
		Size: 8.5 KB (8494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mariadb:12-noble` - unknown; unknown

```console
$ docker pull mariadb@sha256:732a01c9ea88d0668309f893d5ee9be2c76e12a85f1abf969f37b05fa5f01f21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4297482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61fcf4d9c66e216640d3d12a91c8319aba6647a8c55ad07f96f6a5e42f3b6153`

```dockerfile
```

-	Layers:
	-	`sha256:be66603ef462d8e210d0e5419a96455a099a4ec018ff9875895b48917c69c3a5`  
		Last Modified: Fri, 20 Nov 2026 03:29:28 GMT  
		Size: 4.3 MB (4266012 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:67548133f18a8eb78176c3f3f78db6b95d16ecb28c94ef29fdc44e43cb97dfbc`  
		Last Modified: Fri, 20 Nov 2026 03:29:27 GMT  
		Size: 31.5 KB (31470 bytes)  
		MIME: application/vnd.in-toto+json

### `mariadb:12-noble` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:fbd329877bb66fe9471ae15e97942b6c7a763fbd9b02fcb9fa4deaf703ba16b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.3 MB (103253046 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c064a982464674015bf27623b144bc823f8787adb267089a6ecab15e83b12d68`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mariadbd"]`

```dockerfile
# Tue, 10 Nov 2026 18:31:19 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:31:19 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:31:19 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:31:22 GMT
ADD file:2a6d7d3511af5b48de2ccdad66ef2aa7544bf264ce928935ad4469c76a66169b in / 
# Tue, 10 Nov 2026 18:31:22 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:24:28 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql --home-dir /var/lib/mysql && userdel --remove ubuntu # buildkit
# Fri, 20 Nov 2026 03:24:45 GMT
ENV GOSU_VERSION=1.19
# Fri, 20 Nov 2026 03:24:45 GMT
ARG GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
# Fri, 20 Nov 2026 03:24:45 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
RUN set -eux; 	apt-get update; 	DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends 		ca-certificates 		gpg 		gpgv 		libjemalloc2 		libtcmalloc-minimal4t64 		pwgen 		tzdata 		xz-utils 		zstd ; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get install -y --no-install-recommends 		dirmngr 		gpg-agent 		wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -q -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -q -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	GNUPGHOME="$(mktemp -d)"; 	export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --export "$GPG_KEYS" > /etc/apt/trusted.gpg.d/mariadb.gpg; 	if command -v gpgconf >/dev/null; then 		gpgconf --kill all; 	fi; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] ||	apt-mark manual $savedAptMark >/dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Fri, 20 Nov 2026 03:24:45 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 20 Nov 2026 03:24:45 GMT
ENV LANG=C.UTF-8
# Fri, 20 Nov 2026 03:24:45 GMT
LABEL org.opencontainers.image.authors=MariaDB Community org.opencontainers.image.title=MariaDB Database org.opencontainers.image.description=MariaDB Database for relational SQL org.opencontainers.image.documentation=https://hub.docker.com/_/mariadb/ org.opencontainers.image.base.name=docker.io/library/ubuntu:noble org.opencontainers.image.licenses=GPL-2.0 org.opencontainers.image.source=https://github.com/MariaDB/mariadb-docker org.opencontainers.image.vendor=MariaDB Community org.opencontainers.image.version=12.3.3 org.opencontainers.image.url=https://github.com/MariaDB/mariadb-docker
# Fri, 20 Nov 2026 03:24:45 GMT
ARG MARIADB_VERSION=1:12.3.3+maria~ubu2404
# Fri, 20 Nov 2026 03:24:45 GMT
ENV MARIADB_VERSION=1:12.3.3+maria~ubu2404
# Fri, 20 Nov 2026 03:24:45 GMT
ARG REPOSITORY=http://archive.mariadb.org/mariadb-12.3.3/repo/ubuntu/ noble main main/debug
# Fri, 20 Nov 2026 03:24:45 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:12.3.3+maria~ubu2404 REPOSITORY=http://archive.mariadb.org/mariadb-12.3.3/repo/ubuntu/ noble main main/debug
RUN set -e;	echo "deb ${REPOSITORY}" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb # buildkit
# Fri, 20 Nov 2026 03:30:16 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:12.3.3+maria~ubu2404 REPOSITORY=http://archive.mariadb.org/mariadb-12.3.3/repo/ubuntu/ noble main main/debug
RUN set -ex; 	{ 		echo "mariadb-server" mysql-server/root_password password 'unused'; 		echo "mariadb-server" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	apt-get update; 	mkdir -p /var/lib/mysql/mysql ; touch /var/lib/mysql/mysql/user.frm ; 	apt-get install -y --no-install-recommends mariadb-server-galera="$MARIADB_VERSION" mariadb-backup socat 	; 	rm -rf /var/lib/apt/lists/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /run/mysqld; 	chmod 1777 /run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user\s)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user\s)/#&/'; 	printf "[mariadb]\nhost-cache-size=0\nskip-name-resolve\n" > /etc/mysql/mariadb.conf.d/05-skipcache.cnf; 	if [ -L /etc/mysql/my.cnf ]; then 		sed -i -e '/includedir/ {N;s/\(.*\)\n\(.*\)/\n\2\n\1/}' /etc/mysql/mariadb.cnf; 	fi # buildkit
# Fri, 20 Nov 2026 03:30:16 GMT
VOLUME [/var/lib/mysql]
# Fri, 20 Nov 2026 03:30:16 GMT
COPY healthcheck.sh /usr/local/bin/healthcheck.sh # buildkit
# Fri, 20 Nov 2026 03:30:16 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 20 Nov 2026 03:30:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 20 Nov 2026 03:30:16 GMT
EXPOSE map[3306/tcp:{}]
# Fri, 20 Nov 2026 03:30:16 GMT
CMD ["mariadbd"]
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff3a22447a115c53f1fd3e8f8ae7dc363423328c3710bac4f855d7407824e85b`  
		Last Modified: Fri, 20 Nov 2026 03:30:31 GMT  
		Size: 1.3 KB (1342 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3eb1dd57cf3cdf94606e02e45de48f9d15448c2643d668f5297ea989c1188bd`  
		Last Modified: Fri, 20 Nov 2026 03:30:31 GMT  
		Size: 5.1 MB (5055191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9765cca7eadd32f949ef37d955f97362f15c06a72cb45a9c641b9058b8d00cf5`  
		Last Modified: Fri, 20 Nov 2026 03:29:55 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12ab72cbdffd950c69be634aeb9d7096590865b3b19ede134aa39b4d7700be14`  
		Last Modified: Fri, 20 Nov 2026 03:30:31 GMT  
		Size: 331.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db22d1d0632f7a287dfab4560d007dcecda162c9c898a2f5e5ca38a14d682f28`  
		Last Modified: Fri, 20 Nov 2026 03:30:33 GMT  
		Size: 69.2 MB (69218219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:394771caccaac358369dd1c9909cdee42e93d4488d1c27f34fd2ad6218f28583`  
		Last Modified: Fri, 20 Nov 2026 03:30:32 GMT  
		Size: 4.0 KB (4036 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7adb4b1f390232b9dab9902f033741470c788e25c0640edf2b6297250ac18e4a`  
		Last Modified: Fri, 20 Nov 2026 03:30:32 GMT  
		Size: 8.5 KB (8493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mariadb:12-noble` - unknown; unknown

```console
$ docker pull mariadb@sha256:85c5d5db75e9ad61e3dd15e1e88b43e1b321305c4fd89ad28279853219bbf3f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4304971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fecab3f87b4b515c6e54cba2a8e1393c610096214b30443e6abd5a9be955b6c`

```dockerfile
```

-	Layers:
	-	`sha256:1214059575a18f137ded523569ee8c207dddb1b90f5a8e52c687c7f19c947ee7`  
		Last Modified: Fri, 20 Nov 2026 03:30:31 GMT  
		Size: 4.3 MB (4273289 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e917552591d1136d8647507b33c76d2d7100fa9e8fe189d83b0a55df63810e47`  
		Last Modified: Fri, 20 Nov 2026 03:30:31 GMT  
		Size: 31.7 KB (31682 bytes)  
		MIME: application/vnd.in-toto+json

### `mariadb:12-noble` - linux; ppc64le

```console
$ docker pull mariadb@sha256:edf6d066ca80824db26be3fea8b14eae15a19b91dec298b45f05a3bed0761e1b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.2 MB (115232860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcc9817ca8f3a627bc528581adffcedc7e6c64617ab4b7fc36bfbf2da65061d3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mariadbd"]`

```dockerfile
# Tue, 10 Nov 2026 18:32:30 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:32:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:32:30 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:32:33 GMT
ADD file:9fc87f5d4993c1f29848a41be6f1c74d6ab81fed009749aa0f9d0206b6b19eb0 in / 
# Tue, 10 Nov 2026 18:32:34 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:39:58 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql --home-dir /var/lib/mysql && userdel --remove ubuntu # buildkit
# Fri, 20 Nov 2026 03:40:31 GMT
ENV GOSU_VERSION=1.19
# Fri, 20 Nov 2026 03:40:31 GMT
ARG GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
# Fri, 20 Nov 2026 03:40:31 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
RUN set -eux; 	apt-get update; 	DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends 		ca-certificates 		gpg 		gpgv 		libjemalloc2 		libtcmalloc-minimal4t64 		pwgen 		tzdata 		xz-utils 		zstd ; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get install -y --no-install-recommends 		dirmngr 		gpg-agent 		wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -q -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -q -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	GNUPGHOME="$(mktemp -d)"; 	export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --export "$GPG_KEYS" > /etc/apt/trusted.gpg.d/mariadb.gpg; 	if command -v gpgconf >/dev/null; then 		gpgconf --kill all; 	fi; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] ||	apt-mark manual $savedAptMark >/dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Fri, 20 Nov 2026 03:40:32 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 20 Nov 2026 03:40:32 GMT
ENV LANG=C.UTF-8
# Fri, 20 Nov 2026 03:40:32 GMT
LABEL org.opencontainers.image.authors=MariaDB Community org.opencontainers.image.title=MariaDB Database org.opencontainers.image.description=MariaDB Database for relational SQL org.opencontainers.image.documentation=https://hub.docker.com/_/mariadb/ org.opencontainers.image.base.name=docker.io/library/ubuntu:noble org.opencontainers.image.licenses=GPL-2.0 org.opencontainers.image.source=https://github.com/MariaDB/mariadb-docker org.opencontainers.image.vendor=MariaDB Community org.opencontainers.image.version=12.3.3 org.opencontainers.image.url=https://github.com/MariaDB/mariadb-docker
# Fri, 20 Nov 2026 03:40:32 GMT
ARG MARIADB_VERSION=1:12.3.3+maria~ubu2404
# Fri, 20 Nov 2026 03:40:32 GMT
ENV MARIADB_VERSION=1:12.3.3+maria~ubu2404
# Fri, 20 Nov 2026 03:40:32 GMT
ARG REPOSITORY=http://archive.mariadb.org/mariadb-12.3.3/repo/ubuntu/ noble main main/debug
# Fri, 20 Nov 2026 03:40:33 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:12.3.3+maria~ubu2404 REPOSITORY=http://archive.mariadb.org/mariadb-12.3.3/repo/ubuntu/ noble main main/debug
RUN set -e;	echo "deb ${REPOSITORY}" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb # buildkit
# Fri, 20 Nov 2026 03:43:18 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:12.3.3+maria~ubu2404 REPOSITORY=http://archive.mariadb.org/mariadb-12.3.3/repo/ubuntu/ noble main main/debug
RUN set -ex; 	{ 		echo "mariadb-server" mysql-server/root_password password 'unused'; 		echo "mariadb-server" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	apt-get update; 	mkdir -p /var/lib/mysql/mysql ; touch /var/lib/mysql/mysql/user.frm ; 	apt-get install -y --no-install-recommends mariadb-server-galera="$MARIADB_VERSION" mariadb-backup socat 	; 	rm -rf /var/lib/apt/lists/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /run/mysqld; 	chmod 1777 /run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user\s)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user\s)/#&/'; 	printf "[mariadb]\nhost-cache-size=0\nskip-name-resolve\n" > /etc/mysql/mariadb.conf.d/05-skipcache.cnf; 	if [ -L /etc/mysql/my.cnf ]; then 		sed -i -e '/includedir/ {N;s/\(.*\)\n\(.*\)/\n\2\n\1/}' /etc/mysql/mariadb.cnf; 	fi # buildkit
# Fri, 20 Nov 2026 03:43:18 GMT
VOLUME [/var/lib/mysql]
# Fri, 20 Nov 2026 03:43:18 GMT
COPY healthcheck.sh /usr/local/bin/healthcheck.sh # buildkit
# Fri, 20 Nov 2026 03:43:19 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 20 Nov 2026 03:43:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 20 Nov 2026 03:43:19 GMT
EXPOSE map[3306/tcp:{}]
# Fri, 20 Nov 2026 03:43:19 GMT
CMD ["mariadbd"]
```

-	Layers:
	-	`sha256:6c769a4f95bc536aae313c2bf7fcbf46e8cc18ed65fefad2a8ccfc1b5b7a63b4`  
		Last Modified: Tue, 10 Nov 2026 20:09:39 GMT  
		Size: 34.4 MB (34406239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d76306e6e9319d94bdc368bdc2ebcc2e8ab4bd5b4e38b19145c2e0e22ae64be`  
		Last Modified: Fri, 20 Nov 2026 03:43:50 GMT  
		Size: 1.3 KB (1343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f04465241c24c5f463692461c93762e2a2432e79caffe9f94900b5be368854d`  
		Last Modified: Fri, 20 Nov 2026 03:43:51 GMT  
		Size: 5.9 MB (5881307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11169a3ebd0d81de9a43ab6dc40c6d78f551e1aa6a8f008040300f24a4b00845`  
		Last Modified: Fri, 20 Nov 2026 03:43:50 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0b1d78a620f209e5330e8ef57e8999eef0270351a5a56bb0e1bc97e3802192c`  
		Last Modified: Fri, 20 Nov 2026 03:43:50 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6cbf32e68be76ce9fbccee85e50d579347c6a073f9c8e8f07ab2b2621c1e317`  
		Last Modified: Fri, 20 Nov 2026 03:43:53 GMT  
		Size: 74.9 MB (74931000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2cb7b848ff53b48efaabb56a6837ea295fc7392cedee9c321dc8e216dec08e6`  
		Last Modified: Fri, 20 Nov 2026 03:43:51 GMT  
		Size: 4.0 KB (4031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c7b4316eaa29d86f1d2272f13f3150e7dcf6d0682ebdc8f3e59ea726c5283df`  
		Last Modified: Fri, 20 Nov 2026 03:43:52 GMT  
		Size: 8.5 KB (8492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mariadb:12-noble` - unknown; unknown

```console
$ docker pull mariadb@sha256:25802c5dbea9fd008c1707c6054196a4dec4436259c40e9865fffba68f356ffd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4305493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:745f48288247d3fe9abe6f522578776c458ba093146442792420f9ac2bae0936`

```dockerfile
```

-	Layers:
	-	`sha256:91198dee2ff0421fd6100cf0226f83d747bfae8da77e5e81facad1e6f6f2723c`  
		Last Modified: Fri, 20 Nov 2026 03:43:51 GMT  
		Size: 4.3 MB (4273947 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:67fa6796a7a89ce39c9f106b7925c5620438630908e3ed46f2bb38b0b7dd0fb9`  
		Last Modified: Fri, 20 Nov 2026 03:43:50 GMT  
		Size: 31.5 KB (31546 bytes)  
		MIME: application/vnd.in-toto+json

### `mariadb:12-noble` - linux; s390x

```console
$ docker pull mariadb@sha256:d5a241e548d5c7e66a3ee7ca681374440ec48c4e17398827821800ff30668271
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.7 MB (109730008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f626b94f6e80f34dd0ff9c1fcdbfea7d98dd4596eb60bce4dcc41d90f50550db`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mariadbd"]`

```dockerfile
# Tue, 10 Nov 2026 18:30:54 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:30:54 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:30:54 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:30:56 GMT
ADD file:f57d73889514e35770bca8a6b376ae28a49d35f7eca0530120c0e5edda118257 in / 
# Tue, 10 Nov 2026 18:30:56 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:22:20 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql --home-dir /var/lib/mysql && userdel --remove ubuntu # buildkit
# Fri, 20 Nov 2026 03:22:33 GMT
ENV GOSU_VERSION=1.19
# Fri, 20 Nov 2026 03:22:33 GMT
ARG GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
# Fri, 20 Nov 2026 03:22:33 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
RUN set -eux; 	apt-get update; 	DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends 		ca-certificates 		gpg 		gpgv 		libjemalloc2 		libtcmalloc-minimal4t64 		pwgen 		tzdata 		xz-utils 		zstd ; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get install -y --no-install-recommends 		dirmngr 		gpg-agent 		wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -q -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -q -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	GNUPGHOME="$(mktemp -d)"; 	export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --export "$GPG_KEYS" > /etc/apt/trusted.gpg.d/mariadb.gpg; 	if command -v gpgconf >/dev/null; then 		gpgconf --kill all; 	fi; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] ||	apt-mark manual $savedAptMark >/dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Fri, 20 Nov 2026 03:22:34 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 20 Nov 2026 03:22:34 GMT
ENV LANG=C.UTF-8
# Fri, 20 Nov 2026 03:22:34 GMT
LABEL org.opencontainers.image.authors=MariaDB Community org.opencontainers.image.title=MariaDB Database org.opencontainers.image.description=MariaDB Database for relational SQL org.opencontainers.image.documentation=https://hub.docker.com/_/mariadb/ org.opencontainers.image.base.name=docker.io/library/ubuntu:noble org.opencontainers.image.licenses=GPL-2.0 org.opencontainers.image.source=https://github.com/MariaDB/mariadb-docker org.opencontainers.image.vendor=MariaDB Community org.opencontainers.image.version=12.3.3 org.opencontainers.image.url=https://github.com/MariaDB/mariadb-docker
# Fri, 20 Nov 2026 03:22:34 GMT
ARG MARIADB_VERSION=1:12.3.3+maria~ubu2404
# Fri, 20 Nov 2026 03:22:34 GMT
ENV MARIADB_VERSION=1:12.3.3+maria~ubu2404
# Fri, 20 Nov 2026 03:22:34 GMT
ARG REPOSITORY=http://archive.mariadb.org/mariadb-12.3.3/repo/ubuntu/ noble main main/debug
# Fri, 20 Nov 2026 03:22:34 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:12.3.3+maria~ubu2404 REPOSITORY=http://archive.mariadb.org/mariadb-12.3.3/repo/ubuntu/ noble main main/debug
RUN set -e;	echo "deb ${REPOSITORY}" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb # buildkit
# Fri, 20 Nov 2026 03:28:14 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:12.3.3+maria~ubu2404 REPOSITORY=http://archive.mariadb.org/mariadb-12.3.3/repo/ubuntu/ noble main main/debug
RUN set -ex; 	{ 		echo "mariadb-server" mysql-server/root_password password 'unused'; 		echo "mariadb-server" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	apt-get update; 	mkdir -p /var/lib/mysql/mysql ; touch /var/lib/mysql/mysql/user.frm ; 	apt-get install -y --no-install-recommends mariadb-server-galera="$MARIADB_VERSION" mariadb-backup socat 	; 	rm -rf /var/lib/apt/lists/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /run/mysqld; 	chmod 1777 /run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user\s)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user\s)/#&/'; 	printf "[mariadb]\nhost-cache-size=0\nskip-name-resolve\n" > /etc/mysql/mariadb.conf.d/05-skipcache.cnf; 	if [ -L /etc/mysql/my.cnf ]; then 		sed -i -e '/includedir/ {N;s/\(.*\)\n\(.*\)/\n\2\n\1/}' /etc/mysql/mariadb.cnf; 	fi # buildkit
# Fri, 20 Nov 2026 03:28:14 GMT
VOLUME [/var/lib/mysql]
# Fri, 20 Nov 2026 03:28:14 GMT
COPY healthcheck.sh /usr/local/bin/healthcheck.sh # buildkit
# Fri, 20 Nov 2026 03:28:14 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 20 Nov 2026 03:28:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 20 Nov 2026 03:28:14 GMT
EXPOSE map[3306/tcp:{}]
# Fri, 20 Nov 2026 03:28:14 GMT
CMD ["mariadbd"]
```

-	Layers:
	-	`sha256:d6a4828736418640f88890fd03d6d03e5c40e83e24d598ed323f41ba7e349b4f`  
		Last Modified: Tue, 10 Nov 2026 20:09:53 GMT  
		Size: 30.0 MB (29967433 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a73e5dc060e8c1351701a3c89b7c002ab66c83d8e8badf4fe63562be2ee97c7`  
		Last Modified: Fri, 20 Nov 2026 03:28:08 GMT  
		Size: 1.3 KB (1342 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea6fcb3173fa1852ace758fe967df2b57e493fb3480fa32698f94e518c0f5d34`  
		Last Modified: Fri, 20 Nov 2026 03:28:08 GMT  
		Size: 5.4 MB (5401729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3c8d5528fd56cd9075618489e2495a3e5ec4e9052af16964b3566ca7dba3795`  
		Last Modified: Fri, 20 Nov 2026 03:28:08 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06124ed43293d22484c7a9bdca9c2633df63abbb910341be6d1cc37bf3a2300b`  
		Last Modified: Fri, 20 Nov 2026 03:28:37 GMT  
		Size: 331.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20bd8ca7f6098f995367a5cefed43967e5271d31f25cb8f8ed46b61c5dda7051`  
		Last Modified: Fri, 20 Nov 2026 03:28:38 GMT  
		Size: 74.3 MB (74346530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afda960b5dec03a3076d2720098fb428e1ba6d1912b02f47a03d0d8c6455d4b8`  
		Last Modified: Fri, 20 Nov 2026 03:28:37 GMT  
		Size: 4.0 KB (4035 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa2d4b8f02ddb57301eabe4a9acaf46709af172116ca31e42a5c8a34176ff4cc`  
		Last Modified: Fri, 20 Nov 2026 03:28:37 GMT  
		Size: 8.5 KB (8492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mariadb:12-noble` - unknown; unknown

```console
$ docker pull mariadb@sha256:09ecdd2ed3becc0a5b28edf9ff023f43478400fed865a953ce7a95e8942b45a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4299201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7cdeae4bbf794abe40186e6545b929e94f7d7f91d4c05dbffb445038593987af`

```dockerfile
```

-	Layers:
	-	`sha256:552e074d15414b6128deaa55c0f6087d355bb50c0640826f18d4e4d3b6709411`  
		Last Modified: Fri, 20 Nov 2026 03:28:37 GMT  
		Size: 4.3 MB (4267731 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cb59f93655c4ea2d39e5ddde6bb16c2872b804596e65d0a4777a470b78701c7a`  
		Last Modified: Fri, 20 Nov 2026 03:28:37 GMT  
		Size: 31.5 KB (31470 bytes)  
		MIME: application/vnd.in-toto+json
