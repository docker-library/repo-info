<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `mysql`

-	[`mysql:26`](#mysql26)
-	[`mysql:26-oracle`](#mysql26-oracle)
-	[`mysql:26-oraclelinux9`](#mysql26-oraclelinux9)
-	[`mysql:26.7`](#mysql267)
-	[`mysql:26.7-oracle`](#mysql267-oracle)
-	[`mysql:26.7-oraclelinux9`](#mysql267-oraclelinux9)
-	[`mysql:26.7.0`](#mysql2670)
-	[`mysql:26.7.0-oracle`](#mysql2670-oracle)
-	[`mysql:26.7.0-oraclelinux9`](#mysql2670-oraclelinux9)
-	[`mysql:8`](#mysql8)
-	[`mysql:8-oracle`](#mysql8-oracle)
-	[`mysql:8-oraclelinux9`](#mysql8-oraclelinux9)
-	[`mysql:8.4`](#mysql84)
-	[`mysql:8.4-oracle`](#mysql84-oracle)
-	[`mysql:8.4-oraclelinux9`](#mysql84-oraclelinux9)
-	[`mysql:8.4.11`](#mysql8411)
-	[`mysql:8.4.11-oracle`](#mysql8411-oracle)
-	[`mysql:8.4.11-oraclelinux9`](#mysql8411-oraclelinux9)
-	[`mysql:9`](#mysql9)
-	[`mysql:9-oracle`](#mysql9-oracle)
-	[`mysql:9-oraclelinux9`](#mysql9-oraclelinux9)
-	[`mysql:9.7`](#mysql97)
-	[`mysql:9.7-oracle`](#mysql97-oracle)
-	[`mysql:9.7-oraclelinux9`](#mysql97-oraclelinux9)
-	[`mysql:9.7.2`](#mysql972)
-	[`mysql:9.7.2-oracle`](#mysql972-oracle)
-	[`mysql:9.7.2-oraclelinux9`](#mysql972-oraclelinux9)
-	[`mysql:innovation`](#mysqlinnovation)
-	[`mysql:innovation-oracle`](#mysqlinnovation-oracle)
-	[`mysql:innovation-oraclelinux9`](#mysqlinnovation-oraclelinux9)
-	[`mysql:latest`](#mysqllatest)
-	[`mysql:lts`](#mysqllts)
-	[`mysql:lts-oracle`](#mysqllts-oracle)
-	[`mysql:lts-oraclelinux9`](#mysqllts-oraclelinux9)
-	[`mysql:oracle`](#mysqloracle)
-	[`mysql:oraclelinux9`](#mysqloraclelinux9)

## `mysql:26`

```console
$ docker pull mysql@sha256:4b40b165f348c3a1d959a222bd6c7773503f202554fd140db3de74ed9136b7b8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:26` - linux; amd64

```console
$ docker pull mysql@sha256:0cf09253b84d0b32ec751c0342258e1efec1892443e5d0dd58239fb8b8eaa63e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.3 MB (272344574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:910ef46e093997328100b40b32fffe94ebca0b5ab1b1591e951d7b465e9b212e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 08 Sep 2026 18:58:50 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 08 Sep 2026 18:58:50 GMT
CMD ["/bin/bash"]
# Tue, 08 Sep 2026 19:12:37 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 08 Sep 2026 19:12:39 GMT
ENV GOSU_VERSION=1.19
# Tue, 08 Sep 2026 19:12:39 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 08 Sep 2026 19:13:07 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 08 Sep 2026 19:13:08 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 08 Sep 2026 19:13:08 GMT
ENV MYSQL_MAJOR=innovation
# Tue, 08 Sep 2026 19:13:08 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Tue, 08 Sep 2026 19:13:08 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 08 Sep 2026 19:13:39 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 08 Sep 2026 19:13:39 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 08 Sep 2026 19:13:39 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Tue, 08 Sep 2026 19:14:21 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 08 Sep 2026 19:14:21 GMT
VOLUME [/var/lib/mysql]
# Tue, 08 Sep 2026 19:14:21 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 08 Sep 2026 19:14:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 08 Sep 2026 19:14:21 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 08 Sep 2026 19:14:21 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:4bb6eac2f26a5221d1c656c424daeae066dc3efa0be69499880b834d8dbfbd84`  
		Last Modified: Tue, 08 Sep 2026 18:59:01 GMT  
		Size: 47.9 MB (47931580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc90eb5f505f7c2417eee66e3257d1016d164ea46585caa235979cdf9bd6ab73`  
		Last Modified: Tue, 08 Sep 2026 19:14:52 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a78411c2d8161f9b9429975810b3b5dff71cbd89a0148b66a3f8c536fee9315f`  
		Last Modified: Tue, 08 Sep 2026 19:14:53 GMT  
		Size: 783.6 KB (783558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19564ecb42922de74e35ba641d2fb08e184ebb18b3f09d0d4ee6f6712581727b`  
		Last Modified: Tue, 08 Sep 2026 19:14:53 GMT  
		Size: 6.2 MB (6193089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49dc6bddddc7cc625377d5df1245a5fb026beac5efdd63ef6e25b563ecca537c`  
		Last Modified: Tue, 08 Sep 2026 19:14:53 GMT  
		Size: 2.6 KB (2609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:430c7065f1d589bdb7da26b9859bc9f20e8b56d6303c2cffc7f3a849b54983f6`  
		Last Modified: Tue, 08 Sep 2026 19:14:53 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d12dddcbdc10c994559080258cda9fdf8511ffec919b220a646556a4a849072`  
		Last Modified: Tue, 08 Sep 2026 19:14:56 GMT  
		Size: 57.5 MB (57454018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa5b47801f3bb551f892160e0b69175df8fcbea4b8f128c712a934726190785d`  
		Last Modified: Tue, 08 Sep 2026 19:14:54 GMT  
		Size: 326.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:827e6b736dd9d450892a30eb5a95c0c4cb45fbdf8ea237df78102751abfef628`  
		Last Modified: Tue, 08 Sep 2026 19:14:58 GMT  
		Size: 160.0 MB (159972946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d1d44554de144e8cd989547b5a2dfb36e97e37eb00032e7be62888bca76d5c1`  
		Last Modified: Tue, 08 Sep 2026 19:14:55 GMT  
		Size: 5.2 KB (5224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26` - unknown; unknown

```console
$ docker pull mysql@sha256:a75775650173f13500d672d4d073b08ae8d20d46991136715abf3870682f3c86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17452691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c89132a00811bf83d2cc588fe9c2898f0cca20c6922a692c0e21e50a8e2335f`

```dockerfile
```

-	Layers:
	-	`sha256:f808f33758cbaa0098097db77726ff7cd992a39cf7a95d8bfde42c5be3cebf3a`  
		Last Modified: Tue, 08 Sep 2026 19:14:53 GMT  
		Size: 17.4 MB (17417393 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7518911e256d5236a3275979046f1ad3094b3027975d3c3ace300949aa89eb19`  
		Last Modified: Tue, 08 Sep 2026 19:14:52 GMT  
		Size: 35.3 KB (35298 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:26` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:f7b3452e2f5ee773e9fd4f9988e7ea807d879acd3b52961607924dd17b07d9ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.7 MB (268716373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7962d59d8b8dc9cf17078c2286222195108936478af77248ad804a60e845f632`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 08 Sep 2026 18:57:57 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 08 Sep 2026 18:57:57 GMT
CMD ["/bin/bash"]
# Tue, 08 Sep 2026 19:08:29 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 08 Sep 2026 19:08:31 GMT
ENV GOSU_VERSION=1.19
# Tue, 08 Sep 2026 19:08:31 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 08 Sep 2026 19:09:08 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 08 Sep 2026 19:09:09 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 08 Sep 2026 19:09:09 GMT
ENV MYSQL_MAJOR=innovation
# Tue, 08 Sep 2026 19:09:09 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Tue, 08 Sep 2026 19:09:09 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 08 Sep 2026 19:09:50 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 08 Sep 2026 19:09:50 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 08 Sep 2026 19:09:50 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Tue, 08 Sep 2026 19:10:42 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 08 Sep 2026 19:10:42 GMT
VOLUME [/var/lib/mysql]
# Tue, 08 Sep 2026 19:10:42 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 08 Sep 2026 19:10:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 08 Sep 2026 19:10:42 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 08 Sep 2026 19:10:42 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:43c5deee1c317416925b86b1f2e78b730d2819023376f79b4de9f871323951a3`  
		Last Modified: Tue, 08 Sep 2026 18:58:08 GMT  
		Size: 46.5 MB (46477029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb980a8434e3c4600e45827e85201dcb117fa105cc497695640216f831384390`  
		Last Modified: Tue, 08 Sep 2026 19:11:18 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19c8bf571c7b733ea038259eac861768ae839db6d07c3188d54dc617943033e2`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 737.5 KB (737526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a017510daff3c2f3381e365accaa66eab52f251dc93a013cff3ddc4062c62bfe`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 5.8 MB (5815802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2f8471efd5dddf293b43b461dbe2e803948535cfa581fd02300a0764d47d7a6`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:101bfb51b57e17c638fb10e44f924f41eb5404b23677c7a9acca93868921e848`  
		Last Modified: Tue, 08 Sep 2026 19:11:20 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b549fe7114eb3dfbf6c84556f2f6e3408fc18ae4e25670891a404a451a31b0af`  
		Last Modified: Tue, 08 Sep 2026 19:11:22 GMT  
		Size: 57.4 MB (57434910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98cbda40669b120f5206b5bea13286fc329791c1646806a2dddd84cc214f3819`  
		Last Modified: Tue, 08 Sep 2026 19:11:20 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf3502e763277be8a4dada567b8594b93828c204a5f6749c1b094d09e2faad5c`  
		Last Modified: Tue, 08 Sep 2026 19:11:24 GMT  
		Size: 158.2 MB (158241725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:646bd661ef31ead80e724c18cefe7a9571656c1c72aeb850d1af8f074e002ced`  
		Last Modified: Tue, 08 Sep 2026 19:11:21 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26` - unknown; unknown

```console
$ docker pull mysql@sha256:d45a7b45b6517cfb0f68c958649e4a63344ec42b111affbb3e3d3ea1a4450629
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17451504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e9c9306bb030ca92183cac533c8d6b5bee52915196be1a72c2d3e06cd21e8ec`

```dockerfile
```

-	Layers:
	-	`sha256:2614b75d327a3e726d19cb86e7a57fbf58085188c0e4955bd960163b7816275a`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 17.4 MB (17415866 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:083b04283ce84ef68972ce949eb4e3acbe53e3b555a8d36057213d7eadb8f865`  
		Last Modified: Tue, 08 Sep 2026 19:11:18 GMT  
		Size: 35.6 KB (35638 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:26-oracle`

```console
$ docker pull mysql@sha256:4b40b165f348c3a1d959a222bd6c7773503f202554fd140db3de74ed9136b7b8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:26-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:0cf09253b84d0b32ec751c0342258e1efec1892443e5d0dd58239fb8b8eaa63e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.3 MB (272344574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:910ef46e093997328100b40b32fffe94ebca0b5ab1b1591e951d7b465e9b212e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 08 Sep 2026 18:58:50 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 08 Sep 2026 18:58:50 GMT
CMD ["/bin/bash"]
# Tue, 08 Sep 2026 19:12:37 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 08 Sep 2026 19:12:39 GMT
ENV GOSU_VERSION=1.19
# Tue, 08 Sep 2026 19:12:39 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 08 Sep 2026 19:13:07 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 08 Sep 2026 19:13:08 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 08 Sep 2026 19:13:08 GMT
ENV MYSQL_MAJOR=innovation
# Tue, 08 Sep 2026 19:13:08 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Tue, 08 Sep 2026 19:13:08 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 08 Sep 2026 19:13:39 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 08 Sep 2026 19:13:39 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 08 Sep 2026 19:13:39 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Tue, 08 Sep 2026 19:14:21 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 08 Sep 2026 19:14:21 GMT
VOLUME [/var/lib/mysql]
# Tue, 08 Sep 2026 19:14:21 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 08 Sep 2026 19:14:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 08 Sep 2026 19:14:21 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 08 Sep 2026 19:14:21 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:4bb6eac2f26a5221d1c656c424daeae066dc3efa0be69499880b834d8dbfbd84`  
		Last Modified: Tue, 08 Sep 2026 18:59:01 GMT  
		Size: 47.9 MB (47931580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc90eb5f505f7c2417eee66e3257d1016d164ea46585caa235979cdf9bd6ab73`  
		Last Modified: Tue, 08 Sep 2026 19:14:52 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a78411c2d8161f9b9429975810b3b5dff71cbd89a0148b66a3f8c536fee9315f`  
		Last Modified: Tue, 08 Sep 2026 19:14:53 GMT  
		Size: 783.6 KB (783558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19564ecb42922de74e35ba641d2fb08e184ebb18b3f09d0d4ee6f6712581727b`  
		Last Modified: Tue, 08 Sep 2026 19:14:53 GMT  
		Size: 6.2 MB (6193089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49dc6bddddc7cc625377d5df1245a5fb026beac5efdd63ef6e25b563ecca537c`  
		Last Modified: Tue, 08 Sep 2026 19:14:53 GMT  
		Size: 2.6 KB (2609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:430c7065f1d589bdb7da26b9859bc9f20e8b56d6303c2cffc7f3a849b54983f6`  
		Last Modified: Tue, 08 Sep 2026 19:14:53 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d12dddcbdc10c994559080258cda9fdf8511ffec919b220a646556a4a849072`  
		Last Modified: Tue, 08 Sep 2026 19:14:56 GMT  
		Size: 57.5 MB (57454018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa5b47801f3bb551f892160e0b69175df8fcbea4b8f128c712a934726190785d`  
		Last Modified: Tue, 08 Sep 2026 19:14:54 GMT  
		Size: 326.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:827e6b736dd9d450892a30eb5a95c0c4cb45fbdf8ea237df78102751abfef628`  
		Last Modified: Tue, 08 Sep 2026 19:14:58 GMT  
		Size: 160.0 MB (159972946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d1d44554de144e8cd989547b5a2dfb36e97e37eb00032e7be62888bca76d5c1`  
		Last Modified: Tue, 08 Sep 2026 19:14:55 GMT  
		Size: 5.2 KB (5224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:a75775650173f13500d672d4d073b08ae8d20d46991136715abf3870682f3c86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17452691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c89132a00811bf83d2cc588fe9c2898f0cca20c6922a692c0e21e50a8e2335f`

```dockerfile
```

-	Layers:
	-	`sha256:f808f33758cbaa0098097db77726ff7cd992a39cf7a95d8bfde42c5be3cebf3a`  
		Last Modified: Tue, 08 Sep 2026 19:14:53 GMT  
		Size: 17.4 MB (17417393 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7518911e256d5236a3275979046f1ad3094b3027975d3c3ace300949aa89eb19`  
		Last Modified: Tue, 08 Sep 2026 19:14:52 GMT  
		Size: 35.3 KB (35298 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:26-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:f7b3452e2f5ee773e9fd4f9988e7ea807d879acd3b52961607924dd17b07d9ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.7 MB (268716373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7962d59d8b8dc9cf17078c2286222195108936478af77248ad804a60e845f632`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 08 Sep 2026 18:57:57 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 08 Sep 2026 18:57:57 GMT
CMD ["/bin/bash"]
# Tue, 08 Sep 2026 19:08:29 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 08 Sep 2026 19:08:31 GMT
ENV GOSU_VERSION=1.19
# Tue, 08 Sep 2026 19:08:31 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 08 Sep 2026 19:09:08 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 08 Sep 2026 19:09:09 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 08 Sep 2026 19:09:09 GMT
ENV MYSQL_MAJOR=innovation
# Tue, 08 Sep 2026 19:09:09 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Tue, 08 Sep 2026 19:09:09 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 08 Sep 2026 19:09:50 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 08 Sep 2026 19:09:50 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 08 Sep 2026 19:09:50 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Tue, 08 Sep 2026 19:10:42 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 08 Sep 2026 19:10:42 GMT
VOLUME [/var/lib/mysql]
# Tue, 08 Sep 2026 19:10:42 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 08 Sep 2026 19:10:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 08 Sep 2026 19:10:42 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 08 Sep 2026 19:10:42 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:43c5deee1c317416925b86b1f2e78b730d2819023376f79b4de9f871323951a3`  
		Last Modified: Tue, 08 Sep 2026 18:58:08 GMT  
		Size: 46.5 MB (46477029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb980a8434e3c4600e45827e85201dcb117fa105cc497695640216f831384390`  
		Last Modified: Tue, 08 Sep 2026 19:11:18 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19c8bf571c7b733ea038259eac861768ae839db6d07c3188d54dc617943033e2`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 737.5 KB (737526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a017510daff3c2f3381e365accaa66eab52f251dc93a013cff3ddc4062c62bfe`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 5.8 MB (5815802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2f8471efd5dddf293b43b461dbe2e803948535cfa581fd02300a0764d47d7a6`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:101bfb51b57e17c638fb10e44f924f41eb5404b23677c7a9acca93868921e848`  
		Last Modified: Tue, 08 Sep 2026 19:11:20 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b549fe7114eb3dfbf6c84556f2f6e3408fc18ae4e25670891a404a451a31b0af`  
		Last Modified: Tue, 08 Sep 2026 19:11:22 GMT  
		Size: 57.4 MB (57434910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98cbda40669b120f5206b5bea13286fc329791c1646806a2dddd84cc214f3819`  
		Last Modified: Tue, 08 Sep 2026 19:11:20 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf3502e763277be8a4dada567b8594b93828c204a5f6749c1b094d09e2faad5c`  
		Last Modified: Tue, 08 Sep 2026 19:11:24 GMT  
		Size: 158.2 MB (158241725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:646bd661ef31ead80e724c18cefe7a9571656c1c72aeb850d1af8f074e002ced`  
		Last Modified: Tue, 08 Sep 2026 19:11:21 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:d45a7b45b6517cfb0f68c958649e4a63344ec42b111affbb3e3d3ea1a4450629
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17451504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e9c9306bb030ca92183cac533c8d6b5bee52915196be1a72c2d3e06cd21e8ec`

```dockerfile
```

-	Layers:
	-	`sha256:2614b75d327a3e726d19cb86e7a57fbf58085188c0e4955bd960163b7816275a`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 17.4 MB (17415866 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:083b04283ce84ef68972ce949eb4e3acbe53e3b555a8d36057213d7eadb8f865`  
		Last Modified: Tue, 08 Sep 2026 19:11:18 GMT  
		Size: 35.6 KB (35638 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:26-oraclelinux9`

```console
$ docker pull mysql@sha256:4b40b165f348c3a1d959a222bd6c7773503f202554fd140db3de74ed9136b7b8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:26-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:0cf09253b84d0b32ec751c0342258e1efec1892443e5d0dd58239fb8b8eaa63e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.3 MB (272344574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:910ef46e093997328100b40b32fffe94ebca0b5ab1b1591e951d7b465e9b212e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 08 Sep 2026 18:58:50 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 08 Sep 2026 18:58:50 GMT
CMD ["/bin/bash"]
# Tue, 08 Sep 2026 19:12:37 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 08 Sep 2026 19:12:39 GMT
ENV GOSU_VERSION=1.19
# Tue, 08 Sep 2026 19:12:39 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 08 Sep 2026 19:13:07 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 08 Sep 2026 19:13:08 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 08 Sep 2026 19:13:08 GMT
ENV MYSQL_MAJOR=innovation
# Tue, 08 Sep 2026 19:13:08 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Tue, 08 Sep 2026 19:13:08 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 08 Sep 2026 19:13:39 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 08 Sep 2026 19:13:39 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 08 Sep 2026 19:13:39 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Tue, 08 Sep 2026 19:14:21 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 08 Sep 2026 19:14:21 GMT
VOLUME [/var/lib/mysql]
# Tue, 08 Sep 2026 19:14:21 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 08 Sep 2026 19:14:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 08 Sep 2026 19:14:21 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 08 Sep 2026 19:14:21 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:4bb6eac2f26a5221d1c656c424daeae066dc3efa0be69499880b834d8dbfbd84`  
		Last Modified: Tue, 08 Sep 2026 18:59:01 GMT  
		Size: 47.9 MB (47931580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc90eb5f505f7c2417eee66e3257d1016d164ea46585caa235979cdf9bd6ab73`  
		Last Modified: Tue, 08 Sep 2026 19:14:52 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a78411c2d8161f9b9429975810b3b5dff71cbd89a0148b66a3f8c536fee9315f`  
		Last Modified: Tue, 08 Sep 2026 19:14:53 GMT  
		Size: 783.6 KB (783558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19564ecb42922de74e35ba641d2fb08e184ebb18b3f09d0d4ee6f6712581727b`  
		Last Modified: Tue, 08 Sep 2026 19:14:53 GMT  
		Size: 6.2 MB (6193089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49dc6bddddc7cc625377d5df1245a5fb026beac5efdd63ef6e25b563ecca537c`  
		Last Modified: Tue, 08 Sep 2026 19:14:53 GMT  
		Size: 2.6 KB (2609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:430c7065f1d589bdb7da26b9859bc9f20e8b56d6303c2cffc7f3a849b54983f6`  
		Last Modified: Tue, 08 Sep 2026 19:14:53 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d12dddcbdc10c994559080258cda9fdf8511ffec919b220a646556a4a849072`  
		Last Modified: Tue, 08 Sep 2026 19:14:56 GMT  
		Size: 57.5 MB (57454018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa5b47801f3bb551f892160e0b69175df8fcbea4b8f128c712a934726190785d`  
		Last Modified: Tue, 08 Sep 2026 19:14:54 GMT  
		Size: 326.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:827e6b736dd9d450892a30eb5a95c0c4cb45fbdf8ea237df78102751abfef628`  
		Last Modified: Tue, 08 Sep 2026 19:14:58 GMT  
		Size: 160.0 MB (159972946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d1d44554de144e8cd989547b5a2dfb36e97e37eb00032e7be62888bca76d5c1`  
		Last Modified: Tue, 08 Sep 2026 19:14:55 GMT  
		Size: 5.2 KB (5224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:a75775650173f13500d672d4d073b08ae8d20d46991136715abf3870682f3c86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17452691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c89132a00811bf83d2cc588fe9c2898f0cca20c6922a692c0e21e50a8e2335f`

```dockerfile
```

-	Layers:
	-	`sha256:f808f33758cbaa0098097db77726ff7cd992a39cf7a95d8bfde42c5be3cebf3a`  
		Last Modified: Tue, 08 Sep 2026 19:14:53 GMT  
		Size: 17.4 MB (17417393 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7518911e256d5236a3275979046f1ad3094b3027975d3c3ace300949aa89eb19`  
		Last Modified: Tue, 08 Sep 2026 19:14:52 GMT  
		Size: 35.3 KB (35298 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:26-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:f7b3452e2f5ee773e9fd4f9988e7ea807d879acd3b52961607924dd17b07d9ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.7 MB (268716373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7962d59d8b8dc9cf17078c2286222195108936478af77248ad804a60e845f632`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 08 Sep 2026 18:57:57 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 08 Sep 2026 18:57:57 GMT
CMD ["/bin/bash"]
# Tue, 08 Sep 2026 19:08:29 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 08 Sep 2026 19:08:31 GMT
ENV GOSU_VERSION=1.19
# Tue, 08 Sep 2026 19:08:31 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 08 Sep 2026 19:09:08 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 08 Sep 2026 19:09:09 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 08 Sep 2026 19:09:09 GMT
ENV MYSQL_MAJOR=innovation
# Tue, 08 Sep 2026 19:09:09 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Tue, 08 Sep 2026 19:09:09 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 08 Sep 2026 19:09:50 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 08 Sep 2026 19:09:50 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 08 Sep 2026 19:09:50 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Tue, 08 Sep 2026 19:10:42 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 08 Sep 2026 19:10:42 GMT
VOLUME [/var/lib/mysql]
# Tue, 08 Sep 2026 19:10:42 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 08 Sep 2026 19:10:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 08 Sep 2026 19:10:42 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 08 Sep 2026 19:10:42 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:43c5deee1c317416925b86b1f2e78b730d2819023376f79b4de9f871323951a3`  
		Last Modified: Tue, 08 Sep 2026 18:58:08 GMT  
		Size: 46.5 MB (46477029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb980a8434e3c4600e45827e85201dcb117fa105cc497695640216f831384390`  
		Last Modified: Tue, 08 Sep 2026 19:11:18 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19c8bf571c7b733ea038259eac861768ae839db6d07c3188d54dc617943033e2`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 737.5 KB (737526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a017510daff3c2f3381e365accaa66eab52f251dc93a013cff3ddc4062c62bfe`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 5.8 MB (5815802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2f8471efd5dddf293b43b461dbe2e803948535cfa581fd02300a0764d47d7a6`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:101bfb51b57e17c638fb10e44f924f41eb5404b23677c7a9acca93868921e848`  
		Last Modified: Tue, 08 Sep 2026 19:11:20 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b549fe7114eb3dfbf6c84556f2f6e3408fc18ae4e25670891a404a451a31b0af`  
		Last Modified: Tue, 08 Sep 2026 19:11:22 GMT  
		Size: 57.4 MB (57434910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98cbda40669b120f5206b5bea13286fc329791c1646806a2dddd84cc214f3819`  
		Last Modified: Tue, 08 Sep 2026 19:11:20 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf3502e763277be8a4dada567b8594b93828c204a5f6749c1b094d09e2faad5c`  
		Last Modified: Tue, 08 Sep 2026 19:11:24 GMT  
		Size: 158.2 MB (158241725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:646bd661ef31ead80e724c18cefe7a9571656c1c72aeb850d1af8f074e002ced`  
		Last Modified: Tue, 08 Sep 2026 19:11:21 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:d45a7b45b6517cfb0f68c958649e4a63344ec42b111affbb3e3d3ea1a4450629
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17451504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e9c9306bb030ca92183cac533c8d6b5bee52915196be1a72c2d3e06cd21e8ec`

```dockerfile
```

-	Layers:
	-	`sha256:2614b75d327a3e726d19cb86e7a57fbf58085188c0e4955bd960163b7816275a`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 17.4 MB (17415866 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:083b04283ce84ef68972ce949eb4e3acbe53e3b555a8d36057213d7eadb8f865`  
		Last Modified: Tue, 08 Sep 2026 19:11:18 GMT  
		Size: 35.6 KB (35638 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:26.7`

```console
$ docker pull mysql@sha256:4b40b165f348c3a1d959a222bd6c7773503f202554fd140db3de74ed9136b7b8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:26.7` - linux; amd64

```console
$ docker pull mysql@sha256:0cf09253b84d0b32ec751c0342258e1efec1892443e5d0dd58239fb8b8eaa63e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.3 MB (272344574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:910ef46e093997328100b40b32fffe94ebca0b5ab1b1591e951d7b465e9b212e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 08 Sep 2026 18:58:50 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 08 Sep 2026 18:58:50 GMT
CMD ["/bin/bash"]
# Tue, 08 Sep 2026 19:12:37 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 08 Sep 2026 19:12:39 GMT
ENV GOSU_VERSION=1.19
# Tue, 08 Sep 2026 19:12:39 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 08 Sep 2026 19:13:07 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 08 Sep 2026 19:13:08 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 08 Sep 2026 19:13:08 GMT
ENV MYSQL_MAJOR=innovation
# Tue, 08 Sep 2026 19:13:08 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Tue, 08 Sep 2026 19:13:08 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 08 Sep 2026 19:13:39 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 08 Sep 2026 19:13:39 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 08 Sep 2026 19:13:39 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Tue, 08 Sep 2026 19:14:21 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 08 Sep 2026 19:14:21 GMT
VOLUME [/var/lib/mysql]
# Tue, 08 Sep 2026 19:14:21 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 08 Sep 2026 19:14:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 08 Sep 2026 19:14:21 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 08 Sep 2026 19:14:21 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:4bb6eac2f26a5221d1c656c424daeae066dc3efa0be69499880b834d8dbfbd84`  
		Last Modified: Tue, 08 Sep 2026 18:59:01 GMT  
		Size: 47.9 MB (47931580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc90eb5f505f7c2417eee66e3257d1016d164ea46585caa235979cdf9bd6ab73`  
		Last Modified: Tue, 08 Sep 2026 19:14:52 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a78411c2d8161f9b9429975810b3b5dff71cbd89a0148b66a3f8c536fee9315f`  
		Last Modified: Tue, 08 Sep 2026 19:14:53 GMT  
		Size: 783.6 KB (783558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19564ecb42922de74e35ba641d2fb08e184ebb18b3f09d0d4ee6f6712581727b`  
		Last Modified: Tue, 08 Sep 2026 19:14:53 GMT  
		Size: 6.2 MB (6193089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49dc6bddddc7cc625377d5df1245a5fb026beac5efdd63ef6e25b563ecca537c`  
		Last Modified: Tue, 08 Sep 2026 19:14:53 GMT  
		Size: 2.6 KB (2609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:430c7065f1d589bdb7da26b9859bc9f20e8b56d6303c2cffc7f3a849b54983f6`  
		Last Modified: Tue, 08 Sep 2026 19:14:53 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d12dddcbdc10c994559080258cda9fdf8511ffec919b220a646556a4a849072`  
		Last Modified: Tue, 08 Sep 2026 19:14:56 GMT  
		Size: 57.5 MB (57454018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa5b47801f3bb551f892160e0b69175df8fcbea4b8f128c712a934726190785d`  
		Last Modified: Tue, 08 Sep 2026 19:14:54 GMT  
		Size: 326.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:827e6b736dd9d450892a30eb5a95c0c4cb45fbdf8ea237df78102751abfef628`  
		Last Modified: Tue, 08 Sep 2026 19:14:58 GMT  
		Size: 160.0 MB (159972946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d1d44554de144e8cd989547b5a2dfb36e97e37eb00032e7be62888bca76d5c1`  
		Last Modified: Tue, 08 Sep 2026 19:14:55 GMT  
		Size: 5.2 KB (5224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26.7` - unknown; unknown

```console
$ docker pull mysql@sha256:a75775650173f13500d672d4d073b08ae8d20d46991136715abf3870682f3c86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17452691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c89132a00811bf83d2cc588fe9c2898f0cca20c6922a692c0e21e50a8e2335f`

```dockerfile
```

-	Layers:
	-	`sha256:f808f33758cbaa0098097db77726ff7cd992a39cf7a95d8bfde42c5be3cebf3a`  
		Last Modified: Tue, 08 Sep 2026 19:14:53 GMT  
		Size: 17.4 MB (17417393 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7518911e256d5236a3275979046f1ad3094b3027975d3c3ace300949aa89eb19`  
		Last Modified: Tue, 08 Sep 2026 19:14:52 GMT  
		Size: 35.3 KB (35298 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:26.7` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:f7b3452e2f5ee773e9fd4f9988e7ea807d879acd3b52961607924dd17b07d9ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.7 MB (268716373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7962d59d8b8dc9cf17078c2286222195108936478af77248ad804a60e845f632`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 08 Sep 2026 18:57:57 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 08 Sep 2026 18:57:57 GMT
CMD ["/bin/bash"]
# Tue, 08 Sep 2026 19:08:29 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 08 Sep 2026 19:08:31 GMT
ENV GOSU_VERSION=1.19
# Tue, 08 Sep 2026 19:08:31 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 08 Sep 2026 19:09:08 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 08 Sep 2026 19:09:09 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 08 Sep 2026 19:09:09 GMT
ENV MYSQL_MAJOR=innovation
# Tue, 08 Sep 2026 19:09:09 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Tue, 08 Sep 2026 19:09:09 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 08 Sep 2026 19:09:50 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 08 Sep 2026 19:09:50 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 08 Sep 2026 19:09:50 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Tue, 08 Sep 2026 19:10:42 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 08 Sep 2026 19:10:42 GMT
VOLUME [/var/lib/mysql]
# Tue, 08 Sep 2026 19:10:42 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 08 Sep 2026 19:10:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 08 Sep 2026 19:10:42 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 08 Sep 2026 19:10:42 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:43c5deee1c317416925b86b1f2e78b730d2819023376f79b4de9f871323951a3`  
		Last Modified: Tue, 08 Sep 2026 18:58:08 GMT  
		Size: 46.5 MB (46477029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb980a8434e3c4600e45827e85201dcb117fa105cc497695640216f831384390`  
		Last Modified: Tue, 08 Sep 2026 19:11:18 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19c8bf571c7b733ea038259eac861768ae839db6d07c3188d54dc617943033e2`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 737.5 KB (737526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a017510daff3c2f3381e365accaa66eab52f251dc93a013cff3ddc4062c62bfe`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 5.8 MB (5815802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2f8471efd5dddf293b43b461dbe2e803948535cfa581fd02300a0764d47d7a6`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:101bfb51b57e17c638fb10e44f924f41eb5404b23677c7a9acca93868921e848`  
		Last Modified: Tue, 08 Sep 2026 19:11:20 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b549fe7114eb3dfbf6c84556f2f6e3408fc18ae4e25670891a404a451a31b0af`  
		Last Modified: Tue, 08 Sep 2026 19:11:22 GMT  
		Size: 57.4 MB (57434910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98cbda40669b120f5206b5bea13286fc329791c1646806a2dddd84cc214f3819`  
		Last Modified: Tue, 08 Sep 2026 19:11:20 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf3502e763277be8a4dada567b8594b93828c204a5f6749c1b094d09e2faad5c`  
		Last Modified: Tue, 08 Sep 2026 19:11:24 GMT  
		Size: 158.2 MB (158241725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:646bd661ef31ead80e724c18cefe7a9571656c1c72aeb850d1af8f074e002ced`  
		Last Modified: Tue, 08 Sep 2026 19:11:21 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26.7` - unknown; unknown

```console
$ docker pull mysql@sha256:d45a7b45b6517cfb0f68c958649e4a63344ec42b111affbb3e3d3ea1a4450629
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17451504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e9c9306bb030ca92183cac533c8d6b5bee52915196be1a72c2d3e06cd21e8ec`

```dockerfile
```

-	Layers:
	-	`sha256:2614b75d327a3e726d19cb86e7a57fbf58085188c0e4955bd960163b7816275a`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 17.4 MB (17415866 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:083b04283ce84ef68972ce949eb4e3acbe53e3b555a8d36057213d7eadb8f865`  
		Last Modified: Tue, 08 Sep 2026 19:11:18 GMT  
		Size: 35.6 KB (35638 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:26.7-oracle`

```console
$ docker pull mysql@sha256:4b40b165f348c3a1d959a222bd6c7773503f202554fd140db3de74ed9136b7b8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:26.7-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:0cf09253b84d0b32ec751c0342258e1efec1892443e5d0dd58239fb8b8eaa63e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.3 MB (272344574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:910ef46e093997328100b40b32fffe94ebca0b5ab1b1591e951d7b465e9b212e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 08 Sep 2026 18:58:50 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 08 Sep 2026 18:58:50 GMT
CMD ["/bin/bash"]
# Tue, 08 Sep 2026 19:12:37 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 08 Sep 2026 19:12:39 GMT
ENV GOSU_VERSION=1.19
# Tue, 08 Sep 2026 19:12:39 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 08 Sep 2026 19:13:07 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 08 Sep 2026 19:13:08 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 08 Sep 2026 19:13:08 GMT
ENV MYSQL_MAJOR=innovation
# Tue, 08 Sep 2026 19:13:08 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Tue, 08 Sep 2026 19:13:08 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 08 Sep 2026 19:13:39 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 08 Sep 2026 19:13:39 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 08 Sep 2026 19:13:39 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Tue, 08 Sep 2026 19:14:21 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 08 Sep 2026 19:14:21 GMT
VOLUME [/var/lib/mysql]
# Tue, 08 Sep 2026 19:14:21 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 08 Sep 2026 19:14:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 08 Sep 2026 19:14:21 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 08 Sep 2026 19:14:21 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:4bb6eac2f26a5221d1c656c424daeae066dc3efa0be69499880b834d8dbfbd84`  
		Last Modified: Tue, 08 Sep 2026 18:59:01 GMT  
		Size: 47.9 MB (47931580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc90eb5f505f7c2417eee66e3257d1016d164ea46585caa235979cdf9bd6ab73`  
		Last Modified: Tue, 08 Sep 2026 19:14:52 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a78411c2d8161f9b9429975810b3b5dff71cbd89a0148b66a3f8c536fee9315f`  
		Last Modified: Tue, 08 Sep 2026 19:14:53 GMT  
		Size: 783.6 KB (783558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19564ecb42922de74e35ba641d2fb08e184ebb18b3f09d0d4ee6f6712581727b`  
		Last Modified: Tue, 08 Sep 2026 19:14:53 GMT  
		Size: 6.2 MB (6193089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49dc6bddddc7cc625377d5df1245a5fb026beac5efdd63ef6e25b563ecca537c`  
		Last Modified: Tue, 08 Sep 2026 19:14:53 GMT  
		Size: 2.6 KB (2609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:430c7065f1d589bdb7da26b9859bc9f20e8b56d6303c2cffc7f3a849b54983f6`  
		Last Modified: Tue, 08 Sep 2026 19:14:53 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d12dddcbdc10c994559080258cda9fdf8511ffec919b220a646556a4a849072`  
		Last Modified: Tue, 08 Sep 2026 19:14:56 GMT  
		Size: 57.5 MB (57454018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa5b47801f3bb551f892160e0b69175df8fcbea4b8f128c712a934726190785d`  
		Last Modified: Tue, 08 Sep 2026 19:14:54 GMT  
		Size: 326.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:827e6b736dd9d450892a30eb5a95c0c4cb45fbdf8ea237df78102751abfef628`  
		Last Modified: Tue, 08 Sep 2026 19:14:58 GMT  
		Size: 160.0 MB (159972946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d1d44554de144e8cd989547b5a2dfb36e97e37eb00032e7be62888bca76d5c1`  
		Last Modified: Tue, 08 Sep 2026 19:14:55 GMT  
		Size: 5.2 KB (5224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26.7-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:a75775650173f13500d672d4d073b08ae8d20d46991136715abf3870682f3c86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17452691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c89132a00811bf83d2cc588fe9c2898f0cca20c6922a692c0e21e50a8e2335f`

```dockerfile
```

-	Layers:
	-	`sha256:f808f33758cbaa0098097db77726ff7cd992a39cf7a95d8bfde42c5be3cebf3a`  
		Last Modified: Tue, 08 Sep 2026 19:14:53 GMT  
		Size: 17.4 MB (17417393 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7518911e256d5236a3275979046f1ad3094b3027975d3c3ace300949aa89eb19`  
		Last Modified: Tue, 08 Sep 2026 19:14:52 GMT  
		Size: 35.3 KB (35298 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:26.7-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:f7b3452e2f5ee773e9fd4f9988e7ea807d879acd3b52961607924dd17b07d9ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.7 MB (268716373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7962d59d8b8dc9cf17078c2286222195108936478af77248ad804a60e845f632`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 08 Sep 2026 18:57:57 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 08 Sep 2026 18:57:57 GMT
CMD ["/bin/bash"]
# Tue, 08 Sep 2026 19:08:29 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 08 Sep 2026 19:08:31 GMT
ENV GOSU_VERSION=1.19
# Tue, 08 Sep 2026 19:08:31 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 08 Sep 2026 19:09:08 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 08 Sep 2026 19:09:09 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 08 Sep 2026 19:09:09 GMT
ENV MYSQL_MAJOR=innovation
# Tue, 08 Sep 2026 19:09:09 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Tue, 08 Sep 2026 19:09:09 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 08 Sep 2026 19:09:50 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 08 Sep 2026 19:09:50 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 08 Sep 2026 19:09:50 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Tue, 08 Sep 2026 19:10:42 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 08 Sep 2026 19:10:42 GMT
VOLUME [/var/lib/mysql]
# Tue, 08 Sep 2026 19:10:42 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 08 Sep 2026 19:10:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 08 Sep 2026 19:10:42 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 08 Sep 2026 19:10:42 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:43c5deee1c317416925b86b1f2e78b730d2819023376f79b4de9f871323951a3`  
		Last Modified: Tue, 08 Sep 2026 18:58:08 GMT  
		Size: 46.5 MB (46477029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb980a8434e3c4600e45827e85201dcb117fa105cc497695640216f831384390`  
		Last Modified: Tue, 08 Sep 2026 19:11:18 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19c8bf571c7b733ea038259eac861768ae839db6d07c3188d54dc617943033e2`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 737.5 KB (737526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a017510daff3c2f3381e365accaa66eab52f251dc93a013cff3ddc4062c62bfe`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 5.8 MB (5815802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2f8471efd5dddf293b43b461dbe2e803948535cfa581fd02300a0764d47d7a6`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:101bfb51b57e17c638fb10e44f924f41eb5404b23677c7a9acca93868921e848`  
		Last Modified: Tue, 08 Sep 2026 19:11:20 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b549fe7114eb3dfbf6c84556f2f6e3408fc18ae4e25670891a404a451a31b0af`  
		Last Modified: Tue, 08 Sep 2026 19:11:22 GMT  
		Size: 57.4 MB (57434910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98cbda40669b120f5206b5bea13286fc329791c1646806a2dddd84cc214f3819`  
		Last Modified: Tue, 08 Sep 2026 19:11:20 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf3502e763277be8a4dada567b8594b93828c204a5f6749c1b094d09e2faad5c`  
		Last Modified: Tue, 08 Sep 2026 19:11:24 GMT  
		Size: 158.2 MB (158241725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:646bd661ef31ead80e724c18cefe7a9571656c1c72aeb850d1af8f074e002ced`  
		Last Modified: Tue, 08 Sep 2026 19:11:21 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26.7-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:d45a7b45b6517cfb0f68c958649e4a63344ec42b111affbb3e3d3ea1a4450629
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17451504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e9c9306bb030ca92183cac533c8d6b5bee52915196be1a72c2d3e06cd21e8ec`

```dockerfile
```

-	Layers:
	-	`sha256:2614b75d327a3e726d19cb86e7a57fbf58085188c0e4955bd960163b7816275a`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 17.4 MB (17415866 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:083b04283ce84ef68972ce949eb4e3acbe53e3b555a8d36057213d7eadb8f865`  
		Last Modified: Tue, 08 Sep 2026 19:11:18 GMT  
		Size: 35.6 KB (35638 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:26.7-oraclelinux9`

```console
$ docker pull mysql@sha256:4b40b165f348c3a1d959a222bd6c7773503f202554fd140db3de74ed9136b7b8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:26.7-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:0cf09253b84d0b32ec751c0342258e1efec1892443e5d0dd58239fb8b8eaa63e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.3 MB (272344574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:910ef46e093997328100b40b32fffe94ebca0b5ab1b1591e951d7b465e9b212e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 08 Sep 2026 18:58:50 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 08 Sep 2026 18:58:50 GMT
CMD ["/bin/bash"]
# Tue, 08 Sep 2026 19:12:37 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 08 Sep 2026 19:12:39 GMT
ENV GOSU_VERSION=1.19
# Tue, 08 Sep 2026 19:12:39 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 08 Sep 2026 19:13:07 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 08 Sep 2026 19:13:08 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 08 Sep 2026 19:13:08 GMT
ENV MYSQL_MAJOR=innovation
# Tue, 08 Sep 2026 19:13:08 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Tue, 08 Sep 2026 19:13:08 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 08 Sep 2026 19:13:39 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 08 Sep 2026 19:13:39 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 08 Sep 2026 19:13:39 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Tue, 08 Sep 2026 19:14:21 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 08 Sep 2026 19:14:21 GMT
VOLUME [/var/lib/mysql]
# Tue, 08 Sep 2026 19:14:21 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 08 Sep 2026 19:14:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 08 Sep 2026 19:14:21 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 08 Sep 2026 19:14:21 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:4bb6eac2f26a5221d1c656c424daeae066dc3efa0be69499880b834d8dbfbd84`  
		Last Modified: Tue, 08 Sep 2026 18:59:01 GMT  
		Size: 47.9 MB (47931580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc90eb5f505f7c2417eee66e3257d1016d164ea46585caa235979cdf9bd6ab73`  
		Last Modified: Tue, 08 Sep 2026 19:14:52 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a78411c2d8161f9b9429975810b3b5dff71cbd89a0148b66a3f8c536fee9315f`  
		Last Modified: Tue, 08 Sep 2026 19:14:53 GMT  
		Size: 783.6 KB (783558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19564ecb42922de74e35ba641d2fb08e184ebb18b3f09d0d4ee6f6712581727b`  
		Last Modified: Tue, 08 Sep 2026 19:14:53 GMT  
		Size: 6.2 MB (6193089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49dc6bddddc7cc625377d5df1245a5fb026beac5efdd63ef6e25b563ecca537c`  
		Last Modified: Tue, 08 Sep 2026 19:14:53 GMT  
		Size: 2.6 KB (2609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:430c7065f1d589bdb7da26b9859bc9f20e8b56d6303c2cffc7f3a849b54983f6`  
		Last Modified: Tue, 08 Sep 2026 19:14:53 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d12dddcbdc10c994559080258cda9fdf8511ffec919b220a646556a4a849072`  
		Last Modified: Tue, 08 Sep 2026 19:14:56 GMT  
		Size: 57.5 MB (57454018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa5b47801f3bb551f892160e0b69175df8fcbea4b8f128c712a934726190785d`  
		Last Modified: Tue, 08 Sep 2026 19:14:54 GMT  
		Size: 326.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:827e6b736dd9d450892a30eb5a95c0c4cb45fbdf8ea237df78102751abfef628`  
		Last Modified: Tue, 08 Sep 2026 19:14:58 GMT  
		Size: 160.0 MB (159972946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d1d44554de144e8cd989547b5a2dfb36e97e37eb00032e7be62888bca76d5c1`  
		Last Modified: Tue, 08 Sep 2026 19:14:55 GMT  
		Size: 5.2 KB (5224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26.7-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:a75775650173f13500d672d4d073b08ae8d20d46991136715abf3870682f3c86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17452691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c89132a00811bf83d2cc588fe9c2898f0cca20c6922a692c0e21e50a8e2335f`

```dockerfile
```

-	Layers:
	-	`sha256:f808f33758cbaa0098097db77726ff7cd992a39cf7a95d8bfde42c5be3cebf3a`  
		Last Modified: Tue, 08 Sep 2026 19:14:53 GMT  
		Size: 17.4 MB (17417393 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7518911e256d5236a3275979046f1ad3094b3027975d3c3ace300949aa89eb19`  
		Last Modified: Tue, 08 Sep 2026 19:14:52 GMT  
		Size: 35.3 KB (35298 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:26.7-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:f7b3452e2f5ee773e9fd4f9988e7ea807d879acd3b52961607924dd17b07d9ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.7 MB (268716373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7962d59d8b8dc9cf17078c2286222195108936478af77248ad804a60e845f632`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 08 Sep 2026 18:57:57 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 08 Sep 2026 18:57:57 GMT
CMD ["/bin/bash"]
# Tue, 08 Sep 2026 19:08:29 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 08 Sep 2026 19:08:31 GMT
ENV GOSU_VERSION=1.19
# Tue, 08 Sep 2026 19:08:31 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 08 Sep 2026 19:09:08 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 08 Sep 2026 19:09:09 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 08 Sep 2026 19:09:09 GMT
ENV MYSQL_MAJOR=innovation
# Tue, 08 Sep 2026 19:09:09 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Tue, 08 Sep 2026 19:09:09 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 08 Sep 2026 19:09:50 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 08 Sep 2026 19:09:50 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 08 Sep 2026 19:09:50 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Tue, 08 Sep 2026 19:10:42 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 08 Sep 2026 19:10:42 GMT
VOLUME [/var/lib/mysql]
# Tue, 08 Sep 2026 19:10:42 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 08 Sep 2026 19:10:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 08 Sep 2026 19:10:42 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 08 Sep 2026 19:10:42 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:43c5deee1c317416925b86b1f2e78b730d2819023376f79b4de9f871323951a3`  
		Last Modified: Tue, 08 Sep 2026 18:58:08 GMT  
		Size: 46.5 MB (46477029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb980a8434e3c4600e45827e85201dcb117fa105cc497695640216f831384390`  
		Last Modified: Tue, 08 Sep 2026 19:11:18 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19c8bf571c7b733ea038259eac861768ae839db6d07c3188d54dc617943033e2`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 737.5 KB (737526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a017510daff3c2f3381e365accaa66eab52f251dc93a013cff3ddc4062c62bfe`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 5.8 MB (5815802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2f8471efd5dddf293b43b461dbe2e803948535cfa581fd02300a0764d47d7a6`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:101bfb51b57e17c638fb10e44f924f41eb5404b23677c7a9acca93868921e848`  
		Last Modified: Tue, 08 Sep 2026 19:11:20 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b549fe7114eb3dfbf6c84556f2f6e3408fc18ae4e25670891a404a451a31b0af`  
		Last Modified: Tue, 08 Sep 2026 19:11:22 GMT  
		Size: 57.4 MB (57434910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98cbda40669b120f5206b5bea13286fc329791c1646806a2dddd84cc214f3819`  
		Last Modified: Tue, 08 Sep 2026 19:11:20 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf3502e763277be8a4dada567b8594b93828c204a5f6749c1b094d09e2faad5c`  
		Last Modified: Tue, 08 Sep 2026 19:11:24 GMT  
		Size: 158.2 MB (158241725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:646bd661ef31ead80e724c18cefe7a9571656c1c72aeb850d1af8f074e002ced`  
		Last Modified: Tue, 08 Sep 2026 19:11:21 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26.7-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:d45a7b45b6517cfb0f68c958649e4a63344ec42b111affbb3e3d3ea1a4450629
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17451504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e9c9306bb030ca92183cac533c8d6b5bee52915196be1a72c2d3e06cd21e8ec`

```dockerfile
```

-	Layers:
	-	`sha256:2614b75d327a3e726d19cb86e7a57fbf58085188c0e4955bd960163b7816275a`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 17.4 MB (17415866 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:083b04283ce84ef68972ce949eb4e3acbe53e3b555a8d36057213d7eadb8f865`  
		Last Modified: Tue, 08 Sep 2026 19:11:18 GMT  
		Size: 35.6 KB (35638 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:26.7.0`

```console
$ docker pull mysql@sha256:4b40b165f348c3a1d959a222bd6c7773503f202554fd140db3de74ed9136b7b8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:26.7.0` - linux; amd64

```console
$ docker pull mysql@sha256:0cf09253b84d0b32ec751c0342258e1efec1892443e5d0dd58239fb8b8eaa63e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.3 MB (272344574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:910ef46e093997328100b40b32fffe94ebca0b5ab1b1591e951d7b465e9b212e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 08 Sep 2026 18:58:50 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 08 Sep 2026 18:58:50 GMT
CMD ["/bin/bash"]
# Tue, 08 Sep 2026 19:12:37 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 08 Sep 2026 19:12:39 GMT
ENV GOSU_VERSION=1.19
# Tue, 08 Sep 2026 19:12:39 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 08 Sep 2026 19:13:07 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 08 Sep 2026 19:13:08 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 08 Sep 2026 19:13:08 GMT
ENV MYSQL_MAJOR=innovation
# Tue, 08 Sep 2026 19:13:08 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Tue, 08 Sep 2026 19:13:08 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 08 Sep 2026 19:13:39 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 08 Sep 2026 19:13:39 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 08 Sep 2026 19:13:39 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Tue, 08 Sep 2026 19:14:21 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 08 Sep 2026 19:14:21 GMT
VOLUME [/var/lib/mysql]
# Tue, 08 Sep 2026 19:14:21 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 08 Sep 2026 19:14:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 08 Sep 2026 19:14:21 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 08 Sep 2026 19:14:21 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:4bb6eac2f26a5221d1c656c424daeae066dc3efa0be69499880b834d8dbfbd84`  
		Last Modified: Tue, 08 Sep 2026 18:59:01 GMT  
		Size: 47.9 MB (47931580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc90eb5f505f7c2417eee66e3257d1016d164ea46585caa235979cdf9bd6ab73`  
		Last Modified: Tue, 08 Sep 2026 19:14:52 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a78411c2d8161f9b9429975810b3b5dff71cbd89a0148b66a3f8c536fee9315f`  
		Last Modified: Tue, 08 Sep 2026 19:14:53 GMT  
		Size: 783.6 KB (783558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19564ecb42922de74e35ba641d2fb08e184ebb18b3f09d0d4ee6f6712581727b`  
		Last Modified: Tue, 08 Sep 2026 19:14:53 GMT  
		Size: 6.2 MB (6193089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49dc6bddddc7cc625377d5df1245a5fb026beac5efdd63ef6e25b563ecca537c`  
		Last Modified: Tue, 08 Sep 2026 19:14:53 GMT  
		Size: 2.6 KB (2609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:430c7065f1d589bdb7da26b9859bc9f20e8b56d6303c2cffc7f3a849b54983f6`  
		Last Modified: Tue, 08 Sep 2026 19:14:53 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d12dddcbdc10c994559080258cda9fdf8511ffec919b220a646556a4a849072`  
		Last Modified: Tue, 08 Sep 2026 19:14:56 GMT  
		Size: 57.5 MB (57454018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa5b47801f3bb551f892160e0b69175df8fcbea4b8f128c712a934726190785d`  
		Last Modified: Tue, 08 Sep 2026 19:14:54 GMT  
		Size: 326.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:827e6b736dd9d450892a30eb5a95c0c4cb45fbdf8ea237df78102751abfef628`  
		Last Modified: Tue, 08 Sep 2026 19:14:58 GMT  
		Size: 160.0 MB (159972946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d1d44554de144e8cd989547b5a2dfb36e97e37eb00032e7be62888bca76d5c1`  
		Last Modified: Tue, 08 Sep 2026 19:14:55 GMT  
		Size: 5.2 KB (5224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26.7.0` - unknown; unknown

```console
$ docker pull mysql@sha256:a75775650173f13500d672d4d073b08ae8d20d46991136715abf3870682f3c86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17452691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c89132a00811bf83d2cc588fe9c2898f0cca20c6922a692c0e21e50a8e2335f`

```dockerfile
```

-	Layers:
	-	`sha256:f808f33758cbaa0098097db77726ff7cd992a39cf7a95d8bfde42c5be3cebf3a`  
		Last Modified: Tue, 08 Sep 2026 19:14:53 GMT  
		Size: 17.4 MB (17417393 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7518911e256d5236a3275979046f1ad3094b3027975d3c3ace300949aa89eb19`  
		Last Modified: Tue, 08 Sep 2026 19:14:52 GMT  
		Size: 35.3 KB (35298 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:26.7.0` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:f7b3452e2f5ee773e9fd4f9988e7ea807d879acd3b52961607924dd17b07d9ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.7 MB (268716373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7962d59d8b8dc9cf17078c2286222195108936478af77248ad804a60e845f632`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 08 Sep 2026 18:57:57 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 08 Sep 2026 18:57:57 GMT
CMD ["/bin/bash"]
# Tue, 08 Sep 2026 19:08:29 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 08 Sep 2026 19:08:31 GMT
ENV GOSU_VERSION=1.19
# Tue, 08 Sep 2026 19:08:31 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 08 Sep 2026 19:09:08 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 08 Sep 2026 19:09:09 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 08 Sep 2026 19:09:09 GMT
ENV MYSQL_MAJOR=innovation
# Tue, 08 Sep 2026 19:09:09 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Tue, 08 Sep 2026 19:09:09 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 08 Sep 2026 19:09:50 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 08 Sep 2026 19:09:50 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 08 Sep 2026 19:09:50 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Tue, 08 Sep 2026 19:10:42 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 08 Sep 2026 19:10:42 GMT
VOLUME [/var/lib/mysql]
# Tue, 08 Sep 2026 19:10:42 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 08 Sep 2026 19:10:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 08 Sep 2026 19:10:42 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 08 Sep 2026 19:10:42 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:43c5deee1c317416925b86b1f2e78b730d2819023376f79b4de9f871323951a3`  
		Last Modified: Tue, 08 Sep 2026 18:58:08 GMT  
		Size: 46.5 MB (46477029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb980a8434e3c4600e45827e85201dcb117fa105cc497695640216f831384390`  
		Last Modified: Tue, 08 Sep 2026 19:11:18 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19c8bf571c7b733ea038259eac861768ae839db6d07c3188d54dc617943033e2`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 737.5 KB (737526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a017510daff3c2f3381e365accaa66eab52f251dc93a013cff3ddc4062c62bfe`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 5.8 MB (5815802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2f8471efd5dddf293b43b461dbe2e803948535cfa581fd02300a0764d47d7a6`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:101bfb51b57e17c638fb10e44f924f41eb5404b23677c7a9acca93868921e848`  
		Last Modified: Tue, 08 Sep 2026 19:11:20 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b549fe7114eb3dfbf6c84556f2f6e3408fc18ae4e25670891a404a451a31b0af`  
		Last Modified: Tue, 08 Sep 2026 19:11:22 GMT  
		Size: 57.4 MB (57434910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98cbda40669b120f5206b5bea13286fc329791c1646806a2dddd84cc214f3819`  
		Last Modified: Tue, 08 Sep 2026 19:11:20 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf3502e763277be8a4dada567b8594b93828c204a5f6749c1b094d09e2faad5c`  
		Last Modified: Tue, 08 Sep 2026 19:11:24 GMT  
		Size: 158.2 MB (158241725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:646bd661ef31ead80e724c18cefe7a9571656c1c72aeb850d1af8f074e002ced`  
		Last Modified: Tue, 08 Sep 2026 19:11:21 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26.7.0` - unknown; unknown

```console
$ docker pull mysql@sha256:d45a7b45b6517cfb0f68c958649e4a63344ec42b111affbb3e3d3ea1a4450629
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17451504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e9c9306bb030ca92183cac533c8d6b5bee52915196be1a72c2d3e06cd21e8ec`

```dockerfile
```

-	Layers:
	-	`sha256:2614b75d327a3e726d19cb86e7a57fbf58085188c0e4955bd960163b7816275a`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 17.4 MB (17415866 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:083b04283ce84ef68972ce949eb4e3acbe53e3b555a8d36057213d7eadb8f865`  
		Last Modified: Tue, 08 Sep 2026 19:11:18 GMT  
		Size: 35.6 KB (35638 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:26.7.0-oracle`

```console
$ docker pull mysql@sha256:4b40b165f348c3a1d959a222bd6c7773503f202554fd140db3de74ed9136b7b8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:26.7.0-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:0cf09253b84d0b32ec751c0342258e1efec1892443e5d0dd58239fb8b8eaa63e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.3 MB (272344574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:910ef46e093997328100b40b32fffe94ebca0b5ab1b1591e951d7b465e9b212e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 08 Sep 2026 18:58:50 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 08 Sep 2026 18:58:50 GMT
CMD ["/bin/bash"]
# Tue, 08 Sep 2026 19:12:37 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 08 Sep 2026 19:12:39 GMT
ENV GOSU_VERSION=1.19
# Tue, 08 Sep 2026 19:12:39 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 08 Sep 2026 19:13:07 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 08 Sep 2026 19:13:08 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 08 Sep 2026 19:13:08 GMT
ENV MYSQL_MAJOR=innovation
# Tue, 08 Sep 2026 19:13:08 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Tue, 08 Sep 2026 19:13:08 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 08 Sep 2026 19:13:39 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 08 Sep 2026 19:13:39 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 08 Sep 2026 19:13:39 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Tue, 08 Sep 2026 19:14:21 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 08 Sep 2026 19:14:21 GMT
VOLUME [/var/lib/mysql]
# Tue, 08 Sep 2026 19:14:21 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 08 Sep 2026 19:14:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 08 Sep 2026 19:14:21 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 08 Sep 2026 19:14:21 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:4bb6eac2f26a5221d1c656c424daeae066dc3efa0be69499880b834d8dbfbd84`  
		Last Modified: Tue, 08 Sep 2026 18:59:01 GMT  
		Size: 47.9 MB (47931580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc90eb5f505f7c2417eee66e3257d1016d164ea46585caa235979cdf9bd6ab73`  
		Last Modified: Tue, 08 Sep 2026 19:14:52 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a78411c2d8161f9b9429975810b3b5dff71cbd89a0148b66a3f8c536fee9315f`  
		Last Modified: Tue, 08 Sep 2026 19:14:53 GMT  
		Size: 783.6 KB (783558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19564ecb42922de74e35ba641d2fb08e184ebb18b3f09d0d4ee6f6712581727b`  
		Last Modified: Tue, 08 Sep 2026 19:14:53 GMT  
		Size: 6.2 MB (6193089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49dc6bddddc7cc625377d5df1245a5fb026beac5efdd63ef6e25b563ecca537c`  
		Last Modified: Tue, 08 Sep 2026 19:14:53 GMT  
		Size: 2.6 KB (2609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:430c7065f1d589bdb7da26b9859bc9f20e8b56d6303c2cffc7f3a849b54983f6`  
		Last Modified: Tue, 08 Sep 2026 19:14:53 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d12dddcbdc10c994559080258cda9fdf8511ffec919b220a646556a4a849072`  
		Last Modified: Tue, 08 Sep 2026 19:14:56 GMT  
		Size: 57.5 MB (57454018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa5b47801f3bb551f892160e0b69175df8fcbea4b8f128c712a934726190785d`  
		Last Modified: Tue, 08 Sep 2026 19:14:54 GMT  
		Size: 326.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:827e6b736dd9d450892a30eb5a95c0c4cb45fbdf8ea237df78102751abfef628`  
		Last Modified: Tue, 08 Sep 2026 19:14:58 GMT  
		Size: 160.0 MB (159972946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d1d44554de144e8cd989547b5a2dfb36e97e37eb00032e7be62888bca76d5c1`  
		Last Modified: Tue, 08 Sep 2026 19:14:55 GMT  
		Size: 5.2 KB (5224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26.7.0-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:a75775650173f13500d672d4d073b08ae8d20d46991136715abf3870682f3c86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17452691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c89132a00811bf83d2cc588fe9c2898f0cca20c6922a692c0e21e50a8e2335f`

```dockerfile
```

-	Layers:
	-	`sha256:f808f33758cbaa0098097db77726ff7cd992a39cf7a95d8bfde42c5be3cebf3a`  
		Last Modified: Tue, 08 Sep 2026 19:14:53 GMT  
		Size: 17.4 MB (17417393 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7518911e256d5236a3275979046f1ad3094b3027975d3c3ace300949aa89eb19`  
		Last Modified: Tue, 08 Sep 2026 19:14:52 GMT  
		Size: 35.3 KB (35298 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:26.7.0-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:f7b3452e2f5ee773e9fd4f9988e7ea807d879acd3b52961607924dd17b07d9ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.7 MB (268716373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7962d59d8b8dc9cf17078c2286222195108936478af77248ad804a60e845f632`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 08 Sep 2026 18:57:57 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 08 Sep 2026 18:57:57 GMT
CMD ["/bin/bash"]
# Tue, 08 Sep 2026 19:08:29 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 08 Sep 2026 19:08:31 GMT
ENV GOSU_VERSION=1.19
# Tue, 08 Sep 2026 19:08:31 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 08 Sep 2026 19:09:08 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 08 Sep 2026 19:09:09 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 08 Sep 2026 19:09:09 GMT
ENV MYSQL_MAJOR=innovation
# Tue, 08 Sep 2026 19:09:09 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Tue, 08 Sep 2026 19:09:09 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 08 Sep 2026 19:09:50 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 08 Sep 2026 19:09:50 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 08 Sep 2026 19:09:50 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Tue, 08 Sep 2026 19:10:42 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 08 Sep 2026 19:10:42 GMT
VOLUME [/var/lib/mysql]
# Tue, 08 Sep 2026 19:10:42 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 08 Sep 2026 19:10:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 08 Sep 2026 19:10:42 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 08 Sep 2026 19:10:42 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:43c5deee1c317416925b86b1f2e78b730d2819023376f79b4de9f871323951a3`  
		Last Modified: Tue, 08 Sep 2026 18:58:08 GMT  
		Size: 46.5 MB (46477029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb980a8434e3c4600e45827e85201dcb117fa105cc497695640216f831384390`  
		Last Modified: Tue, 08 Sep 2026 19:11:18 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19c8bf571c7b733ea038259eac861768ae839db6d07c3188d54dc617943033e2`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 737.5 KB (737526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a017510daff3c2f3381e365accaa66eab52f251dc93a013cff3ddc4062c62bfe`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 5.8 MB (5815802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2f8471efd5dddf293b43b461dbe2e803948535cfa581fd02300a0764d47d7a6`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:101bfb51b57e17c638fb10e44f924f41eb5404b23677c7a9acca93868921e848`  
		Last Modified: Tue, 08 Sep 2026 19:11:20 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b549fe7114eb3dfbf6c84556f2f6e3408fc18ae4e25670891a404a451a31b0af`  
		Last Modified: Tue, 08 Sep 2026 19:11:22 GMT  
		Size: 57.4 MB (57434910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98cbda40669b120f5206b5bea13286fc329791c1646806a2dddd84cc214f3819`  
		Last Modified: Tue, 08 Sep 2026 19:11:20 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf3502e763277be8a4dada567b8594b93828c204a5f6749c1b094d09e2faad5c`  
		Last Modified: Tue, 08 Sep 2026 19:11:24 GMT  
		Size: 158.2 MB (158241725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:646bd661ef31ead80e724c18cefe7a9571656c1c72aeb850d1af8f074e002ced`  
		Last Modified: Tue, 08 Sep 2026 19:11:21 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26.7.0-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:d45a7b45b6517cfb0f68c958649e4a63344ec42b111affbb3e3d3ea1a4450629
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17451504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e9c9306bb030ca92183cac533c8d6b5bee52915196be1a72c2d3e06cd21e8ec`

```dockerfile
```

-	Layers:
	-	`sha256:2614b75d327a3e726d19cb86e7a57fbf58085188c0e4955bd960163b7816275a`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 17.4 MB (17415866 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:083b04283ce84ef68972ce949eb4e3acbe53e3b555a8d36057213d7eadb8f865`  
		Last Modified: Tue, 08 Sep 2026 19:11:18 GMT  
		Size: 35.6 KB (35638 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:26.7.0-oraclelinux9`

```console
$ docker pull mysql@sha256:4b40b165f348c3a1d959a222bd6c7773503f202554fd140db3de74ed9136b7b8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:26.7.0-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:0cf09253b84d0b32ec751c0342258e1efec1892443e5d0dd58239fb8b8eaa63e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.3 MB (272344574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:910ef46e093997328100b40b32fffe94ebca0b5ab1b1591e951d7b465e9b212e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 08 Sep 2026 18:58:50 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 08 Sep 2026 18:58:50 GMT
CMD ["/bin/bash"]
# Tue, 08 Sep 2026 19:12:37 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 08 Sep 2026 19:12:39 GMT
ENV GOSU_VERSION=1.19
# Tue, 08 Sep 2026 19:12:39 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 08 Sep 2026 19:13:07 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 08 Sep 2026 19:13:08 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 08 Sep 2026 19:13:08 GMT
ENV MYSQL_MAJOR=innovation
# Tue, 08 Sep 2026 19:13:08 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Tue, 08 Sep 2026 19:13:08 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 08 Sep 2026 19:13:39 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 08 Sep 2026 19:13:39 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 08 Sep 2026 19:13:39 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Tue, 08 Sep 2026 19:14:21 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 08 Sep 2026 19:14:21 GMT
VOLUME [/var/lib/mysql]
# Tue, 08 Sep 2026 19:14:21 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 08 Sep 2026 19:14:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 08 Sep 2026 19:14:21 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 08 Sep 2026 19:14:21 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:4bb6eac2f26a5221d1c656c424daeae066dc3efa0be69499880b834d8dbfbd84`  
		Last Modified: Tue, 08 Sep 2026 18:59:01 GMT  
		Size: 47.9 MB (47931580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc90eb5f505f7c2417eee66e3257d1016d164ea46585caa235979cdf9bd6ab73`  
		Last Modified: Tue, 08 Sep 2026 19:14:52 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a78411c2d8161f9b9429975810b3b5dff71cbd89a0148b66a3f8c536fee9315f`  
		Last Modified: Tue, 08 Sep 2026 19:14:53 GMT  
		Size: 783.6 KB (783558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19564ecb42922de74e35ba641d2fb08e184ebb18b3f09d0d4ee6f6712581727b`  
		Last Modified: Tue, 08 Sep 2026 19:14:53 GMT  
		Size: 6.2 MB (6193089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49dc6bddddc7cc625377d5df1245a5fb026beac5efdd63ef6e25b563ecca537c`  
		Last Modified: Tue, 08 Sep 2026 19:14:53 GMT  
		Size: 2.6 KB (2609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:430c7065f1d589bdb7da26b9859bc9f20e8b56d6303c2cffc7f3a849b54983f6`  
		Last Modified: Tue, 08 Sep 2026 19:14:53 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d12dddcbdc10c994559080258cda9fdf8511ffec919b220a646556a4a849072`  
		Last Modified: Tue, 08 Sep 2026 19:14:56 GMT  
		Size: 57.5 MB (57454018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa5b47801f3bb551f892160e0b69175df8fcbea4b8f128c712a934726190785d`  
		Last Modified: Tue, 08 Sep 2026 19:14:54 GMT  
		Size: 326.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:827e6b736dd9d450892a30eb5a95c0c4cb45fbdf8ea237df78102751abfef628`  
		Last Modified: Tue, 08 Sep 2026 19:14:58 GMT  
		Size: 160.0 MB (159972946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d1d44554de144e8cd989547b5a2dfb36e97e37eb00032e7be62888bca76d5c1`  
		Last Modified: Tue, 08 Sep 2026 19:14:55 GMT  
		Size: 5.2 KB (5224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26.7.0-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:a75775650173f13500d672d4d073b08ae8d20d46991136715abf3870682f3c86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17452691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c89132a00811bf83d2cc588fe9c2898f0cca20c6922a692c0e21e50a8e2335f`

```dockerfile
```

-	Layers:
	-	`sha256:f808f33758cbaa0098097db77726ff7cd992a39cf7a95d8bfde42c5be3cebf3a`  
		Last Modified: Tue, 08 Sep 2026 19:14:53 GMT  
		Size: 17.4 MB (17417393 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7518911e256d5236a3275979046f1ad3094b3027975d3c3ace300949aa89eb19`  
		Last Modified: Tue, 08 Sep 2026 19:14:52 GMT  
		Size: 35.3 KB (35298 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:26.7.0-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:f7b3452e2f5ee773e9fd4f9988e7ea807d879acd3b52961607924dd17b07d9ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.7 MB (268716373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7962d59d8b8dc9cf17078c2286222195108936478af77248ad804a60e845f632`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 08 Sep 2026 18:57:57 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 08 Sep 2026 18:57:57 GMT
CMD ["/bin/bash"]
# Tue, 08 Sep 2026 19:08:29 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 08 Sep 2026 19:08:31 GMT
ENV GOSU_VERSION=1.19
# Tue, 08 Sep 2026 19:08:31 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 08 Sep 2026 19:09:08 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 08 Sep 2026 19:09:09 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 08 Sep 2026 19:09:09 GMT
ENV MYSQL_MAJOR=innovation
# Tue, 08 Sep 2026 19:09:09 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Tue, 08 Sep 2026 19:09:09 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 08 Sep 2026 19:09:50 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 08 Sep 2026 19:09:50 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 08 Sep 2026 19:09:50 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Tue, 08 Sep 2026 19:10:42 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 08 Sep 2026 19:10:42 GMT
VOLUME [/var/lib/mysql]
# Tue, 08 Sep 2026 19:10:42 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 08 Sep 2026 19:10:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 08 Sep 2026 19:10:42 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 08 Sep 2026 19:10:42 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:43c5deee1c317416925b86b1f2e78b730d2819023376f79b4de9f871323951a3`  
		Last Modified: Tue, 08 Sep 2026 18:58:08 GMT  
		Size: 46.5 MB (46477029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb980a8434e3c4600e45827e85201dcb117fa105cc497695640216f831384390`  
		Last Modified: Tue, 08 Sep 2026 19:11:18 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19c8bf571c7b733ea038259eac861768ae839db6d07c3188d54dc617943033e2`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 737.5 KB (737526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a017510daff3c2f3381e365accaa66eab52f251dc93a013cff3ddc4062c62bfe`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 5.8 MB (5815802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2f8471efd5dddf293b43b461dbe2e803948535cfa581fd02300a0764d47d7a6`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:101bfb51b57e17c638fb10e44f924f41eb5404b23677c7a9acca93868921e848`  
		Last Modified: Tue, 08 Sep 2026 19:11:20 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b549fe7114eb3dfbf6c84556f2f6e3408fc18ae4e25670891a404a451a31b0af`  
		Last Modified: Tue, 08 Sep 2026 19:11:22 GMT  
		Size: 57.4 MB (57434910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98cbda40669b120f5206b5bea13286fc329791c1646806a2dddd84cc214f3819`  
		Last Modified: Tue, 08 Sep 2026 19:11:20 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf3502e763277be8a4dada567b8594b93828c204a5f6749c1b094d09e2faad5c`  
		Last Modified: Tue, 08 Sep 2026 19:11:24 GMT  
		Size: 158.2 MB (158241725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:646bd661ef31ead80e724c18cefe7a9571656c1c72aeb850d1af8f074e002ced`  
		Last Modified: Tue, 08 Sep 2026 19:11:21 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26.7.0-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:d45a7b45b6517cfb0f68c958649e4a63344ec42b111affbb3e3d3ea1a4450629
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17451504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e9c9306bb030ca92183cac533c8d6b5bee52915196be1a72c2d3e06cd21e8ec`

```dockerfile
```

-	Layers:
	-	`sha256:2614b75d327a3e726d19cb86e7a57fbf58085188c0e4955bd960163b7816275a`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 17.4 MB (17415866 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:083b04283ce84ef68972ce949eb4e3acbe53e3b555a8d36057213d7eadb8f865`  
		Last Modified: Tue, 08 Sep 2026 19:11:18 GMT  
		Size: 35.6 KB (35638 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:8`

```console
$ docker pull mysql@sha256:3466ba4a4828aa8d46fb7c3bc16b67b781c98413cf4ea0fac6feaa6e881faa26
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8` - linux; amd64

```console
$ docker pull mysql@sha256:d28300f0136cb6d4e24603b9da20460f216845ea778b3b9a4166825d78f0c7dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.0 MB (238983928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8eccfc5e5aebbf3a49375b13956a88cd244d13ac6b25b52dec792b7526363b19`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 08 Sep 2026 18:58:50 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 08 Sep 2026 18:58:50 GMT
CMD ["/bin/bash"]
# Tue, 08 Sep 2026 19:18:46 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 08 Sep 2026 19:18:48 GMT
ENV GOSU_VERSION=1.19
# Tue, 08 Sep 2026 19:18:48 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 08 Sep 2026 19:19:19 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 08 Sep 2026 19:19:20 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 08 Sep 2026 19:19:20 GMT
ENV MYSQL_MAJOR=8.4
# Tue, 08 Sep 2026 19:19:20 GMT
ENV MYSQL_VERSION=8.4.11-1.el9
# Tue, 08 Sep 2026 19:19:20 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 08 Sep 2026 19:19:53 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 08 Sep 2026 19:19:53 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 08 Sep 2026 19:19:53 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Tue, 08 Sep 2026 19:20:34 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 08 Sep 2026 19:20:34 GMT
VOLUME [/var/lib/mysql]
# Tue, 08 Sep 2026 19:20:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 08 Sep 2026 19:20:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 08 Sep 2026 19:20:34 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 08 Sep 2026 19:20:34 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:4bb6eac2f26a5221d1c656c424daeae066dc3efa0be69499880b834d8dbfbd84`  
		Last Modified: Tue, 08 Sep 2026 18:59:01 GMT  
		Size: 47.9 MB (47931580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc54645506622d18010c7826c18d6013e6ea81e880cf3b6130f8c5ccda1c44f7`  
		Last Modified: Tue, 08 Sep 2026 19:21:05 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e432419b783225c850aef68959d0ba9bb5497fc3a9eeb3cfe5b87d22316eb38b`  
		Last Modified: Tue, 08 Sep 2026 19:21:04 GMT  
		Size: 783.6 KB (783557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efcdee021140f843cf14f3f87eab103f74cce4ee807d7e3f691d13d33dc61065`  
		Last Modified: Tue, 08 Sep 2026 19:21:05 GMT  
		Size: 6.2 MB (6193112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17ed162ed4d4d46196a2f019e8c0a721a417dc9c2fdc96a1b8d6f857d31423ad`  
		Last Modified: Tue, 08 Sep 2026 19:21:05 GMT  
		Size: 2.6 KB (2610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c97b1635390390ee1378a80b2a9b0cdc73bfa3db85b86123bae804dab1440d50`  
		Last Modified: Tue, 08 Sep 2026 19:21:06 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:376471fc2810982357d5be04f029c5f6b3b653332f797b8db35cfd1477243691`  
		Last Modified: Tue, 08 Sep 2026 19:21:07 GMT  
		Size: 51.6 MB (51635806 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54c6505f4c6407063c2516161ff890c77cecea98db3fd6b90b6c982c82b9cbff`  
		Last Modified: Tue, 08 Sep 2026 19:21:06 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d5c020522d10861cddeed4b72728cf04b991ef4513eb0fd039dbe3a131975db`  
		Last Modified: Tue, 08 Sep 2026 19:21:09 GMT  
		Size: 132.4 MB (132430497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9aec5f91e544f16eb4717965cb2313f847a84e110735e636a9f349c8821ca18c`  
		Last Modified: Tue, 08 Sep 2026 19:21:07 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8` - unknown; unknown

```console
$ docker pull mysql@sha256:9e47cf91495fa30a00bfa7fd542d536e631a9da24c05c5502a4df0489520abd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15745217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9137bb97b81fef2a987c2af1d2eab84d177b599f20e187d5cc16cda5f3de5337`

```dockerfile
```

-	Layers:
	-	`sha256:26e5de38a252bf757cd844fb9332dbd71b6700239111d58217f0fd7498a87376`  
		Last Modified: Tue, 08 Sep 2026 19:21:05 GMT  
		Size: 15.7 MB (15711904 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:20f6fb79d0c6a72055f662bbf94676b610242b9196ccfd57bd099bffe81e240a`  
		Last Modified: Tue, 08 Sep 2026 19:21:05 GMT  
		Size: 33.3 KB (33313 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:dd3f8b8ff48475310433b2c4b51fa48793435551e0e917c438cdb92a0c7dff34
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.7 MB (233686799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e23c72f7944cba784a20119d71ebd566a81ffbd0db685da70db2bd1ed9f04a2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 08 Sep 2026 18:57:57 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 08 Sep 2026 18:57:57 GMT
CMD ["/bin/bash"]
# Tue, 08 Sep 2026 19:08:29 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 08 Sep 2026 19:08:31 GMT
ENV GOSU_VERSION=1.19
# Tue, 08 Sep 2026 19:08:31 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 08 Sep 2026 19:09:08 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 08 Sep 2026 19:09:09 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 08 Sep 2026 19:09:09 GMT
ENV MYSQL_MAJOR=8.4
# Tue, 08 Sep 2026 19:09:09 GMT
ENV MYSQL_VERSION=8.4.11-1.el9
# Tue, 08 Sep 2026 19:13:51 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 08 Sep 2026 19:14:31 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 08 Sep 2026 19:14:31 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 08 Sep 2026 19:14:31 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Tue, 08 Sep 2026 19:15:20 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 08 Sep 2026 19:15:20 GMT
VOLUME [/var/lib/mysql]
# Tue, 08 Sep 2026 19:15:20 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 08 Sep 2026 19:15:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 08 Sep 2026 19:15:20 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 08 Sep 2026 19:15:20 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:43c5deee1c317416925b86b1f2e78b730d2819023376f79b4de9f871323951a3`  
		Last Modified: Tue, 08 Sep 2026 18:58:08 GMT  
		Size: 46.5 MB (46477029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb980a8434e3c4600e45827e85201dcb117fa105cc497695640216f831384390`  
		Last Modified: Tue, 08 Sep 2026 19:11:18 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19c8bf571c7b733ea038259eac861768ae839db6d07c3188d54dc617943033e2`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 737.5 KB (737526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a017510daff3c2f3381e365accaa66eab52f251dc93a013cff3ddc4062c62bfe`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 5.8 MB (5815802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2f8471efd5dddf293b43b461dbe2e803948535cfa581fd02300a0764d47d7a6`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01a96e418dad73cf572eee59f36c6ddaeb8e051c3273b17f83ecc534c04882d2`  
		Last Modified: Tue, 08 Sep 2026 19:15:50 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05c249ba6d0f84ee8710810ecd935af6765dde829329d153201c0048d2fb196a`  
		Last Modified: Tue, 08 Sep 2026 19:15:53 GMT  
		Size: 49.9 MB (49859112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42e7229b8e85149a79260ea20c0ec4f2bc5a04b853a6e10f51e55865cad4ec86`  
		Last Modified: Tue, 08 Sep 2026 19:15:50 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8acf93dbf7df72b2282785e76965c758765d3643b4df4cffdb33a2e9812d2eae`  
		Last Modified: Tue, 08 Sep 2026 19:15:54 GMT  
		Size: 130.8 MB (130787957 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b72279cda834ce832af860c2cbae659eaf707783b2c8311a8a8c2bd65590593`  
		Last Modified: Tue, 08 Sep 2026 19:15:52 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8` - unknown; unknown

```console
$ docker pull mysql@sha256:eb1b58f6f4e9a86684b7e0ac342737e6ea1810ec736da26abb2d9e324a771979
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15743886 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35e5a48b67c85b412e7847c2381610a7bd07ba61912b14cd6c27c5e2ca18a493`

```dockerfile
```

-	Layers:
	-	`sha256:ef38a14ebfa8df9ba7caf46edbc9bc4e728e7cad2ee713ff4e210f28245d3eab`  
		Last Modified: Tue, 08 Sep 2026 19:15:51 GMT  
		Size: 15.7 MB (15710304 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5794a2b5d65f1202a71c4dd637d0588cdcd3c0aef5130a3019db6cd3853d8335`  
		Last Modified: Tue, 08 Sep 2026 19:15:50 GMT  
		Size: 33.6 KB (33582 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:8-oracle`

```console
$ docker pull mysql@sha256:3466ba4a4828aa8d46fb7c3bc16b67b781c98413cf4ea0fac6feaa6e881faa26
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:d28300f0136cb6d4e24603b9da20460f216845ea778b3b9a4166825d78f0c7dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.0 MB (238983928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8eccfc5e5aebbf3a49375b13956a88cd244d13ac6b25b52dec792b7526363b19`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 08 Sep 2026 18:58:50 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 08 Sep 2026 18:58:50 GMT
CMD ["/bin/bash"]
# Tue, 08 Sep 2026 19:18:46 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 08 Sep 2026 19:18:48 GMT
ENV GOSU_VERSION=1.19
# Tue, 08 Sep 2026 19:18:48 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 08 Sep 2026 19:19:19 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 08 Sep 2026 19:19:20 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 08 Sep 2026 19:19:20 GMT
ENV MYSQL_MAJOR=8.4
# Tue, 08 Sep 2026 19:19:20 GMT
ENV MYSQL_VERSION=8.4.11-1.el9
# Tue, 08 Sep 2026 19:19:20 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 08 Sep 2026 19:19:53 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 08 Sep 2026 19:19:53 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 08 Sep 2026 19:19:53 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Tue, 08 Sep 2026 19:20:34 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 08 Sep 2026 19:20:34 GMT
VOLUME [/var/lib/mysql]
# Tue, 08 Sep 2026 19:20:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 08 Sep 2026 19:20:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 08 Sep 2026 19:20:34 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 08 Sep 2026 19:20:34 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:4bb6eac2f26a5221d1c656c424daeae066dc3efa0be69499880b834d8dbfbd84`  
		Last Modified: Tue, 08 Sep 2026 18:59:01 GMT  
		Size: 47.9 MB (47931580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc54645506622d18010c7826c18d6013e6ea81e880cf3b6130f8c5ccda1c44f7`  
		Last Modified: Tue, 08 Sep 2026 19:21:05 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e432419b783225c850aef68959d0ba9bb5497fc3a9eeb3cfe5b87d22316eb38b`  
		Last Modified: Tue, 08 Sep 2026 19:21:04 GMT  
		Size: 783.6 KB (783557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efcdee021140f843cf14f3f87eab103f74cce4ee807d7e3f691d13d33dc61065`  
		Last Modified: Tue, 08 Sep 2026 19:21:05 GMT  
		Size: 6.2 MB (6193112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17ed162ed4d4d46196a2f019e8c0a721a417dc9c2fdc96a1b8d6f857d31423ad`  
		Last Modified: Tue, 08 Sep 2026 19:21:05 GMT  
		Size: 2.6 KB (2610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c97b1635390390ee1378a80b2a9b0cdc73bfa3db85b86123bae804dab1440d50`  
		Last Modified: Tue, 08 Sep 2026 19:21:06 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:376471fc2810982357d5be04f029c5f6b3b653332f797b8db35cfd1477243691`  
		Last Modified: Tue, 08 Sep 2026 19:21:07 GMT  
		Size: 51.6 MB (51635806 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54c6505f4c6407063c2516161ff890c77cecea98db3fd6b90b6c982c82b9cbff`  
		Last Modified: Tue, 08 Sep 2026 19:21:06 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d5c020522d10861cddeed4b72728cf04b991ef4513eb0fd039dbe3a131975db`  
		Last Modified: Tue, 08 Sep 2026 19:21:09 GMT  
		Size: 132.4 MB (132430497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9aec5f91e544f16eb4717965cb2313f847a84e110735e636a9f349c8821ca18c`  
		Last Modified: Tue, 08 Sep 2026 19:21:07 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:9e47cf91495fa30a00bfa7fd542d536e631a9da24c05c5502a4df0489520abd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15745217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9137bb97b81fef2a987c2af1d2eab84d177b599f20e187d5cc16cda5f3de5337`

```dockerfile
```

-	Layers:
	-	`sha256:26e5de38a252bf757cd844fb9332dbd71b6700239111d58217f0fd7498a87376`  
		Last Modified: Tue, 08 Sep 2026 19:21:05 GMT  
		Size: 15.7 MB (15711904 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:20f6fb79d0c6a72055f662bbf94676b610242b9196ccfd57bd099bffe81e240a`  
		Last Modified: Tue, 08 Sep 2026 19:21:05 GMT  
		Size: 33.3 KB (33313 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:dd3f8b8ff48475310433b2c4b51fa48793435551e0e917c438cdb92a0c7dff34
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.7 MB (233686799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e23c72f7944cba784a20119d71ebd566a81ffbd0db685da70db2bd1ed9f04a2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 08 Sep 2026 18:57:57 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 08 Sep 2026 18:57:57 GMT
CMD ["/bin/bash"]
# Tue, 08 Sep 2026 19:08:29 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 08 Sep 2026 19:08:31 GMT
ENV GOSU_VERSION=1.19
# Tue, 08 Sep 2026 19:08:31 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 08 Sep 2026 19:09:08 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 08 Sep 2026 19:09:09 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 08 Sep 2026 19:09:09 GMT
ENV MYSQL_MAJOR=8.4
# Tue, 08 Sep 2026 19:09:09 GMT
ENV MYSQL_VERSION=8.4.11-1.el9
# Tue, 08 Sep 2026 19:13:51 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 08 Sep 2026 19:14:31 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 08 Sep 2026 19:14:31 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 08 Sep 2026 19:14:31 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Tue, 08 Sep 2026 19:15:20 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 08 Sep 2026 19:15:20 GMT
VOLUME [/var/lib/mysql]
# Tue, 08 Sep 2026 19:15:20 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 08 Sep 2026 19:15:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 08 Sep 2026 19:15:20 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 08 Sep 2026 19:15:20 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:43c5deee1c317416925b86b1f2e78b730d2819023376f79b4de9f871323951a3`  
		Last Modified: Tue, 08 Sep 2026 18:58:08 GMT  
		Size: 46.5 MB (46477029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb980a8434e3c4600e45827e85201dcb117fa105cc497695640216f831384390`  
		Last Modified: Tue, 08 Sep 2026 19:11:18 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19c8bf571c7b733ea038259eac861768ae839db6d07c3188d54dc617943033e2`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 737.5 KB (737526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a017510daff3c2f3381e365accaa66eab52f251dc93a013cff3ddc4062c62bfe`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 5.8 MB (5815802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2f8471efd5dddf293b43b461dbe2e803948535cfa581fd02300a0764d47d7a6`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01a96e418dad73cf572eee59f36c6ddaeb8e051c3273b17f83ecc534c04882d2`  
		Last Modified: Tue, 08 Sep 2026 19:15:50 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05c249ba6d0f84ee8710810ecd935af6765dde829329d153201c0048d2fb196a`  
		Last Modified: Tue, 08 Sep 2026 19:15:53 GMT  
		Size: 49.9 MB (49859112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42e7229b8e85149a79260ea20c0ec4f2bc5a04b853a6e10f51e55865cad4ec86`  
		Last Modified: Tue, 08 Sep 2026 19:15:50 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8acf93dbf7df72b2282785e76965c758765d3643b4df4cffdb33a2e9812d2eae`  
		Last Modified: Tue, 08 Sep 2026 19:15:54 GMT  
		Size: 130.8 MB (130787957 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b72279cda834ce832af860c2cbae659eaf707783b2c8311a8a8c2bd65590593`  
		Last Modified: Tue, 08 Sep 2026 19:15:52 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:eb1b58f6f4e9a86684b7e0ac342737e6ea1810ec736da26abb2d9e324a771979
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15743886 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35e5a48b67c85b412e7847c2381610a7bd07ba61912b14cd6c27c5e2ca18a493`

```dockerfile
```

-	Layers:
	-	`sha256:ef38a14ebfa8df9ba7caf46edbc9bc4e728e7cad2ee713ff4e210f28245d3eab`  
		Last Modified: Tue, 08 Sep 2026 19:15:51 GMT  
		Size: 15.7 MB (15710304 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5794a2b5d65f1202a71c4dd637d0588cdcd3c0aef5130a3019db6cd3853d8335`  
		Last Modified: Tue, 08 Sep 2026 19:15:50 GMT  
		Size: 33.6 KB (33582 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:8-oraclelinux9`

```console
$ docker pull mysql@sha256:3466ba4a4828aa8d46fb7c3bc16b67b781c98413cf4ea0fac6feaa6e881faa26
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:d28300f0136cb6d4e24603b9da20460f216845ea778b3b9a4166825d78f0c7dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.0 MB (238983928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8eccfc5e5aebbf3a49375b13956a88cd244d13ac6b25b52dec792b7526363b19`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 08 Sep 2026 18:58:50 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 08 Sep 2026 18:58:50 GMT
CMD ["/bin/bash"]
# Tue, 08 Sep 2026 19:18:46 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 08 Sep 2026 19:18:48 GMT
ENV GOSU_VERSION=1.19
# Tue, 08 Sep 2026 19:18:48 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 08 Sep 2026 19:19:19 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 08 Sep 2026 19:19:20 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 08 Sep 2026 19:19:20 GMT
ENV MYSQL_MAJOR=8.4
# Tue, 08 Sep 2026 19:19:20 GMT
ENV MYSQL_VERSION=8.4.11-1.el9
# Tue, 08 Sep 2026 19:19:20 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 08 Sep 2026 19:19:53 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 08 Sep 2026 19:19:53 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 08 Sep 2026 19:19:53 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Tue, 08 Sep 2026 19:20:34 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 08 Sep 2026 19:20:34 GMT
VOLUME [/var/lib/mysql]
# Tue, 08 Sep 2026 19:20:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 08 Sep 2026 19:20:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 08 Sep 2026 19:20:34 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 08 Sep 2026 19:20:34 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:4bb6eac2f26a5221d1c656c424daeae066dc3efa0be69499880b834d8dbfbd84`  
		Last Modified: Tue, 08 Sep 2026 18:59:01 GMT  
		Size: 47.9 MB (47931580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc54645506622d18010c7826c18d6013e6ea81e880cf3b6130f8c5ccda1c44f7`  
		Last Modified: Tue, 08 Sep 2026 19:21:05 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e432419b783225c850aef68959d0ba9bb5497fc3a9eeb3cfe5b87d22316eb38b`  
		Last Modified: Tue, 08 Sep 2026 19:21:04 GMT  
		Size: 783.6 KB (783557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efcdee021140f843cf14f3f87eab103f74cce4ee807d7e3f691d13d33dc61065`  
		Last Modified: Tue, 08 Sep 2026 19:21:05 GMT  
		Size: 6.2 MB (6193112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17ed162ed4d4d46196a2f019e8c0a721a417dc9c2fdc96a1b8d6f857d31423ad`  
		Last Modified: Tue, 08 Sep 2026 19:21:05 GMT  
		Size: 2.6 KB (2610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c97b1635390390ee1378a80b2a9b0cdc73bfa3db85b86123bae804dab1440d50`  
		Last Modified: Tue, 08 Sep 2026 19:21:06 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:376471fc2810982357d5be04f029c5f6b3b653332f797b8db35cfd1477243691`  
		Last Modified: Tue, 08 Sep 2026 19:21:07 GMT  
		Size: 51.6 MB (51635806 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54c6505f4c6407063c2516161ff890c77cecea98db3fd6b90b6c982c82b9cbff`  
		Last Modified: Tue, 08 Sep 2026 19:21:06 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d5c020522d10861cddeed4b72728cf04b991ef4513eb0fd039dbe3a131975db`  
		Last Modified: Tue, 08 Sep 2026 19:21:09 GMT  
		Size: 132.4 MB (132430497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9aec5f91e544f16eb4717965cb2313f847a84e110735e636a9f349c8821ca18c`  
		Last Modified: Tue, 08 Sep 2026 19:21:07 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:9e47cf91495fa30a00bfa7fd542d536e631a9da24c05c5502a4df0489520abd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15745217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9137bb97b81fef2a987c2af1d2eab84d177b599f20e187d5cc16cda5f3de5337`

```dockerfile
```

-	Layers:
	-	`sha256:26e5de38a252bf757cd844fb9332dbd71b6700239111d58217f0fd7498a87376`  
		Last Modified: Tue, 08 Sep 2026 19:21:05 GMT  
		Size: 15.7 MB (15711904 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:20f6fb79d0c6a72055f662bbf94676b610242b9196ccfd57bd099bffe81e240a`  
		Last Modified: Tue, 08 Sep 2026 19:21:05 GMT  
		Size: 33.3 KB (33313 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:dd3f8b8ff48475310433b2c4b51fa48793435551e0e917c438cdb92a0c7dff34
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.7 MB (233686799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e23c72f7944cba784a20119d71ebd566a81ffbd0db685da70db2bd1ed9f04a2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 08 Sep 2026 18:57:57 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 08 Sep 2026 18:57:57 GMT
CMD ["/bin/bash"]
# Tue, 08 Sep 2026 19:08:29 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 08 Sep 2026 19:08:31 GMT
ENV GOSU_VERSION=1.19
# Tue, 08 Sep 2026 19:08:31 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 08 Sep 2026 19:09:08 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 08 Sep 2026 19:09:09 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 08 Sep 2026 19:09:09 GMT
ENV MYSQL_MAJOR=8.4
# Tue, 08 Sep 2026 19:09:09 GMT
ENV MYSQL_VERSION=8.4.11-1.el9
# Tue, 08 Sep 2026 19:13:51 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 08 Sep 2026 19:14:31 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 08 Sep 2026 19:14:31 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 08 Sep 2026 19:14:31 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Tue, 08 Sep 2026 19:15:20 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 08 Sep 2026 19:15:20 GMT
VOLUME [/var/lib/mysql]
# Tue, 08 Sep 2026 19:15:20 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 08 Sep 2026 19:15:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 08 Sep 2026 19:15:20 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 08 Sep 2026 19:15:20 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:43c5deee1c317416925b86b1f2e78b730d2819023376f79b4de9f871323951a3`  
		Last Modified: Tue, 08 Sep 2026 18:58:08 GMT  
		Size: 46.5 MB (46477029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb980a8434e3c4600e45827e85201dcb117fa105cc497695640216f831384390`  
		Last Modified: Tue, 08 Sep 2026 19:11:18 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19c8bf571c7b733ea038259eac861768ae839db6d07c3188d54dc617943033e2`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 737.5 KB (737526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a017510daff3c2f3381e365accaa66eab52f251dc93a013cff3ddc4062c62bfe`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 5.8 MB (5815802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2f8471efd5dddf293b43b461dbe2e803948535cfa581fd02300a0764d47d7a6`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01a96e418dad73cf572eee59f36c6ddaeb8e051c3273b17f83ecc534c04882d2`  
		Last Modified: Tue, 08 Sep 2026 19:15:50 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05c249ba6d0f84ee8710810ecd935af6765dde829329d153201c0048d2fb196a`  
		Last Modified: Tue, 08 Sep 2026 19:15:53 GMT  
		Size: 49.9 MB (49859112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42e7229b8e85149a79260ea20c0ec4f2bc5a04b853a6e10f51e55865cad4ec86`  
		Last Modified: Tue, 08 Sep 2026 19:15:50 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8acf93dbf7df72b2282785e76965c758765d3643b4df4cffdb33a2e9812d2eae`  
		Last Modified: Tue, 08 Sep 2026 19:15:54 GMT  
		Size: 130.8 MB (130787957 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b72279cda834ce832af860c2cbae659eaf707783b2c8311a8a8c2bd65590593`  
		Last Modified: Tue, 08 Sep 2026 19:15:52 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:eb1b58f6f4e9a86684b7e0ac342737e6ea1810ec736da26abb2d9e324a771979
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15743886 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35e5a48b67c85b412e7847c2381610a7bd07ba61912b14cd6c27c5e2ca18a493`

```dockerfile
```

-	Layers:
	-	`sha256:ef38a14ebfa8df9ba7caf46edbc9bc4e728e7cad2ee713ff4e210f28245d3eab`  
		Last Modified: Tue, 08 Sep 2026 19:15:51 GMT  
		Size: 15.7 MB (15710304 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5794a2b5d65f1202a71c4dd637d0588cdcd3c0aef5130a3019db6cd3853d8335`  
		Last Modified: Tue, 08 Sep 2026 19:15:50 GMT  
		Size: 33.6 KB (33582 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:8.4`

```console
$ docker pull mysql@sha256:3466ba4a4828aa8d46fb7c3bc16b67b781c98413cf4ea0fac6feaa6e881faa26
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8.4` - linux; amd64

```console
$ docker pull mysql@sha256:d28300f0136cb6d4e24603b9da20460f216845ea778b3b9a4166825d78f0c7dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.0 MB (238983928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8eccfc5e5aebbf3a49375b13956a88cd244d13ac6b25b52dec792b7526363b19`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 08 Sep 2026 18:58:50 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 08 Sep 2026 18:58:50 GMT
CMD ["/bin/bash"]
# Tue, 08 Sep 2026 19:18:46 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 08 Sep 2026 19:18:48 GMT
ENV GOSU_VERSION=1.19
# Tue, 08 Sep 2026 19:18:48 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 08 Sep 2026 19:19:19 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 08 Sep 2026 19:19:20 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 08 Sep 2026 19:19:20 GMT
ENV MYSQL_MAJOR=8.4
# Tue, 08 Sep 2026 19:19:20 GMT
ENV MYSQL_VERSION=8.4.11-1.el9
# Tue, 08 Sep 2026 19:19:20 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 08 Sep 2026 19:19:53 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 08 Sep 2026 19:19:53 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 08 Sep 2026 19:19:53 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Tue, 08 Sep 2026 19:20:34 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 08 Sep 2026 19:20:34 GMT
VOLUME [/var/lib/mysql]
# Tue, 08 Sep 2026 19:20:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 08 Sep 2026 19:20:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 08 Sep 2026 19:20:34 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 08 Sep 2026 19:20:34 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:4bb6eac2f26a5221d1c656c424daeae066dc3efa0be69499880b834d8dbfbd84`  
		Last Modified: Tue, 08 Sep 2026 18:59:01 GMT  
		Size: 47.9 MB (47931580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc54645506622d18010c7826c18d6013e6ea81e880cf3b6130f8c5ccda1c44f7`  
		Last Modified: Tue, 08 Sep 2026 19:21:05 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e432419b783225c850aef68959d0ba9bb5497fc3a9eeb3cfe5b87d22316eb38b`  
		Last Modified: Tue, 08 Sep 2026 19:21:04 GMT  
		Size: 783.6 KB (783557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efcdee021140f843cf14f3f87eab103f74cce4ee807d7e3f691d13d33dc61065`  
		Last Modified: Tue, 08 Sep 2026 19:21:05 GMT  
		Size: 6.2 MB (6193112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17ed162ed4d4d46196a2f019e8c0a721a417dc9c2fdc96a1b8d6f857d31423ad`  
		Last Modified: Tue, 08 Sep 2026 19:21:05 GMT  
		Size: 2.6 KB (2610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c97b1635390390ee1378a80b2a9b0cdc73bfa3db85b86123bae804dab1440d50`  
		Last Modified: Tue, 08 Sep 2026 19:21:06 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:376471fc2810982357d5be04f029c5f6b3b653332f797b8db35cfd1477243691`  
		Last Modified: Tue, 08 Sep 2026 19:21:07 GMT  
		Size: 51.6 MB (51635806 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54c6505f4c6407063c2516161ff890c77cecea98db3fd6b90b6c982c82b9cbff`  
		Last Modified: Tue, 08 Sep 2026 19:21:06 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d5c020522d10861cddeed4b72728cf04b991ef4513eb0fd039dbe3a131975db`  
		Last Modified: Tue, 08 Sep 2026 19:21:09 GMT  
		Size: 132.4 MB (132430497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9aec5f91e544f16eb4717965cb2313f847a84e110735e636a9f349c8821ca18c`  
		Last Modified: Tue, 08 Sep 2026 19:21:07 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4` - unknown; unknown

```console
$ docker pull mysql@sha256:9e47cf91495fa30a00bfa7fd542d536e631a9da24c05c5502a4df0489520abd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15745217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9137bb97b81fef2a987c2af1d2eab84d177b599f20e187d5cc16cda5f3de5337`

```dockerfile
```

-	Layers:
	-	`sha256:26e5de38a252bf757cd844fb9332dbd71b6700239111d58217f0fd7498a87376`  
		Last Modified: Tue, 08 Sep 2026 19:21:05 GMT  
		Size: 15.7 MB (15711904 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:20f6fb79d0c6a72055f662bbf94676b610242b9196ccfd57bd099bffe81e240a`  
		Last Modified: Tue, 08 Sep 2026 19:21:05 GMT  
		Size: 33.3 KB (33313 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8.4` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:dd3f8b8ff48475310433b2c4b51fa48793435551e0e917c438cdb92a0c7dff34
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.7 MB (233686799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e23c72f7944cba784a20119d71ebd566a81ffbd0db685da70db2bd1ed9f04a2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 08 Sep 2026 18:57:57 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 08 Sep 2026 18:57:57 GMT
CMD ["/bin/bash"]
# Tue, 08 Sep 2026 19:08:29 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 08 Sep 2026 19:08:31 GMT
ENV GOSU_VERSION=1.19
# Tue, 08 Sep 2026 19:08:31 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 08 Sep 2026 19:09:08 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 08 Sep 2026 19:09:09 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 08 Sep 2026 19:09:09 GMT
ENV MYSQL_MAJOR=8.4
# Tue, 08 Sep 2026 19:09:09 GMT
ENV MYSQL_VERSION=8.4.11-1.el9
# Tue, 08 Sep 2026 19:13:51 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 08 Sep 2026 19:14:31 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 08 Sep 2026 19:14:31 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 08 Sep 2026 19:14:31 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Tue, 08 Sep 2026 19:15:20 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 08 Sep 2026 19:15:20 GMT
VOLUME [/var/lib/mysql]
# Tue, 08 Sep 2026 19:15:20 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 08 Sep 2026 19:15:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 08 Sep 2026 19:15:20 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 08 Sep 2026 19:15:20 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:43c5deee1c317416925b86b1f2e78b730d2819023376f79b4de9f871323951a3`  
		Last Modified: Tue, 08 Sep 2026 18:58:08 GMT  
		Size: 46.5 MB (46477029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb980a8434e3c4600e45827e85201dcb117fa105cc497695640216f831384390`  
		Last Modified: Tue, 08 Sep 2026 19:11:18 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19c8bf571c7b733ea038259eac861768ae839db6d07c3188d54dc617943033e2`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 737.5 KB (737526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a017510daff3c2f3381e365accaa66eab52f251dc93a013cff3ddc4062c62bfe`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 5.8 MB (5815802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2f8471efd5dddf293b43b461dbe2e803948535cfa581fd02300a0764d47d7a6`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01a96e418dad73cf572eee59f36c6ddaeb8e051c3273b17f83ecc534c04882d2`  
		Last Modified: Tue, 08 Sep 2026 19:15:50 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05c249ba6d0f84ee8710810ecd935af6765dde829329d153201c0048d2fb196a`  
		Last Modified: Tue, 08 Sep 2026 19:15:53 GMT  
		Size: 49.9 MB (49859112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42e7229b8e85149a79260ea20c0ec4f2bc5a04b853a6e10f51e55865cad4ec86`  
		Last Modified: Tue, 08 Sep 2026 19:15:50 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8acf93dbf7df72b2282785e76965c758765d3643b4df4cffdb33a2e9812d2eae`  
		Last Modified: Tue, 08 Sep 2026 19:15:54 GMT  
		Size: 130.8 MB (130787957 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b72279cda834ce832af860c2cbae659eaf707783b2c8311a8a8c2bd65590593`  
		Last Modified: Tue, 08 Sep 2026 19:15:52 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4` - unknown; unknown

```console
$ docker pull mysql@sha256:eb1b58f6f4e9a86684b7e0ac342737e6ea1810ec736da26abb2d9e324a771979
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15743886 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35e5a48b67c85b412e7847c2381610a7bd07ba61912b14cd6c27c5e2ca18a493`

```dockerfile
```

-	Layers:
	-	`sha256:ef38a14ebfa8df9ba7caf46edbc9bc4e728e7cad2ee713ff4e210f28245d3eab`  
		Last Modified: Tue, 08 Sep 2026 19:15:51 GMT  
		Size: 15.7 MB (15710304 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5794a2b5d65f1202a71c4dd637d0588cdcd3c0aef5130a3019db6cd3853d8335`  
		Last Modified: Tue, 08 Sep 2026 19:15:50 GMT  
		Size: 33.6 KB (33582 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:8.4-oracle`

```console
$ docker pull mysql@sha256:3466ba4a4828aa8d46fb7c3bc16b67b781c98413cf4ea0fac6feaa6e881faa26
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8.4-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:d28300f0136cb6d4e24603b9da20460f216845ea778b3b9a4166825d78f0c7dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.0 MB (238983928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8eccfc5e5aebbf3a49375b13956a88cd244d13ac6b25b52dec792b7526363b19`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 08 Sep 2026 18:58:50 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 08 Sep 2026 18:58:50 GMT
CMD ["/bin/bash"]
# Tue, 08 Sep 2026 19:18:46 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 08 Sep 2026 19:18:48 GMT
ENV GOSU_VERSION=1.19
# Tue, 08 Sep 2026 19:18:48 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 08 Sep 2026 19:19:19 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 08 Sep 2026 19:19:20 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 08 Sep 2026 19:19:20 GMT
ENV MYSQL_MAJOR=8.4
# Tue, 08 Sep 2026 19:19:20 GMT
ENV MYSQL_VERSION=8.4.11-1.el9
# Tue, 08 Sep 2026 19:19:20 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 08 Sep 2026 19:19:53 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 08 Sep 2026 19:19:53 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 08 Sep 2026 19:19:53 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Tue, 08 Sep 2026 19:20:34 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 08 Sep 2026 19:20:34 GMT
VOLUME [/var/lib/mysql]
# Tue, 08 Sep 2026 19:20:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 08 Sep 2026 19:20:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 08 Sep 2026 19:20:34 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 08 Sep 2026 19:20:34 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:4bb6eac2f26a5221d1c656c424daeae066dc3efa0be69499880b834d8dbfbd84`  
		Last Modified: Tue, 08 Sep 2026 18:59:01 GMT  
		Size: 47.9 MB (47931580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc54645506622d18010c7826c18d6013e6ea81e880cf3b6130f8c5ccda1c44f7`  
		Last Modified: Tue, 08 Sep 2026 19:21:05 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e432419b783225c850aef68959d0ba9bb5497fc3a9eeb3cfe5b87d22316eb38b`  
		Last Modified: Tue, 08 Sep 2026 19:21:04 GMT  
		Size: 783.6 KB (783557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efcdee021140f843cf14f3f87eab103f74cce4ee807d7e3f691d13d33dc61065`  
		Last Modified: Tue, 08 Sep 2026 19:21:05 GMT  
		Size: 6.2 MB (6193112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17ed162ed4d4d46196a2f019e8c0a721a417dc9c2fdc96a1b8d6f857d31423ad`  
		Last Modified: Tue, 08 Sep 2026 19:21:05 GMT  
		Size: 2.6 KB (2610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c97b1635390390ee1378a80b2a9b0cdc73bfa3db85b86123bae804dab1440d50`  
		Last Modified: Tue, 08 Sep 2026 19:21:06 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:376471fc2810982357d5be04f029c5f6b3b653332f797b8db35cfd1477243691`  
		Last Modified: Tue, 08 Sep 2026 19:21:07 GMT  
		Size: 51.6 MB (51635806 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54c6505f4c6407063c2516161ff890c77cecea98db3fd6b90b6c982c82b9cbff`  
		Last Modified: Tue, 08 Sep 2026 19:21:06 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d5c020522d10861cddeed4b72728cf04b991ef4513eb0fd039dbe3a131975db`  
		Last Modified: Tue, 08 Sep 2026 19:21:09 GMT  
		Size: 132.4 MB (132430497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9aec5f91e544f16eb4717965cb2313f847a84e110735e636a9f349c8821ca18c`  
		Last Modified: Tue, 08 Sep 2026 19:21:07 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:9e47cf91495fa30a00bfa7fd542d536e631a9da24c05c5502a4df0489520abd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15745217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9137bb97b81fef2a987c2af1d2eab84d177b599f20e187d5cc16cda5f3de5337`

```dockerfile
```

-	Layers:
	-	`sha256:26e5de38a252bf757cd844fb9332dbd71b6700239111d58217f0fd7498a87376`  
		Last Modified: Tue, 08 Sep 2026 19:21:05 GMT  
		Size: 15.7 MB (15711904 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:20f6fb79d0c6a72055f662bbf94676b610242b9196ccfd57bd099bffe81e240a`  
		Last Modified: Tue, 08 Sep 2026 19:21:05 GMT  
		Size: 33.3 KB (33313 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8.4-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:dd3f8b8ff48475310433b2c4b51fa48793435551e0e917c438cdb92a0c7dff34
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.7 MB (233686799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e23c72f7944cba784a20119d71ebd566a81ffbd0db685da70db2bd1ed9f04a2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 08 Sep 2026 18:57:57 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 08 Sep 2026 18:57:57 GMT
CMD ["/bin/bash"]
# Tue, 08 Sep 2026 19:08:29 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 08 Sep 2026 19:08:31 GMT
ENV GOSU_VERSION=1.19
# Tue, 08 Sep 2026 19:08:31 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 08 Sep 2026 19:09:08 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 08 Sep 2026 19:09:09 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 08 Sep 2026 19:09:09 GMT
ENV MYSQL_MAJOR=8.4
# Tue, 08 Sep 2026 19:09:09 GMT
ENV MYSQL_VERSION=8.4.11-1.el9
# Tue, 08 Sep 2026 19:13:51 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 08 Sep 2026 19:14:31 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 08 Sep 2026 19:14:31 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 08 Sep 2026 19:14:31 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Tue, 08 Sep 2026 19:15:20 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 08 Sep 2026 19:15:20 GMT
VOLUME [/var/lib/mysql]
# Tue, 08 Sep 2026 19:15:20 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 08 Sep 2026 19:15:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 08 Sep 2026 19:15:20 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 08 Sep 2026 19:15:20 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:43c5deee1c317416925b86b1f2e78b730d2819023376f79b4de9f871323951a3`  
		Last Modified: Tue, 08 Sep 2026 18:58:08 GMT  
		Size: 46.5 MB (46477029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb980a8434e3c4600e45827e85201dcb117fa105cc497695640216f831384390`  
		Last Modified: Tue, 08 Sep 2026 19:11:18 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19c8bf571c7b733ea038259eac861768ae839db6d07c3188d54dc617943033e2`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 737.5 KB (737526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a017510daff3c2f3381e365accaa66eab52f251dc93a013cff3ddc4062c62bfe`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 5.8 MB (5815802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2f8471efd5dddf293b43b461dbe2e803948535cfa581fd02300a0764d47d7a6`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01a96e418dad73cf572eee59f36c6ddaeb8e051c3273b17f83ecc534c04882d2`  
		Last Modified: Tue, 08 Sep 2026 19:15:50 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05c249ba6d0f84ee8710810ecd935af6765dde829329d153201c0048d2fb196a`  
		Last Modified: Tue, 08 Sep 2026 19:15:53 GMT  
		Size: 49.9 MB (49859112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42e7229b8e85149a79260ea20c0ec4f2bc5a04b853a6e10f51e55865cad4ec86`  
		Last Modified: Tue, 08 Sep 2026 19:15:50 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8acf93dbf7df72b2282785e76965c758765d3643b4df4cffdb33a2e9812d2eae`  
		Last Modified: Tue, 08 Sep 2026 19:15:54 GMT  
		Size: 130.8 MB (130787957 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b72279cda834ce832af860c2cbae659eaf707783b2c8311a8a8c2bd65590593`  
		Last Modified: Tue, 08 Sep 2026 19:15:52 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:eb1b58f6f4e9a86684b7e0ac342737e6ea1810ec736da26abb2d9e324a771979
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15743886 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35e5a48b67c85b412e7847c2381610a7bd07ba61912b14cd6c27c5e2ca18a493`

```dockerfile
```

-	Layers:
	-	`sha256:ef38a14ebfa8df9ba7caf46edbc9bc4e728e7cad2ee713ff4e210f28245d3eab`  
		Last Modified: Tue, 08 Sep 2026 19:15:51 GMT  
		Size: 15.7 MB (15710304 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5794a2b5d65f1202a71c4dd637d0588cdcd3c0aef5130a3019db6cd3853d8335`  
		Last Modified: Tue, 08 Sep 2026 19:15:50 GMT  
		Size: 33.6 KB (33582 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:8.4-oraclelinux9`

```console
$ docker pull mysql@sha256:3466ba4a4828aa8d46fb7c3bc16b67b781c98413cf4ea0fac6feaa6e881faa26
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8.4-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:d28300f0136cb6d4e24603b9da20460f216845ea778b3b9a4166825d78f0c7dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.0 MB (238983928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8eccfc5e5aebbf3a49375b13956a88cd244d13ac6b25b52dec792b7526363b19`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 08 Sep 2026 18:58:50 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 08 Sep 2026 18:58:50 GMT
CMD ["/bin/bash"]
# Tue, 08 Sep 2026 19:18:46 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 08 Sep 2026 19:18:48 GMT
ENV GOSU_VERSION=1.19
# Tue, 08 Sep 2026 19:18:48 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 08 Sep 2026 19:19:19 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 08 Sep 2026 19:19:20 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 08 Sep 2026 19:19:20 GMT
ENV MYSQL_MAJOR=8.4
# Tue, 08 Sep 2026 19:19:20 GMT
ENV MYSQL_VERSION=8.4.11-1.el9
# Tue, 08 Sep 2026 19:19:20 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 08 Sep 2026 19:19:53 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 08 Sep 2026 19:19:53 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 08 Sep 2026 19:19:53 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Tue, 08 Sep 2026 19:20:34 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 08 Sep 2026 19:20:34 GMT
VOLUME [/var/lib/mysql]
# Tue, 08 Sep 2026 19:20:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 08 Sep 2026 19:20:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 08 Sep 2026 19:20:34 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 08 Sep 2026 19:20:34 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:4bb6eac2f26a5221d1c656c424daeae066dc3efa0be69499880b834d8dbfbd84`  
		Last Modified: Tue, 08 Sep 2026 18:59:01 GMT  
		Size: 47.9 MB (47931580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc54645506622d18010c7826c18d6013e6ea81e880cf3b6130f8c5ccda1c44f7`  
		Last Modified: Tue, 08 Sep 2026 19:21:05 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e432419b783225c850aef68959d0ba9bb5497fc3a9eeb3cfe5b87d22316eb38b`  
		Last Modified: Tue, 08 Sep 2026 19:21:04 GMT  
		Size: 783.6 KB (783557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efcdee021140f843cf14f3f87eab103f74cce4ee807d7e3f691d13d33dc61065`  
		Last Modified: Tue, 08 Sep 2026 19:21:05 GMT  
		Size: 6.2 MB (6193112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17ed162ed4d4d46196a2f019e8c0a721a417dc9c2fdc96a1b8d6f857d31423ad`  
		Last Modified: Tue, 08 Sep 2026 19:21:05 GMT  
		Size: 2.6 KB (2610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c97b1635390390ee1378a80b2a9b0cdc73bfa3db85b86123bae804dab1440d50`  
		Last Modified: Tue, 08 Sep 2026 19:21:06 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:376471fc2810982357d5be04f029c5f6b3b653332f797b8db35cfd1477243691`  
		Last Modified: Tue, 08 Sep 2026 19:21:07 GMT  
		Size: 51.6 MB (51635806 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54c6505f4c6407063c2516161ff890c77cecea98db3fd6b90b6c982c82b9cbff`  
		Last Modified: Tue, 08 Sep 2026 19:21:06 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d5c020522d10861cddeed4b72728cf04b991ef4513eb0fd039dbe3a131975db`  
		Last Modified: Tue, 08 Sep 2026 19:21:09 GMT  
		Size: 132.4 MB (132430497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9aec5f91e544f16eb4717965cb2313f847a84e110735e636a9f349c8821ca18c`  
		Last Modified: Tue, 08 Sep 2026 19:21:07 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:9e47cf91495fa30a00bfa7fd542d536e631a9da24c05c5502a4df0489520abd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15745217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9137bb97b81fef2a987c2af1d2eab84d177b599f20e187d5cc16cda5f3de5337`

```dockerfile
```

-	Layers:
	-	`sha256:26e5de38a252bf757cd844fb9332dbd71b6700239111d58217f0fd7498a87376`  
		Last Modified: Tue, 08 Sep 2026 19:21:05 GMT  
		Size: 15.7 MB (15711904 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:20f6fb79d0c6a72055f662bbf94676b610242b9196ccfd57bd099bffe81e240a`  
		Last Modified: Tue, 08 Sep 2026 19:21:05 GMT  
		Size: 33.3 KB (33313 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8.4-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:dd3f8b8ff48475310433b2c4b51fa48793435551e0e917c438cdb92a0c7dff34
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.7 MB (233686799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e23c72f7944cba784a20119d71ebd566a81ffbd0db685da70db2bd1ed9f04a2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 08 Sep 2026 18:57:57 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 08 Sep 2026 18:57:57 GMT
CMD ["/bin/bash"]
# Tue, 08 Sep 2026 19:08:29 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 08 Sep 2026 19:08:31 GMT
ENV GOSU_VERSION=1.19
# Tue, 08 Sep 2026 19:08:31 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 08 Sep 2026 19:09:08 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 08 Sep 2026 19:09:09 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 08 Sep 2026 19:09:09 GMT
ENV MYSQL_MAJOR=8.4
# Tue, 08 Sep 2026 19:09:09 GMT
ENV MYSQL_VERSION=8.4.11-1.el9
# Tue, 08 Sep 2026 19:13:51 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 08 Sep 2026 19:14:31 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 08 Sep 2026 19:14:31 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 08 Sep 2026 19:14:31 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Tue, 08 Sep 2026 19:15:20 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 08 Sep 2026 19:15:20 GMT
VOLUME [/var/lib/mysql]
# Tue, 08 Sep 2026 19:15:20 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 08 Sep 2026 19:15:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 08 Sep 2026 19:15:20 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 08 Sep 2026 19:15:20 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:43c5deee1c317416925b86b1f2e78b730d2819023376f79b4de9f871323951a3`  
		Last Modified: Tue, 08 Sep 2026 18:58:08 GMT  
		Size: 46.5 MB (46477029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb980a8434e3c4600e45827e85201dcb117fa105cc497695640216f831384390`  
		Last Modified: Tue, 08 Sep 2026 19:11:18 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19c8bf571c7b733ea038259eac861768ae839db6d07c3188d54dc617943033e2`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 737.5 KB (737526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a017510daff3c2f3381e365accaa66eab52f251dc93a013cff3ddc4062c62bfe`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 5.8 MB (5815802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2f8471efd5dddf293b43b461dbe2e803948535cfa581fd02300a0764d47d7a6`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01a96e418dad73cf572eee59f36c6ddaeb8e051c3273b17f83ecc534c04882d2`  
		Last Modified: Tue, 08 Sep 2026 19:15:50 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05c249ba6d0f84ee8710810ecd935af6765dde829329d153201c0048d2fb196a`  
		Last Modified: Tue, 08 Sep 2026 19:15:53 GMT  
		Size: 49.9 MB (49859112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42e7229b8e85149a79260ea20c0ec4f2bc5a04b853a6e10f51e55865cad4ec86`  
		Last Modified: Tue, 08 Sep 2026 19:15:50 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8acf93dbf7df72b2282785e76965c758765d3643b4df4cffdb33a2e9812d2eae`  
		Last Modified: Tue, 08 Sep 2026 19:15:54 GMT  
		Size: 130.8 MB (130787957 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b72279cda834ce832af860c2cbae659eaf707783b2c8311a8a8c2bd65590593`  
		Last Modified: Tue, 08 Sep 2026 19:15:52 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:eb1b58f6f4e9a86684b7e0ac342737e6ea1810ec736da26abb2d9e324a771979
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15743886 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35e5a48b67c85b412e7847c2381610a7bd07ba61912b14cd6c27c5e2ca18a493`

```dockerfile
```

-	Layers:
	-	`sha256:ef38a14ebfa8df9ba7caf46edbc9bc4e728e7cad2ee713ff4e210f28245d3eab`  
		Last Modified: Tue, 08 Sep 2026 19:15:51 GMT  
		Size: 15.7 MB (15710304 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5794a2b5d65f1202a71c4dd637d0588cdcd3c0aef5130a3019db6cd3853d8335`  
		Last Modified: Tue, 08 Sep 2026 19:15:50 GMT  
		Size: 33.6 KB (33582 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:8.4.11`

```console
$ docker pull mysql@sha256:3466ba4a4828aa8d46fb7c3bc16b67b781c98413cf4ea0fac6feaa6e881faa26
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8.4.11` - linux; amd64

```console
$ docker pull mysql@sha256:d28300f0136cb6d4e24603b9da20460f216845ea778b3b9a4166825d78f0c7dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.0 MB (238983928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8eccfc5e5aebbf3a49375b13956a88cd244d13ac6b25b52dec792b7526363b19`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 08 Sep 2026 18:58:50 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 08 Sep 2026 18:58:50 GMT
CMD ["/bin/bash"]
# Tue, 08 Sep 2026 19:18:46 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 08 Sep 2026 19:18:48 GMT
ENV GOSU_VERSION=1.19
# Tue, 08 Sep 2026 19:18:48 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 08 Sep 2026 19:19:19 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 08 Sep 2026 19:19:20 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 08 Sep 2026 19:19:20 GMT
ENV MYSQL_MAJOR=8.4
# Tue, 08 Sep 2026 19:19:20 GMT
ENV MYSQL_VERSION=8.4.11-1.el9
# Tue, 08 Sep 2026 19:19:20 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 08 Sep 2026 19:19:53 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 08 Sep 2026 19:19:53 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 08 Sep 2026 19:19:53 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Tue, 08 Sep 2026 19:20:34 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 08 Sep 2026 19:20:34 GMT
VOLUME [/var/lib/mysql]
# Tue, 08 Sep 2026 19:20:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 08 Sep 2026 19:20:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 08 Sep 2026 19:20:34 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 08 Sep 2026 19:20:34 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:4bb6eac2f26a5221d1c656c424daeae066dc3efa0be69499880b834d8dbfbd84`  
		Last Modified: Tue, 08 Sep 2026 18:59:01 GMT  
		Size: 47.9 MB (47931580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc54645506622d18010c7826c18d6013e6ea81e880cf3b6130f8c5ccda1c44f7`  
		Last Modified: Tue, 08 Sep 2026 19:21:05 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e432419b783225c850aef68959d0ba9bb5497fc3a9eeb3cfe5b87d22316eb38b`  
		Last Modified: Tue, 08 Sep 2026 19:21:04 GMT  
		Size: 783.6 KB (783557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efcdee021140f843cf14f3f87eab103f74cce4ee807d7e3f691d13d33dc61065`  
		Last Modified: Tue, 08 Sep 2026 19:21:05 GMT  
		Size: 6.2 MB (6193112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17ed162ed4d4d46196a2f019e8c0a721a417dc9c2fdc96a1b8d6f857d31423ad`  
		Last Modified: Tue, 08 Sep 2026 19:21:05 GMT  
		Size: 2.6 KB (2610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c97b1635390390ee1378a80b2a9b0cdc73bfa3db85b86123bae804dab1440d50`  
		Last Modified: Tue, 08 Sep 2026 19:21:06 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:376471fc2810982357d5be04f029c5f6b3b653332f797b8db35cfd1477243691`  
		Last Modified: Tue, 08 Sep 2026 19:21:07 GMT  
		Size: 51.6 MB (51635806 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54c6505f4c6407063c2516161ff890c77cecea98db3fd6b90b6c982c82b9cbff`  
		Last Modified: Tue, 08 Sep 2026 19:21:06 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d5c020522d10861cddeed4b72728cf04b991ef4513eb0fd039dbe3a131975db`  
		Last Modified: Tue, 08 Sep 2026 19:21:09 GMT  
		Size: 132.4 MB (132430497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9aec5f91e544f16eb4717965cb2313f847a84e110735e636a9f349c8821ca18c`  
		Last Modified: Tue, 08 Sep 2026 19:21:07 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4.11` - unknown; unknown

```console
$ docker pull mysql@sha256:9e47cf91495fa30a00bfa7fd542d536e631a9da24c05c5502a4df0489520abd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15745217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9137bb97b81fef2a987c2af1d2eab84d177b599f20e187d5cc16cda5f3de5337`

```dockerfile
```

-	Layers:
	-	`sha256:26e5de38a252bf757cd844fb9332dbd71b6700239111d58217f0fd7498a87376`  
		Last Modified: Tue, 08 Sep 2026 19:21:05 GMT  
		Size: 15.7 MB (15711904 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:20f6fb79d0c6a72055f662bbf94676b610242b9196ccfd57bd099bffe81e240a`  
		Last Modified: Tue, 08 Sep 2026 19:21:05 GMT  
		Size: 33.3 KB (33313 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8.4.11` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:dd3f8b8ff48475310433b2c4b51fa48793435551e0e917c438cdb92a0c7dff34
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.7 MB (233686799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e23c72f7944cba784a20119d71ebd566a81ffbd0db685da70db2bd1ed9f04a2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 08 Sep 2026 18:57:57 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 08 Sep 2026 18:57:57 GMT
CMD ["/bin/bash"]
# Tue, 08 Sep 2026 19:08:29 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 08 Sep 2026 19:08:31 GMT
ENV GOSU_VERSION=1.19
# Tue, 08 Sep 2026 19:08:31 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 08 Sep 2026 19:09:08 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 08 Sep 2026 19:09:09 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 08 Sep 2026 19:09:09 GMT
ENV MYSQL_MAJOR=8.4
# Tue, 08 Sep 2026 19:09:09 GMT
ENV MYSQL_VERSION=8.4.11-1.el9
# Tue, 08 Sep 2026 19:13:51 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 08 Sep 2026 19:14:31 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 08 Sep 2026 19:14:31 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 08 Sep 2026 19:14:31 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Tue, 08 Sep 2026 19:15:20 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 08 Sep 2026 19:15:20 GMT
VOLUME [/var/lib/mysql]
# Tue, 08 Sep 2026 19:15:20 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 08 Sep 2026 19:15:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 08 Sep 2026 19:15:20 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 08 Sep 2026 19:15:20 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:43c5deee1c317416925b86b1f2e78b730d2819023376f79b4de9f871323951a3`  
		Last Modified: Tue, 08 Sep 2026 18:58:08 GMT  
		Size: 46.5 MB (46477029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb980a8434e3c4600e45827e85201dcb117fa105cc497695640216f831384390`  
		Last Modified: Tue, 08 Sep 2026 19:11:18 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19c8bf571c7b733ea038259eac861768ae839db6d07c3188d54dc617943033e2`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 737.5 KB (737526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a017510daff3c2f3381e365accaa66eab52f251dc93a013cff3ddc4062c62bfe`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 5.8 MB (5815802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2f8471efd5dddf293b43b461dbe2e803948535cfa581fd02300a0764d47d7a6`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01a96e418dad73cf572eee59f36c6ddaeb8e051c3273b17f83ecc534c04882d2`  
		Last Modified: Tue, 08 Sep 2026 19:15:50 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05c249ba6d0f84ee8710810ecd935af6765dde829329d153201c0048d2fb196a`  
		Last Modified: Tue, 08 Sep 2026 19:15:53 GMT  
		Size: 49.9 MB (49859112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42e7229b8e85149a79260ea20c0ec4f2bc5a04b853a6e10f51e55865cad4ec86`  
		Last Modified: Tue, 08 Sep 2026 19:15:50 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8acf93dbf7df72b2282785e76965c758765d3643b4df4cffdb33a2e9812d2eae`  
		Last Modified: Tue, 08 Sep 2026 19:15:54 GMT  
		Size: 130.8 MB (130787957 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b72279cda834ce832af860c2cbae659eaf707783b2c8311a8a8c2bd65590593`  
		Last Modified: Tue, 08 Sep 2026 19:15:52 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4.11` - unknown; unknown

```console
$ docker pull mysql@sha256:eb1b58f6f4e9a86684b7e0ac342737e6ea1810ec736da26abb2d9e324a771979
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15743886 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35e5a48b67c85b412e7847c2381610a7bd07ba61912b14cd6c27c5e2ca18a493`

```dockerfile
```

-	Layers:
	-	`sha256:ef38a14ebfa8df9ba7caf46edbc9bc4e728e7cad2ee713ff4e210f28245d3eab`  
		Last Modified: Tue, 08 Sep 2026 19:15:51 GMT  
		Size: 15.7 MB (15710304 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5794a2b5d65f1202a71c4dd637d0588cdcd3c0aef5130a3019db6cd3853d8335`  
		Last Modified: Tue, 08 Sep 2026 19:15:50 GMT  
		Size: 33.6 KB (33582 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:8.4.11-oracle`

```console
$ docker pull mysql@sha256:3466ba4a4828aa8d46fb7c3bc16b67b781c98413cf4ea0fac6feaa6e881faa26
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8.4.11-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:d28300f0136cb6d4e24603b9da20460f216845ea778b3b9a4166825d78f0c7dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.0 MB (238983928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8eccfc5e5aebbf3a49375b13956a88cd244d13ac6b25b52dec792b7526363b19`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 08 Sep 2026 18:58:50 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 08 Sep 2026 18:58:50 GMT
CMD ["/bin/bash"]
# Tue, 08 Sep 2026 19:18:46 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 08 Sep 2026 19:18:48 GMT
ENV GOSU_VERSION=1.19
# Tue, 08 Sep 2026 19:18:48 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 08 Sep 2026 19:19:19 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 08 Sep 2026 19:19:20 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 08 Sep 2026 19:19:20 GMT
ENV MYSQL_MAJOR=8.4
# Tue, 08 Sep 2026 19:19:20 GMT
ENV MYSQL_VERSION=8.4.11-1.el9
# Tue, 08 Sep 2026 19:19:20 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 08 Sep 2026 19:19:53 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 08 Sep 2026 19:19:53 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 08 Sep 2026 19:19:53 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Tue, 08 Sep 2026 19:20:34 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 08 Sep 2026 19:20:34 GMT
VOLUME [/var/lib/mysql]
# Tue, 08 Sep 2026 19:20:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 08 Sep 2026 19:20:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 08 Sep 2026 19:20:34 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 08 Sep 2026 19:20:34 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:4bb6eac2f26a5221d1c656c424daeae066dc3efa0be69499880b834d8dbfbd84`  
		Last Modified: Tue, 08 Sep 2026 18:59:01 GMT  
		Size: 47.9 MB (47931580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc54645506622d18010c7826c18d6013e6ea81e880cf3b6130f8c5ccda1c44f7`  
		Last Modified: Tue, 08 Sep 2026 19:21:05 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e432419b783225c850aef68959d0ba9bb5497fc3a9eeb3cfe5b87d22316eb38b`  
		Last Modified: Tue, 08 Sep 2026 19:21:04 GMT  
		Size: 783.6 KB (783557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efcdee021140f843cf14f3f87eab103f74cce4ee807d7e3f691d13d33dc61065`  
		Last Modified: Tue, 08 Sep 2026 19:21:05 GMT  
		Size: 6.2 MB (6193112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17ed162ed4d4d46196a2f019e8c0a721a417dc9c2fdc96a1b8d6f857d31423ad`  
		Last Modified: Tue, 08 Sep 2026 19:21:05 GMT  
		Size: 2.6 KB (2610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c97b1635390390ee1378a80b2a9b0cdc73bfa3db85b86123bae804dab1440d50`  
		Last Modified: Tue, 08 Sep 2026 19:21:06 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:376471fc2810982357d5be04f029c5f6b3b653332f797b8db35cfd1477243691`  
		Last Modified: Tue, 08 Sep 2026 19:21:07 GMT  
		Size: 51.6 MB (51635806 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54c6505f4c6407063c2516161ff890c77cecea98db3fd6b90b6c982c82b9cbff`  
		Last Modified: Tue, 08 Sep 2026 19:21:06 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d5c020522d10861cddeed4b72728cf04b991ef4513eb0fd039dbe3a131975db`  
		Last Modified: Tue, 08 Sep 2026 19:21:09 GMT  
		Size: 132.4 MB (132430497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9aec5f91e544f16eb4717965cb2313f847a84e110735e636a9f349c8821ca18c`  
		Last Modified: Tue, 08 Sep 2026 19:21:07 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4.11-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:9e47cf91495fa30a00bfa7fd542d536e631a9da24c05c5502a4df0489520abd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15745217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9137bb97b81fef2a987c2af1d2eab84d177b599f20e187d5cc16cda5f3de5337`

```dockerfile
```

-	Layers:
	-	`sha256:26e5de38a252bf757cd844fb9332dbd71b6700239111d58217f0fd7498a87376`  
		Last Modified: Tue, 08 Sep 2026 19:21:05 GMT  
		Size: 15.7 MB (15711904 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:20f6fb79d0c6a72055f662bbf94676b610242b9196ccfd57bd099bffe81e240a`  
		Last Modified: Tue, 08 Sep 2026 19:21:05 GMT  
		Size: 33.3 KB (33313 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8.4.11-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:dd3f8b8ff48475310433b2c4b51fa48793435551e0e917c438cdb92a0c7dff34
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.7 MB (233686799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e23c72f7944cba784a20119d71ebd566a81ffbd0db685da70db2bd1ed9f04a2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 08 Sep 2026 18:57:57 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 08 Sep 2026 18:57:57 GMT
CMD ["/bin/bash"]
# Tue, 08 Sep 2026 19:08:29 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 08 Sep 2026 19:08:31 GMT
ENV GOSU_VERSION=1.19
# Tue, 08 Sep 2026 19:08:31 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 08 Sep 2026 19:09:08 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 08 Sep 2026 19:09:09 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 08 Sep 2026 19:09:09 GMT
ENV MYSQL_MAJOR=8.4
# Tue, 08 Sep 2026 19:09:09 GMT
ENV MYSQL_VERSION=8.4.11-1.el9
# Tue, 08 Sep 2026 19:13:51 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 08 Sep 2026 19:14:31 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 08 Sep 2026 19:14:31 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 08 Sep 2026 19:14:31 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Tue, 08 Sep 2026 19:15:20 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 08 Sep 2026 19:15:20 GMT
VOLUME [/var/lib/mysql]
# Tue, 08 Sep 2026 19:15:20 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 08 Sep 2026 19:15:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 08 Sep 2026 19:15:20 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 08 Sep 2026 19:15:20 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:43c5deee1c317416925b86b1f2e78b730d2819023376f79b4de9f871323951a3`  
		Last Modified: Tue, 08 Sep 2026 18:58:08 GMT  
		Size: 46.5 MB (46477029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb980a8434e3c4600e45827e85201dcb117fa105cc497695640216f831384390`  
		Last Modified: Tue, 08 Sep 2026 19:11:18 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19c8bf571c7b733ea038259eac861768ae839db6d07c3188d54dc617943033e2`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 737.5 KB (737526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a017510daff3c2f3381e365accaa66eab52f251dc93a013cff3ddc4062c62bfe`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 5.8 MB (5815802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2f8471efd5dddf293b43b461dbe2e803948535cfa581fd02300a0764d47d7a6`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01a96e418dad73cf572eee59f36c6ddaeb8e051c3273b17f83ecc534c04882d2`  
		Last Modified: Tue, 08 Sep 2026 19:15:50 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05c249ba6d0f84ee8710810ecd935af6765dde829329d153201c0048d2fb196a`  
		Last Modified: Tue, 08 Sep 2026 19:15:53 GMT  
		Size: 49.9 MB (49859112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42e7229b8e85149a79260ea20c0ec4f2bc5a04b853a6e10f51e55865cad4ec86`  
		Last Modified: Tue, 08 Sep 2026 19:15:50 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8acf93dbf7df72b2282785e76965c758765d3643b4df4cffdb33a2e9812d2eae`  
		Last Modified: Tue, 08 Sep 2026 19:15:54 GMT  
		Size: 130.8 MB (130787957 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b72279cda834ce832af860c2cbae659eaf707783b2c8311a8a8c2bd65590593`  
		Last Modified: Tue, 08 Sep 2026 19:15:52 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4.11-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:eb1b58f6f4e9a86684b7e0ac342737e6ea1810ec736da26abb2d9e324a771979
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15743886 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35e5a48b67c85b412e7847c2381610a7bd07ba61912b14cd6c27c5e2ca18a493`

```dockerfile
```

-	Layers:
	-	`sha256:ef38a14ebfa8df9ba7caf46edbc9bc4e728e7cad2ee713ff4e210f28245d3eab`  
		Last Modified: Tue, 08 Sep 2026 19:15:51 GMT  
		Size: 15.7 MB (15710304 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5794a2b5d65f1202a71c4dd637d0588cdcd3c0aef5130a3019db6cd3853d8335`  
		Last Modified: Tue, 08 Sep 2026 19:15:50 GMT  
		Size: 33.6 KB (33582 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:8.4.11-oraclelinux9`

```console
$ docker pull mysql@sha256:3466ba4a4828aa8d46fb7c3bc16b67b781c98413cf4ea0fac6feaa6e881faa26
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8.4.11-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:d28300f0136cb6d4e24603b9da20460f216845ea778b3b9a4166825d78f0c7dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.0 MB (238983928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8eccfc5e5aebbf3a49375b13956a88cd244d13ac6b25b52dec792b7526363b19`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 08 Sep 2026 18:58:50 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 08 Sep 2026 18:58:50 GMT
CMD ["/bin/bash"]
# Tue, 08 Sep 2026 19:18:46 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 08 Sep 2026 19:18:48 GMT
ENV GOSU_VERSION=1.19
# Tue, 08 Sep 2026 19:18:48 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 08 Sep 2026 19:19:19 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 08 Sep 2026 19:19:20 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 08 Sep 2026 19:19:20 GMT
ENV MYSQL_MAJOR=8.4
# Tue, 08 Sep 2026 19:19:20 GMT
ENV MYSQL_VERSION=8.4.11-1.el9
# Tue, 08 Sep 2026 19:19:20 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 08 Sep 2026 19:19:53 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 08 Sep 2026 19:19:53 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 08 Sep 2026 19:19:53 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Tue, 08 Sep 2026 19:20:34 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 08 Sep 2026 19:20:34 GMT
VOLUME [/var/lib/mysql]
# Tue, 08 Sep 2026 19:20:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 08 Sep 2026 19:20:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 08 Sep 2026 19:20:34 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 08 Sep 2026 19:20:34 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:4bb6eac2f26a5221d1c656c424daeae066dc3efa0be69499880b834d8dbfbd84`  
		Last Modified: Tue, 08 Sep 2026 18:59:01 GMT  
		Size: 47.9 MB (47931580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc54645506622d18010c7826c18d6013e6ea81e880cf3b6130f8c5ccda1c44f7`  
		Last Modified: Tue, 08 Sep 2026 19:21:05 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e432419b783225c850aef68959d0ba9bb5497fc3a9eeb3cfe5b87d22316eb38b`  
		Last Modified: Tue, 08 Sep 2026 19:21:04 GMT  
		Size: 783.6 KB (783557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efcdee021140f843cf14f3f87eab103f74cce4ee807d7e3f691d13d33dc61065`  
		Last Modified: Tue, 08 Sep 2026 19:21:05 GMT  
		Size: 6.2 MB (6193112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17ed162ed4d4d46196a2f019e8c0a721a417dc9c2fdc96a1b8d6f857d31423ad`  
		Last Modified: Tue, 08 Sep 2026 19:21:05 GMT  
		Size: 2.6 KB (2610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c97b1635390390ee1378a80b2a9b0cdc73bfa3db85b86123bae804dab1440d50`  
		Last Modified: Tue, 08 Sep 2026 19:21:06 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:376471fc2810982357d5be04f029c5f6b3b653332f797b8db35cfd1477243691`  
		Last Modified: Tue, 08 Sep 2026 19:21:07 GMT  
		Size: 51.6 MB (51635806 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54c6505f4c6407063c2516161ff890c77cecea98db3fd6b90b6c982c82b9cbff`  
		Last Modified: Tue, 08 Sep 2026 19:21:06 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d5c020522d10861cddeed4b72728cf04b991ef4513eb0fd039dbe3a131975db`  
		Last Modified: Tue, 08 Sep 2026 19:21:09 GMT  
		Size: 132.4 MB (132430497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9aec5f91e544f16eb4717965cb2313f847a84e110735e636a9f349c8821ca18c`  
		Last Modified: Tue, 08 Sep 2026 19:21:07 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4.11-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:9e47cf91495fa30a00bfa7fd542d536e631a9da24c05c5502a4df0489520abd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15745217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9137bb97b81fef2a987c2af1d2eab84d177b599f20e187d5cc16cda5f3de5337`

```dockerfile
```

-	Layers:
	-	`sha256:26e5de38a252bf757cd844fb9332dbd71b6700239111d58217f0fd7498a87376`  
		Last Modified: Tue, 08 Sep 2026 19:21:05 GMT  
		Size: 15.7 MB (15711904 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:20f6fb79d0c6a72055f662bbf94676b610242b9196ccfd57bd099bffe81e240a`  
		Last Modified: Tue, 08 Sep 2026 19:21:05 GMT  
		Size: 33.3 KB (33313 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8.4.11-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:dd3f8b8ff48475310433b2c4b51fa48793435551e0e917c438cdb92a0c7dff34
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.7 MB (233686799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e23c72f7944cba784a20119d71ebd566a81ffbd0db685da70db2bd1ed9f04a2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 08 Sep 2026 18:57:57 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 08 Sep 2026 18:57:57 GMT
CMD ["/bin/bash"]
# Tue, 08 Sep 2026 19:08:29 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 08 Sep 2026 19:08:31 GMT
ENV GOSU_VERSION=1.19
# Tue, 08 Sep 2026 19:08:31 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 08 Sep 2026 19:09:08 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 08 Sep 2026 19:09:09 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 08 Sep 2026 19:09:09 GMT
ENV MYSQL_MAJOR=8.4
# Tue, 08 Sep 2026 19:09:09 GMT
ENV MYSQL_VERSION=8.4.11-1.el9
# Tue, 08 Sep 2026 19:13:51 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 08 Sep 2026 19:14:31 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 08 Sep 2026 19:14:31 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 08 Sep 2026 19:14:31 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Tue, 08 Sep 2026 19:15:20 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 08 Sep 2026 19:15:20 GMT
VOLUME [/var/lib/mysql]
# Tue, 08 Sep 2026 19:15:20 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 08 Sep 2026 19:15:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 08 Sep 2026 19:15:20 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 08 Sep 2026 19:15:20 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:43c5deee1c317416925b86b1f2e78b730d2819023376f79b4de9f871323951a3`  
		Last Modified: Tue, 08 Sep 2026 18:58:08 GMT  
		Size: 46.5 MB (46477029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb980a8434e3c4600e45827e85201dcb117fa105cc497695640216f831384390`  
		Last Modified: Tue, 08 Sep 2026 19:11:18 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19c8bf571c7b733ea038259eac861768ae839db6d07c3188d54dc617943033e2`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 737.5 KB (737526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a017510daff3c2f3381e365accaa66eab52f251dc93a013cff3ddc4062c62bfe`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 5.8 MB (5815802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2f8471efd5dddf293b43b461dbe2e803948535cfa581fd02300a0764d47d7a6`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01a96e418dad73cf572eee59f36c6ddaeb8e051c3273b17f83ecc534c04882d2`  
		Last Modified: Tue, 08 Sep 2026 19:15:50 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05c249ba6d0f84ee8710810ecd935af6765dde829329d153201c0048d2fb196a`  
		Last Modified: Tue, 08 Sep 2026 19:15:53 GMT  
		Size: 49.9 MB (49859112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42e7229b8e85149a79260ea20c0ec4f2bc5a04b853a6e10f51e55865cad4ec86`  
		Last Modified: Tue, 08 Sep 2026 19:15:50 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8acf93dbf7df72b2282785e76965c758765d3643b4df4cffdb33a2e9812d2eae`  
		Last Modified: Tue, 08 Sep 2026 19:15:54 GMT  
		Size: 130.8 MB (130787957 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b72279cda834ce832af860c2cbae659eaf707783b2c8311a8a8c2bd65590593`  
		Last Modified: Tue, 08 Sep 2026 19:15:52 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4.11-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:eb1b58f6f4e9a86684b7e0ac342737e6ea1810ec736da26abb2d9e324a771979
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15743886 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35e5a48b67c85b412e7847c2381610a7bd07ba61912b14cd6c27c5e2ca18a493`

```dockerfile
```

-	Layers:
	-	`sha256:ef38a14ebfa8df9ba7caf46edbc9bc4e728e7cad2ee713ff4e210f28245d3eab`  
		Last Modified: Tue, 08 Sep 2026 19:15:51 GMT  
		Size: 15.7 MB (15710304 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5794a2b5d65f1202a71c4dd637d0588cdcd3c0aef5130a3019db6cd3853d8335`  
		Last Modified: Tue, 08 Sep 2026 19:15:50 GMT  
		Size: 33.6 KB (33582 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9`

```console
$ docker pull mysql@sha256:b2cf29815e62fea06b7de22b8b8e57dfe0eb32706e38ce951930bde6faef4ab6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9` - linux; amd64

```console
$ docker pull mysql@sha256:d59aeb6202bb716f7d8c1f6ae303b919620c381e9884811b54cbcd04c5cc968f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.9 MB (270901267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d88fb618495c6f38c3424c54422cd3b3f5a33e9995488119d3540fd4e59f672f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 08 Sep 2026 18:58:50 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 08 Sep 2026 18:58:50 GMT
CMD ["/bin/bash"]
# Tue, 08 Sep 2026 19:15:07 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 08 Sep 2026 19:15:08 GMT
ENV GOSU_VERSION=1.19
# Tue, 08 Sep 2026 19:15:08 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 08 Sep 2026 19:15:40 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 08 Sep 2026 19:15:41 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 08 Sep 2026 19:15:41 GMT
ENV MYSQL_MAJOR=9.7
# Tue, 08 Sep 2026 19:15:41 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Tue, 08 Sep 2026 19:15:41 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 08 Sep 2026 19:16:55 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 08 Sep 2026 19:16:55 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 08 Sep 2026 19:16:55 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Tue, 08 Sep 2026 19:17:39 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 08 Sep 2026 19:17:39 GMT
VOLUME [/var/lib/mysql]
# Tue, 08 Sep 2026 19:17:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 08 Sep 2026 19:17:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 08 Sep 2026 19:17:39 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 08 Sep 2026 19:17:39 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:4bb6eac2f26a5221d1c656c424daeae066dc3efa0be69499880b834d8dbfbd84`  
		Last Modified: Tue, 08 Sep 2026 18:59:01 GMT  
		Size: 47.9 MB (47931580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7a3710e7618e9c34a79ec2d437c3838d99cda89549ac2ced46b027ab2e450f3`  
		Last Modified: Tue, 08 Sep 2026 19:18:14 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fe59e71d00f66e2cd63c4189632d4795b6d3a78abeb01f20874a50e68685482`  
		Last Modified: Tue, 08 Sep 2026 19:18:14 GMT  
		Size: 783.6 KB (783558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d289089f4187400a836c07e7efdf670adeec0c535006e94845063b5457f568b`  
		Last Modified: Tue, 08 Sep 2026 19:18:15 GMT  
		Size: 6.2 MB (6193124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fef7d3e3716f4998ec10e6fb9fa9fd188ca9b5b504f526fe37cc3c7ec15bca6`  
		Last Modified: Tue, 08 Sep 2026 19:18:14 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0af017e7e105c4e37c8a60f06782bb76841ac8e4e72f940584098c56ad6d8239`  
		Last Modified: Tue, 08 Sep 2026 19:18:15 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31cf237a9753d5cef6dcd5770fd88f91b165540ab18b14d3af9f8651e777b89b`  
		Last Modified: Tue, 08 Sep 2026 19:18:17 GMT  
		Size: 57.1 MB (57050670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9805aa3949997a8daefc83ad8a938205a4b07a36a5e558bfb3bcc9a4468fbe9`  
		Last Modified: Tue, 08 Sep 2026 19:18:16 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2d5a9de52e1c92b5c214eb3d31afc3eea84709bf8932b60aa11c461b98462ec`  
		Last Modified: Tue, 08 Sep 2026 19:18:20 GMT  
		Size: 158.9 MB (158932967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4ddd5d91160bac0f41caaa883c3eebcdeea7761c29a87b6d5c64eb8c970050a`  
		Last Modified: Tue, 08 Sep 2026 19:18:17 GMT  
		Size: 5.2 KB (5223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9` - unknown; unknown

```console
$ docker pull mysql@sha256:10c43bc445d6f65192b79fa639ebebd869f946e6dffdbd5e35d6fb98326f1ea1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:545b43d642e0ad4e1a312df9427c56ec09bf261eacbb9fd200f570168d2ef25f`

```dockerfile
```

-	Layers:
	-	`sha256:40cc0eca5dac2a83d515d0cc28a96b7a76cdc7f8fe934d54aee3ae24e5eac986`  
		Last Modified: Tue, 08 Sep 2026 19:18:15 GMT  
		Size: 16.8 MB (16799169 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9bdd13d74dae084d559eaaee971f80a941233b9d97c905edf6d4080b342fc977`  
		Last Modified: Tue, 08 Sep 2026 19:18:14 GMT  
		Size: 34.2 KB (34208 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:2ed51e4ca654f598ff4bd15dd40e7b4359521fbc2d42cefaf49675fdc767126c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.4 MB (267372736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:917fde9264e50622eebf261bbaef1d1974d265e8be7d7ffdaceeab45c854813d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 08 Sep 2026 18:57:57 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 08 Sep 2026 18:57:57 GMT
CMD ["/bin/bash"]
# Tue, 08 Sep 2026 19:08:29 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 08 Sep 2026 19:08:31 GMT
ENV GOSU_VERSION=1.19
# Tue, 08 Sep 2026 19:08:31 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 08 Sep 2026 19:09:08 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 08 Sep 2026 19:09:09 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 08 Sep 2026 19:09:09 GMT
ENV MYSQL_MAJOR=9.7
# Tue, 08 Sep 2026 19:09:09 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Tue, 08 Sep 2026 19:11:31 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 08 Sep 2026 19:12:11 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 08 Sep 2026 19:12:11 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 08 Sep 2026 19:12:11 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Tue, 08 Sep 2026 19:13:03 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 08 Sep 2026 19:13:03 GMT
VOLUME [/var/lib/mysql]
# Tue, 08 Sep 2026 19:13:03 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 08 Sep 2026 19:13:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 08 Sep 2026 19:13:03 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 08 Sep 2026 19:13:03 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:43c5deee1c317416925b86b1f2e78b730d2819023376f79b4de9f871323951a3`  
		Last Modified: Tue, 08 Sep 2026 18:58:08 GMT  
		Size: 46.5 MB (46477029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb980a8434e3c4600e45827e85201dcb117fa105cc497695640216f831384390`  
		Last Modified: Tue, 08 Sep 2026 19:11:18 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19c8bf571c7b733ea038259eac861768ae839db6d07c3188d54dc617943033e2`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 737.5 KB (737526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a017510daff3c2f3381e365accaa66eab52f251dc93a013cff3ddc4062c62bfe`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 5.8 MB (5815802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2f8471efd5dddf293b43b461dbe2e803948535cfa581fd02300a0764d47d7a6`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7cf0fff5f4d8fe7ff19dcf52a3ebaa82ef1043c70a60d90991b1863f0eb640f`  
		Last Modified: Tue, 08 Sep 2026 19:13:38 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a187fc7343f94d7289f30f3c3fb12a19bd2fe6603aa2136e0386c7dd77524f1`  
		Last Modified: Tue, 08 Sep 2026 19:13:42 GMT  
		Size: 57.1 MB (57119326 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e27c35bc2cc95d5c2f074f10ad860da16501387a12719faa8958e586d463b91`  
		Last Modified: Tue, 08 Sep 2026 19:13:38 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fba08b51ddce5351fb3aa965afa74ba724bf9c685562d5ecbcbc527340baf3d6`  
		Last Modified: Tue, 08 Sep 2026 19:13:45 GMT  
		Size: 157.2 MB (157213679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eefae916eadabf60bfdf6fece79b60e224d6718ba147d6fb6951e7be7e90a63e`  
		Last Modified: Tue, 08 Sep 2026 19:13:40 GMT  
		Size: 5.2 KB (5228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9` - unknown; unknown

```console
$ docker pull mysql@sha256:7d83a256aaa633159f300654d8b22bd4bbb31e2ab65131bb97a6b32123072756
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16832118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:359665040e42a2a679975bfa8378b5aa48a993c31d7c805d286621743df8602e`

```dockerfile
```

-	Layers:
	-	`sha256:05da1d70ad47f0a4fb7e57fa8d4f77a59ade060507122f9e925b3f25aff303a5`  
		Last Modified: Tue, 08 Sep 2026 19:13:39 GMT  
		Size: 16.8 MB (16797605 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:328975a151db42b078ef7787f6ecc7bc960e1f2fa0508b80ca6ec9263d09d13b`  
		Last Modified: Tue, 08 Sep 2026 19:13:38 GMT  
		Size: 34.5 KB (34513 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9-oracle`

```console
$ docker pull mysql@sha256:b2cf29815e62fea06b7de22b8b8e57dfe0eb32706e38ce951930bde6faef4ab6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:d59aeb6202bb716f7d8c1f6ae303b919620c381e9884811b54cbcd04c5cc968f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.9 MB (270901267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d88fb618495c6f38c3424c54422cd3b3f5a33e9995488119d3540fd4e59f672f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 08 Sep 2026 18:58:50 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 08 Sep 2026 18:58:50 GMT
CMD ["/bin/bash"]
# Tue, 08 Sep 2026 19:15:07 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 08 Sep 2026 19:15:08 GMT
ENV GOSU_VERSION=1.19
# Tue, 08 Sep 2026 19:15:08 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 08 Sep 2026 19:15:40 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 08 Sep 2026 19:15:41 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 08 Sep 2026 19:15:41 GMT
ENV MYSQL_MAJOR=9.7
# Tue, 08 Sep 2026 19:15:41 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Tue, 08 Sep 2026 19:15:41 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 08 Sep 2026 19:16:55 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 08 Sep 2026 19:16:55 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 08 Sep 2026 19:16:55 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Tue, 08 Sep 2026 19:17:39 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 08 Sep 2026 19:17:39 GMT
VOLUME [/var/lib/mysql]
# Tue, 08 Sep 2026 19:17:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 08 Sep 2026 19:17:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 08 Sep 2026 19:17:39 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 08 Sep 2026 19:17:39 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:4bb6eac2f26a5221d1c656c424daeae066dc3efa0be69499880b834d8dbfbd84`  
		Last Modified: Tue, 08 Sep 2026 18:59:01 GMT  
		Size: 47.9 MB (47931580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7a3710e7618e9c34a79ec2d437c3838d99cda89549ac2ced46b027ab2e450f3`  
		Last Modified: Tue, 08 Sep 2026 19:18:14 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fe59e71d00f66e2cd63c4189632d4795b6d3a78abeb01f20874a50e68685482`  
		Last Modified: Tue, 08 Sep 2026 19:18:14 GMT  
		Size: 783.6 KB (783558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d289089f4187400a836c07e7efdf670adeec0c535006e94845063b5457f568b`  
		Last Modified: Tue, 08 Sep 2026 19:18:15 GMT  
		Size: 6.2 MB (6193124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fef7d3e3716f4998ec10e6fb9fa9fd188ca9b5b504f526fe37cc3c7ec15bca6`  
		Last Modified: Tue, 08 Sep 2026 19:18:14 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0af017e7e105c4e37c8a60f06782bb76841ac8e4e72f940584098c56ad6d8239`  
		Last Modified: Tue, 08 Sep 2026 19:18:15 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31cf237a9753d5cef6dcd5770fd88f91b165540ab18b14d3af9f8651e777b89b`  
		Last Modified: Tue, 08 Sep 2026 19:18:17 GMT  
		Size: 57.1 MB (57050670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9805aa3949997a8daefc83ad8a938205a4b07a36a5e558bfb3bcc9a4468fbe9`  
		Last Modified: Tue, 08 Sep 2026 19:18:16 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2d5a9de52e1c92b5c214eb3d31afc3eea84709bf8932b60aa11c461b98462ec`  
		Last Modified: Tue, 08 Sep 2026 19:18:20 GMT  
		Size: 158.9 MB (158932967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4ddd5d91160bac0f41caaa883c3eebcdeea7761c29a87b6d5c64eb8c970050a`  
		Last Modified: Tue, 08 Sep 2026 19:18:17 GMT  
		Size: 5.2 KB (5223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:10c43bc445d6f65192b79fa639ebebd869f946e6dffdbd5e35d6fb98326f1ea1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:545b43d642e0ad4e1a312df9427c56ec09bf261eacbb9fd200f570168d2ef25f`

```dockerfile
```

-	Layers:
	-	`sha256:40cc0eca5dac2a83d515d0cc28a96b7a76cdc7f8fe934d54aee3ae24e5eac986`  
		Last Modified: Tue, 08 Sep 2026 19:18:15 GMT  
		Size: 16.8 MB (16799169 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9bdd13d74dae084d559eaaee971f80a941233b9d97c905edf6d4080b342fc977`  
		Last Modified: Tue, 08 Sep 2026 19:18:14 GMT  
		Size: 34.2 KB (34208 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:2ed51e4ca654f598ff4bd15dd40e7b4359521fbc2d42cefaf49675fdc767126c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.4 MB (267372736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:917fde9264e50622eebf261bbaef1d1974d265e8be7d7ffdaceeab45c854813d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 08 Sep 2026 18:57:57 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 08 Sep 2026 18:57:57 GMT
CMD ["/bin/bash"]
# Tue, 08 Sep 2026 19:08:29 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 08 Sep 2026 19:08:31 GMT
ENV GOSU_VERSION=1.19
# Tue, 08 Sep 2026 19:08:31 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 08 Sep 2026 19:09:08 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 08 Sep 2026 19:09:09 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 08 Sep 2026 19:09:09 GMT
ENV MYSQL_MAJOR=9.7
# Tue, 08 Sep 2026 19:09:09 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Tue, 08 Sep 2026 19:11:31 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 08 Sep 2026 19:12:11 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 08 Sep 2026 19:12:11 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 08 Sep 2026 19:12:11 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Tue, 08 Sep 2026 19:13:03 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 08 Sep 2026 19:13:03 GMT
VOLUME [/var/lib/mysql]
# Tue, 08 Sep 2026 19:13:03 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 08 Sep 2026 19:13:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 08 Sep 2026 19:13:03 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 08 Sep 2026 19:13:03 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:43c5deee1c317416925b86b1f2e78b730d2819023376f79b4de9f871323951a3`  
		Last Modified: Tue, 08 Sep 2026 18:58:08 GMT  
		Size: 46.5 MB (46477029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb980a8434e3c4600e45827e85201dcb117fa105cc497695640216f831384390`  
		Last Modified: Tue, 08 Sep 2026 19:11:18 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19c8bf571c7b733ea038259eac861768ae839db6d07c3188d54dc617943033e2`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 737.5 KB (737526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a017510daff3c2f3381e365accaa66eab52f251dc93a013cff3ddc4062c62bfe`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 5.8 MB (5815802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2f8471efd5dddf293b43b461dbe2e803948535cfa581fd02300a0764d47d7a6`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7cf0fff5f4d8fe7ff19dcf52a3ebaa82ef1043c70a60d90991b1863f0eb640f`  
		Last Modified: Tue, 08 Sep 2026 19:13:38 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a187fc7343f94d7289f30f3c3fb12a19bd2fe6603aa2136e0386c7dd77524f1`  
		Last Modified: Tue, 08 Sep 2026 19:13:42 GMT  
		Size: 57.1 MB (57119326 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e27c35bc2cc95d5c2f074f10ad860da16501387a12719faa8958e586d463b91`  
		Last Modified: Tue, 08 Sep 2026 19:13:38 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fba08b51ddce5351fb3aa965afa74ba724bf9c685562d5ecbcbc527340baf3d6`  
		Last Modified: Tue, 08 Sep 2026 19:13:45 GMT  
		Size: 157.2 MB (157213679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eefae916eadabf60bfdf6fece79b60e224d6718ba147d6fb6951e7be7e90a63e`  
		Last Modified: Tue, 08 Sep 2026 19:13:40 GMT  
		Size: 5.2 KB (5228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:7d83a256aaa633159f300654d8b22bd4bbb31e2ab65131bb97a6b32123072756
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16832118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:359665040e42a2a679975bfa8378b5aa48a993c31d7c805d286621743df8602e`

```dockerfile
```

-	Layers:
	-	`sha256:05da1d70ad47f0a4fb7e57fa8d4f77a59ade060507122f9e925b3f25aff303a5`  
		Last Modified: Tue, 08 Sep 2026 19:13:39 GMT  
		Size: 16.8 MB (16797605 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:328975a151db42b078ef7787f6ecc7bc960e1f2fa0508b80ca6ec9263d09d13b`  
		Last Modified: Tue, 08 Sep 2026 19:13:38 GMT  
		Size: 34.5 KB (34513 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9-oraclelinux9`

```console
$ docker pull mysql@sha256:b2cf29815e62fea06b7de22b8b8e57dfe0eb32706e38ce951930bde6faef4ab6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:d59aeb6202bb716f7d8c1f6ae303b919620c381e9884811b54cbcd04c5cc968f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.9 MB (270901267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d88fb618495c6f38c3424c54422cd3b3f5a33e9995488119d3540fd4e59f672f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 08 Sep 2026 18:58:50 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 08 Sep 2026 18:58:50 GMT
CMD ["/bin/bash"]
# Tue, 08 Sep 2026 19:15:07 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 08 Sep 2026 19:15:08 GMT
ENV GOSU_VERSION=1.19
# Tue, 08 Sep 2026 19:15:08 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 08 Sep 2026 19:15:40 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 08 Sep 2026 19:15:41 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 08 Sep 2026 19:15:41 GMT
ENV MYSQL_MAJOR=9.7
# Tue, 08 Sep 2026 19:15:41 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Tue, 08 Sep 2026 19:15:41 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 08 Sep 2026 19:16:55 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 08 Sep 2026 19:16:55 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 08 Sep 2026 19:16:55 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Tue, 08 Sep 2026 19:17:39 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 08 Sep 2026 19:17:39 GMT
VOLUME [/var/lib/mysql]
# Tue, 08 Sep 2026 19:17:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 08 Sep 2026 19:17:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 08 Sep 2026 19:17:39 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 08 Sep 2026 19:17:39 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:4bb6eac2f26a5221d1c656c424daeae066dc3efa0be69499880b834d8dbfbd84`  
		Last Modified: Tue, 08 Sep 2026 18:59:01 GMT  
		Size: 47.9 MB (47931580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7a3710e7618e9c34a79ec2d437c3838d99cda89549ac2ced46b027ab2e450f3`  
		Last Modified: Tue, 08 Sep 2026 19:18:14 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fe59e71d00f66e2cd63c4189632d4795b6d3a78abeb01f20874a50e68685482`  
		Last Modified: Tue, 08 Sep 2026 19:18:14 GMT  
		Size: 783.6 KB (783558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d289089f4187400a836c07e7efdf670adeec0c535006e94845063b5457f568b`  
		Last Modified: Tue, 08 Sep 2026 19:18:15 GMT  
		Size: 6.2 MB (6193124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fef7d3e3716f4998ec10e6fb9fa9fd188ca9b5b504f526fe37cc3c7ec15bca6`  
		Last Modified: Tue, 08 Sep 2026 19:18:14 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0af017e7e105c4e37c8a60f06782bb76841ac8e4e72f940584098c56ad6d8239`  
		Last Modified: Tue, 08 Sep 2026 19:18:15 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31cf237a9753d5cef6dcd5770fd88f91b165540ab18b14d3af9f8651e777b89b`  
		Last Modified: Tue, 08 Sep 2026 19:18:17 GMT  
		Size: 57.1 MB (57050670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9805aa3949997a8daefc83ad8a938205a4b07a36a5e558bfb3bcc9a4468fbe9`  
		Last Modified: Tue, 08 Sep 2026 19:18:16 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2d5a9de52e1c92b5c214eb3d31afc3eea84709bf8932b60aa11c461b98462ec`  
		Last Modified: Tue, 08 Sep 2026 19:18:20 GMT  
		Size: 158.9 MB (158932967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4ddd5d91160bac0f41caaa883c3eebcdeea7761c29a87b6d5c64eb8c970050a`  
		Last Modified: Tue, 08 Sep 2026 19:18:17 GMT  
		Size: 5.2 KB (5223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:10c43bc445d6f65192b79fa639ebebd869f946e6dffdbd5e35d6fb98326f1ea1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:545b43d642e0ad4e1a312df9427c56ec09bf261eacbb9fd200f570168d2ef25f`

```dockerfile
```

-	Layers:
	-	`sha256:40cc0eca5dac2a83d515d0cc28a96b7a76cdc7f8fe934d54aee3ae24e5eac986`  
		Last Modified: Tue, 08 Sep 2026 19:18:15 GMT  
		Size: 16.8 MB (16799169 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9bdd13d74dae084d559eaaee971f80a941233b9d97c905edf6d4080b342fc977`  
		Last Modified: Tue, 08 Sep 2026 19:18:14 GMT  
		Size: 34.2 KB (34208 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:2ed51e4ca654f598ff4bd15dd40e7b4359521fbc2d42cefaf49675fdc767126c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.4 MB (267372736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:917fde9264e50622eebf261bbaef1d1974d265e8be7d7ffdaceeab45c854813d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 08 Sep 2026 18:57:57 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 08 Sep 2026 18:57:57 GMT
CMD ["/bin/bash"]
# Tue, 08 Sep 2026 19:08:29 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 08 Sep 2026 19:08:31 GMT
ENV GOSU_VERSION=1.19
# Tue, 08 Sep 2026 19:08:31 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 08 Sep 2026 19:09:08 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 08 Sep 2026 19:09:09 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 08 Sep 2026 19:09:09 GMT
ENV MYSQL_MAJOR=9.7
# Tue, 08 Sep 2026 19:09:09 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Tue, 08 Sep 2026 19:11:31 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 08 Sep 2026 19:12:11 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 08 Sep 2026 19:12:11 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 08 Sep 2026 19:12:11 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Tue, 08 Sep 2026 19:13:03 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 08 Sep 2026 19:13:03 GMT
VOLUME [/var/lib/mysql]
# Tue, 08 Sep 2026 19:13:03 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 08 Sep 2026 19:13:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 08 Sep 2026 19:13:03 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 08 Sep 2026 19:13:03 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:43c5deee1c317416925b86b1f2e78b730d2819023376f79b4de9f871323951a3`  
		Last Modified: Tue, 08 Sep 2026 18:58:08 GMT  
		Size: 46.5 MB (46477029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb980a8434e3c4600e45827e85201dcb117fa105cc497695640216f831384390`  
		Last Modified: Tue, 08 Sep 2026 19:11:18 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19c8bf571c7b733ea038259eac861768ae839db6d07c3188d54dc617943033e2`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 737.5 KB (737526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a017510daff3c2f3381e365accaa66eab52f251dc93a013cff3ddc4062c62bfe`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 5.8 MB (5815802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2f8471efd5dddf293b43b461dbe2e803948535cfa581fd02300a0764d47d7a6`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7cf0fff5f4d8fe7ff19dcf52a3ebaa82ef1043c70a60d90991b1863f0eb640f`  
		Last Modified: Tue, 08 Sep 2026 19:13:38 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a187fc7343f94d7289f30f3c3fb12a19bd2fe6603aa2136e0386c7dd77524f1`  
		Last Modified: Tue, 08 Sep 2026 19:13:42 GMT  
		Size: 57.1 MB (57119326 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e27c35bc2cc95d5c2f074f10ad860da16501387a12719faa8958e586d463b91`  
		Last Modified: Tue, 08 Sep 2026 19:13:38 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fba08b51ddce5351fb3aa965afa74ba724bf9c685562d5ecbcbc527340baf3d6`  
		Last Modified: Tue, 08 Sep 2026 19:13:45 GMT  
		Size: 157.2 MB (157213679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eefae916eadabf60bfdf6fece79b60e224d6718ba147d6fb6951e7be7e90a63e`  
		Last Modified: Tue, 08 Sep 2026 19:13:40 GMT  
		Size: 5.2 KB (5228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:7d83a256aaa633159f300654d8b22bd4bbb31e2ab65131bb97a6b32123072756
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16832118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:359665040e42a2a679975bfa8378b5aa48a993c31d7c805d286621743df8602e`

```dockerfile
```

-	Layers:
	-	`sha256:05da1d70ad47f0a4fb7e57fa8d4f77a59ade060507122f9e925b3f25aff303a5`  
		Last Modified: Tue, 08 Sep 2026 19:13:39 GMT  
		Size: 16.8 MB (16797605 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:328975a151db42b078ef7787f6ecc7bc960e1f2fa0508b80ca6ec9263d09d13b`  
		Last Modified: Tue, 08 Sep 2026 19:13:38 GMT  
		Size: 34.5 KB (34513 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9.7`

```console
$ docker pull mysql@sha256:b2cf29815e62fea06b7de22b8b8e57dfe0eb32706e38ce951930bde6faef4ab6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9.7` - linux; amd64

```console
$ docker pull mysql@sha256:d59aeb6202bb716f7d8c1f6ae303b919620c381e9884811b54cbcd04c5cc968f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.9 MB (270901267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d88fb618495c6f38c3424c54422cd3b3f5a33e9995488119d3540fd4e59f672f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 08 Sep 2026 18:58:50 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 08 Sep 2026 18:58:50 GMT
CMD ["/bin/bash"]
# Tue, 08 Sep 2026 19:15:07 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 08 Sep 2026 19:15:08 GMT
ENV GOSU_VERSION=1.19
# Tue, 08 Sep 2026 19:15:08 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 08 Sep 2026 19:15:40 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 08 Sep 2026 19:15:41 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 08 Sep 2026 19:15:41 GMT
ENV MYSQL_MAJOR=9.7
# Tue, 08 Sep 2026 19:15:41 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Tue, 08 Sep 2026 19:15:41 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 08 Sep 2026 19:16:55 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 08 Sep 2026 19:16:55 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 08 Sep 2026 19:16:55 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Tue, 08 Sep 2026 19:17:39 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 08 Sep 2026 19:17:39 GMT
VOLUME [/var/lib/mysql]
# Tue, 08 Sep 2026 19:17:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 08 Sep 2026 19:17:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 08 Sep 2026 19:17:39 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 08 Sep 2026 19:17:39 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:4bb6eac2f26a5221d1c656c424daeae066dc3efa0be69499880b834d8dbfbd84`  
		Last Modified: Tue, 08 Sep 2026 18:59:01 GMT  
		Size: 47.9 MB (47931580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7a3710e7618e9c34a79ec2d437c3838d99cda89549ac2ced46b027ab2e450f3`  
		Last Modified: Tue, 08 Sep 2026 19:18:14 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fe59e71d00f66e2cd63c4189632d4795b6d3a78abeb01f20874a50e68685482`  
		Last Modified: Tue, 08 Sep 2026 19:18:14 GMT  
		Size: 783.6 KB (783558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d289089f4187400a836c07e7efdf670adeec0c535006e94845063b5457f568b`  
		Last Modified: Tue, 08 Sep 2026 19:18:15 GMT  
		Size: 6.2 MB (6193124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fef7d3e3716f4998ec10e6fb9fa9fd188ca9b5b504f526fe37cc3c7ec15bca6`  
		Last Modified: Tue, 08 Sep 2026 19:18:14 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0af017e7e105c4e37c8a60f06782bb76841ac8e4e72f940584098c56ad6d8239`  
		Last Modified: Tue, 08 Sep 2026 19:18:15 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31cf237a9753d5cef6dcd5770fd88f91b165540ab18b14d3af9f8651e777b89b`  
		Last Modified: Tue, 08 Sep 2026 19:18:17 GMT  
		Size: 57.1 MB (57050670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9805aa3949997a8daefc83ad8a938205a4b07a36a5e558bfb3bcc9a4468fbe9`  
		Last Modified: Tue, 08 Sep 2026 19:18:16 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2d5a9de52e1c92b5c214eb3d31afc3eea84709bf8932b60aa11c461b98462ec`  
		Last Modified: Tue, 08 Sep 2026 19:18:20 GMT  
		Size: 158.9 MB (158932967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4ddd5d91160bac0f41caaa883c3eebcdeea7761c29a87b6d5c64eb8c970050a`  
		Last Modified: Tue, 08 Sep 2026 19:18:17 GMT  
		Size: 5.2 KB (5223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7` - unknown; unknown

```console
$ docker pull mysql@sha256:10c43bc445d6f65192b79fa639ebebd869f946e6dffdbd5e35d6fb98326f1ea1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:545b43d642e0ad4e1a312df9427c56ec09bf261eacbb9fd200f570168d2ef25f`

```dockerfile
```

-	Layers:
	-	`sha256:40cc0eca5dac2a83d515d0cc28a96b7a76cdc7f8fe934d54aee3ae24e5eac986`  
		Last Modified: Tue, 08 Sep 2026 19:18:15 GMT  
		Size: 16.8 MB (16799169 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9bdd13d74dae084d559eaaee971f80a941233b9d97c905edf6d4080b342fc977`  
		Last Modified: Tue, 08 Sep 2026 19:18:14 GMT  
		Size: 34.2 KB (34208 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9.7` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:2ed51e4ca654f598ff4bd15dd40e7b4359521fbc2d42cefaf49675fdc767126c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.4 MB (267372736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:917fde9264e50622eebf261bbaef1d1974d265e8be7d7ffdaceeab45c854813d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 08 Sep 2026 18:57:57 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 08 Sep 2026 18:57:57 GMT
CMD ["/bin/bash"]
# Tue, 08 Sep 2026 19:08:29 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 08 Sep 2026 19:08:31 GMT
ENV GOSU_VERSION=1.19
# Tue, 08 Sep 2026 19:08:31 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 08 Sep 2026 19:09:08 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 08 Sep 2026 19:09:09 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 08 Sep 2026 19:09:09 GMT
ENV MYSQL_MAJOR=9.7
# Tue, 08 Sep 2026 19:09:09 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Tue, 08 Sep 2026 19:11:31 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 08 Sep 2026 19:12:11 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 08 Sep 2026 19:12:11 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 08 Sep 2026 19:12:11 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Tue, 08 Sep 2026 19:13:03 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 08 Sep 2026 19:13:03 GMT
VOLUME [/var/lib/mysql]
# Tue, 08 Sep 2026 19:13:03 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 08 Sep 2026 19:13:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 08 Sep 2026 19:13:03 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 08 Sep 2026 19:13:03 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:43c5deee1c317416925b86b1f2e78b730d2819023376f79b4de9f871323951a3`  
		Last Modified: Tue, 08 Sep 2026 18:58:08 GMT  
		Size: 46.5 MB (46477029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb980a8434e3c4600e45827e85201dcb117fa105cc497695640216f831384390`  
		Last Modified: Tue, 08 Sep 2026 19:11:18 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19c8bf571c7b733ea038259eac861768ae839db6d07c3188d54dc617943033e2`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 737.5 KB (737526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a017510daff3c2f3381e365accaa66eab52f251dc93a013cff3ddc4062c62bfe`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 5.8 MB (5815802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2f8471efd5dddf293b43b461dbe2e803948535cfa581fd02300a0764d47d7a6`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7cf0fff5f4d8fe7ff19dcf52a3ebaa82ef1043c70a60d90991b1863f0eb640f`  
		Last Modified: Tue, 08 Sep 2026 19:13:38 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a187fc7343f94d7289f30f3c3fb12a19bd2fe6603aa2136e0386c7dd77524f1`  
		Last Modified: Tue, 08 Sep 2026 19:13:42 GMT  
		Size: 57.1 MB (57119326 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e27c35bc2cc95d5c2f074f10ad860da16501387a12719faa8958e586d463b91`  
		Last Modified: Tue, 08 Sep 2026 19:13:38 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fba08b51ddce5351fb3aa965afa74ba724bf9c685562d5ecbcbc527340baf3d6`  
		Last Modified: Tue, 08 Sep 2026 19:13:45 GMT  
		Size: 157.2 MB (157213679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eefae916eadabf60bfdf6fece79b60e224d6718ba147d6fb6951e7be7e90a63e`  
		Last Modified: Tue, 08 Sep 2026 19:13:40 GMT  
		Size: 5.2 KB (5228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7` - unknown; unknown

```console
$ docker pull mysql@sha256:7d83a256aaa633159f300654d8b22bd4bbb31e2ab65131bb97a6b32123072756
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16832118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:359665040e42a2a679975bfa8378b5aa48a993c31d7c805d286621743df8602e`

```dockerfile
```

-	Layers:
	-	`sha256:05da1d70ad47f0a4fb7e57fa8d4f77a59ade060507122f9e925b3f25aff303a5`  
		Last Modified: Tue, 08 Sep 2026 19:13:39 GMT  
		Size: 16.8 MB (16797605 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:328975a151db42b078ef7787f6ecc7bc960e1f2fa0508b80ca6ec9263d09d13b`  
		Last Modified: Tue, 08 Sep 2026 19:13:38 GMT  
		Size: 34.5 KB (34513 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9.7-oracle`

```console
$ docker pull mysql@sha256:b2cf29815e62fea06b7de22b8b8e57dfe0eb32706e38ce951930bde6faef4ab6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9.7-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:d59aeb6202bb716f7d8c1f6ae303b919620c381e9884811b54cbcd04c5cc968f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.9 MB (270901267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d88fb618495c6f38c3424c54422cd3b3f5a33e9995488119d3540fd4e59f672f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 08 Sep 2026 18:58:50 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 08 Sep 2026 18:58:50 GMT
CMD ["/bin/bash"]
# Tue, 08 Sep 2026 19:15:07 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 08 Sep 2026 19:15:08 GMT
ENV GOSU_VERSION=1.19
# Tue, 08 Sep 2026 19:15:08 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 08 Sep 2026 19:15:40 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 08 Sep 2026 19:15:41 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 08 Sep 2026 19:15:41 GMT
ENV MYSQL_MAJOR=9.7
# Tue, 08 Sep 2026 19:15:41 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Tue, 08 Sep 2026 19:15:41 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 08 Sep 2026 19:16:55 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 08 Sep 2026 19:16:55 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 08 Sep 2026 19:16:55 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Tue, 08 Sep 2026 19:17:39 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 08 Sep 2026 19:17:39 GMT
VOLUME [/var/lib/mysql]
# Tue, 08 Sep 2026 19:17:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 08 Sep 2026 19:17:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 08 Sep 2026 19:17:39 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 08 Sep 2026 19:17:39 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:4bb6eac2f26a5221d1c656c424daeae066dc3efa0be69499880b834d8dbfbd84`  
		Last Modified: Tue, 08 Sep 2026 18:59:01 GMT  
		Size: 47.9 MB (47931580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7a3710e7618e9c34a79ec2d437c3838d99cda89549ac2ced46b027ab2e450f3`  
		Last Modified: Tue, 08 Sep 2026 19:18:14 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fe59e71d00f66e2cd63c4189632d4795b6d3a78abeb01f20874a50e68685482`  
		Last Modified: Tue, 08 Sep 2026 19:18:14 GMT  
		Size: 783.6 KB (783558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d289089f4187400a836c07e7efdf670adeec0c535006e94845063b5457f568b`  
		Last Modified: Tue, 08 Sep 2026 19:18:15 GMT  
		Size: 6.2 MB (6193124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fef7d3e3716f4998ec10e6fb9fa9fd188ca9b5b504f526fe37cc3c7ec15bca6`  
		Last Modified: Tue, 08 Sep 2026 19:18:14 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0af017e7e105c4e37c8a60f06782bb76841ac8e4e72f940584098c56ad6d8239`  
		Last Modified: Tue, 08 Sep 2026 19:18:15 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31cf237a9753d5cef6dcd5770fd88f91b165540ab18b14d3af9f8651e777b89b`  
		Last Modified: Tue, 08 Sep 2026 19:18:17 GMT  
		Size: 57.1 MB (57050670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9805aa3949997a8daefc83ad8a938205a4b07a36a5e558bfb3bcc9a4468fbe9`  
		Last Modified: Tue, 08 Sep 2026 19:18:16 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2d5a9de52e1c92b5c214eb3d31afc3eea84709bf8932b60aa11c461b98462ec`  
		Last Modified: Tue, 08 Sep 2026 19:18:20 GMT  
		Size: 158.9 MB (158932967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4ddd5d91160bac0f41caaa883c3eebcdeea7761c29a87b6d5c64eb8c970050a`  
		Last Modified: Tue, 08 Sep 2026 19:18:17 GMT  
		Size: 5.2 KB (5223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:10c43bc445d6f65192b79fa639ebebd869f946e6dffdbd5e35d6fb98326f1ea1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:545b43d642e0ad4e1a312df9427c56ec09bf261eacbb9fd200f570168d2ef25f`

```dockerfile
```

-	Layers:
	-	`sha256:40cc0eca5dac2a83d515d0cc28a96b7a76cdc7f8fe934d54aee3ae24e5eac986`  
		Last Modified: Tue, 08 Sep 2026 19:18:15 GMT  
		Size: 16.8 MB (16799169 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9bdd13d74dae084d559eaaee971f80a941233b9d97c905edf6d4080b342fc977`  
		Last Modified: Tue, 08 Sep 2026 19:18:14 GMT  
		Size: 34.2 KB (34208 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9.7-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:2ed51e4ca654f598ff4bd15dd40e7b4359521fbc2d42cefaf49675fdc767126c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.4 MB (267372736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:917fde9264e50622eebf261bbaef1d1974d265e8be7d7ffdaceeab45c854813d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 08 Sep 2026 18:57:57 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 08 Sep 2026 18:57:57 GMT
CMD ["/bin/bash"]
# Tue, 08 Sep 2026 19:08:29 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 08 Sep 2026 19:08:31 GMT
ENV GOSU_VERSION=1.19
# Tue, 08 Sep 2026 19:08:31 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 08 Sep 2026 19:09:08 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 08 Sep 2026 19:09:09 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 08 Sep 2026 19:09:09 GMT
ENV MYSQL_MAJOR=9.7
# Tue, 08 Sep 2026 19:09:09 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Tue, 08 Sep 2026 19:11:31 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 08 Sep 2026 19:12:11 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 08 Sep 2026 19:12:11 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 08 Sep 2026 19:12:11 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Tue, 08 Sep 2026 19:13:03 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 08 Sep 2026 19:13:03 GMT
VOLUME [/var/lib/mysql]
# Tue, 08 Sep 2026 19:13:03 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 08 Sep 2026 19:13:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 08 Sep 2026 19:13:03 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 08 Sep 2026 19:13:03 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:43c5deee1c317416925b86b1f2e78b730d2819023376f79b4de9f871323951a3`  
		Last Modified: Tue, 08 Sep 2026 18:58:08 GMT  
		Size: 46.5 MB (46477029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb980a8434e3c4600e45827e85201dcb117fa105cc497695640216f831384390`  
		Last Modified: Tue, 08 Sep 2026 19:11:18 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19c8bf571c7b733ea038259eac861768ae839db6d07c3188d54dc617943033e2`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 737.5 KB (737526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a017510daff3c2f3381e365accaa66eab52f251dc93a013cff3ddc4062c62bfe`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 5.8 MB (5815802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2f8471efd5dddf293b43b461dbe2e803948535cfa581fd02300a0764d47d7a6`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7cf0fff5f4d8fe7ff19dcf52a3ebaa82ef1043c70a60d90991b1863f0eb640f`  
		Last Modified: Tue, 08 Sep 2026 19:13:38 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a187fc7343f94d7289f30f3c3fb12a19bd2fe6603aa2136e0386c7dd77524f1`  
		Last Modified: Tue, 08 Sep 2026 19:13:42 GMT  
		Size: 57.1 MB (57119326 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e27c35bc2cc95d5c2f074f10ad860da16501387a12719faa8958e586d463b91`  
		Last Modified: Tue, 08 Sep 2026 19:13:38 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fba08b51ddce5351fb3aa965afa74ba724bf9c685562d5ecbcbc527340baf3d6`  
		Last Modified: Tue, 08 Sep 2026 19:13:45 GMT  
		Size: 157.2 MB (157213679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eefae916eadabf60bfdf6fece79b60e224d6718ba147d6fb6951e7be7e90a63e`  
		Last Modified: Tue, 08 Sep 2026 19:13:40 GMT  
		Size: 5.2 KB (5228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:7d83a256aaa633159f300654d8b22bd4bbb31e2ab65131bb97a6b32123072756
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16832118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:359665040e42a2a679975bfa8378b5aa48a993c31d7c805d286621743df8602e`

```dockerfile
```

-	Layers:
	-	`sha256:05da1d70ad47f0a4fb7e57fa8d4f77a59ade060507122f9e925b3f25aff303a5`  
		Last Modified: Tue, 08 Sep 2026 19:13:39 GMT  
		Size: 16.8 MB (16797605 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:328975a151db42b078ef7787f6ecc7bc960e1f2fa0508b80ca6ec9263d09d13b`  
		Last Modified: Tue, 08 Sep 2026 19:13:38 GMT  
		Size: 34.5 KB (34513 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9.7-oraclelinux9`

```console
$ docker pull mysql@sha256:b2cf29815e62fea06b7de22b8b8e57dfe0eb32706e38ce951930bde6faef4ab6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9.7-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:d59aeb6202bb716f7d8c1f6ae303b919620c381e9884811b54cbcd04c5cc968f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.9 MB (270901267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d88fb618495c6f38c3424c54422cd3b3f5a33e9995488119d3540fd4e59f672f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 08 Sep 2026 18:58:50 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 08 Sep 2026 18:58:50 GMT
CMD ["/bin/bash"]
# Tue, 08 Sep 2026 19:15:07 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 08 Sep 2026 19:15:08 GMT
ENV GOSU_VERSION=1.19
# Tue, 08 Sep 2026 19:15:08 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 08 Sep 2026 19:15:40 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 08 Sep 2026 19:15:41 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 08 Sep 2026 19:15:41 GMT
ENV MYSQL_MAJOR=9.7
# Tue, 08 Sep 2026 19:15:41 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Tue, 08 Sep 2026 19:15:41 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 08 Sep 2026 19:16:55 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 08 Sep 2026 19:16:55 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 08 Sep 2026 19:16:55 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Tue, 08 Sep 2026 19:17:39 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 08 Sep 2026 19:17:39 GMT
VOLUME [/var/lib/mysql]
# Tue, 08 Sep 2026 19:17:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 08 Sep 2026 19:17:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 08 Sep 2026 19:17:39 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 08 Sep 2026 19:17:39 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:4bb6eac2f26a5221d1c656c424daeae066dc3efa0be69499880b834d8dbfbd84`  
		Last Modified: Tue, 08 Sep 2026 18:59:01 GMT  
		Size: 47.9 MB (47931580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7a3710e7618e9c34a79ec2d437c3838d99cda89549ac2ced46b027ab2e450f3`  
		Last Modified: Tue, 08 Sep 2026 19:18:14 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fe59e71d00f66e2cd63c4189632d4795b6d3a78abeb01f20874a50e68685482`  
		Last Modified: Tue, 08 Sep 2026 19:18:14 GMT  
		Size: 783.6 KB (783558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d289089f4187400a836c07e7efdf670adeec0c535006e94845063b5457f568b`  
		Last Modified: Tue, 08 Sep 2026 19:18:15 GMT  
		Size: 6.2 MB (6193124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fef7d3e3716f4998ec10e6fb9fa9fd188ca9b5b504f526fe37cc3c7ec15bca6`  
		Last Modified: Tue, 08 Sep 2026 19:18:14 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0af017e7e105c4e37c8a60f06782bb76841ac8e4e72f940584098c56ad6d8239`  
		Last Modified: Tue, 08 Sep 2026 19:18:15 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31cf237a9753d5cef6dcd5770fd88f91b165540ab18b14d3af9f8651e777b89b`  
		Last Modified: Tue, 08 Sep 2026 19:18:17 GMT  
		Size: 57.1 MB (57050670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9805aa3949997a8daefc83ad8a938205a4b07a36a5e558bfb3bcc9a4468fbe9`  
		Last Modified: Tue, 08 Sep 2026 19:18:16 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2d5a9de52e1c92b5c214eb3d31afc3eea84709bf8932b60aa11c461b98462ec`  
		Last Modified: Tue, 08 Sep 2026 19:18:20 GMT  
		Size: 158.9 MB (158932967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4ddd5d91160bac0f41caaa883c3eebcdeea7761c29a87b6d5c64eb8c970050a`  
		Last Modified: Tue, 08 Sep 2026 19:18:17 GMT  
		Size: 5.2 KB (5223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:10c43bc445d6f65192b79fa639ebebd869f946e6dffdbd5e35d6fb98326f1ea1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:545b43d642e0ad4e1a312df9427c56ec09bf261eacbb9fd200f570168d2ef25f`

```dockerfile
```

-	Layers:
	-	`sha256:40cc0eca5dac2a83d515d0cc28a96b7a76cdc7f8fe934d54aee3ae24e5eac986`  
		Last Modified: Tue, 08 Sep 2026 19:18:15 GMT  
		Size: 16.8 MB (16799169 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9bdd13d74dae084d559eaaee971f80a941233b9d97c905edf6d4080b342fc977`  
		Last Modified: Tue, 08 Sep 2026 19:18:14 GMT  
		Size: 34.2 KB (34208 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9.7-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:2ed51e4ca654f598ff4bd15dd40e7b4359521fbc2d42cefaf49675fdc767126c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.4 MB (267372736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:917fde9264e50622eebf261bbaef1d1974d265e8be7d7ffdaceeab45c854813d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 08 Sep 2026 18:57:57 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 08 Sep 2026 18:57:57 GMT
CMD ["/bin/bash"]
# Tue, 08 Sep 2026 19:08:29 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 08 Sep 2026 19:08:31 GMT
ENV GOSU_VERSION=1.19
# Tue, 08 Sep 2026 19:08:31 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 08 Sep 2026 19:09:08 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 08 Sep 2026 19:09:09 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 08 Sep 2026 19:09:09 GMT
ENV MYSQL_MAJOR=9.7
# Tue, 08 Sep 2026 19:09:09 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Tue, 08 Sep 2026 19:11:31 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 08 Sep 2026 19:12:11 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 08 Sep 2026 19:12:11 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 08 Sep 2026 19:12:11 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Tue, 08 Sep 2026 19:13:03 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 08 Sep 2026 19:13:03 GMT
VOLUME [/var/lib/mysql]
# Tue, 08 Sep 2026 19:13:03 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 08 Sep 2026 19:13:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 08 Sep 2026 19:13:03 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 08 Sep 2026 19:13:03 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:43c5deee1c317416925b86b1f2e78b730d2819023376f79b4de9f871323951a3`  
		Last Modified: Tue, 08 Sep 2026 18:58:08 GMT  
		Size: 46.5 MB (46477029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb980a8434e3c4600e45827e85201dcb117fa105cc497695640216f831384390`  
		Last Modified: Tue, 08 Sep 2026 19:11:18 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19c8bf571c7b733ea038259eac861768ae839db6d07c3188d54dc617943033e2`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 737.5 KB (737526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a017510daff3c2f3381e365accaa66eab52f251dc93a013cff3ddc4062c62bfe`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 5.8 MB (5815802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2f8471efd5dddf293b43b461dbe2e803948535cfa581fd02300a0764d47d7a6`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7cf0fff5f4d8fe7ff19dcf52a3ebaa82ef1043c70a60d90991b1863f0eb640f`  
		Last Modified: Tue, 08 Sep 2026 19:13:38 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a187fc7343f94d7289f30f3c3fb12a19bd2fe6603aa2136e0386c7dd77524f1`  
		Last Modified: Tue, 08 Sep 2026 19:13:42 GMT  
		Size: 57.1 MB (57119326 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e27c35bc2cc95d5c2f074f10ad860da16501387a12719faa8958e586d463b91`  
		Last Modified: Tue, 08 Sep 2026 19:13:38 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fba08b51ddce5351fb3aa965afa74ba724bf9c685562d5ecbcbc527340baf3d6`  
		Last Modified: Tue, 08 Sep 2026 19:13:45 GMT  
		Size: 157.2 MB (157213679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eefae916eadabf60bfdf6fece79b60e224d6718ba147d6fb6951e7be7e90a63e`  
		Last Modified: Tue, 08 Sep 2026 19:13:40 GMT  
		Size: 5.2 KB (5228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:7d83a256aaa633159f300654d8b22bd4bbb31e2ab65131bb97a6b32123072756
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16832118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:359665040e42a2a679975bfa8378b5aa48a993c31d7c805d286621743df8602e`

```dockerfile
```

-	Layers:
	-	`sha256:05da1d70ad47f0a4fb7e57fa8d4f77a59ade060507122f9e925b3f25aff303a5`  
		Last Modified: Tue, 08 Sep 2026 19:13:39 GMT  
		Size: 16.8 MB (16797605 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:328975a151db42b078ef7787f6ecc7bc960e1f2fa0508b80ca6ec9263d09d13b`  
		Last Modified: Tue, 08 Sep 2026 19:13:38 GMT  
		Size: 34.5 KB (34513 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9.7.2`

```console
$ docker pull mysql@sha256:b2cf29815e62fea06b7de22b8b8e57dfe0eb32706e38ce951930bde6faef4ab6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9.7.2` - linux; amd64

```console
$ docker pull mysql@sha256:d59aeb6202bb716f7d8c1f6ae303b919620c381e9884811b54cbcd04c5cc968f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.9 MB (270901267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d88fb618495c6f38c3424c54422cd3b3f5a33e9995488119d3540fd4e59f672f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 08 Sep 2026 18:58:50 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 08 Sep 2026 18:58:50 GMT
CMD ["/bin/bash"]
# Tue, 08 Sep 2026 19:15:07 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 08 Sep 2026 19:15:08 GMT
ENV GOSU_VERSION=1.19
# Tue, 08 Sep 2026 19:15:08 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 08 Sep 2026 19:15:40 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 08 Sep 2026 19:15:41 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 08 Sep 2026 19:15:41 GMT
ENV MYSQL_MAJOR=9.7
# Tue, 08 Sep 2026 19:15:41 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Tue, 08 Sep 2026 19:15:41 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 08 Sep 2026 19:16:55 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 08 Sep 2026 19:16:55 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 08 Sep 2026 19:16:55 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Tue, 08 Sep 2026 19:17:39 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 08 Sep 2026 19:17:39 GMT
VOLUME [/var/lib/mysql]
# Tue, 08 Sep 2026 19:17:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 08 Sep 2026 19:17:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 08 Sep 2026 19:17:39 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 08 Sep 2026 19:17:39 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:4bb6eac2f26a5221d1c656c424daeae066dc3efa0be69499880b834d8dbfbd84`  
		Last Modified: Tue, 08 Sep 2026 18:59:01 GMT  
		Size: 47.9 MB (47931580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7a3710e7618e9c34a79ec2d437c3838d99cda89549ac2ced46b027ab2e450f3`  
		Last Modified: Tue, 08 Sep 2026 19:18:14 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fe59e71d00f66e2cd63c4189632d4795b6d3a78abeb01f20874a50e68685482`  
		Last Modified: Tue, 08 Sep 2026 19:18:14 GMT  
		Size: 783.6 KB (783558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d289089f4187400a836c07e7efdf670adeec0c535006e94845063b5457f568b`  
		Last Modified: Tue, 08 Sep 2026 19:18:15 GMT  
		Size: 6.2 MB (6193124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fef7d3e3716f4998ec10e6fb9fa9fd188ca9b5b504f526fe37cc3c7ec15bca6`  
		Last Modified: Tue, 08 Sep 2026 19:18:14 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0af017e7e105c4e37c8a60f06782bb76841ac8e4e72f940584098c56ad6d8239`  
		Last Modified: Tue, 08 Sep 2026 19:18:15 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31cf237a9753d5cef6dcd5770fd88f91b165540ab18b14d3af9f8651e777b89b`  
		Last Modified: Tue, 08 Sep 2026 19:18:17 GMT  
		Size: 57.1 MB (57050670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9805aa3949997a8daefc83ad8a938205a4b07a36a5e558bfb3bcc9a4468fbe9`  
		Last Modified: Tue, 08 Sep 2026 19:18:16 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2d5a9de52e1c92b5c214eb3d31afc3eea84709bf8932b60aa11c461b98462ec`  
		Last Modified: Tue, 08 Sep 2026 19:18:20 GMT  
		Size: 158.9 MB (158932967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4ddd5d91160bac0f41caaa883c3eebcdeea7761c29a87b6d5c64eb8c970050a`  
		Last Modified: Tue, 08 Sep 2026 19:18:17 GMT  
		Size: 5.2 KB (5223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7.2` - unknown; unknown

```console
$ docker pull mysql@sha256:10c43bc445d6f65192b79fa639ebebd869f946e6dffdbd5e35d6fb98326f1ea1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:545b43d642e0ad4e1a312df9427c56ec09bf261eacbb9fd200f570168d2ef25f`

```dockerfile
```

-	Layers:
	-	`sha256:40cc0eca5dac2a83d515d0cc28a96b7a76cdc7f8fe934d54aee3ae24e5eac986`  
		Last Modified: Tue, 08 Sep 2026 19:18:15 GMT  
		Size: 16.8 MB (16799169 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9bdd13d74dae084d559eaaee971f80a941233b9d97c905edf6d4080b342fc977`  
		Last Modified: Tue, 08 Sep 2026 19:18:14 GMT  
		Size: 34.2 KB (34208 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9.7.2` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:2ed51e4ca654f598ff4bd15dd40e7b4359521fbc2d42cefaf49675fdc767126c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.4 MB (267372736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:917fde9264e50622eebf261bbaef1d1974d265e8be7d7ffdaceeab45c854813d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 08 Sep 2026 18:57:57 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 08 Sep 2026 18:57:57 GMT
CMD ["/bin/bash"]
# Tue, 08 Sep 2026 19:08:29 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 08 Sep 2026 19:08:31 GMT
ENV GOSU_VERSION=1.19
# Tue, 08 Sep 2026 19:08:31 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 08 Sep 2026 19:09:08 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 08 Sep 2026 19:09:09 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 08 Sep 2026 19:09:09 GMT
ENV MYSQL_MAJOR=9.7
# Tue, 08 Sep 2026 19:09:09 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Tue, 08 Sep 2026 19:11:31 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 08 Sep 2026 19:12:11 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 08 Sep 2026 19:12:11 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 08 Sep 2026 19:12:11 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Tue, 08 Sep 2026 19:13:03 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 08 Sep 2026 19:13:03 GMT
VOLUME [/var/lib/mysql]
# Tue, 08 Sep 2026 19:13:03 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 08 Sep 2026 19:13:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 08 Sep 2026 19:13:03 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 08 Sep 2026 19:13:03 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:43c5deee1c317416925b86b1f2e78b730d2819023376f79b4de9f871323951a3`  
		Last Modified: Tue, 08 Sep 2026 18:58:08 GMT  
		Size: 46.5 MB (46477029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb980a8434e3c4600e45827e85201dcb117fa105cc497695640216f831384390`  
		Last Modified: Tue, 08 Sep 2026 19:11:18 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19c8bf571c7b733ea038259eac861768ae839db6d07c3188d54dc617943033e2`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 737.5 KB (737526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a017510daff3c2f3381e365accaa66eab52f251dc93a013cff3ddc4062c62bfe`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 5.8 MB (5815802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2f8471efd5dddf293b43b461dbe2e803948535cfa581fd02300a0764d47d7a6`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7cf0fff5f4d8fe7ff19dcf52a3ebaa82ef1043c70a60d90991b1863f0eb640f`  
		Last Modified: Tue, 08 Sep 2026 19:13:38 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a187fc7343f94d7289f30f3c3fb12a19bd2fe6603aa2136e0386c7dd77524f1`  
		Last Modified: Tue, 08 Sep 2026 19:13:42 GMT  
		Size: 57.1 MB (57119326 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e27c35bc2cc95d5c2f074f10ad860da16501387a12719faa8958e586d463b91`  
		Last Modified: Tue, 08 Sep 2026 19:13:38 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fba08b51ddce5351fb3aa965afa74ba724bf9c685562d5ecbcbc527340baf3d6`  
		Last Modified: Tue, 08 Sep 2026 19:13:45 GMT  
		Size: 157.2 MB (157213679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eefae916eadabf60bfdf6fece79b60e224d6718ba147d6fb6951e7be7e90a63e`  
		Last Modified: Tue, 08 Sep 2026 19:13:40 GMT  
		Size: 5.2 KB (5228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7.2` - unknown; unknown

```console
$ docker pull mysql@sha256:7d83a256aaa633159f300654d8b22bd4bbb31e2ab65131bb97a6b32123072756
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16832118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:359665040e42a2a679975bfa8378b5aa48a993c31d7c805d286621743df8602e`

```dockerfile
```

-	Layers:
	-	`sha256:05da1d70ad47f0a4fb7e57fa8d4f77a59ade060507122f9e925b3f25aff303a5`  
		Last Modified: Tue, 08 Sep 2026 19:13:39 GMT  
		Size: 16.8 MB (16797605 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:328975a151db42b078ef7787f6ecc7bc960e1f2fa0508b80ca6ec9263d09d13b`  
		Last Modified: Tue, 08 Sep 2026 19:13:38 GMT  
		Size: 34.5 KB (34513 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9.7.2-oracle`

```console
$ docker pull mysql@sha256:b2cf29815e62fea06b7de22b8b8e57dfe0eb32706e38ce951930bde6faef4ab6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9.7.2-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:d59aeb6202bb716f7d8c1f6ae303b919620c381e9884811b54cbcd04c5cc968f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.9 MB (270901267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d88fb618495c6f38c3424c54422cd3b3f5a33e9995488119d3540fd4e59f672f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 08 Sep 2026 18:58:50 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 08 Sep 2026 18:58:50 GMT
CMD ["/bin/bash"]
# Tue, 08 Sep 2026 19:15:07 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 08 Sep 2026 19:15:08 GMT
ENV GOSU_VERSION=1.19
# Tue, 08 Sep 2026 19:15:08 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 08 Sep 2026 19:15:40 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 08 Sep 2026 19:15:41 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 08 Sep 2026 19:15:41 GMT
ENV MYSQL_MAJOR=9.7
# Tue, 08 Sep 2026 19:15:41 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Tue, 08 Sep 2026 19:15:41 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 08 Sep 2026 19:16:55 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 08 Sep 2026 19:16:55 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 08 Sep 2026 19:16:55 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Tue, 08 Sep 2026 19:17:39 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 08 Sep 2026 19:17:39 GMT
VOLUME [/var/lib/mysql]
# Tue, 08 Sep 2026 19:17:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 08 Sep 2026 19:17:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 08 Sep 2026 19:17:39 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 08 Sep 2026 19:17:39 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:4bb6eac2f26a5221d1c656c424daeae066dc3efa0be69499880b834d8dbfbd84`  
		Last Modified: Tue, 08 Sep 2026 18:59:01 GMT  
		Size: 47.9 MB (47931580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7a3710e7618e9c34a79ec2d437c3838d99cda89549ac2ced46b027ab2e450f3`  
		Last Modified: Tue, 08 Sep 2026 19:18:14 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fe59e71d00f66e2cd63c4189632d4795b6d3a78abeb01f20874a50e68685482`  
		Last Modified: Tue, 08 Sep 2026 19:18:14 GMT  
		Size: 783.6 KB (783558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d289089f4187400a836c07e7efdf670adeec0c535006e94845063b5457f568b`  
		Last Modified: Tue, 08 Sep 2026 19:18:15 GMT  
		Size: 6.2 MB (6193124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fef7d3e3716f4998ec10e6fb9fa9fd188ca9b5b504f526fe37cc3c7ec15bca6`  
		Last Modified: Tue, 08 Sep 2026 19:18:14 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0af017e7e105c4e37c8a60f06782bb76841ac8e4e72f940584098c56ad6d8239`  
		Last Modified: Tue, 08 Sep 2026 19:18:15 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31cf237a9753d5cef6dcd5770fd88f91b165540ab18b14d3af9f8651e777b89b`  
		Last Modified: Tue, 08 Sep 2026 19:18:17 GMT  
		Size: 57.1 MB (57050670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9805aa3949997a8daefc83ad8a938205a4b07a36a5e558bfb3bcc9a4468fbe9`  
		Last Modified: Tue, 08 Sep 2026 19:18:16 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2d5a9de52e1c92b5c214eb3d31afc3eea84709bf8932b60aa11c461b98462ec`  
		Last Modified: Tue, 08 Sep 2026 19:18:20 GMT  
		Size: 158.9 MB (158932967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4ddd5d91160bac0f41caaa883c3eebcdeea7761c29a87b6d5c64eb8c970050a`  
		Last Modified: Tue, 08 Sep 2026 19:18:17 GMT  
		Size: 5.2 KB (5223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7.2-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:10c43bc445d6f65192b79fa639ebebd869f946e6dffdbd5e35d6fb98326f1ea1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:545b43d642e0ad4e1a312df9427c56ec09bf261eacbb9fd200f570168d2ef25f`

```dockerfile
```

-	Layers:
	-	`sha256:40cc0eca5dac2a83d515d0cc28a96b7a76cdc7f8fe934d54aee3ae24e5eac986`  
		Last Modified: Tue, 08 Sep 2026 19:18:15 GMT  
		Size: 16.8 MB (16799169 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9bdd13d74dae084d559eaaee971f80a941233b9d97c905edf6d4080b342fc977`  
		Last Modified: Tue, 08 Sep 2026 19:18:14 GMT  
		Size: 34.2 KB (34208 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9.7.2-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:2ed51e4ca654f598ff4bd15dd40e7b4359521fbc2d42cefaf49675fdc767126c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.4 MB (267372736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:917fde9264e50622eebf261bbaef1d1974d265e8be7d7ffdaceeab45c854813d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 08 Sep 2026 18:57:57 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 08 Sep 2026 18:57:57 GMT
CMD ["/bin/bash"]
# Tue, 08 Sep 2026 19:08:29 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 08 Sep 2026 19:08:31 GMT
ENV GOSU_VERSION=1.19
# Tue, 08 Sep 2026 19:08:31 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 08 Sep 2026 19:09:08 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 08 Sep 2026 19:09:09 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 08 Sep 2026 19:09:09 GMT
ENV MYSQL_MAJOR=9.7
# Tue, 08 Sep 2026 19:09:09 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Tue, 08 Sep 2026 19:11:31 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 08 Sep 2026 19:12:11 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 08 Sep 2026 19:12:11 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 08 Sep 2026 19:12:11 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Tue, 08 Sep 2026 19:13:03 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 08 Sep 2026 19:13:03 GMT
VOLUME [/var/lib/mysql]
# Tue, 08 Sep 2026 19:13:03 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 08 Sep 2026 19:13:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 08 Sep 2026 19:13:03 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 08 Sep 2026 19:13:03 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:43c5deee1c317416925b86b1f2e78b730d2819023376f79b4de9f871323951a3`  
		Last Modified: Tue, 08 Sep 2026 18:58:08 GMT  
		Size: 46.5 MB (46477029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb980a8434e3c4600e45827e85201dcb117fa105cc497695640216f831384390`  
		Last Modified: Tue, 08 Sep 2026 19:11:18 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19c8bf571c7b733ea038259eac861768ae839db6d07c3188d54dc617943033e2`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 737.5 KB (737526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a017510daff3c2f3381e365accaa66eab52f251dc93a013cff3ddc4062c62bfe`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 5.8 MB (5815802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2f8471efd5dddf293b43b461dbe2e803948535cfa581fd02300a0764d47d7a6`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7cf0fff5f4d8fe7ff19dcf52a3ebaa82ef1043c70a60d90991b1863f0eb640f`  
		Last Modified: Tue, 08 Sep 2026 19:13:38 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a187fc7343f94d7289f30f3c3fb12a19bd2fe6603aa2136e0386c7dd77524f1`  
		Last Modified: Tue, 08 Sep 2026 19:13:42 GMT  
		Size: 57.1 MB (57119326 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e27c35bc2cc95d5c2f074f10ad860da16501387a12719faa8958e586d463b91`  
		Last Modified: Tue, 08 Sep 2026 19:13:38 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fba08b51ddce5351fb3aa965afa74ba724bf9c685562d5ecbcbc527340baf3d6`  
		Last Modified: Tue, 08 Sep 2026 19:13:45 GMT  
		Size: 157.2 MB (157213679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eefae916eadabf60bfdf6fece79b60e224d6718ba147d6fb6951e7be7e90a63e`  
		Last Modified: Tue, 08 Sep 2026 19:13:40 GMT  
		Size: 5.2 KB (5228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7.2-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:7d83a256aaa633159f300654d8b22bd4bbb31e2ab65131bb97a6b32123072756
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16832118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:359665040e42a2a679975bfa8378b5aa48a993c31d7c805d286621743df8602e`

```dockerfile
```

-	Layers:
	-	`sha256:05da1d70ad47f0a4fb7e57fa8d4f77a59ade060507122f9e925b3f25aff303a5`  
		Last Modified: Tue, 08 Sep 2026 19:13:39 GMT  
		Size: 16.8 MB (16797605 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:328975a151db42b078ef7787f6ecc7bc960e1f2fa0508b80ca6ec9263d09d13b`  
		Last Modified: Tue, 08 Sep 2026 19:13:38 GMT  
		Size: 34.5 KB (34513 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9.7.2-oraclelinux9`

```console
$ docker pull mysql@sha256:b2cf29815e62fea06b7de22b8b8e57dfe0eb32706e38ce951930bde6faef4ab6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9.7.2-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:d59aeb6202bb716f7d8c1f6ae303b919620c381e9884811b54cbcd04c5cc968f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.9 MB (270901267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d88fb618495c6f38c3424c54422cd3b3f5a33e9995488119d3540fd4e59f672f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 08 Sep 2026 18:58:50 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 08 Sep 2026 18:58:50 GMT
CMD ["/bin/bash"]
# Tue, 08 Sep 2026 19:15:07 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 08 Sep 2026 19:15:08 GMT
ENV GOSU_VERSION=1.19
# Tue, 08 Sep 2026 19:15:08 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 08 Sep 2026 19:15:40 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 08 Sep 2026 19:15:41 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 08 Sep 2026 19:15:41 GMT
ENV MYSQL_MAJOR=9.7
# Tue, 08 Sep 2026 19:15:41 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Tue, 08 Sep 2026 19:15:41 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 08 Sep 2026 19:16:55 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 08 Sep 2026 19:16:55 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 08 Sep 2026 19:16:55 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Tue, 08 Sep 2026 19:17:39 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 08 Sep 2026 19:17:39 GMT
VOLUME [/var/lib/mysql]
# Tue, 08 Sep 2026 19:17:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 08 Sep 2026 19:17:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 08 Sep 2026 19:17:39 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 08 Sep 2026 19:17:39 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:4bb6eac2f26a5221d1c656c424daeae066dc3efa0be69499880b834d8dbfbd84`  
		Last Modified: Tue, 08 Sep 2026 18:59:01 GMT  
		Size: 47.9 MB (47931580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7a3710e7618e9c34a79ec2d437c3838d99cda89549ac2ced46b027ab2e450f3`  
		Last Modified: Tue, 08 Sep 2026 19:18:14 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fe59e71d00f66e2cd63c4189632d4795b6d3a78abeb01f20874a50e68685482`  
		Last Modified: Tue, 08 Sep 2026 19:18:14 GMT  
		Size: 783.6 KB (783558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d289089f4187400a836c07e7efdf670adeec0c535006e94845063b5457f568b`  
		Last Modified: Tue, 08 Sep 2026 19:18:15 GMT  
		Size: 6.2 MB (6193124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fef7d3e3716f4998ec10e6fb9fa9fd188ca9b5b504f526fe37cc3c7ec15bca6`  
		Last Modified: Tue, 08 Sep 2026 19:18:14 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0af017e7e105c4e37c8a60f06782bb76841ac8e4e72f940584098c56ad6d8239`  
		Last Modified: Tue, 08 Sep 2026 19:18:15 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31cf237a9753d5cef6dcd5770fd88f91b165540ab18b14d3af9f8651e777b89b`  
		Last Modified: Tue, 08 Sep 2026 19:18:17 GMT  
		Size: 57.1 MB (57050670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9805aa3949997a8daefc83ad8a938205a4b07a36a5e558bfb3bcc9a4468fbe9`  
		Last Modified: Tue, 08 Sep 2026 19:18:16 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2d5a9de52e1c92b5c214eb3d31afc3eea84709bf8932b60aa11c461b98462ec`  
		Last Modified: Tue, 08 Sep 2026 19:18:20 GMT  
		Size: 158.9 MB (158932967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4ddd5d91160bac0f41caaa883c3eebcdeea7761c29a87b6d5c64eb8c970050a`  
		Last Modified: Tue, 08 Sep 2026 19:18:17 GMT  
		Size: 5.2 KB (5223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7.2-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:10c43bc445d6f65192b79fa639ebebd869f946e6dffdbd5e35d6fb98326f1ea1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:545b43d642e0ad4e1a312df9427c56ec09bf261eacbb9fd200f570168d2ef25f`

```dockerfile
```

-	Layers:
	-	`sha256:40cc0eca5dac2a83d515d0cc28a96b7a76cdc7f8fe934d54aee3ae24e5eac986`  
		Last Modified: Tue, 08 Sep 2026 19:18:15 GMT  
		Size: 16.8 MB (16799169 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9bdd13d74dae084d559eaaee971f80a941233b9d97c905edf6d4080b342fc977`  
		Last Modified: Tue, 08 Sep 2026 19:18:14 GMT  
		Size: 34.2 KB (34208 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9.7.2-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:2ed51e4ca654f598ff4bd15dd40e7b4359521fbc2d42cefaf49675fdc767126c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.4 MB (267372736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:917fde9264e50622eebf261bbaef1d1974d265e8be7d7ffdaceeab45c854813d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 08 Sep 2026 18:57:57 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 08 Sep 2026 18:57:57 GMT
CMD ["/bin/bash"]
# Tue, 08 Sep 2026 19:08:29 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 08 Sep 2026 19:08:31 GMT
ENV GOSU_VERSION=1.19
# Tue, 08 Sep 2026 19:08:31 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 08 Sep 2026 19:09:08 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 08 Sep 2026 19:09:09 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 08 Sep 2026 19:09:09 GMT
ENV MYSQL_MAJOR=9.7
# Tue, 08 Sep 2026 19:09:09 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Tue, 08 Sep 2026 19:11:31 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 08 Sep 2026 19:12:11 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 08 Sep 2026 19:12:11 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 08 Sep 2026 19:12:11 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Tue, 08 Sep 2026 19:13:03 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 08 Sep 2026 19:13:03 GMT
VOLUME [/var/lib/mysql]
# Tue, 08 Sep 2026 19:13:03 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 08 Sep 2026 19:13:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 08 Sep 2026 19:13:03 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 08 Sep 2026 19:13:03 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:43c5deee1c317416925b86b1f2e78b730d2819023376f79b4de9f871323951a3`  
		Last Modified: Tue, 08 Sep 2026 18:58:08 GMT  
		Size: 46.5 MB (46477029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb980a8434e3c4600e45827e85201dcb117fa105cc497695640216f831384390`  
		Last Modified: Tue, 08 Sep 2026 19:11:18 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19c8bf571c7b733ea038259eac861768ae839db6d07c3188d54dc617943033e2`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 737.5 KB (737526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a017510daff3c2f3381e365accaa66eab52f251dc93a013cff3ddc4062c62bfe`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 5.8 MB (5815802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2f8471efd5dddf293b43b461dbe2e803948535cfa581fd02300a0764d47d7a6`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7cf0fff5f4d8fe7ff19dcf52a3ebaa82ef1043c70a60d90991b1863f0eb640f`  
		Last Modified: Tue, 08 Sep 2026 19:13:38 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a187fc7343f94d7289f30f3c3fb12a19bd2fe6603aa2136e0386c7dd77524f1`  
		Last Modified: Tue, 08 Sep 2026 19:13:42 GMT  
		Size: 57.1 MB (57119326 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e27c35bc2cc95d5c2f074f10ad860da16501387a12719faa8958e586d463b91`  
		Last Modified: Tue, 08 Sep 2026 19:13:38 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fba08b51ddce5351fb3aa965afa74ba724bf9c685562d5ecbcbc527340baf3d6`  
		Last Modified: Tue, 08 Sep 2026 19:13:45 GMT  
		Size: 157.2 MB (157213679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eefae916eadabf60bfdf6fece79b60e224d6718ba147d6fb6951e7be7e90a63e`  
		Last Modified: Tue, 08 Sep 2026 19:13:40 GMT  
		Size: 5.2 KB (5228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7.2-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:7d83a256aaa633159f300654d8b22bd4bbb31e2ab65131bb97a6b32123072756
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16832118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:359665040e42a2a679975bfa8378b5aa48a993c31d7c805d286621743df8602e`

```dockerfile
```

-	Layers:
	-	`sha256:05da1d70ad47f0a4fb7e57fa8d4f77a59ade060507122f9e925b3f25aff303a5`  
		Last Modified: Tue, 08 Sep 2026 19:13:39 GMT  
		Size: 16.8 MB (16797605 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:328975a151db42b078ef7787f6ecc7bc960e1f2fa0508b80ca6ec9263d09d13b`  
		Last Modified: Tue, 08 Sep 2026 19:13:38 GMT  
		Size: 34.5 KB (34513 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:innovation`

```console
$ docker pull mysql@sha256:4b40b165f348c3a1d959a222bd6c7773503f202554fd140db3de74ed9136b7b8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:innovation` - linux; amd64

```console
$ docker pull mysql@sha256:0cf09253b84d0b32ec751c0342258e1efec1892443e5d0dd58239fb8b8eaa63e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.3 MB (272344574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:910ef46e093997328100b40b32fffe94ebca0b5ab1b1591e951d7b465e9b212e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 08 Sep 2026 18:58:50 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 08 Sep 2026 18:58:50 GMT
CMD ["/bin/bash"]
# Tue, 08 Sep 2026 19:12:37 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 08 Sep 2026 19:12:39 GMT
ENV GOSU_VERSION=1.19
# Tue, 08 Sep 2026 19:12:39 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 08 Sep 2026 19:13:07 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 08 Sep 2026 19:13:08 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 08 Sep 2026 19:13:08 GMT
ENV MYSQL_MAJOR=innovation
# Tue, 08 Sep 2026 19:13:08 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Tue, 08 Sep 2026 19:13:08 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 08 Sep 2026 19:13:39 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 08 Sep 2026 19:13:39 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 08 Sep 2026 19:13:39 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Tue, 08 Sep 2026 19:14:21 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 08 Sep 2026 19:14:21 GMT
VOLUME [/var/lib/mysql]
# Tue, 08 Sep 2026 19:14:21 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 08 Sep 2026 19:14:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 08 Sep 2026 19:14:21 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 08 Sep 2026 19:14:21 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:4bb6eac2f26a5221d1c656c424daeae066dc3efa0be69499880b834d8dbfbd84`  
		Last Modified: Tue, 08 Sep 2026 18:59:01 GMT  
		Size: 47.9 MB (47931580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc90eb5f505f7c2417eee66e3257d1016d164ea46585caa235979cdf9bd6ab73`  
		Last Modified: Tue, 08 Sep 2026 19:14:52 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a78411c2d8161f9b9429975810b3b5dff71cbd89a0148b66a3f8c536fee9315f`  
		Last Modified: Tue, 08 Sep 2026 19:14:53 GMT  
		Size: 783.6 KB (783558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19564ecb42922de74e35ba641d2fb08e184ebb18b3f09d0d4ee6f6712581727b`  
		Last Modified: Tue, 08 Sep 2026 19:14:53 GMT  
		Size: 6.2 MB (6193089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49dc6bddddc7cc625377d5df1245a5fb026beac5efdd63ef6e25b563ecca537c`  
		Last Modified: Tue, 08 Sep 2026 19:14:53 GMT  
		Size: 2.6 KB (2609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:430c7065f1d589bdb7da26b9859bc9f20e8b56d6303c2cffc7f3a849b54983f6`  
		Last Modified: Tue, 08 Sep 2026 19:14:53 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d12dddcbdc10c994559080258cda9fdf8511ffec919b220a646556a4a849072`  
		Last Modified: Tue, 08 Sep 2026 19:14:56 GMT  
		Size: 57.5 MB (57454018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa5b47801f3bb551f892160e0b69175df8fcbea4b8f128c712a934726190785d`  
		Last Modified: Tue, 08 Sep 2026 19:14:54 GMT  
		Size: 326.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:827e6b736dd9d450892a30eb5a95c0c4cb45fbdf8ea237df78102751abfef628`  
		Last Modified: Tue, 08 Sep 2026 19:14:58 GMT  
		Size: 160.0 MB (159972946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d1d44554de144e8cd989547b5a2dfb36e97e37eb00032e7be62888bca76d5c1`  
		Last Modified: Tue, 08 Sep 2026 19:14:55 GMT  
		Size: 5.2 KB (5224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:innovation` - unknown; unknown

```console
$ docker pull mysql@sha256:a75775650173f13500d672d4d073b08ae8d20d46991136715abf3870682f3c86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17452691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c89132a00811bf83d2cc588fe9c2898f0cca20c6922a692c0e21e50a8e2335f`

```dockerfile
```

-	Layers:
	-	`sha256:f808f33758cbaa0098097db77726ff7cd992a39cf7a95d8bfde42c5be3cebf3a`  
		Last Modified: Tue, 08 Sep 2026 19:14:53 GMT  
		Size: 17.4 MB (17417393 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7518911e256d5236a3275979046f1ad3094b3027975d3c3ace300949aa89eb19`  
		Last Modified: Tue, 08 Sep 2026 19:14:52 GMT  
		Size: 35.3 KB (35298 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:innovation` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:f7b3452e2f5ee773e9fd4f9988e7ea807d879acd3b52961607924dd17b07d9ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.7 MB (268716373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7962d59d8b8dc9cf17078c2286222195108936478af77248ad804a60e845f632`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 08 Sep 2026 18:57:57 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 08 Sep 2026 18:57:57 GMT
CMD ["/bin/bash"]
# Tue, 08 Sep 2026 19:08:29 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 08 Sep 2026 19:08:31 GMT
ENV GOSU_VERSION=1.19
# Tue, 08 Sep 2026 19:08:31 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 08 Sep 2026 19:09:08 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 08 Sep 2026 19:09:09 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 08 Sep 2026 19:09:09 GMT
ENV MYSQL_MAJOR=innovation
# Tue, 08 Sep 2026 19:09:09 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Tue, 08 Sep 2026 19:09:09 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 08 Sep 2026 19:09:50 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 08 Sep 2026 19:09:50 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 08 Sep 2026 19:09:50 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Tue, 08 Sep 2026 19:10:42 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 08 Sep 2026 19:10:42 GMT
VOLUME [/var/lib/mysql]
# Tue, 08 Sep 2026 19:10:42 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 08 Sep 2026 19:10:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 08 Sep 2026 19:10:42 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 08 Sep 2026 19:10:42 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:43c5deee1c317416925b86b1f2e78b730d2819023376f79b4de9f871323951a3`  
		Last Modified: Tue, 08 Sep 2026 18:58:08 GMT  
		Size: 46.5 MB (46477029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb980a8434e3c4600e45827e85201dcb117fa105cc497695640216f831384390`  
		Last Modified: Tue, 08 Sep 2026 19:11:18 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19c8bf571c7b733ea038259eac861768ae839db6d07c3188d54dc617943033e2`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 737.5 KB (737526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a017510daff3c2f3381e365accaa66eab52f251dc93a013cff3ddc4062c62bfe`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 5.8 MB (5815802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2f8471efd5dddf293b43b461dbe2e803948535cfa581fd02300a0764d47d7a6`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:101bfb51b57e17c638fb10e44f924f41eb5404b23677c7a9acca93868921e848`  
		Last Modified: Tue, 08 Sep 2026 19:11:20 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b549fe7114eb3dfbf6c84556f2f6e3408fc18ae4e25670891a404a451a31b0af`  
		Last Modified: Tue, 08 Sep 2026 19:11:22 GMT  
		Size: 57.4 MB (57434910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98cbda40669b120f5206b5bea13286fc329791c1646806a2dddd84cc214f3819`  
		Last Modified: Tue, 08 Sep 2026 19:11:20 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf3502e763277be8a4dada567b8594b93828c204a5f6749c1b094d09e2faad5c`  
		Last Modified: Tue, 08 Sep 2026 19:11:24 GMT  
		Size: 158.2 MB (158241725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:646bd661ef31ead80e724c18cefe7a9571656c1c72aeb850d1af8f074e002ced`  
		Last Modified: Tue, 08 Sep 2026 19:11:21 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:innovation` - unknown; unknown

```console
$ docker pull mysql@sha256:d45a7b45b6517cfb0f68c958649e4a63344ec42b111affbb3e3d3ea1a4450629
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17451504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e9c9306bb030ca92183cac533c8d6b5bee52915196be1a72c2d3e06cd21e8ec`

```dockerfile
```

-	Layers:
	-	`sha256:2614b75d327a3e726d19cb86e7a57fbf58085188c0e4955bd960163b7816275a`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 17.4 MB (17415866 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:083b04283ce84ef68972ce949eb4e3acbe53e3b555a8d36057213d7eadb8f865`  
		Last Modified: Tue, 08 Sep 2026 19:11:18 GMT  
		Size: 35.6 KB (35638 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:innovation-oracle`

```console
$ docker pull mysql@sha256:4b40b165f348c3a1d959a222bd6c7773503f202554fd140db3de74ed9136b7b8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:innovation-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:0cf09253b84d0b32ec751c0342258e1efec1892443e5d0dd58239fb8b8eaa63e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.3 MB (272344574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:910ef46e093997328100b40b32fffe94ebca0b5ab1b1591e951d7b465e9b212e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 08 Sep 2026 18:58:50 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 08 Sep 2026 18:58:50 GMT
CMD ["/bin/bash"]
# Tue, 08 Sep 2026 19:12:37 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 08 Sep 2026 19:12:39 GMT
ENV GOSU_VERSION=1.19
# Tue, 08 Sep 2026 19:12:39 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 08 Sep 2026 19:13:07 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 08 Sep 2026 19:13:08 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 08 Sep 2026 19:13:08 GMT
ENV MYSQL_MAJOR=innovation
# Tue, 08 Sep 2026 19:13:08 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Tue, 08 Sep 2026 19:13:08 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 08 Sep 2026 19:13:39 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 08 Sep 2026 19:13:39 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 08 Sep 2026 19:13:39 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Tue, 08 Sep 2026 19:14:21 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 08 Sep 2026 19:14:21 GMT
VOLUME [/var/lib/mysql]
# Tue, 08 Sep 2026 19:14:21 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 08 Sep 2026 19:14:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 08 Sep 2026 19:14:21 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 08 Sep 2026 19:14:21 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:4bb6eac2f26a5221d1c656c424daeae066dc3efa0be69499880b834d8dbfbd84`  
		Last Modified: Tue, 08 Sep 2026 18:59:01 GMT  
		Size: 47.9 MB (47931580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc90eb5f505f7c2417eee66e3257d1016d164ea46585caa235979cdf9bd6ab73`  
		Last Modified: Tue, 08 Sep 2026 19:14:52 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a78411c2d8161f9b9429975810b3b5dff71cbd89a0148b66a3f8c536fee9315f`  
		Last Modified: Tue, 08 Sep 2026 19:14:53 GMT  
		Size: 783.6 KB (783558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19564ecb42922de74e35ba641d2fb08e184ebb18b3f09d0d4ee6f6712581727b`  
		Last Modified: Tue, 08 Sep 2026 19:14:53 GMT  
		Size: 6.2 MB (6193089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49dc6bddddc7cc625377d5df1245a5fb026beac5efdd63ef6e25b563ecca537c`  
		Last Modified: Tue, 08 Sep 2026 19:14:53 GMT  
		Size: 2.6 KB (2609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:430c7065f1d589bdb7da26b9859bc9f20e8b56d6303c2cffc7f3a849b54983f6`  
		Last Modified: Tue, 08 Sep 2026 19:14:53 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d12dddcbdc10c994559080258cda9fdf8511ffec919b220a646556a4a849072`  
		Last Modified: Tue, 08 Sep 2026 19:14:56 GMT  
		Size: 57.5 MB (57454018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa5b47801f3bb551f892160e0b69175df8fcbea4b8f128c712a934726190785d`  
		Last Modified: Tue, 08 Sep 2026 19:14:54 GMT  
		Size: 326.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:827e6b736dd9d450892a30eb5a95c0c4cb45fbdf8ea237df78102751abfef628`  
		Last Modified: Tue, 08 Sep 2026 19:14:58 GMT  
		Size: 160.0 MB (159972946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d1d44554de144e8cd989547b5a2dfb36e97e37eb00032e7be62888bca76d5c1`  
		Last Modified: Tue, 08 Sep 2026 19:14:55 GMT  
		Size: 5.2 KB (5224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:innovation-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:a75775650173f13500d672d4d073b08ae8d20d46991136715abf3870682f3c86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17452691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c89132a00811bf83d2cc588fe9c2898f0cca20c6922a692c0e21e50a8e2335f`

```dockerfile
```

-	Layers:
	-	`sha256:f808f33758cbaa0098097db77726ff7cd992a39cf7a95d8bfde42c5be3cebf3a`  
		Last Modified: Tue, 08 Sep 2026 19:14:53 GMT  
		Size: 17.4 MB (17417393 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7518911e256d5236a3275979046f1ad3094b3027975d3c3ace300949aa89eb19`  
		Last Modified: Tue, 08 Sep 2026 19:14:52 GMT  
		Size: 35.3 KB (35298 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:innovation-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:f7b3452e2f5ee773e9fd4f9988e7ea807d879acd3b52961607924dd17b07d9ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.7 MB (268716373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7962d59d8b8dc9cf17078c2286222195108936478af77248ad804a60e845f632`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 08 Sep 2026 18:57:57 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 08 Sep 2026 18:57:57 GMT
CMD ["/bin/bash"]
# Tue, 08 Sep 2026 19:08:29 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 08 Sep 2026 19:08:31 GMT
ENV GOSU_VERSION=1.19
# Tue, 08 Sep 2026 19:08:31 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 08 Sep 2026 19:09:08 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 08 Sep 2026 19:09:09 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 08 Sep 2026 19:09:09 GMT
ENV MYSQL_MAJOR=innovation
# Tue, 08 Sep 2026 19:09:09 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Tue, 08 Sep 2026 19:09:09 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 08 Sep 2026 19:09:50 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 08 Sep 2026 19:09:50 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 08 Sep 2026 19:09:50 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Tue, 08 Sep 2026 19:10:42 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 08 Sep 2026 19:10:42 GMT
VOLUME [/var/lib/mysql]
# Tue, 08 Sep 2026 19:10:42 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 08 Sep 2026 19:10:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 08 Sep 2026 19:10:42 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 08 Sep 2026 19:10:42 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:43c5deee1c317416925b86b1f2e78b730d2819023376f79b4de9f871323951a3`  
		Last Modified: Tue, 08 Sep 2026 18:58:08 GMT  
		Size: 46.5 MB (46477029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb980a8434e3c4600e45827e85201dcb117fa105cc497695640216f831384390`  
		Last Modified: Tue, 08 Sep 2026 19:11:18 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19c8bf571c7b733ea038259eac861768ae839db6d07c3188d54dc617943033e2`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 737.5 KB (737526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a017510daff3c2f3381e365accaa66eab52f251dc93a013cff3ddc4062c62bfe`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 5.8 MB (5815802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2f8471efd5dddf293b43b461dbe2e803948535cfa581fd02300a0764d47d7a6`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:101bfb51b57e17c638fb10e44f924f41eb5404b23677c7a9acca93868921e848`  
		Last Modified: Tue, 08 Sep 2026 19:11:20 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b549fe7114eb3dfbf6c84556f2f6e3408fc18ae4e25670891a404a451a31b0af`  
		Last Modified: Tue, 08 Sep 2026 19:11:22 GMT  
		Size: 57.4 MB (57434910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98cbda40669b120f5206b5bea13286fc329791c1646806a2dddd84cc214f3819`  
		Last Modified: Tue, 08 Sep 2026 19:11:20 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf3502e763277be8a4dada567b8594b93828c204a5f6749c1b094d09e2faad5c`  
		Last Modified: Tue, 08 Sep 2026 19:11:24 GMT  
		Size: 158.2 MB (158241725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:646bd661ef31ead80e724c18cefe7a9571656c1c72aeb850d1af8f074e002ced`  
		Last Modified: Tue, 08 Sep 2026 19:11:21 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:innovation-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:d45a7b45b6517cfb0f68c958649e4a63344ec42b111affbb3e3d3ea1a4450629
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17451504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e9c9306bb030ca92183cac533c8d6b5bee52915196be1a72c2d3e06cd21e8ec`

```dockerfile
```

-	Layers:
	-	`sha256:2614b75d327a3e726d19cb86e7a57fbf58085188c0e4955bd960163b7816275a`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 17.4 MB (17415866 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:083b04283ce84ef68972ce949eb4e3acbe53e3b555a8d36057213d7eadb8f865`  
		Last Modified: Tue, 08 Sep 2026 19:11:18 GMT  
		Size: 35.6 KB (35638 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:innovation-oraclelinux9`

```console
$ docker pull mysql@sha256:4b40b165f348c3a1d959a222bd6c7773503f202554fd140db3de74ed9136b7b8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:innovation-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:0cf09253b84d0b32ec751c0342258e1efec1892443e5d0dd58239fb8b8eaa63e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.3 MB (272344574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:910ef46e093997328100b40b32fffe94ebca0b5ab1b1591e951d7b465e9b212e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 08 Sep 2026 18:58:50 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 08 Sep 2026 18:58:50 GMT
CMD ["/bin/bash"]
# Tue, 08 Sep 2026 19:12:37 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 08 Sep 2026 19:12:39 GMT
ENV GOSU_VERSION=1.19
# Tue, 08 Sep 2026 19:12:39 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 08 Sep 2026 19:13:07 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 08 Sep 2026 19:13:08 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 08 Sep 2026 19:13:08 GMT
ENV MYSQL_MAJOR=innovation
# Tue, 08 Sep 2026 19:13:08 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Tue, 08 Sep 2026 19:13:08 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 08 Sep 2026 19:13:39 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 08 Sep 2026 19:13:39 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 08 Sep 2026 19:13:39 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Tue, 08 Sep 2026 19:14:21 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 08 Sep 2026 19:14:21 GMT
VOLUME [/var/lib/mysql]
# Tue, 08 Sep 2026 19:14:21 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 08 Sep 2026 19:14:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 08 Sep 2026 19:14:21 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 08 Sep 2026 19:14:21 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:4bb6eac2f26a5221d1c656c424daeae066dc3efa0be69499880b834d8dbfbd84`  
		Last Modified: Tue, 08 Sep 2026 18:59:01 GMT  
		Size: 47.9 MB (47931580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc90eb5f505f7c2417eee66e3257d1016d164ea46585caa235979cdf9bd6ab73`  
		Last Modified: Tue, 08 Sep 2026 19:14:52 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a78411c2d8161f9b9429975810b3b5dff71cbd89a0148b66a3f8c536fee9315f`  
		Last Modified: Tue, 08 Sep 2026 19:14:53 GMT  
		Size: 783.6 KB (783558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19564ecb42922de74e35ba641d2fb08e184ebb18b3f09d0d4ee6f6712581727b`  
		Last Modified: Tue, 08 Sep 2026 19:14:53 GMT  
		Size: 6.2 MB (6193089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49dc6bddddc7cc625377d5df1245a5fb026beac5efdd63ef6e25b563ecca537c`  
		Last Modified: Tue, 08 Sep 2026 19:14:53 GMT  
		Size: 2.6 KB (2609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:430c7065f1d589bdb7da26b9859bc9f20e8b56d6303c2cffc7f3a849b54983f6`  
		Last Modified: Tue, 08 Sep 2026 19:14:53 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d12dddcbdc10c994559080258cda9fdf8511ffec919b220a646556a4a849072`  
		Last Modified: Tue, 08 Sep 2026 19:14:56 GMT  
		Size: 57.5 MB (57454018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa5b47801f3bb551f892160e0b69175df8fcbea4b8f128c712a934726190785d`  
		Last Modified: Tue, 08 Sep 2026 19:14:54 GMT  
		Size: 326.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:827e6b736dd9d450892a30eb5a95c0c4cb45fbdf8ea237df78102751abfef628`  
		Last Modified: Tue, 08 Sep 2026 19:14:58 GMT  
		Size: 160.0 MB (159972946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d1d44554de144e8cd989547b5a2dfb36e97e37eb00032e7be62888bca76d5c1`  
		Last Modified: Tue, 08 Sep 2026 19:14:55 GMT  
		Size: 5.2 KB (5224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:innovation-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:a75775650173f13500d672d4d073b08ae8d20d46991136715abf3870682f3c86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17452691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c89132a00811bf83d2cc588fe9c2898f0cca20c6922a692c0e21e50a8e2335f`

```dockerfile
```

-	Layers:
	-	`sha256:f808f33758cbaa0098097db77726ff7cd992a39cf7a95d8bfde42c5be3cebf3a`  
		Last Modified: Tue, 08 Sep 2026 19:14:53 GMT  
		Size: 17.4 MB (17417393 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7518911e256d5236a3275979046f1ad3094b3027975d3c3ace300949aa89eb19`  
		Last Modified: Tue, 08 Sep 2026 19:14:52 GMT  
		Size: 35.3 KB (35298 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:innovation-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:f7b3452e2f5ee773e9fd4f9988e7ea807d879acd3b52961607924dd17b07d9ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.7 MB (268716373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7962d59d8b8dc9cf17078c2286222195108936478af77248ad804a60e845f632`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 08 Sep 2026 18:57:57 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 08 Sep 2026 18:57:57 GMT
CMD ["/bin/bash"]
# Tue, 08 Sep 2026 19:08:29 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 08 Sep 2026 19:08:31 GMT
ENV GOSU_VERSION=1.19
# Tue, 08 Sep 2026 19:08:31 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 08 Sep 2026 19:09:08 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 08 Sep 2026 19:09:09 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 08 Sep 2026 19:09:09 GMT
ENV MYSQL_MAJOR=innovation
# Tue, 08 Sep 2026 19:09:09 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Tue, 08 Sep 2026 19:09:09 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 08 Sep 2026 19:09:50 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 08 Sep 2026 19:09:50 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 08 Sep 2026 19:09:50 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Tue, 08 Sep 2026 19:10:42 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 08 Sep 2026 19:10:42 GMT
VOLUME [/var/lib/mysql]
# Tue, 08 Sep 2026 19:10:42 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 08 Sep 2026 19:10:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 08 Sep 2026 19:10:42 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 08 Sep 2026 19:10:42 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:43c5deee1c317416925b86b1f2e78b730d2819023376f79b4de9f871323951a3`  
		Last Modified: Tue, 08 Sep 2026 18:58:08 GMT  
		Size: 46.5 MB (46477029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb980a8434e3c4600e45827e85201dcb117fa105cc497695640216f831384390`  
		Last Modified: Tue, 08 Sep 2026 19:11:18 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19c8bf571c7b733ea038259eac861768ae839db6d07c3188d54dc617943033e2`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 737.5 KB (737526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a017510daff3c2f3381e365accaa66eab52f251dc93a013cff3ddc4062c62bfe`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 5.8 MB (5815802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2f8471efd5dddf293b43b461dbe2e803948535cfa581fd02300a0764d47d7a6`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:101bfb51b57e17c638fb10e44f924f41eb5404b23677c7a9acca93868921e848`  
		Last Modified: Tue, 08 Sep 2026 19:11:20 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b549fe7114eb3dfbf6c84556f2f6e3408fc18ae4e25670891a404a451a31b0af`  
		Last Modified: Tue, 08 Sep 2026 19:11:22 GMT  
		Size: 57.4 MB (57434910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98cbda40669b120f5206b5bea13286fc329791c1646806a2dddd84cc214f3819`  
		Last Modified: Tue, 08 Sep 2026 19:11:20 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf3502e763277be8a4dada567b8594b93828c204a5f6749c1b094d09e2faad5c`  
		Last Modified: Tue, 08 Sep 2026 19:11:24 GMT  
		Size: 158.2 MB (158241725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:646bd661ef31ead80e724c18cefe7a9571656c1c72aeb850d1af8f074e002ced`  
		Last Modified: Tue, 08 Sep 2026 19:11:21 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:innovation-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:d45a7b45b6517cfb0f68c958649e4a63344ec42b111affbb3e3d3ea1a4450629
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17451504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e9c9306bb030ca92183cac533c8d6b5bee52915196be1a72c2d3e06cd21e8ec`

```dockerfile
```

-	Layers:
	-	`sha256:2614b75d327a3e726d19cb86e7a57fbf58085188c0e4955bd960163b7816275a`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 17.4 MB (17415866 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:083b04283ce84ef68972ce949eb4e3acbe53e3b555a8d36057213d7eadb8f865`  
		Last Modified: Tue, 08 Sep 2026 19:11:18 GMT  
		Size: 35.6 KB (35638 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:latest`

```console
$ docker pull mysql@sha256:4b40b165f348c3a1d959a222bd6c7773503f202554fd140db3de74ed9136b7b8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:latest` - linux; amd64

```console
$ docker pull mysql@sha256:0cf09253b84d0b32ec751c0342258e1efec1892443e5d0dd58239fb8b8eaa63e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.3 MB (272344574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:910ef46e093997328100b40b32fffe94ebca0b5ab1b1591e951d7b465e9b212e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 08 Sep 2026 18:58:50 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 08 Sep 2026 18:58:50 GMT
CMD ["/bin/bash"]
# Tue, 08 Sep 2026 19:12:37 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 08 Sep 2026 19:12:39 GMT
ENV GOSU_VERSION=1.19
# Tue, 08 Sep 2026 19:12:39 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 08 Sep 2026 19:13:07 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 08 Sep 2026 19:13:08 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 08 Sep 2026 19:13:08 GMT
ENV MYSQL_MAJOR=innovation
# Tue, 08 Sep 2026 19:13:08 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Tue, 08 Sep 2026 19:13:08 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 08 Sep 2026 19:13:39 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 08 Sep 2026 19:13:39 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 08 Sep 2026 19:13:39 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Tue, 08 Sep 2026 19:14:21 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 08 Sep 2026 19:14:21 GMT
VOLUME [/var/lib/mysql]
# Tue, 08 Sep 2026 19:14:21 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 08 Sep 2026 19:14:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 08 Sep 2026 19:14:21 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 08 Sep 2026 19:14:21 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:4bb6eac2f26a5221d1c656c424daeae066dc3efa0be69499880b834d8dbfbd84`  
		Last Modified: Tue, 08 Sep 2026 18:59:01 GMT  
		Size: 47.9 MB (47931580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc90eb5f505f7c2417eee66e3257d1016d164ea46585caa235979cdf9bd6ab73`  
		Last Modified: Tue, 08 Sep 2026 19:14:52 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a78411c2d8161f9b9429975810b3b5dff71cbd89a0148b66a3f8c536fee9315f`  
		Last Modified: Tue, 08 Sep 2026 19:14:53 GMT  
		Size: 783.6 KB (783558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19564ecb42922de74e35ba641d2fb08e184ebb18b3f09d0d4ee6f6712581727b`  
		Last Modified: Tue, 08 Sep 2026 19:14:53 GMT  
		Size: 6.2 MB (6193089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49dc6bddddc7cc625377d5df1245a5fb026beac5efdd63ef6e25b563ecca537c`  
		Last Modified: Tue, 08 Sep 2026 19:14:53 GMT  
		Size: 2.6 KB (2609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:430c7065f1d589bdb7da26b9859bc9f20e8b56d6303c2cffc7f3a849b54983f6`  
		Last Modified: Tue, 08 Sep 2026 19:14:53 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d12dddcbdc10c994559080258cda9fdf8511ffec919b220a646556a4a849072`  
		Last Modified: Tue, 08 Sep 2026 19:14:56 GMT  
		Size: 57.5 MB (57454018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa5b47801f3bb551f892160e0b69175df8fcbea4b8f128c712a934726190785d`  
		Last Modified: Tue, 08 Sep 2026 19:14:54 GMT  
		Size: 326.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:827e6b736dd9d450892a30eb5a95c0c4cb45fbdf8ea237df78102751abfef628`  
		Last Modified: Tue, 08 Sep 2026 19:14:58 GMT  
		Size: 160.0 MB (159972946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d1d44554de144e8cd989547b5a2dfb36e97e37eb00032e7be62888bca76d5c1`  
		Last Modified: Tue, 08 Sep 2026 19:14:55 GMT  
		Size: 5.2 KB (5224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:latest` - unknown; unknown

```console
$ docker pull mysql@sha256:a75775650173f13500d672d4d073b08ae8d20d46991136715abf3870682f3c86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17452691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c89132a00811bf83d2cc588fe9c2898f0cca20c6922a692c0e21e50a8e2335f`

```dockerfile
```

-	Layers:
	-	`sha256:f808f33758cbaa0098097db77726ff7cd992a39cf7a95d8bfde42c5be3cebf3a`  
		Last Modified: Tue, 08 Sep 2026 19:14:53 GMT  
		Size: 17.4 MB (17417393 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7518911e256d5236a3275979046f1ad3094b3027975d3c3ace300949aa89eb19`  
		Last Modified: Tue, 08 Sep 2026 19:14:52 GMT  
		Size: 35.3 KB (35298 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:latest` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:f7b3452e2f5ee773e9fd4f9988e7ea807d879acd3b52961607924dd17b07d9ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.7 MB (268716373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7962d59d8b8dc9cf17078c2286222195108936478af77248ad804a60e845f632`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 08 Sep 2026 18:57:57 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 08 Sep 2026 18:57:57 GMT
CMD ["/bin/bash"]
# Tue, 08 Sep 2026 19:08:29 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 08 Sep 2026 19:08:31 GMT
ENV GOSU_VERSION=1.19
# Tue, 08 Sep 2026 19:08:31 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 08 Sep 2026 19:09:08 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 08 Sep 2026 19:09:09 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 08 Sep 2026 19:09:09 GMT
ENV MYSQL_MAJOR=innovation
# Tue, 08 Sep 2026 19:09:09 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Tue, 08 Sep 2026 19:09:09 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 08 Sep 2026 19:09:50 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 08 Sep 2026 19:09:50 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 08 Sep 2026 19:09:50 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Tue, 08 Sep 2026 19:10:42 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 08 Sep 2026 19:10:42 GMT
VOLUME [/var/lib/mysql]
# Tue, 08 Sep 2026 19:10:42 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 08 Sep 2026 19:10:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 08 Sep 2026 19:10:42 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 08 Sep 2026 19:10:42 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:43c5deee1c317416925b86b1f2e78b730d2819023376f79b4de9f871323951a3`  
		Last Modified: Tue, 08 Sep 2026 18:58:08 GMT  
		Size: 46.5 MB (46477029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb980a8434e3c4600e45827e85201dcb117fa105cc497695640216f831384390`  
		Last Modified: Tue, 08 Sep 2026 19:11:18 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19c8bf571c7b733ea038259eac861768ae839db6d07c3188d54dc617943033e2`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 737.5 KB (737526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a017510daff3c2f3381e365accaa66eab52f251dc93a013cff3ddc4062c62bfe`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 5.8 MB (5815802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2f8471efd5dddf293b43b461dbe2e803948535cfa581fd02300a0764d47d7a6`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:101bfb51b57e17c638fb10e44f924f41eb5404b23677c7a9acca93868921e848`  
		Last Modified: Tue, 08 Sep 2026 19:11:20 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b549fe7114eb3dfbf6c84556f2f6e3408fc18ae4e25670891a404a451a31b0af`  
		Last Modified: Tue, 08 Sep 2026 19:11:22 GMT  
		Size: 57.4 MB (57434910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98cbda40669b120f5206b5bea13286fc329791c1646806a2dddd84cc214f3819`  
		Last Modified: Tue, 08 Sep 2026 19:11:20 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf3502e763277be8a4dada567b8594b93828c204a5f6749c1b094d09e2faad5c`  
		Last Modified: Tue, 08 Sep 2026 19:11:24 GMT  
		Size: 158.2 MB (158241725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:646bd661ef31ead80e724c18cefe7a9571656c1c72aeb850d1af8f074e002ced`  
		Last Modified: Tue, 08 Sep 2026 19:11:21 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:latest` - unknown; unknown

```console
$ docker pull mysql@sha256:d45a7b45b6517cfb0f68c958649e4a63344ec42b111affbb3e3d3ea1a4450629
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17451504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e9c9306bb030ca92183cac533c8d6b5bee52915196be1a72c2d3e06cd21e8ec`

```dockerfile
```

-	Layers:
	-	`sha256:2614b75d327a3e726d19cb86e7a57fbf58085188c0e4955bd960163b7816275a`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 17.4 MB (17415866 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:083b04283ce84ef68972ce949eb4e3acbe53e3b555a8d36057213d7eadb8f865`  
		Last Modified: Tue, 08 Sep 2026 19:11:18 GMT  
		Size: 35.6 KB (35638 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:lts`

```console
$ docker pull mysql@sha256:b2cf29815e62fea06b7de22b8b8e57dfe0eb32706e38ce951930bde6faef4ab6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:lts` - linux; amd64

```console
$ docker pull mysql@sha256:d59aeb6202bb716f7d8c1f6ae303b919620c381e9884811b54cbcd04c5cc968f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.9 MB (270901267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d88fb618495c6f38c3424c54422cd3b3f5a33e9995488119d3540fd4e59f672f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 08 Sep 2026 18:58:50 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 08 Sep 2026 18:58:50 GMT
CMD ["/bin/bash"]
# Tue, 08 Sep 2026 19:15:07 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 08 Sep 2026 19:15:08 GMT
ENV GOSU_VERSION=1.19
# Tue, 08 Sep 2026 19:15:08 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 08 Sep 2026 19:15:40 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 08 Sep 2026 19:15:41 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 08 Sep 2026 19:15:41 GMT
ENV MYSQL_MAJOR=9.7
# Tue, 08 Sep 2026 19:15:41 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Tue, 08 Sep 2026 19:15:41 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 08 Sep 2026 19:16:55 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 08 Sep 2026 19:16:55 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 08 Sep 2026 19:16:55 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Tue, 08 Sep 2026 19:17:39 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 08 Sep 2026 19:17:39 GMT
VOLUME [/var/lib/mysql]
# Tue, 08 Sep 2026 19:17:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 08 Sep 2026 19:17:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 08 Sep 2026 19:17:39 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 08 Sep 2026 19:17:39 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:4bb6eac2f26a5221d1c656c424daeae066dc3efa0be69499880b834d8dbfbd84`  
		Last Modified: Tue, 08 Sep 2026 18:59:01 GMT  
		Size: 47.9 MB (47931580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7a3710e7618e9c34a79ec2d437c3838d99cda89549ac2ced46b027ab2e450f3`  
		Last Modified: Tue, 08 Sep 2026 19:18:14 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fe59e71d00f66e2cd63c4189632d4795b6d3a78abeb01f20874a50e68685482`  
		Last Modified: Tue, 08 Sep 2026 19:18:14 GMT  
		Size: 783.6 KB (783558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d289089f4187400a836c07e7efdf670adeec0c535006e94845063b5457f568b`  
		Last Modified: Tue, 08 Sep 2026 19:18:15 GMT  
		Size: 6.2 MB (6193124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fef7d3e3716f4998ec10e6fb9fa9fd188ca9b5b504f526fe37cc3c7ec15bca6`  
		Last Modified: Tue, 08 Sep 2026 19:18:14 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0af017e7e105c4e37c8a60f06782bb76841ac8e4e72f940584098c56ad6d8239`  
		Last Modified: Tue, 08 Sep 2026 19:18:15 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31cf237a9753d5cef6dcd5770fd88f91b165540ab18b14d3af9f8651e777b89b`  
		Last Modified: Tue, 08 Sep 2026 19:18:17 GMT  
		Size: 57.1 MB (57050670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9805aa3949997a8daefc83ad8a938205a4b07a36a5e558bfb3bcc9a4468fbe9`  
		Last Modified: Tue, 08 Sep 2026 19:18:16 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2d5a9de52e1c92b5c214eb3d31afc3eea84709bf8932b60aa11c461b98462ec`  
		Last Modified: Tue, 08 Sep 2026 19:18:20 GMT  
		Size: 158.9 MB (158932967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4ddd5d91160bac0f41caaa883c3eebcdeea7761c29a87b6d5c64eb8c970050a`  
		Last Modified: Tue, 08 Sep 2026 19:18:17 GMT  
		Size: 5.2 KB (5223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:lts` - unknown; unknown

```console
$ docker pull mysql@sha256:10c43bc445d6f65192b79fa639ebebd869f946e6dffdbd5e35d6fb98326f1ea1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:545b43d642e0ad4e1a312df9427c56ec09bf261eacbb9fd200f570168d2ef25f`

```dockerfile
```

-	Layers:
	-	`sha256:40cc0eca5dac2a83d515d0cc28a96b7a76cdc7f8fe934d54aee3ae24e5eac986`  
		Last Modified: Tue, 08 Sep 2026 19:18:15 GMT  
		Size: 16.8 MB (16799169 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9bdd13d74dae084d559eaaee971f80a941233b9d97c905edf6d4080b342fc977`  
		Last Modified: Tue, 08 Sep 2026 19:18:14 GMT  
		Size: 34.2 KB (34208 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:lts` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:2ed51e4ca654f598ff4bd15dd40e7b4359521fbc2d42cefaf49675fdc767126c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.4 MB (267372736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:917fde9264e50622eebf261bbaef1d1974d265e8be7d7ffdaceeab45c854813d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 08 Sep 2026 18:57:57 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 08 Sep 2026 18:57:57 GMT
CMD ["/bin/bash"]
# Tue, 08 Sep 2026 19:08:29 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 08 Sep 2026 19:08:31 GMT
ENV GOSU_VERSION=1.19
# Tue, 08 Sep 2026 19:08:31 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 08 Sep 2026 19:09:08 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 08 Sep 2026 19:09:09 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 08 Sep 2026 19:09:09 GMT
ENV MYSQL_MAJOR=9.7
# Tue, 08 Sep 2026 19:09:09 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Tue, 08 Sep 2026 19:11:31 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 08 Sep 2026 19:12:11 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 08 Sep 2026 19:12:11 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 08 Sep 2026 19:12:11 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Tue, 08 Sep 2026 19:13:03 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 08 Sep 2026 19:13:03 GMT
VOLUME [/var/lib/mysql]
# Tue, 08 Sep 2026 19:13:03 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 08 Sep 2026 19:13:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 08 Sep 2026 19:13:03 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 08 Sep 2026 19:13:03 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:43c5deee1c317416925b86b1f2e78b730d2819023376f79b4de9f871323951a3`  
		Last Modified: Tue, 08 Sep 2026 18:58:08 GMT  
		Size: 46.5 MB (46477029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb980a8434e3c4600e45827e85201dcb117fa105cc497695640216f831384390`  
		Last Modified: Tue, 08 Sep 2026 19:11:18 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19c8bf571c7b733ea038259eac861768ae839db6d07c3188d54dc617943033e2`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 737.5 KB (737526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a017510daff3c2f3381e365accaa66eab52f251dc93a013cff3ddc4062c62bfe`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 5.8 MB (5815802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2f8471efd5dddf293b43b461dbe2e803948535cfa581fd02300a0764d47d7a6`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7cf0fff5f4d8fe7ff19dcf52a3ebaa82ef1043c70a60d90991b1863f0eb640f`  
		Last Modified: Tue, 08 Sep 2026 19:13:38 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a187fc7343f94d7289f30f3c3fb12a19bd2fe6603aa2136e0386c7dd77524f1`  
		Last Modified: Tue, 08 Sep 2026 19:13:42 GMT  
		Size: 57.1 MB (57119326 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e27c35bc2cc95d5c2f074f10ad860da16501387a12719faa8958e586d463b91`  
		Last Modified: Tue, 08 Sep 2026 19:13:38 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fba08b51ddce5351fb3aa965afa74ba724bf9c685562d5ecbcbc527340baf3d6`  
		Last Modified: Tue, 08 Sep 2026 19:13:45 GMT  
		Size: 157.2 MB (157213679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eefae916eadabf60bfdf6fece79b60e224d6718ba147d6fb6951e7be7e90a63e`  
		Last Modified: Tue, 08 Sep 2026 19:13:40 GMT  
		Size: 5.2 KB (5228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:lts` - unknown; unknown

```console
$ docker pull mysql@sha256:7d83a256aaa633159f300654d8b22bd4bbb31e2ab65131bb97a6b32123072756
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16832118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:359665040e42a2a679975bfa8378b5aa48a993c31d7c805d286621743df8602e`

```dockerfile
```

-	Layers:
	-	`sha256:05da1d70ad47f0a4fb7e57fa8d4f77a59ade060507122f9e925b3f25aff303a5`  
		Last Modified: Tue, 08 Sep 2026 19:13:39 GMT  
		Size: 16.8 MB (16797605 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:328975a151db42b078ef7787f6ecc7bc960e1f2fa0508b80ca6ec9263d09d13b`  
		Last Modified: Tue, 08 Sep 2026 19:13:38 GMT  
		Size: 34.5 KB (34513 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:lts-oracle`

```console
$ docker pull mysql@sha256:b2cf29815e62fea06b7de22b8b8e57dfe0eb32706e38ce951930bde6faef4ab6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:lts-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:d59aeb6202bb716f7d8c1f6ae303b919620c381e9884811b54cbcd04c5cc968f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.9 MB (270901267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d88fb618495c6f38c3424c54422cd3b3f5a33e9995488119d3540fd4e59f672f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 08 Sep 2026 18:58:50 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 08 Sep 2026 18:58:50 GMT
CMD ["/bin/bash"]
# Tue, 08 Sep 2026 19:15:07 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 08 Sep 2026 19:15:08 GMT
ENV GOSU_VERSION=1.19
# Tue, 08 Sep 2026 19:15:08 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 08 Sep 2026 19:15:40 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 08 Sep 2026 19:15:41 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 08 Sep 2026 19:15:41 GMT
ENV MYSQL_MAJOR=9.7
# Tue, 08 Sep 2026 19:15:41 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Tue, 08 Sep 2026 19:15:41 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 08 Sep 2026 19:16:55 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 08 Sep 2026 19:16:55 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 08 Sep 2026 19:16:55 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Tue, 08 Sep 2026 19:17:39 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 08 Sep 2026 19:17:39 GMT
VOLUME [/var/lib/mysql]
# Tue, 08 Sep 2026 19:17:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 08 Sep 2026 19:17:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 08 Sep 2026 19:17:39 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 08 Sep 2026 19:17:39 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:4bb6eac2f26a5221d1c656c424daeae066dc3efa0be69499880b834d8dbfbd84`  
		Last Modified: Tue, 08 Sep 2026 18:59:01 GMT  
		Size: 47.9 MB (47931580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7a3710e7618e9c34a79ec2d437c3838d99cda89549ac2ced46b027ab2e450f3`  
		Last Modified: Tue, 08 Sep 2026 19:18:14 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fe59e71d00f66e2cd63c4189632d4795b6d3a78abeb01f20874a50e68685482`  
		Last Modified: Tue, 08 Sep 2026 19:18:14 GMT  
		Size: 783.6 KB (783558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d289089f4187400a836c07e7efdf670adeec0c535006e94845063b5457f568b`  
		Last Modified: Tue, 08 Sep 2026 19:18:15 GMT  
		Size: 6.2 MB (6193124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fef7d3e3716f4998ec10e6fb9fa9fd188ca9b5b504f526fe37cc3c7ec15bca6`  
		Last Modified: Tue, 08 Sep 2026 19:18:14 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0af017e7e105c4e37c8a60f06782bb76841ac8e4e72f940584098c56ad6d8239`  
		Last Modified: Tue, 08 Sep 2026 19:18:15 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31cf237a9753d5cef6dcd5770fd88f91b165540ab18b14d3af9f8651e777b89b`  
		Last Modified: Tue, 08 Sep 2026 19:18:17 GMT  
		Size: 57.1 MB (57050670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9805aa3949997a8daefc83ad8a938205a4b07a36a5e558bfb3bcc9a4468fbe9`  
		Last Modified: Tue, 08 Sep 2026 19:18:16 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2d5a9de52e1c92b5c214eb3d31afc3eea84709bf8932b60aa11c461b98462ec`  
		Last Modified: Tue, 08 Sep 2026 19:18:20 GMT  
		Size: 158.9 MB (158932967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4ddd5d91160bac0f41caaa883c3eebcdeea7761c29a87b6d5c64eb8c970050a`  
		Last Modified: Tue, 08 Sep 2026 19:18:17 GMT  
		Size: 5.2 KB (5223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:lts-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:10c43bc445d6f65192b79fa639ebebd869f946e6dffdbd5e35d6fb98326f1ea1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:545b43d642e0ad4e1a312df9427c56ec09bf261eacbb9fd200f570168d2ef25f`

```dockerfile
```

-	Layers:
	-	`sha256:40cc0eca5dac2a83d515d0cc28a96b7a76cdc7f8fe934d54aee3ae24e5eac986`  
		Last Modified: Tue, 08 Sep 2026 19:18:15 GMT  
		Size: 16.8 MB (16799169 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9bdd13d74dae084d559eaaee971f80a941233b9d97c905edf6d4080b342fc977`  
		Last Modified: Tue, 08 Sep 2026 19:18:14 GMT  
		Size: 34.2 KB (34208 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:lts-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:2ed51e4ca654f598ff4bd15dd40e7b4359521fbc2d42cefaf49675fdc767126c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.4 MB (267372736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:917fde9264e50622eebf261bbaef1d1974d265e8be7d7ffdaceeab45c854813d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 08 Sep 2026 18:57:57 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 08 Sep 2026 18:57:57 GMT
CMD ["/bin/bash"]
# Tue, 08 Sep 2026 19:08:29 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 08 Sep 2026 19:08:31 GMT
ENV GOSU_VERSION=1.19
# Tue, 08 Sep 2026 19:08:31 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 08 Sep 2026 19:09:08 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 08 Sep 2026 19:09:09 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 08 Sep 2026 19:09:09 GMT
ENV MYSQL_MAJOR=9.7
# Tue, 08 Sep 2026 19:09:09 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Tue, 08 Sep 2026 19:11:31 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 08 Sep 2026 19:12:11 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 08 Sep 2026 19:12:11 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 08 Sep 2026 19:12:11 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Tue, 08 Sep 2026 19:13:03 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 08 Sep 2026 19:13:03 GMT
VOLUME [/var/lib/mysql]
# Tue, 08 Sep 2026 19:13:03 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 08 Sep 2026 19:13:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 08 Sep 2026 19:13:03 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 08 Sep 2026 19:13:03 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:43c5deee1c317416925b86b1f2e78b730d2819023376f79b4de9f871323951a3`  
		Last Modified: Tue, 08 Sep 2026 18:58:08 GMT  
		Size: 46.5 MB (46477029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb980a8434e3c4600e45827e85201dcb117fa105cc497695640216f831384390`  
		Last Modified: Tue, 08 Sep 2026 19:11:18 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19c8bf571c7b733ea038259eac861768ae839db6d07c3188d54dc617943033e2`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 737.5 KB (737526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a017510daff3c2f3381e365accaa66eab52f251dc93a013cff3ddc4062c62bfe`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 5.8 MB (5815802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2f8471efd5dddf293b43b461dbe2e803948535cfa581fd02300a0764d47d7a6`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7cf0fff5f4d8fe7ff19dcf52a3ebaa82ef1043c70a60d90991b1863f0eb640f`  
		Last Modified: Tue, 08 Sep 2026 19:13:38 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a187fc7343f94d7289f30f3c3fb12a19bd2fe6603aa2136e0386c7dd77524f1`  
		Last Modified: Tue, 08 Sep 2026 19:13:42 GMT  
		Size: 57.1 MB (57119326 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e27c35bc2cc95d5c2f074f10ad860da16501387a12719faa8958e586d463b91`  
		Last Modified: Tue, 08 Sep 2026 19:13:38 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fba08b51ddce5351fb3aa965afa74ba724bf9c685562d5ecbcbc527340baf3d6`  
		Last Modified: Tue, 08 Sep 2026 19:13:45 GMT  
		Size: 157.2 MB (157213679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eefae916eadabf60bfdf6fece79b60e224d6718ba147d6fb6951e7be7e90a63e`  
		Last Modified: Tue, 08 Sep 2026 19:13:40 GMT  
		Size: 5.2 KB (5228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:lts-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:7d83a256aaa633159f300654d8b22bd4bbb31e2ab65131bb97a6b32123072756
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16832118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:359665040e42a2a679975bfa8378b5aa48a993c31d7c805d286621743df8602e`

```dockerfile
```

-	Layers:
	-	`sha256:05da1d70ad47f0a4fb7e57fa8d4f77a59ade060507122f9e925b3f25aff303a5`  
		Last Modified: Tue, 08 Sep 2026 19:13:39 GMT  
		Size: 16.8 MB (16797605 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:328975a151db42b078ef7787f6ecc7bc960e1f2fa0508b80ca6ec9263d09d13b`  
		Last Modified: Tue, 08 Sep 2026 19:13:38 GMT  
		Size: 34.5 KB (34513 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:lts-oraclelinux9`

```console
$ docker pull mysql@sha256:b2cf29815e62fea06b7de22b8b8e57dfe0eb32706e38ce951930bde6faef4ab6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:lts-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:d59aeb6202bb716f7d8c1f6ae303b919620c381e9884811b54cbcd04c5cc968f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.9 MB (270901267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d88fb618495c6f38c3424c54422cd3b3f5a33e9995488119d3540fd4e59f672f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 08 Sep 2026 18:58:50 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 08 Sep 2026 18:58:50 GMT
CMD ["/bin/bash"]
# Tue, 08 Sep 2026 19:15:07 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 08 Sep 2026 19:15:08 GMT
ENV GOSU_VERSION=1.19
# Tue, 08 Sep 2026 19:15:08 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 08 Sep 2026 19:15:40 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 08 Sep 2026 19:15:41 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 08 Sep 2026 19:15:41 GMT
ENV MYSQL_MAJOR=9.7
# Tue, 08 Sep 2026 19:15:41 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Tue, 08 Sep 2026 19:15:41 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 08 Sep 2026 19:16:55 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 08 Sep 2026 19:16:55 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 08 Sep 2026 19:16:55 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Tue, 08 Sep 2026 19:17:39 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 08 Sep 2026 19:17:39 GMT
VOLUME [/var/lib/mysql]
# Tue, 08 Sep 2026 19:17:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 08 Sep 2026 19:17:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 08 Sep 2026 19:17:39 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 08 Sep 2026 19:17:39 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:4bb6eac2f26a5221d1c656c424daeae066dc3efa0be69499880b834d8dbfbd84`  
		Last Modified: Tue, 08 Sep 2026 18:59:01 GMT  
		Size: 47.9 MB (47931580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7a3710e7618e9c34a79ec2d437c3838d99cda89549ac2ced46b027ab2e450f3`  
		Last Modified: Tue, 08 Sep 2026 19:18:14 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fe59e71d00f66e2cd63c4189632d4795b6d3a78abeb01f20874a50e68685482`  
		Last Modified: Tue, 08 Sep 2026 19:18:14 GMT  
		Size: 783.6 KB (783558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d289089f4187400a836c07e7efdf670adeec0c535006e94845063b5457f568b`  
		Last Modified: Tue, 08 Sep 2026 19:18:15 GMT  
		Size: 6.2 MB (6193124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fef7d3e3716f4998ec10e6fb9fa9fd188ca9b5b504f526fe37cc3c7ec15bca6`  
		Last Modified: Tue, 08 Sep 2026 19:18:14 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0af017e7e105c4e37c8a60f06782bb76841ac8e4e72f940584098c56ad6d8239`  
		Last Modified: Tue, 08 Sep 2026 19:18:15 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31cf237a9753d5cef6dcd5770fd88f91b165540ab18b14d3af9f8651e777b89b`  
		Last Modified: Tue, 08 Sep 2026 19:18:17 GMT  
		Size: 57.1 MB (57050670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9805aa3949997a8daefc83ad8a938205a4b07a36a5e558bfb3bcc9a4468fbe9`  
		Last Modified: Tue, 08 Sep 2026 19:18:16 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2d5a9de52e1c92b5c214eb3d31afc3eea84709bf8932b60aa11c461b98462ec`  
		Last Modified: Tue, 08 Sep 2026 19:18:20 GMT  
		Size: 158.9 MB (158932967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4ddd5d91160bac0f41caaa883c3eebcdeea7761c29a87b6d5c64eb8c970050a`  
		Last Modified: Tue, 08 Sep 2026 19:18:17 GMT  
		Size: 5.2 KB (5223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:lts-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:10c43bc445d6f65192b79fa639ebebd869f946e6dffdbd5e35d6fb98326f1ea1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:545b43d642e0ad4e1a312df9427c56ec09bf261eacbb9fd200f570168d2ef25f`

```dockerfile
```

-	Layers:
	-	`sha256:40cc0eca5dac2a83d515d0cc28a96b7a76cdc7f8fe934d54aee3ae24e5eac986`  
		Last Modified: Tue, 08 Sep 2026 19:18:15 GMT  
		Size: 16.8 MB (16799169 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9bdd13d74dae084d559eaaee971f80a941233b9d97c905edf6d4080b342fc977`  
		Last Modified: Tue, 08 Sep 2026 19:18:14 GMT  
		Size: 34.2 KB (34208 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:lts-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:2ed51e4ca654f598ff4bd15dd40e7b4359521fbc2d42cefaf49675fdc767126c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.4 MB (267372736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:917fde9264e50622eebf261bbaef1d1974d265e8be7d7ffdaceeab45c854813d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 08 Sep 2026 18:57:57 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 08 Sep 2026 18:57:57 GMT
CMD ["/bin/bash"]
# Tue, 08 Sep 2026 19:08:29 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 08 Sep 2026 19:08:31 GMT
ENV GOSU_VERSION=1.19
# Tue, 08 Sep 2026 19:08:31 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 08 Sep 2026 19:09:08 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 08 Sep 2026 19:09:09 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 08 Sep 2026 19:09:09 GMT
ENV MYSQL_MAJOR=9.7
# Tue, 08 Sep 2026 19:09:09 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Tue, 08 Sep 2026 19:11:31 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 08 Sep 2026 19:12:11 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 08 Sep 2026 19:12:11 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 08 Sep 2026 19:12:11 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Tue, 08 Sep 2026 19:13:03 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 08 Sep 2026 19:13:03 GMT
VOLUME [/var/lib/mysql]
# Tue, 08 Sep 2026 19:13:03 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 08 Sep 2026 19:13:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 08 Sep 2026 19:13:03 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 08 Sep 2026 19:13:03 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:43c5deee1c317416925b86b1f2e78b730d2819023376f79b4de9f871323951a3`  
		Last Modified: Tue, 08 Sep 2026 18:58:08 GMT  
		Size: 46.5 MB (46477029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb980a8434e3c4600e45827e85201dcb117fa105cc497695640216f831384390`  
		Last Modified: Tue, 08 Sep 2026 19:11:18 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19c8bf571c7b733ea038259eac861768ae839db6d07c3188d54dc617943033e2`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 737.5 KB (737526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a017510daff3c2f3381e365accaa66eab52f251dc93a013cff3ddc4062c62bfe`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 5.8 MB (5815802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2f8471efd5dddf293b43b461dbe2e803948535cfa581fd02300a0764d47d7a6`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7cf0fff5f4d8fe7ff19dcf52a3ebaa82ef1043c70a60d90991b1863f0eb640f`  
		Last Modified: Tue, 08 Sep 2026 19:13:38 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a187fc7343f94d7289f30f3c3fb12a19bd2fe6603aa2136e0386c7dd77524f1`  
		Last Modified: Tue, 08 Sep 2026 19:13:42 GMT  
		Size: 57.1 MB (57119326 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e27c35bc2cc95d5c2f074f10ad860da16501387a12719faa8958e586d463b91`  
		Last Modified: Tue, 08 Sep 2026 19:13:38 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fba08b51ddce5351fb3aa965afa74ba724bf9c685562d5ecbcbc527340baf3d6`  
		Last Modified: Tue, 08 Sep 2026 19:13:45 GMT  
		Size: 157.2 MB (157213679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eefae916eadabf60bfdf6fece79b60e224d6718ba147d6fb6951e7be7e90a63e`  
		Last Modified: Tue, 08 Sep 2026 19:13:40 GMT  
		Size: 5.2 KB (5228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:lts-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:7d83a256aaa633159f300654d8b22bd4bbb31e2ab65131bb97a6b32123072756
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16832118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:359665040e42a2a679975bfa8378b5aa48a993c31d7c805d286621743df8602e`

```dockerfile
```

-	Layers:
	-	`sha256:05da1d70ad47f0a4fb7e57fa8d4f77a59ade060507122f9e925b3f25aff303a5`  
		Last Modified: Tue, 08 Sep 2026 19:13:39 GMT  
		Size: 16.8 MB (16797605 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:328975a151db42b078ef7787f6ecc7bc960e1f2fa0508b80ca6ec9263d09d13b`  
		Last Modified: Tue, 08 Sep 2026 19:13:38 GMT  
		Size: 34.5 KB (34513 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:oracle`

```console
$ docker pull mysql@sha256:4b40b165f348c3a1d959a222bd6c7773503f202554fd140db3de74ed9136b7b8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:oracle` - linux; amd64

```console
$ docker pull mysql@sha256:0cf09253b84d0b32ec751c0342258e1efec1892443e5d0dd58239fb8b8eaa63e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.3 MB (272344574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:910ef46e093997328100b40b32fffe94ebca0b5ab1b1591e951d7b465e9b212e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 08 Sep 2026 18:58:50 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 08 Sep 2026 18:58:50 GMT
CMD ["/bin/bash"]
# Tue, 08 Sep 2026 19:12:37 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 08 Sep 2026 19:12:39 GMT
ENV GOSU_VERSION=1.19
# Tue, 08 Sep 2026 19:12:39 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 08 Sep 2026 19:13:07 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 08 Sep 2026 19:13:08 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 08 Sep 2026 19:13:08 GMT
ENV MYSQL_MAJOR=innovation
# Tue, 08 Sep 2026 19:13:08 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Tue, 08 Sep 2026 19:13:08 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 08 Sep 2026 19:13:39 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 08 Sep 2026 19:13:39 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 08 Sep 2026 19:13:39 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Tue, 08 Sep 2026 19:14:21 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 08 Sep 2026 19:14:21 GMT
VOLUME [/var/lib/mysql]
# Tue, 08 Sep 2026 19:14:21 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 08 Sep 2026 19:14:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 08 Sep 2026 19:14:21 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 08 Sep 2026 19:14:21 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:4bb6eac2f26a5221d1c656c424daeae066dc3efa0be69499880b834d8dbfbd84`  
		Last Modified: Tue, 08 Sep 2026 18:59:01 GMT  
		Size: 47.9 MB (47931580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc90eb5f505f7c2417eee66e3257d1016d164ea46585caa235979cdf9bd6ab73`  
		Last Modified: Tue, 08 Sep 2026 19:14:52 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a78411c2d8161f9b9429975810b3b5dff71cbd89a0148b66a3f8c536fee9315f`  
		Last Modified: Tue, 08 Sep 2026 19:14:53 GMT  
		Size: 783.6 KB (783558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19564ecb42922de74e35ba641d2fb08e184ebb18b3f09d0d4ee6f6712581727b`  
		Last Modified: Tue, 08 Sep 2026 19:14:53 GMT  
		Size: 6.2 MB (6193089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49dc6bddddc7cc625377d5df1245a5fb026beac5efdd63ef6e25b563ecca537c`  
		Last Modified: Tue, 08 Sep 2026 19:14:53 GMT  
		Size: 2.6 KB (2609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:430c7065f1d589bdb7da26b9859bc9f20e8b56d6303c2cffc7f3a849b54983f6`  
		Last Modified: Tue, 08 Sep 2026 19:14:53 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d12dddcbdc10c994559080258cda9fdf8511ffec919b220a646556a4a849072`  
		Last Modified: Tue, 08 Sep 2026 19:14:56 GMT  
		Size: 57.5 MB (57454018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa5b47801f3bb551f892160e0b69175df8fcbea4b8f128c712a934726190785d`  
		Last Modified: Tue, 08 Sep 2026 19:14:54 GMT  
		Size: 326.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:827e6b736dd9d450892a30eb5a95c0c4cb45fbdf8ea237df78102751abfef628`  
		Last Modified: Tue, 08 Sep 2026 19:14:58 GMT  
		Size: 160.0 MB (159972946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d1d44554de144e8cd989547b5a2dfb36e97e37eb00032e7be62888bca76d5c1`  
		Last Modified: Tue, 08 Sep 2026 19:14:55 GMT  
		Size: 5.2 KB (5224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:a75775650173f13500d672d4d073b08ae8d20d46991136715abf3870682f3c86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17452691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c89132a00811bf83d2cc588fe9c2898f0cca20c6922a692c0e21e50a8e2335f`

```dockerfile
```

-	Layers:
	-	`sha256:f808f33758cbaa0098097db77726ff7cd992a39cf7a95d8bfde42c5be3cebf3a`  
		Last Modified: Tue, 08 Sep 2026 19:14:53 GMT  
		Size: 17.4 MB (17417393 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7518911e256d5236a3275979046f1ad3094b3027975d3c3ace300949aa89eb19`  
		Last Modified: Tue, 08 Sep 2026 19:14:52 GMT  
		Size: 35.3 KB (35298 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:f7b3452e2f5ee773e9fd4f9988e7ea807d879acd3b52961607924dd17b07d9ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.7 MB (268716373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7962d59d8b8dc9cf17078c2286222195108936478af77248ad804a60e845f632`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 08 Sep 2026 18:57:57 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 08 Sep 2026 18:57:57 GMT
CMD ["/bin/bash"]
# Tue, 08 Sep 2026 19:08:29 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 08 Sep 2026 19:08:31 GMT
ENV GOSU_VERSION=1.19
# Tue, 08 Sep 2026 19:08:31 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 08 Sep 2026 19:09:08 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 08 Sep 2026 19:09:09 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 08 Sep 2026 19:09:09 GMT
ENV MYSQL_MAJOR=innovation
# Tue, 08 Sep 2026 19:09:09 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Tue, 08 Sep 2026 19:09:09 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 08 Sep 2026 19:09:50 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 08 Sep 2026 19:09:50 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 08 Sep 2026 19:09:50 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Tue, 08 Sep 2026 19:10:42 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 08 Sep 2026 19:10:42 GMT
VOLUME [/var/lib/mysql]
# Tue, 08 Sep 2026 19:10:42 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 08 Sep 2026 19:10:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 08 Sep 2026 19:10:42 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 08 Sep 2026 19:10:42 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:43c5deee1c317416925b86b1f2e78b730d2819023376f79b4de9f871323951a3`  
		Last Modified: Tue, 08 Sep 2026 18:58:08 GMT  
		Size: 46.5 MB (46477029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb980a8434e3c4600e45827e85201dcb117fa105cc497695640216f831384390`  
		Last Modified: Tue, 08 Sep 2026 19:11:18 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19c8bf571c7b733ea038259eac861768ae839db6d07c3188d54dc617943033e2`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 737.5 KB (737526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a017510daff3c2f3381e365accaa66eab52f251dc93a013cff3ddc4062c62bfe`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 5.8 MB (5815802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2f8471efd5dddf293b43b461dbe2e803948535cfa581fd02300a0764d47d7a6`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:101bfb51b57e17c638fb10e44f924f41eb5404b23677c7a9acca93868921e848`  
		Last Modified: Tue, 08 Sep 2026 19:11:20 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b549fe7114eb3dfbf6c84556f2f6e3408fc18ae4e25670891a404a451a31b0af`  
		Last Modified: Tue, 08 Sep 2026 19:11:22 GMT  
		Size: 57.4 MB (57434910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98cbda40669b120f5206b5bea13286fc329791c1646806a2dddd84cc214f3819`  
		Last Modified: Tue, 08 Sep 2026 19:11:20 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf3502e763277be8a4dada567b8594b93828c204a5f6749c1b094d09e2faad5c`  
		Last Modified: Tue, 08 Sep 2026 19:11:24 GMT  
		Size: 158.2 MB (158241725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:646bd661ef31ead80e724c18cefe7a9571656c1c72aeb850d1af8f074e002ced`  
		Last Modified: Tue, 08 Sep 2026 19:11:21 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:d45a7b45b6517cfb0f68c958649e4a63344ec42b111affbb3e3d3ea1a4450629
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17451504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e9c9306bb030ca92183cac533c8d6b5bee52915196be1a72c2d3e06cd21e8ec`

```dockerfile
```

-	Layers:
	-	`sha256:2614b75d327a3e726d19cb86e7a57fbf58085188c0e4955bd960163b7816275a`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 17.4 MB (17415866 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:083b04283ce84ef68972ce949eb4e3acbe53e3b555a8d36057213d7eadb8f865`  
		Last Modified: Tue, 08 Sep 2026 19:11:18 GMT  
		Size: 35.6 KB (35638 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:oraclelinux9`

```console
$ docker pull mysql@sha256:4b40b165f348c3a1d959a222bd6c7773503f202554fd140db3de74ed9136b7b8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:0cf09253b84d0b32ec751c0342258e1efec1892443e5d0dd58239fb8b8eaa63e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.3 MB (272344574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:910ef46e093997328100b40b32fffe94ebca0b5ab1b1591e951d7b465e9b212e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 08 Sep 2026 18:58:50 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 08 Sep 2026 18:58:50 GMT
CMD ["/bin/bash"]
# Tue, 08 Sep 2026 19:12:37 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 08 Sep 2026 19:12:39 GMT
ENV GOSU_VERSION=1.19
# Tue, 08 Sep 2026 19:12:39 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 08 Sep 2026 19:13:07 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 08 Sep 2026 19:13:08 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 08 Sep 2026 19:13:08 GMT
ENV MYSQL_MAJOR=innovation
# Tue, 08 Sep 2026 19:13:08 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Tue, 08 Sep 2026 19:13:08 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 08 Sep 2026 19:13:39 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 08 Sep 2026 19:13:39 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 08 Sep 2026 19:13:39 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Tue, 08 Sep 2026 19:14:21 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 08 Sep 2026 19:14:21 GMT
VOLUME [/var/lib/mysql]
# Tue, 08 Sep 2026 19:14:21 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 08 Sep 2026 19:14:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 08 Sep 2026 19:14:21 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 08 Sep 2026 19:14:21 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:4bb6eac2f26a5221d1c656c424daeae066dc3efa0be69499880b834d8dbfbd84`  
		Last Modified: Tue, 08 Sep 2026 18:59:01 GMT  
		Size: 47.9 MB (47931580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc90eb5f505f7c2417eee66e3257d1016d164ea46585caa235979cdf9bd6ab73`  
		Last Modified: Tue, 08 Sep 2026 19:14:52 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a78411c2d8161f9b9429975810b3b5dff71cbd89a0148b66a3f8c536fee9315f`  
		Last Modified: Tue, 08 Sep 2026 19:14:53 GMT  
		Size: 783.6 KB (783558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19564ecb42922de74e35ba641d2fb08e184ebb18b3f09d0d4ee6f6712581727b`  
		Last Modified: Tue, 08 Sep 2026 19:14:53 GMT  
		Size: 6.2 MB (6193089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49dc6bddddc7cc625377d5df1245a5fb026beac5efdd63ef6e25b563ecca537c`  
		Last Modified: Tue, 08 Sep 2026 19:14:53 GMT  
		Size: 2.6 KB (2609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:430c7065f1d589bdb7da26b9859bc9f20e8b56d6303c2cffc7f3a849b54983f6`  
		Last Modified: Tue, 08 Sep 2026 19:14:53 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d12dddcbdc10c994559080258cda9fdf8511ffec919b220a646556a4a849072`  
		Last Modified: Tue, 08 Sep 2026 19:14:56 GMT  
		Size: 57.5 MB (57454018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa5b47801f3bb551f892160e0b69175df8fcbea4b8f128c712a934726190785d`  
		Last Modified: Tue, 08 Sep 2026 19:14:54 GMT  
		Size: 326.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:827e6b736dd9d450892a30eb5a95c0c4cb45fbdf8ea237df78102751abfef628`  
		Last Modified: Tue, 08 Sep 2026 19:14:58 GMT  
		Size: 160.0 MB (159972946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d1d44554de144e8cd989547b5a2dfb36e97e37eb00032e7be62888bca76d5c1`  
		Last Modified: Tue, 08 Sep 2026 19:14:55 GMT  
		Size: 5.2 KB (5224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:a75775650173f13500d672d4d073b08ae8d20d46991136715abf3870682f3c86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17452691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c89132a00811bf83d2cc588fe9c2898f0cca20c6922a692c0e21e50a8e2335f`

```dockerfile
```

-	Layers:
	-	`sha256:f808f33758cbaa0098097db77726ff7cd992a39cf7a95d8bfde42c5be3cebf3a`  
		Last Modified: Tue, 08 Sep 2026 19:14:53 GMT  
		Size: 17.4 MB (17417393 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7518911e256d5236a3275979046f1ad3094b3027975d3c3ace300949aa89eb19`  
		Last Modified: Tue, 08 Sep 2026 19:14:52 GMT  
		Size: 35.3 KB (35298 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:f7b3452e2f5ee773e9fd4f9988e7ea807d879acd3b52961607924dd17b07d9ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.7 MB (268716373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7962d59d8b8dc9cf17078c2286222195108936478af77248ad804a60e845f632`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 08 Sep 2026 18:57:57 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 08 Sep 2026 18:57:57 GMT
CMD ["/bin/bash"]
# Tue, 08 Sep 2026 19:08:29 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 08 Sep 2026 19:08:31 GMT
ENV GOSU_VERSION=1.19
# Tue, 08 Sep 2026 19:08:31 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 08 Sep 2026 19:09:08 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 08 Sep 2026 19:09:09 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 08 Sep 2026 19:09:09 GMT
ENV MYSQL_MAJOR=innovation
# Tue, 08 Sep 2026 19:09:09 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Tue, 08 Sep 2026 19:09:09 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 08 Sep 2026 19:09:50 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 08 Sep 2026 19:09:50 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 08 Sep 2026 19:09:50 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Tue, 08 Sep 2026 19:10:42 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 08 Sep 2026 19:10:42 GMT
VOLUME [/var/lib/mysql]
# Tue, 08 Sep 2026 19:10:42 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 08 Sep 2026 19:10:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 08 Sep 2026 19:10:42 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 08 Sep 2026 19:10:42 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:43c5deee1c317416925b86b1f2e78b730d2819023376f79b4de9f871323951a3`  
		Last Modified: Tue, 08 Sep 2026 18:58:08 GMT  
		Size: 46.5 MB (46477029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb980a8434e3c4600e45827e85201dcb117fa105cc497695640216f831384390`  
		Last Modified: Tue, 08 Sep 2026 19:11:18 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19c8bf571c7b733ea038259eac861768ae839db6d07c3188d54dc617943033e2`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 737.5 KB (737526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a017510daff3c2f3381e365accaa66eab52f251dc93a013cff3ddc4062c62bfe`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 5.8 MB (5815802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2f8471efd5dddf293b43b461dbe2e803948535cfa581fd02300a0764d47d7a6`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:101bfb51b57e17c638fb10e44f924f41eb5404b23677c7a9acca93868921e848`  
		Last Modified: Tue, 08 Sep 2026 19:11:20 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b549fe7114eb3dfbf6c84556f2f6e3408fc18ae4e25670891a404a451a31b0af`  
		Last Modified: Tue, 08 Sep 2026 19:11:22 GMT  
		Size: 57.4 MB (57434910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98cbda40669b120f5206b5bea13286fc329791c1646806a2dddd84cc214f3819`  
		Last Modified: Tue, 08 Sep 2026 19:11:20 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf3502e763277be8a4dada567b8594b93828c204a5f6749c1b094d09e2faad5c`  
		Last Modified: Tue, 08 Sep 2026 19:11:24 GMT  
		Size: 158.2 MB (158241725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:646bd661ef31ead80e724c18cefe7a9571656c1c72aeb850d1af8f074e002ced`  
		Last Modified: Tue, 08 Sep 2026 19:11:21 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:d45a7b45b6517cfb0f68c958649e4a63344ec42b111affbb3e3d3ea1a4450629
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17451504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e9c9306bb030ca92183cac533c8d6b5bee52915196be1a72c2d3e06cd21e8ec`

```dockerfile
```

-	Layers:
	-	`sha256:2614b75d327a3e726d19cb86e7a57fbf58085188c0e4955bd960163b7816275a`  
		Last Modified: Tue, 08 Sep 2026 19:11:19 GMT  
		Size: 17.4 MB (17415866 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:083b04283ce84ef68972ce949eb4e3acbe53e3b555a8d36057213d7eadb8f865`  
		Last Modified: Tue, 08 Sep 2026 19:11:18 GMT  
		Size: 35.6 KB (35638 bytes)  
		MIME: application/vnd.in-toto+json
