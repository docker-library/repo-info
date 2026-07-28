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
$ docker pull mysql@sha256:66aec17cd21a956029b83f083b813073859e8355dc1a00e55df6ba02f0e32345
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:26` - linux; amd64

```console
$ docker pull mysql@sha256:973c5e8e4d2f12ecc3da9ca9d8d4189b6a7e3d17584c66fca6dae6993c0417ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.3 MB (272333489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d236310860c6d039bb44b1e0569de1e6b6806ec5c40aa7c63560590fbde6b649`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:56:37 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:56:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 22:06:40 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 27 Jul 2026 22:06:42 GMT
ENV GOSU_VERSION=1.19
# Mon, 27 Jul 2026 22:06:42 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 27 Jul 2026 22:07:09 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 27 Jul 2026 22:07:10 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 27 Jul 2026 22:07:10 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 27 Jul 2026 22:07:10 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Mon, 27 Jul 2026 22:07:10 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 27 Jul 2026 22:07:41 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 27 Jul 2026 22:07:42 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 27 Jul 2026 22:07:42 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Mon, 27 Jul 2026 22:08:23 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 27 Jul 2026 22:08:23 GMT
VOLUME [/var/lib/mysql]
# Mon, 27 Jul 2026 22:08:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 27 Jul 2026 22:08:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 27 Jul 2026 22:08:24 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 27 Jul 2026 22:08:24 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:30627cea5424c411bee6559e1aed4c4b977ceaab0f12695130c3825de516d2cc`  
		Last Modified: Thu, 23 Jul 2026 22:56:48 GMT  
		Size: 47.9 MB (47927752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e887550bdc468b2dd72d7967d59dc44a552d8785b9e253359e6f061120ce3ba`  
		Last Modified: Mon, 27 Jul 2026 22:08:56 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35475b275575bdbb3f219284a8dcda29bb3cf9bdad6c24921b1a62cbac1db7b7`  
		Last Modified: Mon, 27 Jul 2026 22:08:56 GMT  
		Size: 783.6 KB (783559 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27683f99b921c9cb7a589ec0fe071d5555800dfe0f5499ee035d1ef7e71e9774`  
		Last Modified: Mon, 27 Jul 2026 22:08:56 GMT  
		Size: 6.2 MB (6193229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bb65eb170f99612f059043a0ef560d32bd46493f464c75ac3b0a2c12aa31101`  
		Last Modified: Mon, 27 Jul 2026 22:08:56 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e480dcc782ea688f26f79154dc11e0fbbcc7b370d9724b1990cedeff94f4d934`  
		Last Modified: Mon, 27 Jul 2026 22:08:57 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1791a4d7fecfe7b185ffad81c57cd591720399c816dcf6d8d3268454c03e8a0b`  
		Last Modified: Mon, 27 Jul 2026 22:08:59 GMT  
		Size: 57.5 MB (57452984 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71fa527c6c686e011bb6d2f54bc628e289e10cd437b61310f11206888989a74b`  
		Last Modified: Mon, 27 Jul 2026 22:08:57 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4e766e27938130bdc1f262546153c62d4473aeedf74d658434f10505c7e1bca`  
		Last Modified: Mon, 27 Jul 2026 22:09:02 GMT  
		Size: 160.0 MB (159966583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:feffc3e2a7dd54c89a91313183a3fe385a3dde046a414f60cd8e3f6c5682b7b7`  
		Last Modified: Mon, 27 Jul 2026 22:08:58 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26` - unknown; unknown

```console
$ docker pull mysql@sha256:97918f41ab26e7590202676650657d764b67dd7a761e6c0d1d75e35d3f8f6227
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17452628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:316ace686f30f4788bc8f4252c034e137c12b6cb57037efdaa5dedf4bd73a12e`

```dockerfile
```

-	Layers:
	-	`sha256:808810e42158451cf4e1cb1fee8898f75ddeddb1f6d3b6070985926d548a6220`  
		Last Modified: Mon, 27 Jul 2026 22:08:57 GMT  
		Size: 17.4 MB (17417330 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:81ee3e1129f4c4a932904e5f0c2d96a170a98e10db51e378c4e45a05008fc3d6`  
		Last Modified: Mon, 27 Jul 2026 22:08:56 GMT  
		Size: 35.3 KB (35298 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:26` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:4ed9768780c0b47c7d72c66132423993be22aa4504c3af5b3ab8bc9a0c76c36b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.7 MB (268717252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96aaced979c95f9a9da0df59a1c1ed8089b0210a266570ca2db10928f2c6be1a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:55:20 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:55:20 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 22:06:25 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 27 Jul 2026 22:06:26 GMT
ENV GOSU_VERSION=1.19
# Mon, 27 Jul 2026 22:06:26 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 27 Jul 2026 22:06:59 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 27 Jul 2026 22:06:59 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 27 Jul 2026 22:06:59 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 27 Jul 2026 22:06:59 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Mon, 27 Jul 2026 22:07:00 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 27 Jul 2026 22:07:35 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 27 Jul 2026 22:07:35 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 27 Jul 2026 22:07:35 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Mon, 27 Jul 2026 22:08:24 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 27 Jul 2026 22:08:24 GMT
VOLUME [/var/lib/mysql]
# Mon, 27 Jul 2026 22:08:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 27 Jul 2026 22:08:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 27 Jul 2026 22:08:24 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 27 Jul 2026 22:08:24 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c1a8d43326b89b25aff74efe983a017053ef32314f6332ba2cf4e76fcf4f2b09`  
		Last Modified: Thu, 23 Jul 2026 22:55:31 GMT  
		Size: 46.5 MB (46477905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:944f69e1b2b338d7907324cd317843ce912345bae54432038614b707ab9170b6`  
		Last Modified: Mon, 27 Jul 2026 22:09:00 GMT  
		Size: 887.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c8bc0fe906fd46b9f3693ae7e6214a6df6f673b23291d60391132a0a9d7ecf0`  
		Last Modified: Mon, 27 Jul 2026 22:09:00 GMT  
		Size: 737.5 KB (737527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c33b18df1d3b00d740232ae2a5000bba34018e3b3acf8e01286e0ce25e5f50e6`  
		Last Modified: Mon, 27 Jul 2026 22:09:00 GMT  
		Size: 5.8 MB (5822621 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ec807440a038e2a2ec2096aee8ab45dc65fe0f5dc23af3b0b7ef40e523aa659`  
		Last Modified: Mon, 27 Jul 2026 22:09:00 GMT  
		Size: 2.6 KB (2604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b658fa1eb0d7e2fb74c6d0af75594894a117669435e9c07c6d092957795f2b8c`  
		Last Modified: Mon, 27 Jul 2026 22:09:01 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4348b7d2c8f51c37a9f39227e7b6366e6111685e1ce744b967ffff44d89674f3`  
		Last Modified: Mon, 27 Jul 2026 22:09:04 GMT  
		Size: 57.4 MB (57435893 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:279157f1041e8af4baede2019ffc23e4cac9fa07780e9f7383ed5f8cd863fdac`  
		Last Modified: Mon, 27 Jul 2026 22:09:01 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec569be443bb71898d28b6c47ad87083eaccefd9aa57442b0e495e4878171a11`  
		Last Modified: Mon, 27 Jul 2026 22:09:06 GMT  
		Size: 158.2 MB (158233926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74431a8f5848bfc3163e256709dbb18f349998d6d477e6bb2ac40eac7e973870`  
		Last Modified: Mon, 27 Jul 2026 22:09:03 GMT  
		Size: 5.2 KB (5224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26` - unknown; unknown

```console
$ docker pull mysql@sha256:7c412412603df835acc61ca1f81700c074fb99fefc82d048646e55c5e2d5fb37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17451442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3089ffa526bae4ab3532e7bcb7915b1988c9cd36e4f2776b6c0bb0e32e36a82f`

```dockerfile
```

-	Layers:
	-	`sha256:76ec0a7f5412cadf6ae062a6d9d9e6d8a0327c41b207ec8d2f61c313027f50e0`  
		Last Modified: Mon, 27 Jul 2026 22:09:01 GMT  
		Size: 17.4 MB (17415803 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:053b4a51a7b42b7b26ae70990111f710781914e1d5bd8844a720039ebaf3073d`  
		Last Modified: Mon, 27 Jul 2026 22:09:00 GMT  
		Size: 35.6 KB (35639 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:26-oracle`

```console
$ docker pull mysql@sha256:66aec17cd21a956029b83f083b813073859e8355dc1a00e55df6ba02f0e32345
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:26-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:973c5e8e4d2f12ecc3da9ca9d8d4189b6a7e3d17584c66fca6dae6993c0417ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.3 MB (272333489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d236310860c6d039bb44b1e0569de1e6b6806ec5c40aa7c63560590fbde6b649`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:56:37 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:56:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 22:06:40 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 27 Jul 2026 22:06:42 GMT
ENV GOSU_VERSION=1.19
# Mon, 27 Jul 2026 22:06:42 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 27 Jul 2026 22:07:09 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 27 Jul 2026 22:07:10 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 27 Jul 2026 22:07:10 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 27 Jul 2026 22:07:10 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Mon, 27 Jul 2026 22:07:10 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 27 Jul 2026 22:07:41 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 27 Jul 2026 22:07:42 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 27 Jul 2026 22:07:42 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Mon, 27 Jul 2026 22:08:23 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 27 Jul 2026 22:08:23 GMT
VOLUME [/var/lib/mysql]
# Mon, 27 Jul 2026 22:08:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 27 Jul 2026 22:08:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 27 Jul 2026 22:08:24 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 27 Jul 2026 22:08:24 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:30627cea5424c411bee6559e1aed4c4b977ceaab0f12695130c3825de516d2cc`  
		Last Modified: Thu, 23 Jul 2026 22:56:48 GMT  
		Size: 47.9 MB (47927752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e887550bdc468b2dd72d7967d59dc44a552d8785b9e253359e6f061120ce3ba`  
		Last Modified: Mon, 27 Jul 2026 22:08:56 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35475b275575bdbb3f219284a8dcda29bb3cf9bdad6c24921b1a62cbac1db7b7`  
		Last Modified: Mon, 27 Jul 2026 22:08:56 GMT  
		Size: 783.6 KB (783559 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27683f99b921c9cb7a589ec0fe071d5555800dfe0f5499ee035d1ef7e71e9774`  
		Last Modified: Mon, 27 Jul 2026 22:08:56 GMT  
		Size: 6.2 MB (6193229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bb65eb170f99612f059043a0ef560d32bd46493f464c75ac3b0a2c12aa31101`  
		Last Modified: Mon, 27 Jul 2026 22:08:56 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e480dcc782ea688f26f79154dc11e0fbbcc7b370d9724b1990cedeff94f4d934`  
		Last Modified: Mon, 27 Jul 2026 22:08:57 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1791a4d7fecfe7b185ffad81c57cd591720399c816dcf6d8d3268454c03e8a0b`  
		Last Modified: Mon, 27 Jul 2026 22:08:59 GMT  
		Size: 57.5 MB (57452984 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71fa527c6c686e011bb6d2f54bc628e289e10cd437b61310f11206888989a74b`  
		Last Modified: Mon, 27 Jul 2026 22:08:57 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4e766e27938130bdc1f262546153c62d4473aeedf74d658434f10505c7e1bca`  
		Last Modified: Mon, 27 Jul 2026 22:09:02 GMT  
		Size: 160.0 MB (159966583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:feffc3e2a7dd54c89a91313183a3fe385a3dde046a414f60cd8e3f6c5682b7b7`  
		Last Modified: Mon, 27 Jul 2026 22:08:58 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:97918f41ab26e7590202676650657d764b67dd7a761e6c0d1d75e35d3f8f6227
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17452628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:316ace686f30f4788bc8f4252c034e137c12b6cb57037efdaa5dedf4bd73a12e`

```dockerfile
```

-	Layers:
	-	`sha256:808810e42158451cf4e1cb1fee8898f75ddeddb1f6d3b6070985926d548a6220`  
		Last Modified: Mon, 27 Jul 2026 22:08:57 GMT  
		Size: 17.4 MB (17417330 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:81ee3e1129f4c4a932904e5f0c2d96a170a98e10db51e378c4e45a05008fc3d6`  
		Last Modified: Mon, 27 Jul 2026 22:08:56 GMT  
		Size: 35.3 KB (35298 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:26-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:4ed9768780c0b47c7d72c66132423993be22aa4504c3af5b3ab8bc9a0c76c36b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.7 MB (268717252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96aaced979c95f9a9da0df59a1c1ed8089b0210a266570ca2db10928f2c6be1a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:55:20 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:55:20 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 22:06:25 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 27 Jul 2026 22:06:26 GMT
ENV GOSU_VERSION=1.19
# Mon, 27 Jul 2026 22:06:26 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 27 Jul 2026 22:06:59 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 27 Jul 2026 22:06:59 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 27 Jul 2026 22:06:59 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 27 Jul 2026 22:06:59 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Mon, 27 Jul 2026 22:07:00 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 27 Jul 2026 22:07:35 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 27 Jul 2026 22:07:35 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 27 Jul 2026 22:07:35 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Mon, 27 Jul 2026 22:08:24 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 27 Jul 2026 22:08:24 GMT
VOLUME [/var/lib/mysql]
# Mon, 27 Jul 2026 22:08:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 27 Jul 2026 22:08:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 27 Jul 2026 22:08:24 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 27 Jul 2026 22:08:24 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c1a8d43326b89b25aff74efe983a017053ef32314f6332ba2cf4e76fcf4f2b09`  
		Last Modified: Thu, 23 Jul 2026 22:55:31 GMT  
		Size: 46.5 MB (46477905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:944f69e1b2b338d7907324cd317843ce912345bae54432038614b707ab9170b6`  
		Last Modified: Mon, 27 Jul 2026 22:09:00 GMT  
		Size: 887.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c8bc0fe906fd46b9f3693ae7e6214a6df6f673b23291d60391132a0a9d7ecf0`  
		Last Modified: Mon, 27 Jul 2026 22:09:00 GMT  
		Size: 737.5 KB (737527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c33b18df1d3b00d740232ae2a5000bba34018e3b3acf8e01286e0ce25e5f50e6`  
		Last Modified: Mon, 27 Jul 2026 22:09:00 GMT  
		Size: 5.8 MB (5822621 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ec807440a038e2a2ec2096aee8ab45dc65fe0f5dc23af3b0b7ef40e523aa659`  
		Last Modified: Mon, 27 Jul 2026 22:09:00 GMT  
		Size: 2.6 KB (2604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b658fa1eb0d7e2fb74c6d0af75594894a117669435e9c07c6d092957795f2b8c`  
		Last Modified: Mon, 27 Jul 2026 22:09:01 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4348b7d2c8f51c37a9f39227e7b6366e6111685e1ce744b967ffff44d89674f3`  
		Last Modified: Mon, 27 Jul 2026 22:09:04 GMT  
		Size: 57.4 MB (57435893 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:279157f1041e8af4baede2019ffc23e4cac9fa07780e9f7383ed5f8cd863fdac`  
		Last Modified: Mon, 27 Jul 2026 22:09:01 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec569be443bb71898d28b6c47ad87083eaccefd9aa57442b0e495e4878171a11`  
		Last Modified: Mon, 27 Jul 2026 22:09:06 GMT  
		Size: 158.2 MB (158233926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74431a8f5848bfc3163e256709dbb18f349998d6d477e6bb2ac40eac7e973870`  
		Last Modified: Mon, 27 Jul 2026 22:09:03 GMT  
		Size: 5.2 KB (5224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:7c412412603df835acc61ca1f81700c074fb99fefc82d048646e55c5e2d5fb37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17451442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3089ffa526bae4ab3532e7bcb7915b1988c9cd36e4f2776b6c0bb0e32e36a82f`

```dockerfile
```

-	Layers:
	-	`sha256:76ec0a7f5412cadf6ae062a6d9d9e6d8a0327c41b207ec8d2f61c313027f50e0`  
		Last Modified: Mon, 27 Jul 2026 22:09:01 GMT  
		Size: 17.4 MB (17415803 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:053b4a51a7b42b7b26ae70990111f710781914e1d5bd8844a720039ebaf3073d`  
		Last Modified: Mon, 27 Jul 2026 22:09:00 GMT  
		Size: 35.6 KB (35639 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:26-oraclelinux9`

```console
$ docker pull mysql@sha256:66aec17cd21a956029b83f083b813073859e8355dc1a00e55df6ba02f0e32345
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:26-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:973c5e8e4d2f12ecc3da9ca9d8d4189b6a7e3d17584c66fca6dae6993c0417ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.3 MB (272333489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d236310860c6d039bb44b1e0569de1e6b6806ec5c40aa7c63560590fbde6b649`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:56:37 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:56:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 22:06:40 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 27 Jul 2026 22:06:42 GMT
ENV GOSU_VERSION=1.19
# Mon, 27 Jul 2026 22:06:42 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 27 Jul 2026 22:07:09 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 27 Jul 2026 22:07:10 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 27 Jul 2026 22:07:10 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 27 Jul 2026 22:07:10 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Mon, 27 Jul 2026 22:07:10 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 27 Jul 2026 22:07:41 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 27 Jul 2026 22:07:42 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 27 Jul 2026 22:07:42 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Mon, 27 Jul 2026 22:08:23 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 27 Jul 2026 22:08:23 GMT
VOLUME [/var/lib/mysql]
# Mon, 27 Jul 2026 22:08:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 27 Jul 2026 22:08:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 27 Jul 2026 22:08:24 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 27 Jul 2026 22:08:24 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:30627cea5424c411bee6559e1aed4c4b977ceaab0f12695130c3825de516d2cc`  
		Last Modified: Thu, 23 Jul 2026 22:56:48 GMT  
		Size: 47.9 MB (47927752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e887550bdc468b2dd72d7967d59dc44a552d8785b9e253359e6f061120ce3ba`  
		Last Modified: Mon, 27 Jul 2026 22:08:56 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35475b275575bdbb3f219284a8dcda29bb3cf9bdad6c24921b1a62cbac1db7b7`  
		Last Modified: Mon, 27 Jul 2026 22:08:56 GMT  
		Size: 783.6 KB (783559 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27683f99b921c9cb7a589ec0fe071d5555800dfe0f5499ee035d1ef7e71e9774`  
		Last Modified: Mon, 27 Jul 2026 22:08:56 GMT  
		Size: 6.2 MB (6193229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bb65eb170f99612f059043a0ef560d32bd46493f464c75ac3b0a2c12aa31101`  
		Last Modified: Mon, 27 Jul 2026 22:08:56 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e480dcc782ea688f26f79154dc11e0fbbcc7b370d9724b1990cedeff94f4d934`  
		Last Modified: Mon, 27 Jul 2026 22:08:57 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1791a4d7fecfe7b185ffad81c57cd591720399c816dcf6d8d3268454c03e8a0b`  
		Last Modified: Mon, 27 Jul 2026 22:08:59 GMT  
		Size: 57.5 MB (57452984 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71fa527c6c686e011bb6d2f54bc628e289e10cd437b61310f11206888989a74b`  
		Last Modified: Mon, 27 Jul 2026 22:08:57 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4e766e27938130bdc1f262546153c62d4473aeedf74d658434f10505c7e1bca`  
		Last Modified: Mon, 27 Jul 2026 22:09:02 GMT  
		Size: 160.0 MB (159966583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:feffc3e2a7dd54c89a91313183a3fe385a3dde046a414f60cd8e3f6c5682b7b7`  
		Last Modified: Mon, 27 Jul 2026 22:08:58 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:97918f41ab26e7590202676650657d764b67dd7a761e6c0d1d75e35d3f8f6227
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17452628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:316ace686f30f4788bc8f4252c034e137c12b6cb57037efdaa5dedf4bd73a12e`

```dockerfile
```

-	Layers:
	-	`sha256:808810e42158451cf4e1cb1fee8898f75ddeddb1f6d3b6070985926d548a6220`  
		Last Modified: Mon, 27 Jul 2026 22:08:57 GMT  
		Size: 17.4 MB (17417330 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:81ee3e1129f4c4a932904e5f0c2d96a170a98e10db51e378c4e45a05008fc3d6`  
		Last Modified: Mon, 27 Jul 2026 22:08:56 GMT  
		Size: 35.3 KB (35298 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:26-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:4ed9768780c0b47c7d72c66132423993be22aa4504c3af5b3ab8bc9a0c76c36b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.7 MB (268717252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96aaced979c95f9a9da0df59a1c1ed8089b0210a266570ca2db10928f2c6be1a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:55:20 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:55:20 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 22:06:25 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 27 Jul 2026 22:06:26 GMT
ENV GOSU_VERSION=1.19
# Mon, 27 Jul 2026 22:06:26 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 27 Jul 2026 22:06:59 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 27 Jul 2026 22:06:59 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 27 Jul 2026 22:06:59 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 27 Jul 2026 22:06:59 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Mon, 27 Jul 2026 22:07:00 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 27 Jul 2026 22:07:35 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 27 Jul 2026 22:07:35 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 27 Jul 2026 22:07:35 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Mon, 27 Jul 2026 22:08:24 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 27 Jul 2026 22:08:24 GMT
VOLUME [/var/lib/mysql]
# Mon, 27 Jul 2026 22:08:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 27 Jul 2026 22:08:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 27 Jul 2026 22:08:24 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 27 Jul 2026 22:08:24 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c1a8d43326b89b25aff74efe983a017053ef32314f6332ba2cf4e76fcf4f2b09`  
		Last Modified: Thu, 23 Jul 2026 22:55:31 GMT  
		Size: 46.5 MB (46477905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:944f69e1b2b338d7907324cd317843ce912345bae54432038614b707ab9170b6`  
		Last Modified: Mon, 27 Jul 2026 22:09:00 GMT  
		Size: 887.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c8bc0fe906fd46b9f3693ae7e6214a6df6f673b23291d60391132a0a9d7ecf0`  
		Last Modified: Mon, 27 Jul 2026 22:09:00 GMT  
		Size: 737.5 KB (737527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c33b18df1d3b00d740232ae2a5000bba34018e3b3acf8e01286e0ce25e5f50e6`  
		Last Modified: Mon, 27 Jul 2026 22:09:00 GMT  
		Size: 5.8 MB (5822621 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ec807440a038e2a2ec2096aee8ab45dc65fe0f5dc23af3b0b7ef40e523aa659`  
		Last Modified: Mon, 27 Jul 2026 22:09:00 GMT  
		Size: 2.6 KB (2604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b658fa1eb0d7e2fb74c6d0af75594894a117669435e9c07c6d092957795f2b8c`  
		Last Modified: Mon, 27 Jul 2026 22:09:01 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4348b7d2c8f51c37a9f39227e7b6366e6111685e1ce744b967ffff44d89674f3`  
		Last Modified: Mon, 27 Jul 2026 22:09:04 GMT  
		Size: 57.4 MB (57435893 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:279157f1041e8af4baede2019ffc23e4cac9fa07780e9f7383ed5f8cd863fdac`  
		Last Modified: Mon, 27 Jul 2026 22:09:01 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec569be443bb71898d28b6c47ad87083eaccefd9aa57442b0e495e4878171a11`  
		Last Modified: Mon, 27 Jul 2026 22:09:06 GMT  
		Size: 158.2 MB (158233926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74431a8f5848bfc3163e256709dbb18f349998d6d477e6bb2ac40eac7e973870`  
		Last Modified: Mon, 27 Jul 2026 22:09:03 GMT  
		Size: 5.2 KB (5224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:7c412412603df835acc61ca1f81700c074fb99fefc82d048646e55c5e2d5fb37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17451442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3089ffa526bae4ab3532e7bcb7915b1988c9cd36e4f2776b6c0bb0e32e36a82f`

```dockerfile
```

-	Layers:
	-	`sha256:76ec0a7f5412cadf6ae062a6d9d9e6d8a0327c41b207ec8d2f61c313027f50e0`  
		Last Modified: Mon, 27 Jul 2026 22:09:01 GMT  
		Size: 17.4 MB (17415803 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:053b4a51a7b42b7b26ae70990111f710781914e1d5bd8844a720039ebaf3073d`  
		Last Modified: Mon, 27 Jul 2026 22:09:00 GMT  
		Size: 35.6 KB (35639 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:26.7`

```console
$ docker pull mysql@sha256:66aec17cd21a956029b83f083b813073859e8355dc1a00e55df6ba02f0e32345
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:26.7` - linux; amd64

```console
$ docker pull mysql@sha256:973c5e8e4d2f12ecc3da9ca9d8d4189b6a7e3d17584c66fca6dae6993c0417ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.3 MB (272333489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d236310860c6d039bb44b1e0569de1e6b6806ec5c40aa7c63560590fbde6b649`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:56:37 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:56:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 22:06:40 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 27 Jul 2026 22:06:42 GMT
ENV GOSU_VERSION=1.19
# Mon, 27 Jul 2026 22:06:42 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 27 Jul 2026 22:07:09 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 27 Jul 2026 22:07:10 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 27 Jul 2026 22:07:10 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 27 Jul 2026 22:07:10 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Mon, 27 Jul 2026 22:07:10 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 27 Jul 2026 22:07:41 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 27 Jul 2026 22:07:42 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 27 Jul 2026 22:07:42 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Mon, 27 Jul 2026 22:08:23 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 27 Jul 2026 22:08:23 GMT
VOLUME [/var/lib/mysql]
# Mon, 27 Jul 2026 22:08:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 27 Jul 2026 22:08:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 27 Jul 2026 22:08:24 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 27 Jul 2026 22:08:24 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:30627cea5424c411bee6559e1aed4c4b977ceaab0f12695130c3825de516d2cc`  
		Last Modified: Thu, 23 Jul 2026 22:56:48 GMT  
		Size: 47.9 MB (47927752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e887550bdc468b2dd72d7967d59dc44a552d8785b9e253359e6f061120ce3ba`  
		Last Modified: Mon, 27 Jul 2026 22:08:56 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35475b275575bdbb3f219284a8dcda29bb3cf9bdad6c24921b1a62cbac1db7b7`  
		Last Modified: Mon, 27 Jul 2026 22:08:56 GMT  
		Size: 783.6 KB (783559 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27683f99b921c9cb7a589ec0fe071d5555800dfe0f5499ee035d1ef7e71e9774`  
		Last Modified: Mon, 27 Jul 2026 22:08:56 GMT  
		Size: 6.2 MB (6193229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bb65eb170f99612f059043a0ef560d32bd46493f464c75ac3b0a2c12aa31101`  
		Last Modified: Mon, 27 Jul 2026 22:08:56 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e480dcc782ea688f26f79154dc11e0fbbcc7b370d9724b1990cedeff94f4d934`  
		Last Modified: Mon, 27 Jul 2026 22:08:57 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1791a4d7fecfe7b185ffad81c57cd591720399c816dcf6d8d3268454c03e8a0b`  
		Last Modified: Mon, 27 Jul 2026 22:08:59 GMT  
		Size: 57.5 MB (57452984 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71fa527c6c686e011bb6d2f54bc628e289e10cd437b61310f11206888989a74b`  
		Last Modified: Mon, 27 Jul 2026 22:08:57 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4e766e27938130bdc1f262546153c62d4473aeedf74d658434f10505c7e1bca`  
		Last Modified: Mon, 27 Jul 2026 22:09:02 GMT  
		Size: 160.0 MB (159966583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:feffc3e2a7dd54c89a91313183a3fe385a3dde046a414f60cd8e3f6c5682b7b7`  
		Last Modified: Mon, 27 Jul 2026 22:08:58 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26.7` - unknown; unknown

```console
$ docker pull mysql@sha256:97918f41ab26e7590202676650657d764b67dd7a761e6c0d1d75e35d3f8f6227
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17452628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:316ace686f30f4788bc8f4252c034e137c12b6cb57037efdaa5dedf4bd73a12e`

```dockerfile
```

-	Layers:
	-	`sha256:808810e42158451cf4e1cb1fee8898f75ddeddb1f6d3b6070985926d548a6220`  
		Last Modified: Mon, 27 Jul 2026 22:08:57 GMT  
		Size: 17.4 MB (17417330 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:81ee3e1129f4c4a932904e5f0c2d96a170a98e10db51e378c4e45a05008fc3d6`  
		Last Modified: Mon, 27 Jul 2026 22:08:56 GMT  
		Size: 35.3 KB (35298 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:26.7` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:4ed9768780c0b47c7d72c66132423993be22aa4504c3af5b3ab8bc9a0c76c36b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.7 MB (268717252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96aaced979c95f9a9da0df59a1c1ed8089b0210a266570ca2db10928f2c6be1a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:55:20 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:55:20 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 22:06:25 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 27 Jul 2026 22:06:26 GMT
ENV GOSU_VERSION=1.19
# Mon, 27 Jul 2026 22:06:26 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 27 Jul 2026 22:06:59 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 27 Jul 2026 22:06:59 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 27 Jul 2026 22:06:59 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 27 Jul 2026 22:06:59 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Mon, 27 Jul 2026 22:07:00 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 27 Jul 2026 22:07:35 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 27 Jul 2026 22:07:35 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 27 Jul 2026 22:07:35 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Mon, 27 Jul 2026 22:08:24 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 27 Jul 2026 22:08:24 GMT
VOLUME [/var/lib/mysql]
# Mon, 27 Jul 2026 22:08:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 27 Jul 2026 22:08:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 27 Jul 2026 22:08:24 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 27 Jul 2026 22:08:24 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c1a8d43326b89b25aff74efe983a017053ef32314f6332ba2cf4e76fcf4f2b09`  
		Last Modified: Thu, 23 Jul 2026 22:55:31 GMT  
		Size: 46.5 MB (46477905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:944f69e1b2b338d7907324cd317843ce912345bae54432038614b707ab9170b6`  
		Last Modified: Mon, 27 Jul 2026 22:09:00 GMT  
		Size: 887.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c8bc0fe906fd46b9f3693ae7e6214a6df6f673b23291d60391132a0a9d7ecf0`  
		Last Modified: Mon, 27 Jul 2026 22:09:00 GMT  
		Size: 737.5 KB (737527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c33b18df1d3b00d740232ae2a5000bba34018e3b3acf8e01286e0ce25e5f50e6`  
		Last Modified: Mon, 27 Jul 2026 22:09:00 GMT  
		Size: 5.8 MB (5822621 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ec807440a038e2a2ec2096aee8ab45dc65fe0f5dc23af3b0b7ef40e523aa659`  
		Last Modified: Mon, 27 Jul 2026 22:09:00 GMT  
		Size: 2.6 KB (2604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b658fa1eb0d7e2fb74c6d0af75594894a117669435e9c07c6d092957795f2b8c`  
		Last Modified: Mon, 27 Jul 2026 22:09:01 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4348b7d2c8f51c37a9f39227e7b6366e6111685e1ce744b967ffff44d89674f3`  
		Last Modified: Mon, 27 Jul 2026 22:09:04 GMT  
		Size: 57.4 MB (57435893 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:279157f1041e8af4baede2019ffc23e4cac9fa07780e9f7383ed5f8cd863fdac`  
		Last Modified: Mon, 27 Jul 2026 22:09:01 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec569be443bb71898d28b6c47ad87083eaccefd9aa57442b0e495e4878171a11`  
		Last Modified: Mon, 27 Jul 2026 22:09:06 GMT  
		Size: 158.2 MB (158233926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74431a8f5848bfc3163e256709dbb18f349998d6d477e6bb2ac40eac7e973870`  
		Last Modified: Mon, 27 Jul 2026 22:09:03 GMT  
		Size: 5.2 KB (5224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26.7` - unknown; unknown

```console
$ docker pull mysql@sha256:7c412412603df835acc61ca1f81700c074fb99fefc82d048646e55c5e2d5fb37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17451442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3089ffa526bae4ab3532e7bcb7915b1988c9cd36e4f2776b6c0bb0e32e36a82f`

```dockerfile
```

-	Layers:
	-	`sha256:76ec0a7f5412cadf6ae062a6d9d9e6d8a0327c41b207ec8d2f61c313027f50e0`  
		Last Modified: Mon, 27 Jul 2026 22:09:01 GMT  
		Size: 17.4 MB (17415803 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:053b4a51a7b42b7b26ae70990111f710781914e1d5bd8844a720039ebaf3073d`  
		Last Modified: Mon, 27 Jul 2026 22:09:00 GMT  
		Size: 35.6 KB (35639 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:26.7-oracle`

```console
$ docker pull mysql@sha256:66aec17cd21a956029b83f083b813073859e8355dc1a00e55df6ba02f0e32345
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:26.7-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:973c5e8e4d2f12ecc3da9ca9d8d4189b6a7e3d17584c66fca6dae6993c0417ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.3 MB (272333489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d236310860c6d039bb44b1e0569de1e6b6806ec5c40aa7c63560590fbde6b649`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:56:37 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:56:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 22:06:40 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 27 Jul 2026 22:06:42 GMT
ENV GOSU_VERSION=1.19
# Mon, 27 Jul 2026 22:06:42 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 27 Jul 2026 22:07:09 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 27 Jul 2026 22:07:10 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 27 Jul 2026 22:07:10 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 27 Jul 2026 22:07:10 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Mon, 27 Jul 2026 22:07:10 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 27 Jul 2026 22:07:41 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 27 Jul 2026 22:07:42 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 27 Jul 2026 22:07:42 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Mon, 27 Jul 2026 22:08:23 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 27 Jul 2026 22:08:23 GMT
VOLUME [/var/lib/mysql]
# Mon, 27 Jul 2026 22:08:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 27 Jul 2026 22:08:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 27 Jul 2026 22:08:24 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 27 Jul 2026 22:08:24 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:30627cea5424c411bee6559e1aed4c4b977ceaab0f12695130c3825de516d2cc`  
		Last Modified: Thu, 23 Jul 2026 22:56:48 GMT  
		Size: 47.9 MB (47927752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e887550bdc468b2dd72d7967d59dc44a552d8785b9e253359e6f061120ce3ba`  
		Last Modified: Mon, 27 Jul 2026 22:08:56 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35475b275575bdbb3f219284a8dcda29bb3cf9bdad6c24921b1a62cbac1db7b7`  
		Last Modified: Mon, 27 Jul 2026 22:08:56 GMT  
		Size: 783.6 KB (783559 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27683f99b921c9cb7a589ec0fe071d5555800dfe0f5499ee035d1ef7e71e9774`  
		Last Modified: Mon, 27 Jul 2026 22:08:56 GMT  
		Size: 6.2 MB (6193229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bb65eb170f99612f059043a0ef560d32bd46493f464c75ac3b0a2c12aa31101`  
		Last Modified: Mon, 27 Jul 2026 22:08:56 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e480dcc782ea688f26f79154dc11e0fbbcc7b370d9724b1990cedeff94f4d934`  
		Last Modified: Mon, 27 Jul 2026 22:08:57 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1791a4d7fecfe7b185ffad81c57cd591720399c816dcf6d8d3268454c03e8a0b`  
		Last Modified: Mon, 27 Jul 2026 22:08:59 GMT  
		Size: 57.5 MB (57452984 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71fa527c6c686e011bb6d2f54bc628e289e10cd437b61310f11206888989a74b`  
		Last Modified: Mon, 27 Jul 2026 22:08:57 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4e766e27938130bdc1f262546153c62d4473aeedf74d658434f10505c7e1bca`  
		Last Modified: Mon, 27 Jul 2026 22:09:02 GMT  
		Size: 160.0 MB (159966583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:feffc3e2a7dd54c89a91313183a3fe385a3dde046a414f60cd8e3f6c5682b7b7`  
		Last Modified: Mon, 27 Jul 2026 22:08:58 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26.7-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:97918f41ab26e7590202676650657d764b67dd7a761e6c0d1d75e35d3f8f6227
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17452628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:316ace686f30f4788bc8f4252c034e137c12b6cb57037efdaa5dedf4bd73a12e`

```dockerfile
```

-	Layers:
	-	`sha256:808810e42158451cf4e1cb1fee8898f75ddeddb1f6d3b6070985926d548a6220`  
		Last Modified: Mon, 27 Jul 2026 22:08:57 GMT  
		Size: 17.4 MB (17417330 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:81ee3e1129f4c4a932904e5f0c2d96a170a98e10db51e378c4e45a05008fc3d6`  
		Last Modified: Mon, 27 Jul 2026 22:08:56 GMT  
		Size: 35.3 KB (35298 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:26.7-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:4ed9768780c0b47c7d72c66132423993be22aa4504c3af5b3ab8bc9a0c76c36b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.7 MB (268717252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96aaced979c95f9a9da0df59a1c1ed8089b0210a266570ca2db10928f2c6be1a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:55:20 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:55:20 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 22:06:25 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 27 Jul 2026 22:06:26 GMT
ENV GOSU_VERSION=1.19
# Mon, 27 Jul 2026 22:06:26 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 27 Jul 2026 22:06:59 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 27 Jul 2026 22:06:59 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 27 Jul 2026 22:06:59 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 27 Jul 2026 22:06:59 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Mon, 27 Jul 2026 22:07:00 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 27 Jul 2026 22:07:35 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 27 Jul 2026 22:07:35 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 27 Jul 2026 22:07:35 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Mon, 27 Jul 2026 22:08:24 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 27 Jul 2026 22:08:24 GMT
VOLUME [/var/lib/mysql]
# Mon, 27 Jul 2026 22:08:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 27 Jul 2026 22:08:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 27 Jul 2026 22:08:24 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 27 Jul 2026 22:08:24 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c1a8d43326b89b25aff74efe983a017053ef32314f6332ba2cf4e76fcf4f2b09`  
		Last Modified: Thu, 23 Jul 2026 22:55:31 GMT  
		Size: 46.5 MB (46477905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:944f69e1b2b338d7907324cd317843ce912345bae54432038614b707ab9170b6`  
		Last Modified: Mon, 27 Jul 2026 22:09:00 GMT  
		Size: 887.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c8bc0fe906fd46b9f3693ae7e6214a6df6f673b23291d60391132a0a9d7ecf0`  
		Last Modified: Mon, 27 Jul 2026 22:09:00 GMT  
		Size: 737.5 KB (737527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c33b18df1d3b00d740232ae2a5000bba34018e3b3acf8e01286e0ce25e5f50e6`  
		Last Modified: Mon, 27 Jul 2026 22:09:00 GMT  
		Size: 5.8 MB (5822621 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ec807440a038e2a2ec2096aee8ab45dc65fe0f5dc23af3b0b7ef40e523aa659`  
		Last Modified: Mon, 27 Jul 2026 22:09:00 GMT  
		Size: 2.6 KB (2604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b658fa1eb0d7e2fb74c6d0af75594894a117669435e9c07c6d092957795f2b8c`  
		Last Modified: Mon, 27 Jul 2026 22:09:01 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4348b7d2c8f51c37a9f39227e7b6366e6111685e1ce744b967ffff44d89674f3`  
		Last Modified: Mon, 27 Jul 2026 22:09:04 GMT  
		Size: 57.4 MB (57435893 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:279157f1041e8af4baede2019ffc23e4cac9fa07780e9f7383ed5f8cd863fdac`  
		Last Modified: Mon, 27 Jul 2026 22:09:01 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec569be443bb71898d28b6c47ad87083eaccefd9aa57442b0e495e4878171a11`  
		Last Modified: Mon, 27 Jul 2026 22:09:06 GMT  
		Size: 158.2 MB (158233926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74431a8f5848bfc3163e256709dbb18f349998d6d477e6bb2ac40eac7e973870`  
		Last Modified: Mon, 27 Jul 2026 22:09:03 GMT  
		Size: 5.2 KB (5224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26.7-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:7c412412603df835acc61ca1f81700c074fb99fefc82d048646e55c5e2d5fb37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17451442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3089ffa526bae4ab3532e7bcb7915b1988c9cd36e4f2776b6c0bb0e32e36a82f`

```dockerfile
```

-	Layers:
	-	`sha256:76ec0a7f5412cadf6ae062a6d9d9e6d8a0327c41b207ec8d2f61c313027f50e0`  
		Last Modified: Mon, 27 Jul 2026 22:09:01 GMT  
		Size: 17.4 MB (17415803 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:053b4a51a7b42b7b26ae70990111f710781914e1d5bd8844a720039ebaf3073d`  
		Last Modified: Mon, 27 Jul 2026 22:09:00 GMT  
		Size: 35.6 KB (35639 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:26.7-oraclelinux9`

```console
$ docker pull mysql@sha256:66aec17cd21a956029b83f083b813073859e8355dc1a00e55df6ba02f0e32345
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:26.7-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:973c5e8e4d2f12ecc3da9ca9d8d4189b6a7e3d17584c66fca6dae6993c0417ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.3 MB (272333489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d236310860c6d039bb44b1e0569de1e6b6806ec5c40aa7c63560590fbde6b649`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:56:37 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:56:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 22:06:40 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 27 Jul 2026 22:06:42 GMT
ENV GOSU_VERSION=1.19
# Mon, 27 Jul 2026 22:06:42 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 27 Jul 2026 22:07:09 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 27 Jul 2026 22:07:10 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 27 Jul 2026 22:07:10 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 27 Jul 2026 22:07:10 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Mon, 27 Jul 2026 22:07:10 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 27 Jul 2026 22:07:41 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 27 Jul 2026 22:07:42 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 27 Jul 2026 22:07:42 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Mon, 27 Jul 2026 22:08:23 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 27 Jul 2026 22:08:23 GMT
VOLUME [/var/lib/mysql]
# Mon, 27 Jul 2026 22:08:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 27 Jul 2026 22:08:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 27 Jul 2026 22:08:24 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 27 Jul 2026 22:08:24 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:30627cea5424c411bee6559e1aed4c4b977ceaab0f12695130c3825de516d2cc`  
		Last Modified: Thu, 23 Jul 2026 22:56:48 GMT  
		Size: 47.9 MB (47927752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e887550bdc468b2dd72d7967d59dc44a552d8785b9e253359e6f061120ce3ba`  
		Last Modified: Mon, 27 Jul 2026 22:08:56 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35475b275575bdbb3f219284a8dcda29bb3cf9bdad6c24921b1a62cbac1db7b7`  
		Last Modified: Mon, 27 Jul 2026 22:08:56 GMT  
		Size: 783.6 KB (783559 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27683f99b921c9cb7a589ec0fe071d5555800dfe0f5499ee035d1ef7e71e9774`  
		Last Modified: Mon, 27 Jul 2026 22:08:56 GMT  
		Size: 6.2 MB (6193229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bb65eb170f99612f059043a0ef560d32bd46493f464c75ac3b0a2c12aa31101`  
		Last Modified: Mon, 27 Jul 2026 22:08:56 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e480dcc782ea688f26f79154dc11e0fbbcc7b370d9724b1990cedeff94f4d934`  
		Last Modified: Mon, 27 Jul 2026 22:08:57 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1791a4d7fecfe7b185ffad81c57cd591720399c816dcf6d8d3268454c03e8a0b`  
		Last Modified: Mon, 27 Jul 2026 22:08:59 GMT  
		Size: 57.5 MB (57452984 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71fa527c6c686e011bb6d2f54bc628e289e10cd437b61310f11206888989a74b`  
		Last Modified: Mon, 27 Jul 2026 22:08:57 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4e766e27938130bdc1f262546153c62d4473aeedf74d658434f10505c7e1bca`  
		Last Modified: Mon, 27 Jul 2026 22:09:02 GMT  
		Size: 160.0 MB (159966583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:feffc3e2a7dd54c89a91313183a3fe385a3dde046a414f60cd8e3f6c5682b7b7`  
		Last Modified: Mon, 27 Jul 2026 22:08:58 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26.7-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:97918f41ab26e7590202676650657d764b67dd7a761e6c0d1d75e35d3f8f6227
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17452628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:316ace686f30f4788bc8f4252c034e137c12b6cb57037efdaa5dedf4bd73a12e`

```dockerfile
```

-	Layers:
	-	`sha256:808810e42158451cf4e1cb1fee8898f75ddeddb1f6d3b6070985926d548a6220`  
		Last Modified: Mon, 27 Jul 2026 22:08:57 GMT  
		Size: 17.4 MB (17417330 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:81ee3e1129f4c4a932904e5f0c2d96a170a98e10db51e378c4e45a05008fc3d6`  
		Last Modified: Mon, 27 Jul 2026 22:08:56 GMT  
		Size: 35.3 KB (35298 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:26.7-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:4ed9768780c0b47c7d72c66132423993be22aa4504c3af5b3ab8bc9a0c76c36b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.7 MB (268717252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96aaced979c95f9a9da0df59a1c1ed8089b0210a266570ca2db10928f2c6be1a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:55:20 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:55:20 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 22:06:25 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 27 Jul 2026 22:06:26 GMT
ENV GOSU_VERSION=1.19
# Mon, 27 Jul 2026 22:06:26 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 27 Jul 2026 22:06:59 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 27 Jul 2026 22:06:59 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 27 Jul 2026 22:06:59 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 27 Jul 2026 22:06:59 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Mon, 27 Jul 2026 22:07:00 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 27 Jul 2026 22:07:35 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 27 Jul 2026 22:07:35 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 27 Jul 2026 22:07:35 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Mon, 27 Jul 2026 22:08:24 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 27 Jul 2026 22:08:24 GMT
VOLUME [/var/lib/mysql]
# Mon, 27 Jul 2026 22:08:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 27 Jul 2026 22:08:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 27 Jul 2026 22:08:24 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 27 Jul 2026 22:08:24 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c1a8d43326b89b25aff74efe983a017053ef32314f6332ba2cf4e76fcf4f2b09`  
		Last Modified: Thu, 23 Jul 2026 22:55:31 GMT  
		Size: 46.5 MB (46477905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:944f69e1b2b338d7907324cd317843ce912345bae54432038614b707ab9170b6`  
		Last Modified: Mon, 27 Jul 2026 22:09:00 GMT  
		Size: 887.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c8bc0fe906fd46b9f3693ae7e6214a6df6f673b23291d60391132a0a9d7ecf0`  
		Last Modified: Mon, 27 Jul 2026 22:09:00 GMT  
		Size: 737.5 KB (737527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c33b18df1d3b00d740232ae2a5000bba34018e3b3acf8e01286e0ce25e5f50e6`  
		Last Modified: Mon, 27 Jul 2026 22:09:00 GMT  
		Size: 5.8 MB (5822621 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ec807440a038e2a2ec2096aee8ab45dc65fe0f5dc23af3b0b7ef40e523aa659`  
		Last Modified: Mon, 27 Jul 2026 22:09:00 GMT  
		Size: 2.6 KB (2604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b658fa1eb0d7e2fb74c6d0af75594894a117669435e9c07c6d092957795f2b8c`  
		Last Modified: Mon, 27 Jul 2026 22:09:01 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4348b7d2c8f51c37a9f39227e7b6366e6111685e1ce744b967ffff44d89674f3`  
		Last Modified: Mon, 27 Jul 2026 22:09:04 GMT  
		Size: 57.4 MB (57435893 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:279157f1041e8af4baede2019ffc23e4cac9fa07780e9f7383ed5f8cd863fdac`  
		Last Modified: Mon, 27 Jul 2026 22:09:01 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec569be443bb71898d28b6c47ad87083eaccefd9aa57442b0e495e4878171a11`  
		Last Modified: Mon, 27 Jul 2026 22:09:06 GMT  
		Size: 158.2 MB (158233926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74431a8f5848bfc3163e256709dbb18f349998d6d477e6bb2ac40eac7e973870`  
		Last Modified: Mon, 27 Jul 2026 22:09:03 GMT  
		Size: 5.2 KB (5224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26.7-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:7c412412603df835acc61ca1f81700c074fb99fefc82d048646e55c5e2d5fb37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17451442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3089ffa526bae4ab3532e7bcb7915b1988c9cd36e4f2776b6c0bb0e32e36a82f`

```dockerfile
```

-	Layers:
	-	`sha256:76ec0a7f5412cadf6ae062a6d9d9e6d8a0327c41b207ec8d2f61c313027f50e0`  
		Last Modified: Mon, 27 Jul 2026 22:09:01 GMT  
		Size: 17.4 MB (17415803 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:053b4a51a7b42b7b26ae70990111f710781914e1d5bd8844a720039ebaf3073d`  
		Last Modified: Mon, 27 Jul 2026 22:09:00 GMT  
		Size: 35.6 KB (35639 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:26.7.0`

```console
$ docker pull mysql@sha256:66aec17cd21a956029b83f083b813073859e8355dc1a00e55df6ba02f0e32345
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:26.7.0` - linux; amd64

```console
$ docker pull mysql@sha256:973c5e8e4d2f12ecc3da9ca9d8d4189b6a7e3d17584c66fca6dae6993c0417ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.3 MB (272333489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d236310860c6d039bb44b1e0569de1e6b6806ec5c40aa7c63560590fbde6b649`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:56:37 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:56:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 22:06:40 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 27 Jul 2026 22:06:42 GMT
ENV GOSU_VERSION=1.19
# Mon, 27 Jul 2026 22:06:42 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 27 Jul 2026 22:07:09 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 27 Jul 2026 22:07:10 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 27 Jul 2026 22:07:10 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 27 Jul 2026 22:07:10 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Mon, 27 Jul 2026 22:07:10 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 27 Jul 2026 22:07:41 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 27 Jul 2026 22:07:42 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 27 Jul 2026 22:07:42 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Mon, 27 Jul 2026 22:08:23 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 27 Jul 2026 22:08:23 GMT
VOLUME [/var/lib/mysql]
# Mon, 27 Jul 2026 22:08:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 27 Jul 2026 22:08:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 27 Jul 2026 22:08:24 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 27 Jul 2026 22:08:24 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:30627cea5424c411bee6559e1aed4c4b977ceaab0f12695130c3825de516d2cc`  
		Last Modified: Thu, 23 Jul 2026 22:56:48 GMT  
		Size: 47.9 MB (47927752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e887550bdc468b2dd72d7967d59dc44a552d8785b9e253359e6f061120ce3ba`  
		Last Modified: Mon, 27 Jul 2026 22:08:56 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35475b275575bdbb3f219284a8dcda29bb3cf9bdad6c24921b1a62cbac1db7b7`  
		Last Modified: Mon, 27 Jul 2026 22:08:56 GMT  
		Size: 783.6 KB (783559 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27683f99b921c9cb7a589ec0fe071d5555800dfe0f5499ee035d1ef7e71e9774`  
		Last Modified: Mon, 27 Jul 2026 22:08:56 GMT  
		Size: 6.2 MB (6193229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bb65eb170f99612f059043a0ef560d32bd46493f464c75ac3b0a2c12aa31101`  
		Last Modified: Mon, 27 Jul 2026 22:08:56 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e480dcc782ea688f26f79154dc11e0fbbcc7b370d9724b1990cedeff94f4d934`  
		Last Modified: Mon, 27 Jul 2026 22:08:57 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1791a4d7fecfe7b185ffad81c57cd591720399c816dcf6d8d3268454c03e8a0b`  
		Last Modified: Mon, 27 Jul 2026 22:08:59 GMT  
		Size: 57.5 MB (57452984 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71fa527c6c686e011bb6d2f54bc628e289e10cd437b61310f11206888989a74b`  
		Last Modified: Mon, 27 Jul 2026 22:08:57 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4e766e27938130bdc1f262546153c62d4473aeedf74d658434f10505c7e1bca`  
		Last Modified: Mon, 27 Jul 2026 22:09:02 GMT  
		Size: 160.0 MB (159966583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:feffc3e2a7dd54c89a91313183a3fe385a3dde046a414f60cd8e3f6c5682b7b7`  
		Last Modified: Mon, 27 Jul 2026 22:08:58 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26.7.0` - unknown; unknown

```console
$ docker pull mysql@sha256:97918f41ab26e7590202676650657d764b67dd7a761e6c0d1d75e35d3f8f6227
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17452628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:316ace686f30f4788bc8f4252c034e137c12b6cb57037efdaa5dedf4bd73a12e`

```dockerfile
```

-	Layers:
	-	`sha256:808810e42158451cf4e1cb1fee8898f75ddeddb1f6d3b6070985926d548a6220`  
		Last Modified: Mon, 27 Jul 2026 22:08:57 GMT  
		Size: 17.4 MB (17417330 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:81ee3e1129f4c4a932904e5f0c2d96a170a98e10db51e378c4e45a05008fc3d6`  
		Last Modified: Mon, 27 Jul 2026 22:08:56 GMT  
		Size: 35.3 KB (35298 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:26.7.0` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:4ed9768780c0b47c7d72c66132423993be22aa4504c3af5b3ab8bc9a0c76c36b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.7 MB (268717252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96aaced979c95f9a9da0df59a1c1ed8089b0210a266570ca2db10928f2c6be1a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:55:20 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:55:20 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 22:06:25 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 27 Jul 2026 22:06:26 GMT
ENV GOSU_VERSION=1.19
# Mon, 27 Jul 2026 22:06:26 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 27 Jul 2026 22:06:59 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 27 Jul 2026 22:06:59 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 27 Jul 2026 22:06:59 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 27 Jul 2026 22:06:59 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Mon, 27 Jul 2026 22:07:00 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 27 Jul 2026 22:07:35 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 27 Jul 2026 22:07:35 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 27 Jul 2026 22:07:35 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Mon, 27 Jul 2026 22:08:24 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 27 Jul 2026 22:08:24 GMT
VOLUME [/var/lib/mysql]
# Mon, 27 Jul 2026 22:08:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 27 Jul 2026 22:08:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 27 Jul 2026 22:08:24 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 27 Jul 2026 22:08:24 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c1a8d43326b89b25aff74efe983a017053ef32314f6332ba2cf4e76fcf4f2b09`  
		Last Modified: Thu, 23 Jul 2026 22:55:31 GMT  
		Size: 46.5 MB (46477905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:944f69e1b2b338d7907324cd317843ce912345bae54432038614b707ab9170b6`  
		Last Modified: Mon, 27 Jul 2026 22:09:00 GMT  
		Size: 887.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c8bc0fe906fd46b9f3693ae7e6214a6df6f673b23291d60391132a0a9d7ecf0`  
		Last Modified: Mon, 27 Jul 2026 22:09:00 GMT  
		Size: 737.5 KB (737527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c33b18df1d3b00d740232ae2a5000bba34018e3b3acf8e01286e0ce25e5f50e6`  
		Last Modified: Mon, 27 Jul 2026 22:09:00 GMT  
		Size: 5.8 MB (5822621 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ec807440a038e2a2ec2096aee8ab45dc65fe0f5dc23af3b0b7ef40e523aa659`  
		Last Modified: Mon, 27 Jul 2026 22:09:00 GMT  
		Size: 2.6 KB (2604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b658fa1eb0d7e2fb74c6d0af75594894a117669435e9c07c6d092957795f2b8c`  
		Last Modified: Mon, 27 Jul 2026 22:09:01 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4348b7d2c8f51c37a9f39227e7b6366e6111685e1ce744b967ffff44d89674f3`  
		Last Modified: Mon, 27 Jul 2026 22:09:04 GMT  
		Size: 57.4 MB (57435893 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:279157f1041e8af4baede2019ffc23e4cac9fa07780e9f7383ed5f8cd863fdac`  
		Last Modified: Mon, 27 Jul 2026 22:09:01 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec569be443bb71898d28b6c47ad87083eaccefd9aa57442b0e495e4878171a11`  
		Last Modified: Mon, 27 Jul 2026 22:09:06 GMT  
		Size: 158.2 MB (158233926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74431a8f5848bfc3163e256709dbb18f349998d6d477e6bb2ac40eac7e973870`  
		Last Modified: Mon, 27 Jul 2026 22:09:03 GMT  
		Size: 5.2 KB (5224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26.7.0` - unknown; unknown

```console
$ docker pull mysql@sha256:7c412412603df835acc61ca1f81700c074fb99fefc82d048646e55c5e2d5fb37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17451442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3089ffa526bae4ab3532e7bcb7915b1988c9cd36e4f2776b6c0bb0e32e36a82f`

```dockerfile
```

-	Layers:
	-	`sha256:76ec0a7f5412cadf6ae062a6d9d9e6d8a0327c41b207ec8d2f61c313027f50e0`  
		Last Modified: Mon, 27 Jul 2026 22:09:01 GMT  
		Size: 17.4 MB (17415803 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:053b4a51a7b42b7b26ae70990111f710781914e1d5bd8844a720039ebaf3073d`  
		Last Modified: Mon, 27 Jul 2026 22:09:00 GMT  
		Size: 35.6 KB (35639 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:26.7.0-oracle`

```console
$ docker pull mysql@sha256:66aec17cd21a956029b83f083b813073859e8355dc1a00e55df6ba02f0e32345
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:26.7.0-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:973c5e8e4d2f12ecc3da9ca9d8d4189b6a7e3d17584c66fca6dae6993c0417ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.3 MB (272333489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d236310860c6d039bb44b1e0569de1e6b6806ec5c40aa7c63560590fbde6b649`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:56:37 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:56:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 22:06:40 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 27 Jul 2026 22:06:42 GMT
ENV GOSU_VERSION=1.19
# Mon, 27 Jul 2026 22:06:42 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 27 Jul 2026 22:07:09 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 27 Jul 2026 22:07:10 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 27 Jul 2026 22:07:10 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 27 Jul 2026 22:07:10 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Mon, 27 Jul 2026 22:07:10 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 27 Jul 2026 22:07:41 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 27 Jul 2026 22:07:42 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 27 Jul 2026 22:07:42 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Mon, 27 Jul 2026 22:08:23 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 27 Jul 2026 22:08:23 GMT
VOLUME [/var/lib/mysql]
# Mon, 27 Jul 2026 22:08:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 27 Jul 2026 22:08:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 27 Jul 2026 22:08:24 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 27 Jul 2026 22:08:24 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:30627cea5424c411bee6559e1aed4c4b977ceaab0f12695130c3825de516d2cc`  
		Last Modified: Thu, 23 Jul 2026 22:56:48 GMT  
		Size: 47.9 MB (47927752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e887550bdc468b2dd72d7967d59dc44a552d8785b9e253359e6f061120ce3ba`  
		Last Modified: Mon, 27 Jul 2026 22:08:56 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35475b275575bdbb3f219284a8dcda29bb3cf9bdad6c24921b1a62cbac1db7b7`  
		Last Modified: Mon, 27 Jul 2026 22:08:56 GMT  
		Size: 783.6 KB (783559 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27683f99b921c9cb7a589ec0fe071d5555800dfe0f5499ee035d1ef7e71e9774`  
		Last Modified: Mon, 27 Jul 2026 22:08:56 GMT  
		Size: 6.2 MB (6193229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bb65eb170f99612f059043a0ef560d32bd46493f464c75ac3b0a2c12aa31101`  
		Last Modified: Mon, 27 Jul 2026 22:08:56 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e480dcc782ea688f26f79154dc11e0fbbcc7b370d9724b1990cedeff94f4d934`  
		Last Modified: Mon, 27 Jul 2026 22:08:57 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1791a4d7fecfe7b185ffad81c57cd591720399c816dcf6d8d3268454c03e8a0b`  
		Last Modified: Mon, 27 Jul 2026 22:08:59 GMT  
		Size: 57.5 MB (57452984 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71fa527c6c686e011bb6d2f54bc628e289e10cd437b61310f11206888989a74b`  
		Last Modified: Mon, 27 Jul 2026 22:08:57 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4e766e27938130bdc1f262546153c62d4473aeedf74d658434f10505c7e1bca`  
		Last Modified: Mon, 27 Jul 2026 22:09:02 GMT  
		Size: 160.0 MB (159966583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:feffc3e2a7dd54c89a91313183a3fe385a3dde046a414f60cd8e3f6c5682b7b7`  
		Last Modified: Mon, 27 Jul 2026 22:08:58 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26.7.0-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:97918f41ab26e7590202676650657d764b67dd7a761e6c0d1d75e35d3f8f6227
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17452628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:316ace686f30f4788bc8f4252c034e137c12b6cb57037efdaa5dedf4bd73a12e`

```dockerfile
```

-	Layers:
	-	`sha256:808810e42158451cf4e1cb1fee8898f75ddeddb1f6d3b6070985926d548a6220`  
		Last Modified: Mon, 27 Jul 2026 22:08:57 GMT  
		Size: 17.4 MB (17417330 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:81ee3e1129f4c4a932904e5f0c2d96a170a98e10db51e378c4e45a05008fc3d6`  
		Last Modified: Mon, 27 Jul 2026 22:08:56 GMT  
		Size: 35.3 KB (35298 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:26.7.0-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:4ed9768780c0b47c7d72c66132423993be22aa4504c3af5b3ab8bc9a0c76c36b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.7 MB (268717252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96aaced979c95f9a9da0df59a1c1ed8089b0210a266570ca2db10928f2c6be1a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:55:20 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:55:20 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 22:06:25 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 27 Jul 2026 22:06:26 GMT
ENV GOSU_VERSION=1.19
# Mon, 27 Jul 2026 22:06:26 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 27 Jul 2026 22:06:59 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 27 Jul 2026 22:06:59 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 27 Jul 2026 22:06:59 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 27 Jul 2026 22:06:59 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Mon, 27 Jul 2026 22:07:00 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 27 Jul 2026 22:07:35 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 27 Jul 2026 22:07:35 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 27 Jul 2026 22:07:35 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Mon, 27 Jul 2026 22:08:24 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 27 Jul 2026 22:08:24 GMT
VOLUME [/var/lib/mysql]
# Mon, 27 Jul 2026 22:08:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 27 Jul 2026 22:08:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 27 Jul 2026 22:08:24 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 27 Jul 2026 22:08:24 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c1a8d43326b89b25aff74efe983a017053ef32314f6332ba2cf4e76fcf4f2b09`  
		Last Modified: Thu, 23 Jul 2026 22:55:31 GMT  
		Size: 46.5 MB (46477905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:944f69e1b2b338d7907324cd317843ce912345bae54432038614b707ab9170b6`  
		Last Modified: Mon, 27 Jul 2026 22:09:00 GMT  
		Size: 887.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c8bc0fe906fd46b9f3693ae7e6214a6df6f673b23291d60391132a0a9d7ecf0`  
		Last Modified: Mon, 27 Jul 2026 22:09:00 GMT  
		Size: 737.5 KB (737527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c33b18df1d3b00d740232ae2a5000bba34018e3b3acf8e01286e0ce25e5f50e6`  
		Last Modified: Mon, 27 Jul 2026 22:09:00 GMT  
		Size: 5.8 MB (5822621 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ec807440a038e2a2ec2096aee8ab45dc65fe0f5dc23af3b0b7ef40e523aa659`  
		Last Modified: Mon, 27 Jul 2026 22:09:00 GMT  
		Size: 2.6 KB (2604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b658fa1eb0d7e2fb74c6d0af75594894a117669435e9c07c6d092957795f2b8c`  
		Last Modified: Mon, 27 Jul 2026 22:09:01 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4348b7d2c8f51c37a9f39227e7b6366e6111685e1ce744b967ffff44d89674f3`  
		Last Modified: Mon, 27 Jul 2026 22:09:04 GMT  
		Size: 57.4 MB (57435893 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:279157f1041e8af4baede2019ffc23e4cac9fa07780e9f7383ed5f8cd863fdac`  
		Last Modified: Mon, 27 Jul 2026 22:09:01 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec569be443bb71898d28b6c47ad87083eaccefd9aa57442b0e495e4878171a11`  
		Last Modified: Mon, 27 Jul 2026 22:09:06 GMT  
		Size: 158.2 MB (158233926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74431a8f5848bfc3163e256709dbb18f349998d6d477e6bb2ac40eac7e973870`  
		Last Modified: Mon, 27 Jul 2026 22:09:03 GMT  
		Size: 5.2 KB (5224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26.7.0-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:7c412412603df835acc61ca1f81700c074fb99fefc82d048646e55c5e2d5fb37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17451442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3089ffa526bae4ab3532e7bcb7915b1988c9cd36e4f2776b6c0bb0e32e36a82f`

```dockerfile
```

-	Layers:
	-	`sha256:76ec0a7f5412cadf6ae062a6d9d9e6d8a0327c41b207ec8d2f61c313027f50e0`  
		Last Modified: Mon, 27 Jul 2026 22:09:01 GMT  
		Size: 17.4 MB (17415803 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:053b4a51a7b42b7b26ae70990111f710781914e1d5bd8844a720039ebaf3073d`  
		Last Modified: Mon, 27 Jul 2026 22:09:00 GMT  
		Size: 35.6 KB (35639 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:26.7.0-oraclelinux9`

```console
$ docker pull mysql@sha256:66aec17cd21a956029b83f083b813073859e8355dc1a00e55df6ba02f0e32345
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:26.7.0-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:973c5e8e4d2f12ecc3da9ca9d8d4189b6a7e3d17584c66fca6dae6993c0417ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.3 MB (272333489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d236310860c6d039bb44b1e0569de1e6b6806ec5c40aa7c63560590fbde6b649`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:56:37 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:56:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 22:06:40 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 27 Jul 2026 22:06:42 GMT
ENV GOSU_VERSION=1.19
# Mon, 27 Jul 2026 22:06:42 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 27 Jul 2026 22:07:09 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 27 Jul 2026 22:07:10 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 27 Jul 2026 22:07:10 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 27 Jul 2026 22:07:10 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Mon, 27 Jul 2026 22:07:10 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 27 Jul 2026 22:07:41 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 27 Jul 2026 22:07:42 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 27 Jul 2026 22:07:42 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Mon, 27 Jul 2026 22:08:23 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 27 Jul 2026 22:08:23 GMT
VOLUME [/var/lib/mysql]
# Mon, 27 Jul 2026 22:08:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 27 Jul 2026 22:08:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 27 Jul 2026 22:08:24 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 27 Jul 2026 22:08:24 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:30627cea5424c411bee6559e1aed4c4b977ceaab0f12695130c3825de516d2cc`  
		Last Modified: Thu, 23 Jul 2026 22:56:48 GMT  
		Size: 47.9 MB (47927752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e887550bdc468b2dd72d7967d59dc44a552d8785b9e253359e6f061120ce3ba`  
		Last Modified: Mon, 27 Jul 2026 22:08:56 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35475b275575bdbb3f219284a8dcda29bb3cf9bdad6c24921b1a62cbac1db7b7`  
		Last Modified: Mon, 27 Jul 2026 22:08:56 GMT  
		Size: 783.6 KB (783559 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27683f99b921c9cb7a589ec0fe071d5555800dfe0f5499ee035d1ef7e71e9774`  
		Last Modified: Mon, 27 Jul 2026 22:08:56 GMT  
		Size: 6.2 MB (6193229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bb65eb170f99612f059043a0ef560d32bd46493f464c75ac3b0a2c12aa31101`  
		Last Modified: Mon, 27 Jul 2026 22:08:56 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e480dcc782ea688f26f79154dc11e0fbbcc7b370d9724b1990cedeff94f4d934`  
		Last Modified: Mon, 27 Jul 2026 22:08:57 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1791a4d7fecfe7b185ffad81c57cd591720399c816dcf6d8d3268454c03e8a0b`  
		Last Modified: Mon, 27 Jul 2026 22:08:59 GMT  
		Size: 57.5 MB (57452984 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71fa527c6c686e011bb6d2f54bc628e289e10cd437b61310f11206888989a74b`  
		Last Modified: Mon, 27 Jul 2026 22:08:57 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4e766e27938130bdc1f262546153c62d4473aeedf74d658434f10505c7e1bca`  
		Last Modified: Mon, 27 Jul 2026 22:09:02 GMT  
		Size: 160.0 MB (159966583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:feffc3e2a7dd54c89a91313183a3fe385a3dde046a414f60cd8e3f6c5682b7b7`  
		Last Modified: Mon, 27 Jul 2026 22:08:58 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26.7.0-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:97918f41ab26e7590202676650657d764b67dd7a761e6c0d1d75e35d3f8f6227
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17452628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:316ace686f30f4788bc8f4252c034e137c12b6cb57037efdaa5dedf4bd73a12e`

```dockerfile
```

-	Layers:
	-	`sha256:808810e42158451cf4e1cb1fee8898f75ddeddb1f6d3b6070985926d548a6220`  
		Last Modified: Mon, 27 Jul 2026 22:08:57 GMT  
		Size: 17.4 MB (17417330 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:81ee3e1129f4c4a932904e5f0c2d96a170a98e10db51e378c4e45a05008fc3d6`  
		Last Modified: Mon, 27 Jul 2026 22:08:56 GMT  
		Size: 35.3 KB (35298 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:26.7.0-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:4ed9768780c0b47c7d72c66132423993be22aa4504c3af5b3ab8bc9a0c76c36b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.7 MB (268717252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96aaced979c95f9a9da0df59a1c1ed8089b0210a266570ca2db10928f2c6be1a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:55:20 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:55:20 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 22:06:25 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 27 Jul 2026 22:06:26 GMT
ENV GOSU_VERSION=1.19
# Mon, 27 Jul 2026 22:06:26 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 27 Jul 2026 22:06:59 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 27 Jul 2026 22:06:59 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 27 Jul 2026 22:06:59 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 27 Jul 2026 22:06:59 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Mon, 27 Jul 2026 22:07:00 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 27 Jul 2026 22:07:35 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 27 Jul 2026 22:07:35 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 27 Jul 2026 22:07:35 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Mon, 27 Jul 2026 22:08:24 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 27 Jul 2026 22:08:24 GMT
VOLUME [/var/lib/mysql]
# Mon, 27 Jul 2026 22:08:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 27 Jul 2026 22:08:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 27 Jul 2026 22:08:24 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 27 Jul 2026 22:08:24 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c1a8d43326b89b25aff74efe983a017053ef32314f6332ba2cf4e76fcf4f2b09`  
		Last Modified: Thu, 23 Jul 2026 22:55:31 GMT  
		Size: 46.5 MB (46477905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:944f69e1b2b338d7907324cd317843ce912345bae54432038614b707ab9170b6`  
		Last Modified: Mon, 27 Jul 2026 22:09:00 GMT  
		Size: 887.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c8bc0fe906fd46b9f3693ae7e6214a6df6f673b23291d60391132a0a9d7ecf0`  
		Last Modified: Mon, 27 Jul 2026 22:09:00 GMT  
		Size: 737.5 KB (737527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c33b18df1d3b00d740232ae2a5000bba34018e3b3acf8e01286e0ce25e5f50e6`  
		Last Modified: Mon, 27 Jul 2026 22:09:00 GMT  
		Size: 5.8 MB (5822621 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ec807440a038e2a2ec2096aee8ab45dc65fe0f5dc23af3b0b7ef40e523aa659`  
		Last Modified: Mon, 27 Jul 2026 22:09:00 GMT  
		Size: 2.6 KB (2604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b658fa1eb0d7e2fb74c6d0af75594894a117669435e9c07c6d092957795f2b8c`  
		Last Modified: Mon, 27 Jul 2026 22:09:01 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4348b7d2c8f51c37a9f39227e7b6366e6111685e1ce744b967ffff44d89674f3`  
		Last Modified: Mon, 27 Jul 2026 22:09:04 GMT  
		Size: 57.4 MB (57435893 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:279157f1041e8af4baede2019ffc23e4cac9fa07780e9f7383ed5f8cd863fdac`  
		Last Modified: Mon, 27 Jul 2026 22:09:01 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec569be443bb71898d28b6c47ad87083eaccefd9aa57442b0e495e4878171a11`  
		Last Modified: Mon, 27 Jul 2026 22:09:06 GMT  
		Size: 158.2 MB (158233926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74431a8f5848bfc3163e256709dbb18f349998d6d477e6bb2ac40eac7e973870`  
		Last Modified: Mon, 27 Jul 2026 22:09:03 GMT  
		Size: 5.2 KB (5224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26.7.0-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:7c412412603df835acc61ca1f81700c074fb99fefc82d048646e55c5e2d5fb37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17451442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3089ffa526bae4ab3532e7bcb7915b1988c9cd36e4f2776b6c0bb0e32e36a82f`

```dockerfile
```

-	Layers:
	-	`sha256:76ec0a7f5412cadf6ae062a6d9d9e6d8a0327c41b207ec8d2f61c313027f50e0`  
		Last Modified: Mon, 27 Jul 2026 22:09:01 GMT  
		Size: 17.4 MB (17415803 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:053b4a51a7b42b7b26ae70990111f710781914e1d5bd8844a720039ebaf3073d`  
		Last Modified: Mon, 27 Jul 2026 22:09:00 GMT  
		Size: 35.6 KB (35639 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:8`

```console
$ docker pull mysql@sha256:b3b90af2a6552ae30c266fdb7d5dd55f3afb72404bb78d37fe8a23eb857fd3fb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8` - linux; amd64

```console
$ docker pull mysql@sha256:1d6b6a8fcee8ff758ff151d017f5203cd06792a0e698f0a593c9dfcb14609cf0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.0 MB (238978358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bced325a4ab7aec848f4688371c7433351dcb5dba26fbcc29c67727d898ae5cb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:56:37 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:56:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 22:06:48 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 27 Jul 2026 22:06:49 GMT
ENV GOSU_VERSION=1.19
# Mon, 27 Jul 2026 22:06:49 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 27 Jul 2026 22:07:16 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 27 Jul 2026 22:07:17 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 27 Jul 2026 22:07:17 GMT
ENV MYSQL_MAJOR=8.4
# Mon, 27 Jul 2026 22:07:17 GMT
ENV MYSQL_VERSION=8.4.11-1.el9
# Mon, 27 Jul 2026 22:07:17 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 27 Jul 2026 22:07:48 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 27 Jul 2026 22:07:48 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 27 Jul 2026 22:07:48 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Mon, 27 Jul 2026 22:08:26 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 27 Jul 2026 22:08:26 GMT
VOLUME [/var/lib/mysql]
# Mon, 27 Jul 2026 22:08:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 27 Jul 2026 22:08:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 27 Jul 2026 22:08:26 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 27 Jul 2026 22:08:26 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:30627cea5424c411bee6559e1aed4c4b977ceaab0f12695130c3825de516d2cc`  
		Last Modified: Thu, 23 Jul 2026 22:56:48 GMT  
		Size: 47.9 MB (47927752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8ca58bc6ea9aa873f8871351abbf02be4837493f2779df7372c2540f2b48e91`  
		Last Modified: Mon, 27 Jul 2026 22:08:54 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0f44f87b588dc34dec21b1d2a335ab08ec46a251b2c183f3cfb34fbd82cdbd9`  
		Last Modified: Mon, 27 Jul 2026 22:08:54 GMT  
		Size: 783.6 KB (783558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3efae9596a0b946d9f381f123b3ea558eb9c31f09eb86da7bf0675aabe19200f`  
		Last Modified: Mon, 27 Jul 2026 22:08:54 GMT  
		Size: 6.2 MB (6193204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:860b7bc672107d7e64ad727fa70d68379e026be7ccbedb871636863d5d9ede10`  
		Last Modified: Mon, 27 Jul 2026 22:08:54 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5cddd18da97f8a5978270c5f672fbd8439ff2c32b32014222ef12ee97a0dc95`  
		Last Modified: Mon, 27 Jul 2026 22:08:55 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:289dbe2b4aa0617c555b7ec7e9f0b6bacd4dbff59ee6b17890b9bbb564e9df4d`  
		Last Modified: Mon, 27 Jul 2026 22:08:57 GMT  
		Size: 51.6 MB (51633358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01cb8e5472ee5a03344e34ad54f2ccb581a06a82cf548543a26c9823359a1a68`  
		Last Modified: Mon, 27 Jul 2026 22:08:55 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e31ea7613c63ae05f7c94212b65ad347be272d518822b6201802479ac0b29af4`  
		Last Modified: Mon, 27 Jul 2026 22:08:59 GMT  
		Size: 132.4 MB (132431113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bebc71cfb905f29c91ddc3e37cc7cbce9b94992dadd605a0e8bee5e49c83a6b`  
		Last Modified: Mon, 27 Jul 2026 22:08:56 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8` - unknown; unknown

```console
$ docker pull mysql@sha256:e909dd74dbb01150e326b0fe7fa4c485e4b365dc4fbe5671c97cf18a49bf7375
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15745154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a39e985ee811397d5919b03b46b52c07bf68707be371df3139ce5563371a2925`

```dockerfile
```

-	Layers:
	-	`sha256:80a9fe861429f737ce5e85ef0101a37c2b7d1715e5c2f378ceff6ca7136bff6f`  
		Last Modified: Mon, 27 Jul 2026 22:08:54 GMT  
		Size: 15.7 MB (15711841 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:32ca1b8d1938908e81db850734456f3932bbc0d916785f0e14df64f8705b2105`  
		Last Modified: Mon, 27 Jul 2026 22:08:54 GMT  
		Size: 33.3 KB (33313 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:c9be23757267a888182ff13a633118a84ce7ad360abaa0f12a9c357ddf628b61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.7 MB (233704757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e7e005a680e75d935984d3d9390990d2a709b3ed67e92708e9e6747f1f754c9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:55:20 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:55:20 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 22:06:37 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 27 Jul 2026 22:06:38 GMT
ENV GOSU_VERSION=1.19
# Mon, 27 Jul 2026 22:06:38 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 27 Jul 2026 22:07:12 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 27 Jul 2026 22:07:12 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 27 Jul 2026 22:07:12 GMT
ENV MYSQL_MAJOR=8.4
# Mon, 27 Jul 2026 22:07:12 GMT
ENV MYSQL_VERSION=8.4.11-1.el9
# Mon, 27 Jul 2026 22:07:12 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 27 Jul 2026 22:07:49 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 27 Jul 2026 22:07:49 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 27 Jul 2026 22:07:49 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Mon, 27 Jul 2026 22:08:33 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 27 Jul 2026 22:08:33 GMT
VOLUME [/var/lib/mysql]
# Mon, 27 Jul 2026 22:08:33 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 27 Jul 2026 22:08:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 27 Jul 2026 22:08:33 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 27 Jul 2026 22:08:33 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c1a8d43326b89b25aff74efe983a017053ef32314f6332ba2cf4e76fcf4f2b09`  
		Last Modified: Thu, 23 Jul 2026 22:55:31 GMT  
		Size: 46.5 MB (46477905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a905d3b3fdfba281ca4c2e0df626447933b0be688c721c440c12c18155cad2f`  
		Last Modified: Mon, 27 Jul 2026 22:09:05 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d7f10ed4edfc9a5255dcb08d5f8c1ed80fc7ad689c10cbb6ed01ebd245c14e1`  
		Last Modified: Mon, 27 Jul 2026 22:09:05 GMT  
		Size: 737.5 KB (737524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac21e899ba1c9ddc3f4fc2afea9df0224f23b0e6bb93ba8f36d9e696c83c8f03`  
		Last Modified: Mon, 27 Jul 2026 22:09:05 GMT  
		Size: 5.8 MB (5822633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ff71ea7626e84739779ba45fa74c7c32ae6ee59246f225268a841fc2d9a6faf`  
		Last Modified: Mon, 27 Jul 2026 22:09:05 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3c86b417a740fbeee5fd497137104f5d8f7a6e341b91aaba9a6c4747a86dff9`  
		Last Modified: Mon, 27 Jul 2026 22:09:06 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bec4c5f6b46d0539193c241696c19d0d9e478c95cda5c7ce0bdef2348fc8b239`  
		Last Modified: Mon, 27 Jul 2026 22:09:08 GMT  
		Size: 49.9 MB (49864004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b12e28485eff457d5c5b195626b27d08d2c173f6fb5f804989b649c60b1de642`  
		Last Modified: Mon, 27 Jul 2026 22:09:06 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19c1e4d5e56deb16e6bc5e34a09042f1f986dab192a9755af62093ca8a15d359`  
		Last Modified: Mon, 27 Jul 2026 22:09:10 GMT  
		Size: 130.8 MB (130793323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26eb9d6698f0231db7a4688d660f01174ad18b5e376351e282625f827fc2316b`  
		Last Modified: Mon, 27 Jul 2026 22:09:08 GMT  
		Size: 5.2 KB (5224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8` - unknown; unknown

```console
$ docker pull mysql@sha256:d3ed8e30b98bd04c4dcb47b567ffe31773d67df9acc614031ea4a10a1744e63b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15743823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10014782741562644232d7494da586cddd77481ac28c058a0e4eb0b49bf45d4b`

```dockerfile
```

-	Layers:
	-	`sha256:541dad502f358551016aabc1c699b017d297c36653072e6dc5febe602992b7d5`  
		Last Modified: Mon, 27 Jul 2026 22:09:05 GMT  
		Size: 15.7 MB (15710241 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:64896815bd4e9da5b79fcb097107ebc123bd9e85fae163c1d1c7560d430aa8cd`  
		Last Modified: Mon, 27 Jul 2026 22:09:05 GMT  
		Size: 33.6 KB (33582 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:8-oracle`

```console
$ docker pull mysql@sha256:b3b90af2a6552ae30c266fdb7d5dd55f3afb72404bb78d37fe8a23eb857fd3fb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:1d6b6a8fcee8ff758ff151d017f5203cd06792a0e698f0a593c9dfcb14609cf0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.0 MB (238978358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bced325a4ab7aec848f4688371c7433351dcb5dba26fbcc29c67727d898ae5cb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:56:37 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:56:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 22:06:48 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 27 Jul 2026 22:06:49 GMT
ENV GOSU_VERSION=1.19
# Mon, 27 Jul 2026 22:06:49 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 27 Jul 2026 22:07:16 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 27 Jul 2026 22:07:17 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 27 Jul 2026 22:07:17 GMT
ENV MYSQL_MAJOR=8.4
# Mon, 27 Jul 2026 22:07:17 GMT
ENV MYSQL_VERSION=8.4.11-1.el9
# Mon, 27 Jul 2026 22:07:17 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 27 Jul 2026 22:07:48 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 27 Jul 2026 22:07:48 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 27 Jul 2026 22:07:48 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Mon, 27 Jul 2026 22:08:26 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 27 Jul 2026 22:08:26 GMT
VOLUME [/var/lib/mysql]
# Mon, 27 Jul 2026 22:08:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 27 Jul 2026 22:08:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 27 Jul 2026 22:08:26 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 27 Jul 2026 22:08:26 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:30627cea5424c411bee6559e1aed4c4b977ceaab0f12695130c3825de516d2cc`  
		Last Modified: Thu, 23 Jul 2026 22:56:48 GMT  
		Size: 47.9 MB (47927752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8ca58bc6ea9aa873f8871351abbf02be4837493f2779df7372c2540f2b48e91`  
		Last Modified: Mon, 27 Jul 2026 22:08:54 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0f44f87b588dc34dec21b1d2a335ab08ec46a251b2c183f3cfb34fbd82cdbd9`  
		Last Modified: Mon, 27 Jul 2026 22:08:54 GMT  
		Size: 783.6 KB (783558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3efae9596a0b946d9f381f123b3ea558eb9c31f09eb86da7bf0675aabe19200f`  
		Last Modified: Mon, 27 Jul 2026 22:08:54 GMT  
		Size: 6.2 MB (6193204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:860b7bc672107d7e64ad727fa70d68379e026be7ccbedb871636863d5d9ede10`  
		Last Modified: Mon, 27 Jul 2026 22:08:54 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5cddd18da97f8a5978270c5f672fbd8439ff2c32b32014222ef12ee97a0dc95`  
		Last Modified: Mon, 27 Jul 2026 22:08:55 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:289dbe2b4aa0617c555b7ec7e9f0b6bacd4dbff59ee6b17890b9bbb564e9df4d`  
		Last Modified: Mon, 27 Jul 2026 22:08:57 GMT  
		Size: 51.6 MB (51633358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01cb8e5472ee5a03344e34ad54f2ccb581a06a82cf548543a26c9823359a1a68`  
		Last Modified: Mon, 27 Jul 2026 22:08:55 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e31ea7613c63ae05f7c94212b65ad347be272d518822b6201802479ac0b29af4`  
		Last Modified: Mon, 27 Jul 2026 22:08:59 GMT  
		Size: 132.4 MB (132431113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bebc71cfb905f29c91ddc3e37cc7cbce9b94992dadd605a0e8bee5e49c83a6b`  
		Last Modified: Mon, 27 Jul 2026 22:08:56 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:e909dd74dbb01150e326b0fe7fa4c485e4b365dc4fbe5671c97cf18a49bf7375
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15745154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a39e985ee811397d5919b03b46b52c07bf68707be371df3139ce5563371a2925`

```dockerfile
```

-	Layers:
	-	`sha256:80a9fe861429f737ce5e85ef0101a37c2b7d1715e5c2f378ceff6ca7136bff6f`  
		Last Modified: Mon, 27 Jul 2026 22:08:54 GMT  
		Size: 15.7 MB (15711841 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:32ca1b8d1938908e81db850734456f3932bbc0d916785f0e14df64f8705b2105`  
		Last Modified: Mon, 27 Jul 2026 22:08:54 GMT  
		Size: 33.3 KB (33313 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:c9be23757267a888182ff13a633118a84ce7ad360abaa0f12a9c357ddf628b61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.7 MB (233704757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e7e005a680e75d935984d3d9390990d2a709b3ed67e92708e9e6747f1f754c9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:55:20 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:55:20 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 22:06:37 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 27 Jul 2026 22:06:38 GMT
ENV GOSU_VERSION=1.19
# Mon, 27 Jul 2026 22:06:38 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 27 Jul 2026 22:07:12 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 27 Jul 2026 22:07:12 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 27 Jul 2026 22:07:12 GMT
ENV MYSQL_MAJOR=8.4
# Mon, 27 Jul 2026 22:07:12 GMT
ENV MYSQL_VERSION=8.4.11-1.el9
# Mon, 27 Jul 2026 22:07:12 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 27 Jul 2026 22:07:49 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 27 Jul 2026 22:07:49 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 27 Jul 2026 22:07:49 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Mon, 27 Jul 2026 22:08:33 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 27 Jul 2026 22:08:33 GMT
VOLUME [/var/lib/mysql]
# Mon, 27 Jul 2026 22:08:33 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 27 Jul 2026 22:08:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 27 Jul 2026 22:08:33 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 27 Jul 2026 22:08:33 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c1a8d43326b89b25aff74efe983a017053ef32314f6332ba2cf4e76fcf4f2b09`  
		Last Modified: Thu, 23 Jul 2026 22:55:31 GMT  
		Size: 46.5 MB (46477905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a905d3b3fdfba281ca4c2e0df626447933b0be688c721c440c12c18155cad2f`  
		Last Modified: Mon, 27 Jul 2026 22:09:05 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d7f10ed4edfc9a5255dcb08d5f8c1ed80fc7ad689c10cbb6ed01ebd245c14e1`  
		Last Modified: Mon, 27 Jul 2026 22:09:05 GMT  
		Size: 737.5 KB (737524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac21e899ba1c9ddc3f4fc2afea9df0224f23b0e6bb93ba8f36d9e696c83c8f03`  
		Last Modified: Mon, 27 Jul 2026 22:09:05 GMT  
		Size: 5.8 MB (5822633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ff71ea7626e84739779ba45fa74c7c32ae6ee59246f225268a841fc2d9a6faf`  
		Last Modified: Mon, 27 Jul 2026 22:09:05 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3c86b417a740fbeee5fd497137104f5d8f7a6e341b91aaba9a6c4747a86dff9`  
		Last Modified: Mon, 27 Jul 2026 22:09:06 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bec4c5f6b46d0539193c241696c19d0d9e478c95cda5c7ce0bdef2348fc8b239`  
		Last Modified: Mon, 27 Jul 2026 22:09:08 GMT  
		Size: 49.9 MB (49864004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b12e28485eff457d5c5b195626b27d08d2c173f6fb5f804989b649c60b1de642`  
		Last Modified: Mon, 27 Jul 2026 22:09:06 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19c1e4d5e56deb16e6bc5e34a09042f1f986dab192a9755af62093ca8a15d359`  
		Last Modified: Mon, 27 Jul 2026 22:09:10 GMT  
		Size: 130.8 MB (130793323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26eb9d6698f0231db7a4688d660f01174ad18b5e376351e282625f827fc2316b`  
		Last Modified: Mon, 27 Jul 2026 22:09:08 GMT  
		Size: 5.2 KB (5224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:d3ed8e30b98bd04c4dcb47b567ffe31773d67df9acc614031ea4a10a1744e63b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15743823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10014782741562644232d7494da586cddd77481ac28c058a0e4eb0b49bf45d4b`

```dockerfile
```

-	Layers:
	-	`sha256:541dad502f358551016aabc1c699b017d297c36653072e6dc5febe602992b7d5`  
		Last Modified: Mon, 27 Jul 2026 22:09:05 GMT  
		Size: 15.7 MB (15710241 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:64896815bd4e9da5b79fcb097107ebc123bd9e85fae163c1d1c7560d430aa8cd`  
		Last Modified: Mon, 27 Jul 2026 22:09:05 GMT  
		Size: 33.6 KB (33582 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:8-oraclelinux9`

```console
$ docker pull mysql@sha256:b3b90af2a6552ae30c266fdb7d5dd55f3afb72404bb78d37fe8a23eb857fd3fb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:1d6b6a8fcee8ff758ff151d017f5203cd06792a0e698f0a593c9dfcb14609cf0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.0 MB (238978358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bced325a4ab7aec848f4688371c7433351dcb5dba26fbcc29c67727d898ae5cb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:56:37 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:56:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 22:06:48 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 27 Jul 2026 22:06:49 GMT
ENV GOSU_VERSION=1.19
# Mon, 27 Jul 2026 22:06:49 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 27 Jul 2026 22:07:16 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 27 Jul 2026 22:07:17 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 27 Jul 2026 22:07:17 GMT
ENV MYSQL_MAJOR=8.4
# Mon, 27 Jul 2026 22:07:17 GMT
ENV MYSQL_VERSION=8.4.11-1.el9
# Mon, 27 Jul 2026 22:07:17 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 27 Jul 2026 22:07:48 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 27 Jul 2026 22:07:48 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 27 Jul 2026 22:07:48 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Mon, 27 Jul 2026 22:08:26 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 27 Jul 2026 22:08:26 GMT
VOLUME [/var/lib/mysql]
# Mon, 27 Jul 2026 22:08:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 27 Jul 2026 22:08:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 27 Jul 2026 22:08:26 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 27 Jul 2026 22:08:26 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:30627cea5424c411bee6559e1aed4c4b977ceaab0f12695130c3825de516d2cc`  
		Last Modified: Thu, 23 Jul 2026 22:56:48 GMT  
		Size: 47.9 MB (47927752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8ca58bc6ea9aa873f8871351abbf02be4837493f2779df7372c2540f2b48e91`  
		Last Modified: Mon, 27 Jul 2026 22:08:54 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0f44f87b588dc34dec21b1d2a335ab08ec46a251b2c183f3cfb34fbd82cdbd9`  
		Last Modified: Mon, 27 Jul 2026 22:08:54 GMT  
		Size: 783.6 KB (783558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3efae9596a0b946d9f381f123b3ea558eb9c31f09eb86da7bf0675aabe19200f`  
		Last Modified: Mon, 27 Jul 2026 22:08:54 GMT  
		Size: 6.2 MB (6193204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:860b7bc672107d7e64ad727fa70d68379e026be7ccbedb871636863d5d9ede10`  
		Last Modified: Mon, 27 Jul 2026 22:08:54 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5cddd18da97f8a5978270c5f672fbd8439ff2c32b32014222ef12ee97a0dc95`  
		Last Modified: Mon, 27 Jul 2026 22:08:55 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:289dbe2b4aa0617c555b7ec7e9f0b6bacd4dbff59ee6b17890b9bbb564e9df4d`  
		Last Modified: Mon, 27 Jul 2026 22:08:57 GMT  
		Size: 51.6 MB (51633358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01cb8e5472ee5a03344e34ad54f2ccb581a06a82cf548543a26c9823359a1a68`  
		Last Modified: Mon, 27 Jul 2026 22:08:55 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e31ea7613c63ae05f7c94212b65ad347be272d518822b6201802479ac0b29af4`  
		Last Modified: Mon, 27 Jul 2026 22:08:59 GMT  
		Size: 132.4 MB (132431113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bebc71cfb905f29c91ddc3e37cc7cbce9b94992dadd605a0e8bee5e49c83a6b`  
		Last Modified: Mon, 27 Jul 2026 22:08:56 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:e909dd74dbb01150e326b0fe7fa4c485e4b365dc4fbe5671c97cf18a49bf7375
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15745154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a39e985ee811397d5919b03b46b52c07bf68707be371df3139ce5563371a2925`

```dockerfile
```

-	Layers:
	-	`sha256:80a9fe861429f737ce5e85ef0101a37c2b7d1715e5c2f378ceff6ca7136bff6f`  
		Last Modified: Mon, 27 Jul 2026 22:08:54 GMT  
		Size: 15.7 MB (15711841 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:32ca1b8d1938908e81db850734456f3932bbc0d916785f0e14df64f8705b2105`  
		Last Modified: Mon, 27 Jul 2026 22:08:54 GMT  
		Size: 33.3 KB (33313 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:c9be23757267a888182ff13a633118a84ce7ad360abaa0f12a9c357ddf628b61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.7 MB (233704757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e7e005a680e75d935984d3d9390990d2a709b3ed67e92708e9e6747f1f754c9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:55:20 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:55:20 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 22:06:37 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 27 Jul 2026 22:06:38 GMT
ENV GOSU_VERSION=1.19
# Mon, 27 Jul 2026 22:06:38 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 27 Jul 2026 22:07:12 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 27 Jul 2026 22:07:12 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 27 Jul 2026 22:07:12 GMT
ENV MYSQL_MAJOR=8.4
# Mon, 27 Jul 2026 22:07:12 GMT
ENV MYSQL_VERSION=8.4.11-1.el9
# Mon, 27 Jul 2026 22:07:12 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 27 Jul 2026 22:07:49 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 27 Jul 2026 22:07:49 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 27 Jul 2026 22:07:49 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Mon, 27 Jul 2026 22:08:33 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 27 Jul 2026 22:08:33 GMT
VOLUME [/var/lib/mysql]
# Mon, 27 Jul 2026 22:08:33 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 27 Jul 2026 22:08:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 27 Jul 2026 22:08:33 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 27 Jul 2026 22:08:33 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c1a8d43326b89b25aff74efe983a017053ef32314f6332ba2cf4e76fcf4f2b09`  
		Last Modified: Thu, 23 Jul 2026 22:55:31 GMT  
		Size: 46.5 MB (46477905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a905d3b3fdfba281ca4c2e0df626447933b0be688c721c440c12c18155cad2f`  
		Last Modified: Mon, 27 Jul 2026 22:09:05 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d7f10ed4edfc9a5255dcb08d5f8c1ed80fc7ad689c10cbb6ed01ebd245c14e1`  
		Last Modified: Mon, 27 Jul 2026 22:09:05 GMT  
		Size: 737.5 KB (737524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac21e899ba1c9ddc3f4fc2afea9df0224f23b0e6bb93ba8f36d9e696c83c8f03`  
		Last Modified: Mon, 27 Jul 2026 22:09:05 GMT  
		Size: 5.8 MB (5822633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ff71ea7626e84739779ba45fa74c7c32ae6ee59246f225268a841fc2d9a6faf`  
		Last Modified: Mon, 27 Jul 2026 22:09:05 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3c86b417a740fbeee5fd497137104f5d8f7a6e341b91aaba9a6c4747a86dff9`  
		Last Modified: Mon, 27 Jul 2026 22:09:06 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bec4c5f6b46d0539193c241696c19d0d9e478c95cda5c7ce0bdef2348fc8b239`  
		Last Modified: Mon, 27 Jul 2026 22:09:08 GMT  
		Size: 49.9 MB (49864004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b12e28485eff457d5c5b195626b27d08d2c173f6fb5f804989b649c60b1de642`  
		Last Modified: Mon, 27 Jul 2026 22:09:06 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19c1e4d5e56deb16e6bc5e34a09042f1f986dab192a9755af62093ca8a15d359`  
		Last Modified: Mon, 27 Jul 2026 22:09:10 GMT  
		Size: 130.8 MB (130793323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26eb9d6698f0231db7a4688d660f01174ad18b5e376351e282625f827fc2316b`  
		Last Modified: Mon, 27 Jul 2026 22:09:08 GMT  
		Size: 5.2 KB (5224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:d3ed8e30b98bd04c4dcb47b567ffe31773d67df9acc614031ea4a10a1744e63b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15743823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10014782741562644232d7494da586cddd77481ac28c058a0e4eb0b49bf45d4b`

```dockerfile
```

-	Layers:
	-	`sha256:541dad502f358551016aabc1c699b017d297c36653072e6dc5febe602992b7d5`  
		Last Modified: Mon, 27 Jul 2026 22:09:05 GMT  
		Size: 15.7 MB (15710241 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:64896815bd4e9da5b79fcb097107ebc123bd9e85fae163c1d1c7560d430aa8cd`  
		Last Modified: Mon, 27 Jul 2026 22:09:05 GMT  
		Size: 33.6 KB (33582 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:8.4`

```console
$ docker pull mysql@sha256:b3b90af2a6552ae30c266fdb7d5dd55f3afb72404bb78d37fe8a23eb857fd3fb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8.4` - linux; amd64

```console
$ docker pull mysql@sha256:1d6b6a8fcee8ff758ff151d017f5203cd06792a0e698f0a593c9dfcb14609cf0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.0 MB (238978358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bced325a4ab7aec848f4688371c7433351dcb5dba26fbcc29c67727d898ae5cb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:56:37 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:56:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 22:06:48 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 27 Jul 2026 22:06:49 GMT
ENV GOSU_VERSION=1.19
# Mon, 27 Jul 2026 22:06:49 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 27 Jul 2026 22:07:16 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 27 Jul 2026 22:07:17 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 27 Jul 2026 22:07:17 GMT
ENV MYSQL_MAJOR=8.4
# Mon, 27 Jul 2026 22:07:17 GMT
ENV MYSQL_VERSION=8.4.11-1.el9
# Mon, 27 Jul 2026 22:07:17 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 27 Jul 2026 22:07:48 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 27 Jul 2026 22:07:48 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 27 Jul 2026 22:07:48 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Mon, 27 Jul 2026 22:08:26 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 27 Jul 2026 22:08:26 GMT
VOLUME [/var/lib/mysql]
# Mon, 27 Jul 2026 22:08:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 27 Jul 2026 22:08:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 27 Jul 2026 22:08:26 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 27 Jul 2026 22:08:26 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:30627cea5424c411bee6559e1aed4c4b977ceaab0f12695130c3825de516d2cc`  
		Last Modified: Thu, 23 Jul 2026 22:56:48 GMT  
		Size: 47.9 MB (47927752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8ca58bc6ea9aa873f8871351abbf02be4837493f2779df7372c2540f2b48e91`  
		Last Modified: Mon, 27 Jul 2026 22:08:54 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0f44f87b588dc34dec21b1d2a335ab08ec46a251b2c183f3cfb34fbd82cdbd9`  
		Last Modified: Mon, 27 Jul 2026 22:08:54 GMT  
		Size: 783.6 KB (783558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3efae9596a0b946d9f381f123b3ea558eb9c31f09eb86da7bf0675aabe19200f`  
		Last Modified: Mon, 27 Jul 2026 22:08:54 GMT  
		Size: 6.2 MB (6193204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:860b7bc672107d7e64ad727fa70d68379e026be7ccbedb871636863d5d9ede10`  
		Last Modified: Mon, 27 Jul 2026 22:08:54 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5cddd18da97f8a5978270c5f672fbd8439ff2c32b32014222ef12ee97a0dc95`  
		Last Modified: Mon, 27 Jul 2026 22:08:55 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:289dbe2b4aa0617c555b7ec7e9f0b6bacd4dbff59ee6b17890b9bbb564e9df4d`  
		Last Modified: Mon, 27 Jul 2026 22:08:57 GMT  
		Size: 51.6 MB (51633358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01cb8e5472ee5a03344e34ad54f2ccb581a06a82cf548543a26c9823359a1a68`  
		Last Modified: Mon, 27 Jul 2026 22:08:55 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e31ea7613c63ae05f7c94212b65ad347be272d518822b6201802479ac0b29af4`  
		Last Modified: Mon, 27 Jul 2026 22:08:59 GMT  
		Size: 132.4 MB (132431113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bebc71cfb905f29c91ddc3e37cc7cbce9b94992dadd605a0e8bee5e49c83a6b`  
		Last Modified: Mon, 27 Jul 2026 22:08:56 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4` - unknown; unknown

```console
$ docker pull mysql@sha256:e909dd74dbb01150e326b0fe7fa4c485e4b365dc4fbe5671c97cf18a49bf7375
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15745154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a39e985ee811397d5919b03b46b52c07bf68707be371df3139ce5563371a2925`

```dockerfile
```

-	Layers:
	-	`sha256:80a9fe861429f737ce5e85ef0101a37c2b7d1715e5c2f378ceff6ca7136bff6f`  
		Last Modified: Mon, 27 Jul 2026 22:08:54 GMT  
		Size: 15.7 MB (15711841 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:32ca1b8d1938908e81db850734456f3932bbc0d916785f0e14df64f8705b2105`  
		Last Modified: Mon, 27 Jul 2026 22:08:54 GMT  
		Size: 33.3 KB (33313 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8.4` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:c9be23757267a888182ff13a633118a84ce7ad360abaa0f12a9c357ddf628b61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.7 MB (233704757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e7e005a680e75d935984d3d9390990d2a709b3ed67e92708e9e6747f1f754c9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:55:20 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:55:20 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 22:06:37 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 27 Jul 2026 22:06:38 GMT
ENV GOSU_VERSION=1.19
# Mon, 27 Jul 2026 22:06:38 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 27 Jul 2026 22:07:12 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 27 Jul 2026 22:07:12 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 27 Jul 2026 22:07:12 GMT
ENV MYSQL_MAJOR=8.4
# Mon, 27 Jul 2026 22:07:12 GMT
ENV MYSQL_VERSION=8.4.11-1.el9
# Mon, 27 Jul 2026 22:07:12 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 27 Jul 2026 22:07:49 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 27 Jul 2026 22:07:49 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 27 Jul 2026 22:07:49 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Mon, 27 Jul 2026 22:08:33 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 27 Jul 2026 22:08:33 GMT
VOLUME [/var/lib/mysql]
# Mon, 27 Jul 2026 22:08:33 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 27 Jul 2026 22:08:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 27 Jul 2026 22:08:33 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 27 Jul 2026 22:08:33 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c1a8d43326b89b25aff74efe983a017053ef32314f6332ba2cf4e76fcf4f2b09`  
		Last Modified: Thu, 23 Jul 2026 22:55:31 GMT  
		Size: 46.5 MB (46477905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a905d3b3fdfba281ca4c2e0df626447933b0be688c721c440c12c18155cad2f`  
		Last Modified: Mon, 27 Jul 2026 22:09:05 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d7f10ed4edfc9a5255dcb08d5f8c1ed80fc7ad689c10cbb6ed01ebd245c14e1`  
		Last Modified: Mon, 27 Jul 2026 22:09:05 GMT  
		Size: 737.5 KB (737524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac21e899ba1c9ddc3f4fc2afea9df0224f23b0e6bb93ba8f36d9e696c83c8f03`  
		Last Modified: Mon, 27 Jul 2026 22:09:05 GMT  
		Size: 5.8 MB (5822633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ff71ea7626e84739779ba45fa74c7c32ae6ee59246f225268a841fc2d9a6faf`  
		Last Modified: Mon, 27 Jul 2026 22:09:05 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3c86b417a740fbeee5fd497137104f5d8f7a6e341b91aaba9a6c4747a86dff9`  
		Last Modified: Mon, 27 Jul 2026 22:09:06 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bec4c5f6b46d0539193c241696c19d0d9e478c95cda5c7ce0bdef2348fc8b239`  
		Last Modified: Mon, 27 Jul 2026 22:09:08 GMT  
		Size: 49.9 MB (49864004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b12e28485eff457d5c5b195626b27d08d2c173f6fb5f804989b649c60b1de642`  
		Last Modified: Mon, 27 Jul 2026 22:09:06 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19c1e4d5e56deb16e6bc5e34a09042f1f986dab192a9755af62093ca8a15d359`  
		Last Modified: Mon, 27 Jul 2026 22:09:10 GMT  
		Size: 130.8 MB (130793323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26eb9d6698f0231db7a4688d660f01174ad18b5e376351e282625f827fc2316b`  
		Last Modified: Mon, 27 Jul 2026 22:09:08 GMT  
		Size: 5.2 KB (5224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4` - unknown; unknown

```console
$ docker pull mysql@sha256:d3ed8e30b98bd04c4dcb47b567ffe31773d67df9acc614031ea4a10a1744e63b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15743823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10014782741562644232d7494da586cddd77481ac28c058a0e4eb0b49bf45d4b`

```dockerfile
```

-	Layers:
	-	`sha256:541dad502f358551016aabc1c699b017d297c36653072e6dc5febe602992b7d5`  
		Last Modified: Mon, 27 Jul 2026 22:09:05 GMT  
		Size: 15.7 MB (15710241 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:64896815bd4e9da5b79fcb097107ebc123bd9e85fae163c1d1c7560d430aa8cd`  
		Last Modified: Mon, 27 Jul 2026 22:09:05 GMT  
		Size: 33.6 KB (33582 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:8.4-oracle`

```console
$ docker pull mysql@sha256:b3b90af2a6552ae30c266fdb7d5dd55f3afb72404bb78d37fe8a23eb857fd3fb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8.4-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:1d6b6a8fcee8ff758ff151d017f5203cd06792a0e698f0a593c9dfcb14609cf0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.0 MB (238978358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bced325a4ab7aec848f4688371c7433351dcb5dba26fbcc29c67727d898ae5cb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:56:37 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:56:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 22:06:48 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 27 Jul 2026 22:06:49 GMT
ENV GOSU_VERSION=1.19
# Mon, 27 Jul 2026 22:06:49 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 27 Jul 2026 22:07:16 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 27 Jul 2026 22:07:17 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 27 Jul 2026 22:07:17 GMT
ENV MYSQL_MAJOR=8.4
# Mon, 27 Jul 2026 22:07:17 GMT
ENV MYSQL_VERSION=8.4.11-1.el9
# Mon, 27 Jul 2026 22:07:17 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 27 Jul 2026 22:07:48 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 27 Jul 2026 22:07:48 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 27 Jul 2026 22:07:48 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Mon, 27 Jul 2026 22:08:26 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 27 Jul 2026 22:08:26 GMT
VOLUME [/var/lib/mysql]
# Mon, 27 Jul 2026 22:08:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 27 Jul 2026 22:08:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 27 Jul 2026 22:08:26 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 27 Jul 2026 22:08:26 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:30627cea5424c411bee6559e1aed4c4b977ceaab0f12695130c3825de516d2cc`  
		Last Modified: Thu, 23 Jul 2026 22:56:48 GMT  
		Size: 47.9 MB (47927752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8ca58bc6ea9aa873f8871351abbf02be4837493f2779df7372c2540f2b48e91`  
		Last Modified: Mon, 27 Jul 2026 22:08:54 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0f44f87b588dc34dec21b1d2a335ab08ec46a251b2c183f3cfb34fbd82cdbd9`  
		Last Modified: Mon, 27 Jul 2026 22:08:54 GMT  
		Size: 783.6 KB (783558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3efae9596a0b946d9f381f123b3ea558eb9c31f09eb86da7bf0675aabe19200f`  
		Last Modified: Mon, 27 Jul 2026 22:08:54 GMT  
		Size: 6.2 MB (6193204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:860b7bc672107d7e64ad727fa70d68379e026be7ccbedb871636863d5d9ede10`  
		Last Modified: Mon, 27 Jul 2026 22:08:54 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5cddd18da97f8a5978270c5f672fbd8439ff2c32b32014222ef12ee97a0dc95`  
		Last Modified: Mon, 27 Jul 2026 22:08:55 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:289dbe2b4aa0617c555b7ec7e9f0b6bacd4dbff59ee6b17890b9bbb564e9df4d`  
		Last Modified: Mon, 27 Jul 2026 22:08:57 GMT  
		Size: 51.6 MB (51633358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01cb8e5472ee5a03344e34ad54f2ccb581a06a82cf548543a26c9823359a1a68`  
		Last Modified: Mon, 27 Jul 2026 22:08:55 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e31ea7613c63ae05f7c94212b65ad347be272d518822b6201802479ac0b29af4`  
		Last Modified: Mon, 27 Jul 2026 22:08:59 GMT  
		Size: 132.4 MB (132431113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bebc71cfb905f29c91ddc3e37cc7cbce9b94992dadd605a0e8bee5e49c83a6b`  
		Last Modified: Mon, 27 Jul 2026 22:08:56 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:e909dd74dbb01150e326b0fe7fa4c485e4b365dc4fbe5671c97cf18a49bf7375
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15745154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a39e985ee811397d5919b03b46b52c07bf68707be371df3139ce5563371a2925`

```dockerfile
```

-	Layers:
	-	`sha256:80a9fe861429f737ce5e85ef0101a37c2b7d1715e5c2f378ceff6ca7136bff6f`  
		Last Modified: Mon, 27 Jul 2026 22:08:54 GMT  
		Size: 15.7 MB (15711841 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:32ca1b8d1938908e81db850734456f3932bbc0d916785f0e14df64f8705b2105`  
		Last Modified: Mon, 27 Jul 2026 22:08:54 GMT  
		Size: 33.3 KB (33313 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8.4-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:c9be23757267a888182ff13a633118a84ce7ad360abaa0f12a9c357ddf628b61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.7 MB (233704757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e7e005a680e75d935984d3d9390990d2a709b3ed67e92708e9e6747f1f754c9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:55:20 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:55:20 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 22:06:37 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 27 Jul 2026 22:06:38 GMT
ENV GOSU_VERSION=1.19
# Mon, 27 Jul 2026 22:06:38 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 27 Jul 2026 22:07:12 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 27 Jul 2026 22:07:12 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 27 Jul 2026 22:07:12 GMT
ENV MYSQL_MAJOR=8.4
# Mon, 27 Jul 2026 22:07:12 GMT
ENV MYSQL_VERSION=8.4.11-1.el9
# Mon, 27 Jul 2026 22:07:12 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 27 Jul 2026 22:07:49 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 27 Jul 2026 22:07:49 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 27 Jul 2026 22:07:49 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Mon, 27 Jul 2026 22:08:33 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 27 Jul 2026 22:08:33 GMT
VOLUME [/var/lib/mysql]
# Mon, 27 Jul 2026 22:08:33 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 27 Jul 2026 22:08:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 27 Jul 2026 22:08:33 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 27 Jul 2026 22:08:33 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c1a8d43326b89b25aff74efe983a017053ef32314f6332ba2cf4e76fcf4f2b09`  
		Last Modified: Thu, 23 Jul 2026 22:55:31 GMT  
		Size: 46.5 MB (46477905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a905d3b3fdfba281ca4c2e0df626447933b0be688c721c440c12c18155cad2f`  
		Last Modified: Mon, 27 Jul 2026 22:09:05 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d7f10ed4edfc9a5255dcb08d5f8c1ed80fc7ad689c10cbb6ed01ebd245c14e1`  
		Last Modified: Mon, 27 Jul 2026 22:09:05 GMT  
		Size: 737.5 KB (737524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac21e899ba1c9ddc3f4fc2afea9df0224f23b0e6bb93ba8f36d9e696c83c8f03`  
		Last Modified: Mon, 27 Jul 2026 22:09:05 GMT  
		Size: 5.8 MB (5822633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ff71ea7626e84739779ba45fa74c7c32ae6ee59246f225268a841fc2d9a6faf`  
		Last Modified: Mon, 27 Jul 2026 22:09:05 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3c86b417a740fbeee5fd497137104f5d8f7a6e341b91aaba9a6c4747a86dff9`  
		Last Modified: Mon, 27 Jul 2026 22:09:06 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bec4c5f6b46d0539193c241696c19d0d9e478c95cda5c7ce0bdef2348fc8b239`  
		Last Modified: Mon, 27 Jul 2026 22:09:08 GMT  
		Size: 49.9 MB (49864004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b12e28485eff457d5c5b195626b27d08d2c173f6fb5f804989b649c60b1de642`  
		Last Modified: Mon, 27 Jul 2026 22:09:06 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19c1e4d5e56deb16e6bc5e34a09042f1f986dab192a9755af62093ca8a15d359`  
		Last Modified: Mon, 27 Jul 2026 22:09:10 GMT  
		Size: 130.8 MB (130793323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26eb9d6698f0231db7a4688d660f01174ad18b5e376351e282625f827fc2316b`  
		Last Modified: Mon, 27 Jul 2026 22:09:08 GMT  
		Size: 5.2 KB (5224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:d3ed8e30b98bd04c4dcb47b567ffe31773d67df9acc614031ea4a10a1744e63b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15743823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10014782741562644232d7494da586cddd77481ac28c058a0e4eb0b49bf45d4b`

```dockerfile
```

-	Layers:
	-	`sha256:541dad502f358551016aabc1c699b017d297c36653072e6dc5febe602992b7d5`  
		Last Modified: Mon, 27 Jul 2026 22:09:05 GMT  
		Size: 15.7 MB (15710241 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:64896815bd4e9da5b79fcb097107ebc123bd9e85fae163c1d1c7560d430aa8cd`  
		Last Modified: Mon, 27 Jul 2026 22:09:05 GMT  
		Size: 33.6 KB (33582 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:8.4-oraclelinux9`

```console
$ docker pull mysql@sha256:b3b90af2a6552ae30c266fdb7d5dd55f3afb72404bb78d37fe8a23eb857fd3fb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8.4-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:1d6b6a8fcee8ff758ff151d017f5203cd06792a0e698f0a593c9dfcb14609cf0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.0 MB (238978358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bced325a4ab7aec848f4688371c7433351dcb5dba26fbcc29c67727d898ae5cb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:56:37 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:56:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 22:06:48 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 27 Jul 2026 22:06:49 GMT
ENV GOSU_VERSION=1.19
# Mon, 27 Jul 2026 22:06:49 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 27 Jul 2026 22:07:16 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 27 Jul 2026 22:07:17 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 27 Jul 2026 22:07:17 GMT
ENV MYSQL_MAJOR=8.4
# Mon, 27 Jul 2026 22:07:17 GMT
ENV MYSQL_VERSION=8.4.11-1.el9
# Mon, 27 Jul 2026 22:07:17 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 27 Jul 2026 22:07:48 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 27 Jul 2026 22:07:48 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 27 Jul 2026 22:07:48 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Mon, 27 Jul 2026 22:08:26 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 27 Jul 2026 22:08:26 GMT
VOLUME [/var/lib/mysql]
# Mon, 27 Jul 2026 22:08:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 27 Jul 2026 22:08:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 27 Jul 2026 22:08:26 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 27 Jul 2026 22:08:26 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:30627cea5424c411bee6559e1aed4c4b977ceaab0f12695130c3825de516d2cc`  
		Last Modified: Thu, 23 Jul 2026 22:56:48 GMT  
		Size: 47.9 MB (47927752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8ca58bc6ea9aa873f8871351abbf02be4837493f2779df7372c2540f2b48e91`  
		Last Modified: Mon, 27 Jul 2026 22:08:54 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0f44f87b588dc34dec21b1d2a335ab08ec46a251b2c183f3cfb34fbd82cdbd9`  
		Last Modified: Mon, 27 Jul 2026 22:08:54 GMT  
		Size: 783.6 KB (783558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3efae9596a0b946d9f381f123b3ea558eb9c31f09eb86da7bf0675aabe19200f`  
		Last Modified: Mon, 27 Jul 2026 22:08:54 GMT  
		Size: 6.2 MB (6193204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:860b7bc672107d7e64ad727fa70d68379e026be7ccbedb871636863d5d9ede10`  
		Last Modified: Mon, 27 Jul 2026 22:08:54 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5cddd18da97f8a5978270c5f672fbd8439ff2c32b32014222ef12ee97a0dc95`  
		Last Modified: Mon, 27 Jul 2026 22:08:55 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:289dbe2b4aa0617c555b7ec7e9f0b6bacd4dbff59ee6b17890b9bbb564e9df4d`  
		Last Modified: Mon, 27 Jul 2026 22:08:57 GMT  
		Size: 51.6 MB (51633358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01cb8e5472ee5a03344e34ad54f2ccb581a06a82cf548543a26c9823359a1a68`  
		Last Modified: Mon, 27 Jul 2026 22:08:55 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e31ea7613c63ae05f7c94212b65ad347be272d518822b6201802479ac0b29af4`  
		Last Modified: Mon, 27 Jul 2026 22:08:59 GMT  
		Size: 132.4 MB (132431113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bebc71cfb905f29c91ddc3e37cc7cbce9b94992dadd605a0e8bee5e49c83a6b`  
		Last Modified: Mon, 27 Jul 2026 22:08:56 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:e909dd74dbb01150e326b0fe7fa4c485e4b365dc4fbe5671c97cf18a49bf7375
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15745154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a39e985ee811397d5919b03b46b52c07bf68707be371df3139ce5563371a2925`

```dockerfile
```

-	Layers:
	-	`sha256:80a9fe861429f737ce5e85ef0101a37c2b7d1715e5c2f378ceff6ca7136bff6f`  
		Last Modified: Mon, 27 Jul 2026 22:08:54 GMT  
		Size: 15.7 MB (15711841 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:32ca1b8d1938908e81db850734456f3932bbc0d916785f0e14df64f8705b2105`  
		Last Modified: Mon, 27 Jul 2026 22:08:54 GMT  
		Size: 33.3 KB (33313 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8.4-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:c9be23757267a888182ff13a633118a84ce7ad360abaa0f12a9c357ddf628b61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.7 MB (233704757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e7e005a680e75d935984d3d9390990d2a709b3ed67e92708e9e6747f1f754c9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:55:20 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:55:20 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 22:06:37 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 27 Jul 2026 22:06:38 GMT
ENV GOSU_VERSION=1.19
# Mon, 27 Jul 2026 22:06:38 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 27 Jul 2026 22:07:12 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 27 Jul 2026 22:07:12 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 27 Jul 2026 22:07:12 GMT
ENV MYSQL_MAJOR=8.4
# Mon, 27 Jul 2026 22:07:12 GMT
ENV MYSQL_VERSION=8.4.11-1.el9
# Mon, 27 Jul 2026 22:07:12 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 27 Jul 2026 22:07:49 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 27 Jul 2026 22:07:49 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 27 Jul 2026 22:07:49 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Mon, 27 Jul 2026 22:08:33 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 27 Jul 2026 22:08:33 GMT
VOLUME [/var/lib/mysql]
# Mon, 27 Jul 2026 22:08:33 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 27 Jul 2026 22:08:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 27 Jul 2026 22:08:33 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 27 Jul 2026 22:08:33 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c1a8d43326b89b25aff74efe983a017053ef32314f6332ba2cf4e76fcf4f2b09`  
		Last Modified: Thu, 23 Jul 2026 22:55:31 GMT  
		Size: 46.5 MB (46477905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a905d3b3fdfba281ca4c2e0df626447933b0be688c721c440c12c18155cad2f`  
		Last Modified: Mon, 27 Jul 2026 22:09:05 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d7f10ed4edfc9a5255dcb08d5f8c1ed80fc7ad689c10cbb6ed01ebd245c14e1`  
		Last Modified: Mon, 27 Jul 2026 22:09:05 GMT  
		Size: 737.5 KB (737524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac21e899ba1c9ddc3f4fc2afea9df0224f23b0e6bb93ba8f36d9e696c83c8f03`  
		Last Modified: Mon, 27 Jul 2026 22:09:05 GMT  
		Size: 5.8 MB (5822633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ff71ea7626e84739779ba45fa74c7c32ae6ee59246f225268a841fc2d9a6faf`  
		Last Modified: Mon, 27 Jul 2026 22:09:05 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3c86b417a740fbeee5fd497137104f5d8f7a6e341b91aaba9a6c4747a86dff9`  
		Last Modified: Mon, 27 Jul 2026 22:09:06 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bec4c5f6b46d0539193c241696c19d0d9e478c95cda5c7ce0bdef2348fc8b239`  
		Last Modified: Mon, 27 Jul 2026 22:09:08 GMT  
		Size: 49.9 MB (49864004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b12e28485eff457d5c5b195626b27d08d2c173f6fb5f804989b649c60b1de642`  
		Last Modified: Mon, 27 Jul 2026 22:09:06 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19c1e4d5e56deb16e6bc5e34a09042f1f986dab192a9755af62093ca8a15d359`  
		Last Modified: Mon, 27 Jul 2026 22:09:10 GMT  
		Size: 130.8 MB (130793323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26eb9d6698f0231db7a4688d660f01174ad18b5e376351e282625f827fc2316b`  
		Last Modified: Mon, 27 Jul 2026 22:09:08 GMT  
		Size: 5.2 KB (5224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:d3ed8e30b98bd04c4dcb47b567ffe31773d67df9acc614031ea4a10a1744e63b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15743823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10014782741562644232d7494da586cddd77481ac28c058a0e4eb0b49bf45d4b`

```dockerfile
```

-	Layers:
	-	`sha256:541dad502f358551016aabc1c699b017d297c36653072e6dc5febe602992b7d5`  
		Last Modified: Mon, 27 Jul 2026 22:09:05 GMT  
		Size: 15.7 MB (15710241 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:64896815bd4e9da5b79fcb097107ebc123bd9e85fae163c1d1c7560d430aa8cd`  
		Last Modified: Mon, 27 Jul 2026 22:09:05 GMT  
		Size: 33.6 KB (33582 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:8.4.11`

```console
$ docker pull mysql@sha256:b3b90af2a6552ae30c266fdb7d5dd55f3afb72404bb78d37fe8a23eb857fd3fb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8.4.11` - linux; amd64

```console
$ docker pull mysql@sha256:1d6b6a8fcee8ff758ff151d017f5203cd06792a0e698f0a593c9dfcb14609cf0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.0 MB (238978358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bced325a4ab7aec848f4688371c7433351dcb5dba26fbcc29c67727d898ae5cb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:56:37 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:56:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 22:06:48 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 27 Jul 2026 22:06:49 GMT
ENV GOSU_VERSION=1.19
# Mon, 27 Jul 2026 22:06:49 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 27 Jul 2026 22:07:16 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 27 Jul 2026 22:07:17 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 27 Jul 2026 22:07:17 GMT
ENV MYSQL_MAJOR=8.4
# Mon, 27 Jul 2026 22:07:17 GMT
ENV MYSQL_VERSION=8.4.11-1.el9
# Mon, 27 Jul 2026 22:07:17 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 27 Jul 2026 22:07:48 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 27 Jul 2026 22:07:48 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 27 Jul 2026 22:07:48 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Mon, 27 Jul 2026 22:08:26 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 27 Jul 2026 22:08:26 GMT
VOLUME [/var/lib/mysql]
# Mon, 27 Jul 2026 22:08:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 27 Jul 2026 22:08:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 27 Jul 2026 22:08:26 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 27 Jul 2026 22:08:26 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:30627cea5424c411bee6559e1aed4c4b977ceaab0f12695130c3825de516d2cc`  
		Last Modified: Thu, 23 Jul 2026 22:56:48 GMT  
		Size: 47.9 MB (47927752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8ca58bc6ea9aa873f8871351abbf02be4837493f2779df7372c2540f2b48e91`  
		Last Modified: Mon, 27 Jul 2026 22:08:54 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0f44f87b588dc34dec21b1d2a335ab08ec46a251b2c183f3cfb34fbd82cdbd9`  
		Last Modified: Mon, 27 Jul 2026 22:08:54 GMT  
		Size: 783.6 KB (783558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3efae9596a0b946d9f381f123b3ea558eb9c31f09eb86da7bf0675aabe19200f`  
		Last Modified: Mon, 27 Jul 2026 22:08:54 GMT  
		Size: 6.2 MB (6193204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:860b7bc672107d7e64ad727fa70d68379e026be7ccbedb871636863d5d9ede10`  
		Last Modified: Mon, 27 Jul 2026 22:08:54 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5cddd18da97f8a5978270c5f672fbd8439ff2c32b32014222ef12ee97a0dc95`  
		Last Modified: Mon, 27 Jul 2026 22:08:55 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:289dbe2b4aa0617c555b7ec7e9f0b6bacd4dbff59ee6b17890b9bbb564e9df4d`  
		Last Modified: Mon, 27 Jul 2026 22:08:57 GMT  
		Size: 51.6 MB (51633358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01cb8e5472ee5a03344e34ad54f2ccb581a06a82cf548543a26c9823359a1a68`  
		Last Modified: Mon, 27 Jul 2026 22:08:55 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e31ea7613c63ae05f7c94212b65ad347be272d518822b6201802479ac0b29af4`  
		Last Modified: Mon, 27 Jul 2026 22:08:59 GMT  
		Size: 132.4 MB (132431113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bebc71cfb905f29c91ddc3e37cc7cbce9b94992dadd605a0e8bee5e49c83a6b`  
		Last Modified: Mon, 27 Jul 2026 22:08:56 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4.11` - unknown; unknown

```console
$ docker pull mysql@sha256:e909dd74dbb01150e326b0fe7fa4c485e4b365dc4fbe5671c97cf18a49bf7375
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15745154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a39e985ee811397d5919b03b46b52c07bf68707be371df3139ce5563371a2925`

```dockerfile
```

-	Layers:
	-	`sha256:80a9fe861429f737ce5e85ef0101a37c2b7d1715e5c2f378ceff6ca7136bff6f`  
		Last Modified: Mon, 27 Jul 2026 22:08:54 GMT  
		Size: 15.7 MB (15711841 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:32ca1b8d1938908e81db850734456f3932bbc0d916785f0e14df64f8705b2105`  
		Last Modified: Mon, 27 Jul 2026 22:08:54 GMT  
		Size: 33.3 KB (33313 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8.4.11` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:c9be23757267a888182ff13a633118a84ce7ad360abaa0f12a9c357ddf628b61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.7 MB (233704757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e7e005a680e75d935984d3d9390990d2a709b3ed67e92708e9e6747f1f754c9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:55:20 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:55:20 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 22:06:37 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 27 Jul 2026 22:06:38 GMT
ENV GOSU_VERSION=1.19
# Mon, 27 Jul 2026 22:06:38 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 27 Jul 2026 22:07:12 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 27 Jul 2026 22:07:12 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 27 Jul 2026 22:07:12 GMT
ENV MYSQL_MAJOR=8.4
# Mon, 27 Jul 2026 22:07:12 GMT
ENV MYSQL_VERSION=8.4.11-1.el9
# Mon, 27 Jul 2026 22:07:12 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 27 Jul 2026 22:07:49 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 27 Jul 2026 22:07:49 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 27 Jul 2026 22:07:49 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Mon, 27 Jul 2026 22:08:33 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 27 Jul 2026 22:08:33 GMT
VOLUME [/var/lib/mysql]
# Mon, 27 Jul 2026 22:08:33 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 27 Jul 2026 22:08:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 27 Jul 2026 22:08:33 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 27 Jul 2026 22:08:33 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c1a8d43326b89b25aff74efe983a017053ef32314f6332ba2cf4e76fcf4f2b09`  
		Last Modified: Thu, 23 Jul 2026 22:55:31 GMT  
		Size: 46.5 MB (46477905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a905d3b3fdfba281ca4c2e0df626447933b0be688c721c440c12c18155cad2f`  
		Last Modified: Mon, 27 Jul 2026 22:09:05 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d7f10ed4edfc9a5255dcb08d5f8c1ed80fc7ad689c10cbb6ed01ebd245c14e1`  
		Last Modified: Mon, 27 Jul 2026 22:09:05 GMT  
		Size: 737.5 KB (737524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac21e899ba1c9ddc3f4fc2afea9df0224f23b0e6bb93ba8f36d9e696c83c8f03`  
		Last Modified: Mon, 27 Jul 2026 22:09:05 GMT  
		Size: 5.8 MB (5822633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ff71ea7626e84739779ba45fa74c7c32ae6ee59246f225268a841fc2d9a6faf`  
		Last Modified: Mon, 27 Jul 2026 22:09:05 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3c86b417a740fbeee5fd497137104f5d8f7a6e341b91aaba9a6c4747a86dff9`  
		Last Modified: Mon, 27 Jul 2026 22:09:06 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bec4c5f6b46d0539193c241696c19d0d9e478c95cda5c7ce0bdef2348fc8b239`  
		Last Modified: Mon, 27 Jul 2026 22:09:08 GMT  
		Size: 49.9 MB (49864004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b12e28485eff457d5c5b195626b27d08d2c173f6fb5f804989b649c60b1de642`  
		Last Modified: Mon, 27 Jul 2026 22:09:06 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19c1e4d5e56deb16e6bc5e34a09042f1f986dab192a9755af62093ca8a15d359`  
		Last Modified: Mon, 27 Jul 2026 22:09:10 GMT  
		Size: 130.8 MB (130793323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26eb9d6698f0231db7a4688d660f01174ad18b5e376351e282625f827fc2316b`  
		Last Modified: Mon, 27 Jul 2026 22:09:08 GMT  
		Size: 5.2 KB (5224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4.11` - unknown; unknown

```console
$ docker pull mysql@sha256:d3ed8e30b98bd04c4dcb47b567ffe31773d67df9acc614031ea4a10a1744e63b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15743823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10014782741562644232d7494da586cddd77481ac28c058a0e4eb0b49bf45d4b`

```dockerfile
```

-	Layers:
	-	`sha256:541dad502f358551016aabc1c699b017d297c36653072e6dc5febe602992b7d5`  
		Last Modified: Mon, 27 Jul 2026 22:09:05 GMT  
		Size: 15.7 MB (15710241 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:64896815bd4e9da5b79fcb097107ebc123bd9e85fae163c1d1c7560d430aa8cd`  
		Last Modified: Mon, 27 Jul 2026 22:09:05 GMT  
		Size: 33.6 KB (33582 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:8.4.11-oracle`

```console
$ docker pull mysql@sha256:b3b90af2a6552ae30c266fdb7d5dd55f3afb72404bb78d37fe8a23eb857fd3fb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8.4.11-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:1d6b6a8fcee8ff758ff151d017f5203cd06792a0e698f0a593c9dfcb14609cf0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.0 MB (238978358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bced325a4ab7aec848f4688371c7433351dcb5dba26fbcc29c67727d898ae5cb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:56:37 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:56:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 22:06:48 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 27 Jul 2026 22:06:49 GMT
ENV GOSU_VERSION=1.19
# Mon, 27 Jul 2026 22:06:49 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 27 Jul 2026 22:07:16 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 27 Jul 2026 22:07:17 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 27 Jul 2026 22:07:17 GMT
ENV MYSQL_MAJOR=8.4
# Mon, 27 Jul 2026 22:07:17 GMT
ENV MYSQL_VERSION=8.4.11-1.el9
# Mon, 27 Jul 2026 22:07:17 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 27 Jul 2026 22:07:48 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 27 Jul 2026 22:07:48 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 27 Jul 2026 22:07:48 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Mon, 27 Jul 2026 22:08:26 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 27 Jul 2026 22:08:26 GMT
VOLUME [/var/lib/mysql]
# Mon, 27 Jul 2026 22:08:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 27 Jul 2026 22:08:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 27 Jul 2026 22:08:26 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 27 Jul 2026 22:08:26 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:30627cea5424c411bee6559e1aed4c4b977ceaab0f12695130c3825de516d2cc`  
		Last Modified: Thu, 23 Jul 2026 22:56:48 GMT  
		Size: 47.9 MB (47927752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8ca58bc6ea9aa873f8871351abbf02be4837493f2779df7372c2540f2b48e91`  
		Last Modified: Mon, 27 Jul 2026 22:08:54 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0f44f87b588dc34dec21b1d2a335ab08ec46a251b2c183f3cfb34fbd82cdbd9`  
		Last Modified: Mon, 27 Jul 2026 22:08:54 GMT  
		Size: 783.6 KB (783558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3efae9596a0b946d9f381f123b3ea558eb9c31f09eb86da7bf0675aabe19200f`  
		Last Modified: Mon, 27 Jul 2026 22:08:54 GMT  
		Size: 6.2 MB (6193204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:860b7bc672107d7e64ad727fa70d68379e026be7ccbedb871636863d5d9ede10`  
		Last Modified: Mon, 27 Jul 2026 22:08:54 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5cddd18da97f8a5978270c5f672fbd8439ff2c32b32014222ef12ee97a0dc95`  
		Last Modified: Mon, 27 Jul 2026 22:08:55 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:289dbe2b4aa0617c555b7ec7e9f0b6bacd4dbff59ee6b17890b9bbb564e9df4d`  
		Last Modified: Mon, 27 Jul 2026 22:08:57 GMT  
		Size: 51.6 MB (51633358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01cb8e5472ee5a03344e34ad54f2ccb581a06a82cf548543a26c9823359a1a68`  
		Last Modified: Mon, 27 Jul 2026 22:08:55 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e31ea7613c63ae05f7c94212b65ad347be272d518822b6201802479ac0b29af4`  
		Last Modified: Mon, 27 Jul 2026 22:08:59 GMT  
		Size: 132.4 MB (132431113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bebc71cfb905f29c91ddc3e37cc7cbce9b94992dadd605a0e8bee5e49c83a6b`  
		Last Modified: Mon, 27 Jul 2026 22:08:56 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4.11-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:e909dd74dbb01150e326b0fe7fa4c485e4b365dc4fbe5671c97cf18a49bf7375
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15745154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a39e985ee811397d5919b03b46b52c07bf68707be371df3139ce5563371a2925`

```dockerfile
```

-	Layers:
	-	`sha256:80a9fe861429f737ce5e85ef0101a37c2b7d1715e5c2f378ceff6ca7136bff6f`  
		Last Modified: Mon, 27 Jul 2026 22:08:54 GMT  
		Size: 15.7 MB (15711841 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:32ca1b8d1938908e81db850734456f3932bbc0d916785f0e14df64f8705b2105`  
		Last Modified: Mon, 27 Jul 2026 22:08:54 GMT  
		Size: 33.3 KB (33313 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8.4.11-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:c9be23757267a888182ff13a633118a84ce7ad360abaa0f12a9c357ddf628b61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.7 MB (233704757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e7e005a680e75d935984d3d9390990d2a709b3ed67e92708e9e6747f1f754c9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:55:20 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:55:20 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 22:06:37 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 27 Jul 2026 22:06:38 GMT
ENV GOSU_VERSION=1.19
# Mon, 27 Jul 2026 22:06:38 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 27 Jul 2026 22:07:12 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 27 Jul 2026 22:07:12 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 27 Jul 2026 22:07:12 GMT
ENV MYSQL_MAJOR=8.4
# Mon, 27 Jul 2026 22:07:12 GMT
ENV MYSQL_VERSION=8.4.11-1.el9
# Mon, 27 Jul 2026 22:07:12 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 27 Jul 2026 22:07:49 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 27 Jul 2026 22:07:49 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 27 Jul 2026 22:07:49 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Mon, 27 Jul 2026 22:08:33 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 27 Jul 2026 22:08:33 GMT
VOLUME [/var/lib/mysql]
# Mon, 27 Jul 2026 22:08:33 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 27 Jul 2026 22:08:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 27 Jul 2026 22:08:33 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 27 Jul 2026 22:08:33 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c1a8d43326b89b25aff74efe983a017053ef32314f6332ba2cf4e76fcf4f2b09`  
		Last Modified: Thu, 23 Jul 2026 22:55:31 GMT  
		Size: 46.5 MB (46477905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a905d3b3fdfba281ca4c2e0df626447933b0be688c721c440c12c18155cad2f`  
		Last Modified: Mon, 27 Jul 2026 22:09:05 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d7f10ed4edfc9a5255dcb08d5f8c1ed80fc7ad689c10cbb6ed01ebd245c14e1`  
		Last Modified: Mon, 27 Jul 2026 22:09:05 GMT  
		Size: 737.5 KB (737524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac21e899ba1c9ddc3f4fc2afea9df0224f23b0e6bb93ba8f36d9e696c83c8f03`  
		Last Modified: Mon, 27 Jul 2026 22:09:05 GMT  
		Size: 5.8 MB (5822633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ff71ea7626e84739779ba45fa74c7c32ae6ee59246f225268a841fc2d9a6faf`  
		Last Modified: Mon, 27 Jul 2026 22:09:05 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3c86b417a740fbeee5fd497137104f5d8f7a6e341b91aaba9a6c4747a86dff9`  
		Last Modified: Mon, 27 Jul 2026 22:09:06 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bec4c5f6b46d0539193c241696c19d0d9e478c95cda5c7ce0bdef2348fc8b239`  
		Last Modified: Mon, 27 Jul 2026 22:09:08 GMT  
		Size: 49.9 MB (49864004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b12e28485eff457d5c5b195626b27d08d2c173f6fb5f804989b649c60b1de642`  
		Last Modified: Mon, 27 Jul 2026 22:09:06 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19c1e4d5e56deb16e6bc5e34a09042f1f986dab192a9755af62093ca8a15d359`  
		Last Modified: Mon, 27 Jul 2026 22:09:10 GMT  
		Size: 130.8 MB (130793323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26eb9d6698f0231db7a4688d660f01174ad18b5e376351e282625f827fc2316b`  
		Last Modified: Mon, 27 Jul 2026 22:09:08 GMT  
		Size: 5.2 KB (5224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4.11-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:d3ed8e30b98bd04c4dcb47b567ffe31773d67df9acc614031ea4a10a1744e63b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15743823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10014782741562644232d7494da586cddd77481ac28c058a0e4eb0b49bf45d4b`

```dockerfile
```

-	Layers:
	-	`sha256:541dad502f358551016aabc1c699b017d297c36653072e6dc5febe602992b7d5`  
		Last Modified: Mon, 27 Jul 2026 22:09:05 GMT  
		Size: 15.7 MB (15710241 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:64896815bd4e9da5b79fcb097107ebc123bd9e85fae163c1d1c7560d430aa8cd`  
		Last Modified: Mon, 27 Jul 2026 22:09:05 GMT  
		Size: 33.6 KB (33582 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:8.4.11-oraclelinux9`

```console
$ docker pull mysql@sha256:b3b90af2a6552ae30c266fdb7d5dd55f3afb72404bb78d37fe8a23eb857fd3fb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8.4.11-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:1d6b6a8fcee8ff758ff151d017f5203cd06792a0e698f0a593c9dfcb14609cf0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.0 MB (238978358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bced325a4ab7aec848f4688371c7433351dcb5dba26fbcc29c67727d898ae5cb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:56:37 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:56:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 22:06:48 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 27 Jul 2026 22:06:49 GMT
ENV GOSU_VERSION=1.19
# Mon, 27 Jul 2026 22:06:49 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 27 Jul 2026 22:07:16 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 27 Jul 2026 22:07:17 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 27 Jul 2026 22:07:17 GMT
ENV MYSQL_MAJOR=8.4
# Mon, 27 Jul 2026 22:07:17 GMT
ENV MYSQL_VERSION=8.4.11-1.el9
# Mon, 27 Jul 2026 22:07:17 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 27 Jul 2026 22:07:48 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 27 Jul 2026 22:07:48 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 27 Jul 2026 22:07:48 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Mon, 27 Jul 2026 22:08:26 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 27 Jul 2026 22:08:26 GMT
VOLUME [/var/lib/mysql]
# Mon, 27 Jul 2026 22:08:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 27 Jul 2026 22:08:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 27 Jul 2026 22:08:26 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 27 Jul 2026 22:08:26 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:30627cea5424c411bee6559e1aed4c4b977ceaab0f12695130c3825de516d2cc`  
		Last Modified: Thu, 23 Jul 2026 22:56:48 GMT  
		Size: 47.9 MB (47927752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8ca58bc6ea9aa873f8871351abbf02be4837493f2779df7372c2540f2b48e91`  
		Last Modified: Mon, 27 Jul 2026 22:08:54 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0f44f87b588dc34dec21b1d2a335ab08ec46a251b2c183f3cfb34fbd82cdbd9`  
		Last Modified: Mon, 27 Jul 2026 22:08:54 GMT  
		Size: 783.6 KB (783558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3efae9596a0b946d9f381f123b3ea558eb9c31f09eb86da7bf0675aabe19200f`  
		Last Modified: Mon, 27 Jul 2026 22:08:54 GMT  
		Size: 6.2 MB (6193204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:860b7bc672107d7e64ad727fa70d68379e026be7ccbedb871636863d5d9ede10`  
		Last Modified: Mon, 27 Jul 2026 22:08:54 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5cddd18da97f8a5978270c5f672fbd8439ff2c32b32014222ef12ee97a0dc95`  
		Last Modified: Mon, 27 Jul 2026 22:08:55 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:289dbe2b4aa0617c555b7ec7e9f0b6bacd4dbff59ee6b17890b9bbb564e9df4d`  
		Last Modified: Mon, 27 Jul 2026 22:08:57 GMT  
		Size: 51.6 MB (51633358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01cb8e5472ee5a03344e34ad54f2ccb581a06a82cf548543a26c9823359a1a68`  
		Last Modified: Mon, 27 Jul 2026 22:08:55 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e31ea7613c63ae05f7c94212b65ad347be272d518822b6201802479ac0b29af4`  
		Last Modified: Mon, 27 Jul 2026 22:08:59 GMT  
		Size: 132.4 MB (132431113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bebc71cfb905f29c91ddc3e37cc7cbce9b94992dadd605a0e8bee5e49c83a6b`  
		Last Modified: Mon, 27 Jul 2026 22:08:56 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4.11-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:e909dd74dbb01150e326b0fe7fa4c485e4b365dc4fbe5671c97cf18a49bf7375
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15745154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a39e985ee811397d5919b03b46b52c07bf68707be371df3139ce5563371a2925`

```dockerfile
```

-	Layers:
	-	`sha256:80a9fe861429f737ce5e85ef0101a37c2b7d1715e5c2f378ceff6ca7136bff6f`  
		Last Modified: Mon, 27 Jul 2026 22:08:54 GMT  
		Size: 15.7 MB (15711841 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:32ca1b8d1938908e81db850734456f3932bbc0d916785f0e14df64f8705b2105`  
		Last Modified: Mon, 27 Jul 2026 22:08:54 GMT  
		Size: 33.3 KB (33313 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8.4.11-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:c9be23757267a888182ff13a633118a84ce7ad360abaa0f12a9c357ddf628b61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.7 MB (233704757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e7e005a680e75d935984d3d9390990d2a709b3ed67e92708e9e6747f1f754c9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:55:20 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:55:20 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 22:06:37 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 27 Jul 2026 22:06:38 GMT
ENV GOSU_VERSION=1.19
# Mon, 27 Jul 2026 22:06:38 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 27 Jul 2026 22:07:12 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 27 Jul 2026 22:07:12 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 27 Jul 2026 22:07:12 GMT
ENV MYSQL_MAJOR=8.4
# Mon, 27 Jul 2026 22:07:12 GMT
ENV MYSQL_VERSION=8.4.11-1.el9
# Mon, 27 Jul 2026 22:07:12 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 27 Jul 2026 22:07:49 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 27 Jul 2026 22:07:49 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 27 Jul 2026 22:07:49 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Mon, 27 Jul 2026 22:08:33 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 27 Jul 2026 22:08:33 GMT
VOLUME [/var/lib/mysql]
# Mon, 27 Jul 2026 22:08:33 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 27 Jul 2026 22:08:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 27 Jul 2026 22:08:33 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 27 Jul 2026 22:08:33 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c1a8d43326b89b25aff74efe983a017053ef32314f6332ba2cf4e76fcf4f2b09`  
		Last Modified: Thu, 23 Jul 2026 22:55:31 GMT  
		Size: 46.5 MB (46477905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a905d3b3fdfba281ca4c2e0df626447933b0be688c721c440c12c18155cad2f`  
		Last Modified: Mon, 27 Jul 2026 22:09:05 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d7f10ed4edfc9a5255dcb08d5f8c1ed80fc7ad689c10cbb6ed01ebd245c14e1`  
		Last Modified: Mon, 27 Jul 2026 22:09:05 GMT  
		Size: 737.5 KB (737524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac21e899ba1c9ddc3f4fc2afea9df0224f23b0e6bb93ba8f36d9e696c83c8f03`  
		Last Modified: Mon, 27 Jul 2026 22:09:05 GMT  
		Size: 5.8 MB (5822633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ff71ea7626e84739779ba45fa74c7c32ae6ee59246f225268a841fc2d9a6faf`  
		Last Modified: Mon, 27 Jul 2026 22:09:05 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3c86b417a740fbeee5fd497137104f5d8f7a6e341b91aaba9a6c4747a86dff9`  
		Last Modified: Mon, 27 Jul 2026 22:09:06 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bec4c5f6b46d0539193c241696c19d0d9e478c95cda5c7ce0bdef2348fc8b239`  
		Last Modified: Mon, 27 Jul 2026 22:09:08 GMT  
		Size: 49.9 MB (49864004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b12e28485eff457d5c5b195626b27d08d2c173f6fb5f804989b649c60b1de642`  
		Last Modified: Mon, 27 Jul 2026 22:09:06 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19c1e4d5e56deb16e6bc5e34a09042f1f986dab192a9755af62093ca8a15d359`  
		Last Modified: Mon, 27 Jul 2026 22:09:10 GMT  
		Size: 130.8 MB (130793323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26eb9d6698f0231db7a4688d660f01174ad18b5e376351e282625f827fc2316b`  
		Last Modified: Mon, 27 Jul 2026 22:09:08 GMT  
		Size: 5.2 KB (5224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4.11-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:d3ed8e30b98bd04c4dcb47b567ffe31773d67df9acc614031ea4a10a1744e63b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15743823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10014782741562644232d7494da586cddd77481ac28c058a0e4eb0b49bf45d4b`

```dockerfile
```

-	Layers:
	-	`sha256:541dad502f358551016aabc1c699b017d297c36653072e6dc5febe602992b7d5`  
		Last Modified: Mon, 27 Jul 2026 22:09:05 GMT  
		Size: 15.7 MB (15710241 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:64896815bd4e9da5b79fcb097107ebc123bd9e85fae163c1d1c7560d430aa8cd`  
		Last Modified: Mon, 27 Jul 2026 22:09:05 GMT  
		Size: 33.6 KB (33582 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9`

```console
$ docker pull mysql@sha256:257388edf9c84dbc04c763625446d5f3fa6ed60d1b0873bc552c614ba0a7ab4e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9` - linux; amd64

```console
$ docker pull mysql@sha256:313c76f59c62376fd26b78fc85169902ef10134996bbfc31200eb9c2ed7e802e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.9 MB (270904261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e28ade5359ee24890f115d202b396388a6b7d2514f1b2fed38d57e84be64aee`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:56:37 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:56:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 22:06:41 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 27 Jul 2026 22:06:43 GMT
ENV GOSU_VERSION=1.19
# Mon, 27 Jul 2026 22:06:43 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 27 Jul 2026 22:07:16 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 27 Jul 2026 22:07:16 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 27 Jul 2026 22:07:16 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 27 Jul 2026 22:07:16 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Mon, 27 Jul 2026 22:07:17 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 27 Jul 2026 22:07:52 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 27 Jul 2026 22:07:52 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 27 Jul 2026 22:07:52 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 27 Jul 2026 22:08:37 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 27 Jul 2026 22:08:37 GMT
VOLUME [/var/lib/mysql]
# Mon, 27 Jul 2026 22:08:37 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 27 Jul 2026 22:08:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 27 Jul 2026 22:08:37 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 27 Jul 2026 22:08:37 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:30627cea5424c411bee6559e1aed4c4b977ceaab0f12695130c3825de516d2cc`  
		Last Modified: Thu, 23 Jul 2026 22:56:48 GMT  
		Size: 47.9 MB (47927752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc9bff174e15c65eaff616885e231b88852df66693b17d67f375e2290bd35d30`  
		Last Modified: Mon, 27 Jul 2026 22:09:13 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6923c6c729f28c71e469acd16979f547b65606e4da0d208e4788ea638eed409`  
		Last Modified: Mon, 27 Jul 2026 22:09:13 GMT  
		Size: 783.6 KB (783559 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48af77f83ce2f6f159fa3a08aa627ba32d9ce492ec0fd5be576758c6018b8c59`  
		Last Modified: Mon, 27 Jul 2026 22:09:14 GMT  
		Size: 6.2 MB (6193145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95d83715477f6f9891094f288b888dee68081fff6ad96afe2fc9ed2d119ce103`  
		Last Modified: Mon, 27 Jul 2026 22:09:13 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fefbd8135359cebdc500d5149dc53406230ab12ff92a680aab1ecd4af454ff3c`  
		Last Modified: Mon, 27 Jul 2026 22:09:14 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9a1438654dd08d1e71135ed06a3c9a993376d18f0a7a4d34076f67d0f8d4bef`  
		Last Modified: Mon, 27 Jul 2026 22:09:17 GMT  
		Size: 57.1 MB (57050624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39577f2d64ca8e08e0305f1d6cced18006bd9ea435a0ec0c20e8c67bb6f87a64`  
		Last Modified: Mon, 27 Jul 2026 22:09:15 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47fffd23e43dc892762225feb9ceaaac8bc8aa3e5856a04f54851b9f83b10ef8`  
		Last Modified: Mon, 27 Jul 2026 22:09:20 GMT  
		Size: 158.9 MB (158939808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e62c147ead06ae33a9afa61873c66eaa986313a17e4864dea07f2a14f9f92610`  
		Last Modified: Mon, 27 Jul 2026 22:09:16 GMT  
		Size: 5.2 KB (5231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9` - unknown; unknown

```console
$ docker pull mysql@sha256:536cb11469eb3996f816f2a69949dfa9de611a86053895474e8528db7a614739
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecd7ce6403a61b9ecec1a866a17af781f316726d60e7eebe2072569c961748d9`

```dockerfile
```

-	Layers:
	-	`sha256:0cad622e80b590ea769ac006ae4d905f4a9b9444c1854952037562a29aebc7b1`  
		Last Modified: Mon, 27 Jul 2026 22:09:14 GMT  
		Size: 16.8 MB (16799106 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a83239592ab9f2e7899a9494f5ffb869e3beb8093d62c39e23356f2d0a79fe04`  
		Last Modified: Mon, 27 Jul 2026 22:09:13 GMT  
		Size: 34.2 KB (34208 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:0c9a7b65cb630121c2bb5384d7446e0fe35d0b90a21516cb466427ced19a65be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.4 MB (267386404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:418e56472effc6bae31691dbd4a6d3eea9515e4a84ad82f690f880b6a25401de`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:55:20 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:55:20 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 22:06:30 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 27 Jul 2026 22:06:32 GMT
ENV GOSU_VERSION=1.19
# Mon, 27 Jul 2026 22:06:32 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 27 Jul 2026 22:07:06 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 27 Jul 2026 22:07:06 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 27 Jul 2026 22:07:06 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 27 Jul 2026 22:07:06 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Mon, 27 Jul 2026 22:07:06 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 27 Jul 2026 22:07:43 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 27 Jul 2026 22:07:43 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 27 Jul 2026 22:07:43 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 27 Jul 2026 22:08:30 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 27 Jul 2026 22:08:30 GMT
VOLUME [/var/lib/mysql]
# Mon, 27 Jul 2026 22:08:30 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 27 Jul 2026 22:08:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 27 Jul 2026 22:08:30 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 27 Jul 2026 22:08:30 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c1a8d43326b89b25aff74efe983a017053ef32314f6332ba2cf4e76fcf4f2b09`  
		Last Modified: Thu, 23 Jul 2026 22:55:31 GMT  
		Size: 46.5 MB (46477905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f756888a3dd9ea27296785ead49593ea7b1ea89daa43e4ad6403072b5c9da1c4`  
		Last Modified: Mon, 27 Jul 2026 22:09:06 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21c894eb0c4514b31c71d72c1a80d83fa79b0a861c0c452067cdc9aaabade43a`  
		Last Modified: Mon, 27 Jul 2026 22:09:06 GMT  
		Size: 737.5 KB (737528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af01a0e6f5cc0cc11954fda42fd008a0d39baf4c87ffc92d4f32a525b4ba73aa`  
		Last Modified: Mon, 27 Jul 2026 22:09:06 GMT  
		Size: 5.8 MB (5822624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3288a78e906aff294e438767f2eb299c63944da4af95c65a0e246b1e0db13ac2`  
		Last Modified: Mon, 27 Jul 2026 22:09:06 GMT  
		Size: 2.6 KB (2604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a895d48e9a638d719227ffe8a7843d8a21895dbd64eaec9d480443ecc3ca5263`  
		Last Modified: Mon, 27 Jul 2026 22:09:07 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a77fc7257c96dedc7563927f89494c0c381cf045e1a9cf1caa0b4db1c6b94f5d`  
		Last Modified: Mon, 27 Jul 2026 22:09:10 GMT  
		Size: 57.1 MB (57120770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55ff496c40880c2902b24d02e812d84dc165018d7923192e8fce0d36638dc683`  
		Last Modified: Mon, 27 Jul 2026 22:09:07 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b9e8433b8213a65ea447e429e604823ff0ee7060417dc0ae92817505ff68b96`  
		Last Modified: Mon, 27 Jul 2026 22:09:12 GMT  
		Size: 157.2 MB (157218208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b9a0c325d3288f2698074a155be0b918a1d6b25803832b55ea624297af5f2ea`  
		Last Modified: Mon, 27 Jul 2026 22:09:09 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9` - unknown; unknown

```console
$ docker pull mysql@sha256:9c5410e90ca328a4ab8ce6c15f4edc81b363b389271f9c9cbafc8372f09b884b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16832055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:554d2f5a3fc6cedc93285b37642e3b3a31eb869278db27aa913943525815d018`

```dockerfile
```

-	Layers:
	-	`sha256:370f089e3ebec1ba7ed0bc5aa1504bdc86001069b2ab08732c151cb68a44b2b3`  
		Last Modified: Mon, 27 Jul 2026 22:09:07 GMT  
		Size: 16.8 MB (16797542 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f9c3b30dff4a446cf15fed094ee7a4718449fea759dc962ccee7470032ab9196`  
		Last Modified: Mon, 27 Jul 2026 22:09:06 GMT  
		Size: 34.5 KB (34513 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9-oracle`

```console
$ docker pull mysql@sha256:257388edf9c84dbc04c763625446d5f3fa6ed60d1b0873bc552c614ba0a7ab4e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:313c76f59c62376fd26b78fc85169902ef10134996bbfc31200eb9c2ed7e802e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.9 MB (270904261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e28ade5359ee24890f115d202b396388a6b7d2514f1b2fed38d57e84be64aee`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:56:37 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:56:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 22:06:41 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 27 Jul 2026 22:06:43 GMT
ENV GOSU_VERSION=1.19
# Mon, 27 Jul 2026 22:06:43 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 27 Jul 2026 22:07:16 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 27 Jul 2026 22:07:16 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 27 Jul 2026 22:07:16 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 27 Jul 2026 22:07:16 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Mon, 27 Jul 2026 22:07:17 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 27 Jul 2026 22:07:52 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 27 Jul 2026 22:07:52 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 27 Jul 2026 22:07:52 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 27 Jul 2026 22:08:37 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 27 Jul 2026 22:08:37 GMT
VOLUME [/var/lib/mysql]
# Mon, 27 Jul 2026 22:08:37 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 27 Jul 2026 22:08:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 27 Jul 2026 22:08:37 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 27 Jul 2026 22:08:37 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:30627cea5424c411bee6559e1aed4c4b977ceaab0f12695130c3825de516d2cc`  
		Last Modified: Thu, 23 Jul 2026 22:56:48 GMT  
		Size: 47.9 MB (47927752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc9bff174e15c65eaff616885e231b88852df66693b17d67f375e2290bd35d30`  
		Last Modified: Mon, 27 Jul 2026 22:09:13 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6923c6c729f28c71e469acd16979f547b65606e4da0d208e4788ea638eed409`  
		Last Modified: Mon, 27 Jul 2026 22:09:13 GMT  
		Size: 783.6 KB (783559 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48af77f83ce2f6f159fa3a08aa627ba32d9ce492ec0fd5be576758c6018b8c59`  
		Last Modified: Mon, 27 Jul 2026 22:09:14 GMT  
		Size: 6.2 MB (6193145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95d83715477f6f9891094f288b888dee68081fff6ad96afe2fc9ed2d119ce103`  
		Last Modified: Mon, 27 Jul 2026 22:09:13 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fefbd8135359cebdc500d5149dc53406230ab12ff92a680aab1ecd4af454ff3c`  
		Last Modified: Mon, 27 Jul 2026 22:09:14 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9a1438654dd08d1e71135ed06a3c9a993376d18f0a7a4d34076f67d0f8d4bef`  
		Last Modified: Mon, 27 Jul 2026 22:09:17 GMT  
		Size: 57.1 MB (57050624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39577f2d64ca8e08e0305f1d6cced18006bd9ea435a0ec0c20e8c67bb6f87a64`  
		Last Modified: Mon, 27 Jul 2026 22:09:15 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47fffd23e43dc892762225feb9ceaaac8bc8aa3e5856a04f54851b9f83b10ef8`  
		Last Modified: Mon, 27 Jul 2026 22:09:20 GMT  
		Size: 158.9 MB (158939808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e62c147ead06ae33a9afa61873c66eaa986313a17e4864dea07f2a14f9f92610`  
		Last Modified: Mon, 27 Jul 2026 22:09:16 GMT  
		Size: 5.2 KB (5231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:536cb11469eb3996f816f2a69949dfa9de611a86053895474e8528db7a614739
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecd7ce6403a61b9ecec1a866a17af781f316726d60e7eebe2072569c961748d9`

```dockerfile
```

-	Layers:
	-	`sha256:0cad622e80b590ea769ac006ae4d905f4a9b9444c1854952037562a29aebc7b1`  
		Last Modified: Mon, 27 Jul 2026 22:09:14 GMT  
		Size: 16.8 MB (16799106 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a83239592ab9f2e7899a9494f5ffb869e3beb8093d62c39e23356f2d0a79fe04`  
		Last Modified: Mon, 27 Jul 2026 22:09:13 GMT  
		Size: 34.2 KB (34208 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:0c9a7b65cb630121c2bb5384d7446e0fe35d0b90a21516cb466427ced19a65be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.4 MB (267386404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:418e56472effc6bae31691dbd4a6d3eea9515e4a84ad82f690f880b6a25401de`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:55:20 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:55:20 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 22:06:30 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 27 Jul 2026 22:06:32 GMT
ENV GOSU_VERSION=1.19
# Mon, 27 Jul 2026 22:06:32 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 27 Jul 2026 22:07:06 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 27 Jul 2026 22:07:06 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 27 Jul 2026 22:07:06 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 27 Jul 2026 22:07:06 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Mon, 27 Jul 2026 22:07:06 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 27 Jul 2026 22:07:43 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 27 Jul 2026 22:07:43 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 27 Jul 2026 22:07:43 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 27 Jul 2026 22:08:30 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 27 Jul 2026 22:08:30 GMT
VOLUME [/var/lib/mysql]
# Mon, 27 Jul 2026 22:08:30 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 27 Jul 2026 22:08:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 27 Jul 2026 22:08:30 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 27 Jul 2026 22:08:30 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c1a8d43326b89b25aff74efe983a017053ef32314f6332ba2cf4e76fcf4f2b09`  
		Last Modified: Thu, 23 Jul 2026 22:55:31 GMT  
		Size: 46.5 MB (46477905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f756888a3dd9ea27296785ead49593ea7b1ea89daa43e4ad6403072b5c9da1c4`  
		Last Modified: Mon, 27 Jul 2026 22:09:06 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21c894eb0c4514b31c71d72c1a80d83fa79b0a861c0c452067cdc9aaabade43a`  
		Last Modified: Mon, 27 Jul 2026 22:09:06 GMT  
		Size: 737.5 KB (737528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af01a0e6f5cc0cc11954fda42fd008a0d39baf4c87ffc92d4f32a525b4ba73aa`  
		Last Modified: Mon, 27 Jul 2026 22:09:06 GMT  
		Size: 5.8 MB (5822624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3288a78e906aff294e438767f2eb299c63944da4af95c65a0e246b1e0db13ac2`  
		Last Modified: Mon, 27 Jul 2026 22:09:06 GMT  
		Size: 2.6 KB (2604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a895d48e9a638d719227ffe8a7843d8a21895dbd64eaec9d480443ecc3ca5263`  
		Last Modified: Mon, 27 Jul 2026 22:09:07 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a77fc7257c96dedc7563927f89494c0c381cf045e1a9cf1caa0b4db1c6b94f5d`  
		Last Modified: Mon, 27 Jul 2026 22:09:10 GMT  
		Size: 57.1 MB (57120770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55ff496c40880c2902b24d02e812d84dc165018d7923192e8fce0d36638dc683`  
		Last Modified: Mon, 27 Jul 2026 22:09:07 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b9e8433b8213a65ea447e429e604823ff0ee7060417dc0ae92817505ff68b96`  
		Last Modified: Mon, 27 Jul 2026 22:09:12 GMT  
		Size: 157.2 MB (157218208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b9a0c325d3288f2698074a155be0b918a1d6b25803832b55ea624297af5f2ea`  
		Last Modified: Mon, 27 Jul 2026 22:09:09 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:9c5410e90ca328a4ab8ce6c15f4edc81b363b389271f9c9cbafc8372f09b884b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16832055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:554d2f5a3fc6cedc93285b37642e3b3a31eb869278db27aa913943525815d018`

```dockerfile
```

-	Layers:
	-	`sha256:370f089e3ebec1ba7ed0bc5aa1504bdc86001069b2ab08732c151cb68a44b2b3`  
		Last Modified: Mon, 27 Jul 2026 22:09:07 GMT  
		Size: 16.8 MB (16797542 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f9c3b30dff4a446cf15fed094ee7a4718449fea759dc962ccee7470032ab9196`  
		Last Modified: Mon, 27 Jul 2026 22:09:06 GMT  
		Size: 34.5 KB (34513 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9-oraclelinux9`

```console
$ docker pull mysql@sha256:257388edf9c84dbc04c763625446d5f3fa6ed60d1b0873bc552c614ba0a7ab4e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:313c76f59c62376fd26b78fc85169902ef10134996bbfc31200eb9c2ed7e802e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.9 MB (270904261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e28ade5359ee24890f115d202b396388a6b7d2514f1b2fed38d57e84be64aee`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:56:37 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:56:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 22:06:41 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 27 Jul 2026 22:06:43 GMT
ENV GOSU_VERSION=1.19
# Mon, 27 Jul 2026 22:06:43 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 27 Jul 2026 22:07:16 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 27 Jul 2026 22:07:16 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 27 Jul 2026 22:07:16 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 27 Jul 2026 22:07:16 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Mon, 27 Jul 2026 22:07:17 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 27 Jul 2026 22:07:52 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 27 Jul 2026 22:07:52 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 27 Jul 2026 22:07:52 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 27 Jul 2026 22:08:37 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 27 Jul 2026 22:08:37 GMT
VOLUME [/var/lib/mysql]
# Mon, 27 Jul 2026 22:08:37 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 27 Jul 2026 22:08:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 27 Jul 2026 22:08:37 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 27 Jul 2026 22:08:37 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:30627cea5424c411bee6559e1aed4c4b977ceaab0f12695130c3825de516d2cc`  
		Last Modified: Thu, 23 Jul 2026 22:56:48 GMT  
		Size: 47.9 MB (47927752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc9bff174e15c65eaff616885e231b88852df66693b17d67f375e2290bd35d30`  
		Last Modified: Mon, 27 Jul 2026 22:09:13 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6923c6c729f28c71e469acd16979f547b65606e4da0d208e4788ea638eed409`  
		Last Modified: Mon, 27 Jul 2026 22:09:13 GMT  
		Size: 783.6 KB (783559 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48af77f83ce2f6f159fa3a08aa627ba32d9ce492ec0fd5be576758c6018b8c59`  
		Last Modified: Mon, 27 Jul 2026 22:09:14 GMT  
		Size: 6.2 MB (6193145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95d83715477f6f9891094f288b888dee68081fff6ad96afe2fc9ed2d119ce103`  
		Last Modified: Mon, 27 Jul 2026 22:09:13 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fefbd8135359cebdc500d5149dc53406230ab12ff92a680aab1ecd4af454ff3c`  
		Last Modified: Mon, 27 Jul 2026 22:09:14 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9a1438654dd08d1e71135ed06a3c9a993376d18f0a7a4d34076f67d0f8d4bef`  
		Last Modified: Mon, 27 Jul 2026 22:09:17 GMT  
		Size: 57.1 MB (57050624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39577f2d64ca8e08e0305f1d6cced18006bd9ea435a0ec0c20e8c67bb6f87a64`  
		Last Modified: Mon, 27 Jul 2026 22:09:15 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47fffd23e43dc892762225feb9ceaaac8bc8aa3e5856a04f54851b9f83b10ef8`  
		Last Modified: Mon, 27 Jul 2026 22:09:20 GMT  
		Size: 158.9 MB (158939808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e62c147ead06ae33a9afa61873c66eaa986313a17e4864dea07f2a14f9f92610`  
		Last Modified: Mon, 27 Jul 2026 22:09:16 GMT  
		Size: 5.2 KB (5231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:536cb11469eb3996f816f2a69949dfa9de611a86053895474e8528db7a614739
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecd7ce6403a61b9ecec1a866a17af781f316726d60e7eebe2072569c961748d9`

```dockerfile
```

-	Layers:
	-	`sha256:0cad622e80b590ea769ac006ae4d905f4a9b9444c1854952037562a29aebc7b1`  
		Last Modified: Mon, 27 Jul 2026 22:09:14 GMT  
		Size: 16.8 MB (16799106 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a83239592ab9f2e7899a9494f5ffb869e3beb8093d62c39e23356f2d0a79fe04`  
		Last Modified: Mon, 27 Jul 2026 22:09:13 GMT  
		Size: 34.2 KB (34208 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:0c9a7b65cb630121c2bb5384d7446e0fe35d0b90a21516cb466427ced19a65be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.4 MB (267386404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:418e56472effc6bae31691dbd4a6d3eea9515e4a84ad82f690f880b6a25401de`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:55:20 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:55:20 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 22:06:30 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 27 Jul 2026 22:06:32 GMT
ENV GOSU_VERSION=1.19
# Mon, 27 Jul 2026 22:06:32 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 27 Jul 2026 22:07:06 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 27 Jul 2026 22:07:06 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 27 Jul 2026 22:07:06 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 27 Jul 2026 22:07:06 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Mon, 27 Jul 2026 22:07:06 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 27 Jul 2026 22:07:43 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 27 Jul 2026 22:07:43 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 27 Jul 2026 22:07:43 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 27 Jul 2026 22:08:30 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 27 Jul 2026 22:08:30 GMT
VOLUME [/var/lib/mysql]
# Mon, 27 Jul 2026 22:08:30 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 27 Jul 2026 22:08:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 27 Jul 2026 22:08:30 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 27 Jul 2026 22:08:30 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c1a8d43326b89b25aff74efe983a017053ef32314f6332ba2cf4e76fcf4f2b09`  
		Last Modified: Thu, 23 Jul 2026 22:55:31 GMT  
		Size: 46.5 MB (46477905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f756888a3dd9ea27296785ead49593ea7b1ea89daa43e4ad6403072b5c9da1c4`  
		Last Modified: Mon, 27 Jul 2026 22:09:06 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21c894eb0c4514b31c71d72c1a80d83fa79b0a861c0c452067cdc9aaabade43a`  
		Last Modified: Mon, 27 Jul 2026 22:09:06 GMT  
		Size: 737.5 KB (737528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af01a0e6f5cc0cc11954fda42fd008a0d39baf4c87ffc92d4f32a525b4ba73aa`  
		Last Modified: Mon, 27 Jul 2026 22:09:06 GMT  
		Size: 5.8 MB (5822624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3288a78e906aff294e438767f2eb299c63944da4af95c65a0e246b1e0db13ac2`  
		Last Modified: Mon, 27 Jul 2026 22:09:06 GMT  
		Size: 2.6 KB (2604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a895d48e9a638d719227ffe8a7843d8a21895dbd64eaec9d480443ecc3ca5263`  
		Last Modified: Mon, 27 Jul 2026 22:09:07 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a77fc7257c96dedc7563927f89494c0c381cf045e1a9cf1caa0b4db1c6b94f5d`  
		Last Modified: Mon, 27 Jul 2026 22:09:10 GMT  
		Size: 57.1 MB (57120770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55ff496c40880c2902b24d02e812d84dc165018d7923192e8fce0d36638dc683`  
		Last Modified: Mon, 27 Jul 2026 22:09:07 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b9e8433b8213a65ea447e429e604823ff0ee7060417dc0ae92817505ff68b96`  
		Last Modified: Mon, 27 Jul 2026 22:09:12 GMT  
		Size: 157.2 MB (157218208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b9a0c325d3288f2698074a155be0b918a1d6b25803832b55ea624297af5f2ea`  
		Last Modified: Mon, 27 Jul 2026 22:09:09 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:9c5410e90ca328a4ab8ce6c15f4edc81b363b389271f9c9cbafc8372f09b884b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16832055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:554d2f5a3fc6cedc93285b37642e3b3a31eb869278db27aa913943525815d018`

```dockerfile
```

-	Layers:
	-	`sha256:370f089e3ebec1ba7ed0bc5aa1504bdc86001069b2ab08732c151cb68a44b2b3`  
		Last Modified: Mon, 27 Jul 2026 22:09:07 GMT  
		Size: 16.8 MB (16797542 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f9c3b30dff4a446cf15fed094ee7a4718449fea759dc962ccee7470032ab9196`  
		Last Modified: Mon, 27 Jul 2026 22:09:06 GMT  
		Size: 34.5 KB (34513 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9.7`

```console
$ docker pull mysql@sha256:257388edf9c84dbc04c763625446d5f3fa6ed60d1b0873bc552c614ba0a7ab4e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9.7` - linux; amd64

```console
$ docker pull mysql@sha256:313c76f59c62376fd26b78fc85169902ef10134996bbfc31200eb9c2ed7e802e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.9 MB (270904261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e28ade5359ee24890f115d202b396388a6b7d2514f1b2fed38d57e84be64aee`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:56:37 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:56:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 22:06:41 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 27 Jul 2026 22:06:43 GMT
ENV GOSU_VERSION=1.19
# Mon, 27 Jul 2026 22:06:43 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 27 Jul 2026 22:07:16 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 27 Jul 2026 22:07:16 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 27 Jul 2026 22:07:16 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 27 Jul 2026 22:07:16 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Mon, 27 Jul 2026 22:07:17 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 27 Jul 2026 22:07:52 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 27 Jul 2026 22:07:52 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 27 Jul 2026 22:07:52 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 27 Jul 2026 22:08:37 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 27 Jul 2026 22:08:37 GMT
VOLUME [/var/lib/mysql]
# Mon, 27 Jul 2026 22:08:37 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 27 Jul 2026 22:08:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 27 Jul 2026 22:08:37 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 27 Jul 2026 22:08:37 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:30627cea5424c411bee6559e1aed4c4b977ceaab0f12695130c3825de516d2cc`  
		Last Modified: Thu, 23 Jul 2026 22:56:48 GMT  
		Size: 47.9 MB (47927752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc9bff174e15c65eaff616885e231b88852df66693b17d67f375e2290bd35d30`  
		Last Modified: Mon, 27 Jul 2026 22:09:13 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6923c6c729f28c71e469acd16979f547b65606e4da0d208e4788ea638eed409`  
		Last Modified: Mon, 27 Jul 2026 22:09:13 GMT  
		Size: 783.6 KB (783559 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48af77f83ce2f6f159fa3a08aa627ba32d9ce492ec0fd5be576758c6018b8c59`  
		Last Modified: Mon, 27 Jul 2026 22:09:14 GMT  
		Size: 6.2 MB (6193145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95d83715477f6f9891094f288b888dee68081fff6ad96afe2fc9ed2d119ce103`  
		Last Modified: Mon, 27 Jul 2026 22:09:13 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fefbd8135359cebdc500d5149dc53406230ab12ff92a680aab1ecd4af454ff3c`  
		Last Modified: Mon, 27 Jul 2026 22:09:14 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9a1438654dd08d1e71135ed06a3c9a993376d18f0a7a4d34076f67d0f8d4bef`  
		Last Modified: Mon, 27 Jul 2026 22:09:17 GMT  
		Size: 57.1 MB (57050624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39577f2d64ca8e08e0305f1d6cced18006bd9ea435a0ec0c20e8c67bb6f87a64`  
		Last Modified: Mon, 27 Jul 2026 22:09:15 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47fffd23e43dc892762225feb9ceaaac8bc8aa3e5856a04f54851b9f83b10ef8`  
		Last Modified: Mon, 27 Jul 2026 22:09:20 GMT  
		Size: 158.9 MB (158939808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e62c147ead06ae33a9afa61873c66eaa986313a17e4864dea07f2a14f9f92610`  
		Last Modified: Mon, 27 Jul 2026 22:09:16 GMT  
		Size: 5.2 KB (5231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7` - unknown; unknown

```console
$ docker pull mysql@sha256:536cb11469eb3996f816f2a69949dfa9de611a86053895474e8528db7a614739
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecd7ce6403a61b9ecec1a866a17af781f316726d60e7eebe2072569c961748d9`

```dockerfile
```

-	Layers:
	-	`sha256:0cad622e80b590ea769ac006ae4d905f4a9b9444c1854952037562a29aebc7b1`  
		Last Modified: Mon, 27 Jul 2026 22:09:14 GMT  
		Size: 16.8 MB (16799106 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a83239592ab9f2e7899a9494f5ffb869e3beb8093d62c39e23356f2d0a79fe04`  
		Last Modified: Mon, 27 Jul 2026 22:09:13 GMT  
		Size: 34.2 KB (34208 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9.7` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:0c9a7b65cb630121c2bb5384d7446e0fe35d0b90a21516cb466427ced19a65be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.4 MB (267386404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:418e56472effc6bae31691dbd4a6d3eea9515e4a84ad82f690f880b6a25401de`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:55:20 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:55:20 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 22:06:30 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 27 Jul 2026 22:06:32 GMT
ENV GOSU_VERSION=1.19
# Mon, 27 Jul 2026 22:06:32 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 27 Jul 2026 22:07:06 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 27 Jul 2026 22:07:06 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 27 Jul 2026 22:07:06 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 27 Jul 2026 22:07:06 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Mon, 27 Jul 2026 22:07:06 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 27 Jul 2026 22:07:43 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 27 Jul 2026 22:07:43 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 27 Jul 2026 22:07:43 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 27 Jul 2026 22:08:30 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 27 Jul 2026 22:08:30 GMT
VOLUME [/var/lib/mysql]
# Mon, 27 Jul 2026 22:08:30 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 27 Jul 2026 22:08:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 27 Jul 2026 22:08:30 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 27 Jul 2026 22:08:30 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c1a8d43326b89b25aff74efe983a017053ef32314f6332ba2cf4e76fcf4f2b09`  
		Last Modified: Thu, 23 Jul 2026 22:55:31 GMT  
		Size: 46.5 MB (46477905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f756888a3dd9ea27296785ead49593ea7b1ea89daa43e4ad6403072b5c9da1c4`  
		Last Modified: Mon, 27 Jul 2026 22:09:06 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21c894eb0c4514b31c71d72c1a80d83fa79b0a861c0c452067cdc9aaabade43a`  
		Last Modified: Mon, 27 Jul 2026 22:09:06 GMT  
		Size: 737.5 KB (737528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af01a0e6f5cc0cc11954fda42fd008a0d39baf4c87ffc92d4f32a525b4ba73aa`  
		Last Modified: Mon, 27 Jul 2026 22:09:06 GMT  
		Size: 5.8 MB (5822624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3288a78e906aff294e438767f2eb299c63944da4af95c65a0e246b1e0db13ac2`  
		Last Modified: Mon, 27 Jul 2026 22:09:06 GMT  
		Size: 2.6 KB (2604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a895d48e9a638d719227ffe8a7843d8a21895dbd64eaec9d480443ecc3ca5263`  
		Last Modified: Mon, 27 Jul 2026 22:09:07 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a77fc7257c96dedc7563927f89494c0c381cf045e1a9cf1caa0b4db1c6b94f5d`  
		Last Modified: Mon, 27 Jul 2026 22:09:10 GMT  
		Size: 57.1 MB (57120770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55ff496c40880c2902b24d02e812d84dc165018d7923192e8fce0d36638dc683`  
		Last Modified: Mon, 27 Jul 2026 22:09:07 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b9e8433b8213a65ea447e429e604823ff0ee7060417dc0ae92817505ff68b96`  
		Last Modified: Mon, 27 Jul 2026 22:09:12 GMT  
		Size: 157.2 MB (157218208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b9a0c325d3288f2698074a155be0b918a1d6b25803832b55ea624297af5f2ea`  
		Last Modified: Mon, 27 Jul 2026 22:09:09 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7` - unknown; unknown

```console
$ docker pull mysql@sha256:9c5410e90ca328a4ab8ce6c15f4edc81b363b389271f9c9cbafc8372f09b884b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16832055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:554d2f5a3fc6cedc93285b37642e3b3a31eb869278db27aa913943525815d018`

```dockerfile
```

-	Layers:
	-	`sha256:370f089e3ebec1ba7ed0bc5aa1504bdc86001069b2ab08732c151cb68a44b2b3`  
		Last Modified: Mon, 27 Jul 2026 22:09:07 GMT  
		Size: 16.8 MB (16797542 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f9c3b30dff4a446cf15fed094ee7a4718449fea759dc962ccee7470032ab9196`  
		Last Modified: Mon, 27 Jul 2026 22:09:06 GMT  
		Size: 34.5 KB (34513 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9.7-oracle`

```console
$ docker pull mysql@sha256:257388edf9c84dbc04c763625446d5f3fa6ed60d1b0873bc552c614ba0a7ab4e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9.7-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:313c76f59c62376fd26b78fc85169902ef10134996bbfc31200eb9c2ed7e802e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.9 MB (270904261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e28ade5359ee24890f115d202b396388a6b7d2514f1b2fed38d57e84be64aee`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:56:37 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:56:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 22:06:41 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 27 Jul 2026 22:06:43 GMT
ENV GOSU_VERSION=1.19
# Mon, 27 Jul 2026 22:06:43 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 27 Jul 2026 22:07:16 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 27 Jul 2026 22:07:16 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 27 Jul 2026 22:07:16 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 27 Jul 2026 22:07:16 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Mon, 27 Jul 2026 22:07:17 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 27 Jul 2026 22:07:52 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 27 Jul 2026 22:07:52 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 27 Jul 2026 22:07:52 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 27 Jul 2026 22:08:37 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 27 Jul 2026 22:08:37 GMT
VOLUME [/var/lib/mysql]
# Mon, 27 Jul 2026 22:08:37 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 27 Jul 2026 22:08:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 27 Jul 2026 22:08:37 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 27 Jul 2026 22:08:37 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:30627cea5424c411bee6559e1aed4c4b977ceaab0f12695130c3825de516d2cc`  
		Last Modified: Thu, 23 Jul 2026 22:56:48 GMT  
		Size: 47.9 MB (47927752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc9bff174e15c65eaff616885e231b88852df66693b17d67f375e2290bd35d30`  
		Last Modified: Mon, 27 Jul 2026 22:09:13 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6923c6c729f28c71e469acd16979f547b65606e4da0d208e4788ea638eed409`  
		Last Modified: Mon, 27 Jul 2026 22:09:13 GMT  
		Size: 783.6 KB (783559 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48af77f83ce2f6f159fa3a08aa627ba32d9ce492ec0fd5be576758c6018b8c59`  
		Last Modified: Mon, 27 Jul 2026 22:09:14 GMT  
		Size: 6.2 MB (6193145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95d83715477f6f9891094f288b888dee68081fff6ad96afe2fc9ed2d119ce103`  
		Last Modified: Mon, 27 Jul 2026 22:09:13 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fefbd8135359cebdc500d5149dc53406230ab12ff92a680aab1ecd4af454ff3c`  
		Last Modified: Mon, 27 Jul 2026 22:09:14 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9a1438654dd08d1e71135ed06a3c9a993376d18f0a7a4d34076f67d0f8d4bef`  
		Last Modified: Mon, 27 Jul 2026 22:09:17 GMT  
		Size: 57.1 MB (57050624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39577f2d64ca8e08e0305f1d6cced18006bd9ea435a0ec0c20e8c67bb6f87a64`  
		Last Modified: Mon, 27 Jul 2026 22:09:15 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47fffd23e43dc892762225feb9ceaaac8bc8aa3e5856a04f54851b9f83b10ef8`  
		Last Modified: Mon, 27 Jul 2026 22:09:20 GMT  
		Size: 158.9 MB (158939808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e62c147ead06ae33a9afa61873c66eaa986313a17e4864dea07f2a14f9f92610`  
		Last Modified: Mon, 27 Jul 2026 22:09:16 GMT  
		Size: 5.2 KB (5231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:536cb11469eb3996f816f2a69949dfa9de611a86053895474e8528db7a614739
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecd7ce6403a61b9ecec1a866a17af781f316726d60e7eebe2072569c961748d9`

```dockerfile
```

-	Layers:
	-	`sha256:0cad622e80b590ea769ac006ae4d905f4a9b9444c1854952037562a29aebc7b1`  
		Last Modified: Mon, 27 Jul 2026 22:09:14 GMT  
		Size: 16.8 MB (16799106 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a83239592ab9f2e7899a9494f5ffb869e3beb8093d62c39e23356f2d0a79fe04`  
		Last Modified: Mon, 27 Jul 2026 22:09:13 GMT  
		Size: 34.2 KB (34208 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9.7-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:0c9a7b65cb630121c2bb5384d7446e0fe35d0b90a21516cb466427ced19a65be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.4 MB (267386404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:418e56472effc6bae31691dbd4a6d3eea9515e4a84ad82f690f880b6a25401de`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:55:20 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:55:20 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 22:06:30 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 27 Jul 2026 22:06:32 GMT
ENV GOSU_VERSION=1.19
# Mon, 27 Jul 2026 22:06:32 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 27 Jul 2026 22:07:06 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 27 Jul 2026 22:07:06 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 27 Jul 2026 22:07:06 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 27 Jul 2026 22:07:06 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Mon, 27 Jul 2026 22:07:06 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 27 Jul 2026 22:07:43 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 27 Jul 2026 22:07:43 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 27 Jul 2026 22:07:43 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 27 Jul 2026 22:08:30 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 27 Jul 2026 22:08:30 GMT
VOLUME [/var/lib/mysql]
# Mon, 27 Jul 2026 22:08:30 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 27 Jul 2026 22:08:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 27 Jul 2026 22:08:30 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 27 Jul 2026 22:08:30 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c1a8d43326b89b25aff74efe983a017053ef32314f6332ba2cf4e76fcf4f2b09`  
		Last Modified: Thu, 23 Jul 2026 22:55:31 GMT  
		Size: 46.5 MB (46477905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f756888a3dd9ea27296785ead49593ea7b1ea89daa43e4ad6403072b5c9da1c4`  
		Last Modified: Mon, 27 Jul 2026 22:09:06 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21c894eb0c4514b31c71d72c1a80d83fa79b0a861c0c452067cdc9aaabade43a`  
		Last Modified: Mon, 27 Jul 2026 22:09:06 GMT  
		Size: 737.5 KB (737528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af01a0e6f5cc0cc11954fda42fd008a0d39baf4c87ffc92d4f32a525b4ba73aa`  
		Last Modified: Mon, 27 Jul 2026 22:09:06 GMT  
		Size: 5.8 MB (5822624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3288a78e906aff294e438767f2eb299c63944da4af95c65a0e246b1e0db13ac2`  
		Last Modified: Mon, 27 Jul 2026 22:09:06 GMT  
		Size: 2.6 KB (2604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a895d48e9a638d719227ffe8a7843d8a21895dbd64eaec9d480443ecc3ca5263`  
		Last Modified: Mon, 27 Jul 2026 22:09:07 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a77fc7257c96dedc7563927f89494c0c381cf045e1a9cf1caa0b4db1c6b94f5d`  
		Last Modified: Mon, 27 Jul 2026 22:09:10 GMT  
		Size: 57.1 MB (57120770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55ff496c40880c2902b24d02e812d84dc165018d7923192e8fce0d36638dc683`  
		Last Modified: Mon, 27 Jul 2026 22:09:07 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b9e8433b8213a65ea447e429e604823ff0ee7060417dc0ae92817505ff68b96`  
		Last Modified: Mon, 27 Jul 2026 22:09:12 GMT  
		Size: 157.2 MB (157218208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b9a0c325d3288f2698074a155be0b918a1d6b25803832b55ea624297af5f2ea`  
		Last Modified: Mon, 27 Jul 2026 22:09:09 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:9c5410e90ca328a4ab8ce6c15f4edc81b363b389271f9c9cbafc8372f09b884b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16832055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:554d2f5a3fc6cedc93285b37642e3b3a31eb869278db27aa913943525815d018`

```dockerfile
```

-	Layers:
	-	`sha256:370f089e3ebec1ba7ed0bc5aa1504bdc86001069b2ab08732c151cb68a44b2b3`  
		Last Modified: Mon, 27 Jul 2026 22:09:07 GMT  
		Size: 16.8 MB (16797542 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f9c3b30dff4a446cf15fed094ee7a4718449fea759dc962ccee7470032ab9196`  
		Last Modified: Mon, 27 Jul 2026 22:09:06 GMT  
		Size: 34.5 KB (34513 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9.7-oraclelinux9`

```console
$ docker pull mysql@sha256:257388edf9c84dbc04c763625446d5f3fa6ed60d1b0873bc552c614ba0a7ab4e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9.7-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:313c76f59c62376fd26b78fc85169902ef10134996bbfc31200eb9c2ed7e802e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.9 MB (270904261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e28ade5359ee24890f115d202b396388a6b7d2514f1b2fed38d57e84be64aee`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:56:37 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:56:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 22:06:41 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 27 Jul 2026 22:06:43 GMT
ENV GOSU_VERSION=1.19
# Mon, 27 Jul 2026 22:06:43 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 27 Jul 2026 22:07:16 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 27 Jul 2026 22:07:16 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 27 Jul 2026 22:07:16 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 27 Jul 2026 22:07:16 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Mon, 27 Jul 2026 22:07:17 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 27 Jul 2026 22:07:52 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 27 Jul 2026 22:07:52 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 27 Jul 2026 22:07:52 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 27 Jul 2026 22:08:37 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 27 Jul 2026 22:08:37 GMT
VOLUME [/var/lib/mysql]
# Mon, 27 Jul 2026 22:08:37 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 27 Jul 2026 22:08:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 27 Jul 2026 22:08:37 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 27 Jul 2026 22:08:37 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:30627cea5424c411bee6559e1aed4c4b977ceaab0f12695130c3825de516d2cc`  
		Last Modified: Thu, 23 Jul 2026 22:56:48 GMT  
		Size: 47.9 MB (47927752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc9bff174e15c65eaff616885e231b88852df66693b17d67f375e2290bd35d30`  
		Last Modified: Mon, 27 Jul 2026 22:09:13 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6923c6c729f28c71e469acd16979f547b65606e4da0d208e4788ea638eed409`  
		Last Modified: Mon, 27 Jul 2026 22:09:13 GMT  
		Size: 783.6 KB (783559 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48af77f83ce2f6f159fa3a08aa627ba32d9ce492ec0fd5be576758c6018b8c59`  
		Last Modified: Mon, 27 Jul 2026 22:09:14 GMT  
		Size: 6.2 MB (6193145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95d83715477f6f9891094f288b888dee68081fff6ad96afe2fc9ed2d119ce103`  
		Last Modified: Mon, 27 Jul 2026 22:09:13 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fefbd8135359cebdc500d5149dc53406230ab12ff92a680aab1ecd4af454ff3c`  
		Last Modified: Mon, 27 Jul 2026 22:09:14 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9a1438654dd08d1e71135ed06a3c9a993376d18f0a7a4d34076f67d0f8d4bef`  
		Last Modified: Mon, 27 Jul 2026 22:09:17 GMT  
		Size: 57.1 MB (57050624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39577f2d64ca8e08e0305f1d6cced18006bd9ea435a0ec0c20e8c67bb6f87a64`  
		Last Modified: Mon, 27 Jul 2026 22:09:15 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47fffd23e43dc892762225feb9ceaaac8bc8aa3e5856a04f54851b9f83b10ef8`  
		Last Modified: Mon, 27 Jul 2026 22:09:20 GMT  
		Size: 158.9 MB (158939808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e62c147ead06ae33a9afa61873c66eaa986313a17e4864dea07f2a14f9f92610`  
		Last Modified: Mon, 27 Jul 2026 22:09:16 GMT  
		Size: 5.2 KB (5231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:536cb11469eb3996f816f2a69949dfa9de611a86053895474e8528db7a614739
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecd7ce6403a61b9ecec1a866a17af781f316726d60e7eebe2072569c961748d9`

```dockerfile
```

-	Layers:
	-	`sha256:0cad622e80b590ea769ac006ae4d905f4a9b9444c1854952037562a29aebc7b1`  
		Last Modified: Mon, 27 Jul 2026 22:09:14 GMT  
		Size: 16.8 MB (16799106 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a83239592ab9f2e7899a9494f5ffb869e3beb8093d62c39e23356f2d0a79fe04`  
		Last Modified: Mon, 27 Jul 2026 22:09:13 GMT  
		Size: 34.2 KB (34208 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9.7-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:0c9a7b65cb630121c2bb5384d7446e0fe35d0b90a21516cb466427ced19a65be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.4 MB (267386404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:418e56472effc6bae31691dbd4a6d3eea9515e4a84ad82f690f880b6a25401de`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:55:20 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:55:20 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 22:06:30 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 27 Jul 2026 22:06:32 GMT
ENV GOSU_VERSION=1.19
# Mon, 27 Jul 2026 22:06:32 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 27 Jul 2026 22:07:06 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 27 Jul 2026 22:07:06 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 27 Jul 2026 22:07:06 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 27 Jul 2026 22:07:06 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Mon, 27 Jul 2026 22:07:06 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 27 Jul 2026 22:07:43 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 27 Jul 2026 22:07:43 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 27 Jul 2026 22:07:43 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 27 Jul 2026 22:08:30 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 27 Jul 2026 22:08:30 GMT
VOLUME [/var/lib/mysql]
# Mon, 27 Jul 2026 22:08:30 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 27 Jul 2026 22:08:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 27 Jul 2026 22:08:30 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 27 Jul 2026 22:08:30 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c1a8d43326b89b25aff74efe983a017053ef32314f6332ba2cf4e76fcf4f2b09`  
		Last Modified: Thu, 23 Jul 2026 22:55:31 GMT  
		Size: 46.5 MB (46477905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f756888a3dd9ea27296785ead49593ea7b1ea89daa43e4ad6403072b5c9da1c4`  
		Last Modified: Mon, 27 Jul 2026 22:09:06 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21c894eb0c4514b31c71d72c1a80d83fa79b0a861c0c452067cdc9aaabade43a`  
		Last Modified: Mon, 27 Jul 2026 22:09:06 GMT  
		Size: 737.5 KB (737528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af01a0e6f5cc0cc11954fda42fd008a0d39baf4c87ffc92d4f32a525b4ba73aa`  
		Last Modified: Mon, 27 Jul 2026 22:09:06 GMT  
		Size: 5.8 MB (5822624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3288a78e906aff294e438767f2eb299c63944da4af95c65a0e246b1e0db13ac2`  
		Last Modified: Mon, 27 Jul 2026 22:09:06 GMT  
		Size: 2.6 KB (2604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a895d48e9a638d719227ffe8a7843d8a21895dbd64eaec9d480443ecc3ca5263`  
		Last Modified: Mon, 27 Jul 2026 22:09:07 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a77fc7257c96dedc7563927f89494c0c381cf045e1a9cf1caa0b4db1c6b94f5d`  
		Last Modified: Mon, 27 Jul 2026 22:09:10 GMT  
		Size: 57.1 MB (57120770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55ff496c40880c2902b24d02e812d84dc165018d7923192e8fce0d36638dc683`  
		Last Modified: Mon, 27 Jul 2026 22:09:07 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b9e8433b8213a65ea447e429e604823ff0ee7060417dc0ae92817505ff68b96`  
		Last Modified: Mon, 27 Jul 2026 22:09:12 GMT  
		Size: 157.2 MB (157218208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b9a0c325d3288f2698074a155be0b918a1d6b25803832b55ea624297af5f2ea`  
		Last Modified: Mon, 27 Jul 2026 22:09:09 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:9c5410e90ca328a4ab8ce6c15f4edc81b363b389271f9c9cbafc8372f09b884b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16832055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:554d2f5a3fc6cedc93285b37642e3b3a31eb869278db27aa913943525815d018`

```dockerfile
```

-	Layers:
	-	`sha256:370f089e3ebec1ba7ed0bc5aa1504bdc86001069b2ab08732c151cb68a44b2b3`  
		Last Modified: Mon, 27 Jul 2026 22:09:07 GMT  
		Size: 16.8 MB (16797542 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f9c3b30dff4a446cf15fed094ee7a4718449fea759dc962ccee7470032ab9196`  
		Last Modified: Mon, 27 Jul 2026 22:09:06 GMT  
		Size: 34.5 KB (34513 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9.7.2`

```console
$ docker pull mysql@sha256:257388edf9c84dbc04c763625446d5f3fa6ed60d1b0873bc552c614ba0a7ab4e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9.7.2` - linux; amd64

```console
$ docker pull mysql@sha256:313c76f59c62376fd26b78fc85169902ef10134996bbfc31200eb9c2ed7e802e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.9 MB (270904261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e28ade5359ee24890f115d202b396388a6b7d2514f1b2fed38d57e84be64aee`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:56:37 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:56:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 22:06:41 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 27 Jul 2026 22:06:43 GMT
ENV GOSU_VERSION=1.19
# Mon, 27 Jul 2026 22:06:43 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 27 Jul 2026 22:07:16 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 27 Jul 2026 22:07:16 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 27 Jul 2026 22:07:16 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 27 Jul 2026 22:07:16 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Mon, 27 Jul 2026 22:07:17 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 27 Jul 2026 22:07:52 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 27 Jul 2026 22:07:52 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 27 Jul 2026 22:07:52 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 27 Jul 2026 22:08:37 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 27 Jul 2026 22:08:37 GMT
VOLUME [/var/lib/mysql]
# Mon, 27 Jul 2026 22:08:37 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 27 Jul 2026 22:08:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 27 Jul 2026 22:08:37 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 27 Jul 2026 22:08:37 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:30627cea5424c411bee6559e1aed4c4b977ceaab0f12695130c3825de516d2cc`  
		Last Modified: Thu, 23 Jul 2026 22:56:48 GMT  
		Size: 47.9 MB (47927752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc9bff174e15c65eaff616885e231b88852df66693b17d67f375e2290bd35d30`  
		Last Modified: Mon, 27 Jul 2026 22:09:13 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6923c6c729f28c71e469acd16979f547b65606e4da0d208e4788ea638eed409`  
		Last Modified: Mon, 27 Jul 2026 22:09:13 GMT  
		Size: 783.6 KB (783559 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48af77f83ce2f6f159fa3a08aa627ba32d9ce492ec0fd5be576758c6018b8c59`  
		Last Modified: Mon, 27 Jul 2026 22:09:14 GMT  
		Size: 6.2 MB (6193145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95d83715477f6f9891094f288b888dee68081fff6ad96afe2fc9ed2d119ce103`  
		Last Modified: Mon, 27 Jul 2026 22:09:13 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fefbd8135359cebdc500d5149dc53406230ab12ff92a680aab1ecd4af454ff3c`  
		Last Modified: Mon, 27 Jul 2026 22:09:14 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9a1438654dd08d1e71135ed06a3c9a993376d18f0a7a4d34076f67d0f8d4bef`  
		Last Modified: Mon, 27 Jul 2026 22:09:17 GMT  
		Size: 57.1 MB (57050624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39577f2d64ca8e08e0305f1d6cced18006bd9ea435a0ec0c20e8c67bb6f87a64`  
		Last Modified: Mon, 27 Jul 2026 22:09:15 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47fffd23e43dc892762225feb9ceaaac8bc8aa3e5856a04f54851b9f83b10ef8`  
		Last Modified: Mon, 27 Jul 2026 22:09:20 GMT  
		Size: 158.9 MB (158939808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e62c147ead06ae33a9afa61873c66eaa986313a17e4864dea07f2a14f9f92610`  
		Last Modified: Mon, 27 Jul 2026 22:09:16 GMT  
		Size: 5.2 KB (5231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7.2` - unknown; unknown

```console
$ docker pull mysql@sha256:536cb11469eb3996f816f2a69949dfa9de611a86053895474e8528db7a614739
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecd7ce6403a61b9ecec1a866a17af781f316726d60e7eebe2072569c961748d9`

```dockerfile
```

-	Layers:
	-	`sha256:0cad622e80b590ea769ac006ae4d905f4a9b9444c1854952037562a29aebc7b1`  
		Last Modified: Mon, 27 Jul 2026 22:09:14 GMT  
		Size: 16.8 MB (16799106 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a83239592ab9f2e7899a9494f5ffb869e3beb8093d62c39e23356f2d0a79fe04`  
		Last Modified: Mon, 27 Jul 2026 22:09:13 GMT  
		Size: 34.2 KB (34208 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9.7.2` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:0c9a7b65cb630121c2bb5384d7446e0fe35d0b90a21516cb466427ced19a65be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.4 MB (267386404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:418e56472effc6bae31691dbd4a6d3eea9515e4a84ad82f690f880b6a25401de`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:55:20 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:55:20 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 22:06:30 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 27 Jul 2026 22:06:32 GMT
ENV GOSU_VERSION=1.19
# Mon, 27 Jul 2026 22:06:32 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 27 Jul 2026 22:07:06 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 27 Jul 2026 22:07:06 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 27 Jul 2026 22:07:06 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 27 Jul 2026 22:07:06 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Mon, 27 Jul 2026 22:07:06 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 27 Jul 2026 22:07:43 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 27 Jul 2026 22:07:43 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 27 Jul 2026 22:07:43 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 27 Jul 2026 22:08:30 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 27 Jul 2026 22:08:30 GMT
VOLUME [/var/lib/mysql]
# Mon, 27 Jul 2026 22:08:30 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 27 Jul 2026 22:08:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 27 Jul 2026 22:08:30 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 27 Jul 2026 22:08:30 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c1a8d43326b89b25aff74efe983a017053ef32314f6332ba2cf4e76fcf4f2b09`  
		Last Modified: Thu, 23 Jul 2026 22:55:31 GMT  
		Size: 46.5 MB (46477905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f756888a3dd9ea27296785ead49593ea7b1ea89daa43e4ad6403072b5c9da1c4`  
		Last Modified: Mon, 27 Jul 2026 22:09:06 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21c894eb0c4514b31c71d72c1a80d83fa79b0a861c0c452067cdc9aaabade43a`  
		Last Modified: Mon, 27 Jul 2026 22:09:06 GMT  
		Size: 737.5 KB (737528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af01a0e6f5cc0cc11954fda42fd008a0d39baf4c87ffc92d4f32a525b4ba73aa`  
		Last Modified: Mon, 27 Jul 2026 22:09:06 GMT  
		Size: 5.8 MB (5822624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3288a78e906aff294e438767f2eb299c63944da4af95c65a0e246b1e0db13ac2`  
		Last Modified: Mon, 27 Jul 2026 22:09:06 GMT  
		Size: 2.6 KB (2604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a895d48e9a638d719227ffe8a7843d8a21895dbd64eaec9d480443ecc3ca5263`  
		Last Modified: Mon, 27 Jul 2026 22:09:07 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a77fc7257c96dedc7563927f89494c0c381cf045e1a9cf1caa0b4db1c6b94f5d`  
		Last Modified: Mon, 27 Jul 2026 22:09:10 GMT  
		Size: 57.1 MB (57120770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55ff496c40880c2902b24d02e812d84dc165018d7923192e8fce0d36638dc683`  
		Last Modified: Mon, 27 Jul 2026 22:09:07 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b9e8433b8213a65ea447e429e604823ff0ee7060417dc0ae92817505ff68b96`  
		Last Modified: Mon, 27 Jul 2026 22:09:12 GMT  
		Size: 157.2 MB (157218208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b9a0c325d3288f2698074a155be0b918a1d6b25803832b55ea624297af5f2ea`  
		Last Modified: Mon, 27 Jul 2026 22:09:09 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7.2` - unknown; unknown

```console
$ docker pull mysql@sha256:9c5410e90ca328a4ab8ce6c15f4edc81b363b389271f9c9cbafc8372f09b884b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16832055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:554d2f5a3fc6cedc93285b37642e3b3a31eb869278db27aa913943525815d018`

```dockerfile
```

-	Layers:
	-	`sha256:370f089e3ebec1ba7ed0bc5aa1504bdc86001069b2ab08732c151cb68a44b2b3`  
		Last Modified: Mon, 27 Jul 2026 22:09:07 GMT  
		Size: 16.8 MB (16797542 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f9c3b30dff4a446cf15fed094ee7a4718449fea759dc962ccee7470032ab9196`  
		Last Modified: Mon, 27 Jul 2026 22:09:06 GMT  
		Size: 34.5 KB (34513 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9.7.2-oracle`

```console
$ docker pull mysql@sha256:257388edf9c84dbc04c763625446d5f3fa6ed60d1b0873bc552c614ba0a7ab4e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9.7.2-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:313c76f59c62376fd26b78fc85169902ef10134996bbfc31200eb9c2ed7e802e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.9 MB (270904261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e28ade5359ee24890f115d202b396388a6b7d2514f1b2fed38d57e84be64aee`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:56:37 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:56:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 22:06:41 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 27 Jul 2026 22:06:43 GMT
ENV GOSU_VERSION=1.19
# Mon, 27 Jul 2026 22:06:43 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 27 Jul 2026 22:07:16 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 27 Jul 2026 22:07:16 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 27 Jul 2026 22:07:16 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 27 Jul 2026 22:07:16 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Mon, 27 Jul 2026 22:07:17 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 27 Jul 2026 22:07:52 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 27 Jul 2026 22:07:52 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 27 Jul 2026 22:07:52 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 27 Jul 2026 22:08:37 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 27 Jul 2026 22:08:37 GMT
VOLUME [/var/lib/mysql]
# Mon, 27 Jul 2026 22:08:37 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 27 Jul 2026 22:08:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 27 Jul 2026 22:08:37 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 27 Jul 2026 22:08:37 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:30627cea5424c411bee6559e1aed4c4b977ceaab0f12695130c3825de516d2cc`  
		Last Modified: Thu, 23 Jul 2026 22:56:48 GMT  
		Size: 47.9 MB (47927752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc9bff174e15c65eaff616885e231b88852df66693b17d67f375e2290bd35d30`  
		Last Modified: Mon, 27 Jul 2026 22:09:13 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6923c6c729f28c71e469acd16979f547b65606e4da0d208e4788ea638eed409`  
		Last Modified: Mon, 27 Jul 2026 22:09:13 GMT  
		Size: 783.6 KB (783559 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48af77f83ce2f6f159fa3a08aa627ba32d9ce492ec0fd5be576758c6018b8c59`  
		Last Modified: Mon, 27 Jul 2026 22:09:14 GMT  
		Size: 6.2 MB (6193145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95d83715477f6f9891094f288b888dee68081fff6ad96afe2fc9ed2d119ce103`  
		Last Modified: Mon, 27 Jul 2026 22:09:13 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fefbd8135359cebdc500d5149dc53406230ab12ff92a680aab1ecd4af454ff3c`  
		Last Modified: Mon, 27 Jul 2026 22:09:14 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9a1438654dd08d1e71135ed06a3c9a993376d18f0a7a4d34076f67d0f8d4bef`  
		Last Modified: Mon, 27 Jul 2026 22:09:17 GMT  
		Size: 57.1 MB (57050624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39577f2d64ca8e08e0305f1d6cced18006bd9ea435a0ec0c20e8c67bb6f87a64`  
		Last Modified: Mon, 27 Jul 2026 22:09:15 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47fffd23e43dc892762225feb9ceaaac8bc8aa3e5856a04f54851b9f83b10ef8`  
		Last Modified: Mon, 27 Jul 2026 22:09:20 GMT  
		Size: 158.9 MB (158939808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e62c147ead06ae33a9afa61873c66eaa986313a17e4864dea07f2a14f9f92610`  
		Last Modified: Mon, 27 Jul 2026 22:09:16 GMT  
		Size: 5.2 KB (5231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7.2-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:536cb11469eb3996f816f2a69949dfa9de611a86053895474e8528db7a614739
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecd7ce6403a61b9ecec1a866a17af781f316726d60e7eebe2072569c961748d9`

```dockerfile
```

-	Layers:
	-	`sha256:0cad622e80b590ea769ac006ae4d905f4a9b9444c1854952037562a29aebc7b1`  
		Last Modified: Mon, 27 Jul 2026 22:09:14 GMT  
		Size: 16.8 MB (16799106 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a83239592ab9f2e7899a9494f5ffb869e3beb8093d62c39e23356f2d0a79fe04`  
		Last Modified: Mon, 27 Jul 2026 22:09:13 GMT  
		Size: 34.2 KB (34208 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9.7.2-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:0c9a7b65cb630121c2bb5384d7446e0fe35d0b90a21516cb466427ced19a65be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.4 MB (267386404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:418e56472effc6bae31691dbd4a6d3eea9515e4a84ad82f690f880b6a25401de`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:55:20 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:55:20 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 22:06:30 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 27 Jul 2026 22:06:32 GMT
ENV GOSU_VERSION=1.19
# Mon, 27 Jul 2026 22:06:32 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 27 Jul 2026 22:07:06 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 27 Jul 2026 22:07:06 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 27 Jul 2026 22:07:06 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 27 Jul 2026 22:07:06 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Mon, 27 Jul 2026 22:07:06 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 27 Jul 2026 22:07:43 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 27 Jul 2026 22:07:43 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 27 Jul 2026 22:07:43 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 27 Jul 2026 22:08:30 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 27 Jul 2026 22:08:30 GMT
VOLUME [/var/lib/mysql]
# Mon, 27 Jul 2026 22:08:30 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 27 Jul 2026 22:08:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 27 Jul 2026 22:08:30 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 27 Jul 2026 22:08:30 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c1a8d43326b89b25aff74efe983a017053ef32314f6332ba2cf4e76fcf4f2b09`  
		Last Modified: Thu, 23 Jul 2026 22:55:31 GMT  
		Size: 46.5 MB (46477905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f756888a3dd9ea27296785ead49593ea7b1ea89daa43e4ad6403072b5c9da1c4`  
		Last Modified: Mon, 27 Jul 2026 22:09:06 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21c894eb0c4514b31c71d72c1a80d83fa79b0a861c0c452067cdc9aaabade43a`  
		Last Modified: Mon, 27 Jul 2026 22:09:06 GMT  
		Size: 737.5 KB (737528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af01a0e6f5cc0cc11954fda42fd008a0d39baf4c87ffc92d4f32a525b4ba73aa`  
		Last Modified: Mon, 27 Jul 2026 22:09:06 GMT  
		Size: 5.8 MB (5822624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3288a78e906aff294e438767f2eb299c63944da4af95c65a0e246b1e0db13ac2`  
		Last Modified: Mon, 27 Jul 2026 22:09:06 GMT  
		Size: 2.6 KB (2604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a895d48e9a638d719227ffe8a7843d8a21895dbd64eaec9d480443ecc3ca5263`  
		Last Modified: Mon, 27 Jul 2026 22:09:07 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a77fc7257c96dedc7563927f89494c0c381cf045e1a9cf1caa0b4db1c6b94f5d`  
		Last Modified: Mon, 27 Jul 2026 22:09:10 GMT  
		Size: 57.1 MB (57120770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55ff496c40880c2902b24d02e812d84dc165018d7923192e8fce0d36638dc683`  
		Last Modified: Mon, 27 Jul 2026 22:09:07 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b9e8433b8213a65ea447e429e604823ff0ee7060417dc0ae92817505ff68b96`  
		Last Modified: Mon, 27 Jul 2026 22:09:12 GMT  
		Size: 157.2 MB (157218208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b9a0c325d3288f2698074a155be0b918a1d6b25803832b55ea624297af5f2ea`  
		Last Modified: Mon, 27 Jul 2026 22:09:09 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7.2-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:9c5410e90ca328a4ab8ce6c15f4edc81b363b389271f9c9cbafc8372f09b884b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16832055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:554d2f5a3fc6cedc93285b37642e3b3a31eb869278db27aa913943525815d018`

```dockerfile
```

-	Layers:
	-	`sha256:370f089e3ebec1ba7ed0bc5aa1504bdc86001069b2ab08732c151cb68a44b2b3`  
		Last Modified: Mon, 27 Jul 2026 22:09:07 GMT  
		Size: 16.8 MB (16797542 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f9c3b30dff4a446cf15fed094ee7a4718449fea759dc962ccee7470032ab9196`  
		Last Modified: Mon, 27 Jul 2026 22:09:06 GMT  
		Size: 34.5 KB (34513 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9.7.2-oraclelinux9`

```console
$ docker pull mysql@sha256:257388edf9c84dbc04c763625446d5f3fa6ed60d1b0873bc552c614ba0a7ab4e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9.7.2-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:313c76f59c62376fd26b78fc85169902ef10134996bbfc31200eb9c2ed7e802e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.9 MB (270904261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e28ade5359ee24890f115d202b396388a6b7d2514f1b2fed38d57e84be64aee`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:56:37 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:56:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 22:06:41 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 27 Jul 2026 22:06:43 GMT
ENV GOSU_VERSION=1.19
# Mon, 27 Jul 2026 22:06:43 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 27 Jul 2026 22:07:16 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 27 Jul 2026 22:07:16 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 27 Jul 2026 22:07:16 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 27 Jul 2026 22:07:16 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Mon, 27 Jul 2026 22:07:17 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 27 Jul 2026 22:07:52 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 27 Jul 2026 22:07:52 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 27 Jul 2026 22:07:52 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 27 Jul 2026 22:08:37 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 27 Jul 2026 22:08:37 GMT
VOLUME [/var/lib/mysql]
# Mon, 27 Jul 2026 22:08:37 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 27 Jul 2026 22:08:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 27 Jul 2026 22:08:37 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 27 Jul 2026 22:08:37 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:30627cea5424c411bee6559e1aed4c4b977ceaab0f12695130c3825de516d2cc`  
		Last Modified: Thu, 23 Jul 2026 22:56:48 GMT  
		Size: 47.9 MB (47927752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc9bff174e15c65eaff616885e231b88852df66693b17d67f375e2290bd35d30`  
		Last Modified: Mon, 27 Jul 2026 22:09:13 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6923c6c729f28c71e469acd16979f547b65606e4da0d208e4788ea638eed409`  
		Last Modified: Mon, 27 Jul 2026 22:09:13 GMT  
		Size: 783.6 KB (783559 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48af77f83ce2f6f159fa3a08aa627ba32d9ce492ec0fd5be576758c6018b8c59`  
		Last Modified: Mon, 27 Jul 2026 22:09:14 GMT  
		Size: 6.2 MB (6193145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95d83715477f6f9891094f288b888dee68081fff6ad96afe2fc9ed2d119ce103`  
		Last Modified: Mon, 27 Jul 2026 22:09:13 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fefbd8135359cebdc500d5149dc53406230ab12ff92a680aab1ecd4af454ff3c`  
		Last Modified: Mon, 27 Jul 2026 22:09:14 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9a1438654dd08d1e71135ed06a3c9a993376d18f0a7a4d34076f67d0f8d4bef`  
		Last Modified: Mon, 27 Jul 2026 22:09:17 GMT  
		Size: 57.1 MB (57050624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39577f2d64ca8e08e0305f1d6cced18006bd9ea435a0ec0c20e8c67bb6f87a64`  
		Last Modified: Mon, 27 Jul 2026 22:09:15 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47fffd23e43dc892762225feb9ceaaac8bc8aa3e5856a04f54851b9f83b10ef8`  
		Last Modified: Mon, 27 Jul 2026 22:09:20 GMT  
		Size: 158.9 MB (158939808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e62c147ead06ae33a9afa61873c66eaa986313a17e4864dea07f2a14f9f92610`  
		Last Modified: Mon, 27 Jul 2026 22:09:16 GMT  
		Size: 5.2 KB (5231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7.2-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:536cb11469eb3996f816f2a69949dfa9de611a86053895474e8528db7a614739
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecd7ce6403a61b9ecec1a866a17af781f316726d60e7eebe2072569c961748d9`

```dockerfile
```

-	Layers:
	-	`sha256:0cad622e80b590ea769ac006ae4d905f4a9b9444c1854952037562a29aebc7b1`  
		Last Modified: Mon, 27 Jul 2026 22:09:14 GMT  
		Size: 16.8 MB (16799106 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a83239592ab9f2e7899a9494f5ffb869e3beb8093d62c39e23356f2d0a79fe04`  
		Last Modified: Mon, 27 Jul 2026 22:09:13 GMT  
		Size: 34.2 KB (34208 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9.7.2-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:0c9a7b65cb630121c2bb5384d7446e0fe35d0b90a21516cb466427ced19a65be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.4 MB (267386404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:418e56472effc6bae31691dbd4a6d3eea9515e4a84ad82f690f880b6a25401de`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:55:20 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:55:20 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 22:06:30 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 27 Jul 2026 22:06:32 GMT
ENV GOSU_VERSION=1.19
# Mon, 27 Jul 2026 22:06:32 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 27 Jul 2026 22:07:06 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 27 Jul 2026 22:07:06 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 27 Jul 2026 22:07:06 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 27 Jul 2026 22:07:06 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Mon, 27 Jul 2026 22:07:06 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 27 Jul 2026 22:07:43 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 27 Jul 2026 22:07:43 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 27 Jul 2026 22:07:43 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 27 Jul 2026 22:08:30 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 27 Jul 2026 22:08:30 GMT
VOLUME [/var/lib/mysql]
# Mon, 27 Jul 2026 22:08:30 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 27 Jul 2026 22:08:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 27 Jul 2026 22:08:30 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 27 Jul 2026 22:08:30 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c1a8d43326b89b25aff74efe983a017053ef32314f6332ba2cf4e76fcf4f2b09`  
		Last Modified: Thu, 23 Jul 2026 22:55:31 GMT  
		Size: 46.5 MB (46477905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f756888a3dd9ea27296785ead49593ea7b1ea89daa43e4ad6403072b5c9da1c4`  
		Last Modified: Mon, 27 Jul 2026 22:09:06 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21c894eb0c4514b31c71d72c1a80d83fa79b0a861c0c452067cdc9aaabade43a`  
		Last Modified: Mon, 27 Jul 2026 22:09:06 GMT  
		Size: 737.5 KB (737528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af01a0e6f5cc0cc11954fda42fd008a0d39baf4c87ffc92d4f32a525b4ba73aa`  
		Last Modified: Mon, 27 Jul 2026 22:09:06 GMT  
		Size: 5.8 MB (5822624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3288a78e906aff294e438767f2eb299c63944da4af95c65a0e246b1e0db13ac2`  
		Last Modified: Mon, 27 Jul 2026 22:09:06 GMT  
		Size: 2.6 KB (2604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a895d48e9a638d719227ffe8a7843d8a21895dbd64eaec9d480443ecc3ca5263`  
		Last Modified: Mon, 27 Jul 2026 22:09:07 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a77fc7257c96dedc7563927f89494c0c381cf045e1a9cf1caa0b4db1c6b94f5d`  
		Last Modified: Mon, 27 Jul 2026 22:09:10 GMT  
		Size: 57.1 MB (57120770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55ff496c40880c2902b24d02e812d84dc165018d7923192e8fce0d36638dc683`  
		Last Modified: Mon, 27 Jul 2026 22:09:07 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b9e8433b8213a65ea447e429e604823ff0ee7060417dc0ae92817505ff68b96`  
		Last Modified: Mon, 27 Jul 2026 22:09:12 GMT  
		Size: 157.2 MB (157218208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b9a0c325d3288f2698074a155be0b918a1d6b25803832b55ea624297af5f2ea`  
		Last Modified: Mon, 27 Jul 2026 22:09:09 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7.2-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:9c5410e90ca328a4ab8ce6c15f4edc81b363b389271f9c9cbafc8372f09b884b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16832055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:554d2f5a3fc6cedc93285b37642e3b3a31eb869278db27aa913943525815d018`

```dockerfile
```

-	Layers:
	-	`sha256:370f089e3ebec1ba7ed0bc5aa1504bdc86001069b2ab08732c151cb68a44b2b3`  
		Last Modified: Mon, 27 Jul 2026 22:09:07 GMT  
		Size: 16.8 MB (16797542 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f9c3b30dff4a446cf15fed094ee7a4718449fea759dc962ccee7470032ab9196`  
		Last Modified: Mon, 27 Jul 2026 22:09:06 GMT  
		Size: 34.5 KB (34513 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:innovation`

```console
$ docker pull mysql@sha256:66aec17cd21a956029b83f083b813073859e8355dc1a00e55df6ba02f0e32345
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:innovation` - linux; amd64

```console
$ docker pull mysql@sha256:973c5e8e4d2f12ecc3da9ca9d8d4189b6a7e3d17584c66fca6dae6993c0417ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.3 MB (272333489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d236310860c6d039bb44b1e0569de1e6b6806ec5c40aa7c63560590fbde6b649`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:56:37 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:56:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 22:06:40 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 27 Jul 2026 22:06:42 GMT
ENV GOSU_VERSION=1.19
# Mon, 27 Jul 2026 22:06:42 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 27 Jul 2026 22:07:09 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 27 Jul 2026 22:07:10 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 27 Jul 2026 22:07:10 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 27 Jul 2026 22:07:10 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Mon, 27 Jul 2026 22:07:10 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 27 Jul 2026 22:07:41 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 27 Jul 2026 22:07:42 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 27 Jul 2026 22:07:42 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Mon, 27 Jul 2026 22:08:23 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 27 Jul 2026 22:08:23 GMT
VOLUME [/var/lib/mysql]
# Mon, 27 Jul 2026 22:08:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 27 Jul 2026 22:08:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 27 Jul 2026 22:08:24 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 27 Jul 2026 22:08:24 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:30627cea5424c411bee6559e1aed4c4b977ceaab0f12695130c3825de516d2cc`  
		Last Modified: Thu, 23 Jul 2026 22:56:48 GMT  
		Size: 47.9 MB (47927752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e887550bdc468b2dd72d7967d59dc44a552d8785b9e253359e6f061120ce3ba`  
		Last Modified: Mon, 27 Jul 2026 22:08:56 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35475b275575bdbb3f219284a8dcda29bb3cf9bdad6c24921b1a62cbac1db7b7`  
		Last Modified: Mon, 27 Jul 2026 22:08:56 GMT  
		Size: 783.6 KB (783559 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27683f99b921c9cb7a589ec0fe071d5555800dfe0f5499ee035d1ef7e71e9774`  
		Last Modified: Mon, 27 Jul 2026 22:08:56 GMT  
		Size: 6.2 MB (6193229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bb65eb170f99612f059043a0ef560d32bd46493f464c75ac3b0a2c12aa31101`  
		Last Modified: Mon, 27 Jul 2026 22:08:56 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e480dcc782ea688f26f79154dc11e0fbbcc7b370d9724b1990cedeff94f4d934`  
		Last Modified: Mon, 27 Jul 2026 22:08:57 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1791a4d7fecfe7b185ffad81c57cd591720399c816dcf6d8d3268454c03e8a0b`  
		Last Modified: Mon, 27 Jul 2026 22:08:59 GMT  
		Size: 57.5 MB (57452984 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71fa527c6c686e011bb6d2f54bc628e289e10cd437b61310f11206888989a74b`  
		Last Modified: Mon, 27 Jul 2026 22:08:57 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4e766e27938130bdc1f262546153c62d4473aeedf74d658434f10505c7e1bca`  
		Last Modified: Mon, 27 Jul 2026 22:09:02 GMT  
		Size: 160.0 MB (159966583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:feffc3e2a7dd54c89a91313183a3fe385a3dde046a414f60cd8e3f6c5682b7b7`  
		Last Modified: Mon, 27 Jul 2026 22:08:58 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:innovation` - unknown; unknown

```console
$ docker pull mysql@sha256:97918f41ab26e7590202676650657d764b67dd7a761e6c0d1d75e35d3f8f6227
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17452628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:316ace686f30f4788bc8f4252c034e137c12b6cb57037efdaa5dedf4bd73a12e`

```dockerfile
```

-	Layers:
	-	`sha256:808810e42158451cf4e1cb1fee8898f75ddeddb1f6d3b6070985926d548a6220`  
		Last Modified: Mon, 27 Jul 2026 22:08:57 GMT  
		Size: 17.4 MB (17417330 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:81ee3e1129f4c4a932904e5f0c2d96a170a98e10db51e378c4e45a05008fc3d6`  
		Last Modified: Mon, 27 Jul 2026 22:08:56 GMT  
		Size: 35.3 KB (35298 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:innovation` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:4ed9768780c0b47c7d72c66132423993be22aa4504c3af5b3ab8bc9a0c76c36b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.7 MB (268717252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96aaced979c95f9a9da0df59a1c1ed8089b0210a266570ca2db10928f2c6be1a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:55:20 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:55:20 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 22:06:25 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 27 Jul 2026 22:06:26 GMT
ENV GOSU_VERSION=1.19
# Mon, 27 Jul 2026 22:06:26 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 27 Jul 2026 22:06:59 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 27 Jul 2026 22:06:59 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 27 Jul 2026 22:06:59 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 27 Jul 2026 22:06:59 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Mon, 27 Jul 2026 22:07:00 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 27 Jul 2026 22:07:35 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 27 Jul 2026 22:07:35 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 27 Jul 2026 22:07:35 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Mon, 27 Jul 2026 22:08:24 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 27 Jul 2026 22:08:24 GMT
VOLUME [/var/lib/mysql]
# Mon, 27 Jul 2026 22:08:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 27 Jul 2026 22:08:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 27 Jul 2026 22:08:24 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 27 Jul 2026 22:08:24 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c1a8d43326b89b25aff74efe983a017053ef32314f6332ba2cf4e76fcf4f2b09`  
		Last Modified: Thu, 23 Jul 2026 22:55:31 GMT  
		Size: 46.5 MB (46477905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:944f69e1b2b338d7907324cd317843ce912345bae54432038614b707ab9170b6`  
		Last Modified: Mon, 27 Jul 2026 22:09:00 GMT  
		Size: 887.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c8bc0fe906fd46b9f3693ae7e6214a6df6f673b23291d60391132a0a9d7ecf0`  
		Last Modified: Mon, 27 Jul 2026 22:09:00 GMT  
		Size: 737.5 KB (737527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c33b18df1d3b00d740232ae2a5000bba34018e3b3acf8e01286e0ce25e5f50e6`  
		Last Modified: Mon, 27 Jul 2026 22:09:00 GMT  
		Size: 5.8 MB (5822621 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ec807440a038e2a2ec2096aee8ab45dc65fe0f5dc23af3b0b7ef40e523aa659`  
		Last Modified: Mon, 27 Jul 2026 22:09:00 GMT  
		Size: 2.6 KB (2604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b658fa1eb0d7e2fb74c6d0af75594894a117669435e9c07c6d092957795f2b8c`  
		Last Modified: Mon, 27 Jul 2026 22:09:01 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4348b7d2c8f51c37a9f39227e7b6366e6111685e1ce744b967ffff44d89674f3`  
		Last Modified: Mon, 27 Jul 2026 22:09:04 GMT  
		Size: 57.4 MB (57435893 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:279157f1041e8af4baede2019ffc23e4cac9fa07780e9f7383ed5f8cd863fdac`  
		Last Modified: Mon, 27 Jul 2026 22:09:01 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec569be443bb71898d28b6c47ad87083eaccefd9aa57442b0e495e4878171a11`  
		Last Modified: Mon, 27 Jul 2026 22:09:06 GMT  
		Size: 158.2 MB (158233926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74431a8f5848bfc3163e256709dbb18f349998d6d477e6bb2ac40eac7e973870`  
		Last Modified: Mon, 27 Jul 2026 22:09:03 GMT  
		Size: 5.2 KB (5224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:innovation` - unknown; unknown

```console
$ docker pull mysql@sha256:7c412412603df835acc61ca1f81700c074fb99fefc82d048646e55c5e2d5fb37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17451442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3089ffa526bae4ab3532e7bcb7915b1988c9cd36e4f2776b6c0bb0e32e36a82f`

```dockerfile
```

-	Layers:
	-	`sha256:76ec0a7f5412cadf6ae062a6d9d9e6d8a0327c41b207ec8d2f61c313027f50e0`  
		Last Modified: Mon, 27 Jul 2026 22:09:01 GMT  
		Size: 17.4 MB (17415803 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:053b4a51a7b42b7b26ae70990111f710781914e1d5bd8844a720039ebaf3073d`  
		Last Modified: Mon, 27 Jul 2026 22:09:00 GMT  
		Size: 35.6 KB (35639 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:innovation-oracle`

```console
$ docker pull mysql@sha256:66aec17cd21a956029b83f083b813073859e8355dc1a00e55df6ba02f0e32345
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:innovation-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:973c5e8e4d2f12ecc3da9ca9d8d4189b6a7e3d17584c66fca6dae6993c0417ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.3 MB (272333489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d236310860c6d039bb44b1e0569de1e6b6806ec5c40aa7c63560590fbde6b649`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:56:37 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:56:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 22:06:40 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 27 Jul 2026 22:06:42 GMT
ENV GOSU_VERSION=1.19
# Mon, 27 Jul 2026 22:06:42 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 27 Jul 2026 22:07:09 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 27 Jul 2026 22:07:10 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 27 Jul 2026 22:07:10 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 27 Jul 2026 22:07:10 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Mon, 27 Jul 2026 22:07:10 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 27 Jul 2026 22:07:41 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 27 Jul 2026 22:07:42 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 27 Jul 2026 22:07:42 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Mon, 27 Jul 2026 22:08:23 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 27 Jul 2026 22:08:23 GMT
VOLUME [/var/lib/mysql]
# Mon, 27 Jul 2026 22:08:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 27 Jul 2026 22:08:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 27 Jul 2026 22:08:24 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 27 Jul 2026 22:08:24 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:30627cea5424c411bee6559e1aed4c4b977ceaab0f12695130c3825de516d2cc`  
		Last Modified: Thu, 23 Jul 2026 22:56:48 GMT  
		Size: 47.9 MB (47927752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e887550bdc468b2dd72d7967d59dc44a552d8785b9e253359e6f061120ce3ba`  
		Last Modified: Mon, 27 Jul 2026 22:08:56 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35475b275575bdbb3f219284a8dcda29bb3cf9bdad6c24921b1a62cbac1db7b7`  
		Last Modified: Mon, 27 Jul 2026 22:08:56 GMT  
		Size: 783.6 KB (783559 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27683f99b921c9cb7a589ec0fe071d5555800dfe0f5499ee035d1ef7e71e9774`  
		Last Modified: Mon, 27 Jul 2026 22:08:56 GMT  
		Size: 6.2 MB (6193229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bb65eb170f99612f059043a0ef560d32bd46493f464c75ac3b0a2c12aa31101`  
		Last Modified: Mon, 27 Jul 2026 22:08:56 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e480dcc782ea688f26f79154dc11e0fbbcc7b370d9724b1990cedeff94f4d934`  
		Last Modified: Mon, 27 Jul 2026 22:08:57 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1791a4d7fecfe7b185ffad81c57cd591720399c816dcf6d8d3268454c03e8a0b`  
		Last Modified: Mon, 27 Jul 2026 22:08:59 GMT  
		Size: 57.5 MB (57452984 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71fa527c6c686e011bb6d2f54bc628e289e10cd437b61310f11206888989a74b`  
		Last Modified: Mon, 27 Jul 2026 22:08:57 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4e766e27938130bdc1f262546153c62d4473aeedf74d658434f10505c7e1bca`  
		Last Modified: Mon, 27 Jul 2026 22:09:02 GMT  
		Size: 160.0 MB (159966583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:feffc3e2a7dd54c89a91313183a3fe385a3dde046a414f60cd8e3f6c5682b7b7`  
		Last Modified: Mon, 27 Jul 2026 22:08:58 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:innovation-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:97918f41ab26e7590202676650657d764b67dd7a761e6c0d1d75e35d3f8f6227
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17452628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:316ace686f30f4788bc8f4252c034e137c12b6cb57037efdaa5dedf4bd73a12e`

```dockerfile
```

-	Layers:
	-	`sha256:808810e42158451cf4e1cb1fee8898f75ddeddb1f6d3b6070985926d548a6220`  
		Last Modified: Mon, 27 Jul 2026 22:08:57 GMT  
		Size: 17.4 MB (17417330 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:81ee3e1129f4c4a932904e5f0c2d96a170a98e10db51e378c4e45a05008fc3d6`  
		Last Modified: Mon, 27 Jul 2026 22:08:56 GMT  
		Size: 35.3 KB (35298 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:innovation-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:4ed9768780c0b47c7d72c66132423993be22aa4504c3af5b3ab8bc9a0c76c36b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.7 MB (268717252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96aaced979c95f9a9da0df59a1c1ed8089b0210a266570ca2db10928f2c6be1a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:55:20 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:55:20 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 22:06:25 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 27 Jul 2026 22:06:26 GMT
ENV GOSU_VERSION=1.19
# Mon, 27 Jul 2026 22:06:26 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 27 Jul 2026 22:06:59 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 27 Jul 2026 22:06:59 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 27 Jul 2026 22:06:59 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 27 Jul 2026 22:06:59 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Mon, 27 Jul 2026 22:07:00 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 27 Jul 2026 22:07:35 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 27 Jul 2026 22:07:35 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 27 Jul 2026 22:07:35 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Mon, 27 Jul 2026 22:08:24 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 27 Jul 2026 22:08:24 GMT
VOLUME [/var/lib/mysql]
# Mon, 27 Jul 2026 22:08:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 27 Jul 2026 22:08:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 27 Jul 2026 22:08:24 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 27 Jul 2026 22:08:24 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c1a8d43326b89b25aff74efe983a017053ef32314f6332ba2cf4e76fcf4f2b09`  
		Last Modified: Thu, 23 Jul 2026 22:55:31 GMT  
		Size: 46.5 MB (46477905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:944f69e1b2b338d7907324cd317843ce912345bae54432038614b707ab9170b6`  
		Last Modified: Mon, 27 Jul 2026 22:09:00 GMT  
		Size: 887.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c8bc0fe906fd46b9f3693ae7e6214a6df6f673b23291d60391132a0a9d7ecf0`  
		Last Modified: Mon, 27 Jul 2026 22:09:00 GMT  
		Size: 737.5 KB (737527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c33b18df1d3b00d740232ae2a5000bba34018e3b3acf8e01286e0ce25e5f50e6`  
		Last Modified: Mon, 27 Jul 2026 22:09:00 GMT  
		Size: 5.8 MB (5822621 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ec807440a038e2a2ec2096aee8ab45dc65fe0f5dc23af3b0b7ef40e523aa659`  
		Last Modified: Mon, 27 Jul 2026 22:09:00 GMT  
		Size: 2.6 KB (2604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b658fa1eb0d7e2fb74c6d0af75594894a117669435e9c07c6d092957795f2b8c`  
		Last Modified: Mon, 27 Jul 2026 22:09:01 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4348b7d2c8f51c37a9f39227e7b6366e6111685e1ce744b967ffff44d89674f3`  
		Last Modified: Mon, 27 Jul 2026 22:09:04 GMT  
		Size: 57.4 MB (57435893 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:279157f1041e8af4baede2019ffc23e4cac9fa07780e9f7383ed5f8cd863fdac`  
		Last Modified: Mon, 27 Jul 2026 22:09:01 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec569be443bb71898d28b6c47ad87083eaccefd9aa57442b0e495e4878171a11`  
		Last Modified: Mon, 27 Jul 2026 22:09:06 GMT  
		Size: 158.2 MB (158233926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74431a8f5848bfc3163e256709dbb18f349998d6d477e6bb2ac40eac7e973870`  
		Last Modified: Mon, 27 Jul 2026 22:09:03 GMT  
		Size: 5.2 KB (5224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:innovation-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:7c412412603df835acc61ca1f81700c074fb99fefc82d048646e55c5e2d5fb37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17451442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3089ffa526bae4ab3532e7bcb7915b1988c9cd36e4f2776b6c0bb0e32e36a82f`

```dockerfile
```

-	Layers:
	-	`sha256:76ec0a7f5412cadf6ae062a6d9d9e6d8a0327c41b207ec8d2f61c313027f50e0`  
		Last Modified: Mon, 27 Jul 2026 22:09:01 GMT  
		Size: 17.4 MB (17415803 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:053b4a51a7b42b7b26ae70990111f710781914e1d5bd8844a720039ebaf3073d`  
		Last Modified: Mon, 27 Jul 2026 22:09:00 GMT  
		Size: 35.6 KB (35639 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:innovation-oraclelinux9`

```console
$ docker pull mysql@sha256:66aec17cd21a956029b83f083b813073859e8355dc1a00e55df6ba02f0e32345
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:innovation-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:973c5e8e4d2f12ecc3da9ca9d8d4189b6a7e3d17584c66fca6dae6993c0417ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.3 MB (272333489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d236310860c6d039bb44b1e0569de1e6b6806ec5c40aa7c63560590fbde6b649`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:56:37 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:56:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 22:06:40 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 27 Jul 2026 22:06:42 GMT
ENV GOSU_VERSION=1.19
# Mon, 27 Jul 2026 22:06:42 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 27 Jul 2026 22:07:09 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 27 Jul 2026 22:07:10 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 27 Jul 2026 22:07:10 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 27 Jul 2026 22:07:10 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Mon, 27 Jul 2026 22:07:10 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 27 Jul 2026 22:07:41 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 27 Jul 2026 22:07:42 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 27 Jul 2026 22:07:42 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Mon, 27 Jul 2026 22:08:23 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 27 Jul 2026 22:08:23 GMT
VOLUME [/var/lib/mysql]
# Mon, 27 Jul 2026 22:08:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 27 Jul 2026 22:08:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 27 Jul 2026 22:08:24 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 27 Jul 2026 22:08:24 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:30627cea5424c411bee6559e1aed4c4b977ceaab0f12695130c3825de516d2cc`  
		Last Modified: Thu, 23 Jul 2026 22:56:48 GMT  
		Size: 47.9 MB (47927752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e887550bdc468b2dd72d7967d59dc44a552d8785b9e253359e6f061120ce3ba`  
		Last Modified: Mon, 27 Jul 2026 22:08:56 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35475b275575bdbb3f219284a8dcda29bb3cf9bdad6c24921b1a62cbac1db7b7`  
		Last Modified: Mon, 27 Jul 2026 22:08:56 GMT  
		Size: 783.6 KB (783559 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27683f99b921c9cb7a589ec0fe071d5555800dfe0f5499ee035d1ef7e71e9774`  
		Last Modified: Mon, 27 Jul 2026 22:08:56 GMT  
		Size: 6.2 MB (6193229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bb65eb170f99612f059043a0ef560d32bd46493f464c75ac3b0a2c12aa31101`  
		Last Modified: Mon, 27 Jul 2026 22:08:56 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e480dcc782ea688f26f79154dc11e0fbbcc7b370d9724b1990cedeff94f4d934`  
		Last Modified: Mon, 27 Jul 2026 22:08:57 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1791a4d7fecfe7b185ffad81c57cd591720399c816dcf6d8d3268454c03e8a0b`  
		Last Modified: Mon, 27 Jul 2026 22:08:59 GMT  
		Size: 57.5 MB (57452984 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71fa527c6c686e011bb6d2f54bc628e289e10cd437b61310f11206888989a74b`  
		Last Modified: Mon, 27 Jul 2026 22:08:57 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4e766e27938130bdc1f262546153c62d4473aeedf74d658434f10505c7e1bca`  
		Last Modified: Mon, 27 Jul 2026 22:09:02 GMT  
		Size: 160.0 MB (159966583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:feffc3e2a7dd54c89a91313183a3fe385a3dde046a414f60cd8e3f6c5682b7b7`  
		Last Modified: Mon, 27 Jul 2026 22:08:58 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:innovation-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:97918f41ab26e7590202676650657d764b67dd7a761e6c0d1d75e35d3f8f6227
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17452628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:316ace686f30f4788bc8f4252c034e137c12b6cb57037efdaa5dedf4bd73a12e`

```dockerfile
```

-	Layers:
	-	`sha256:808810e42158451cf4e1cb1fee8898f75ddeddb1f6d3b6070985926d548a6220`  
		Last Modified: Mon, 27 Jul 2026 22:08:57 GMT  
		Size: 17.4 MB (17417330 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:81ee3e1129f4c4a932904e5f0c2d96a170a98e10db51e378c4e45a05008fc3d6`  
		Last Modified: Mon, 27 Jul 2026 22:08:56 GMT  
		Size: 35.3 KB (35298 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:innovation-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:4ed9768780c0b47c7d72c66132423993be22aa4504c3af5b3ab8bc9a0c76c36b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.7 MB (268717252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96aaced979c95f9a9da0df59a1c1ed8089b0210a266570ca2db10928f2c6be1a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:55:20 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:55:20 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 22:06:25 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 27 Jul 2026 22:06:26 GMT
ENV GOSU_VERSION=1.19
# Mon, 27 Jul 2026 22:06:26 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 27 Jul 2026 22:06:59 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 27 Jul 2026 22:06:59 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 27 Jul 2026 22:06:59 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 27 Jul 2026 22:06:59 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Mon, 27 Jul 2026 22:07:00 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 27 Jul 2026 22:07:35 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 27 Jul 2026 22:07:35 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 27 Jul 2026 22:07:35 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Mon, 27 Jul 2026 22:08:24 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 27 Jul 2026 22:08:24 GMT
VOLUME [/var/lib/mysql]
# Mon, 27 Jul 2026 22:08:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 27 Jul 2026 22:08:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 27 Jul 2026 22:08:24 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 27 Jul 2026 22:08:24 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c1a8d43326b89b25aff74efe983a017053ef32314f6332ba2cf4e76fcf4f2b09`  
		Last Modified: Thu, 23 Jul 2026 22:55:31 GMT  
		Size: 46.5 MB (46477905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:944f69e1b2b338d7907324cd317843ce912345bae54432038614b707ab9170b6`  
		Last Modified: Mon, 27 Jul 2026 22:09:00 GMT  
		Size: 887.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c8bc0fe906fd46b9f3693ae7e6214a6df6f673b23291d60391132a0a9d7ecf0`  
		Last Modified: Mon, 27 Jul 2026 22:09:00 GMT  
		Size: 737.5 KB (737527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c33b18df1d3b00d740232ae2a5000bba34018e3b3acf8e01286e0ce25e5f50e6`  
		Last Modified: Mon, 27 Jul 2026 22:09:00 GMT  
		Size: 5.8 MB (5822621 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ec807440a038e2a2ec2096aee8ab45dc65fe0f5dc23af3b0b7ef40e523aa659`  
		Last Modified: Mon, 27 Jul 2026 22:09:00 GMT  
		Size: 2.6 KB (2604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b658fa1eb0d7e2fb74c6d0af75594894a117669435e9c07c6d092957795f2b8c`  
		Last Modified: Mon, 27 Jul 2026 22:09:01 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4348b7d2c8f51c37a9f39227e7b6366e6111685e1ce744b967ffff44d89674f3`  
		Last Modified: Mon, 27 Jul 2026 22:09:04 GMT  
		Size: 57.4 MB (57435893 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:279157f1041e8af4baede2019ffc23e4cac9fa07780e9f7383ed5f8cd863fdac`  
		Last Modified: Mon, 27 Jul 2026 22:09:01 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec569be443bb71898d28b6c47ad87083eaccefd9aa57442b0e495e4878171a11`  
		Last Modified: Mon, 27 Jul 2026 22:09:06 GMT  
		Size: 158.2 MB (158233926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74431a8f5848bfc3163e256709dbb18f349998d6d477e6bb2ac40eac7e973870`  
		Last Modified: Mon, 27 Jul 2026 22:09:03 GMT  
		Size: 5.2 KB (5224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:innovation-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:7c412412603df835acc61ca1f81700c074fb99fefc82d048646e55c5e2d5fb37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17451442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3089ffa526bae4ab3532e7bcb7915b1988c9cd36e4f2776b6c0bb0e32e36a82f`

```dockerfile
```

-	Layers:
	-	`sha256:76ec0a7f5412cadf6ae062a6d9d9e6d8a0327c41b207ec8d2f61c313027f50e0`  
		Last Modified: Mon, 27 Jul 2026 22:09:01 GMT  
		Size: 17.4 MB (17415803 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:053b4a51a7b42b7b26ae70990111f710781914e1d5bd8844a720039ebaf3073d`  
		Last Modified: Mon, 27 Jul 2026 22:09:00 GMT  
		Size: 35.6 KB (35639 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:latest`

```console
$ docker pull mysql@sha256:66aec17cd21a956029b83f083b813073859e8355dc1a00e55df6ba02f0e32345
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:latest` - linux; amd64

```console
$ docker pull mysql@sha256:973c5e8e4d2f12ecc3da9ca9d8d4189b6a7e3d17584c66fca6dae6993c0417ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.3 MB (272333489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d236310860c6d039bb44b1e0569de1e6b6806ec5c40aa7c63560590fbde6b649`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:56:37 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:56:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 22:06:40 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 27 Jul 2026 22:06:42 GMT
ENV GOSU_VERSION=1.19
# Mon, 27 Jul 2026 22:06:42 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 27 Jul 2026 22:07:09 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 27 Jul 2026 22:07:10 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 27 Jul 2026 22:07:10 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 27 Jul 2026 22:07:10 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Mon, 27 Jul 2026 22:07:10 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 27 Jul 2026 22:07:41 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 27 Jul 2026 22:07:42 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 27 Jul 2026 22:07:42 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Mon, 27 Jul 2026 22:08:23 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 27 Jul 2026 22:08:23 GMT
VOLUME [/var/lib/mysql]
# Mon, 27 Jul 2026 22:08:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 27 Jul 2026 22:08:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 27 Jul 2026 22:08:24 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 27 Jul 2026 22:08:24 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:30627cea5424c411bee6559e1aed4c4b977ceaab0f12695130c3825de516d2cc`  
		Last Modified: Thu, 23 Jul 2026 22:56:48 GMT  
		Size: 47.9 MB (47927752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e887550bdc468b2dd72d7967d59dc44a552d8785b9e253359e6f061120ce3ba`  
		Last Modified: Mon, 27 Jul 2026 22:08:56 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35475b275575bdbb3f219284a8dcda29bb3cf9bdad6c24921b1a62cbac1db7b7`  
		Last Modified: Mon, 27 Jul 2026 22:08:56 GMT  
		Size: 783.6 KB (783559 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27683f99b921c9cb7a589ec0fe071d5555800dfe0f5499ee035d1ef7e71e9774`  
		Last Modified: Mon, 27 Jul 2026 22:08:56 GMT  
		Size: 6.2 MB (6193229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bb65eb170f99612f059043a0ef560d32bd46493f464c75ac3b0a2c12aa31101`  
		Last Modified: Mon, 27 Jul 2026 22:08:56 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e480dcc782ea688f26f79154dc11e0fbbcc7b370d9724b1990cedeff94f4d934`  
		Last Modified: Mon, 27 Jul 2026 22:08:57 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1791a4d7fecfe7b185ffad81c57cd591720399c816dcf6d8d3268454c03e8a0b`  
		Last Modified: Mon, 27 Jul 2026 22:08:59 GMT  
		Size: 57.5 MB (57452984 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71fa527c6c686e011bb6d2f54bc628e289e10cd437b61310f11206888989a74b`  
		Last Modified: Mon, 27 Jul 2026 22:08:57 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4e766e27938130bdc1f262546153c62d4473aeedf74d658434f10505c7e1bca`  
		Last Modified: Mon, 27 Jul 2026 22:09:02 GMT  
		Size: 160.0 MB (159966583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:feffc3e2a7dd54c89a91313183a3fe385a3dde046a414f60cd8e3f6c5682b7b7`  
		Last Modified: Mon, 27 Jul 2026 22:08:58 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:latest` - unknown; unknown

```console
$ docker pull mysql@sha256:97918f41ab26e7590202676650657d764b67dd7a761e6c0d1d75e35d3f8f6227
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17452628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:316ace686f30f4788bc8f4252c034e137c12b6cb57037efdaa5dedf4bd73a12e`

```dockerfile
```

-	Layers:
	-	`sha256:808810e42158451cf4e1cb1fee8898f75ddeddb1f6d3b6070985926d548a6220`  
		Last Modified: Mon, 27 Jul 2026 22:08:57 GMT  
		Size: 17.4 MB (17417330 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:81ee3e1129f4c4a932904e5f0c2d96a170a98e10db51e378c4e45a05008fc3d6`  
		Last Modified: Mon, 27 Jul 2026 22:08:56 GMT  
		Size: 35.3 KB (35298 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:latest` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:4ed9768780c0b47c7d72c66132423993be22aa4504c3af5b3ab8bc9a0c76c36b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.7 MB (268717252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96aaced979c95f9a9da0df59a1c1ed8089b0210a266570ca2db10928f2c6be1a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:55:20 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:55:20 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 22:06:25 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 27 Jul 2026 22:06:26 GMT
ENV GOSU_VERSION=1.19
# Mon, 27 Jul 2026 22:06:26 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 27 Jul 2026 22:06:59 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 27 Jul 2026 22:06:59 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 27 Jul 2026 22:06:59 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 27 Jul 2026 22:06:59 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Mon, 27 Jul 2026 22:07:00 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 27 Jul 2026 22:07:35 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 27 Jul 2026 22:07:35 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 27 Jul 2026 22:07:35 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Mon, 27 Jul 2026 22:08:24 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 27 Jul 2026 22:08:24 GMT
VOLUME [/var/lib/mysql]
# Mon, 27 Jul 2026 22:08:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 27 Jul 2026 22:08:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 27 Jul 2026 22:08:24 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 27 Jul 2026 22:08:24 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c1a8d43326b89b25aff74efe983a017053ef32314f6332ba2cf4e76fcf4f2b09`  
		Last Modified: Thu, 23 Jul 2026 22:55:31 GMT  
		Size: 46.5 MB (46477905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:944f69e1b2b338d7907324cd317843ce912345bae54432038614b707ab9170b6`  
		Last Modified: Mon, 27 Jul 2026 22:09:00 GMT  
		Size: 887.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c8bc0fe906fd46b9f3693ae7e6214a6df6f673b23291d60391132a0a9d7ecf0`  
		Last Modified: Mon, 27 Jul 2026 22:09:00 GMT  
		Size: 737.5 KB (737527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c33b18df1d3b00d740232ae2a5000bba34018e3b3acf8e01286e0ce25e5f50e6`  
		Last Modified: Mon, 27 Jul 2026 22:09:00 GMT  
		Size: 5.8 MB (5822621 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ec807440a038e2a2ec2096aee8ab45dc65fe0f5dc23af3b0b7ef40e523aa659`  
		Last Modified: Mon, 27 Jul 2026 22:09:00 GMT  
		Size: 2.6 KB (2604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b658fa1eb0d7e2fb74c6d0af75594894a117669435e9c07c6d092957795f2b8c`  
		Last Modified: Mon, 27 Jul 2026 22:09:01 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4348b7d2c8f51c37a9f39227e7b6366e6111685e1ce744b967ffff44d89674f3`  
		Last Modified: Mon, 27 Jul 2026 22:09:04 GMT  
		Size: 57.4 MB (57435893 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:279157f1041e8af4baede2019ffc23e4cac9fa07780e9f7383ed5f8cd863fdac`  
		Last Modified: Mon, 27 Jul 2026 22:09:01 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec569be443bb71898d28b6c47ad87083eaccefd9aa57442b0e495e4878171a11`  
		Last Modified: Mon, 27 Jul 2026 22:09:06 GMT  
		Size: 158.2 MB (158233926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74431a8f5848bfc3163e256709dbb18f349998d6d477e6bb2ac40eac7e973870`  
		Last Modified: Mon, 27 Jul 2026 22:09:03 GMT  
		Size: 5.2 KB (5224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:latest` - unknown; unknown

```console
$ docker pull mysql@sha256:7c412412603df835acc61ca1f81700c074fb99fefc82d048646e55c5e2d5fb37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17451442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3089ffa526bae4ab3532e7bcb7915b1988c9cd36e4f2776b6c0bb0e32e36a82f`

```dockerfile
```

-	Layers:
	-	`sha256:76ec0a7f5412cadf6ae062a6d9d9e6d8a0327c41b207ec8d2f61c313027f50e0`  
		Last Modified: Mon, 27 Jul 2026 22:09:01 GMT  
		Size: 17.4 MB (17415803 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:053b4a51a7b42b7b26ae70990111f710781914e1d5bd8844a720039ebaf3073d`  
		Last Modified: Mon, 27 Jul 2026 22:09:00 GMT  
		Size: 35.6 KB (35639 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:lts`

```console
$ docker pull mysql@sha256:257388edf9c84dbc04c763625446d5f3fa6ed60d1b0873bc552c614ba0a7ab4e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:lts` - linux; amd64

```console
$ docker pull mysql@sha256:313c76f59c62376fd26b78fc85169902ef10134996bbfc31200eb9c2ed7e802e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.9 MB (270904261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e28ade5359ee24890f115d202b396388a6b7d2514f1b2fed38d57e84be64aee`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:56:37 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:56:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 22:06:41 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 27 Jul 2026 22:06:43 GMT
ENV GOSU_VERSION=1.19
# Mon, 27 Jul 2026 22:06:43 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 27 Jul 2026 22:07:16 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 27 Jul 2026 22:07:16 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 27 Jul 2026 22:07:16 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 27 Jul 2026 22:07:16 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Mon, 27 Jul 2026 22:07:17 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 27 Jul 2026 22:07:52 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 27 Jul 2026 22:07:52 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 27 Jul 2026 22:07:52 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 27 Jul 2026 22:08:37 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 27 Jul 2026 22:08:37 GMT
VOLUME [/var/lib/mysql]
# Mon, 27 Jul 2026 22:08:37 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 27 Jul 2026 22:08:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 27 Jul 2026 22:08:37 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 27 Jul 2026 22:08:37 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:30627cea5424c411bee6559e1aed4c4b977ceaab0f12695130c3825de516d2cc`  
		Last Modified: Thu, 23 Jul 2026 22:56:48 GMT  
		Size: 47.9 MB (47927752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc9bff174e15c65eaff616885e231b88852df66693b17d67f375e2290bd35d30`  
		Last Modified: Mon, 27 Jul 2026 22:09:13 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6923c6c729f28c71e469acd16979f547b65606e4da0d208e4788ea638eed409`  
		Last Modified: Mon, 27 Jul 2026 22:09:13 GMT  
		Size: 783.6 KB (783559 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48af77f83ce2f6f159fa3a08aa627ba32d9ce492ec0fd5be576758c6018b8c59`  
		Last Modified: Mon, 27 Jul 2026 22:09:14 GMT  
		Size: 6.2 MB (6193145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95d83715477f6f9891094f288b888dee68081fff6ad96afe2fc9ed2d119ce103`  
		Last Modified: Mon, 27 Jul 2026 22:09:13 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fefbd8135359cebdc500d5149dc53406230ab12ff92a680aab1ecd4af454ff3c`  
		Last Modified: Mon, 27 Jul 2026 22:09:14 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9a1438654dd08d1e71135ed06a3c9a993376d18f0a7a4d34076f67d0f8d4bef`  
		Last Modified: Mon, 27 Jul 2026 22:09:17 GMT  
		Size: 57.1 MB (57050624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39577f2d64ca8e08e0305f1d6cced18006bd9ea435a0ec0c20e8c67bb6f87a64`  
		Last Modified: Mon, 27 Jul 2026 22:09:15 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47fffd23e43dc892762225feb9ceaaac8bc8aa3e5856a04f54851b9f83b10ef8`  
		Last Modified: Mon, 27 Jul 2026 22:09:20 GMT  
		Size: 158.9 MB (158939808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e62c147ead06ae33a9afa61873c66eaa986313a17e4864dea07f2a14f9f92610`  
		Last Modified: Mon, 27 Jul 2026 22:09:16 GMT  
		Size: 5.2 KB (5231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:lts` - unknown; unknown

```console
$ docker pull mysql@sha256:536cb11469eb3996f816f2a69949dfa9de611a86053895474e8528db7a614739
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecd7ce6403a61b9ecec1a866a17af781f316726d60e7eebe2072569c961748d9`

```dockerfile
```

-	Layers:
	-	`sha256:0cad622e80b590ea769ac006ae4d905f4a9b9444c1854952037562a29aebc7b1`  
		Last Modified: Mon, 27 Jul 2026 22:09:14 GMT  
		Size: 16.8 MB (16799106 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a83239592ab9f2e7899a9494f5ffb869e3beb8093d62c39e23356f2d0a79fe04`  
		Last Modified: Mon, 27 Jul 2026 22:09:13 GMT  
		Size: 34.2 KB (34208 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:lts` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:0c9a7b65cb630121c2bb5384d7446e0fe35d0b90a21516cb466427ced19a65be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.4 MB (267386404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:418e56472effc6bae31691dbd4a6d3eea9515e4a84ad82f690f880b6a25401de`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:55:20 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:55:20 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 22:06:30 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 27 Jul 2026 22:06:32 GMT
ENV GOSU_VERSION=1.19
# Mon, 27 Jul 2026 22:06:32 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 27 Jul 2026 22:07:06 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 27 Jul 2026 22:07:06 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 27 Jul 2026 22:07:06 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 27 Jul 2026 22:07:06 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Mon, 27 Jul 2026 22:07:06 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 27 Jul 2026 22:07:43 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 27 Jul 2026 22:07:43 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 27 Jul 2026 22:07:43 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 27 Jul 2026 22:08:30 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 27 Jul 2026 22:08:30 GMT
VOLUME [/var/lib/mysql]
# Mon, 27 Jul 2026 22:08:30 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 27 Jul 2026 22:08:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 27 Jul 2026 22:08:30 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 27 Jul 2026 22:08:30 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c1a8d43326b89b25aff74efe983a017053ef32314f6332ba2cf4e76fcf4f2b09`  
		Last Modified: Thu, 23 Jul 2026 22:55:31 GMT  
		Size: 46.5 MB (46477905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f756888a3dd9ea27296785ead49593ea7b1ea89daa43e4ad6403072b5c9da1c4`  
		Last Modified: Mon, 27 Jul 2026 22:09:06 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21c894eb0c4514b31c71d72c1a80d83fa79b0a861c0c452067cdc9aaabade43a`  
		Last Modified: Mon, 27 Jul 2026 22:09:06 GMT  
		Size: 737.5 KB (737528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af01a0e6f5cc0cc11954fda42fd008a0d39baf4c87ffc92d4f32a525b4ba73aa`  
		Last Modified: Mon, 27 Jul 2026 22:09:06 GMT  
		Size: 5.8 MB (5822624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3288a78e906aff294e438767f2eb299c63944da4af95c65a0e246b1e0db13ac2`  
		Last Modified: Mon, 27 Jul 2026 22:09:06 GMT  
		Size: 2.6 KB (2604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a895d48e9a638d719227ffe8a7843d8a21895dbd64eaec9d480443ecc3ca5263`  
		Last Modified: Mon, 27 Jul 2026 22:09:07 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a77fc7257c96dedc7563927f89494c0c381cf045e1a9cf1caa0b4db1c6b94f5d`  
		Last Modified: Mon, 27 Jul 2026 22:09:10 GMT  
		Size: 57.1 MB (57120770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55ff496c40880c2902b24d02e812d84dc165018d7923192e8fce0d36638dc683`  
		Last Modified: Mon, 27 Jul 2026 22:09:07 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b9e8433b8213a65ea447e429e604823ff0ee7060417dc0ae92817505ff68b96`  
		Last Modified: Mon, 27 Jul 2026 22:09:12 GMT  
		Size: 157.2 MB (157218208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b9a0c325d3288f2698074a155be0b918a1d6b25803832b55ea624297af5f2ea`  
		Last Modified: Mon, 27 Jul 2026 22:09:09 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:lts` - unknown; unknown

```console
$ docker pull mysql@sha256:9c5410e90ca328a4ab8ce6c15f4edc81b363b389271f9c9cbafc8372f09b884b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16832055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:554d2f5a3fc6cedc93285b37642e3b3a31eb869278db27aa913943525815d018`

```dockerfile
```

-	Layers:
	-	`sha256:370f089e3ebec1ba7ed0bc5aa1504bdc86001069b2ab08732c151cb68a44b2b3`  
		Last Modified: Mon, 27 Jul 2026 22:09:07 GMT  
		Size: 16.8 MB (16797542 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f9c3b30dff4a446cf15fed094ee7a4718449fea759dc962ccee7470032ab9196`  
		Last Modified: Mon, 27 Jul 2026 22:09:06 GMT  
		Size: 34.5 KB (34513 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:lts-oracle`

```console
$ docker pull mysql@sha256:257388edf9c84dbc04c763625446d5f3fa6ed60d1b0873bc552c614ba0a7ab4e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:lts-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:313c76f59c62376fd26b78fc85169902ef10134996bbfc31200eb9c2ed7e802e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.9 MB (270904261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e28ade5359ee24890f115d202b396388a6b7d2514f1b2fed38d57e84be64aee`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:56:37 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:56:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 22:06:41 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 27 Jul 2026 22:06:43 GMT
ENV GOSU_VERSION=1.19
# Mon, 27 Jul 2026 22:06:43 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 27 Jul 2026 22:07:16 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 27 Jul 2026 22:07:16 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 27 Jul 2026 22:07:16 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 27 Jul 2026 22:07:16 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Mon, 27 Jul 2026 22:07:17 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 27 Jul 2026 22:07:52 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 27 Jul 2026 22:07:52 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 27 Jul 2026 22:07:52 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 27 Jul 2026 22:08:37 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 27 Jul 2026 22:08:37 GMT
VOLUME [/var/lib/mysql]
# Mon, 27 Jul 2026 22:08:37 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 27 Jul 2026 22:08:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 27 Jul 2026 22:08:37 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 27 Jul 2026 22:08:37 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:30627cea5424c411bee6559e1aed4c4b977ceaab0f12695130c3825de516d2cc`  
		Last Modified: Thu, 23 Jul 2026 22:56:48 GMT  
		Size: 47.9 MB (47927752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc9bff174e15c65eaff616885e231b88852df66693b17d67f375e2290bd35d30`  
		Last Modified: Mon, 27 Jul 2026 22:09:13 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6923c6c729f28c71e469acd16979f547b65606e4da0d208e4788ea638eed409`  
		Last Modified: Mon, 27 Jul 2026 22:09:13 GMT  
		Size: 783.6 KB (783559 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48af77f83ce2f6f159fa3a08aa627ba32d9ce492ec0fd5be576758c6018b8c59`  
		Last Modified: Mon, 27 Jul 2026 22:09:14 GMT  
		Size: 6.2 MB (6193145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95d83715477f6f9891094f288b888dee68081fff6ad96afe2fc9ed2d119ce103`  
		Last Modified: Mon, 27 Jul 2026 22:09:13 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fefbd8135359cebdc500d5149dc53406230ab12ff92a680aab1ecd4af454ff3c`  
		Last Modified: Mon, 27 Jul 2026 22:09:14 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9a1438654dd08d1e71135ed06a3c9a993376d18f0a7a4d34076f67d0f8d4bef`  
		Last Modified: Mon, 27 Jul 2026 22:09:17 GMT  
		Size: 57.1 MB (57050624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39577f2d64ca8e08e0305f1d6cced18006bd9ea435a0ec0c20e8c67bb6f87a64`  
		Last Modified: Mon, 27 Jul 2026 22:09:15 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47fffd23e43dc892762225feb9ceaaac8bc8aa3e5856a04f54851b9f83b10ef8`  
		Last Modified: Mon, 27 Jul 2026 22:09:20 GMT  
		Size: 158.9 MB (158939808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e62c147ead06ae33a9afa61873c66eaa986313a17e4864dea07f2a14f9f92610`  
		Last Modified: Mon, 27 Jul 2026 22:09:16 GMT  
		Size: 5.2 KB (5231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:lts-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:536cb11469eb3996f816f2a69949dfa9de611a86053895474e8528db7a614739
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecd7ce6403a61b9ecec1a866a17af781f316726d60e7eebe2072569c961748d9`

```dockerfile
```

-	Layers:
	-	`sha256:0cad622e80b590ea769ac006ae4d905f4a9b9444c1854952037562a29aebc7b1`  
		Last Modified: Mon, 27 Jul 2026 22:09:14 GMT  
		Size: 16.8 MB (16799106 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a83239592ab9f2e7899a9494f5ffb869e3beb8093d62c39e23356f2d0a79fe04`  
		Last Modified: Mon, 27 Jul 2026 22:09:13 GMT  
		Size: 34.2 KB (34208 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:lts-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:0c9a7b65cb630121c2bb5384d7446e0fe35d0b90a21516cb466427ced19a65be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.4 MB (267386404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:418e56472effc6bae31691dbd4a6d3eea9515e4a84ad82f690f880b6a25401de`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:55:20 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:55:20 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 22:06:30 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 27 Jul 2026 22:06:32 GMT
ENV GOSU_VERSION=1.19
# Mon, 27 Jul 2026 22:06:32 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 27 Jul 2026 22:07:06 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 27 Jul 2026 22:07:06 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 27 Jul 2026 22:07:06 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 27 Jul 2026 22:07:06 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Mon, 27 Jul 2026 22:07:06 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 27 Jul 2026 22:07:43 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 27 Jul 2026 22:07:43 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 27 Jul 2026 22:07:43 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 27 Jul 2026 22:08:30 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 27 Jul 2026 22:08:30 GMT
VOLUME [/var/lib/mysql]
# Mon, 27 Jul 2026 22:08:30 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 27 Jul 2026 22:08:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 27 Jul 2026 22:08:30 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 27 Jul 2026 22:08:30 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c1a8d43326b89b25aff74efe983a017053ef32314f6332ba2cf4e76fcf4f2b09`  
		Last Modified: Thu, 23 Jul 2026 22:55:31 GMT  
		Size: 46.5 MB (46477905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f756888a3dd9ea27296785ead49593ea7b1ea89daa43e4ad6403072b5c9da1c4`  
		Last Modified: Mon, 27 Jul 2026 22:09:06 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21c894eb0c4514b31c71d72c1a80d83fa79b0a861c0c452067cdc9aaabade43a`  
		Last Modified: Mon, 27 Jul 2026 22:09:06 GMT  
		Size: 737.5 KB (737528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af01a0e6f5cc0cc11954fda42fd008a0d39baf4c87ffc92d4f32a525b4ba73aa`  
		Last Modified: Mon, 27 Jul 2026 22:09:06 GMT  
		Size: 5.8 MB (5822624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3288a78e906aff294e438767f2eb299c63944da4af95c65a0e246b1e0db13ac2`  
		Last Modified: Mon, 27 Jul 2026 22:09:06 GMT  
		Size: 2.6 KB (2604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a895d48e9a638d719227ffe8a7843d8a21895dbd64eaec9d480443ecc3ca5263`  
		Last Modified: Mon, 27 Jul 2026 22:09:07 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a77fc7257c96dedc7563927f89494c0c381cf045e1a9cf1caa0b4db1c6b94f5d`  
		Last Modified: Mon, 27 Jul 2026 22:09:10 GMT  
		Size: 57.1 MB (57120770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55ff496c40880c2902b24d02e812d84dc165018d7923192e8fce0d36638dc683`  
		Last Modified: Mon, 27 Jul 2026 22:09:07 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b9e8433b8213a65ea447e429e604823ff0ee7060417dc0ae92817505ff68b96`  
		Last Modified: Mon, 27 Jul 2026 22:09:12 GMT  
		Size: 157.2 MB (157218208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b9a0c325d3288f2698074a155be0b918a1d6b25803832b55ea624297af5f2ea`  
		Last Modified: Mon, 27 Jul 2026 22:09:09 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:lts-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:9c5410e90ca328a4ab8ce6c15f4edc81b363b389271f9c9cbafc8372f09b884b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16832055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:554d2f5a3fc6cedc93285b37642e3b3a31eb869278db27aa913943525815d018`

```dockerfile
```

-	Layers:
	-	`sha256:370f089e3ebec1ba7ed0bc5aa1504bdc86001069b2ab08732c151cb68a44b2b3`  
		Last Modified: Mon, 27 Jul 2026 22:09:07 GMT  
		Size: 16.8 MB (16797542 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f9c3b30dff4a446cf15fed094ee7a4718449fea759dc962ccee7470032ab9196`  
		Last Modified: Mon, 27 Jul 2026 22:09:06 GMT  
		Size: 34.5 KB (34513 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:lts-oraclelinux9`

```console
$ docker pull mysql@sha256:257388edf9c84dbc04c763625446d5f3fa6ed60d1b0873bc552c614ba0a7ab4e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:lts-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:313c76f59c62376fd26b78fc85169902ef10134996bbfc31200eb9c2ed7e802e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.9 MB (270904261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e28ade5359ee24890f115d202b396388a6b7d2514f1b2fed38d57e84be64aee`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:56:37 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:56:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 22:06:41 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 27 Jul 2026 22:06:43 GMT
ENV GOSU_VERSION=1.19
# Mon, 27 Jul 2026 22:06:43 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 27 Jul 2026 22:07:16 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 27 Jul 2026 22:07:16 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 27 Jul 2026 22:07:16 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 27 Jul 2026 22:07:16 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Mon, 27 Jul 2026 22:07:17 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 27 Jul 2026 22:07:52 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 27 Jul 2026 22:07:52 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 27 Jul 2026 22:07:52 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 27 Jul 2026 22:08:37 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 27 Jul 2026 22:08:37 GMT
VOLUME [/var/lib/mysql]
# Mon, 27 Jul 2026 22:08:37 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 27 Jul 2026 22:08:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 27 Jul 2026 22:08:37 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 27 Jul 2026 22:08:37 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:30627cea5424c411bee6559e1aed4c4b977ceaab0f12695130c3825de516d2cc`  
		Last Modified: Thu, 23 Jul 2026 22:56:48 GMT  
		Size: 47.9 MB (47927752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc9bff174e15c65eaff616885e231b88852df66693b17d67f375e2290bd35d30`  
		Last Modified: Mon, 27 Jul 2026 22:09:13 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6923c6c729f28c71e469acd16979f547b65606e4da0d208e4788ea638eed409`  
		Last Modified: Mon, 27 Jul 2026 22:09:13 GMT  
		Size: 783.6 KB (783559 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48af77f83ce2f6f159fa3a08aa627ba32d9ce492ec0fd5be576758c6018b8c59`  
		Last Modified: Mon, 27 Jul 2026 22:09:14 GMT  
		Size: 6.2 MB (6193145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95d83715477f6f9891094f288b888dee68081fff6ad96afe2fc9ed2d119ce103`  
		Last Modified: Mon, 27 Jul 2026 22:09:13 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fefbd8135359cebdc500d5149dc53406230ab12ff92a680aab1ecd4af454ff3c`  
		Last Modified: Mon, 27 Jul 2026 22:09:14 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9a1438654dd08d1e71135ed06a3c9a993376d18f0a7a4d34076f67d0f8d4bef`  
		Last Modified: Mon, 27 Jul 2026 22:09:17 GMT  
		Size: 57.1 MB (57050624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39577f2d64ca8e08e0305f1d6cced18006bd9ea435a0ec0c20e8c67bb6f87a64`  
		Last Modified: Mon, 27 Jul 2026 22:09:15 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47fffd23e43dc892762225feb9ceaaac8bc8aa3e5856a04f54851b9f83b10ef8`  
		Last Modified: Mon, 27 Jul 2026 22:09:20 GMT  
		Size: 158.9 MB (158939808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e62c147ead06ae33a9afa61873c66eaa986313a17e4864dea07f2a14f9f92610`  
		Last Modified: Mon, 27 Jul 2026 22:09:16 GMT  
		Size: 5.2 KB (5231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:lts-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:536cb11469eb3996f816f2a69949dfa9de611a86053895474e8528db7a614739
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecd7ce6403a61b9ecec1a866a17af781f316726d60e7eebe2072569c961748d9`

```dockerfile
```

-	Layers:
	-	`sha256:0cad622e80b590ea769ac006ae4d905f4a9b9444c1854952037562a29aebc7b1`  
		Last Modified: Mon, 27 Jul 2026 22:09:14 GMT  
		Size: 16.8 MB (16799106 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a83239592ab9f2e7899a9494f5ffb869e3beb8093d62c39e23356f2d0a79fe04`  
		Last Modified: Mon, 27 Jul 2026 22:09:13 GMT  
		Size: 34.2 KB (34208 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:lts-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:0c9a7b65cb630121c2bb5384d7446e0fe35d0b90a21516cb466427ced19a65be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.4 MB (267386404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:418e56472effc6bae31691dbd4a6d3eea9515e4a84ad82f690f880b6a25401de`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:55:20 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:55:20 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 22:06:30 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 27 Jul 2026 22:06:32 GMT
ENV GOSU_VERSION=1.19
# Mon, 27 Jul 2026 22:06:32 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 27 Jul 2026 22:07:06 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 27 Jul 2026 22:07:06 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 27 Jul 2026 22:07:06 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 27 Jul 2026 22:07:06 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Mon, 27 Jul 2026 22:07:06 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 27 Jul 2026 22:07:43 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 27 Jul 2026 22:07:43 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 27 Jul 2026 22:07:43 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 27 Jul 2026 22:08:30 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 27 Jul 2026 22:08:30 GMT
VOLUME [/var/lib/mysql]
# Mon, 27 Jul 2026 22:08:30 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 27 Jul 2026 22:08:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 27 Jul 2026 22:08:30 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 27 Jul 2026 22:08:30 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c1a8d43326b89b25aff74efe983a017053ef32314f6332ba2cf4e76fcf4f2b09`  
		Last Modified: Thu, 23 Jul 2026 22:55:31 GMT  
		Size: 46.5 MB (46477905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f756888a3dd9ea27296785ead49593ea7b1ea89daa43e4ad6403072b5c9da1c4`  
		Last Modified: Mon, 27 Jul 2026 22:09:06 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21c894eb0c4514b31c71d72c1a80d83fa79b0a861c0c452067cdc9aaabade43a`  
		Last Modified: Mon, 27 Jul 2026 22:09:06 GMT  
		Size: 737.5 KB (737528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af01a0e6f5cc0cc11954fda42fd008a0d39baf4c87ffc92d4f32a525b4ba73aa`  
		Last Modified: Mon, 27 Jul 2026 22:09:06 GMT  
		Size: 5.8 MB (5822624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3288a78e906aff294e438767f2eb299c63944da4af95c65a0e246b1e0db13ac2`  
		Last Modified: Mon, 27 Jul 2026 22:09:06 GMT  
		Size: 2.6 KB (2604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a895d48e9a638d719227ffe8a7843d8a21895dbd64eaec9d480443ecc3ca5263`  
		Last Modified: Mon, 27 Jul 2026 22:09:07 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a77fc7257c96dedc7563927f89494c0c381cf045e1a9cf1caa0b4db1c6b94f5d`  
		Last Modified: Mon, 27 Jul 2026 22:09:10 GMT  
		Size: 57.1 MB (57120770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55ff496c40880c2902b24d02e812d84dc165018d7923192e8fce0d36638dc683`  
		Last Modified: Mon, 27 Jul 2026 22:09:07 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b9e8433b8213a65ea447e429e604823ff0ee7060417dc0ae92817505ff68b96`  
		Last Modified: Mon, 27 Jul 2026 22:09:12 GMT  
		Size: 157.2 MB (157218208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b9a0c325d3288f2698074a155be0b918a1d6b25803832b55ea624297af5f2ea`  
		Last Modified: Mon, 27 Jul 2026 22:09:09 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:lts-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:9c5410e90ca328a4ab8ce6c15f4edc81b363b389271f9c9cbafc8372f09b884b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16832055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:554d2f5a3fc6cedc93285b37642e3b3a31eb869278db27aa913943525815d018`

```dockerfile
```

-	Layers:
	-	`sha256:370f089e3ebec1ba7ed0bc5aa1504bdc86001069b2ab08732c151cb68a44b2b3`  
		Last Modified: Mon, 27 Jul 2026 22:09:07 GMT  
		Size: 16.8 MB (16797542 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f9c3b30dff4a446cf15fed094ee7a4718449fea759dc962ccee7470032ab9196`  
		Last Modified: Mon, 27 Jul 2026 22:09:06 GMT  
		Size: 34.5 KB (34513 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:oracle`

```console
$ docker pull mysql@sha256:66aec17cd21a956029b83f083b813073859e8355dc1a00e55df6ba02f0e32345
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:oracle` - linux; amd64

```console
$ docker pull mysql@sha256:973c5e8e4d2f12ecc3da9ca9d8d4189b6a7e3d17584c66fca6dae6993c0417ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.3 MB (272333489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d236310860c6d039bb44b1e0569de1e6b6806ec5c40aa7c63560590fbde6b649`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:56:37 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:56:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 22:06:40 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 27 Jul 2026 22:06:42 GMT
ENV GOSU_VERSION=1.19
# Mon, 27 Jul 2026 22:06:42 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 27 Jul 2026 22:07:09 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 27 Jul 2026 22:07:10 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 27 Jul 2026 22:07:10 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 27 Jul 2026 22:07:10 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Mon, 27 Jul 2026 22:07:10 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 27 Jul 2026 22:07:41 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 27 Jul 2026 22:07:42 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 27 Jul 2026 22:07:42 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Mon, 27 Jul 2026 22:08:23 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 27 Jul 2026 22:08:23 GMT
VOLUME [/var/lib/mysql]
# Mon, 27 Jul 2026 22:08:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 27 Jul 2026 22:08:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 27 Jul 2026 22:08:24 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 27 Jul 2026 22:08:24 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:30627cea5424c411bee6559e1aed4c4b977ceaab0f12695130c3825de516d2cc`  
		Last Modified: Thu, 23 Jul 2026 22:56:48 GMT  
		Size: 47.9 MB (47927752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e887550bdc468b2dd72d7967d59dc44a552d8785b9e253359e6f061120ce3ba`  
		Last Modified: Mon, 27 Jul 2026 22:08:56 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35475b275575bdbb3f219284a8dcda29bb3cf9bdad6c24921b1a62cbac1db7b7`  
		Last Modified: Mon, 27 Jul 2026 22:08:56 GMT  
		Size: 783.6 KB (783559 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27683f99b921c9cb7a589ec0fe071d5555800dfe0f5499ee035d1ef7e71e9774`  
		Last Modified: Mon, 27 Jul 2026 22:08:56 GMT  
		Size: 6.2 MB (6193229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bb65eb170f99612f059043a0ef560d32bd46493f464c75ac3b0a2c12aa31101`  
		Last Modified: Mon, 27 Jul 2026 22:08:56 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e480dcc782ea688f26f79154dc11e0fbbcc7b370d9724b1990cedeff94f4d934`  
		Last Modified: Mon, 27 Jul 2026 22:08:57 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1791a4d7fecfe7b185ffad81c57cd591720399c816dcf6d8d3268454c03e8a0b`  
		Last Modified: Mon, 27 Jul 2026 22:08:59 GMT  
		Size: 57.5 MB (57452984 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71fa527c6c686e011bb6d2f54bc628e289e10cd437b61310f11206888989a74b`  
		Last Modified: Mon, 27 Jul 2026 22:08:57 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4e766e27938130bdc1f262546153c62d4473aeedf74d658434f10505c7e1bca`  
		Last Modified: Mon, 27 Jul 2026 22:09:02 GMT  
		Size: 160.0 MB (159966583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:feffc3e2a7dd54c89a91313183a3fe385a3dde046a414f60cd8e3f6c5682b7b7`  
		Last Modified: Mon, 27 Jul 2026 22:08:58 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:97918f41ab26e7590202676650657d764b67dd7a761e6c0d1d75e35d3f8f6227
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17452628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:316ace686f30f4788bc8f4252c034e137c12b6cb57037efdaa5dedf4bd73a12e`

```dockerfile
```

-	Layers:
	-	`sha256:808810e42158451cf4e1cb1fee8898f75ddeddb1f6d3b6070985926d548a6220`  
		Last Modified: Mon, 27 Jul 2026 22:08:57 GMT  
		Size: 17.4 MB (17417330 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:81ee3e1129f4c4a932904e5f0c2d96a170a98e10db51e378c4e45a05008fc3d6`  
		Last Modified: Mon, 27 Jul 2026 22:08:56 GMT  
		Size: 35.3 KB (35298 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:4ed9768780c0b47c7d72c66132423993be22aa4504c3af5b3ab8bc9a0c76c36b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.7 MB (268717252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96aaced979c95f9a9da0df59a1c1ed8089b0210a266570ca2db10928f2c6be1a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:55:20 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:55:20 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 22:06:25 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 27 Jul 2026 22:06:26 GMT
ENV GOSU_VERSION=1.19
# Mon, 27 Jul 2026 22:06:26 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 27 Jul 2026 22:06:59 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 27 Jul 2026 22:06:59 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 27 Jul 2026 22:06:59 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 27 Jul 2026 22:06:59 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Mon, 27 Jul 2026 22:07:00 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 27 Jul 2026 22:07:35 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 27 Jul 2026 22:07:35 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 27 Jul 2026 22:07:35 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Mon, 27 Jul 2026 22:08:24 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 27 Jul 2026 22:08:24 GMT
VOLUME [/var/lib/mysql]
# Mon, 27 Jul 2026 22:08:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 27 Jul 2026 22:08:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 27 Jul 2026 22:08:24 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 27 Jul 2026 22:08:24 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c1a8d43326b89b25aff74efe983a017053ef32314f6332ba2cf4e76fcf4f2b09`  
		Last Modified: Thu, 23 Jul 2026 22:55:31 GMT  
		Size: 46.5 MB (46477905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:944f69e1b2b338d7907324cd317843ce912345bae54432038614b707ab9170b6`  
		Last Modified: Mon, 27 Jul 2026 22:09:00 GMT  
		Size: 887.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c8bc0fe906fd46b9f3693ae7e6214a6df6f673b23291d60391132a0a9d7ecf0`  
		Last Modified: Mon, 27 Jul 2026 22:09:00 GMT  
		Size: 737.5 KB (737527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c33b18df1d3b00d740232ae2a5000bba34018e3b3acf8e01286e0ce25e5f50e6`  
		Last Modified: Mon, 27 Jul 2026 22:09:00 GMT  
		Size: 5.8 MB (5822621 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ec807440a038e2a2ec2096aee8ab45dc65fe0f5dc23af3b0b7ef40e523aa659`  
		Last Modified: Mon, 27 Jul 2026 22:09:00 GMT  
		Size: 2.6 KB (2604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b658fa1eb0d7e2fb74c6d0af75594894a117669435e9c07c6d092957795f2b8c`  
		Last Modified: Mon, 27 Jul 2026 22:09:01 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4348b7d2c8f51c37a9f39227e7b6366e6111685e1ce744b967ffff44d89674f3`  
		Last Modified: Mon, 27 Jul 2026 22:09:04 GMT  
		Size: 57.4 MB (57435893 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:279157f1041e8af4baede2019ffc23e4cac9fa07780e9f7383ed5f8cd863fdac`  
		Last Modified: Mon, 27 Jul 2026 22:09:01 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec569be443bb71898d28b6c47ad87083eaccefd9aa57442b0e495e4878171a11`  
		Last Modified: Mon, 27 Jul 2026 22:09:06 GMT  
		Size: 158.2 MB (158233926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74431a8f5848bfc3163e256709dbb18f349998d6d477e6bb2ac40eac7e973870`  
		Last Modified: Mon, 27 Jul 2026 22:09:03 GMT  
		Size: 5.2 KB (5224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:7c412412603df835acc61ca1f81700c074fb99fefc82d048646e55c5e2d5fb37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17451442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3089ffa526bae4ab3532e7bcb7915b1988c9cd36e4f2776b6c0bb0e32e36a82f`

```dockerfile
```

-	Layers:
	-	`sha256:76ec0a7f5412cadf6ae062a6d9d9e6d8a0327c41b207ec8d2f61c313027f50e0`  
		Last Modified: Mon, 27 Jul 2026 22:09:01 GMT  
		Size: 17.4 MB (17415803 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:053b4a51a7b42b7b26ae70990111f710781914e1d5bd8844a720039ebaf3073d`  
		Last Modified: Mon, 27 Jul 2026 22:09:00 GMT  
		Size: 35.6 KB (35639 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:oraclelinux9`

```console
$ docker pull mysql@sha256:66aec17cd21a956029b83f083b813073859e8355dc1a00e55df6ba02f0e32345
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:973c5e8e4d2f12ecc3da9ca9d8d4189b6a7e3d17584c66fca6dae6993c0417ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.3 MB (272333489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d236310860c6d039bb44b1e0569de1e6b6806ec5c40aa7c63560590fbde6b649`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:56:37 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:56:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 22:06:40 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 27 Jul 2026 22:06:42 GMT
ENV GOSU_VERSION=1.19
# Mon, 27 Jul 2026 22:06:42 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 27 Jul 2026 22:07:09 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 27 Jul 2026 22:07:10 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 27 Jul 2026 22:07:10 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 27 Jul 2026 22:07:10 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Mon, 27 Jul 2026 22:07:10 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 27 Jul 2026 22:07:41 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 27 Jul 2026 22:07:42 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 27 Jul 2026 22:07:42 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Mon, 27 Jul 2026 22:08:23 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 27 Jul 2026 22:08:23 GMT
VOLUME [/var/lib/mysql]
# Mon, 27 Jul 2026 22:08:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 27 Jul 2026 22:08:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 27 Jul 2026 22:08:24 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 27 Jul 2026 22:08:24 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:30627cea5424c411bee6559e1aed4c4b977ceaab0f12695130c3825de516d2cc`  
		Last Modified: Thu, 23 Jul 2026 22:56:48 GMT  
		Size: 47.9 MB (47927752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e887550bdc468b2dd72d7967d59dc44a552d8785b9e253359e6f061120ce3ba`  
		Last Modified: Mon, 27 Jul 2026 22:08:56 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35475b275575bdbb3f219284a8dcda29bb3cf9bdad6c24921b1a62cbac1db7b7`  
		Last Modified: Mon, 27 Jul 2026 22:08:56 GMT  
		Size: 783.6 KB (783559 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27683f99b921c9cb7a589ec0fe071d5555800dfe0f5499ee035d1ef7e71e9774`  
		Last Modified: Mon, 27 Jul 2026 22:08:56 GMT  
		Size: 6.2 MB (6193229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bb65eb170f99612f059043a0ef560d32bd46493f464c75ac3b0a2c12aa31101`  
		Last Modified: Mon, 27 Jul 2026 22:08:56 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e480dcc782ea688f26f79154dc11e0fbbcc7b370d9724b1990cedeff94f4d934`  
		Last Modified: Mon, 27 Jul 2026 22:08:57 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1791a4d7fecfe7b185ffad81c57cd591720399c816dcf6d8d3268454c03e8a0b`  
		Last Modified: Mon, 27 Jul 2026 22:08:59 GMT  
		Size: 57.5 MB (57452984 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71fa527c6c686e011bb6d2f54bc628e289e10cd437b61310f11206888989a74b`  
		Last Modified: Mon, 27 Jul 2026 22:08:57 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4e766e27938130bdc1f262546153c62d4473aeedf74d658434f10505c7e1bca`  
		Last Modified: Mon, 27 Jul 2026 22:09:02 GMT  
		Size: 160.0 MB (159966583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:feffc3e2a7dd54c89a91313183a3fe385a3dde046a414f60cd8e3f6c5682b7b7`  
		Last Modified: Mon, 27 Jul 2026 22:08:58 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:97918f41ab26e7590202676650657d764b67dd7a761e6c0d1d75e35d3f8f6227
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17452628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:316ace686f30f4788bc8f4252c034e137c12b6cb57037efdaa5dedf4bd73a12e`

```dockerfile
```

-	Layers:
	-	`sha256:808810e42158451cf4e1cb1fee8898f75ddeddb1f6d3b6070985926d548a6220`  
		Last Modified: Mon, 27 Jul 2026 22:08:57 GMT  
		Size: 17.4 MB (17417330 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:81ee3e1129f4c4a932904e5f0c2d96a170a98e10db51e378c4e45a05008fc3d6`  
		Last Modified: Mon, 27 Jul 2026 22:08:56 GMT  
		Size: 35.3 KB (35298 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:4ed9768780c0b47c7d72c66132423993be22aa4504c3af5b3ab8bc9a0c76c36b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.7 MB (268717252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96aaced979c95f9a9da0df59a1c1ed8089b0210a266570ca2db10928f2c6be1a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 22:55:20 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:55:20 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 22:06:25 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 27 Jul 2026 22:06:26 GMT
ENV GOSU_VERSION=1.19
# Mon, 27 Jul 2026 22:06:26 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 27 Jul 2026 22:06:59 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 27 Jul 2026 22:06:59 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 27 Jul 2026 22:06:59 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 27 Jul 2026 22:06:59 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Mon, 27 Jul 2026 22:07:00 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 27 Jul 2026 22:07:35 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 27 Jul 2026 22:07:35 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 27 Jul 2026 22:07:35 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Mon, 27 Jul 2026 22:08:24 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 27 Jul 2026 22:08:24 GMT
VOLUME [/var/lib/mysql]
# Mon, 27 Jul 2026 22:08:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 27 Jul 2026 22:08:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 27 Jul 2026 22:08:24 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 27 Jul 2026 22:08:24 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c1a8d43326b89b25aff74efe983a017053ef32314f6332ba2cf4e76fcf4f2b09`  
		Last Modified: Thu, 23 Jul 2026 22:55:31 GMT  
		Size: 46.5 MB (46477905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:944f69e1b2b338d7907324cd317843ce912345bae54432038614b707ab9170b6`  
		Last Modified: Mon, 27 Jul 2026 22:09:00 GMT  
		Size: 887.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c8bc0fe906fd46b9f3693ae7e6214a6df6f673b23291d60391132a0a9d7ecf0`  
		Last Modified: Mon, 27 Jul 2026 22:09:00 GMT  
		Size: 737.5 KB (737527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c33b18df1d3b00d740232ae2a5000bba34018e3b3acf8e01286e0ce25e5f50e6`  
		Last Modified: Mon, 27 Jul 2026 22:09:00 GMT  
		Size: 5.8 MB (5822621 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ec807440a038e2a2ec2096aee8ab45dc65fe0f5dc23af3b0b7ef40e523aa659`  
		Last Modified: Mon, 27 Jul 2026 22:09:00 GMT  
		Size: 2.6 KB (2604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b658fa1eb0d7e2fb74c6d0af75594894a117669435e9c07c6d092957795f2b8c`  
		Last Modified: Mon, 27 Jul 2026 22:09:01 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4348b7d2c8f51c37a9f39227e7b6366e6111685e1ce744b967ffff44d89674f3`  
		Last Modified: Mon, 27 Jul 2026 22:09:04 GMT  
		Size: 57.4 MB (57435893 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:279157f1041e8af4baede2019ffc23e4cac9fa07780e9f7383ed5f8cd863fdac`  
		Last Modified: Mon, 27 Jul 2026 22:09:01 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec569be443bb71898d28b6c47ad87083eaccefd9aa57442b0e495e4878171a11`  
		Last Modified: Mon, 27 Jul 2026 22:09:06 GMT  
		Size: 158.2 MB (158233926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74431a8f5848bfc3163e256709dbb18f349998d6d477e6bb2ac40eac7e973870`  
		Last Modified: Mon, 27 Jul 2026 22:09:03 GMT  
		Size: 5.2 KB (5224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:7c412412603df835acc61ca1f81700c074fb99fefc82d048646e55c5e2d5fb37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17451442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3089ffa526bae4ab3532e7bcb7915b1988c9cd36e4f2776b6c0bb0e32e36a82f`

```dockerfile
```

-	Layers:
	-	`sha256:76ec0a7f5412cadf6ae062a6d9d9e6d8a0327c41b207ec8d2f61c313027f50e0`  
		Last Modified: Mon, 27 Jul 2026 22:09:01 GMT  
		Size: 17.4 MB (17415803 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:053b4a51a7b42b7b26ae70990111f710781914e1d5bd8844a720039ebaf3073d`  
		Last Modified: Mon, 27 Jul 2026 22:09:00 GMT  
		Size: 35.6 KB (35639 bytes)  
		MIME: application/vnd.in-toto+json
