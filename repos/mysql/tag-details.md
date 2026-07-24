<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `mysql`

-	[`mysql:8`](#mysql8)
-	[`mysql:8-oracle`](#mysql8-oracle)
-	[`mysql:8-oraclelinux9`](#mysql8-oraclelinux9)
-	[`mysql:8.4`](#mysql84)
-	[`mysql:8.4-oracle`](#mysql84-oracle)
-	[`mysql:8.4-oraclelinux9`](#mysql84-oraclelinux9)
-	[`mysql:8.4.10`](#mysql8410)
-	[`mysql:8.4.10-oracle`](#mysql8410-oracle)
-	[`mysql:8.4.10-oraclelinux9`](#mysql8410-oraclelinux9)
-	[`mysql:9`](#mysql9)
-	[`mysql:9-oracle`](#mysql9-oracle)
-	[`mysql:9-oraclelinux9`](#mysql9-oraclelinux9)
-	[`mysql:9.7`](#mysql97)
-	[`mysql:9.7-oracle`](#mysql97-oracle)
-	[`mysql:9.7-oraclelinux9`](#mysql97-oraclelinux9)
-	[`mysql:9.7.1`](#mysql971)
-	[`mysql:9.7.1-oracle`](#mysql971-oracle)
-	[`mysql:9.7.1-oraclelinux9`](#mysql971-oraclelinux9)
-	[`mysql:latest`](#mysqllatest)
-	[`mysql:lts`](#mysqllts)
-	[`mysql:lts-oracle`](#mysqllts-oracle)
-	[`mysql:lts-oraclelinux9`](#mysqllts-oraclelinux9)
-	[`mysql:oracle`](#mysqloracle)
-	[`mysql:oraclelinux9`](#mysqloraclelinux9)

## `mysql:8`

```console
$ docker pull mysql@sha256:8dbcf531a03aade657e181b9cf2f1d1803ce621a1d55610cb44cb531ab7d7db6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8` - linux; amd64

```console
$ docker pull mysql@sha256:870634c634aae968ea1a93e5c094a14e00c692da2ee9bed956b3dfcc7bd08cb0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.0 MB (238952505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cffaceb9b62d4280247acdb2324b380d2b36208ae34dfe9f0afb62eeaf70f08`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:56:37 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:56:37 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 23:00:59 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 23 Jul 2026 23:01:01 GMT
ENV GOSU_VERSION=1.19
# Thu, 23 Jul 2026 23:01:01 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 23 Jul 2026 23:01:28 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 23 Jul 2026 23:01:29 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 23 Jul 2026 23:01:29 GMT
ENV MYSQL_MAJOR=8.4
# Thu, 23 Jul 2026 23:01:29 GMT
ENV MYSQL_VERSION=8.4.10-1.el9
# Thu, 23 Jul 2026 23:03:26 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 23 Jul 2026 23:03:57 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 23 Jul 2026 23:03:57 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 23 Jul 2026 23:03:57 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Thu, 23 Jul 2026 23:04:34 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 23 Jul 2026 23:04:34 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Jul 2026 23:04:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 23 Jul 2026 23:04:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Jul 2026 23:04:34 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 23 Jul 2026 23:04:34 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:30627cea5424c411bee6559e1aed4c4b977ceaab0f12695130c3825de516d2cc`  
		Last Modified: Thu, 23 Jul 2026 22:56:48 GMT  
		Size: 47.9 MB (47927752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:234be8523cd72e078cbe87180ca47afebce94ce3742f0ee3605ac25c749657a3`  
		Last Modified: Thu, 23 Jul 2026 23:03:13 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35c80c3f0cadcf7d1980dd5a8c8527c0d7425eac00e44b98cc4db8e11baa6b34`  
		Last Modified: Thu, 23 Jul 2026 23:03:13 GMT  
		Size: 783.6 KB (783562 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:718475825f6aa95f12cca1af84f19cd08bd86db578c24e8c7a8e5fb8410ad82c`  
		Last Modified: Thu, 23 Jul 2026 23:03:13 GMT  
		Size: 6.2 MB (6193245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a08e28acd68d0eeb8b2c468542cefe0039a5db8a08567e89c0fb2e2b4fe12f9`  
		Last Modified: Thu, 23 Jul 2026 23:03:13 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a370a7a9352695a9236da8d2f4f31a00909ca95e1b5cf2a2ac03afe5b82dfcc4`  
		Last Modified: Thu, 23 Jul 2026 23:05:02 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:544be927ffe5777e466ffbfd3060bb8abe48322498319a873a37c18dc92f4ecc`  
		Last Modified: Thu, 23 Jul 2026 23:05:04 GMT  
		Size: 51.6 MB (51610674 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25fa218365a3a45ba85046799fe7fa88bd75104a16f429a580ee671fc813466d`  
		Last Modified: Thu, 23 Jul 2026 23:05:02 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:448b5e6cde1be70cf7b88350094f2bc80f3e1a6940309eb61076c9402ced9f82`  
		Last Modified: Thu, 23 Jul 2026 23:05:06 GMT  
		Size: 132.4 MB (132427898 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f43685ac51aa31f10541d792bfe0e559e72978ea5ded8a03fdf82cac953bb8c7`  
		Last Modified: Thu, 23 Jul 2026 23:05:03 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8` - unknown; unknown

```console
$ docker pull mysql@sha256:0a072fb65ce1b42890e106c9fabe32eac11154fe065498a929611d93ec427d79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15745154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:323dde5b39fe9256feb2c92dea1361c61a3599583ef724f662c4d6037d22d7f8`

```dockerfile
```

-	Layers:
	-	`sha256:195efc1f5756e96cc0cfb16544ce50023a870d3941de20b9a43865f5ce30d4a0`  
		Last Modified: Thu, 23 Jul 2026 23:05:03 GMT  
		Size: 15.7 MB (15711841 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:54ca7c5a4130adb9c9760bc44998cc5d6ae0973a0a469f97133240b7f598b483`  
		Last Modified: Thu, 23 Jul 2026 23:05:01 GMT  
		Size: 33.3 KB (33313 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:3f616910ccd923d5089d7889d491cefa65e24fcfa79d74db4084729f48c9cab1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.7 MB (233690249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54a7dd40c90b401f61ecf5929d9431b790e86ee3ce5ed6e041040100e1250f72`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:55:20 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:55:20 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 23:01:08 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 23 Jul 2026 23:01:10 GMT
ENV GOSU_VERSION=1.19
# Thu, 23 Jul 2026 23:01:10 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 23 Jul 2026 23:01:43 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 23 Jul 2026 23:01:44 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 23 Jul 2026 23:01:44 GMT
ENV MYSQL_MAJOR=8.4
# Thu, 23 Jul 2026 23:01:44 GMT
ENV MYSQL_VERSION=8.4.10-1.el9
# Thu, 23 Jul 2026 23:03:56 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 23 Jul 2026 23:04:32 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 23 Jul 2026 23:04:32 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 23 Jul 2026 23:04:32 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Thu, 23 Jul 2026 23:05:15 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 23 Jul 2026 23:05:15 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Jul 2026 23:05:15 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 23 Jul 2026 23:05:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Jul 2026 23:05:15 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 23 Jul 2026 23:05:15 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c1a8d43326b89b25aff74efe983a017053ef32314f6332ba2cf4e76fcf4f2b09`  
		Last Modified: Thu, 23 Jul 2026 22:55:31 GMT  
		Size: 46.5 MB (46477905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d929fa47221a9fb68752358425c99b29f498e9cc1605186bb6777340fcabe207`  
		Last Modified: Thu, 23 Jul 2026 23:03:43 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b25acfb705b7060b4171aa38835f634b4667b874b3e1c320c10ccd20363a933`  
		Last Modified: Thu, 23 Jul 2026 23:03:43 GMT  
		Size: 737.5 KB (737522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4731afd3f174de446fdf71b8dc6c72852556058a438d522fae064d69381bf711`  
		Last Modified: Thu, 23 Jul 2026 23:03:43 GMT  
		Size: 5.8 MB (5822634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:daa7bd4f2adba84f8d86205bda55676b4232e7b75c0d02754437cccde2889285`  
		Last Modified: Thu, 23 Jul 2026 23:03:43 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f2671b545c4614511bb5356d9a9af7faef16067d8d49f2fb00c846556f367c5`  
		Last Modified: Thu, 23 Jul 2026 23:05:45 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b593f26b9982a825e913770b4313cdf8d6a2c81a1888ffa2fa3d90455775a11`  
		Last Modified: Thu, 23 Jul 2026 23:05:48 GMT  
		Size: 49.9 MB (49850246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5b31971e73e6f1e1cc13f72c812a94fbf023c6efa8341b6c37480c52376a0c5`  
		Last Modified: Thu, 23 Jul 2026 23:05:45 GMT  
		Size: 318.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66bf952afc900b69fd552f6b38ebea2335f2f5518be8e7182e60c31a4ca146e1`  
		Last Modified: Thu, 23 Jul 2026 23:05:49 GMT  
		Size: 130.8 MB (130792571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c39a25a28b0df37813f6c83f88ea08069f5aaa24180d7827ca882de01cc9693`  
		Last Modified: Thu, 23 Jul 2026 23:05:46 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8` - unknown; unknown

```console
$ docker pull mysql@sha256:00e8366ebe0b03dd22a95b763d2c36b7349b2b5b67b50df1a2918cd762f1a8b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15743822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b82eab0847f89f4c795ca1b6317b2dcc8cde7a7e04d43cfa58fe35d1bdae36ce`

```dockerfile
```

-	Layers:
	-	`sha256:0926c88c2d0482ce1779d2403480b1971868d2cf2d900a8dbe83eeebc696c6e5`  
		Last Modified: Thu, 23 Jul 2026 23:05:46 GMT  
		Size: 15.7 MB (15710241 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c3f9fb7951e07e7b728a346b0bf88cc28b6eab703d11a92d384e9780b887801c`  
		Last Modified: Thu, 23 Jul 2026 23:05:45 GMT  
		Size: 33.6 KB (33581 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:8-oracle`

```console
$ docker pull mysql@sha256:8dbcf531a03aade657e181b9cf2f1d1803ce621a1d55610cb44cb531ab7d7db6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:870634c634aae968ea1a93e5c094a14e00c692da2ee9bed956b3dfcc7bd08cb0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.0 MB (238952505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cffaceb9b62d4280247acdb2324b380d2b36208ae34dfe9f0afb62eeaf70f08`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:56:37 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:56:37 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 23:00:59 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 23 Jul 2026 23:01:01 GMT
ENV GOSU_VERSION=1.19
# Thu, 23 Jul 2026 23:01:01 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 23 Jul 2026 23:01:28 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 23 Jul 2026 23:01:29 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 23 Jul 2026 23:01:29 GMT
ENV MYSQL_MAJOR=8.4
# Thu, 23 Jul 2026 23:01:29 GMT
ENV MYSQL_VERSION=8.4.10-1.el9
# Thu, 23 Jul 2026 23:03:26 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 23 Jul 2026 23:03:57 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 23 Jul 2026 23:03:57 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 23 Jul 2026 23:03:57 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Thu, 23 Jul 2026 23:04:34 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 23 Jul 2026 23:04:34 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Jul 2026 23:04:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 23 Jul 2026 23:04:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Jul 2026 23:04:34 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 23 Jul 2026 23:04:34 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:30627cea5424c411bee6559e1aed4c4b977ceaab0f12695130c3825de516d2cc`  
		Last Modified: Thu, 23 Jul 2026 22:56:48 GMT  
		Size: 47.9 MB (47927752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:234be8523cd72e078cbe87180ca47afebce94ce3742f0ee3605ac25c749657a3`  
		Last Modified: Thu, 23 Jul 2026 23:03:13 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35c80c3f0cadcf7d1980dd5a8c8527c0d7425eac00e44b98cc4db8e11baa6b34`  
		Last Modified: Thu, 23 Jul 2026 23:03:13 GMT  
		Size: 783.6 KB (783562 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:718475825f6aa95f12cca1af84f19cd08bd86db578c24e8c7a8e5fb8410ad82c`  
		Last Modified: Thu, 23 Jul 2026 23:03:13 GMT  
		Size: 6.2 MB (6193245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a08e28acd68d0eeb8b2c468542cefe0039a5db8a08567e89c0fb2e2b4fe12f9`  
		Last Modified: Thu, 23 Jul 2026 23:03:13 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a370a7a9352695a9236da8d2f4f31a00909ca95e1b5cf2a2ac03afe5b82dfcc4`  
		Last Modified: Thu, 23 Jul 2026 23:05:02 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:544be927ffe5777e466ffbfd3060bb8abe48322498319a873a37c18dc92f4ecc`  
		Last Modified: Thu, 23 Jul 2026 23:05:04 GMT  
		Size: 51.6 MB (51610674 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25fa218365a3a45ba85046799fe7fa88bd75104a16f429a580ee671fc813466d`  
		Last Modified: Thu, 23 Jul 2026 23:05:02 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:448b5e6cde1be70cf7b88350094f2bc80f3e1a6940309eb61076c9402ced9f82`  
		Last Modified: Thu, 23 Jul 2026 23:05:06 GMT  
		Size: 132.4 MB (132427898 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f43685ac51aa31f10541d792bfe0e559e72978ea5ded8a03fdf82cac953bb8c7`  
		Last Modified: Thu, 23 Jul 2026 23:05:03 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:0a072fb65ce1b42890e106c9fabe32eac11154fe065498a929611d93ec427d79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15745154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:323dde5b39fe9256feb2c92dea1361c61a3599583ef724f662c4d6037d22d7f8`

```dockerfile
```

-	Layers:
	-	`sha256:195efc1f5756e96cc0cfb16544ce50023a870d3941de20b9a43865f5ce30d4a0`  
		Last Modified: Thu, 23 Jul 2026 23:05:03 GMT  
		Size: 15.7 MB (15711841 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:54ca7c5a4130adb9c9760bc44998cc5d6ae0973a0a469f97133240b7f598b483`  
		Last Modified: Thu, 23 Jul 2026 23:05:01 GMT  
		Size: 33.3 KB (33313 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:3f616910ccd923d5089d7889d491cefa65e24fcfa79d74db4084729f48c9cab1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.7 MB (233690249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54a7dd40c90b401f61ecf5929d9431b790e86ee3ce5ed6e041040100e1250f72`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:55:20 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:55:20 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 23:01:08 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 23 Jul 2026 23:01:10 GMT
ENV GOSU_VERSION=1.19
# Thu, 23 Jul 2026 23:01:10 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 23 Jul 2026 23:01:43 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 23 Jul 2026 23:01:44 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 23 Jul 2026 23:01:44 GMT
ENV MYSQL_MAJOR=8.4
# Thu, 23 Jul 2026 23:01:44 GMT
ENV MYSQL_VERSION=8.4.10-1.el9
# Thu, 23 Jul 2026 23:03:56 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 23 Jul 2026 23:04:32 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 23 Jul 2026 23:04:32 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 23 Jul 2026 23:04:32 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Thu, 23 Jul 2026 23:05:15 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 23 Jul 2026 23:05:15 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Jul 2026 23:05:15 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 23 Jul 2026 23:05:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Jul 2026 23:05:15 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 23 Jul 2026 23:05:15 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c1a8d43326b89b25aff74efe983a017053ef32314f6332ba2cf4e76fcf4f2b09`  
		Last Modified: Thu, 23 Jul 2026 22:55:31 GMT  
		Size: 46.5 MB (46477905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d929fa47221a9fb68752358425c99b29f498e9cc1605186bb6777340fcabe207`  
		Last Modified: Thu, 23 Jul 2026 23:03:43 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b25acfb705b7060b4171aa38835f634b4667b874b3e1c320c10ccd20363a933`  
		Last Modified: Thu, 23 Jul 2026 23:03:43 GMT  
		Size: 737.5 KB (737522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4731afd3f174de446fdf71b8dc6c72852556058a438d522fae064d69381bf711`  
		Last Modified: Thu, 23 Jul 2026 23:03:43 GMT  
		Size: 5.8 MB (5822634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:daa7bd4f2adba84f8d86205bda55676b4232e7b75c0d02754437cccde2889285`  
		Last Modified: Thu, 23 Jul 2026 23:03:43 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f2671b545c4614511bb5356d9a9af7faef16067d8d49f2fb00c846556f367c5`  
		Last Modified: Thu, 23 Jul 2026 23:05:45 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b593f26b9982a825e913770b4313cdf8d6a2c81a1888ffa2fa3d90455775a11`  
		Last Modified: Thu, 23 Jul 2026 23:05:48 GMT  
		Size: 49.9 MB (49850246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5b31971e73e6f1e1cc13f72c812a94fbf023c6efa8341b6c37480c52376a0c5`  
		Last Modified: Thu, 23 Jul 2026 23:05:45 GMT  
		Size: 318.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66bf952afc900b69fd552f6b38ebea2335f2f5518be8e7182e60c31a4ca146e1`  
		Last Modified: Thu, 23 Jul 2026 23:05:49 GMT  
		Size: 130.8 MB (130792571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c39a25a28b0df37813f6c83f88ea08069f5aaa24180d7827ca882de01cc9693`  
		Last Modified: Thu, 23 Jul 2026 23:05:46 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:00e8366ebe0b03dd22a95b763d2c36b7349b2b5b67b50df1a2918cd762f1a8b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15743822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b82eab0847f89f4c795ca1b6317b2dcc8cde7a7e04d43cfa58fe35d1bdae36ce`

```dockerfile
```

-	Layers:
	-	`sha256:0926c88c2d0482ce1779d2403480b1971868d2cf2d900a8dbe83eeebc696c6e5`  
		Last Modified: Thu, 23 Jul 2026 23:05:46 GMT  
		Size: 15.7 MB (15710241 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c3f9fb7951e07e7b728a346b0bf88cc28b6eab703d11a92d384e9780b887801c`  
		Last Modified: Thu, 23 Jul 2026 23:05:45 GMT  
		Size: 33.6 KB (33581 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:8-oraclelinux9`

```console
$ docker pull mysql@sha256:8dbcf531a03aade657e181b9cf2f1d1803ce621a1d55610cb44cb531ab7d7db6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:870634c634aae968ea1a93e5c094a14e00c692da2ee9bed956b3dfcc7bd08cb0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.0 MB (238952505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cffaceb9b62d4280247acdb2324b380d2b36208ae34dfe9f0afb62eeaf70f08`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:56:37 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:56:37 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 23:00:59 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 23 Jul 2026 23:01:01 GMT
ENV GOSU_VERSION=1.19
# Thu, 23 Jul 2026 23:01:01 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 23 Jul 2026 23:01:28 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 23 Jul 2026 23:01:29 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 23 Jul 2026 23:01:29 GMT
ENV MYSQL_MAJOR=8.4
# Thu, 23 Jul 2026 23:01:29 GMT
ENV MYSQL_VERSION=8.4.10-1.el9
# Thu, 23 Jul 2026 23:03:26 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 23 Jul 2026 23:03:57 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 23 Jul 2026 23:03:57 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 23 Jul 2026 23:03:57 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Thu, 23 Jul 2026 23:04:34 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 23 Jul 2026 23:04:34 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Jul 2026 23:04:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 23 Jul 2026 23:04:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Jul 2026 23:04:34 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 23 Jul 2026 23:04:34 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:30627cea5424c411bee6559e1aed4c4b977ceaab0f12695130c3825de516d2cc`  
		Last Modified: Thu, 23 Jul 2026 22:56:48 GMT  
		Size: 47.9 MB (47927752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:234be8523cd72e078cbe87180ca47afebce94ce3742f0ee3605ac25c749657a3`  
		Last Modified: Thu, 23 Jul 2026 23:03:13 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35c80c3f0cadcf7d1980dd5a8c8527c0d7425eac00e44b98cc4db8e11baa6b34`  
		Last Modified: Thu, 23 Jul 2026 23:03:13 GMT  
		Size: 783.6 KB (783562 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:718475825f6aa95f12cca1af84f19cd08bd86db578c24e8c7a8e5fb8410ad82c`  
		Last Modified: Thu, 23 Jul 2026 23:03:13 GMT  
		Size: 6.2 MB (6193245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a08e28acd68d0eeb8b2c468542cefe0039a5db8a08567e89c0fb2e2b4fe12f9`  
		Last Modified: Thu, 23 Jul 2026 23:03:13 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a370a7a9352695a9236da8d2f4f31a00909ca95e1b5cf2a2ac03afe5b82dfcc4`  
		Last Modified: Thu, 23 Jul 2026 23:05:02 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:544be927ffe5777e466ffbfd3060bb8abe48322498319a873a37c18dc92f4ecc`  
		Last Modified: Thu, 23 Jul 2026 23:05:04 GMT  
		Size: 51.6 MB (51610674 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25fa218365a3a45ba85046799fe7fa88bd75104a16f429a580ee671fc813466d`  
		Last Modified: Thu, 23 Jul 2026 23:05:02 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:448b5e6cde1be70cf7b88350094f2bc80f3e1a6940309eb61076c9402ced9f82`  
		Last Modified: Thu, 23 Jul 2026 23:05:06 GMT  
		Size: 132.4 MB (132427898 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f43685ac51aa31f10541d792bfe0e559e72978ea5ded8a03fdf82cac953bb8c7`  
		Last Modified: Thu, 23 Jul 2026 23:05:03 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:0a072fb65ce1b42890e106c9fabe32eac11154fe065498a929611d93ec427d79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15745154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:323dde5b39fe9256feb2c92dea1361c61a3599583ef724f662c4d6037d22d7f8`

```dockerfile
```

-	Layers:
	-	`sha256:195efc1f5756e96cc0cfb16544ce50023a870d3941de20b9a43865f5ce30d4a0`  
		Last Modified: Thu, 23 Jul 2026 23:05:03 GMT  
		Size: 15.7 MB (15711841 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:54ca7c5a4130adb9c9760bc44998cc5d6ae0973a0a469f97133240b7f598b483`  
		Last Modified: Thu, 23 Jul 2026 23:05:01 GMT  
		Size: 33.3 KB (33313 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:3f616910ccd923d5089d7889d491cefa65e24fcfa79d74db4084729f48c9cab1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.7 MB (233690249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54a7dd40c90b401f61ecf5929d9431b790e86ee3ce5ed6e041040100e1250f72`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:55:20 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:55:20 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 23:01:08 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 23 Jul 2026 23:01:10 GMT
ENV GOSU_VERSION=1.19
# Thu, 23 Jul 2026 23:01:10 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 23 Jul 2026 23:01:43 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 23 Jul 2026 23:01:44 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 23 Jul 2026 23:01:44 GMT
ENV MYSQL_MAJOR=8.4
# Thu, 23 Jul 2026 23:01:44 GMT
ENV MYSQL_VERSION=8.4.10-1.el9
# Thu, 23 Jul 2026 23:03:56 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 23 Jul 2026 23:04:32 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 23 Jul 2026 23:04:32 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 23 Jul 2026 23:04:32 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Thu, 23 Jul 2026 23:05:15 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 23 Jul 2026 23:05:15 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Jul 2026 23:05:15 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 23 Jul 2026 23:05:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Jul 2026 23:05:15 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 23 Jul 2026 23:05:15 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c1a8d43326b89b25aff74efe983a017053ef32314f6332ba2cf4e76fcf4f2b09`  
		Last Modified: Thu, 23 Jul 2026 22:55:31 GMT  
		Size: 46.5 MB (46477905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d929fa47221a9fb68752358425c99b29f498e9cc1605186bb6777340fcabe207`  
		Last Modified: Thu, 23 Jul 2026 23:03:43 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b25acfb705b7060b4171aa38835f634b4667b874b3e1c320c10ccd20363a933`  
		Last Modified: Thu, 23 Jul 2026 23:03:43 GMT  
		Size: 737.5 KB (737522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4731afd3f174de446fdf71b8dc6c72852556058a438d522fae064d69381bf711`  
		Last Modified: Thu, 23 Jul 2026 23:03:43 GMT  
		Size: 5.8 MB (5822634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:daa7bd4f2adba84f8d86205bda55676b4232e7b75c0d02754437cccde2889285`  
		Last Modified: Thu, 23 Jul 2026 23:03:43 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f2671b545c4614511bb5356d9a9af7faef16067d8d49f2fb00c846556f367c5`  
		Last Modified: Thu, 23 Jul 2026 23:05:45 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b593f26b9982a825e913770b4313cdf8d6a2c81a1888ffa2fa3d90455775a11`  
		Last Modified: Thu, 23 Jul 2026 23:05:48 GMT  
		Size: 49.9 MB (49850246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5b31971e73e6f1e1cc13f72c812a94fbf023c6efa8341b6c37480c52376a0c5`  
		Last Modified: Thu, 23 Jul 2026 23:05:45 GMT  
		Size: 318.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66bf952afc900b69fd552f6b38ebea2335f2f5518be8e7182e60c31a4ca146e1`  
		Last Modified: Thu, 23 Jul 2026 23:05:49 GMT  
		Size: 130.8 MB (130792571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c39a25a28b0df37813f6c83f88ea08069f5aaa24180d7827ca882de01cc9693`  
		Last Modified: Thu, 23 Jul 2026 23:05:46 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:00e8366ebe0b03dd22a95b763d2c36b7349b2b5b67b50df1a2918cd762f1a8b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15743822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b82eab0847f89f4c795ca1b6317b2dcc8cde7a7e04d43cfa58fe35d1bdae36ce`

```dockerfile
```

-	Layers:
	-	`sha256:0926c88c2d0482ce1779d2403480b1971868d2cf2d900a8dbe83eeebc696c6e5`  
		Last Modified: Thu, 23 Jul 2026 23:05:46 GMT  
		Size: 15.7 MB (15710241 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c3f9fb7951e07e7b728a346b0bf88cc28b6eab703d11a92d384e9780b887801c`  
		Last Modified: Thu, 23 Jul 2026 23:05:45 GMT  
		Size: 33.6 KB (33581 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:8.4`

```console
$ docker pull mysql@sha256:8dbcf531a03aade657e181b9cf2f1d1803ce621a1d55610cb44cb531ab7d7db6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8.4` - linux; amd64

```console
$ docker pull mysql@sha256:870634c634aae968ea1a93e5c094a14e00c692da2ee9bed956b3dfcc7bd08cb0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.0 MB (238952505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cffaceb9b62d4280247acdb2324b380d2b36208ae34dfe9f0afb62eeaf70f08`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:56:37 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:56:37 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 23:00:59 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 23 Jul 2026 23:01:01 GMT
ENV GOSU_VERSION=1.19
# Thu, 23 Jul 2026 23:01:01 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 23 Jul 2026 23:01:28 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 23 Jul 2026 23:01:29 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 23 Jul 2026 23:01:29 GMT
ENV MYSQL_MAJOR=8.4
# Thu, 23 Jul 2026 23:01:29 GMT
ENV MYSQL_VERSION=8.4.10-1.el9
# Thu, 23 Jul 2026 23:03:26 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 23 Jul 2026 23:03:57 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 23 Jul 2026 23:03:57 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 23 Jul 2026 23:03:57 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Thu, 23 Jul 2026 23:04:34 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 23 Jul 2026 23:04:34 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Jul 2026 23:04:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 23 Jul 2026 23:04:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Jul 2026 23:04:34 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 23 Jul 2026 23:04:34 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:30627cea5424c411bee6559e1aed4c4b977ceaab0f12695130c3825de516d2cc`  
		Last Modified: Thu, 23 Jul 2026 22:56:48 GMT  
		Size: 47.9 MB (47927752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:234be8523cd72e078cbe87180ca47afebce94ce3742f0ee3605ac25c749657a3`  
		Last Modified: Thu, 23 Jul 2026 23:03:13 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35c80c3f0cadcf7d1980dd5a8c8527c0d7425eac00e44b98cc4db8e11baa6b34`  
		Last Modified: Thu, 23 Jul 2026 23:03:13 GMT  
		Size: 783.6 KB (783562 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:718475825f6aa95f12cca1af84f19cd08bd86db578c24e8c7a8e5fb8410ad82c`  
		Last Modified: Thu, 23 Jul 2026 23:03:13 GMT  
		Size: 6.2 MB (6193245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a08e28acd68d0eeb8b2c468542cefe0039a5db8a08567e89c0fb2e2b4fe12f9`  
		Last Modified: Thu, 23 Jul 2026 23:03:13 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a370a7a9352695a9236da8d2f4f31a00909ca95e1b5cf2a2ac03afe5b82dfcc4`  
		Last Modified: Thu, 23 Jul 2026 23:05:02 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:544be927ffe5777e466ffbfd3060bb8abe48322498319a873a37c18dc92f4ecc`  
		Last Modified: Thu, 23 Jul 2026 23:05:04 GMT  
		Size: 51.6 MB (51610674 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25fa218365a3a45ba85046799fe7fa88bd75104a16f429a580ee671fc813466d`  
		Last Modified: Thu, 23 Jul 2026 23:05:02 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:448b5e6cde1be70cf7b88350094f2bc80f3e1a6940309eb61076c9402ced9f82`  
		Last Modified: Thu, 23 Jul 2026 23:05:06 GMT  
		Size: 132.4 MB (132427898 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f43685ac51aa31f10541d792bfe0e559e72978ea5ded8a03fdf82cac953bb8c7`  
		Last Modified: Thu, 23 Jul 2026 23:05:03 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4` - unknown; unknown

```console
$ docker pull mysql@sha256:0a072fb65ce1b42890e106c9fabe32eac11154fe065498a929611d93ec427d79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15745154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:323dde5b39fe9256feb2c92dea1361c61a3599583ef724f662c4d6037d22d7f8`

```dockerfile
```

-	Layers:
	-	`sha256:195efc1f5756e96cc0cfb16544ce50023a870d3941de20b9a43865f5ce30d4a0`  
		Last Modified: Thu, 23 Jul 2026 23:05:03 GMT  
		Size: 15.7 MB (15711841 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:54ca7c5a4130adb9c9760bc44998cc5d6ae0973a0a469f97133240b7f598b483`  
		Last Modified: Thu, 23 Jul 2026 23:05:01 GMT  
		Size: 33.3 KB (33313 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8.4` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:3f616910ccd923d5089d7889d491cefa65e24fcfa79d74db4084729f48c9cab1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.7 MB (233690249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54a7dd40c90b401f61ecf5929d9431b790e86ee3ce5ed6e041040100e1250f72`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:55:20 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:55:20 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 23:01:08 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 23 Jul 2026 23:01:10 GMT
ENV GOSU_VERSION=1.19
# Thu, 23 Jul 2026 23:01:10 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 23 Jul 2026 23:01:43 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 23 Jul 2026 23:01:44 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 23 Jul 2026 23:01:44 GMT
ENV MYSQL_MAJOR=8.4
# Thu, 23 Jul 2026 23:01:44 GMT
ENV MYSQL_VERSION=8.4.10-1.el9
# Thu, 23 Jul 2026 23:03:56 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 23 Jul 2026 23:04:32 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 23 Jul 2026 23:04:32 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 23 Jul 2026 23:04:32 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Thu, 23 Jul 2026 23:05:15 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 23 Jul 2026 23:05:15 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Jul 2026 23:05:15 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 23 Jul 2026 23:05:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Jul 2026 23:05:15 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 23 Jul 2026 23:05:15 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c1a8d43326b89b25aff74efe983a017053ef32314f6332ba2cf4e76fcf4f2b09`  
		Last Modified: Thu, 23 Jul 2026 22:55:31 GMT  
		Size: 46.5 MB (46477905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d929fa47221a9fb68752358425c99b29f498e9cc1605186bb6777340fcabe207`  
		Last Modified: Thu, 23 Jul 2026 23:03:43 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b25acfb705b7060b4171aa38835f634b4667b874b3e1c320c10ccd20363a933`  
		Last Modified: Thu, 23 Jul 2026 23:03:43 GMT  
		Size: 737.5 KB (737522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4731afd3f174de446fdf71b8dc6c72852556058a438d522fae064d69381bf711`  
		Last Modified: Thu, 23 Jul 2026 23:03:43 GMT  
		Size: 5.8 MB (5822634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:daa7bd4f2adba84f8d86205bda55676b4232e7b75c0d02754437cccde2889285`  
		Last Modified: Thu, 23 Jul 2026 23:03:43 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f2671b545c4614511bb5356d9a9af7faef16067d8d49f2fb00c846556f367c5`  
		Last Modified: Thu, 23 Jul 2026 23:05:45 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b593f26b9982a825e913770b4313cdf8d6a2c81a1888ffa2fa3d90455775a11`  
		Last Modified: Thu, 23 Jul 2026 23:05:48 GMT  
		Size: 49.9 MB (49850246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5b31971e73e6f1e1cc13f72c812a94fbf023c6efa8341b6c37480c52376a0c5`  
		Last Modified: Thu, 23 Jul 2026 23:05:45 GMT  
		Size: 318.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66bf952afc900b69fd552f6b38ebea2335f2f5518be8e7182e60c31a4ca146e1`  
		Last Modified: Thu, 23 Jul 2026 23:05:49 GMT  
		Size: 130.8 MB (130792571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c39a25a28b0df37813f6c83f88ea08069f5aaa24180d7827ca882de01cc9693`  
		Last Modified: Thu, 23 Jul 2026 23:05:46 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4` - unknown; unknown

```console
$ docker pull mysql@sha256:00e8366ebe0b03dd22a95b763d2c36b7349b2b5b67b50df1a2918cd762f1a8b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15743822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b82eab0847f89f4c795ca1b6317b2dcc8cde7a7e04d43cfa58fe35d1bdae36ce`

```dockerfile
```

-	Layers:
	-	`sha256:0926c88c2d0482ce1779d2403480b1971868d2cf2d900a8dbe83eeebc696c6e5`  
		Last Modified: Thu, 23 Jul 2026 23:05:46 GMT  
		Size: 15.7 MB (15710241 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c3f9fb7951e07e7b728a346b0bf88cc28b6eab703d11a92d384e9780b887801c`  
		Last Modified: Thu, 23 Jul 2026 23:05:45 GMT  
		Size: 33.6 KB (33581 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:8.4-oracle`

```console
$ docker pull mysql@sha256:8dbcf531a03aade657e181b9cf2f1d1803ce621a1d55610cb44cb531ab7d7db6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8.4-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:870634c634aae968ea1a93e5c094a14e00c692da2ee9bed956b3dfcc7bd08cb0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.0 MB (238952505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cffaceb9b62d4280247acdb2324b380d2b36208ae34dfe9f0afb62eeaf70f08`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:56:37 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:56:37 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 23:00:59 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 23 Jul 2026 23:01:01 GMT
ENV GOSU_VERSION=1.19
# Thu, 23 Jul 2026 23:01:01 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 23 Jul 2026 23:01:28 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 23 Jul 2026 23:01:29 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 23 Jul 2026 23:01:29 GMT
ENV MYSQL_MAJOR=8.4
# Thu, 23 Jul 2026 23:01:29 GMT
ENV MYSQL_VERSION=8.4.10-1.el9
# Thu, 23 Jul 2026 23:03:26 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 23 Jul 2026 23:03:57 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 23 Jul 2026 23:03:57 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 23 Jul 2026 23:03:57 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Thu, 23 Jul 2026 23:04:34 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 23 Jul 2026 23:04:34 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Jul 2026 23:04:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 23 Jul 2026 23:04:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Jul 2026 23:04:34 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 23 Jul 2026 23:04:34 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:30627cea5424c411bee6559e1aed4c4b977ceaab0f12695130c3825de516d2cc`  
		Last Modified: Thu, 23 Jul 2026 22:56:48 GMT  
		Size: 47.9 MB (47927752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:234be8523cd72e078cbe87180ca47afebce94ce3742f0ee3605ac25c749657a3`  
		Last Modified: Thu, 23 Jul 2026 23:03:13 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35c80c3f0cadcf7d1980dd5a8c8527c0d7425eac00e44b98cc4db8e11baa6b34`  
		Last Modified: Thu, 23 Jul 2026 23:03:13 GMT  
		Size: 783.6 KB (783562 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:718475825f6aa95f12cca1af84f19cd08bd86db578c24e8c7a8e5fb8410ad82c`  
		Last Modified: Thu, 23 Jul 2026 23:03:13 GMT  
		Size: 6.2 MB (6193245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a08e28acd68d0eeb8b2c468542cefe0039a5db8a08567e89c0fb2e2b4fe12f9`  
		Last Modified: Thu, 23 Jul 2026 23:03:13 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a370a7a9352695a9236da8d2f4f31a00909ca95e1b5cf2a2ac03afe5b82dfcc4`  
		Last Modified: Thu, 23 Jul 2026 23:05:02 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:544be927ffe5777e466ffbfd3060bb8abe48322498319a873a37c18dc92f4ecc`  
		Last Modified: Thu, 23 Jul 2026 23:05:04 GMT  
		Size: 51.6 MB (51610674 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25fa218365a3a45ba85046799fe7fa88bd75104a16f429a580ee671fc813466d`  
		Last Modified: Thu, 23 Jul 2026 23:05:02 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:448b5e6cde1be70cf7b88350094f2bc80f3e1a6940309eb61076c9402ced9f82`  
		Last Modified: Thu, 23 Jul 2026 23:05:06 GMT  
		Size: 132.4 MB (132427898 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f43685ac51aa31f10541d792bfe0e559e72978ea5ded8a03fdf82cac953bb8c7`  
		Last Modified: Thu, 23 Jul 2026 23:05:03 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:0a072fb65ce1b42890e106c9fabe32eac11154fe065498a929611d93ec427d79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15745154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:323dde5b39fe9256feb2c92dea1361c61a3599583ef724f662c4d6037d22d7f8`

```dockerfile
```

-	Layers:
	-	`sha256:195efc1f5756e96cc0cfb16544ce50023a870d3941de20b9a43865f5ce30d4a0`  
		Last Modified: Thu, 23 Jul 2026 23:05:03 GMT  
		Size: 15.7 MB (15711841 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:54ca7c5a4130adb9c9760bc44998cc5d6ae0973a0a469f97133240b7f598b483`  
		Last Modified: Thu, 23 Jul 2026 23:05:01 GMT  
		Size: 33.3 KB (33313 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8.4-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:3f616910ccd923d5089d7889d491cefa65e24fcfa79d74db4084729f48c9cab1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.7 MB (233690249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54a7dd40c90b401f61ecf5929d9431b790e86ee3ce5ed6e041040100e1250f72`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:55:20 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:55:20 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 23:01:08 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 23 Jul 2026 23:01:10 GMT
ENV GOSU_VERSION=1.19
# Thu, 23 Jul 2026 23:01:10 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 23 Jul 2026 23:01:43 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 23 Jul 2026 23:01:44 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 23 Jul 2026 23:01:44 GMT
ENV MYSQL_MAJOR=8.4
# Thu, 23 Jul 2026 23:01:44 GMT
ENV MYSQL_VERSION=8.4.10-1.el9
# Thu, 23 Jul 2026 23:03:56 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 23 Jul 2026 23:04:32 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 23 Jul 2026 23:04:32 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 23 Jul 2026 23:04:32 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Thu, 23 Jul 2026 23:05:15 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 23 Jul 2026 23:05:15 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Jul 2026 23:05:15 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 23 Jul 2026 23:05:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Jul 2026 23:05:15 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 23 Jul 2026 23:05:15 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c1a8d43326b89b25aff74efe983a017053ef32314f6332ba2cf4e76fcf4f2b09`  
		Last Modified: Thu, 23 Jul 2026 22:55:31 GMT  
		Size: 46.5 MB (46477905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d929fa47221a9fb68752358425c99b29f498e9cc1605186bb6777340fcabe207`  
		Last Modified: Thu, 23 Jul 2026 23:03:43 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b25acfb705b7060b4171aa38835f634b4667b874b3e1c320c10ccd20363a933`  
		Last Modified: Thu, 23 Jul 2026 23:03:43 GMT  
		Size: 737.5 KB (737522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4731afd3f174de446fdf71b8dc6c72852556058a438d522fae064d69381bf711`  
		Last Modified: Thu, 23 Jul 2026 23:03:43 GMT  
		Size: 5.8 MB (5822634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:daa7bd4f2adba84f8d86205bda55676b4232e7b75c0d02754437cccde2889285`  
		Last Modified: Thu, 23 Jul 2026 23:03:43 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f2671b545c4614511bb5356d9a9af7faef16067d8d49f2fb00c846556f367c5`  
		Last Modified: Thu, 23 Jul 2026 23:05:45 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b593f26b9982a825e913770b4313cdf8d6a2c81a1888ffa2fa3d90455775a11`  
		Last Modified: Thu, 23 Jul 2026 23:05:48 GMT  
		Size: 49.9 MB (49850246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5b31971e73e6f1e1cc13f72c812a94fbf023c6efa8341b6c37480c52376a0c5`  
		Last Modified: Thu, 23 Jul 2026 23:05:45 GMT  
		Size: 318.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66bf952afc900b69fd552f6b38ebea2335f2f5518be8e7182e60c31a4ca146e1`  
		Last Modified: Thu, 23 Jul 2026 23:05:49 GMT  
		Size: 130.8 MB (130792571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c39a25a28b0df37813f6c83f88ea08069f5aaa24180d7827ca882de01cc9693`  
		Last Modified: Thu, 23 Jul 2026 23:05:46 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:00e8366ebe0b03dd22a95b763d2c36b7349b2b5b67b50df1a2918cd762f1a8b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15743822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b82eab0847f89f4c795ca1b6317b2dcc8cde7a7e04d43cfa58fe35d1bdae36ce`

```dockerfile
```

-	Layers:
	-	`sha256:0926c88c2d0482ce1779d2403480b1971868d2cf2d900a8dbe83eeebc696c6e5`  
		Last Modified: Thu, 23 Jul 2026 23:05:46 GMT  
		Size: 15.7 MB (15710241 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c3f9fb7951e07e7b728a346b0bf88cc28b6eab703d11a92d384e9780b887801c`  
		Last Modified: Thu, 23 Jul 2026 23:05:45 GMT  
		Size: 33.6 KB (33581 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:8.4-oraclelinux9`

```console
$ docker pull mysql@sha256:8dbcf531a03aade657e181b9cf2f1d1803ce621a1d55610cb44cb531ab7d7db6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8.4-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:870634c634aae968ea1a93e5c094a14e00c692da2ee9bed956b3dfcc7bd08cb0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.0 MB (238952505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cffaceb9b62d4280247acdb2324b380d2b36208ae34dfe9f0afb62eeaf70f08`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:56:37 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:56:37 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 23:00:59 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 23 Jul 2026 23:01:01 GMT
ENV GOSU_VERSION=1.19
# Thu, 23 Jul 2026 23:01:01 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 23 Jul 2026 23:01:28 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 23 Jul 2026 23:01:29 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 23 Jul 2026 23:01:29 GMT
ENV MYSQL_MAJOR=8.4
# Thu, 23 Jul 2026 23:01:29 GMT
ENV MYSQL_VERSION=8.4.10-1.el9
# Thu, 23 Jul 2026 23:03:26 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 23 Jul 2026 23:03:57 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 23 Jul 2026 23:03:57 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 23 Jul 2026 23:03:57 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Thu, 23 Jul 2026 23:04:34 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 23 Jul 2026 23:04:34 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Jul 2026 23:04:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 23 Jul 2026 23:04:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Jul 2026 23:04:34 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 23 Jul 2026 23:04:34 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:30627cea5424c411bee6559e1aed4c4b977ceaab0f12695130c3825de516d2cc`  
		Last Modified: Thu, 23 Jul 2026 22:56:48 GMT  
		Size: 47.9 MB (47927752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:234be8523cd72e078cbe87180ca47afebce94ce3742f0ee3605ac25c749657a3`  
		Last Modified: Thu, 23 Jul 2026 23:03:13 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35c80c3f0cadcf7d1980dd5a8c8527c0d7425eac00e44b98cc4db8e11baa6b34`  
		Last Modified: Thu, 23 Jul 2026 23:03:13 GMT  
		Size: 783.6 KB (783562 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:718475825f6aa95f12cca1af84f19cd08bd86db578c24e8c7a8e5fb8410ad82c`  
		Last Modified: Thu, 23 Jul 2026 23:03:13 GMT  
		Size: 6.2 MB (6193245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a08e28acd68d0eeb8b2c468542cefe0039a5db8a08567e89c0fb2e2b4fe12f9`  
		Last Modified: Thu, 23 Jul 2026 23:03:13 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a370a7a9352695a9236da8d2f4f31a00909ca95e1b5cf2a2ac03afe5b82dfcc4`  
		Last Modified: Thu, 23 Jul 2026 23:05:02 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:544be927ffe5777e466ffbfd3060bb8abe48322498319a873a37c18dc92f4ecc`  
		Last Modified: Thu, 23 Jul 2026 23:05:04 GMT  
		Size: 51.6 MB (51610674 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25fa218365a3a45ba85046799fe7fa88bd75104a16f429a580ee671fc813466d`  
		Last Modified: Thu, 23 Jul 2026 23:05:02 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:448b5e6cde1be70cf7b88350094f2bc80f3e1a6940309eb61076c9402ced9f82`  
		Last Modified: Thu, 23 Jul 2026 23:05:06 GMT  
		Size: 132.4 MB (132427898 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f43685ac51aa31f10541d792bfe0e559e72978ea5ded8a03fdf82cac953bb8c7`  
		Last Modified: Thu, 23 Jul 2026 23:05:03 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:0a072fb65ce1b42890e106c9fabe32eac11154fe065498a929611d93ec427d79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15745154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:323dde5b39fe9256feb2c92dea1361c61a3599583ef724f662c4d6037d22d7f8`

```dockerfile
```

-	Layers:
	-	`sha256:195efc1f5756e96cc0cfb16544ce50023a870d3941de20b9a43865f5ce30d4a0`  
		Last Modified: Thu, 23 Jul 2026 23:05:03 GMT  
		Size: 15.7 MB (15711841 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:54ca7c5a4130adb9c9760bc44998cc5d6ae0973a0a469f97133240b7f598b483`  
		Last Modified: Thu, 23 Jul 2026 23:05:01 GMT  
		Size: 33.3 KB (33313 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8.4-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:3f616910ccd923d5089d7889d491cefa65e24fcfa79d74db4084729f48c9cab1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.7 MB (233690249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54a7dd40c90b401f61ecf5929d9431b790e86ee3ce5ed6e041040100e1250f72`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:55:20 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:55:20 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 23:01:08 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 23 Jul 2026 23:01:10 GMT
ENV GOSU_VERSION=1.19
# Thu, 23 Jul 2026 23:01:10 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 23 Jul 2026 23:01:43 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 23 Jul 2026 23:01:44 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 23 Jul 2026 23:01:44 GMT
ENV MYSQL_MAJOR=8.4
# Thu, 23 Jul 2026 23:01:44 GMT
ENV MYSQL_VERSION=8.4.10-1.el9
# Thu, 23 Jul 2026 23:03:56 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 23 Jul 2026 23:04:32 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 23 Jul 2026 23:04:32 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 23 Jul 2026 23:04:32 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Thu, 23 Jul 2026 23:05:15 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 23 Jul 2026 23:05:15 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Jul 2026 23:05:15 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 23 Jul 2026 23:05:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Jul 2026 23:05:15 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 23 Jul 2026 23:05:15 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c1a8d43326b89b25aff74efe983a017053ef32314f6332ba2cf4e76fcf4f2b09`  
		Last Modified: Thu, 23 Jul 2026 22:55:31 GMT  
		Size: 46.5 MB (46477905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d929fa47221a9fb68752358425c99b29f498e9cc1605186bb6777340fcabe207`  
		Last Modified: Thu, 23 Jul 2026 23:03:43 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b25acfb705b7060b4171aa38835f634b4667b874b3e1c320c10ccd20363a933`  
		Last Modified: Thu, 23 Jul 2026 23:03:43 GMT  
		Size: 737.5 KB (737522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4731afd3f174de446fdf71b8dc6c72852556058a438d522fae064d69381bf711`  
		Last Modified: Thu, 23 Jul 2026 23:03:43 GMT  
		Size: 5.8 MB (5822634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:daa7bd4f2adba84f8d86205bda55676b4232e7b75c0d02754437cccde2889285`  
		Last Modified: Thu, 23 Jul 2026 23:03:43 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f2671b545c4614511bb5356d9a9af7faef16067d8d49f2fb00c846556f367c5`  
		Last Modified: Thu, 23 Jul 2026 23:05:45 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b593f26b9982a825e913770b4313cdf8d6a2c81a1888ffa2fa3d90455775a11`  
		Last Modified: Thu, 23 Jul 2026 23:05:48 GMT  
		Size: 49.9 MB (49850246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5b31971e73e6f1e1cc13f72c812a94fbf023c6efa8341b6c37480c52376a0c5`  
		Last Modified: Thu, 23 Jul 2026 23:05:45 GMT  
		Size: 318.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66bf952afc900b69fd552f6b38ebea2335f2f5518be8e7182e60c31a4ca146e1`  
		Last Modified: Thu, 23 Jul 2026 23:05:49 GMT  
		Size: 130.8 MB (130792571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c39a25a28b0df37813f6c83f88ea08069f5aaa24180d7827ca882de01cc9693`  
		Last Modified: Thu, 23 Jul 2026 23:05:46 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:00e8366ebe0b03dd22a95b763d2c36b7349b2b5b67b50df1a2918cd762f1a8b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15743822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b82eab0847f89f4c795ca1b6317b2dcc8cde7a7e04d43cfa58fe35d1bdae36ce`

```dockerfile
```

-	Layers:
	-	`sha256:0926c88c2d0482ce1779d2403480b1971868d2cf2d900a8dbe83eeebc696c6e5`  
		Last Modified: Thu, 23 Jul 2026 23:05:46 GMT  
		Size: 15.7 MB (15710241 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c3f9fb7951e07e7b728a346b0bf88cc28b6eab703d11a92d384e9780b887801c`  
		Last Modified: Thu, 23 Jul 2026 23:05:45 GMT  
		Size: 33.6 KB (33581 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:8.4.10`

```console
$ docker pull mysql@sha256:8dbcf531a03aade657e181b9cf2f1d1803ce621a1d55610cb44cb531ab7d7db6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8.4.10` - linux; amd64

```console
$ docker pull mysql@sha256:870634c634aae968ea1a93e5c094a14e00c692da2ee9bed956b3dfcc7bd08cb0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.0 MB (238952505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cffaceb9b62d4280247acdb2324b380d2b36208ae34dfe9f0afb62eeaf70f08`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:56:37 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:56:37 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 23:00:59 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 23 Jul 2026 23:01:01 GMT
ENV GOSU_VERSION=1.19
# Thu, 23 Jul 2026 23:01:01 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 23 Jul 2026 23:01:28 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 23 Jul 2026 23:01:29 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 23 Jul 2026 23:01:29 GMT
ENV MYSQL_MAJOR=8.4
# Thu, 23 Jul 2026 23:01:29 GMT
ENV MYSQL_VERSION=8.4.10-1.el9
# Thu, 23 Jul 2026 23:03:26 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 23 Jul 2026 23:03:57 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 23 Jul 2026 23:03:57 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 23 Jul 2026 23:03:57 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Thu, 23 Jul 2026 23:04:34 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 23 Jul 2026 23:04:34 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Jul 2026 23:04:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 23 Jul 2026 23:04:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Jul 2026 23:04:34 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 23 Jul 2026 23:04:34 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:30627cea5424c411bee6559e1aed4c4b977ceaab0f12695130c3825de516d2cc`  
		Last Modified: Thu, 23 Jul 2026 22:56:48 GMT  
		Size: 47.9 MB (47927752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:234be8523cd72e078cbe87180ca47afebce94ce3742f0ee3605ac25c749657a3`  
		Last Modified: Thu, 23 Jul 2026 23:03:13 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35c80c3f0cadcf7d1980dd5a8c8527c0d7425eac00e44b98cc4db8e11baa6b34`  
		Last Modified: Thu, 23 Jul 2026 23:03:13 GMT  
		Size: 783.6 KB (783562 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:718475825f6aa95f12cca1af84f19cd08bd86db578c24e8c7a8e5fb8410ad82c`  
		Last Modified: Thu, 23 Jul 2026 23:03:13 GMT  
		Size: 6.2 MB (6193245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a08e28acd68d0eeb8b2c468542cefe0039a5db8a08567e89c0fb2e2b4fe12f9`  
		Last Modified: Thu, 23 Jul 2026 23:03:13 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a370a7a9352695a9236da8d2f4f31a00909ca95e1b5cf2a2ac03afe5b82dfcc4`  
		Last Modified: Thu, 23 Jul 2026 23:05:02 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:544be927ffe5777e466ffbfd3060bb8abe48322498319a873a37c18dc92f4ecc`  
		Last Modified: Thu, 23 Jul 2026 23:05:04 GMT  
		Size: 51.6 MB (51610674 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25fa218365a3a45ba85046799fe7fa88bd75104a16f429a580ee671fc813466d`  
		Last Modified: Thu, 23 Jul 2026 23:05:02 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:448b5e6cde1be70cf7b88350094f2bc80f3e1a6940309eb61076c9402ced9f82`  
		Last Modified: Thu, 23 Jul 2026 23:05:06 GMT  
		Size: 132.4 MB (132427898 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f43685ac51aa31f10541d792bfe0e559e72978ea5ded8a03fdf82cac953bb8c7`  
		Last Modified: Thu, 23 Jul 2026 23:05:03 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4.10` - unknown; unknown

```console
$ docker pull mysql@sha256:0a072fb65ce1b42890e106c9fabe32eac11154fe065498a929611d93ec427d79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15745154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:323dde5b39fe9256feb2c92dea1361c61a3599583ef724f662c4d6037d22d7f8`

```dockerfile
```

-	Layers:
	-	`sha256:195efc1f5756e96cc0cfb16544ce50023a870d3941de20b9a43865f5ce30d4a0`  
		Last Modified: Thu, 23 Jul 2026 23:05:03 GMT  
		Size: 15.7 MB (15711841 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:54ca7c5a4130adb9c9760bc44998cc5d6ae0973a0a469f97133240b7f598b483`  
		Last Modified: Thu, 23 Jul 2026 23:05:01 GMT  
		Size: 33.3 KB (33313 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8.4.10` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:3f616910ccd923d5089d7889d491cefa65e24fcfa79d74db4084729f48c9cab1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.7 MB (233690249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54a7dd40c90b401f61ecf5929d9431b790e86ee3ce5ed6e041040100e1250f72`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:55:20 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:55:20 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 23:01:08 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 23 Jul 2026 23:01:10 GMT
ENV GOSU_VERSION=1.19
# Thu, 23 Jul 2026 23:01:10 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 23 Jul 2026 23:01:43 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 23 Jul 2026 23:01:44 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 23 Jul 2026 23:01:44 GMT
ENV MYSQL_MAJOR=8.4
# Thu, 23 Jul 2026 23:01:44 GMT
ENV MYSQL_VERSION=8.4.10-1.el9
# Thu, 23 Jul 2026 23:03:56 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 23 Jul 2026 23:04:32 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 23 Jul 2026 23:04:32 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 23 Jul 2026 23:04:32 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Thu, 23 Jul 2026 23:05:15 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 23 Jul 2026 23:05:15 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Jul 2026 23:05:15 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 23 Jul 2026 23:05:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Jul 2026 23:05:15 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 23 Jul 2026 23:05:15 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c1a8d43326b89b25aff74efe983a017053ef32314f6332ba2cf4e76fcf4f2b09`  
		Last Modified: Thu, 23 Jul 2026 22:55:31 GMT  
		Size: 46.5 MB (46477905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d929fa47221a9fb68752358425c99b29f498e9cc1605186bb6777340fcabe207`  
		Last Modified: Thu, 23 Jul 2026 23:03:43 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b25acfb705b7060b4171aa38835f634b4667b874b3e1c320c10ccd20363a933`  
		Last Modified: Thu, 23 Jul 2026 23:03:43 GMT  
		Size: 737.5 KB (737522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4731afd3f174de446fdf71b8dc6c72852556058a438d522fae064d69381bf711`  
		Last Modified: Thu, 23 Jul 2026 23:03:43 GMT  
		Size: 5.8 MB (5822634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:daa7bd4f2adba84f8d86205bda55676b4232e7b75c0d02754437cccde2889285`  
		Last Modified: Thu, 23 Jul 2026 23:03:43 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f2671b545c4614511bb5356d9a9af7faef16067d8d49f2fb00c846556f367c5`  
		Last Modified: Thu, 23 Jul 2026 23:05:45 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b593f26b9982a825e913770b4313cdf8d6a2c81a1888ffa2fa3d90455775a11`  
		Last Modified: Thu, 23 Jul 2026 23:05:48 GMT  
		Size: 49.9 MB (49850246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5b31971e73e6f1e1cc13f72c812a94fbf023c6efa8341b6c37480c52376a0c5`  
		Last Modified: Thu, 23 Jul 2026 23:05:45 GMT  
		Size: 318.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66bf952afc900b69fd552f6b38ebea2335f2f5518be8e7182e60c31a4ca146e1`  
		Last Modified: Thu, 23 Jul 2026 23:05:49 GMT  
		Size: 130.8 MB (130792571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c39a25a28b0df37813f6c83f88ea08069f5aaa24180d7827ca882de01cc9693`  
		Last Modified: Thu, 23 Jul 2026 23:05:46 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4.10` - unknown; unknown

```console
$ docker pull mysql@sha256:00e8366ebe0b03dd22a95b763d2c36b7349b2b5b67b50df1a2918cd762f1a8b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15743822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b82eab0847f89f4c795ca1b6317b2dcc8cde7a7e04d43cfa58fe35d1bdae36ce`

```dockerfile
```

-	Layers:
	-	`sha256:0926c88c2d0482ce1779d2403480b1971868d2cf2d900a8dbe83eeebc696c6e5`  
		Last Modified: Thu, 23 Jul 2026 23:05:46 GMT  
		Size: 15.7 MB (15710241 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c3f9fb7951e07e7b728a346b0bf88cc28b6eab703d11a92d384e9780b887801c`  
		Last Modified: Thu, 23 Jul 2026 23:05:45 GMT  
		Size: 33.6 KB (33581 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:8.4.10-oracle`

```console
$ docker pull mysql@sha256:8dbcf531a03aade657e181b9cf2f1d1803ce621a1d55610cb44cb531ab7d7db6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8.4.10-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:870634c634aae968ea1a93e5c094a14e00c692da2ee9bed956b3dfcc7bd08cb0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.0 MB (238952505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cffaceb9b62d4280247acdb2324b380d2b36208ae34dfe9f0afb62eeaf70f08`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:56:37 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:56:37 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 23:00:59 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 23 Jul 2026 23:01:01 GMT
ENV GOSU_VERSION=1.19
# Thu, 23 Jul 2026 23:01:01 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 23 Jul 2026 23:01:28 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 23 Jul 2026 23:01:29 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 23 Jul 2026 23:01:29 GMT
ENV MYSQL_MAJOR=8.4
# Thu, 23 Jul 2026 23:01:29 GMT
ENV MYSQL_VERSION=8.4.10-1.el9
# Thu, 23 Jul 2026 23:03:26 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 23 Jul 2026 23:03:57 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 23 Jul 2026 23:03:57 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 23 Jul 2026 23:03:57 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Thu, 23 Jul 2026 23:04:34 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 23 Jul 2026 23:04:34 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Jul 2026 23:04:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 23 Jul 2026 23:04:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Jul 2026 23:04:34 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 23 Jul 2026 23:04:34 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:30627cea5424c411bee6559e1aed4c4b977ceaab0f12695130c3825de516d2cc`  
		Last Modified: Thu, 23 Jul 2026 22:56:48 GMT  
		Size: 47.9 MB (47927752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:234be8523cd72e078cbe87180ca47afebce94ce3742f0ee3605ac25c749657a3`  
		Last Modified: Thu, 23 Jul 2026 23:03:13 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35c80c3f0cadcf7d1980dd5a8c8527c0d7425eac00e44b98cc4db8e11baa6b34`  
		Last Modified: Thu, 23 Jul 2026 23:03:13 GMT  
		Size: 783.6 KB (783562 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:718475825f6aa95f12cca1af84f19cd08bd86db578c24e8c7a8e5fb8410ad82c`  
		Last Modified: Thu, 23 Jul 2026 23:03:13 GMT  
		Size: 6.2 MB (6193245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a08e28acd68d0eeb8b2c468542cefe0039a5db8a08567e89c0fb2e2b4fe12f9`  
		Last Modified: Thu, 23 Jul 2026 23:03:13 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a370a7a9352695a9236da8d2f4f31a00909ca95e1b5cf2a2ac03afe5b82dfcc4`  
		Last Modified: Thu, 23 Jul 2026 23:05:02 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:544be927ffe5777e466ffbfd3060bb8abe48322498319a873a37c18dc92f4ecc`  
		Last Modified: Thu, 23 Jul 2026 23:05:04 GMT  
		Size: 51.6 MB (51610674 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25fa218365a3a45ba85046799fe7fa88bd75104a16f429a580ee671fc813466d`  
		Last Modified: Thu, 23 Jul 2026 23:05:02 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:448b5e6cde1be70cf7b88350094f2bc80f3e1a6940309eb61076c9402ced9f82`  
		Last Modified: Thu, 23 Jul 2026 23:05:06 GMT  
		Size: 132.4 MB (132427898 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f43685ac51aa31f10541d792bfe0e559e72978ea5ded8a03fdf82cac953bb8c7`  
		Last Modified: Thu, 23 Jul 2026 23:05:03 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4.10-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:0a072fb65ce1b42890e106c9fabe32eac11154fe065498a929611d93ec427d79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15745154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:323dde5b39fe9256feb2c92dea1361c61a3599583ef724f662c4d6037d22d7f8`

```dockerfile
```

-	Layers:
	-	`sha256:195efc1f5756e96cc0cfb16544ce50023a870d3941de20b9a43865f5ce30d4a0`  
		Last Modified: Thu, 23 Jul 2026 23:05:03 GMT  
		Size: 15.7 MB (15711841 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:54ca7c5a4130adb9c9760bc44998cc5d6ae0973a0a469f97133240b7f598b483`  
		Last Modified: Thu, 23 Jul 2026 23:05:01 GMT  
		Size: 33.3 KB (33313 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8.4.10-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:3f616910ccd923d5089d7889d491cefa65e24fcfa79d74db4084729f48c9cab1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.7 MB (233690249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54a7dd40c90b401f61ecf5929d9431b790e86ee3ce5ed6e041040100e1250f72`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:55:20 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:55:20 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 23:01:08 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 23 Jul 2026 23:01:10 GMT
ENV GOSU_VERSION=1.19
# Thu, 23 Jul 2026 23:01:10 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 23 Jul 2026 23:01:43 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 23 Jul 2026 23:01:44 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 23 Jul 2026 23:01:44 GMT
ENV MYSQL_MAJOR=8.4
# Thu, 23 Jul 2026 23:01:44 GMT
ENV MYSQL_VERSION=8.4.10-1.el9
# Thu, 23 Jul 2026 23:03:56 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 23 Jul 2026 23:04:32 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 23 Jul 2026 23:04:32 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 23 Jul 2026 23:04:32 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Thu, 23 Jul 2026 23:05:15 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 23 Jul 2026 23:05:15 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Jul 2026 23:05:15 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 23 Jul 2026 23:05:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Jul 2026 23:05:15 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 23 Jul 2026 23:05:15 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c1a8d43326b89b25aff74efe983a017053ef32314f6332ba2cf4e76fcf4f2b09`  
		Last Modified: Thu, 23 Jul 2026 22:55:31 GMT  
		Size: 46.5 MB (46477905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d929fa47221a9fb68752358425c99b29f498e9cc1605186bb6777340fcabe207`  
		Last Modified: Thu, 23 Jul 2026 23:03:43 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b25acfb705b7060b4171aa38835f634b4667b874b3e1c320c10ccd20363a933`  
		Last Modified: Thu, 23 Jul 2026 23:03:43 GMT  
		Size: 737.5 KB (737522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4731afd3f174de446fdf71b8dc6c72852556058a438d522fae064d69381bf711`  
		Last Modified: Thu, 23 Jul 2026 23:03:43 GMT  
		Size: 5.8 MB (5822634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:daa7bd4f2adba84f8d86205bda55676b4232e7b75c0d02754437cccde2889285`  
		Last Modified: Thu, 23 Jul 2026 23:03:43 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f2671b545c4614511bb5356d9a9af7faef16067d8d49f2fb00c846556f367c5`  
		Last Modified: Thu, 23 Jul 2026 23:05:45 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b593f26b9982a825e913770b4313cdf8d6a2c81a1888ffa2fa3d90455775a11`  
		Last Modified: Thu, 23 Jul 2026 23:05:48 GMT  
		Size: 49.9 MB (49850246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5b31971e73e6f1e1cc13f72c812a94fbf023c6efa8341b6c37480c52376a0c5`  
		Last Modified: Thu, 23 Jul 2026 23:05:45 GMT  
		Size: 318.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66bf952afc900b69fd552f6b38ebea2335f2f5518be8e7182e60c31a4ca146e1`  
		Last Modified: Thu, 23 Jul 2026 23:05:49 GMT  
		Size: 130.8 MB (130792571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c39a25a28b0df37813f6c83f88ea08069f5aaa24180d7827ca882de01cc9693`  
		Last Modified: Thu, 23 Jul 2026 23:05:46 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4.10-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:00e8366ebe0b03dd22a95b763d2c36b7349b2b5b67b50df1a2918cd762f1a8b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15743822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b82eab0847f89f4c795ca1b6317b2dcc8cde7a7e04d43cfa58fe35d1bdae36ce`

```dockerfile
```

-	Layers:
	-	`sha256:0926c88c2d0482ce1779d2403480b1971868d2cf2d900a8dbe83eeebc696c6e5`  
		Last Modified: Thu, 23 Jul 2026 23:05:46 GMT  
		Size: 15.7 MB (15710241 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c3f9fb7951e07e7b728a346b0bf88cc28b6eab703d11a92d384e9780b887801c`  
		Last Modified: Thu, 23 Jul 2026 23:05:45 GMT  
		Size: 33.6 KB (33581 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:8.4.10-oraclelinux9`

```console
$ docker pull mysql@sha256:8dbcf531a03aade657e181b9cf2f1d1803ce621a1d55610cb44cb531ab7d7db6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8.4.10-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:870634c634aae968ea1a93e5c094a14e00c692da2ee9bed956b3dfcc7bd08cb0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.0 MB (238952505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cffaceb9b62d4280247acdb2324b380d2b36208ae34dfe9f0afb62eeaf70f08`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:56:37 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:56:37 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 23:00:59 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 23 Jul 2026 23:01:01 GMT
ENV GOSU_VERSION=1.19
# Thu, 23 Jul 2026 23:01:01 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 23 Jul 2026 23:01:28 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 23 Jul 2026 23:01:29 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 23 Jul 2026 23:01:29 GMT
ENV MYSQL_MAJOR=8.4
# Thu, 23 Jul 2026 23:01:29 GMT
ENV MYSQL_VERSION=8.4.10-1.el9
# Thu, 23 Jul 2026 23:03:26 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 23 Jul 2026 23:03:57 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 23 Jul 2026 23:03:57 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 23 Jul 2026 23:03:57 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Thu, 23 Jul 2026 23:04:34 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 23 Jul 2026 23:04:34 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Jul 2026 23:04:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 23 Jul 2026 23:04:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Jul 2026 23:04:34 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 23 Jul 2026 23:04:34 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:30627cea5424c411bee6559e1aed4c4b977ceaab0f12695130c3825de516d2cc`  
		Last Modified: Thu, 23 Jul 2026 22:56:48 GMT  
		Size: 47.9 MB (47927752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:234be8523cd72e078cbe87180ca47afebce94ce3742f0ee3605ac25c749657a3`  
		Last Modified: Thu, 23 Jul 2026 23:03:13 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35c80c3f0cadcf7d1980dd5a8c8527c0d7425eac00e44b98cc4db8e11baa6b34`  
		Last Modified: Thu, 23 Jul 2026 23:03:13 GMT  
		Size: 783.6 KB (783562 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:718475825f6aa95f12cca1af84f19cd08bd86db578c24e8c7a8e5fb8410ad82c`  
		Last Modified: Thu, 23 Jul 2026 23:03:13 GMT  
		Size: 6.2 MB (6193245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a08e28acd68d0eeb8b2c468542cefe0039a5db8a08567e89c0fb2e2b4fe12f9`  
		Last Modified: Thu, 23 Jul 2026 23:03:13 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a370a7a9352695a9236da8d2f4f31a00909ca95e1b5cf2a2ac03afe5b82dfcc4`  
		Last Modified: Thu, 23 Jul 2026 23:05:02 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:544be927ffe5777e466ffbfd3060bb8abe48322498319a873a37c18dc92f4ecc`  
		Last Modified: Thu, 23 Jul 2026 23:05:04 GMT  
		Size: 51.6 MB (51610674 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25fa218365a3a45ba85046799fe7fa88bd75104a16f429a580ee671fc813466d`  
		Last Modified: Thu, 23 Jul 2026 23:05:02 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:448b5e6cde1be70cf7b88350094f2bc80f3e1a6940309eb61076c9402ced9f82`  
		Last Modified: Thu, 23 Jul 2026 23:05:06 GMT  
		Size: 132.4 MB (132427898 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f43685ac51aa31f10541d792bfe0e559e72978ea5ded8a03fdf82cac953bb8c7`  
		Last Modified: Thu, 23 Jul 2026 23:05:03 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4.10-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:0a072fb65ce1b42890e106c9fabe32eac11154fe065498a929611d93ec427d79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15745154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:323dde5b39fe9256feb2c92dea1361c61a3599583ef724f662c4d6037d22d7f8`

```dockerfile
```

-	Layers:
	-	`sha256:195efc1f5756e96cc0cfb16544ce50023a870d3941de20b9a43865f5ce30d4a0`  
		Last Modified: Thu, 23 Jul 2026 23:05:03 GMT  
		Size: 15.7 MB (15711841 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:54ca7c5a4130adb9c9760bc44998cc5d6ae0973a0a469f97133240b7f598b483`  
		Last Modified: Thu, 23 Jul 2026 23:05:01 GMT  
		Size: 33.3 KB (33313 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8.4.10-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:3f616910ccd923d5089d7889d491cefa65e24fcfa79d74db4084729f48c9cab1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.7 MB (233690249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54a7dd40c90b401f61ecf5929d9431b790e86ee3ce5ed6e041040100e1250f72`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:55:20 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:55:20 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 23:01:08 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 23 Jul 2026 23:01:10 GMT
ENV GOSU_VERSION=1.19
# Thu, 23 Jul 2026 23:01:10 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 23 Jul 2026 23:01:43 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 23 Jul 2026 23:01:44 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 23 Jul 2026 23:01:44 GMT
ENV MYSQL_MAJOR=8.4
# Thu, 23 Jul 2026 23:01:44 GMT
ENV MYSQL_VERSION=8.4.10-1.el9
# Thu, 23 Jul 2026 23:03:56 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 23 Jul 2026 23:04:32 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 23 Jul 2026 23:04:32 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 23 Jul 2026 23:04:32 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Thu, 23 Jul 2026 23:05:15 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 23 Jul 2026 23:05:15 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Jul 2026 23:05:15 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 23 Jul 2026 23:05:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Jul 2026 23:05:15 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 23 Jul 2026 23:05:15 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c1a8d43326b89b25aff74efe983a017053ef32314f6332ba2cf4e76fcf4f2b09`  
		Last Modified: Thu, 23 Jul 2026 22:55:31 GMT  
		Size: 46.5 MB (46477905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d929fa47221a9fb68752358425c99b29f498e9cc1605186bb6777340fcabe207`  
		Last Modified: Thu, 23 Jul 2026 23:03:43 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b25acfb705b7060b4171aa38835f634b4667b874b3e1c320c10ccd20363a933`  
		Last Modified: Thu, 23 Jul 2026 23:03:43 GMT  
		Size: 737.5 KB (737522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4731afd3f174de446fdf71b8dc6c72852556058a438d522fae064d69381bf711`  
		Last Modified: Thu, 23 Jul 2026 23:03:43 GMT  
		Size: 5.8 MB (5822634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:daa7bd4f2adba84f8d86205bda55676b4232e7b75c0d02754437cccde2889285`  
		Last Modified: Thu, 23 Jul 2026 23:03:43 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f2671b545c4614511bb5356d9a9af7faef16067d8d49f2fb00c846556f367c5`  
		Last Modified: Thu, 23 Jul 2026 23:05:45 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b593f26b9982a825e913770b4313cdf8d6a2c81a1888ffa2fa3d90455775a11`  
		Last Modified: Thu, 23 Jul 2026 23:05:48 GMT  
		Size: 49.9 MB (49850246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5b31971e73e6f1e1cc13f72c812a94fbf023c6efa8341b6c37480c52376a0c5`  
		Last Modified: Thu, 23 Jul 2026 23:05:45 GMT  
		Size: 318.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66bf952afc900b69fd552f6b38ebea2335f2f5518be8e7182e60c31a4ca146e1`  
		Last Modified: Thu, 23 Jul 2026 23:05:49 GMT  
		Size: 130.8 MB (130792571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c39a25a28b0df37813f6c83f88ea08069f5aaa24180d7827ca882de01cc9693`  
		Last Modified: Thu, 23 Jul 2026 23:05:46 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4.10-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:00e8366ebe0b03dd22a95b763d2c36b7349b2b5b67b50df1a2918cd762f1a8b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15743822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b82eab0847f89f4c795ca1b6317b2dcc8cde7a7e04d43cfa58fe35d1bdae36ce`

```dockerfile
```

-	Layers:
	-	`sha256:0926c88c2d0482ce1779d2403480b1971868d2cf2d900a8dbe83eeebc696c6e5`  
		Last Modified: Thu, 23 Jul 2026 23:05:46 GMT  
		Size: 15.7 MB (15710241 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c3f9fb7951e07e7b728a346b0bf88cc28b6eab703d11a92d384e9780b887801c`  
		Last Modified: Thu, 23 Jul 2026 23:05:45 GMT  
		Size: 33.6 KB (33581 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9`

```console
$ docker pull mysql@sha256:cbade841779f1661300e705721f9d2ff159865cc7a8a291affbff43ac6ec7f1d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9` - linux; amd64

```console
$ docker pull mysql@sha256:b09034342b94a61117ccbf223a4c20f1eef060fcf11b6a721126a9a15286ea3b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.8 MB (270840982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d04ab00413e7110afbb8c8edfb07ef2599f3fe52641d8c1f5ee6c58b3269991f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:56:37 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:56:37 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 23:00:59 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 23 Jul 2026 23:01:01 GMT
ENV GOSU_VERSION=1.19
# Thu, 23 Jul 2026 23:01:01 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 23 Jul 2026 23:01:28 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 23 Jul 2026 23:01:29 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 23 Jul 2026 23:01:29 GMT
ENV MYSQL_MAJOR=9.7
# Thu, 23 Jul 2026 23:01:29 GMT
ENV MYSQL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 23:01:29 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 23 Jul 2026 23:01:59 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 23 Jul 2026 23:01:59 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 23 Jul 2026 23:01:59 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 23:02:41 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 23 Jul 2026 23:02:41 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Jul 2026 23:02:41 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 23 Jul 2026 23:02:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Jul 2026 23:02:41 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 23 Jul 2026 23:02:41 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:30627cea5424c411bee6559e1aed4c4b977ceaab0f12695130c3825de516d2cc`  
		Last Modified: Thu, 23 Jul 2026 22:56:48 GMT  
		Size: 47.9 MB (47927752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:234be8523cd72e078cbe87180ca47afebce94ce3742f0ee3605ac25c749657a3`  
		Last Modified: Thu, 23 Jul 2026 23:03:13 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35c80c3f0cadcf7d1980dd5a8c8527c0d7425eac00e44b98cc4db8e11baa6b34`  
		Last Modified: Thu, 23 Jul 2026 23:03:13 GMT  
		Size: 783.6 KB (783562 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:718475825f6aa95f12cca1af84f19cd08bd86db578c24e8c7a8e5fb8410ad82c`  
		Last Modified: Thu, 23 Jul 2026 23:03:13 GMT  
		Size: 6.2 MB (6193245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a08e28acd68d0eeb8b2c468542cefe0039a5db8a08567e89c0fb2e2b4fe12f9`  
		Last Modified: Thu, 23 Jul 2026 23:03:13 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fab344c20702564cc80f8568716ff0c89e315eb3dc1bcb952f7876ead579784`  
		Last Modified: Thu, 23 Jul 2026 23:03:14 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fc0feac79eff00b6b60d0e7861d07d21541e7af66d2dc932d3f2d1ef005329b`  
		Last Modified: Thu, 23 Jul 2026 23:03:16 GMT  
		Size: 57.0 MB (56994496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bfe3c84c77064d6c2079dd56388882467d620d00ee852a362db9020f56d9475`  
		Last Modified: Thu, 23 Jul 2026 23:03:14 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ee3c7ac3aeb35755397c3f6773f0c9e055fe6d7f24b9e45f89839ed89d64eed`  
		Last Modified: Thu, 23 Jul 2026 23:03:18 GMT  
		Size: 158.9 MB (158932559 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71fecf9a0313a541a67befed2730494ebf5f41a129042ea6be48983015b144b0`  
		Last Modified: Thu, 23 Jul 2026 23:03:15 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9` - unknown; unknown

```console
$ docker pull mysql@sha256:acef6498ad7097a10658f1d65c4e55eec56543be09f1da1c9f38acc835dc456f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16834323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe9dc03903a3432a3acd30619e996e1d01087ce6a7c6e5cfa44b1f39578e5b41`

```dockerfile
```

-	Layers:
	-	`sha256:ebf48244f5b504fc3ccc4c2c19c26ba3ee066cdfd86414fc9a1ce34ae258faa0`  
		Last Modified: Thu, 23 Jul 2026 23:03:14 GMT  
		Size: 16.8 MB (16799215 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:58ddc8cbf91211c5691b00d60e15d9418e48915f73fe10aaa419be57baf80109`  
		Last Modified: Thu, 23 Jul 2026 23:03:13 GMT  
		Size: 35.1 KB (35108 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:67818b6f65e184dd1660f018cd0504d32101dd07855d4fcf395135d337c9a619
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.3 MB (267258221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76523493e38cb86bb386443d939c6c878aaf20c34f598765355a17b05fdd71fe`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:55:20 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:55:20 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 23:01:08 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 23 Jul 2026 23:01:10 GMT
ENV GOSU_VERSION=1.19
# Thu, 23 Jul 2026 23:01:10 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 23 Jul 2026 23:01:43 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 23 Jul 2026 23:01:44 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 23 Jul 2026 23:01:44 GMT
ENV MYSQL_MAJOR=9.7
# Thu, 23 Jul 2026 23:01:44 GMT
ENV MYSQL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 23:01:44 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 23 Jul 2026 23:02:21 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 23 Jul 2026 23:02:21 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 23 Jul 2026 23:02:21 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 23:03:08 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 23 Jul 2026 23:03:08 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Jul 2026 23:03:08 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 23 Jul 2026 23:03:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Jul 2026 23:03:08 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 23 Jul 2026 23:03:08 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c1a8d43326b89b25aff74efe983a017053ef32314f6332ba2cf4e76fcf4f2b09`  
		Last Modified: Thu, 23 Jul 2026 22:55:31 GMT  
		Size: 46.5 MB (46477905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d929fa47221a9fb68752358425c99b29f498e9cc1605186bb6777340fcabe207`  
		Last Modified: Thu, 23 Jul 2026 23:03:43 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b25acfb705b7060b4171aa38835f634b4667b874b3e1c320c10ccd20363a933`  
		Last Modified: Thu, 23 Jul 2026 23:03:43 GMT  
		Size: 737.5 KB (737522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4731afd3f174de446fdf71b8dc6c72852556058a438d522fae064d69381bf711`  
		Last Modified: Thu, 23 Jul 2026 23:03:43 GMT  
		Size: 5.8 MB (5822634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:daa7bd4f2adba84f8d86205bda55676b4232e7b75c0d02754437cccde2889285`  
		Last Modified: Thu, 23 Jul 2026 23:03:43 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8c58be44c7101fc88c19c8d10d457119276071c177c0cb89ae54bdc344b13a9`  
		Last Modified: Thu, 23 Jul 2026 23:03:44 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56eed86a3bfa1c6dc2a5b1238cc497e3e1210cdde96d2fb38feca7b669d29b47`  
		Last Modified: Thu, 23 Jul 2026 23:03:46 GMT  
		Size: 57.0 MB (57000390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a89ae229db9f80f7071a7f1e5a9e44342fb42e3eafd62ead00de1b42c4581193`  
		Last Modified: Thu, 23 Jul 2026 23:03:44 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6c3bc80bfe2b42ae0bc5bec6ced272b1d0916a5162ac752b9cda64cf9cc3f32`  
		Last Modified: Thu, 23 Jul 2026 23:03:48 GMT  
		Size: 157.2 MB (157210403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58607c4b8deb85125920fd8796c9a9983c860b7633886dc593b1a33dd3553155`  
		Last Modified: Thu, 23 Jul 2026 23:03:46 GMT  
		Size: 5.2 KB (5222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9` - unknown; unknown

```console
$ docker pull mysql@sha256:d06479e8b298ce138d4c222371fb912c36a32f4b96d0e3e736a630551f1a27b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb2cdce2ea4df7194773315282d107c3de47f1e56593cd587553fbcab5a97c91`

```dockerfile
```

-	Layers:
	-	`sha256:6cf7ac25ee1676d9c7e0430f0d71d296d355f5d571ab8b7540dd3ce121123343`  
		Last Modified: Thu, 23 Jul 2026 23:03:44 GMT  
		Size: 16.8 MB (16797687 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2b7166ac8d57053b7da7ef07841c62d232f0e26344644e72d9e2892809b8fe7f`  
		Last Modified: Thu, 23 Jul 2026 23:03:43 GMT  
		Size: 35.4 KB (35449 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9-oracle`

```console
$ docker pull mysql@sha256:cbade841779f1661300e705721f9d2ff159865cc7a8a291affbff43ac6ec7f1d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:b09034342b94a61117ccbf223a4c20f1eef060fcf11b6a721126a9a15286ea3b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.8 MB (270840982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d04ab00413e7110afbb8c8edfb07ef2599f3fe52641d8c1f5ee6c58b3269991f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:56:37 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:56:37 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 23:00:59 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 23 Jul 2026 23:01:01 GMT
ENV GOSU_VERSION=1.19
# Thu, 23 Jul 2026 23:01:01 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 23 Jul 2026 23:01:28 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 23 Jul 2026 23:01:29 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 23 Jul 2026 23:01:29 GMT
ENV MYSQL_MAJOR=9.7
# Thu, 23 Jul 2026 23:01:29 GMT
ENV MYSQL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 23:01:29 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 23 Jul 2026 23:01:59 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 23 Jul 2026 23:01:59 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 23 Jul 2026 23:01:59 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 23:02:41 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 23 Jul 2026 23:02:41 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Jul 2026 23:02:41 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 23 Jul 2026 23:02:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Jul 2026 23:02:41 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 23 Jul 2026 23:02:41 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:30627cea5424c411bee6559e1aed4c4b977ceaab0f12695130c3825de516d2cc`  
		Last Modified: Thu, 23 Jul 2026 22:56:48 GMT  
		Size: 47.9 MB (47927752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:234be8523cd72e078cbe87180ca47afebce94ce3742f0ee3605ac25c749657a3`  
		Last Modified: Thu, 23 Jul 2026 23:03:13 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35c80c3f0cadcf7d1980dd5a8c8527c0d7425eac00e44b98cc4db8e11baa6b34`  
		Last Modified: Thu, 23 Jul 2026 23:03:13 GMT  
		Size: 783.6 KB (783562 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:718475825f6aa95f12cca1af84f19cd08bd86db578c24e8c7a8e5fb8410ad82c`  
		Last Modified: Thu, 23 Jul 2026 23:03:13 GMT  
		Size: 6.2 MB (6193245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a08e28acd68d0eeb8b2c468542cefe0039a5db8a08567e89c0fb2e2b4fe12f9`  
		Last Modified: Thu, 23 Jul 2026 23:03:13 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fab344c20702564cc80f8568716ff0c89e315eb3dc1bcb952f7876ead579784`  
		Last Modified: Thu, 23 Jul 2026 23:03:14 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fc0feac79eff00b6b60d0e7861d07d21541e7af66d2dc932d3f2d1ef005329b`  
		Last Modified: Thu, 23 Jul 2026 23:03:16 GMT  
		Size: 57.0 MB (56994496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bfe3c84c77064d6c2079dd56388882467d620d00ee852a362db9020f56d9475`  
		Last Modified: Thu, 23 Jul 2026 23:03:14 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ee3c7ac3aeb35755397c3f6773f0c9e055fe6d7f24b9e45f89839ed89d64eed`  
		Last Modified: Thu, 23 Jul 2026 23:03:18 GMT  
		Size: 158.9 MB (158932559 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71fecf9a0313a541a67befed2730494ebf5f41a129042ea6be48983015b144b0`  
		Last Modified: Thu, 23 Jul 2026 23:03:15 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:acef6498ad7097a10658f1d65c4e55eec56543be09f1da1c9f38acc835dc456f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16834323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe9dc03903a3432a3acd30619e996e1d01087ce6a7c6e5cfa44b1f39578e5b41`

```dockerfile
```

-	Layers:
	-	`sha256:ebf48244f5b504fc3ccc4c2c19c26ba3ee066cdfd86414fc9a1ce34ae258faa0`  
		Last Modified: Thu, 23 Jul 2026 23:03:14 GMT  
		Size: 16.8 MB (16799215 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:58ddc8cbf91211c5691b00d60e15d9418e48915f73fe10aaa419be57baf80109`  
		Last Modified: Thu, 23 Jul 2026 23:03:13 GMT  
		Size: 35.1 KB (35108 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:67818b6f65e184dd1660f018cd0504d32101dd07855d4fcf395135d337c9a619
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.3 MB (267258221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76523493e38cb86bb386443d939c6c878aaf20c34f598765355a17b05fdd71fe`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:55:20 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:55:20 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 23:01:08 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 23 Jul 2026 23:01:10 GMT
ENV GOSU_VERSION=1.19
# Thu, 23 Jul 2026 23:01:10 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 23 Jul 2026 23:01:43 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 23 Jul 2026 23:01:44 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 23 Jul 2026 23:01:44 GMT
ENV MYSQL_MAJOR=9.7
# Thu, 23 Jul 2026 23:01:44 GMT
ENV MYSQL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 23:01:44 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 23 Jul 2026 23:02:21 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 23 Jul 2026 23:02:21 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 23 Jul 2026 23:02:21 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 23:03:08 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 23 Jul 2026 23:03:08 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Jul 2026 23:03:08 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 23 Jul 2026 23:03:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Jul 2026 23:03:08 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 23 Jul 2026 23:03:08 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c1a8d43326b89b25aff74efe983a017053ef32314f6332ba2cf4e76fcf4f2b09`  
		Last Modified: Thu, 23 Jul 2026 22:55:31 GMT  
		Size: 46.5 MB (46477905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d929fa47221a9fb68752358425c99b29f498e9cc1605186bb6777340fcabe207`  
		Last Modified: Thu, 23 Jul 2026 23:03:43 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b25acfb705b7060b4171aa38835f634b4667b874b3e1c320c10ccd20363a933`  
		Last Modified: Thu, 23 Jul 2026 23:03:43 GMT  
		Size: 737.5 KB (737522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4731afd3f174de446fdf71b8dc6c72852556058a438d522fae064d69381bf711`  
		Last Modified: Thu, 23 Jul 2026 23:03:43 GMT  
		Size: 5.8 MB (5822634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:daa7bd4f2adba84f8d86205bda55676b4232e7b75c0d02754437cccde2889285`  
		Last Modified: Thu, 23 Jul 2026 23:03:43 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8c58be44c7101fc88c19c8d10d457119276071c177c0cb89ae54bdc344b13a9`  
		Last Modified: Thu, 23 Jul 2026 23:03:44 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56eed86a3bfa1c6dc2a5b1238cc497e3e1210cdde96d2fb38feca7b669d29b47`  
		Last Modified: Thu, 23 Jul 2026 23:03:46 GMT  
		Size: 57.0 MB (57000390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a89ae229db9f80f7071a7f1e5a9e44342fb42e3eafd62ead00de1b42c4581193`  
		Last Modified: Thu, 23 Jul 2026 23:03:44 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6c3bc80bfe2b42ae0bc5bec6ced272b1d0916a5162ac752b9cda64cf9cc3f32`  
		Last Modified: Thu, 23 Jul 2026 23:03:48 GMT  
		Size: 157.2 MB (157210403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58607c4b8deb85125920fd8796c9a9983c860b7633886dc593b1a33dd3553155`  
		Last Modified: Thu, 23 Jul 2026 23:03:46 GMT  
		Size: 5.2 KB (5222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:d06479e8b298ce138d4c222371fb912c36a32f4b96d0e3e736a630551f1a27b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb2cdce2ea4df7194773315282d107c3de47f1e56593cd587553fbcab5a97c91`

```dockerfile
```

-	Layers:
	-	`sha256:6cf7ac25ee1676d9c7e0430f0d71d296d355f5d571ab8b7540dd3ce121123343`  
		Last Modified: Thu, 23 Jul 2026 23:03:44 GMT  
		Size: 16.8 MB (16797687 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2b7166ac8d57053b7da7ef07841c62d232f0e26344644e72d9e2892809b8fe7f`  
		Last Modified: Thu, 23 Jul 2026 23:03:43 GMT  
		Size: 35.4 KB (35449 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9-oraclelinux9`

```console
$ docker pull mysql@sha256:cbade841779f1661300e705721f9d2ff159865cc7a8a291affbff43ac6ec7f1d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:b09034342b94a61117ccbf223a4c20f1eef060fcf11b6a721126a9a15286ea3b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.8 MB (270840982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d04ab00413e7110afbb8c8edfb07ef2599f3fe52641d8c1f5ee6c58b3269991f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:56:37 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:56:37 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 23:00:59 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 23 Jul 2026 23:01:01 GMT
ENV GOSU_VERSION=1.19
# Thu, 23 Jul 2026 23:01:01 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 23 Jul 2026 23:01:28 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 23 Jul 2026 23:01:29 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 23 Jul 2026 23:01:29 GMT
ENV MYSQL_MAJOR=9.7
# Thu, 23 Jul 2026 23:01:29 GMT
ENV MYSQL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 23:01:29 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 23 Jul 2026 23:01:59 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 23 Jul 2026 23:01:59 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 23 Jul 2026 23:01:59 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 23:02:41 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 23 Jul 2026 23:02:41 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Jul 2026 23:02:41 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 23 Jul 2026 23:02:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Jul 2026 23:02:41 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 23 Jul 2026 23:02:41 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:30627cea5424c411bee6559e1aed4c4b977ceaab0f12695130c3825de516d2cc`  
		Last Modified: Thu, 23 Jul 2026 22:56:48 GMT  
		Size: 47.9 MB (47927752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:234be8523cd72e078cbe87180ca47afebce94ce3742f0ee3605ac25c749657a3`  
		Last Modified: Thu, 23 Jul 2026 23:03:13 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35c80c3f0cadcf7d1980dd5a8c8527c0d7425eac00e44b98cc4db8e11baa6b34`  
		Last Modified: Thu, 23 Jul 2026 23:03:13 GMT  
		Size: 783.6 KB (783562 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:718475825f6aa95f12cca1af84f19cd08bd86db578c24e8c7a8e5fb8410ad82c`  
		Last Modified: Thu, 23 Jul 2026 23:03:13 GMT  
		Size: 6.2 MB (6193245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a08e28acd68d0eeb8b2c468542cefe0039a5db8a08567e89c0fb2e2b4fe12f9`  
		Last Modified: Thu, 23 Jul 2026 23:03:13 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fab344c20702564cc80f8568716ff0c89e315eb3dc1bcb952f7876ead579784`  
		Last Modified: Thu, 23 Jul 2026 23:03:14 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fc0feac79eff00b6b60d0e7861d07d21541e7af66d2dc932d3f2d1ef005329b`  
		Last Modified: Thu, 23 Jul 2026 23:03:16 GMT  
		Size: 57.0 MB (56994496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bfe3c84c77064d6c2079dd56388882467d620d00ee852a362db9020f56d9475`  
		Last Modified: Thu, 23 Jul 2026 23:03:14 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ee3c7ac3aeb35755397c3f6773f0c9e055fe6d7f24b9e45f89839ed89d64eed`  
		Last Modified: Thu, 23 Jul 2026 23:03:18 GMT  
		Size: 158.9 MB (158932559 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71fecf9a0313a541a67befed2730494ebf5f41a129042ea6be48983015b144b0`  
		Last Modified: Thu, 23 Jul 2026 23:03:15 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:acef6498ad7097a10658f1d65c4e55eec56543be09f1da1c9f38acc835dc456f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16834323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe9dc03903a3432a3acd30619e996e1d01087ce6a7c6e5cfa44b1f39578e5b41`

```dockerfile
```

-	Layers:
	-	`sha256:ebf48244f5b504fc3ccc4c2c19c26ba3ee066cdfd86414fc9a1ce34ae258faa0`  
		Last Modified: Thu, 23 Jul 2026 23:03:14 GMT  
		Size: 16.8 MB (16799215 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:58ddc8cbf91211c5691b00d60e15d9418e48915f73fe10aaa419be57baf80109`  
		Last Modified: Thu, 23 Jul 2026 23:03:13 GMT  
		Size: 35.1 KB (35108 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:67818b6f65e184dd1660f018cd0504d32101dd07855d4fcf395135d337c9a619
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.3 MB (267258221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76523493e38cb86bb386443d939c6c878aaf20c34f598765355a17b05fdd71fe`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:55:20 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:55:20 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 23:01:08 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 23 Jul 2026 23:01:10 GMT
ENV GOSU_VERSION=1.19
# Thu, 23 Jul 2026 23:01:10 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 23 Jul 2026 23:01:43 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 23 Jul 2026 23:01:44 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 23 Jul 2026 23:01:44 GMT
ENV MYSQL_MAJOR=9.7
# Thu, 23 Jul 2026 23:01:44 GMT
ENV MYSQL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 23:01:44 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 23 Jul 2026 23:02:21 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 23 Jul 2026 23:02:21 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 23 Jul 2026 23:02:21 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 23:03:08 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 23 Jul 2026 23:03:08 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Jul 2026 23:03:08 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 23 Jul 2026 23:03:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Jul 2026 23:03:08 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 23 Jul 2026 23:03:08 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c1a8d43326b89b25aff74efe983a017053ef32314f6332ba2cf4e76fcf4f2b09`  
		Last Modified: Thu, 23 Jul 2026 22:55:31 GMT  
		Size: 46.5 MB (46477905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d929fa47221a9fb68752358425c99b29f498e9cc1605186bb6777340fcabe207`  
		Last Modified: Thu, 23 Jul 2026 23:03:43 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b25acfb705b7060b4171aa38835f634b4667b874b3e1c320c10ccd20363a933`  
		Last Modified: Thu, 23 Jul 2026 23:03:43 GMT  
		Size: 737.5 KB (737522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4731afd3f174de446fdf71b8dc6c72852556058a438d522fae064d69381bf711`  
		Last Modified: Thu, 23 Jul 2026 23:03:43 GMT  
		Size: 5.8 MB (5822634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:daa7bd4f2adba84f8d86205bda55676b4232e7b75c0d02754437cccde2889285`  
		Last Modified: Thu, 23 Jul 2026 23:03:43 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8c58be44c7101fc88c19c8d10d457119276071c177c0cb89ae54bdc344b13a9`  
		Last Modified: Thu, 23 Jul 2026 23:03:44 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56eed86a3bfa1c6dc2a5b1238cc497e3e1210cdde96d2fb38feca7b669d29b47`  
		Last Modified: Thu, 23 Jul 2026 23:03:46 GMT  
		Size: 57.0 MB (57000390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a89ae229db9f80f7071a7f1e5a9e44342fb42e3eafd62ead00de1b42c4581193`  
		Last Modified: Thu, 23 Jul 2026 23:03:44 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6c3bc80bfe2b42ae0bc5bec6ced272b1d0916a5162ac752b9cda64cf9cc3f32`  
		Last Modified: Thu, 23 Jul 2026 23:03:48 GMT  
		Size: 157.2 MB (157210403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58607c4b8deb85125920fd8796c9a9983c860b7633886dc593b1a33dd3553155`  
		Last Modified: Thu, 23 Jul 2026 23:03:46 GMT  
		Size: 5.2 KB (5222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:d06479e8b298ce138d4c222371fb912c36a32f4b96d0e3e736a630551f1a27b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb2cdce2ea4df7194773315282d107c3de47f1e56593cd587553fbcab5a97c91`

```dockerfile
```

-	Layers:
	-	`sha256:6cf7ac25ee1676d9c7e0430f0d71d296d355f5d571ab8b7540dd3ce121123343`  
		Last Modified: Thu, 23 Jul 2026 23:03:44 GMT  
		Size: 16.8 MB (16797687 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2b7166ac8d57053b7da7ef07841c62d232f0e26344644e72d9e2892809b8fe7f`  
		Last Modified: Thu, 23 Jul 2026 23:03:43 GMT  
		Size: 35.4 KB (35449 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9.7`

```console
$ docker pull mysql@sha256:cbade841779f1661300e705721f9d2ff159865cc7a8a291affbff43ac6ec7f1d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9.7` - linux; amd64

```console
$ docker pull mysql@sha256:b09034342b94a61117ccbf223a4c20f1eef060fcf11b6a721126a9a15286ea3b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.8 MB (270840982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d04ab00413e7110afbb8c8edfb07ef2599f3fe52641d8c1f5ee6c58b3269991f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:56:37 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:56:37 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 23:00:59 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 23 Jul 2026 23:01:01 GMT
ENV GOSU_VERSION=1.19
# Thu, 23 Jul 2026 23:01:01 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 23 Jul 2026 23:01:28 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 23 Jul 2026 23:01:29 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 23 Jul 2026 23:01:29 GMT
ENV MYSQL_MAJOR=9.7
# Thu, 23 Jul 2026 23:01:29 GMT
ENV MYSQL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 23:01:29 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 23 Jul 2026 23:01:59 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 23 Jul 2026 23:01:59 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 23 Jul 2026 23:01:59 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 23:02:41 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 23 Jul 2026 23:02:41 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Jul 2026 23:02:41 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 23 Jul 2026 23:02:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Jul 2026 23:02:41 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 23 Jul 2026 23:02:41 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:30627cea5424c411bee6559e1aed4c4b977ceaab0f12695130c3825de516d2cc`  
		Last Modified: Thu, 23 Jul 2026 22:56:48 GMT  
		Size: 47.9 MB (47927752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:234be8523cd72e078cbe87180ca47afebce94ce3742f0ee3605ac25c749657a3`  
		Last Modified: Thu, 23 Jul 2026 23:03:13 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35c80c3f0cadcf7d1980dd5a8c8527c0d7425eac00e44b98cc4db8e11baa6b34`  
		Last Modified: Thu, 23 Jul 2026 23:03:13 GMT  
		Size: 783.6 KB (783562 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:718475825f6aa95f12cca1af84f19cd08bd86db578c24e8c7a8e5fb8410ad82c`  
		Last Modified: Thu, 23 Jul 2026 23:03:13 GMT  
		Size: 6.2 MB (6193245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a08e28acd68d0eeb8b2c468542cefe0039a5db8a08567e89c0fb2e2b4fe12f9`  
		Last Modified: Thu, 23 Jul 2026 23:03:13 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fab344c20702564cc80f8568716ff0c89e315eb3dc1bcb952f7876ead579784`  
		Last Modified: Thu, 23 Jul 2026 23:03:14 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fc0feac79eff00b6b60d0e7861d07d21541e7af66d2dc932d3f2d1ef005329b`  
		Last Modified: Thu, 23 Jul 2026 23:03:16 GMT  
		Size: 57.0 MB (56994496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bfe3c84c77064d6c2079dd56388882467d620d00ee852a362db9020f56d9475`  
		Last Modified: Thu, 23 Jul 2026 23:03:14 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ee3c7ac3aeb35755397c3f6773f0c9e055fe6d7f24b9e45f89839ed89d64eed`  
		Last Modified: Thu, 23 Jul 2026 23:03:18 GMT  
		Size: 158.9 MB (158932559 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71fecf9a0313a541a67befed2730494ebf5f41a129042ea6be48983015b144b0`  
		Last Modified: Thu, 23 Jul 2026 23:03:15 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7` - unknown; unknown

```console
$ docker pull mysql@sha256:acef6498ad7097a10658f1d65c4e55eec56543be09f1da1c9f38acc835dc456f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16834323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe9dc03903a3432a3acd30619e996e1d01087ce6a7c6e5cfa44b1f39578e5b41`

```dockerfile
```

-	Layers:
	-	`sha256:ebf48244f5b504fc3ccc4c2c19c26ba3ee066cdfd86414fc9a1ce34ae258faa0`  
		Last Modified: Thu, 23 Jul 2026 23:03:14 GMT  
		Size: 16.8 MB (16799215 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:58ddc8cbf91211c5691b00d60e15d9418e48915f73fe10aaa419be57baf80109`  
		Last Modified: Thu, 23 Jul 2026 23:03:13 GMT  
		Size: 35.1 KB (35108 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9.7` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:67818b6f65e184dd1660f018cd0504d32101dd07855d4fcf395135d337c9a619
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.3 MB (267258221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76523493e38cb86bb386443d939c6c878aaf20c34f598765355a17b05fdd71fe`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:55:20 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:55:20 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 23:01:08 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 23 Jul 2026 23:01:10 GMT
ENV GOSU_VERSION=1.19
# Thu, 23 Jul 2026 23:01:10 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 23 Jul 2026 23:01:43 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 23 Jul 2026 23:01:44 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 23 Jul 2026 23:01:44 GMT
ENV MYSQL_MAJOR=9.7
# Thu, 23 Jul 2026 23:01:44 GMT
ENV MYSQL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 23:01:44 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 23 Jul 2026 23:02:21 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 23 Jul 2026 23:02:21 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 23 Jul 2026 23:02:21 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 23:03:08 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 23 Jul 2026 23:03:08 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Jul 2026 23:03:08 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 23 Jul 2026 23:03:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Jul 2026 23:03:08 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 23 Jul 2026 23:03:08 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c1a8d43326b89b25aff74efe983a017053ef32314f6332ba2cf4e76fcf4f2b09`  
		Last Modified: Thu, 23 Jul 2026 22:55:31 GMT  
		Size: 46.5 MB (46477905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d929fa47221a9fb68752358425c99b29f498e9cc1605186bb6777340fcabe207`  
		Last Modified: Thu, 23 Jul 2026 23:03:43 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b25acfb705b7060b4171aa38835f634b4667b874b3e1c320c10ccd20363a933`  
		Last Modified: Thu, 23 Jul 2026 23:03:43 GMT  
		Size: 737.5 KB (737522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4731afd3f174de446fdf71b8dc6c72852556058a438d522fae064d69381bf711`  
		Last Modified: Thu, 23 Jul 2026 23:03:43 GMT  
		Size: 5.8 MB (5822634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:daa7bd4f2adba84f8d86205bda55676b4232e7b75c0d02754437cccde2889285`  
		Last Modified: Thu, 23 Jul 2026 23:03:43 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8c58be44c7101fc88c19c8d10d457119276071c177c0cb89ae54bdc344b13a9`  
		Last Modified: Thu, 23 Jul 2026 23:03:44 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56eed86a3bfa1c6dc2a5b1238cc497e3e1210cdde96d2fb38feca7b669d29b47`  
		Last Modified: Thu, 23 Jul 2026 23:03:46 GMT  
		Size: 57.0 MB (57000390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a89ae229db9f80f7071a7f1e5a9e44342fb42e3eafd62ead00de1b42c4581193`  
		Last Modified: Thu, 23 Jul 2026 23:03:44 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6c3bc80bfe2b42ae0bc5bec6ced272b1d0916a5162ac752b9cda64cf9cc3f32`  
		Last Modified: Thu, 23 Jul 2026 23:03:48 GMT  
		Size: 157.2 MB (157210403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58607c4b8deb85125920fd8796c9a9983c860b7633886dc593b1a33dd3553155`  
		Last Modified: Thu, 23 Jul 2026 23:03:46 GMT  
		Size: 5.2 KB (5222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7` - unknown; unknown

```console
$ docker pull mysql@sha256:d06479e8b298ce138d4c222371fb912c36a32f4b96d0e3e736a630551f1a27b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb2cdce2ea4df7194773315282d107c3de47f1e56593cd587553fbcab5a97c91`

```dockerfile
```

-	Layers:
	-	`sha256:6cf7ac25ee1676d9c7e0430f0d71d296d355f5d571ab8b7540dd3ce121123343`  
		Last Modified: Thu, 23 Jul 2026 23:03:44 GMT  
		Size: 16.8 MB (16797687 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2b7166ac8d57053b7da7ef07841c62d232f0e26344644e72d9e2892809b8fe7f`  
		Last Modified: Thu, 23 Jul 2026 23:03:43 GMT  
		Size: 35.4 KB (35449 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9.7-oracle`

```console
$ docker pull mysql@sha256:cbade841779f1661300e705721f9d2ff159865cc7a8a291affbff43ac6ec7f1d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9.7-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:b09034342b94a61117ccbf223a4c20f1eef060fcf11b6a721126a9a15286ea3b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.8 MB (270840982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d04ab00413e7110afbb8c8edfb07ef2599f3fe52641d8c1f5ee6c58b3269991f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:56:37 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:56:37 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 23:00:59 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 23 Jul 2026 23:01:01 GMT
ENV GOSU_VERSION=1.19
# Thu, 23 Jul 2026 23:01:01 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 23 Jul 2026 23:01:28 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 23 Jul 2026 23:01:29 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 23 Jul 2026 23:01:29 GMT
ENV MYSQL_MAJOR=9.7
# Thu, 23 Jul 2026 23:01:29 GMT
ENV MYSQL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 23:01:29 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 23 Jul 2026 23:01:59 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 23 Jul 2026 23:01:59 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 23 Jul 2026 23:01:59 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 23:02:41 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 23 Jul 2026 23:02:41 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Jul 2026 23:02:41 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 23 Jul 2026 23:02:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Jul 2026 23:02:41 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 23 Jul 2026 23:02:41 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:30627cea5424c411bee6559e1aed4c4b977ceaab0f12695130c3825de516d2cc`  
		Last Modified: Thu, 23 Jul 2026 22:56:48 GMT  
		Size: 47.9 MB (47927752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:234be8523cd72e078cbe87180ca47afebce94ce3742f0ee3605ac25c749657a3`  
		Last Modified: Thu, 23 Jul 2026 23:03:13 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35c80c3f0cadcf7d1980dd5a8c8527c0d7425eac00e44b98cc4db8e11baa6b34`  
		Last Modified: Thu, 23 Jul 2026 23:03:13 GMT  
		Size: 783.6 KB (783562 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:718475825f6aa95f12cca1af84f19cd08bd86db578c24e8c7a8e5fb8410ad82c`  
		Last Modified: Thu, 23 Jul 2026 23:03:13 GMT  
		Size: 6.2 MB (6193245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a08e28acd68d0eeb8b2c468542cefe0039a5db8a08567e89c0fb2e2b4fe12f9`  
		Last Modified: Thu, 23 Jul 2026 23:03:13 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fab344c20702564cc80f8568716ff0c89e315eb3dc1bcb952f7876ead579784`  
		Last Modified: Thu, 23 Jul 2026 23:03:14 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fc0feac79eff00b6b60d0e7861d07d21541e7af66d2dc932d3f2d1ef005329b`  
		Last Modified: Thu, 23 Jul 2026 23:03:16 GMT  
		Size: 57.0 MB (56994496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bfe3c84c77064d6c2079dd56388882467d620d00ee852a362db9020f56d9475`  
		Last Modified: Thu, 23 Jul 2026 23:03:14 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ee3c7ac3aeb35755397c3f6773f0c9e055fe6d7f24b9e45f89839ed89d64eed`  
		Last Modified: Thu, 23 Jul 2026 23:03:18 GMT  
		Size: 158.9 MB (158932559 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71fecf9a0313a541a67befed2730494ebf5f41a129042ea6be48983015b144b0`  
		Last Modified: Thu, 23 Jul 2026 23:03:15 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:acef6498ad7097a10658f1d65c4e55eec56543be09f1da1c9f38acc835dc456f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16834323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe9dc03903a3432a3acd30619e996e1d01087ce6a7c6e5cfa44b1f39578e5b41`

```dockerfile
```

-	Layers:
	-	`sha256:ebf48244f5b504fc3ccc4c2c19c26ba3ee066cdfd86414fc9a1ce34ae258faa0`  
		Last Modified: Thu, 23 Jul 2026 23:03:14 GMT  
		Size: 16.8 MB (16799215 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:58ddc8cbf91211c5691b00d60e15d9418e48915f73fe10aaa419be57baf80109`  
		Last Modified: Thu, 23 Jul 2026 23:03:13 GMT  
		Size: 35.1 KB (35108 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9.7-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:67818b6f65e184dd1660f018cd0504d32101dd07855d4fcf395135d337c9a619
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.3 MB (267258221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76523493e38cb86bb386443d939c6c878aaf20c34f598765355a17b05fdd71fe`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:55:20 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:55:20 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 23:01:08 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 23 Jul 2026 23:01:10 GMT
ENV GOSU_VERSION=1.19
# Thu, 23 Jul 2026 23:01:10 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 23 Jul 2026 23:01:43 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 23 Jul 2026 23:01:44 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 23 Jul 2026 23:01:44 GMT
ENV MYSQL_MAJOR=9.7
# Thu, 23 Jul 2026 23:01:44 GMT
ENV MYSQL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 23:01:44 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 23 Jul 2026 23:02:21 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 23 Jul 2026 23:02:21 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 23 Jul 2026 23:02:21 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 23:03:08 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 23 Jul 2026 23:03:08 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Jul 2026 23:03:08 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 23 Jul 2026 23:03:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Jul 2026 23:03:08 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 23 Jul 2026 23:03:08 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c1a8d43326b89b25aff74efe983a017053ef32314f6332ba2cf4e76fcf4f2b09`  
		Last Modified: Thu, 23 Jul 2026 22:55:31 GMT  
		Size: 46.5 MB (46477905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d929fa47221a9fb68752358425c99b29f498e9cc1605186bb6777340fcabe207`  
		Last Modified: Thu, 23 Jul 2026 23:03:43 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b25acfb705b7060b4171aa38835f634b4667b874b3e1c320c10ccd20363a933`  
		Last Modified: Thu, 23 Jul 2026 23:03:43 GMT  
		Size: 737.5 KB (737522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4731afd3f174de446fdf71b8dc6c72852556058a438d522fae064d69381bf711`  
		Last Modified: Thu, 23 Jul 2026 23:03:43 GMT  
		Size: 5.8 MB (5822634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:daa7bd4f2adba84f8d86205bda55676b4232e7b75c0d02754437cccde2889285`  
		Last Modified: Thu, 23 Jul 2026 23:03:43 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8c58be44c7101fc88c19c8d10d457119276071c177c0cb89ae54bdc344b13a9`  
		Last Modified: Thu, 23 Jul 2026 23:03:44 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56eed86a3bfa1c6dc2a5b1238cc497e3e1210cdde96d2fb38feca7b669d29b47`  
		Last Modified: Thu, 23 Jul 2026 23:03:46 GMT  
		Size: 57.0 MB (57000390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a89ae229db9f80f7071a7f1e5a9e44342fb42e3eafd62ead00de1b42c4581193`  
		Last Modified: Thu, 23 Jul 2026 23:03:44 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6c3bc80bfe2b42ae0bc5bec6ced272b1d0916a5162ac752b9cda64cf9cc3f32`  
		Last Modified: Thu, 23 Jul 2026 23:03:48 GMT  
		Size: 157.2 MB (157210403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58607c4b8deb85125920fd8796c9a9983c860b7633886dc593b1a33dd3553155`  
		Last Modified: Thu, 23 Jul 2026 23:03:46 GMT  
		Size: 5.2 KB (5222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:d06479e8b298ce138d4c222371fb912c36a32f4b96d0e3e736a630551f1a27b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb2cdce2ea4df7194773315282d107c3de47f1e56593cd587553fbcab5a97c91`

```dockerfile
```

-	Layers:
	-	`sha256:6cf7ac25ee1676d9c7e0430f0d71d296d355f5d571ab8b7540dd3ce121123343`  
		Last Modified: Thu, 23 Jul 2026 23:03:44 GMT  
		Size: 16.8 MB (16797687 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2b7166ac8d57053b7da7ef07841c62d232f0e26344644e72d9e2892809b8fe7f`  
		Last Modified: Thu, 23 Jul 2026 23:03:43 GMT  
		Size: 35.4 KB (35449 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9.7-oraclelinux9`

```console
$ docker pull mysql@sha256:cbade841779f1661300e705721f9d2ff159865cc7a8a291affbff43ac6ec7f1d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9.7-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:b09034342b94a61117ccbf223a4c20f1eef060fcf11b6a721126a9a15286ea3b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.8 MB (270840982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d04ab00413e7110afbb8c8edfb07ef2599f3fe52641d8c1f5ee6c58b3269991f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:56:37 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:56:37 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 23:00:59 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 23 Jul 2026 23:01:01 GMT
ENV GOSU_VERSION=1.19
# Thu, 23 Jul 2026 23:01:01 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 23 Jul 2026 23:01:28 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 23 Jul 2026 23:01:29 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 23 Jul 2026 23:01:29 GMT
ENV MYSQL_MAJOR=9.7
# Thu, 23 Jul 2026 23:01:29 GMT
ENV MYSQL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 23:01:29 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 23 Jul 2026 23:01:59 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 23 Jul 2026 23:01:59 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 23 Jul 2026 23:01:59 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 23:02:41 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 23 Jul 2026 23:02:41 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Jul 2026 23:02:41 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 23 Jul 2026 23:02:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Jul 2026 23:02:41 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 23 Jul 2026 23:02:41 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:30627cea5424c411bee6559e1aed4c4b977ceaab0f12695130c3825de516d2cc`  
		Last Modified: Thu, 23 Jul 2026 22:56:48 GMT  
		Size: 47.9 MB (47927752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:234be8523cd72e078cbe87180ca47afebce94ce3742f0ee3605ac25c749657a3`  
		Last Modified: Thu, 23 Jul 2026 23:03:13 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35c80c3f0cadcf7d1980dd5a8c8527c0d7425eac00e44b98cc4db8e11baa6b34`  
		Last Modified: Thu, 23 Jul 2026 23:03:13 GMT  
		Size: 783.6 KB (783562 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:718475825f6aa95f12cca1af84f19cd08bd86db578c24e8c7a8e5fb8410ad82c`  
		Last Modified: Thu, 23 Jul 2026 23:03:13 GMT  
		Size: 6.2 MB (6193245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a08e28acd68d0eeb8b2c468542cefe0039a5db8a08567e89c0fb2e2b4fe12f9`  
		Last Modified: Thu, 23 Jul 2026 23:03:13 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fab344c20702564cc80f8568716ff0c89e315eb3dc1bcb952f7876ead579784`  
		Last Modified: Thu, 23 Jul 2026 23:03:14 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fc0feac79eff00b6b60d0e7861d07d21541e7af66d2dc932d3f2d1ef005329b`  
		Last Modified: Thu, 23 Jul 2026 23:03:16 GMT  
		Size: 57.0 MB (56994496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bfe3c84c77064d6c2079dd56388882467d620d00ee852a362db9020f56d9475`  
		Last Modified: Thu, 23 Jul 2026 23:03:14 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ee3c7ac3aeb35755397c3f6773f0c9e055fe6d7f24b9e45f89839ed89d64eed`  
		Last Modified: Thu, 23 Jul 2026 23:03:18 GMT  
		Size: 158.9 MB (158932559 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71fecf9a0313a541a67befed2730494ebf5f41a129042ea6be48983015b144b0`  
		Last Modified: Thu, 23 Jul 2026 23:03:15 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:acef6498ad7097a10658f1d65c4e55eec56543be09f1da1c9f38acc835dc456f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16834323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe9dc03903a3432a3acd30619e996e1d01087ce6a7c6e5cfa44b1f39578e5b41`

```dockerfile
```

-	Layers:
	-	`sha256:ebf48244f5b504fc3ccc4c2c19c26ba3ee066cdfd86414fc9a1ce34ae258faa0`  
		Last Modified: Thu, 23 Jul 2026 23:03:14 GMT  
		Size: 16.8 MB (16799215 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:58ddc8cbf91211c5691b00d60e15d9418e48915f73fe10aaa419be57baf80109`  
		Last Modified: Thu, 23 Jul 2026 23:03:13 GMT  
		Size: 35.1 KB (35108 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9.7-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:67818b6f65e184dd1660f018cd0504d32101dd07855d4fcf395135d337c9a619
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.3 MB (267258221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76523493e38cb86bb386443d939c6c878aaf20c34f598765355a17b05fdd71fe`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:55:20 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:55:20 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 23:01:08 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 23 Jul 2026 23:01:10 GMT
ENV GOSU_VERSION=1.19
# Thu, 23 Jul 2026 23:01:10 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 23 Jul 2026 23:01:43 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 23 Jul 2026 23:01:44 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 23 Jul 2026 23:01:44 GMT
ENV MYSQL_MAJOR=9.7
# Thu, 23 Jul 2026 23:01:44 GMT
ENV MYSQL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 23:01:44 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 23 Jul 2026 23:02:21 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 23 Jul 2026 23:02:21 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 23 Jul 2026 23:02:21 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 23:03:08 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 23 Jul 2026 23:03:08 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Jul 2026 23:03:08 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 23 Jul 2026 23:03:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Jul 2026 23:03:08 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 23 Jul 2026 23:03:08 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c1a8d43326b89b25aff74efe983a017053ef32314f6332ba2cf4e76fcf4f2b09`  
		Last Modified: Thu, 23 Jul 2026 22:55:31 GMT  
		Size: 46.5 MB (46477905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d929fa47221a9fb68752358425c99b29f498e9cc1605186bb6777340fcabe207`  
		Last Modified: Thu, 23 Jul 2026 23:03:43 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b25acfb705b7060b4171aa38835f634b4667b874b3e1c320c10ccd20363a933`  
		Last Modified: Thu, 23 Jul 2026 23:03:43 GMT  
		Size: 737.5 KB (737522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4731afd3f174de446fdf71b8dc6c72852556058a438d522fae064d69381bf711`  
		Last Modified: Thu, 23 Jul 2026 23:03:43 GMT  
		Size: 5.8 MB (5822634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:daa7bd4f2adba84f8d86205bda55676b4232e7b75c0d02754437cccde2889285`  
		Last Modified: Thu, 23 Jul 2026 23:03:43 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8c58be44c7101fc88c19c8d10d457119276071c177c0cb89ae54bdc344b13a9`  
		Last Modified: Thu, 23 Jul 2026 23:03:44 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56eed86a3bfa1c6dc2a5b1238cc497e3e1210cdde96d2fb38feca7b669d29b47`  
		Last Modified: Thu, 23 Jul 2026 23:03:46 GMT  
		Size: 57.0 MB (57000390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a89ae229db9f80f7071a7f1e5a9e44342fb42e3eafd62ead00de1b42c4581193`  
		Last Modified: Thu, 23 Jul 2026 23:03:44 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6c3bc80bfe2b42ae0bc5bec6ced272b1d0916a5162ac752b9cda64cf9cc3f32`  
		Last Modified: Thu, 23 Jul 2026 23:03:48 GMT  
		Size: 157.2 MB (157210403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58607c4b8deb85125920fd8796c9a9983c860b7633886dc593b1a33dd3553155`  
		Last Modified: Thu, 23 Jul 2026 23:03:46 GMT  
		Size: 5.2 KB (5222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:d06479e8b298ce138d4c222371fb912c36a32f4b96d0e3e736a630551f1a27b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb2cdce2ea4df7194773315282d107c3de47f1e56593cd587553fbcab5a97c91`

```dockerfile
```

-	Layers:
	-	`sha256:6cf7ac25ee1676d9c7e0430f0d71d296d355f5d571ab8b7540dd3ce121123343`  
		Last Modified: Thu, 23 Jul 2026 23:03:44 GMT  
		Size: 16.8 MB (16797687 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2b7166ac8d57053b7da7ef07841c62d232f0e26344644e72d9e2892809b8fe7f`  
		Last Modified: Thu, 23 Jul 2026 23:03:43 GMT  
		Size: 35.4 KB (35449 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9.7.1`

```console
$ docker pull mysql@sha256:cbade841779f1661300e705721f9d2ff159865cc7a8a291affbff43ac6ec7f1d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9.7.1` - linux; amd64

```console
$ docker pull mysql@sha256:b09034342b94a61117ccbf223a4c20f1eef060fcf11b6a721126a9a15286ea3b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.8 MB (270840982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d04ab00413e7110afbb8c8edfb07ef2599f3fe52641d8c1f5ee6c58b3269991f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:56:37 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:56:37 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 23:00:59 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 23 Jul 2026 23:01:01 GMT
ENV GOSU_VERSION=1.19
# Thu, 23 Jul 2026 23:01:01 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 23 Jul 2026 23:01:28 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 23 Jul 2026 23:01:29 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 23 Jul 2026 23:01:29 GMT
ENV MYSQL_MAJOR=9.7
# Thu, 23 Jul 2026 23:01:29 GMT
ENV MYSQL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 23:01:29 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 23 Jul 2026 23:01:59 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 23 Jul 2026 23:01:59 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 23 Jul 2026 23:01:59 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 23:02:41 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 23 Jul 2026 23:02:41 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Jul 2026 23:02:41 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 23 Jul 2026 23:02:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Jul 2026 23:02:41 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 23 Jul 2026 23:02:41 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:30627cea5424c411bee6559e1aed4c4b977ceaab0f12695130c3825de516d2cc`  
		Last Modified: Thu, 23 Jul 2026 22:56:48 GMT  
		Size: 47.9 MB (47927752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:234be8523cd72e078cbe87180ca47afebce94ce3742f0ee3605ac25c749657a3`  
		Last Modified: Thu, 23 Jul 2026 23:03:13 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35c80c3f0cadcf7d1980dd5a8c8527c0d7425eac00e44b98cc4db8e11baa6b34`  
		Last Modified: Thu, 23 Jul 2026 23:03:13 GMT  
		Size: 783.6 KB (783562 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:718475825f6aa95f12cca1af84f19cd08bd86db578c24e8c7a8e5fb8410ad82c`  
		Last Modified: Thu, 23 Jul 2026 23:03:13 GMT  
		Size: 6.2 MB (6193245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a08e28acd68d0eeb8b2c468542cefe0039a5db8a08567e89c0fb2e2b4fe12f9`  
		Last Modified: Thu, 23 Jul 2026 23:03:13 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fab344c20702564cc80f8568716ff0c89e315eb3dc1bcb952f7876ead579784`  
		Last Modified: Thu, 23 Jul 2026 23:03:14 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fc0feac79eff00b6b60d0e7861d07d21541e7af66d2dc932d3f2d1ef005329b`  
		Last Modified: Thu, 23 Jul 2026 23:03:16 GMT  
		Size: 57.0 MB (56994496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bfe3c84c77064d6c2079dd56388882467d620d00ee852a362db9020f56d9475`  
		Last Modified: Thu, 23 Jul 2026 23:03:14 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ee3c7ac3aeb35755397c3f6773f0c9e055fe6d7f24b9e45f89839ed89d64eed`  
		Last Modified: Thu, 23 Jul 2026 23:03:18 GMT  
		Size: 158.9 MB (158932559 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71fecf9a0313a541a67befed2730494ebf5f41a129042ea6be48983015b144b0`  
		Last Modified: Thu, 23 Jul 2026 23:03:15 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7.1` - unknown; unknown

```console
$ docker pull mysql@sha256:acef6498ad7097a10658f1d65c4e55eec56543be09f1da1c9f38acc835dc456f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16834323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe9dc03903a3432a3acd30619e996e1d01087ce6a7c6e5cfa44b1f39578e5b41`

```dockerfile
```

-	Layers:
	-	`sha256:ebf48244f5b504fc3ccc4c2c19c26ba3ee066cdfd86414fc9a1ce34ae258faa0`  
		Last Modified: Thu, 23 Jul 2026 23:03:14 GMT  
		Size: 16.8 MB (16799215 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:58ddc8cbf91211c5691b00d60e15d9418e48915f73fe10aaa419be57baf80109`  
		Last Modified: Thu, 23 Jul 2026 23:03:13 GMT  
		Size: 35.1 KB (35108 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9.7.1` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:67818b6f65e184dd1660f018cd0504d32101dd07855d4fcf395135d337c9a619
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.3 MB (267258221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76523493e38cb86bb386443d939c6c878aaf20c34f598765355a17b05fdd71fe`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:55:20 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:55:20 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 23:01:08 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 23 Jul 2026 23:01:10 GMT
ENV GOSU_VERSION=1.19
# Thu, 23 Jul 2026 23:01:10 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 23 Jul 2026 23:01:43 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 23 Jul 2026 23:01:44 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 23 Jul 2026 23:01:44 GMT
ENV MYSQL_MAJOR=9.7
# Thu, 23 Jul 2026 23:01:44 GMT
ENV MYSQL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 23:01:44 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 23 Jul 2026 23:02:21 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 23 Jul 2026 23:02:21 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 23 Jul 2026 23:02:21 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 23:03:08 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 23 Jul 2026 23:03:08 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Jul 2026 23:03:08 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 23 Jul 2026 23:03:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Jul 2026 23:03:08 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 23 Jul 2026 23:03:08 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c1a8d43326b89b25aff74efe983a017053ef32314f6332ba2cf4e76fcf4f2b09`  
		Last Modified: Thu, 23 Jul 2026 22:55:31 GMT  
		Size: 46.5 MB (46477905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d929fa47221a9fb68752358425c99b29f498e9cc1605186bb6777340fcabe207`  
		Last Modified: Thu, 23 Jul 2026 23:03:43 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b25acfb705b7060b4171aa38835f634b4667b874b3e1c320c10ccd20363a933`  
		Last Modified: Thu, 23 Jul 2026 23:03:43 GMT  
		Size: 737.5 KB (737522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4731afd3f174de446fdf71b8dc6c72852556058a438d522fae064d69381bf711`  
		Last Modified: Thu, 23 Jul 2026 23:03:43 GMT  
		Size: 5.8 MB (5822634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:daa7bd4f2adba84f8d86205bda55676b4232e7b75c0d02754437cccde2889285`  
		Last Modified: Thu, 23 Jul 2026 23:03:43 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8c58be44c7101fc88c19c8d10d457119276071c177c0cb89ae54bdc344b13a9`  
		Last Modified: Thu, 23 Jul 2026 23:03:44 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56eed86a3bfa1c6dc2a5b1238cc497e3e1210cdde96d2fb38feca7b669d29b47`  
		Last Modified: Thu, 23 Jul 2026 23:03:46 GMT  
		Size: 57.0 MB (57000390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a89ae229db9f80f7071a7f1e5a9e44342fb42e3eafd62ead00de1b42c4581193`  
		Last Modified: Thu, 23 Jul 2026 23:03:44 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6c3bc80bfe2b42ae0bc5bec6ced272b1d0916a5162ac752b9cda64cf9cc3f32`  
		Last Modified: Thu, 23 Jul 2026 23:03:48 GMT  
		Size: 157.2 MB (157210403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58607c4b8deb85125920fd8796c9a9983c860b7633886dc593b1a33dd3553155`  
		Last Modified: Thu, 23 Jul 2026 23:03:46 GMT  
		Size: 5.2 KB (5222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7.1` - unknown; unknown

```console
$ docker pull mysql@sha256:d06479e8b298ce138d4c222371fb912c36a32f4b96d0e3e736a630551f1a27b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb2cdce2ea4df7194773315282d107c3de47f1e56593cd587553fbcab5a97c91`

```dockerfile
```

-	Layers:
	-	`sha256:6cf7ac25ee1676d9c7e0430f0d71d296d355f5d571ab8b7540dd3ce121123343`  
		Last Modified: Thu, 23 Jul 2026 23:03:44 GMT  
		Size: 16.8 MB (16797687 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2b7166ac8d57053b7da7ef07841c62d232f0e26344644e72d9e2892809b8fe7f`  
		Last Modified: Thu, 23 Jul 2026 23:03:43 GMT  
		Size: 35.4 KB (35449 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9.7.1-oracle`

```console
$ docker pull mysql@sha256:cbade841779f1661300e705721f9d2ff159865cc7a8a291affbff43ac6ec7f1d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9.7.1-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:b09034342b94a61117ccbf223a4c20f1eef060fcf11b6a721126a9a15286ea3b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.8 MB (270840982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d04ab00413e7110afbb8c8edfb07ef2599f3fe52641d8c1f5ee6c58b3269991f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:56:37 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:56:37 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 23:00:59 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 23 Jul 2026 23:01:01 GMT
ENV GOSU_VERSION=1.19
# Thu, 23 Jul 2026 23:01:01 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 23 Jul 2026 23:01:28 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 23 Jul 2026 23:01:29 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 23 Jul 2026 23:01:29 GMT
ENV MYSQL_MAJOR=9.7
# Thu, 23 Jul 2026 23:01:29 GMT
ENV MYSQL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 23:01:29 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 23 Jul 2026 23:01:59 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 23 Jul 2026 23:01:59 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 23 Jul 2026 23:01:59 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 23:02:41 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 23 Jul 2026 23:02:41 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Jul 2026 23:02:41 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 23 Jul 2026 23:02:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Jul 2026 23:02:41 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 23 Jul 2026 23:02:41 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:30627cea5424c411bee6559e1aed4c4b977ceaab0f12695130c3825de516d2cc`  
		Last Modified: Thu, 23 Jul 2026 22:56:48 GMT  
		Size: 47.9 MB (47927752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:234be8523cd72e078cbe87180ca47afebce94ce3742f0ee3605ac25c749657a3`  
		Last Modified: Thu, 23 Jul 2026 23:03:13 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35c80c3f0cadcf7d1980dd5a8c8527c0d7425eac00e44b98cc4db8e11baa6b34`  
		Last Modified: Thu, 23 Jul 2026 23:03:13 GMT  
		Size: 783.6 KB (783562 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:718475825f6aa95f12cca1af84f19cd08bd86db578c24e8c7a8e5fb8410ad82c`  
		Last Modified: Thu, 23 Jul 2026 23:03:13 GMT  
		Size: 6.2 MB (6193245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a08e28acd68d0eeb8b2c468542cefe0039a5db8a08567e89c0fb2e2b4fe12f9`  
		Last Modified: Thu, 23 Jul 2026 23:03:13 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fab344c20702564cc80f8568716ff0c89e315eb3dc1bcb952f7876ead579784`  
		Last Modified: Thu, 23 Jul 2026 23:03:14 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fc0feac79eff00b6b60d0e7861d07d21541e7af66d2dc932d3f2d1ef005329b`  
		Last Modified: Thu, 23 Jul 2026 23:03:16 GMT  
		Size: 57.0 MB (56994496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bfe3c84c77064d6c2079dd56388882467d620d00ee852a362db9020f56d9475`  
		Last Modified: Thu, 23 Jul 2026 23:03:14 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ee3c7ac3aeb35755397c3f6773f0c9e055fe6d7f24b9e45f89839ed89d64eed`  
		Last Modified: Thu, 23 Jul 2026 23:03:18 GMT  
		Size: 158.9 MB (158932559 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71fecf9a0313a541a67befed2730494ebf5f41a129042ea6be48983015b144b0`  
		Last Modified: Thu, 23 Jul 2026 23:03:15 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7.1-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:acef6498ad7097a10658f1d65c4e55eec56543be09f1da1c9f38acc835dc456f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16834323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe9dc03903a3432a3acd30619e996e1d01087ce6a7c6e5cfa44b1f39578e5b41`

```dockerfile
```

-	Layers:
	-	`sha256:ebf48244f5b504fc3ccc4c2c19c26ba3ee066cdfd86414fc9a1ce34ae258faa0`  
		Last Modified: Thu, 23 Jul 2026 23:03:14 GMT  
		Size: 16.8 MB (16799215 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:58ddc8cbf91211c5691b00d60e15d9418e48915f73fe10aaa419be57baf80109`  
		Last Modified: Thu, 23 Jul 2026 23:03:13 GMT  
		Size: 35.1 KB (35108 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9.7.1-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:67818b6f65e184dd1660f018cd0504d32101dd07855d4fcf395135d337c9a619
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.3 MB (267258221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76523493e38cb86bb386443d939c6c878aaf20c34f598765355a17b05fdd71fe`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:55:20 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:55:20 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 23:01:08 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 23 Jul 2026 23:01:10 GMT
ENV GOSU_VERSION=1.19
# Thu, 23 Jul 2026 23:01:10 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 23 Jul 2026 23:01:43 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 23 Jul 2026 23:01:44 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 23 Jul 2026 23:01:44 GMT
ENV MYSQL_MAJOR=9.7
# Thu, 23 Jul 2026 23:01:44 GMT
ENV MYSQL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 23:01:44 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 23 Jul 2026 23:02:21 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 23 Jul 2026 23:02:21 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 23 Jul 2026 23:02:21 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 23:03:08 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 23 Jul 2026 23:03:08 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Jul 2026 23:03:08 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 23 Jul 2026 23:03:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Jul 2026 23:03:08 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 23 Jul 2026 23:03:08 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c1a8d43326b89b25aff74efe983a017053ef32314f6332ba2cf4e76fcf4f2b09`  
		Last Modified: Thu, 23 Jul 2026 22:55:31 GMT  
		Size: 46.5 MB (46477905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d929fa47221a9fb68752358425c99b29f498e9cc1605186bb6777340fcabe207`  
		Last Modified: Thu, 23 Jul 2026 23:03:43 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b25acfb705b7060b4171aa38835f634b4667b874b3e1c320c10ccd20363a933`  
		Last Modified: Thu, 23 Jul 2026 23:03:43 GMT  
		Size: 737.5 KB (737522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4731afd3f174de446fdf71b8dc6c72852556058a438d522fae064d69381bf711`  
		Last Modified: Thu, 23 Jul 2026 23:03:43 GMT  
		Size: 5.8 MB (5822634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:daa7bd4f2adba84f8d86205bda55676b4232e7b75c0d02754437cccde2889285`  
		Last Modified: Thu, 23 Jul 2026 23:03:43 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8c58be44c7101fc88c19c8d10d457119276071c177c0cb89ae54bdc344b13a9`  
		Last Modified: Thu, 23 Jul 2026 23:03:44 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56eed86a3bfa1c6dc2a5b1238cc497e3e1210cdde96d2fb38feca7b669d29b47`  
		Last Modified: Thu, 23 Jul 2026 23:03:46 GMT  
		Size: 57.0 MB (57000390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a89ae229db9f80f7071a7f1e5a9e44342fb42e3eafd62ead00de1b42c4581193`  
		Last Modified: Thu, 23 Jul 2026 23:03:44 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6c3bc80bfe2b42ae0bc5bec6ced272b1d0916a5162ac752b9cda64cf9cc3f32`  
		Last Modified: Thu, 23 Jul 2026 23:03:48 GMT  
		Size: 157.2 MB (157210403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58607c4b8deb85125920fd8796c9a9983c860b7633886dc593b1a33dd3553155`  
		Last Modified: Thu, 23 Jul 2026 23:03:46 GMT  
		Size: 5.2 KB (5222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7.1-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:d06479e8b298ce138d4c222371fb912c36a32f4b96d0e3e736a630551f1a27b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb2cdce2ea4df7194773315282d107c3de47f1e56593cd587553fbcab5a97c91`

```dockerfile
```

-	Layers:
	-	`sha256:6cf7ac25ee1676d9c7e0430f0d71d296d355f5d571ab8b7540dd3ce121123343`  
		Last Modified: Thu, 23 Jul 2026 23:03:44 GMT  
		Size: 16.8 MB (16797687 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2b7166ac8d57053b7da7ef07841c62d232f0e26344644e72d9e2892809b8fe7f`  
		Last Modified: Thu, 23 Jul 2026 23:03:43 GMT  
		Size: 35.4 KB (35449 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9.7.1-oraclelinux9`

```console
$ docker pull mysql@sha256:cbade841779f1661300e705721f9d2ff159865cc7a8a291affbff43ac6ec7f1d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9.7.1-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:b09034342b94a61117ccbf223a4c20f1eef060fcf11b6a721126a9a15286ea3b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.8 MB (270840982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d04ab00413e7110afbb8c8edfb07ef2599f3fe52641d8c1f5ee6c58b3269991f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:56:37 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:56:37 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 23:00:59 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 23 Jul 2026 23:01:01 GMT
ENV GOSU_VERSION=1.19
# Thu, 23 Jul 2026 23:01:01 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 23 Jul 2026 23:01:28 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 23 Jul 2026 23:01:29 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 23 Jul 2026 23:01:29 GMT
ENV MYSQL_MAJOR=9.7
# Thu, 23 Jul 2026 23:01:29 GMT
ENV MYSQL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 23:01:29 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 23 Jul 2026 23:01:59 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 23 Jul 2026 23:01:59 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 23 Jul 2026 23:01:59 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 23:02:41 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 23 Jul 2026 23:02:41 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Jul 2026 23:02:41 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 23 Jul 2026 23:02:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Jul 2026 23:02:41 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 23 Jul 2026 23:02:41 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:30627cea5424c411bee6559e1aed4c4b977ceaab0f12695130c3825de516d2cc`  
		Last Modified: Thu, 23 Jul 2026 22:56:48 GMT  
		Size: 47.9 MB (47927752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:234be8523cd72e078cbe87180ca47afebce94ce3742f0ee3605ac25c749657a3`  
		Last Modified: Thu, 23 Jul 2026 23:03:13 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35c80c3f0cadcf7d1980dd5a8c8527c0d7425eac00e44b98cc4db8e11baa6b34`  
		Last Modified: Thu, 23 Jul 2026 23:03:13 GMT  
		Size: 783.6 KB (783562 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:718475825f6aa95f12cca1af84f19cd08bd86db578c24e8c7a8e5fb8410ad82c`  
		Last Modified: Thu, 23 Jul 2026 23:03:13 GMT  
		Size: 6.2 MB (6193245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a08e28acd68d0eeb8b2c468542cefe0039a5db8a08567e89c0fb2e2b4fe12f9`  
		Last Modified: Thu, 23 Jul 2026 23:03:13 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fab344c20702564cc80f8568716ff0c89e315eb3dc1bcb952f7876ead579784`  
		Last Modified: Thu, 23 Jul 2026 23:03:14 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fc0feac79eff00b6b60d0e7861d07d21541e7af66d2dc932d3f2d1ef005329b`  
		Last Modified: Thu, 23 Jul 2026 23:03:16 GMT  
		Size: 57.0 MB (56994496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bfe3c84c77064d6c2079dd56388882467d620d00ee852a362db9020f56d9475`  
		Last Modified: Thu, 23 Jul 2026 23:03:14 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ee3c7ac3aeb35755397c3f6773f0c9e055fe6d7f24b9e45f89839ed89d64eed`  
		Last Modified: Thu, 23 Jul 2026 23:03:18 GMT  
		Size: 158.9 MB (158932559 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71fecf9a0313a541a67befed2730494ebf5f41a129042ea6be48983015b144b0`  
		Last Modified: Thu, 23 Jul 2026 23:03:15 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7.1-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:acef6498ad7097a10658f1d65c4e55eec56543be09f1da1c9f38acc835dc456f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16834323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe9dc03903a3432a3acd30619e996e1d01087ce6a7c6e5cfa44b1f39578e5b41`

```dockerfile
```

-	Layers:
	-	`sha256:ebf48244f5b504fc3ccc4c2c19c26ba3ee066cdfd86414fc9a1ce34ae258faa0`  
		Last Modified: Thu, 23 Jul 2026 23:03:14 GMT  
		Size: 16.8 MB (16799215 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:58ddc8cbf91211c5691b00d60e15d9418e48915f73fe10aaa419be57baf80109`  
		Last Modified: Thu, 23 Jul 2026 23:03:13 GMT  
		Size: 35.1 KB (35108 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9.7.1-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:67818b6f65e184dd1660f018cd0504d32101dd07855d4fcf395135d337c9a619
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.3 MB (267258221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76523493e38cb86bb386443d939c6c878aaf20c34f598765355a17b05fdd71fe`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:55:20 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:55:20 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 23:01:08 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 23 Jul 2026 23:01:10 GMT
ENV GOSU_VERSION=1.19
# Thu, 23 Jul 2026 23:01:10 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 23 Jul 2026 23:01:43 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 23 Jul 2026 23:01:44 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 23 Jul 2026 23:01:44 GMT
ENV MYSQL_MAJOR=9.7
# Thu, 23 Jul 2026 23:01:44 GMT
ENV MYSQL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 23:01:44 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 23 Jul 2026 23:02:21 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 23 Jul 2026 23:02:21 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 23 Jul 2026 23:02:21 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 23:03:08 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 23 Jul 2026 23:03:08 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Jul 2026 23:03:08 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 23 Jul 2026 23:03:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Jul 2026 23:03:08 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 23 Jul 2026 23:03:08 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c1a8d43326b89b25aff74efe983a017053ef32314f6332ba2cf4e76fcf4f2b09`  
		Last Modified: Thu, 23 Jul 2026 22:55:31 GMT  
		Size: 46.5 MB (46477905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d929fa47221a9fb68752358425c99b29f498e9cc1605186bb6777340fcabe207`  
		Last Modified: Thu, 23 Jul 2026 23:03:43 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b25acfb705b7060b4171aa38835f634b4667b874b3e1c320c10ccd20363a933`  
		Last Modified: Thu, 23 Jul 2026 23:03:43 GMT  
		Size: 737.5 KB (737522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4731afd3f174de446fdf71b8dc6c72852556058a438d522fae064d69381bf711`  
		Last Modified: Thu, 23 Jul 2026 23:03:43 GMT  
		Size: 5.8 MB (5822634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:daa7bd4f2adba84f8d86205bda55676b4232e7b75c0d02754437cccde2889285`  
		Last Modified: Thu, 23 Jul 2026 23:03:43 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8c58be44c7101fc88c19c8d10d457119276071c177c0cb89ae54bdc344b13a9`  
		Last Modified: Thu, 23 Jul 2026 23:03:44 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56eed86a3bfa1c6dc2a5b1238cc497e3e1210cdde96d2fb38feca7b669d29b47`  
		Last Modified: Thu, 23 Jul 2026 23:03:46 GMT  
		Size: 57.0 MB (57000390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a89ae229db9f80f7071a7f1e5a9e44342fb42e3eafd62ead00de1b42c4581193`  
		Last Modified: Thu, 23 Jul 2026 23:03:44 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6c3bc80bfe2b42ae0bc5bec6ced272b1d0916a5162ac752b9cda64cf9cc3f32`  
		Last Modified: Thu, 23 Jul 2026 23:03:48 GMT  
		Size: 157.2 MB (157210403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58607c4b8deb85125920fd8796c9a9983c860b7633886dc593b1a33dd3553155`  
		Last Modified: Thu, 23 Jul 2026 23:03:46 GMT  
		Size: 5.2 KB (5222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7.1-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:d06479e8b298ce138d4c222371fb912c36a32f4b96d0e3e736a630551f1a27b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb2cdce2ea4df7194773315282d107c3de47f1e56593cd587553fbcab5a97c91`

```dockerfile
```

-	Layers:
	-	`sha256:6cf7ac25ee1676d9c7e0430f0d71d296d355f5d571ab8b7540dd3ce121123343`  
		Last Modified: Thu, 23 Jul 2026 23:03:44 GMT  
		Size: 16.8 MB (16797687 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2b7166ac8d57053b7da7ef07841c62d232f0e26344644e72d9e2892809b8fe7f`  
		Last Modified: Thu, 23 Jul 2026 23:03:43 GMT  
		Size: 35.4 KB (35449 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:latest`

```console
$ docker pull mysql@sha256:cbade841779f1661300e705721f9d2ff159865cc7a8a291affbff43ac6ec7f1d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:latest` - linux; amd64

```console
$ docker pull mysql@sha256:b09034342b94a61117ccbf223a4c20f1eef060fcf11b6a721126a9a15286ea3b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.8 MB (270840982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d04ab00413e7110afbb8c8edfb07ef2599f3fe52641d8c1f5ee6c58b3269991f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:56:37 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:56:37 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 23:00:59 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 23 Jul 2026 23:01:01 GMT
ENV GOSU_VERSION=1.19
# Thu, 23 Jul 2026 23:01:01 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 23 Jul 2026 23:01:28 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 23 Jul 2026 23:01:29 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 23 Jul 2026 23:01:29 GMT
ENV MYSQL_MAJOR=9.7
# Thu, 23 Jul 2026 23:01:29 GMT
ENV MYSQL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 23:01:29 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 23 Jul 2026 23:01:59 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 23 Jul 2026 23:01:59 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 23 Jul 2026 23:01:59 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 23:02:41 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 23 Jul 2026 23:02:41 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Jul 2026 23:02:41 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 23 Jul 2026 23:02:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Jul 2026 23:02:41 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 23 Jul 2026 23:02:41 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:30627cea5424c411bee6559e1aed4c4b977ceaab0f12695130c3825de516d2cc`  
		Last Modified: Thu, 23 Jul 2026 22:56:48 GMT  
		Size: 47.9 MB (47927752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:234be8523cd72e078cbe87180ca47afebce94ce3742f0ee3605ac25c749657a3`  
		Last Modified: Thu, 23 Jul 2026 23:03:13 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35c80c3f0cadcf7d1980dd5a8c8527c0d7425eac00e44b98cc4db8e11baa6b34`  
		Last Modified: Thu, 23 Jul 2026 23:03:13 GMT  
		Size: 783.6 KB (783562 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:718475825f6aa95f12cca1af84f19cd08bd86db578c24e8c7a8e5fb8410ad82c`  
		Last Modified: Thu, 23 Jul 2026 23:03:13 GMT  
		Size: 6.2 MB (6193245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a08e28acd68d0eeb8b2c468542cefe0039a5db8a08567e89c0fb2e2b4fe12f9`  
		Last Modified: Thu, 23 Jul 2026 23:03:13 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fab344c20702564cc80f8568716ff0c89e315eb3dc1bcb952f7876ead579784`  
		Last Modified: Thu, 23 Jul 2026 23:03:14 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fc0feac79eff00b6b60d0e7861d07d21541e7af66d2dc932d3f2d1ef005329b`  
		Last Modified: Thu, 23 Jul 2026 23:03:16 GMT  
		Size: 57.0 MB (56994496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bfe3c84c77064d6c2079dd56388882467d620d00ee852a362db9020f56d9475`  
		Last Modified: Thu, 23 Jul 2026 23:03:14 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ee3c7ac3aeb35755397c3f6773f0c9e055fe6d7f24b9e45f89839ed89d64eed`  
		Last Modified: Thu, 23 Jul 2026 23:03:18 GMT  
		Size: 158.9 MB (158932559 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71fecf9a0313a541a67befed2730494ebf5f41a129042ea6be48983015b144b0`  
		Last Modified: Thu, 23 Jul 2026 23:03:15 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:latest` - unknown; unknown

```console
$ docker pull mysql@sha256:acef6498ad7097a10658f1d65c4e55eec56543be09f1da1c9f38acc835dc456f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16834323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe9dc03903a3432a3acd30619e996e1d01087ce6a7c6e5cfa44b1f39578e5b41`

```dockerfile
```

-	Layers:
	-	`sha256:ebf48244f5b504fc3ccc4c2c19c26ba3ee066cdfd86414fc9a1ce34ae258faa0`  
		Last Modified: Thu, 23 Jul 2026 23:03:14 GMT  
		Size: 16.8 MB (16799215 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:58ddc8cbf91211c5691b00d60e15d9418e48915f73fe10aaa419be57baf80109`  
		Last Modified: Thu, 23 Jul 2026 23:03:13 GMT  
		Size: 35.1 KB (35108 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:latest` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:67818b6f65e184dd1660f018cd0504d32101dd07855d4fcf395135d337c9a619
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.3 MB (267258221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76523493e38cb86bb386443d939c6c878aaf20c34f598765355a17b05fdd71fe`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:55:20 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:55:20 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 23:01:08 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 23 Jul 2026 23:01:10 GMT
ENV GOSU_VERSION=1.19
# Thu, 23 Jul 2026 23:01:10 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 23 Jul 2026 23:01:43 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 23 Jul 2026 23:01:44 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 23 Jul 2026 23:01:44 GMT
ENV MYSQL_MAJOR=9.7
# Thu, 23 Jul 2026 23:01:44 GMT
ENV MYSQL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 23:01:44 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 23 Jul 2026 23:02:21 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 23 Jul 2026 23:02:21 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 23 Jul 2026 23:02:21 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 23:03:08 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 23 Jul 2026 23:03:08 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Jul 2026 23:03:08 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 23 Jul 2026 23:03:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Jul 2026 23:03:08 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 23 Jul 2026 23:03:08 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c1a8d43326b89b25aff74efe983a017053ef32314f6332ba2cf4e76fcf4f2b09`  
		Last Modified: Thu, 23 Jul 2026 22:55:31 GMT  
		Size: 46.5 MB (46477905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d929fa47221a9fb68752358425c99b29f498e9cc1605186bb6777340fcabe207`  
		Last Modified: Thu, 23 Jul 2026 23:03:43 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b25acfb705b7060b4171aa38835f634b4667b874b3e1c320c10ccd20363a933`  
		Last Modified: Thu, 23 Jul 2026 23:03:43 GMT  
		Size: 737.5 KB (737522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4731afd3f174de446fdf71b8dc6c72852556058a438d522fae064d69381bf711`  
		Last Modified: Thu, 23 Jul 2026 23:03:43 GMT  
		Size: 5.8 MB (5822634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:daa7bd4f2adba84f8d86205bda55676b4232e7b75c0d02754437cccde2889285`  
		Last Modified: Thu, 23 Jul 2026 23:03:43 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8c58be44c7101fc88c19c8d10d457119276071c177c0cb89ae54bdc344b13a9`  
		Last Modified: Thu, 23 Jul 2026 23:03:44 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56eed86a3bfa1c6dc2a5b1238cc497e3e1210cdde96d2fb38feca7b669d29b47`  
		Last Modified: Thu, 23 Jul 2026 23:03:46 GMT  
		Size: 57.0 MB (57000390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a89ae229db9f80f7071a7f1e5a9e44342fb42e3eafd62ead00de1b42c4581193`  
		Last Modified: Thu, 23 Jul 2026 23:03:44 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6c3bc80bfe2b42ae0bc5bec6ced272b1d0916a5162ac752b9cda64cf9cc3f32`  
		Last Modified: Thu, 23 Jul 2026 23:03:48 GMT  
		Size: 157.2 MB (157210403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58607c4b8deb85125920fd8796c9a9983c860b7633886dc593b1a33dd3553155`  
		Last Modified: Thu, 23 Jul 2026 23:03:46 GMT  
		Size: 5.2 KB (5222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:latest` - unknown; unknown

```console
$ docker pull mysql@sha256:d06479e8b298ce138d4c222371fb912c36a32f4b96d0e3e736a630551f1a27b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb2cdce2ea4df7194773315282d107c3de47f1e56593cd587553fbcab5a97c91`

```dockerfile
```

-	Layers:
	-	`sha256:6cf7ac25ee1676d9c7e0430f0d71d296d355f5d571ab8b7540dd3ce121123343`  
		Last Modified: Thu, 23 Jul 2026 23:03:44 GMT  
		Size: 16.8 MB (16797687 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2b7166ac8d57053b7da7ef07841c62d232f0e26344644e72d9e2892809b8fe7f`  
		Last Modified: Thu, 23 Jul 2026 23:03:43 GMT  
		Size: 35.4 KB (35449 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:lts`

```console
$ docker pull mysql@sha256:cbade841779f1661300e705721f9d2ff159865cc7a8a291affbff43ac6ec7f1d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:lts` - linux; amd64

```console
$ docker pull mysql@sha256:b09034342b94a61117ccbf223a4c20f1eef060fcf11b6a721126a9a15286ea3b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.8 MB (270840982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d04ab00413e7110afbb8c8edfb07ef2599f3fe52641d8c1f5ee6c58b3269991f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:56:37 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:56:37 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 23:00:59 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 23 Jul 2026 23:01:01 GMT
ENV GOSU_VERSION=1.19
# Thu, 23 Jul 2026 23:01:01 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 23 Jul 2026 23:01:28 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 23 Jul 2026 23:01:29 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 23 Jul 2026 23:01:29 GMT
ENV MYSQL_MAJOR=9.7
# Thu, 23 Jul 2026 23:01:29 GMT
ENV MYSQL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 23:01:29 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 23 Jul 2026 23:01:59 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 23 Jul 2026 23:01:59 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 23 Jul 2026 23:01:59 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 23:02:41 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 23 Jul 2026 23:02:41 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Jul 2026 23:02:41 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 23 Jul 2026 23:02:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Jul 2026 23:02:41 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 23 Jul 2026 23:02:41 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:30627cea5424c411bee6559e1aed4c4b977ceaab0f12695130c3825de516d2cc`  
		Last Modified: Thu, 23 Jul 2026 22:56:48 GMT  
		Size: 47.9 MB (47927752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:234be8523cd72e078cbe87180ca47afebce94ce3742f0ee3605ac25c749657a3`  
		Last Modified: Thu, 23 Jul 2026 23:03:13 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35c80c3f0cadcf7d1980dd5a8c8527c0d7425eac00e44b98cc4db8e11baa6b34`  
		Last Modified: Thu, 23 Jul 2026 23:03:13 GMT  
		Size: 783.6 KB (783562 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:718475825f6aa95f12cca1af84f19cd08bd86db578c24e8c7a8e5fb8410ad82c`  
		Last Modified: Thu, 23 Jul 2026 23:03:13 GMT  
		Size: 6.2 MB (6193245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a08e28acd68d0eeb8b2c468542cefe0039a5db8a08567e89c0fb2e2b4fe12f9`  
		Last Modified: Thu, 23 Jul 2026 23:03:13 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fab344c20702564cc80f8568716ff0c89e315eb3dc1bcb952f7876ead579784`  
		Last Modified: Thu, 23 Jul 2026 23:03:14 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fc0feac79eff00b6b60d0e7861d07d21541e7af66d2dc932d3f2d1ef005329b`  
		Last Modified: Thu, 23 Jul 2026 23:03:16 GMT  
		Size: 57.0 MB (56994496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bfe3c84c77064d6c2079dd56388882467d620d00ee852a362db9020f56d9475`  
		Last Modified: Thu, 23 Jul 2026 23:03:14 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ee3c7ac3aeb35755397c3f6773f0c9e055fe6d7f24b9e45f89839ed89d64eed`  
		Last Modified: Thu, 23 Jul 2026 23:03:18 GMT  
		Size: 158.9 MB (158932559 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71fecf9a0313a541a67befed2730494ebf5f41a129042ea6be48983015b144b0`  
		Last Modified: Thu, 23 Jul 2026 23:03:15 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:lts` - unknown; unknown

```console
$ docker pull mysql@sha256:acef6498ad7097a10658f1d65c4e55eec56543be09f1da1c9f38acc835dc456f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16834323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe9dc03903a3432a3acd30619e996e1d01087ce6a7c6e5cfa44b1f39578e5b41`

```dockerfile
```

-	Layers:
	-	`sha256:ebf48244f5b504fc3ccc4c2c19c26ba3ee066cdfd86414fc9a1ce34ae258faa0`  
		Last Modified: Thu, 23 Jul 2026 23:03:14 GMT  
		Size: 16.8 MB (16799215 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:58ddc8cbf91211c5691b00d60e15d9418e48915f73fe10aaa419be57baf80109`  
		Last Modified: Thu, 23 Jul 2026 23:03:13 GMT  
		Size: 35.1 KB (35108 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:lts` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:67818b6f65e184dd1660f018cd0504d32101dd07855d4fcf395135d337c9a619
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.3 MB (267258221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76523493e38cb86bb386443d939c6c878aaf20c34f598765355a17b05fdd71fe`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:55:20 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:55:20 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 23:01:08 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 23 Jul 2026 23:01:10 GMT
ENV GOSU_VERSION=1.19
# Thu, 23 Jul 2026 23:01:10 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 23 Jul 2026 23:01:43 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 23 Jul 2026 23:01:44 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 23 Jul 2026 23:01:44 GMT
ENV MYSQL_MAJOR=9.7
# Thu, 23 Jul 2026 23:01:44 GMT
ENV MYSQL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 23:01:44 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 23 Jul 2026 23:02:21 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 23 Jul 2026 23:02:21 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 23 Jul 2026 23:02:21 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 23:03:08 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 23 Jul 2026 23:03:08 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Jul 2026 23:03:08 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 23 Jul 2026 23:03:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Jul 2026 23:03:08 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 23 Jul 2026 23:03:08 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c1a8d43326b89b25aff74efe983a017053ef32314f6332ba2cf4e76fcf4f2b09`  
		Last Modified: Thu, 23 Jul 2026 22:55:31 GMT  
		Size: 46.5 MB (46477905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d929fa47221a9fb68752358425c99b29f498e9cc1605186bb6777340fcabe207`  
		Last Modified: Thu, 23 Jul 2026 23:03:43 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b25acfb705b7060b4171aa38835f634b4667b874b3e1c320c10ccd20363a933`  
		Last Modified: Thu, 23 Jul 2026 23:03:43 GMT  
		Size: 737.5 KB (737522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4731afd3f174de446fdf71b8dc6c72852556058a438d522fae064d69381bf711`  
		Last Modified: Thu, 23 Jul 2026 23:03:43 GMT  
		Size: 5.8 MB (5822634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:daa7bd4f2adba84f8d86205bda55676b4232e7b75c0d02754437cccde2889285`  
		Last Modified: Thu, 23 Jul 2026 23:03:43 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8c58be44c7101fc88c19c8d10d457119276071c177c0cb89ae54bdc344b13a9`  
		Last Modified: Thu, 23 Jul 2026 23:03:44 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56eed86a3bfa1c6dc2a5b1238cc497e3e1210cdde96d2fb38feca7b669d29b47`  
		Last Modified: Thu, 23 Jul 2026 23:03:46 GMT  
		Size: 57.0 MB (57000390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a89ae229db9f80f7071a7f1e5a9e44342fb42e3eafd62ead00de1b42c4581193`  
		Last Modified: Thu, 23 Jul 2026 23:03:44 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6c3bc80bfe2b42ae0bc5bec6ced272b1d0916a5162ac752b9cda64cf9cc3f32`  
		Last Modified: Thu, 23 Jul 2026 23:03:48 GMT  
		Size: 157.2 MB (157210403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58607c4b8deb85125920fd8796c9a9983c860b7633886dc593b1a33dd3553155`  
		Last Modified: Thu, 23 Jul 2026 23:03:46 GMT  
		Size: 5.2 KB (5222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:lts` - unknown; unknown

```console
$ docker pull mysql@sha256:d06479e8b298ce138d4c222371fb912c36a32f4b96d0e3e736a630551f1a27b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb2cdce2ea4df7194773315282d107c3de47f1e56593cd587553fbcab5a97c91`

```dockerfile
```

-	Layers:
	-	`sha256:6cf7ac25ee1676d9c7e0430f0d71d296d355f5d571ab8b7540dd3ce121123343`  
		Last Modified: Thu, 23 Jul 2026 23:03:44 GMT  
		Size: 16.8 MB (16797687 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2b7166ac8d57053b7da7ef07841c62d232f0e26344644e72d9e2892809b8fe7f`  
		Last Modified: Thu, 23 Jul 2026 23:03:43 GMT  
		Size: 35.4 KB (35449 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:lts-oracle`

```console
$ docker pull mysql@sha256:cbade841779f1661300e705721f9d2ff159865cc7a8a291affbff43ac6ec7f1d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:lts-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:b09034342b94a61117ccbf223a4c20f1eef060fcf11b6a721126a9a15286ea3b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.8 MB (270840982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d04ab00413e7110afbb8c8edfb07ef2599f3fe52641d8c1f5ee6c58b3269991f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:56:37 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:56:37 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 23:00:59 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 23 Jul 2026 23:01:01 GMT
ENV GOSU_VERSION=1.19
# Thu, 23 Jul 2026 23:01:01 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 23 Jul 2026 23:01:28 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 23 Jul 2026 23:01:29 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 23 Jul 2026 23:01:29 GMT
ENV MYSQL_MAJOR=9.7
# Thu, 23 Jul 2026 23:01:29 GMT
ENV MYSQL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 23:01:29 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 23 Jul 2026 23:01:59 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 23 Jul 2026 23:01:59 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 23 Jul 2026 23:01:59 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 23:02:41 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 23 Jul 2026 23:02:41 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Jul 2026 23:02:41 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 23 Jul 2026 23:02:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Jul 2026 23:02:41 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 23 Jul 2026 23:02:41 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:30627cea5424c411bee6559e1aed4c4b977ceaab0f12695130c3825de516d2cc`  
		Last Modified: Thu, 23 Jul 2026 22:56:48 GMT  
		Size: 47.9 MB (47927752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:234be8523cd72e078cbe87180ca47afebce94ce3742f0ee3605ac25c749657a3`  
		Last Modified: Thu, 23 Jul 2026 23:03:13 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35c80c3f0cadcf7d1980dd5a8c8527c0d7425eac00e44b98cc4db8e11baa6b34`  
		Last Modified: Thu, 23 Jul 2026 23:03:13 GMT  
		Size: 783.6 KB (783562 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:718475825f6aa95f12cca1af84f19cd08bd86db578c24e8c7a8e5fb8410ad82c`  
		Last Modified: Thu, 23 Jul 2026 23:03:13 GMT  
		Size: 6.2 MB (6193245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a08e28acd68d0eeb8b2c468542cefe0039a5db8a08567e89c0fb2e2b4fe12f9`  
		Last Modified: Thu, 23 Jul 2026 23:03:13 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fab344c20702564cc80f8568716ff0c89e315eb3dc1bcb952f7876ead579784`  
		Last Modified: Thu, 23 Jul 2026 23:03:14 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fc0feac79eff00b6b60d0e7861d07d21541e7af66d2dc932d3f2d1ef005329b`  
		Last Modified: Thu, 23 Jul 2026 23:03:16 GMT  
		Size: 57.0 MB (56994496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bfe3c84c77064d6c2079dd56388882467d620d00ee852a362db9020f56d9475`  
		Last Modified: Thu, 23 Jul 2026 23:03:14 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ee3c7ac3aeb35755397c3f6773f0c9e055fe6d7f24b9e45f89839ed89d64eed`  
		Last Modified: Thu, 23 Jul 2026 23:03:18 GMT  
		Size: 158.9 MB (158932559 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71fecf9a0313a541a67befed2730494ebf5f41a129042ea6be48983015b144b0`  
		Last Modified: Thu, 23 Jul 2026 23:03:15 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:lts-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:acef6498ad7097a10658f1d65c4e55eec56543be09f1da1c9f38acc835dc456f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16834323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe9dc03903a3432a3acd30619e996e1d01087ce6a7c6e5cfa44b1f39578e5b41`

```dockerfile
```

-	Layers:
	-	`sha256:ebf48244f5b504fc3ccc4c2c19c26ba3ee066cdfd86414fc9a1ce34ae258faa0`  
		Last Modified: Thu, 23 Jul 2026 23:03:14 GMT  
		Size: 16.8 MB (16799215 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:58ddc8cbf91211c5691b00d60e15d9418e48915f73fe10aaa419be57baf80109`  
		Last Modified: Thu, 23 Jul 2026 23:03:13 GMT  
		Size: 35.1 KB (35108 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:lts-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:67818b6f65e184dd1660f018cd0504d32101dd07855d4fcf395135d337c9a619
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.3 MB (267258221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76523493e38cb86bb386443d939c6c878aaf20c34f598765355a17b05fdd71fe`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:55:20 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:55:20 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 23:01:08 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 23 Jul 2026 23:01:10 GMT
ENV GOSU_VERSION=1.19
# Thu, 23 Jul 2026 23:01:10 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 23 Jul 2026 23:01:43 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 23 Jul 2026 23:01:44 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 23 Jul 2026 23:01:44 GMT
ENV MYSQL_MAJOR=9.7
# Thu, 23 Jul 2026 23:01:44 GMT
ENV MYSQL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 23:01:44 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 23 Jul 2026 23:02:21 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 23 Jul 2026 23:02:21 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 23 Jul 2026 23:02:21 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 23:03:08 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 23 Jul 2026 23:03:08 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Jul 2026 23:03:08 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 23 Jul 2026 23:03:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Jul 2026 23:03:08 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 23 Jul 2026 23:03:08 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c1a8d43326b89b25aff74efe983a017053ef32314f6332ba2cf4e76fcf4f2b09`  
		Last Modified: Thu, 23 Jul 2026 22:55:31 GMT  
		Size: 46.5 MB (46477905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d929fa47221a9fb68752358425c99b29f498e9cc1605186bb6777340fcabe207`  
		Last Modified: Thu, 23 Jul 2026 23:03:43 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b25acfb705b7060b4171aa38835f634b4667b874b3e1c320c10ccd20363a933`  
		Last Modified: Thu, 23 Jul 2026 23:03:43 GMT  
		Size: 737.5 KB (737522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4731afd3f174de446fdf71b8dc6c72852556058a438d522fae064d69381bf711`  
		Last Modified: Thu, 23 Jul 2026 23:03:43 GMT  
		Size: 5.8 MB (5822634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:daa7bd4f2adba84f8d86205bda55676b4232e7b75c0d02754437cccde2889285`  
		Last Modified: Thu, 23 Jul 2026 23:03:43 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8c58be44c7101fc88c19c8d10d457119276071c177c0cb89ae54bdc344b13a9`  
		Last Modified: Thu, 23 Jul 2026 23:03:44 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56eed86a3bfa1c6dc2a5b1238cc497e3e1210cdde96d2fb38feca7b669d29b47`  
		Last Modified: Thu, 23 Jul 2026 23:03:46 GMT  
		Size: 57.0 MB (57000390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a89ae229db9f80f7071a7f1e5a9e44342fb42e3eafd62ead00de1b42c4581193`  
		Last Modified: Thu, 23 Jul 2026 23:03:44 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6c3bc80bfe2b42ae0bc5bec6ced272b1d0916a5162ac752b9cda64cf9cc3f32`  
		Last Modified: Thu, 23 Jul 2026 23:03:48 GMT  
		Size: 157.2 MB (157210403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58607c4b8deb85125920fd8796c9a9983c860b7633886dc593b1a33dd3553155`  
		Last Modified: Thu, 23 Jul 2026 23:03:46 GMT  
		Size: 5.2 KB (5222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:lts-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:d06479e8b298ce138d4c222371fb912c36a32f4b96d0e3e736a630551f1a27b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb2cdce2ea4df7194773315282d107c3de47f1e56593cd587553fbcab5a97c91`

```dockerfile
```

-	Layers:
	-	`sha256:6cf7ac25ee1676d9c7e0430f0d71d296d355f5d571ab8b7540dd3ce121123343`  
		Last Modified: Thu, 23 Jul 2026 23:03:44 GMT  
		Size: 16.8 MB (16797687 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2b7166ac8d57053b7da7ef07841c62d232f0e26344644e72d9e2892809b8fe7f`  
		Last Modified: Thu, 23 Jul 2026 23:03:43 GMT  
		Size: 35.4 KB (35449 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:lts-oraclelinux9`

```console
$ docker pull mysql@sha256:cbade841779f1661300e705721f9d2ff159865cc7a8a291affbff43ac6ec7f1d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:lts-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:b09034342b94a61117ccbf223a4c20f1eef060fcf11b6a721126a9a15286ea3b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.8 MB (270840982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d04ab00413e7110afbb8c8edfb07ef2599f3fe52641d8c1f5ee6c58b3269991f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:56:37 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:56:37 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 23:00:59 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 23 Jul 2026 23:01:01 GMT
ENV GOSU_VERSION=1.19
# Thu, 23 Jul 2026 23:01:01 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 23 Jul 2026 23:01:28 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 23 Jul 2026 23:01:29 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 23 Jul 2026 23:01:29 GMT
ENV MYSQL_MAJOR=9.7
# Thu, 23 Jul 2026 23:01:29 GMT
ENV MYSQL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 23:01:29 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 23 Jul 2026 23:01:59 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 23 Jul 2026 23:01:59 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 23 Jul 2026 23:01:59 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 23:02:41 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 23 Jul 2026 23:02:41 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Jul 2026 23:02:41 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 23 Jul 2026 23:02:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Jul 2026 23:02:41 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 23 Jul 2026 23:02:41 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:30627cea5424c411bee6559e1aed4c4b977ceaab0f12695130c3825de516d2cc`  
		Last Modified: Thu, 23 Jul 2026 22:56:48 GMT  
		Size: 47.9 MB (47927752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:234be8523cd72e078cbe87180ca47afebce94ce3742f0ee3605ac25c749657a3`  
		Last Modified: Thu, 23 Jul 2026 23:03:13 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35c80c3f0cadcf7d1980dd5a8c8527c0d7425eac00e44b98cc4db8e11baa6b34`  
		Last Modified: Thu, 23 Jul 2026 23:03:13 GMT  
		Size: 783.6 KB (783562 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:718475825f6aa95f12cca1af84f19cd08bd86db578c24e8c7a8e5fb8410ad82c`  
		Last Modified: Thu, 23 Jul 2026 23:03:13 GMT  
		Size: 6.2 MB (6193245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a08e28acd68d0eeb8b2c468542cefe0039a5db8a08567e89c0fb2e2b4fe12f9`  
		Last Modified: Thu, 23 Jul 2026 23:03:13 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fab344c20702564cc80f8568716ff0c89e315eb3dc1bcb952f7876ead579784`  
		Last Modified: Thu, 23 Jul 2026 23:03:14 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fc0feac79eff00b6b60d0e7861d07d21541e7af66d2dc932d3f2d1ef005329b`  
		Last Modified: Thu, 23 Jul 2026 23:03:16 GMT  
		Size: 57.0 MB (56994496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bfe3c84c77064d6c2079dd56388882467d620d00ee852a362db9020f56d9475`  
		Last Modified: Thu, 23 Jul 2026 23:03:14 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ee3c7ac3aeb35755397c3f6773f0c9e055fe6d7f24b9e45f89839ed89d64eed`  
		Last Modified: Thu, 23 Jul 2026 23:03:18 GMT  
		Size: 158.9 MB (158932559 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71fecf9a0313a541a67befed2730494ebf5f41a129042ea6be48983015b144b0`  
		Last Modified: Thu, 23 Jul 2026 23:03:15 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:lts-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:acef6498ad7097a10658f1d65c4e55eec56543be09f1da1c9f38acc835dc456f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16834323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe9dc03903a3432a3acd30619e996e1d01087ce6a7c6e5cfa44b1f39578e5b41`

```dockerfile
```

-	Layers:
	-	`sha256:ebf48244f5b504fc3ccc4c2c19c26ba3ee066cdfd86414fc9a1ce34ae258faa0`  
		Last Modified: Thu, 23 Jul 2026 23:03:14 GMT  
		Size: 16.8 MB (16799215 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:58ddc8cbf91211c5691b00d60e15d9418e48915f73fe10aaa419be57baf80109`  
		Last Modified: Thu, 23 Jul 2026 23:03:13 GMT  
		Size: 35.1 KB (35108 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:lts-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:67818b6f65e184dd1660f018cd0504d32101dd07855d4fcf395135d337c9a619
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.3 MB (267258221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76523493e38cb86bb386443d939c6c878aaf20c34f598765355a17b05fdd71fe`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:55:20 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:55:20 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 23:01:08 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 23 Jul 2026 23:01:10 GMT
ENV GOSU_VERSION=1.19
# Thu, 23 Jul 2026 23:01:10 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 23 Jul 2026 23:01:43 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 23 Jul 2026 23:01:44 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 23 Jul 2026 23:01:44 GMT
ENV MYSQL_MAJOR=9.7
# Thu, 23 Jul 2026 23:01:44 GMT
ENV MYSQL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 23:01:44 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 23 Jul 2026 23:02:21 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 23 Jul 2026 23:02:21 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 23 Jul 2026 23:02:21 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 23:03:08 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 23 Jul 2026 23:03:08 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Jul 2026 23:03:08 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 23 Jul 2026 23:03:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Jul 2026 23:03:08 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 23 Jul 2026 23:03:08 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c1a8d43326b89b25aff74efe983a017053ef32314f6332ba2cf4e76fcf4f2b09`  
		Last Modified: Thu, 23 Jul 2026 22:55:31 GMT  
		Size: 46.5 MB (46477905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d929fa47221a9fb68752358425c99b29f498e9cc1605186bb6777340fcabe207`  
		Last Modified: Thu, 23 Jul 2026 23:03:43 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b25acfb705b7060b4171aa38835f634b4667b874b3e1c320c10ccd20363a933`  
		Last Modified: Thu, 23 Jul 2026 23:03:43 GMT  
		Size: 737.5 KB (737522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4731afd3f174de446fdf71b8dc6c72852556058a438d522fae064d69381bf711`  
		Last Modified: Thu, 23 Jul 2026 23:03:43 GMT  
		Size: 5.8 MB (5822634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:daa7bd4f2adba84f8d86205bda55676b4232e7b75c0d02754437cccde2889285`  
		Last Modified: Thu, 23 Jul 2026 23:03:43 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8c58be44c7101fc88c19c8d10d457119276071c177c0cb89ae54bdc344b13a9`  
		Last Modified: Thu, 23 Jul 2026 23:03:44 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56eed86a3bfa1c6dc2a5b1238cc497e3e1210cdde96d2fb38feca7b669d29b47`  
		Last Modified: Thu, 23 Jul 2026 23:03:46 GMT  
		Size: 57.0 MB (57000390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a89ae229db9f80f7071a7f1e5a9e44342fb42e3eafd62ead00de1b42c4581193`  
		Last Modified: Thu, 23 Jul 2026 23:03:44 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6c3bc80bfe2b42ae0bc5bec6ced272b1d0916a5162ac752b9cda64cf9cc3f32`  
		Last Modified: Thu, 23 Jul 2026 23:03:48 GMT  
		Size: 157.2 MB (157210403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58607c4b8deb85125920fd8796c9a9983c860b7633886dc593b1a33dd3553155`  
		Last Modified: Thu, 23 Jul 2026 23:03:46 GMT  
		Size: 5.2 KB (5222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:lts-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:d06479e8b298ce138d4c222371fb912c36a32f4b96d0e3e736a630551f1a27b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb2cdce2ea4df7194773315282d107c3de47f1e56593cd587553fbcab5a97c91`

```dockerfile
```

-	Layers:
	-	`sha256:6cf7ac25ee1676d9c7e0430f0d71d296d355f5d571ab8b7540dd3ce121123343`  
		Last Modified: Thu, 23 Jul 2026 23:03:44 GMT  
		Size: 16.8 MB (16797687 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2b7166ac8d57053b7da7ef07841c62d232f0e26344644e72d9e2892809b8fe7f`  
		Last Modified: Thu, 23 Jul 2026 23:03:43 GMT  
		Size: 35.4 KB (35449 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:oracle`

```console
$ docker pull mysql@sha256:cbade841779f1661300e705721f9d2ff159865cc7a8a291affbff43ac6ec7f1d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:oracle` - linux; amd64

```console
$ docker pull mysql@sha256:b09034342b94a61117ccbf223a4c20f1eef060fcf11b6a721126a9a15286ea3b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.8 MB (270840982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d04ab00413e7110afbb8c8edfb07ef2599f3fe52641d8c1f5ee6c58b3269991f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:56:37 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:56:37 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 23:00:59 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 23 Jul 2026 23:01:01 GMT
ENV GOSU_VERSION=1.19
# Thu, 23 Jul 2026 23:01:01 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 23 Jul 2026 23:01:28 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 23 Jul 2026 23:01:29 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 23 Jul 2026 23:01:29 GMT
ENV MYSQL_MAJOR=9.7
# Thu, 23 Jul 2026 23:01:29 GMT
ENV MYSQL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 23:01:29 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 23 Jul 2026 23:01:59 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 23 Jul 2026 23:01:59 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 23 Jul 2026 23:01:59 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 23:02:41 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 23 Jul 2026 23:02:41 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Jul 2026 23:02:41 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 23 Jul 2026 23:02:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Jul 2026 23:02:41 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 23 Jul 2026 23:02:41 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:30627cea5424c411bee6559e1aed4c4b977ceaab0f12695130c3825de516d2cc`  
		Last Modified: Thu, 23 Jul 2026 22:56:48 GMT  
		Size: 47.9 MB (47927752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:234be8523cd72e078cbe87180ca47afebce94ce3742f0ee3605ac25c749657a3`  
		Last Modified: Thu, 23 Jul 2026 23:03:13 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35c80c3f0cadcf7d1980dd5a8c8527c0d7425eac00e44b98cc4db8e11baa6b34`  
		Last Modified: Thu, 23 Jul 2026 23:03:13 GMT  
		Size: 783.6 KB (783562 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:718475825f6aa95f12cca1af84f19cd08bd86db578c24e8c7a8e5fb8410ad82c`  
		Last Modified: Thu, 23 Jul 2026 23:03:13 GMT  
		Size: 6.2 MB (6193245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a08e28acd68d0eeb8b2c468542cefe0039a5db8a08567e89c0fb2e2b4fe12f9`  
		Last Modified: Thu, 23 Jul 2026 23:03:13 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fab344c20702564cc80f8568716ff0c89e315eb3dc1bcb952f7876ead579784`  
		Last Modified: Thu, 23 Jul 2026 23:03:14 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fc0feac79eff00b6b60d0e7861d07d21541e7af66d2dc932d3f2d1ef005329b`  
		Last Modified: Thu, 23 Jul 2026 23:03:16 GMT  
		Size: 57.0 MB (56994496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bfe3c84c77064d6c2079dd56388882467d620d00ee852a362db9020f56d9475`  
		Last Modified: Thu, 23 Jul 2026 23:03:14 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ee3c7ac3aeb35755397c3f6773f0c9e055fe6d7f24b9e45f89839ed89d64eed`  
		Last Modified: Thu, 23 Jul 2026 23:03:18 GMT  
		Size: 158.9 MB (158932559 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71fecf9a0313a541a67befed2730494ebf5f41a129042ea6be48983015b144b0`  
		Last Modified: Thu, 23 Jul 2026 23:03:15 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:acef6498ad7097a10658f1d65c4e55eec56543be09f1da1c9f38acc835dc456f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16834323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe9dc03903a3432a3acd30619e996e1d01087ce6a7c6e5cfa44b1f39578e5b41`

```dockerfile
```

-	Layers:
	-	`sha256:ebf48244f5b504fc3ccc4c2c19c26ba3ee066cdfd86414fc9a1ce34ae258faa0`  
		Last Modified: Thu, 23 Jul 2026 23:03:14 GMT  
		Size: 16.8 MB (16799215 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:58ddc8cbf91211c5691b00d60e15d9418e48915f73fe10aaa419be57baf80109`  
		Last Modified: Thu, 23 Jul 2026 23:03:13 GMT  
		Size: 35.1 KB (35108 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:67818b6f65e184dd1660f018cd0504d32101dd07855d4fcf395135d337c9a619
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.3 MB (267258221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76523493e38cb86bb386443d939c6c878aaf20c34f598765355a17b05fdd71fe`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:55:20 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:55:20 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 23:01:08 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 23 Jul 2026 23:01:10 GMT
ENV GOSU_VERSION=1.19
# Thu, 23 Jul 2026 23:01:10 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 23 Jul 2026 23:01:43 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 23 Jul 2026 23:01:44 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 23 Jul 2026 23:01:44 GMT
ENV MYSQL_MAJOR=9.7
# Thu, 23 Jul 2026 23:01:44 GMT
ENV MYSQL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 23:01:44 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 23 Jul 2026 23:02:21 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 23 Jul 2026 23:02:21 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 23 Jul 2026 23:02:21 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 23:03:08 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 23 Jul 2026 23:03:08 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Jul 2026 23:03:08 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 23 Jul 2026 23:03:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Jul 2026 23:03:08 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 23 Jul 2026 23:03:08 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c1a8d43326b89b25aff74efe983a017053ef32314f6332ba2cf4e76fcf4f2b09`  
		Last Modified: Thu, 23 Jul 2026 22:55:31 GMT  
		Size: 46.5 MB (46477905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d929fa47221a9fb68752358425c99b29f498e9cc1605186bb6777340fcabe207`  
		Last Modified: Thu, 23 Jul 2026 23:03:43 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b25acfb705b7060b4171aa38835f634b4667b874b3e1c320c10ccd20363a933`  
		Last Modified: Thu, 23 Jul 2026 23:03:43 GMT  
		Size: 737.5 KB (737522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4731afd3f174de446fdf71b8dc6c72852556058a438d522fae064d69381bf711`  
		Last Modified: Thu, 23 Jul 2026 23:03:43 GMT  
		Size: 5.8 MB (5822634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:daa7bd4f2adba84f8d86205bda55676b4232e7b75c0d02754437cccde2889285`  
		Last Modified: Thu, 23 Jul 2026 23:03:43 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8c58be44c7101fc88c19c8d10d457119276071c177c0cb89ae54bdc344b13a9`  
		Last Modified: Thu, 23 Jul 2026 23:03:44 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56eed86a3bfa1c6dc2a5b1238cc497e3e1210cdde96d2fb38feca7b669d29b47`  
		Last Modified: Thu, 23 Jul 2026 23:03:46 GMT  
		Size: 57.0 MB (57000390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a89ae229db9f80f7071a7f1e5a9e44342fb42e3eafd62ead00de1b42c4581193`  
		Last Modified: Thu, 23 Jul 2026 23:03:44 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6c3bc80bfe2b42ae0bc5bec6ced272b1d0916a5162ac752b9cda64cf9cc3f32`  
		Last Modified: Thu, 23 Jul 2026 23:03:48 GMT  
		Size: 157.2 MB (157210403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58607c4b8deb85125920fd8796c9a9983c860b7633886dc593b1a33dd3553155`  
		Last Modified: Thu, 23 Jul 2026 23:03:46 GMT  
		Size: 5.2 KB (5222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:d06479e8b298ce138d4c222371fb912c36a32f4b96d0e3e736a630551f1a27b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb2cdce2ea4df7194773315282d107c3de47f1e56593cd587553fbcab5a97c91`

```dockerfile
```

-	Layers:
	-	`sha256:6cf7ac25ee1676d9c7e0430f0d71d296d355f5d571ab8b7540dd3ce121123343`  
		Last Modified: Thu, 23 Jul 2026 23:03:44 GMT  
		Size: 16.8 MB (16797687 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2b7166ac8d57053b7da7ef07841c62d232f0e26344644e72d9e2892809b8fe7f`  
		Last Modified: Thu, 23 Jul 2026 23:03:43 GMT  
		Size: 35.4 KB (35449 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:oraclelinux9`

```console
$ docker pull mysql@sha256:cbade841779f1661300e705721f9d2ff159865cc7a8a291affbff43ac6ec7f1d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:b09034342b94a61117ccbf223a4c20f1eef060fcf11b6a721126a9a15286ea3b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.8 MB (270840982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d04ab00413e7110afbb8c8edfb07ef2599f3fe52641d8c1f5ee6c58b3269991f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:56:37 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:56:37 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 23:00:59 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 23 Jul 2026 23:01:01 GMT
ENV GOSU_VERSION=1.19
# Thu, 23 Jul 2026 23:01:01 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 23 Jul 2026 23:01:28 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 23 Jul 2026 23:01:29 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 23 Jul 2026 23:01:29 GMT
ENV MYSQL_MAJOR=9.7
# Thu, 23 Jul 2026 23:01:29 GMT
ENV MYSQL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 23:01:29 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 23 Jul 2026 23:01:59 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 23 Jul 2026 23:01:59 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 23 Jul 2026 23:01:59 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 23:02:41 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 23 Jul 2026 23:02:41 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Jul 2026 23:02:41 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 23 Jul 2026 23:02:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Jul 2026 23:02:41 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 23 Jul 2026 23:02:41 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:30627cea5424c411bee6559e1aed4c4b977ceaab0f12695130c3825de516d2cc`  
		Last Modified: Thu, 23 Jul 2026 22:56:48 GMT  
		Size: 47.9 MB (47927752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:234be8523cd72e078cbe87180ca47afebce94ce3742f0ee3605ac25c749657a3`  
		Last Modified: Thu, 23 Jul 2026 23:03:13 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35c80c3f0cadcf7d1980dd5a8c8527c0d7425eac00e44b98cc4db8e11baa6b34`  
		Last Modified: Thu, 23 Jul 2026 23:03:13 GMT  
		Size: 783.6 KB (783562 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:718475825f6aa95f12cca1af84f19cd08bd86db578c24e8c7a8e5fb8410ad82c`  
		Last Modified: Thu, 23 Jul 2026 23:03:13 GMT  
		Size: 6.2 MB (6193245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a08e28acd68d0eeb8b2c468542cefe0039a5db8a08567e89c0fb2e2b4fe12f9`  
		Last Modified: Thu, 23 Jul 2026 23:03:13 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fab344c20702564cc80f8568716ff0c89e315eb3dc1bcb952f7876ead579784`  
		Last Modified: Thu, 23 Jul 2026 23:03:14 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fc0feac79eff00b6b60d0e7861d07d21541e7af66d2dc932d3f2d1ef005329b`  
		Last Modified: Thu, 23 Jul 2026 23:03:16 GMT  
		Size: 57.0 MB (56994496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bfe3c84c77064d6c2079dd56388882467d620d00ee852a362db9020f56d9475`  
		Last Modified: Thu, 23 Jul 2026 23:03:14 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ee3c7ac3aeb35755397c3f6773f0c9e055fe6d7f24b9e45f89839ed89d64eed`  
		Last Modified: Thu, 23 Jul 2026 23:03:18 GMT  
		Size: 158.9 MB (158932559 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71fecf9a0313a541a67befed2730494ebf5f41a129042ea6be48983015b144b0`  
		Last Modified: Thu, 23 Jul 2026 23:03:15 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:acef6498ad7097a10658f1d65c4e55eec56543be09f1da1c9f38acc835dc456f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16834323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe9dc03903a3432a3acd30619e996e1d01087ce6a7c6e5cfa44b1f39578e5b41`

```dockerfile
```

-	Layers:
	-	`sha256:ebf48244f5b504fc3ccc4c2c19c26ba3ee066cdfd86414fc9a1ce34ae258faa0`  
		Last Modified: Thu, 23 Jul 2026 23:03:14 GMT  
		Size: 16.8 MB (16799215 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:58ddc8cbf91211c5691b00d60e15d9418e48915f73fe10aaa419be57baf80109`  
		Last Modified: Thu, 23 Jul 2026 23:03:13 GMT  
		Size: 35.1 KB (35108 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:67818b6f65e184dd1660f018cd0504d32101dd07855d4fcf395135d337c9a619
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.3 MB (267258221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76523493e38cb86bb386443d939c6c878aaf20c34f598765355a17b05fdd71fe`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:55:20 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:55:20 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 23:01:08 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 23 Jul 2026 23:01:10 GMT
ENV GOSU_VERSION=1.19
# Thu, 23 Jul 2026 23:01:10 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 23 Jul 2026 23:01:43 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 23 Jul 2026 23:01:44 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 23 Jul 2026 23:01:44 GMT
ENV MYSQL_MAJOR=9.7
# Thu, 23 Jul 2026 23:01:44 GMT
ENV MYSQL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 23:01:44 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 23 Jul 2026 23:02:21 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 23 Jul 2026 23:02:21 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 23 Jul 2026 23:02:21 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 23:03:08 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 23 Jul 2026 23:03:08 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Jul 2026 23:03:08 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 23 Jul 2026 23:03:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Jul 2026 23:03:08 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 23 Jul 2026 23:03:08 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c1a8d43326b89b25aff74efe983a017053ef32314f6332ba2cf4e76fcf4f2b09`  
		Last Modified: Thu, 23 Jul 2026 22:55:31 GMT  
		Size: 46.5 MB (46477905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d929fa47221a9fb68752358425c99b29f498e9cc1605186bb6777340fcabe207`  
		Last Modified: Thu, 23 Jul 2026 23:03:43 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b25acfb705b7060b4171aa38835f634b4667b874b3e1c320c10ccd20363a933`  
		Last Modified: Thu, 23 Jul 2026 23:03:43 GMT  
		Size: 737.5 KB (737522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4731afd3f174de446fdf71b8dc6c72852556058a438d522fae064d69381bf711`  
		Last Modified: Thu, 23 Jul 2026 23:03:43 GMT  
		Size: 5.8 MB (5822634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:daa7bd4f2adba84f8d86205bda55676b4232e7b75c0d02754437cccde2889285`  
		Last Modified: Thu, 23 Jul 2026 23:03:43 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8c58be44c7101fc88c19c8d10d457119276071c177c0cb89ae54bdc344b13a9`  
		Last Modified: Thu, 23 Jul 2026 23:03:44 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56eed86a3bfa1c6dc2a5b1238cc497e3e1210cdde96d2fb38feca7b669d29b47`  
		Last Modified: Thu, 23 Jul 2026 23:03:46 GMT  
		Size: 57.0 MB (57000390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a89ae229db9f80f7071a7f1e5a9e44342fb42e3eafd62ead00de1b42c4581193`  
		Last Modified: Thu, 23 Jul 2026 23:03:44 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6c3bc80bfe2b42ae0bc5bec6ced272b1d0916a5162ac752b9cda64cf9cc3f32`  
		Last Modified: Thu, 23 Jul 2026 23:03:48 GMT  
		Size: 157.2 MB (157210403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58607c4b8deb85125920fd8796c9a9983c860b7633886dc593b1a33dd3553155`  
		Last Modified: Thu, 23 Jul 2026 23:03:46 GMT  
		Size: 5.2 KB (5222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:d06479e8b298ce138d4c222371fb912c36a32f4b96d0e3e736a630551f1a27b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb2cdce2ea4df7194773315282d107c3de47f1e56593cd587553fbcab5a97c91`

```dockerfile
```

-	Layers:
	-	`sha256:6cf7ac25ee1676d9c7e0430f0d71d296d355f5d571ab8b7540dd3ce121123343`  
		Last Modified: Thu, 23 Jul 2026 23:03:44 GMT  
		Size: 16.8 MB (16797687 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2b7166ac8d57053b7da7ef07841c62d232f0e26344644e72d9e2892809b8fe7f`  
		Last Modified: Thu, 23 Jul 2026 23:03:43 GMT  
		Size: 35.4 KB (35449 bytes)  
		MIME: application/vnd.in-toto+json
