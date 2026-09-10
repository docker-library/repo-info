## `mariadb:11-noble`

```console
$ docker pull mariadb@sha256:2d2f4095530294735a857cfe22bb101e19b0849b416911c796ec4aa81b164a62
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
$ docker pull mariadb@sha256:a75328dabed542a3b704efe54086071cb3f99e6a640cc8a18d7273bc4de2e5e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.9 MB (103909961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f2521bbf6784049fa90445cae9e299e09d4ea083461b59f8fe17399094b6afb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mariadbd"]`

```dockerfile
# Mon, 07 Sep 2026 06:58:02 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:58:02 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:58:02 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:04 GMT
ADD file:de4937ce3dfc7c89f05f1503c52434f0a631ac84995f0df65eed0754e5c97d48 in / 
# Mon, 07 Sep 2026 06:58:04 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:32:58 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql --home-dir /var/lib/mysql && userdel --remove ubuntu # buildkit
# Wed, 09 Sep 2026 02:33:15 GMT
ENV GOSU_VERSION=1.19
# Wed, 09 Sep 2026 02:33:15 GMT
ARG GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
# Wed, 09 Sep 2026 02:33:15 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
RUN set -eux; 	apt-get update; 	DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends 		ca-certificates 		gpg 		gpgv 		libjemalloc2 		libtcmalloc-minimal4t64 		pwgen 		tzdata 		xz-utils 		zstd ; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get install -y --no-install-recommends 		dirmngr 		gpg-agent 		wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -q -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -q -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	GNUPGHOME="$(mktemp -d)"; 	export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --export "$GPG_KEYS" > /etc/apt/trusted.gpg.d/mariadb.gpg; 	if command -v gpgconf >/dev/null; then 		gpgconf --kill all; 	fi; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] ||	apt-mark manual $savedAptMark >/dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 09 Sep 2026 02:33:15 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 09 Sep 2026 02:33:15 GMT
ENV LANG=C.UTF-8
# Wed, 09 Sep 2026 02:33:15 GMT
LABEL org.opencontainers.image.authors=MariaDB Community org.opencontainers.image.title=MariaDB Database org.opencontainers.image.description=MariaDB Database for relational SQL org.opencontainers.image.documentation=https://hub.docker.com/_/mariadb/ org.opencontainers.image.base.name=docker.io/library/ubuntu:noble org.opencontainers.image.licenses=GPL-2.0 org.opencontainers.image.source=https://github.com/MariaDB/mariadb-docker org.opencontainers.image.vendor=MariaDB Community org.opencontainers.image.version=11.8.9 org.opencontainers.image.url=https://github.com/MariaDB/mariadb-docker
# Wed, 09 Sep 2026 02:33:15 GMT
ARG MARIADB_VERSION=1:11.8.9+maria~ubu2404
# Wed, 09 Sep 2026 02:33:15 GMT
ENV MARIADB_VERSION=1:11.8.9+maria~ubu2404
# Wed, 09 Sep 2026 02:33:15 GMT
ARG REPOSITORY=http://archive.mariadb.org/mariadb-11.8.9/repo/ubuntu/ noble main main/debug
# Wed, 09 Sep 2026 02:33:15 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:11.8.9+maria~ubu2404 REPOSITORY=http://archive.mariadb.org/mariadb-11.8.9/repo/ubuntu/ noble main main/debug
RUN set -e;	echo "deb ${REPOSITORY}" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb # buildkit
# Wed, 09 Sep 2026 02:33:38 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:11.8.9+maria~ubu2404 REPOSITORY=http://archive.mariadb.org/mariadb-11.8.9/repo/ubuntu/ noble main main/debug
RUN set -ex; 	{ 		echo "mariadb-server" mysql-server/root_password password 'unused'; 		echo "mariadb-server" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	apt-get update; 	mkdir -p /var/lib/mysql/mysql ; touch /var/lib/mysql/mysql/user.frm ; 	apt-get install -y --no-install-recommends mariadb-server="$MARIADB_VERSION" mariadb-backup socat 	; 	rm -rf /var/lib/apt/lists/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /run/mysqld; 	chmod 1777 /run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user\s)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user\s)/#&/'; 	printf "[mariadb]\nhost-cache-size=0\nskip-name-resolve\n" > /etc/mysql/mariadb.conf.d/05-skipcache.cnf; 	if [ -L /etc/mysql/my.cnf ]; then 		sed -i -e '/includedir/ {N;s/\(.*\)\n\(.*\)/\n\2\n\1/}' /etc/mysql/mariadb.cnf; 	fi # buildkit
# Wed, 09 Sep 2026 02:33:38 GMT
VOLUME [/var/lib/mysql]
# Wed, 09 Sep 2026 02:33:38 GMT
COPY healthcheck.sh /usr/local/bin/healthcheck.sh # buildkit
# Wed, 09 Sep 2026 02:33:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 09 Sep 2026 02:33:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 09 Sep 2026 02:33:38 GMT
EXPOSE map[3306/tcp:{}]
# Wed, 09 Sep 2026 02:33:38 GMT
CMD ["mariadbd"]
```

-	Layers:
	-	`sha256:e51aee9c82ec5dd5ba2add49c45c6d85d460512757e2615b69bcdf9469c7cb58`  
		Last Modified: Mon, 07 Sep 2026 07:56:53 GMT  
		Size: 29.8 MB (29763253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd6bceec58bb9bef0a9fbd8b9d99d218fc47be1f731fd3aa333deb8f917e6f59`  
		Last Modified: Wed, 09 Sep 2026 02:33:52 GMT  
		Size: 1.3 KB (1339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:192012903bb884b6c4b6bc160f05b4144f9359b9b4deaa4836f690252460016a`  
		Last Modified: Wed, 09 Sep 2026 02:33:52 GMT  
		Size: 5.2 MB (5245592 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:456db37d4ee33cfdad09a72612ab0b45178d5c7564399a4007e940e2e5964289`  
		Last Modified: Wed, 09 Sep 2026 02:33:52 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e77bf9a419ba9b947d048edd2637d5735b95eb53cd89873ba2ee0b749082a481`  
		Last Modified: Wed, 09 Sep 2026 02:33:52 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bf69bd0829b58b6636d9f92c59c18abe7d0ff5c3bb4601d799eb49527ef520d`  
		Last Modified: Wed, 09 Sep 2026 02:33:55 GMT  
		Size: 68.9 MB (68886801 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d71bf9f420bbdae9de3864e421f4030236c660fbbabfeb2dfc48dd96d468b15`  
		Last Modified: Wed, 09 Sep 2026 02:33:53 GMT  
		Size: 4.0 KB (4033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5189c691e6dbde09431ef287aaea028bdc1dc5cdec0f7bd5c8d10a4be399054`  
		Last Modified: Wed, 09 Sep 2026 02:33:53 GMT  
		Size: 8.5 KB (8493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mariadb:11-noble` - unknown; unknown

```console
$ docker pull mariadb@sha256:583e17ccca8890d91987cf098b1e0ebea2af28a40abf25e71229fc545ab02ff9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4288616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ace18e39efaabd41a02fead33e90fcd521f106d6c5aae0687e9cfac63d46e8d7`

```dockerfile
```

-	Layers:
	-	`sha256:06b6321e66c83d8b76ff5d960a49ade3cb79ed24447a3af2c9d68f44b75904cb`  
		Last Modified: Wed, 09 Sep 2026 02:33:52 GMT  
		Size: 4.3 MB (4257761 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e1e603d2a714dc6823fb82d523aa7f8dba35d1a8a01079c96c76bba50042e3cd`  
		Last Modified: Wed, 09 Sep 2026 02:33:52 GMT  
		Size: 30.9 KB (30855 bytes)  
		MIME: application/vnd.in-toto+json

### `mariadb:11-noble` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:9249261993db977032af3b0ff7369af07ea13216f61d77b30a243ccb2b2ffc04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.0 MB (102047347 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40f7a37d7e9313945e498c75755f311a08225b87bb8629da6e008b542dc3000b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mariadbd"]`

```dockerfile
# Mon, 07 Sep 2026 06:57:57 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:57:57 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:57:57 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:01 GMT
ADD file:06e064cbfe0750594affea730437107320bdf1e36232c304b900eaa55f88a633 in / 
# Mon, 07 Sep 2026 06:58:01 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:29:39 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql --home-dir /var/lib/mysql && userdel --remove ubuntu # buildkit
# Wed, 09 Sep 2026 02:29:58 GMT
ENV GOSU_VERSION=1.19
# Wed, 09 Sep 2026 02:29:58 GMT
ARG GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
# Wed, 09 Sep 2026 02:29:58 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
RUN set -eux; 	apt-get update; 	DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends 		ca-certificates 		gpg 		gpgv 		libjemalloc2 		libtcmalloc-minimal4t64 		pwgen 		tzdata 		xz-utils 		zstd ; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get install -y --no-install-recommends 		dirmngr 		gpg-agent 		wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -q -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -q -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	GNUPGHOME="$(mktemp -d)"; 	export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --export "$GPG_KEYS" > /etc/apt/trusted.gpg.d/mariadb.gpg; 	if command -v gpgconf >/dev/null; then 		gpgconf --kill all; 	fi; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] ||	apt-mark manual $savedAptMark >/dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 09 Sep 2026 02:29:58 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 09 Sep 2026 02:29:58 GMT
ENV LANG=C.UTF-8
# Wed, 09 Sep 2026 02:29:58 GMT
LABEL org.opencontainers.image.authors=MariaDB Community org.opencontainers.image.title=MariaDB Database org.opencontainers.image.description=MariaDB Database for relational SQL org.opencontainers.image.documentation=https://hub.docker.com/_/mariadb/ org.opencontainers.image.base.name=docker.io/library/ubuntu:noble org.opencontainers.image.licenses=GPL-2.0 org.opencontainers.image.source=https://github.com/MariaDB/mariadb-docker org.opencontainers.image.vendor=MariaDB Community org.opencontainers.image.version=11.8.9 org.opencontainers.image.url=https://github.com/MariaDB/mariadb-docker
# Wed, 09 Sep 2026 02:29:58 GMT
ARG MARIADB_VERSION=1:11.8.9+maria~ubu2404
# Wed, 09 Sep 2026 02:29:58 GMT
ENV MARIADB_VERSION=1:11.8.9+maria~ubu2404
# Wed, 09 Sep 2026 02:29:58 GMT
ARG REPOSITORY=http://archive.mariadb.org/mariadb-11.8.9/repo/ubuntu/ noble main main/debug
# Wed, 09 Sep 2026 02:29:58 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:11.8.9+maria~ubu2404 REPOSITORY=http://archive.mariadb.org/mariadb-11.8.9/repo/ubuntu/ noble main main/debug
RUN set -e;	echo "deb ${REPOSITORY}" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb # buildkit
# Wed, 09 Sep 2026 02:30:16 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:11.8.9+maria~ubu2404 REPOSITORY=http://archive.mariadb.org/mariadb-11.8.9/repo/ubuntu/ noble main main/debug
RUN set -ex; 	{ 		echo "mariadb-server" mysql-server/root_password password 'unused'; 		echo "mariadb-server" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	apt-get update; 	mkdir -p /var/lib/mysql/mysql ; touch /var/lib/mysql/mysql/user.frm ; 	apt-get install -y --no-install-recommends mariadb-server="$MARIADB_VERSION" mariadb-backup socat 	; 	rm -rf /var/lib/apt/lists/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /run/mysqld; 	chmod 1777 /run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user\s)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user\s)/#&/'; 	printf "[mariadb]\nhost-cache-size=0\nskip-name-resolve\n" > /etc/mysql/mariadb.conf.d/05-skipcache.cnf; 	if [ -L /etc/mysql/my.cnf ]; then 		sed -i -e '/includedir/ {N;s/\(.*\)\n\(.*\)/\n\2\n\1/}' /etc/mysql/mariadb.cnf; 	fi # buildkit
# Wed, 09 Sep 2026 02:30:16 GMT
VOLUME [/var/lib/mysql]
# Wed, 09 Sep 2026 02:30:16 GMT
COPY healthcheck.sh /usr/local/bin/healthcheck.sh # buildkit
# Wed, 09 Sep 2026 02:30:16 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 09 Sep 2026 02:30:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 09 Sep 2026 02:30:16 GMT
EXPOSE map[3306/tcp:{}]
# Wed, 09 Sep 2026 02:30:16 GMT
CMD ["mariadbd"]
```

-	Layers:
	-	`sha256:9332cde1e07015fd0f14e769fc74ea901a957e3f62a76de66638f99854867dd2`  
		Last Modified: Mon, 07 Sep 2026 07:57:03 GMT  
		Size: 28.9 MB (28940015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6d4c9debeb7502db7412c2f4a662bc144296648e2d8a3f629a10bd537e6aaee`  
		Last Modified: Wed, 09 Sep 2026 02:30:31 GMT  
		Size: 1.3 KB (1341 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd2e274aac39a29ae19a05cdc4536dcf76e4ad601b243aa7add2416082af95fb`  
		Last Modified: Wed, 09 Sep 2026 02:30:31 GMT  
		Size: 5.1 MB (5055545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f4565b35622711317e9b96646ef49f5813bcc3518c086eaf6f4bc4f6b27c882`  
		Last Modified: Wed, 09 Sep 2026 02:30:31 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:470eead12833aae4bf2e75886c0f15eec0a1f57fd33ce9324dfa1b48e3f3e177`  
		Last Modified: Wed, 09 Sep 2026 02:30:31 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d452ce253e6bfb168595772fc58c92fd53d36891ef7517e557b22054bf39ffc`  
		Last Modified: Wed, 09 Sep 2026 02:30:33 GMT  
		Size: 68.0 MB (68037477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8777a1dd5344a993116ab12c8d0c01952f04481782f60ed52dbb3ba841087ddb`  
		Last Modified: Wed, 09 Sep 2026 02:30:32 GMT  
		Size: 4.0 KB (4031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4acbd02ea6b3cdf6182ca43fc5be6d7da9de3cc8a5e925956d1015ef1edd4d1`  
		Last Modified: Wed, 09 Sep 2026 02:30:32 GMT  
		Size: 8.5 KB (8490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mariadb:11-noble` - unknown; unknown

```console
$ docker pull mariadb@sha256:591cd56640338cc4a786d36788f87f386a7bf2b1ef3f4cbe709427830ea55e3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4296056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84a4791da721754a84a96a9e531a10e6d5d45691856d840659f2d4cb3503964e`

```dockerfile
```

-	Layers:
	-	`sha256:cfc95ca89f48e9ec840ec05fbf63ff678d648bb11d55dbe7151bea578331da56`  
		Last Modified: Wed, 09 Sep 2026 02:30:31 GMT  
		Size: 4.3 MB (4265014 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1ddee6fedd34791f8966fdf99a0d11cd3929d7106d496de86fe967dbd76e5d90`  
		Last Modified: Wed, 09 Sep 2026 02:30:31 GMT  
		Size: 31.0 KB (31042 bytes)  
		MIME: application/vnd.in-toto+json

### `mariadb:11-noble` - linux; ppc64le

```console
$ docker pull mariadb@sha256:667c012dfdf4005039486c7744379155e9b13be38389d36bde5c59c0d1b5e469
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.8 MB (113829039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59dd8c2ac268512f0912b382af31c7f40bd5e0fd9c23bb16254e287f70da2d5a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mariadbd"]`

```dockerfile
# Mon, 07 Sep 2026 07:38:39 GMT
ARG RELEASE
# Mon, 07 Sep 2026 07:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 07:38:39 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 07:38:43 GMT
ADD file:b613d8cbbfcdd39316d0cc2ab20f713e42c2ffc939072314f82208cec1f794df in / 
# Mon, 07 Sep 2026 07:38:44 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 04:14:18 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql --home-dir /var/lib/mysql && userdel --remove ubuntu # buildkit
# Wed, 09 Sep 2026 04:15:40 GMT
ENV GOSU_VERSION=1.19
# Wed, 09 Sep 2026 04:15:40 GMT
ARG GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
# Wed, 09 Sep 2026 04:15:40 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
RUN set -eux; 	apt-get update; 	DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends 		ca-certificates 		gpg 		gpgv 		libjemalloc2 		libtcmalloc-minimal4t64 		pwgen 		tzdata 		xz-utils 		zstd ; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get install -y --no-install-recommends 		dirmngr 		gpg-agent 		wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -q -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -q -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	GNUPGHOME="$(mktemp -d)"; 	export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --export "$GPG_KEYS" > /etc/apt/trusted.gpg.d/mariadb.gpg; 	if command -v gpgconf >/dev/null; then 		gpgconf --kill all; 	fi; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] ||	apt-mark manual $savedAptMark >/dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 09 Sep 2026 04:15:41 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 09 Sep 2026 04:15:41 GMT
ENV LANG=C.UTF-8
# Wed, 09 Sep 2026 04:15:41 GMT
LABEL org.opencontainers.image.authors=MariaDB Community org.opencontainers.image.title=MariaDB Database org.opencontainers.image.description=MariaDB Database for relational SQL org.opencontainers.image.documentation=https://hub.docker.com/_/mariadb/ org.opencontainers.image.base.name=docker.io/library/ubuntu:noble org.opencontainers.image.licenses=GPL-2.0 org.opencontainers.image.source=https://github.com/MariaDB/mariadb-docker org.opencontainers.image.vendor=MariaDB Community org.opencontainers.image.version=11.8.9 org.opencontainers.image.url=https://github.com/MariaDB/mariadb-docker
# Wed, 09 Sep 2026 04:15:41 GMT
ARG MARIADB_VERSION=1:11.8.9+maria~ubu2404
# Wed, 09 Sep 2026 04:15:41 GMT
ENV MARIADB_VERSION=1:11.8.9+maria~ubu2404
# Wed, 09 Sep 2026 04:15:41 GMT
ARG REPOSITORY=http://archive.mariadb.org/mariadb-11.8.9/repo/ubuntu/ noble main main/debug
# Wed, 09 Sep 2026 04:19:10 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:11.8.9+maria~ubu2404 REPOSITORY=http://archive.mariadb.org/mariadb-11.8.9/repo/ubuntu/ noble main main/debug
RUN set -e;	echo "deb ${REPOSITORY}" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb # buildkit
# Wed, 09 Sep 2026 04:20:55 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:11.8.9+maria~ubu2404 REPOSITORY=http://archive.mariadb.org/mariadb-11.8.9/repo/ubuntu/ noble main main/debug
RUN set -ex; 	{ 		echo "mariadb-server" mysql-server/root_password password 'unused'; 		echo "mariadb-server" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	apt-get update; 	mkdir -p /var/lib/mysql/mysql ; touch /var/lib/mysql/mysql/user.frm ; 	apt-get install -y --no-install-recommends mariadb-server="$MARIADB_VERSION" mariadb-backup socat 	; 	rm -rf /var/lib/apt/lists/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /run/mysqld; 	chmod 1777 /run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user\s)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user\s)/#&/'; 	printf "[mariadb]\nhost-cache-size=0\nskip-name-resolve\n" > /etc/mysql/mariadb.conf.d/05-skipcache.cnf; 	if [ -L /etc/mysql/my.cnf ]; then 		sed -i -e '/includedir/ {N;s/\(.*\)\n\(.*\)/\n\2\n\1/}' /etc/mysql/mariadb.cnf; 	fi # buildkit
# Wed, 09 Sep 2026 04:20:55 GMT
VOLUME [/var/lib/mysql]
# Wed, 09 Sep 2026 04:20:59 GMT
COPY healthcheck.sh /usr/local/bin/healthcheck.sh # buildkit
# Wed, 09 Sep 2026 04:20:59 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 09 Sep 2026 04:20:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 09 Sep 2026 04:20:59 GMT
EXPOSE map[3306/tcp:{}]
# Wed, 09 Sep 2026 04:20:59 GMT
CMD ["mariadbd"]
```

-	Layers:
	-	`sha256:4b9f3660b529a1e81f04825056359c345d486cfb05010302b88737a58d21db86`  
		Last Modified: Mon, 07 Sep 2026 07:57:18 GMT  
		Size: 34.4 MB (34376879 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6e66688a6f92144478600c99f9f1f58fe7df3ef304045f66145f7e7d0250e23`  
		Last Modified: Wed, 09 Sep 2026 04:18:46 GMT  
		Size: 1.3 KB (1345 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2862d80ef9fb5000453c8474c6c50401619abf92f79b79f50a21a76c347d85c7`  
		Last Modified: Wed, 09 Sep 2026 04:18:47 GMT  
		Size: 5.9 MB (5882437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:060585335b3d06d52fb768dd1964e4353b93cfc187b7449c84d9cfc04fcd853f`  
		Last Modified: Wed, 09 Sep 2026 04:18:46 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69a2477bddefe5e5c308b682f5533607ceb036599a5f581da11caac16187a041`  
		Last Modified: Wed, 09 Sep 2026 04:22:20 GMT  
		Size: 336.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26ad4cd44ff0baf98875a17cdc5ffa0b564df74dd4a1c7dd741cdc0d1d84f96d`  
		Last Modified: Wed, 09 Sep 2026 04:22:22 GMT  
		Size: 73.6 MB (73555402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:828bdef6ce0644618c1bb60b579715a1b3eb3a66181937c938d9dcd6f03cdcce`  
		Last Modified: Wed, 09 Sep 2026 04:22:20 GMT  
		Size: 4.0 KB (4034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1e390276fa1d035b5f1d545bbe97ce558ac3b6b1b94dc2810c0e8adddb20e9a`  
		Last Modified: Wed, 09 Sep 2026 04:22:20 GMT  
		Size: 8.5 KB (8492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mariadb:11-noble` - unknown; unknown

```console
$ docker pull mariadb@sha256:3bd5188c8cb67d41e754d145aca4acdf30c8a076cc8eed92e8774544d59080e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4296603 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb3409970c25690da6122f92d9fe508101ab10ae1b5a2f7084e710e519d3b6df`

```dockerfile
```

-	Layers:
	-	`sha256:b3c392280186119400beea5aecc4aa5050346fcc0fbcddbfe90a0d14cff9c15b`  
		Last Modified: Wed, 09 Sep 2026 04:22:20 GMT  
		Size: 4.3 MB (4265684 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8b6568b70343dddb1562b1f463fd7e0189f0a66ece92c89c052a1d706aada0ed`  
		Last Modified: Wed, 09 Sep 2026 04:22:20 GMT  
		Size: 30.9 KB (30919 bytes)  
		MIME: application/vnd.in-toto+json

### `mariadb:11-noble` - linux; s390x

```console
$ docker pull mariadb@sha256:fef2c6f0f82a516738e1088ad98e7bff2b50df1c849469751ed0926ee307c72a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.2 MB (108171497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1343217e752b2608f7007115632946fd08b81749969b0d2f3ef0f032d2525942`
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
LABEL org.opencontainers.image.authors=MariaDB Community org.opencontainers.image.title=MariaDB Database org.opencontainers.image.description=MariaDB Database for relational SQL org.opencontainers.image.documentation=https://hub.docker.com/_/mariadb/ org.opencontainers.image.base.name=docker.io/library/ubuntu:noble org.opencontainers.image.licenses=GPL-2.0 org.opencontainers.image.source=https://github.com/MariaDB/mariadb-docker org.opencontainers.image.vendor=MariaDB Community org.opencontainers.image.version=11.8.9 org.opencontainers.image.url=https://github.com/MariaDB/mariadb-docker
# Mon, 24 Aug 2026 18:03:30 GMT
ARG MARIADB_VERSION=1:11.8.9+maria~ubu2404
# Mon, 24 Aug 2026 18:03:30 GMT
ENV MARIADB_VERSION=1:11.8.9+maria~ubu2404
# Mon, 24 Aug 2026 18:03:30 GMT
ARG REPOSITORY=http://archive.mariadb.org/mariadb-11.8.9/repo/ubuntu/ noble main main/debug
# Mon, 24 Aug 2026 18:05:05 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:11.8.9+maria~ubu2404 REPOSITORY=http://archive.mariadb.org/mariadb-11.8.9/repo/ubuntu/ noble main main/debug
RUN set -e;	echo "deb ${REPOSITORY}" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb # buildkit
# Mon, 24 Aug 2026 18:06:13 GMT
# ARGS: GPG_KEYS=177F4010FE56CA3336300305F1656F24C74CD1D8 MARIADB_VERSION=1:11.8.9+maria~ubu2404 REPOSITORY=http://archive.mariadb.org/mariadb-11.8.9/repo/ubuntu/ noble main main/debug
RUN set -ex; 	{ 		echo "mariadb-server" mysql-server/root_password password 'unused'; 		echo "mariadb-server" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	apt-get update; 	mkdir -p /var/lib/mysql/mysql ; touch /var/lib/mysql/mysql/user.frm ; 	apt-get install -y --no-install-recommends mariadb-server="$MARIADB_VERSION" mariadb-backup socat 	; 	rm -rf /var/lib/apt/lists/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /run/mysqld; 	chmod 1777 /run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user\s)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user\s)/#&/'; 	printf "[mariadb]\nhost-cache-size=0\nskip-name-resolve\n" > /etc/mysql/mariadb.conf.d/05-skipcache.cnf; 	if [ -L /etc/mysql/my.cnf ]; then 		sed -i -e '/includedir/ {N;s/\(.*\)\n\(.*\)/\n\2\n\1/}' /etc/mysql/mariadb.cnf; 	fi # buildkit
# Mon, 24 Aug 2026 18:06:13 GMT
VOLUME [/var/lib/mysql]
# Mon, 24 Aug 2026 18:06:14 GMT
COPY healthcheck.sh /usr/local/bin/healthcheck.sh # buildkit
# Mon, 24 Aug 2026 18:06:15 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 24 Aug 2026 18:06:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 24 Aug 2026 18:06:15 GMT
EXPOSE map[3306/tcp:{}]
# Mon, 24 Aug 2026 18:06:15 GMT
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
	-	`sha256:43666bd23fc78c1f409f722f85d437781a41b4b8c4e56896dd7452a1ae29ae5e`  
		Last Modified: Mon, 24 Aug 2026 18:06:57 GMT  
		Size: 336.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47e4cd23e0bb52457b77078ffcae25b2eaaa12d668deb50712fc65f043eede62`  
		Last Modified: Mon, 24 Aug 2026 18:06:59 GMT  
		Size: 72.8 MB (72818976 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9c918bcd3f82d8deb7ac1721d64a3348640bdb9d92f2c318a809b1a4675528d`  
		Last Modified: Mon, 24 Aug 2026 18:06:57 GMT  
		Size: 4.0 KB (4037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cae781f9f41ee83dd92403d776fa4e68e77adb4187823f35dcf96bc56250670a`  
		Last Modified: Mon, 24 Aug 2026 18:06:57 GMT  
		Size: 8.5 KB (8493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mariadb:11-noble` - unknown; unknown

```console
$ docker pull mariadb@sha256:df2d7bbcf79ba06b12364b0680b0fdc0002b3f7ce57dd59dcd151cd8f4158610
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4290321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2f54c63841baf3172f45560cbcffe8c76c2d476670ecfdf0c6698a752a84a17`

```dockerfile
```

-	Layers:
	-	`sha256:bcd876f3b06a5804d551b3a3243f76578de58ab18548ceb12b3be300621fead1`  
		Last Modified: Mon, 24 Aug 2026 18:06:57 GMT  
		Size: 4.3 MB (4259466 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:613b3d42b9ab7407113fc1e8aedc84144a2eb868eee3bce77ef2b5826f6751da`  
		Last Modified: Mon, 24 Aug 2026 18:06:57 GMT  
		Size: 30.9 KB (30855 bytes)  
		MIME: application/vnd.in-toto+json
