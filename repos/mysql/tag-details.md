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
$ docker pull mysql@sha256:893418c8a7a34c60d2d961cc30ef136095da141478562ed2101ae3f5faba9c3f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:26` - linux; amd64

```console
$ docker pull mysql@sha256:9bd5e8db9c913e82eefd16b556ca3e4e12ef25ff1b8507b73d04cf754b6b8f47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.6 MB (271629275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b130421b8c710f5c18f3bcce8d04d710616d55d747dcba1cb78886d4d5fc698`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 12 Oct 2026 19:11:06 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 12 Oct 2026 19:11:06 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 20:09:50 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 12 Oct 2026 20:09:52 GMT
ENV GOSU_VERSION=1.19
# Mon, 12 Oct 2026 20:09:52 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 12 Oct 2026 20:10:24 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 12 Oct 2026 20:10:25 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 12 Oct 2026 20:10:25 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 12 Oct 2026 20:10:25 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Mon, 12 Oct 2026 20:10:25 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 12 Oct 2026 20:11:00 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 12 Oct 2026 20:11:00 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 12 Oct 2026 20:11:00 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Mon, 12 Oct 2026 20:11:44 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 12 Oct 2026 20:11:44 GMT
VOLUME [/var/lib/mysql]
# Mon, 12 Oct 2026 20:11:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 12 Oct 2026 20:11:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 20:11:44 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 12 Oct 2026 20:11:44 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:e896da32f635ced58051c434f6d70ebdf95efaa199d796f16689ad6a7393d30e`  
		Last Modified: Mon, 12 Oct 2026 19:11:17 GMT  
		Size: 47.2 MB (47247118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:029a2ef99eb4bd84989e14407a162e85dd43c39f152800636b7f2f34e08e1d35`  
		Last Modified: Mon, 12 Oct 2026 20:12:15 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a798338f8ea05e3f1ee9fcbc5cf7fa005292ea5a19e57cb725d2f4b560f1e78e`  
		Last Modified: Mon, 12 Oct 2026 20:12:15 GMT  
		Size: 783.6 KB (783559 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d41b77484029035b0416172a7a516135161db36a5c4089fcbcb5450789ea5fb8`  
		Last Modified: Mon, 12 Oct 2026 20:12:15 GMT  
		Size: 6.2 MB (6192268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d057682167d504e74bea3542dbba561f97cd19d60d931145d6b4cfcc50074d4f`  
		Last Modified: Mon, 12 Oct 2026 20:12:15 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecb59e1f4a8f87cb477397c1d7876cfb480f75a147dba1dfd6df5bb6de9a8904`  
		Last Modified: Mon, 12 Oct 2026 20:12:16 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c233331fdce73aacd8a8696a5476a8a0ca4a5ad291e71142c590d3f0c0f0e5d7`  
		Last Modified: Mon, 12 Oct 2026 20:12:18 GMT  
		Size: 57.4 MB (57438613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a710d5def08112e5495c86fc8ab9cd14af67e80e7f14350e22d209bed54eff7`  
		Last Modified: Mon, 12 Oct 2026 20:12:17 GMT  
		Size: 326.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6526c3b0b71a698d53ca661298c1bd3957fcbebffd234caefec7cd008074c03`  
		Last Modified: Mon, 12 Oct 2026 20:12:20 GMT  
		Size: 160.0 MB (159958334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:514ea420f997205256cd21982069f6b15b59e32a5e172ce1e08f8aeb802201a8`  
		Last Modified: Mon, 12 Oct 2026 20:12:18 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26` - unknown; unknown

```console
$ docker pull mysql@sha256:6b1cb3787a01f23b2e9783d50f35c7c382799725630e22b5010820c884712be2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17452721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08175b2f44862eeb54a3be1437b232b1eb8aac57b359d74b8368fa69a579b725`

```dockerfile
```

-	Layers:
	-	`sha256:2659fa5447a2f0a95876099600d3ba81d2b2c72cb483f3255e0b20da0c05eab4`  
		Last Modified: Mon, 12 Oct 2026 20:12:16 GMT  
		Size: 17.4 MB (17417423 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9e6faf632f7d39b2fc61fe73a05a2c7a082e8369ae5ff9023d74e7f852fb1355`  
		Last Modified: Mon, 12 Oct 2026 20:12:15 GMT  
		Size: 35.3 KB (35298 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:26` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:46911fe021d2e75f6724959921599f5cdfd9a3758e4b171ba28034e174e0eb4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.0 MB (267993703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08f6250f9f8f653d8afb142b136a6b1d2177827276e5fd74974f3c3c5f190522`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 12 Oct 2026 19:10:25 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 12 Oct 2026 19:10:25 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 20:09:37 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 12 Oct 2026 20:09:39 GMT
ENV GOSU_VERSION=1.19
# Mon, 12 Oct 2026 20:09:39 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 12 Oct 2026 20:10:18 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 12 Oct 2026 20:10:19 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 12 Oct 2026 20:10:19 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 12 Oct 2026 20:10:19 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Mon, 12 Oct 2026 20:10:19 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 12 Oct 2026 20:11:01 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 12 Oct 2026 20:11:01 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 12 Oct 2026 20:11:01 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Mon, 12 Oct 2026 20:11:55 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 12 Oct 2026 20:11:55 GMT
VOLUME [/var/lib/mysql]
# Mon, 12 Oct 2026 20:11:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 12 Oct 2026 20:11:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 20:11:55 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 12 Oct 2026 20:11:55 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b1be88c1a95445e6111ba7b3bceed48f958b8f6eb2ff1c4b27f45fa7b0f45de9`  
		Last Modified: Mon, 12 Oct 2026 19:10:36 GMT  
		Size: 45.8 MB (45800687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0399a56949deaaf20c00b16050b77d7a63225e27be68c9ca385d0c1c880f0135`  
		Last Modified: Mon, 12 Oct 2026 20:12:31 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84bf64211785ff7a6c43b8e6a5a3709415938d2513f9e701416d4bcf62d531df`  
		Last Modified: Mon, 12 Oct 2026 20:12:32 GMT  
		Size: 737.5 KB (737522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7195dce5dfb48948082c8e356a5d15249f243f19f36574fcf0bb8502f0658d81`  
		Last Modified: Mon, 12 Oct 2026 20:12:32 GMT  
		Size: 5.8 MB (5809858 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67e4017b162aed8a9d3ab7530517eb44f352124cc95aa4f88c5562d014f88cad`  
		Last Modified: Mon, 12 Oct 2026 20:12:32 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d95985f6fb94910d133f5e8f92db9883ef3c4c586eb90644791a690f4bc0dc7b`  
		Last Modified: Mon, 12 Oct 2026 20:12:33 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b429d7e53711dbddcc2bf8fa1f38831ad39777485d80ab7f83050b744413ade6`  
		Last Modified: Mon, 12 Oct 2026 20:12:35 GMT  
		Size: 57.4 MB (57414294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ad383cc3314a302763fcfef893db025ea66afcdede0d41fd7410f67781a67a6`  
		Last Modified: Mon, 12 Oct 2026 20:12:33 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16c0cf53a295c474087f466e675f33b6dc1a049673660cb94c19d428f9ee3176`  
		Last Modified: Mon, 12 Oct 2026 20:12:37 GMT  
		Size: 158.2 MB (158221965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae7f2c27109c9b7a53338cc3c94f11c49cbd91d2499a4b427bbfe50c54b37887`  
		Last Modified: Mon, 12 Oct 2026 20:12:34 GMT  
		Size: 5.2 KB (5221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26` - unknown; unknown

```console
$ docker pull mysql@sha256:6abc841a93694bee7d74bb63fd917c9ef474a4569323034acb56e088abf1eca4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17451535 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15145fbf881023c0d02c304531029c80d34d1f81e9ada40099d7996a5d568389`

```dockerfile
```

-	Layers:
	-	`sha256:73883f5df73fbf47cd0e0b6694a110bff7a55e9e9ef0c51d2dca97848e31255a`  
		Last Modified: Mon, 12 Oct 2026 20:12:32 GMT  
		Size: 17.4 MB (17415896 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cab566f9ae27d529a7a07ea82e9029f7afc2542e3f873f26962cf83b3f53d157`  
		Last Modified: Mon, 12 Oct 2026 20:12:32 GMT  
		Size: 35.6 KB (35639 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:26-oracle`

```console
$ docker pull mysql@sha256:893418c8a7a34c60d2d961cc30ef136095da141478562ed2101ae3f5faba9c3f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:26-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:9bd5e8db9c913e82eefd16b556ca3e4e12ef25ff1b8507b73d04cf754b6b8f47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.6 MB (271629275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b130421b8c710f5c18f3bcce8d04d710616d55d747dcba1cb78886d4d5fc698`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 12 Oct 2026 19:11:06 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 12 Oct 2026 19:11:06 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 20:09:50 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 12 Oct 2026 20:09:52 GMT
ENV GOSU_VERSION=1.19
# Mon, 12 Oct 2026 20:09:52 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 12 Oct 2026 20:10:24 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 12 Oct 2026 20:10:25 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 12 Oct 2026 20:10:25 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 12 Oct 2026 20:10:25 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Mon, 12 Oct 2026 20:10:25 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 12 Oct 2026 20:11:00 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 12 Oct 2026 20:11:00 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 12 Oct 2026 20:11:00 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Mon, 12 Oct 2026 20:11:44 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 12 Oct 2026 20:11:44 GMT
VOLUME [/var/lib/mysql]
# Mon, 12 Oct 2026 20:11:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 12 Oct 2026 20:11:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 20:11:44 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 12 Oct 2026 20:11:44 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:e896da32f635ced58051c434f6d70ebdf95efaa199d796f16689ad6a7393d30e`  
		Last Modified: Mon, 12 Oct 2026 19:11:17 GMT  
		Size: 47.2 MB (47247118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:029a2ef99eb4bd84989e14407a162e85dd43c39f152800636b7f2f34e08e1d35`  
		Last Modified: Mon, 12 Oct 2026 20:12:15 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a798338f8ea05e3f1ee9fcbc5cf7fa005292ea5a19e57cb725d2f4b560f1e78e`  
		Last Modified: Mon, 12 Oct 2026 20:12:15 GMT  
		Size: 783.6 KB (783559 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d41b77484029035b0416172a7a516135161db36a5c4089fcbcb5450789ea5fb8`  
		Last Modified: Mon, 12 Oct 2026 20:12:15 GMT  
		Size: 6.2 MB (6192268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d057682167d504e74bea3542dbba561f97cd19d60d931145d6b4cfcc50074d4f`  
		Last Modified: Mon, 12 Oct 2026 20:12:15 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecb59e1f4a8f87cb477397c1d7876cfb480f75a147dba1dfd6df5bb6de9a8904`  
		Last Modified: Mon, 12 Oct 2026 20:12:16 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c233331fdce73aacd8a8696a5476a8a0ca4a5ad291e71142c590d3f0c0f0e5d7`  
		Last Modified: Mon, 12 Oct 2026 20:12:18 GMT  
		Size: 57.4 MB (57438613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a710d5def08112e5495c86fc8ab9cd14af67e80e7f14350e22d209bed54eff7`  
		Last Modified: Mon, 12 Oct 2026 20:12:17 GMT  
		Size: 326.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6526c3b0b71a698d53ca661298c1bd3957fcbebffd234caefec7cd008074c03`  
		Last Modified: Mon, 12 Oct 2026 20:12:20 GMT  
		Size: 160.0 MB (159958334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:514ea420f997205256cd21982069f6b15b59e32a5e172ce1e08f8aeb802201a8`  
		Last Modified: Mon, 12 Oct 2026 20:12:18 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:6b1cb3787a01f23b2e9783d50f35c7c382799725630e22b5010820c884712be2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17452721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08175b2f44862eeb54a3be1437b232b1eb8aac57b359d74b8368fa69a579b725`

```dockerfile
```

-	Layers:
	-	`sha256:2659fa5447a2f0a95876099600d3ba81d2b2c72cb483f3255e0b20da0c05eab4`  
		Last Modified: Mon, 12 Oct 2026 20:12:16 GMT  
		Size: 17.4 MB (17417423 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9e6faf632f7d39b2fc61fe73a05a2c7a082e8369ae5ff9023d74e7f852fb1355`  
		Last Modified: Mon, 12 Oct 2026 20:12:15 GMT  
		Size: 35.3 KB (35298 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:26-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:46911fe021d2e75f6724959921599f5cdfd9a3758e4b171ba28034e174e0eb4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.0 MB (267993703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08f6250f9f8f653d8afb142b136a6b1d2177827276e5fd74974f3c3c5f190522`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 12 Oct 2026 19:10:25 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 12 Oct 2026 19:10:25 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 20:09:37 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 12 Oct 2026 20:09:39 GMT
ENV GOSU_VERSION=1.19
# Mon, 12 Oct 2026 20:09:39 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 12 Oct 2026 20:10:18 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 12 Oct 2026 20:10:19 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 12 Oct 2026 20:10:19 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 12 Oct 2026 20:10:19 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Mon, 12 Oct 2026 20:10:19 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 12 Oct 2026 20:11:01 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 12 Oct 2026 20:11:01 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 12 Oct 2026 20:11:01 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Mon, 12 Oct 2026 20:11:55 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 12 Oct 2026 20:11:55 GMT
VOLUME [/var/lib/mysql]
# Mon, 12 Oct 2026 20:11:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 12 Oct 2026 20:11:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 20:11:55 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 12 Oct 2026 20:11:55 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b1be88c1a95445e6111ba7b3bceed48f958b8f6eb2ff1c4b27f45fa7b0f45de9`  
		Last Modified: Mon, 12 Oct 2026 19:10:36 GMT  
		Size: 45.8 MB (45800687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0399a56949deaaf20c00b16050b77d7a63225e27be68c9ca385d0c1c880f0135`  
		Last Modified: Mon, 12 Oct 2026 20:12:31 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84bf64211785ff7a6c43b8e6a5a3709415938d2513f9e701416d4bcf62d531df`  
		Last Modified: Mon, 12 Oct 2026 20:12:32 GMT  
		Size: 737.5 KB (737522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7195dce5dfb48948082c8e356a5d15249f243f19f36574fcf0bb8502f0658d81`  
		Last Modified: Mon, 12 Oct 2026 20:12:32 GMT  
		Size: 5.8 MB (5809858 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67e4017b162aed8a9d3ab7530517eb44f352124cc95aa4f88c5562d014f88cad`  
		Last Modified: Mon, 12 Oct 2026 20:12:32 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d95985f6fb94910d133f5e8f92db9883ef3c4c586eb90644791a690f4bc0dc7b`  
		Last Modified: Mon, 12 Oct 2026 20:12:33 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b429d7e53711dbddcc2bf8fa1f38831ad39777485d80ab7f83050b744413ade6`  
		Last Modified: Mon, 12 Oct 2026 20:12:35 GMT  
		Size: 57.4 MB (57414294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ad383cc3314a302763fcfef893db025ea66afcdede0d41fd7410f67781a67a6`  
		Last Modified: Mon, 12 Oct 2026 20:12:33 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16c0cf53a295c474087f466e675f33b6dc1a049673660cb94c19d428f9ee3176`  
		Last Modified: Mon, 12 Oct 2026 20:12:37 GMT  
		Size: 158.2 MB (158221965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae7f2c27109c9b7a53338cc3c94f11c49cbd91d2499a4b427bbfe50c54b37887`  
		Last Modified: Mon, 12 Oct 2026 20:12:34 GMT  
		Size: 5.2 KB (5221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:6abc841a93694bee7d74bb63fd917c9ef474a4569323034acb56e088abf1eca4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17451535 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15145fbf881023c0d02c304531029c80d34d1f81e9ada40099d7996a5d568389`

```dockerfile
```

-	Layers:
	-	`sha256:73883f5df73fbf47cd0e0b6694a110bff7a55e9e9ef0c51d2dca97848e31255a`  
		Last Modified: Mon, 12 Oct 2026 20:12:32 GMT  
		Size: 17.4 MB (17415896 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cab566f9ae27d529a7a07ea82e9029f7afc2542e3f873f26962cf83b3f53d157`  
		Last Modified: Mon, 12 Oct 2026 20:12:32 GMT  
		Size: 35.6 KB (35639 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:26-oraclelinux9`

```console
$ docker pull mysql@sha256:893418c8a7a34c60d2d961cc30ef136095da141478562ed2101ae3f5faba9c3f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:26-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:9bd5e8db9c913e82eefd16b556ca3e4e12ef25ff1b8507b73d04cf754b6b8f47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.6 MB (271629275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b130421b8c710f5c18f3bcce8d04d710616d55d747dcba1cb78886d4d5fc698`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 12 Oct 2026 19:11:06 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 12 Oct 2026 19:11:06 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 20:09:50 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 12 Oct 2026 20:09:52 GMT
ENV GOSU_VERSION=1.19
# Mon, 12 Oct 2026 20:09:52 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 12 Oct 2026 20:10:24 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 12 Oct 2026 20:10:25 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 12 Oct 2026 20:10:25 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 12 Oct 2026 20:10:25 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Mon, 12 Oct 2026 20:10:25 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 12 Oct 2026 20:11:00 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 12 Oct 2026 20:11:00 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 12 Oct 2026 20:11:00 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Mon, 12 Oct 2026 20:11:44 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 12 Oct 2026 20:11:44 GMT
VOLUME [/var/lib/mysql]
# Mon, 12 Oct 2026 20:11:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 12 Oct 2026 20:11:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 20:11:44 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 12 Oct 2026 20:11:44 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:e896da32f635ced58051c434f6d70ebdf95efaa199d796f16689ad6a7393d30e`  
		Last Modified: Mon, 12 Oct 2026 19:11:17 GMT  
		Size: 47.2 MB (47247118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:029a2ef99eb4bd84989e14407a162e85dd43c39f152800636b7f2f34e08e1d35`  
		Last Modified: Mon, 12 Oct 2026 20:12:15 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a798338f8ea05e3f1ee9fcbc5cf7fa005292ea5a19e57cb725d2f4b560f1e78e`  
		Last Modified: Mon, 12 Oct 2026 20:12:15 GMT  
		Size: 783.6 KB (783559 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d41b77484029035b0416172a7a516135161db36a5c4089fcbcb5450789ea5fb8`  
		Last Modified: Mon, 12 Oct 2026 20:12:15 GMT  
		Size: 6.2 MB (6192268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d057682167d504e74bea3542dbba561f97cd19d60d931145d6b4cfcc50074d4f`  
		Last Modified: Mon, 12 Oct 2026 20:12:15 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecb59e1f4a8f87cb477397c1d7876cfb480f75a147dba1dfd6df5bb6de9a8904`  
		Last Modified: Mon, 12 Oct 2026 20:12:16 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c233331fdce73aacd8a8696a5476a8a0ca4a5ad291e71142c590d3f0c0f0e5d7`  
		Last Modified: Mon, 12 Oct 2026 20:12:18 GMT  
		Size: 57.4 MB (57438613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a710d5def08112e5495c86fc8ab9cd14af67e80e7f14350e22d209bed54eff7`  
		Last Modified: Mon, 12 Oct 2026 20:12:17 GMT  
		Size: 326.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6526c3b0b71a698d53ca661298c1bd3957fcbebffd234caefec7cd008074c03`  
		Last Modified: Mon, 12 Oct 2026 20:12:20 GMT  
		Size: 160.0 MB (159958334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:514ea420f997205256cd21982069f6b15b59e32a5e172ce1e08f8aeb802201a8`  
		Last Modified: Mon, 12 Oct 2026 20:12:18 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:6b1cb3787a01f23b2e9783d50f35c7c382799725630e22b5010820c884712be2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17452721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08175b2f44862eeb54a3be1437b232b1eb8aac57b359d74b8368fa69a579b725`

```dockerfile
```

-	Layers:
	-	`sha256:2659fa5447a2f0a95876099600d3ba81d2b2c72cb483f3255e0b20da0c05eab4`  
		Last Modified: Mon, 12 Oct 2026 20:12:16 GMT  
		Size: 17.4 MB (17417423 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9e6faf632f7d39b2fc61fe73a05a2c7a082e8369ae5ff9023d74e7f852fb1355`  
		Last Modified: Mon, 12 Oct 2026 20:12:15 GMT  
		Size: 35.3 KB (35298 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:26-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:46911fe021d2e75f6724959921599f5cdfd9a3758e4b171ba28034e174e0eb4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.0 MB (267993703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08f6250f9f8f653d8afb142b136a6b1d2177827276e5fd74974f3c3c5f190522`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 12 Oct 2026 19:10:25 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 12 Oct 2026 19:10:25 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 20:09:37 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 12 Oct 2026 20:09:39 GMT
ENV GOSU_VERSION=1.19
# Mon, 12 Oct 2026 20:09:39 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 12 Oct 2026 20:10:18 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 12 Oct 2026 20:10:19 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 12 Oct 2026 20:10:19 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 12 Oct 2026 20:10:19 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Mon, 12 Oct 2026 20:10:19 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 12 Oct 2026 20:11:01 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 12 Oct 2026 20:11:01 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 12 Oct 2026 20:11:01 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Mon, 12 Oct 2026 20:11:55 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 12 Oct 2026 20:11:55 GMT
VOLUME [/var/lib/mysql]
# Mon, 12 Oct 2026 20:11:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 12 Oct 2026 20:11:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 20:11:55 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 12 Oct 2026 20:11:55 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b1be88c1a95445e6111ba7b3bceed48f958b8f6eb2ff1c4b27f45fa7b0f45de9`  
		Last Modified: Mon, 12 Oct 2026 19:10:36 GMT  
		Size: 45.8 MB (45800687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0399a56949deaaf20c00b16050b77d7a63225e27be68c9ca385d0c1c880f0135`  
		Last Modified: Mon, 12 Oct 2026 20:12:31 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84bf64211785ff7a6c43b8e6a5a3709415938d2513f9e701416d4bcf62d531df`  
		Last Modified: Mon, 12 Oct 2026 20:12:32 GMT  
		Size: 737.5 KB (737522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7195dce5dfb48948082c8e356a5d15249f243f19f36574fcf0bb8502f0658d81`  
		Last Modified: Mon, 12 Oct 2026 20:12:32 GMT  
		Size: 5.8 MB (5809858 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67e4017b162aed8a9d3ab7530517eb44f352124cc95aa4f88c5562d014f88cad`  
		Last Modified: Mon, 12 Oct 2026 20:12:32 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d95985f6fb94910d133f5e8f92db9883ef3c4c586eb90644791a690f4bc0dc7b`  
		Last Modified: Mon, 12 Oct 2026 20:12:33 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b429d7e53711dbddcc2bf8fa1f38831ad39777485d80ab7f83050b744413ade6`  
		Last Modified: Mon, 12 Oct 2026 20:12:35 GMT  
		Size: 57.4 MB (57414294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ad383cc3314a302763fcfef893db025ea66afcdede0d41fd7410f67781a67a6`  
		Last Modified: Mon, 12 Oct 2026 20:12:33 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16c0cf53a295c474087f466e675f33b6dc1a049673660cb94c19d428f9ee3176`  
		Last Modified: Mon, 12 Oct 2026 20:12:37 GMT  
		Size: 158.2 MB (158221965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae7f2c27109c9b7a53338cc3c94f11c49cbd91d2499a4b427bbfe50c54b37887`  
		Last Modified: Mon, 12 Oct 2026 20:12:34 GMT  
		Size: 5.2 KB (5221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:6abc841a93694bee7d74bb63fd917c9ef474a4569323034acb56e088abf1eca4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17451535 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15145fbf881023c0d02c304531029c80d34d1f81e9ada40099d7996a5d568389`

```dockerfile
```

-	Layers:
	-	`sha256:73883f5df73fbf47cd0e0b6694a110bff7a55e9e9ef0c51d2dca97848e31255a`  
		Last Modified: Mon, 12 Oct 2026 20:12:32 GMT  
		Size: 17.4 MB (17415896 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cab566f9ae27d529a7a07ea82e9029f7afc2542e3f873f26962cf83b3f53d157`  
		Last Modified: Mon, 12 Oct 2026 20:12:32 GMT  
		Size: 35.6 KB (35639 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:26.7`

```console
$ docker pull mysql@sha256:893418c8a7a34c60d2d961cc30ef136095da141478562ed2101ae3f5faba9c3f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:26.7` - linux; amd64

```console
$ docker pull mysql@sha256:9bd5e8db9c913e82eefd16b556ca3e4e12ef25ff1b8507b73d04cf754b6b8f47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.6 MB (271629275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b130421b8c710f5c18f3bcce8d04d710616d55d747dcba1cb78886d4d5fc698`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 12 Oct 2026 19:11:06 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 12 Oct 2026 19:11:06 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 20:09:50 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 12 Oct 2026 20:09:52 GMT
ENV GOSU_VERSION=1.19
# Mon, 12 Oct 2026 20:09:52 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 12 Oct 2026 20:10:24 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 12 Oct 2026 20:10:25 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 12 Oct 2026 20:10:25 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 12 Oct 2026 20:10:25 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Mon, 12 Oct 2026 20:10:25 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 12 Oct 2026 20:11:00 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 12 Oct 2026 20:11:00 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 12 Oct 2026 20:11:00 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Mon, 12 Oct 2026 20:11:44 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 12 Oct 2026 20:11:44 GMT
VOLUME [/var/lib/mysql]
# Mon, 12 Oct 2026 20:11:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 12 Oct 2026 20:11:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 20:11:44 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 12 Oct 2026 20:11:44 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:e896da32f635ced58051c434f6d70ebdf95efaa199d796f16689ad6a7393d30e`  
		Last Modified: Mon, 12 Oct 2026 19:11:17 GMT  
		Size: 47.2 MB (47247118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:029a2ef99eb4bd84989e14407a162e85dd43c39f152800636b7f2f34e08e1d35`  
		Last Modified: Mon, 12 Oct 2026 20:12:15 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a798338f8ea05e3f1ee9fcbc5cf7fa005292ea5a19e57cb725d2f4b560f1e78e`  
		Last Modified: Mon, 12 Oct 2026 20:12:15 GMT  
		Size: 783.6 KB (783559 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d41b77484029035b0416172a7a516135161db36a5c4089fcbcb5450789ea5fb8`  
		Last Modified: Mon, 12 Oct 2026 20:12:15 GMT  
		Size: 6.2 MB (6192268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d057682167d504e74bea3542dbba561f97cd19d60d931145d6b4cfcc50074d4f`  
		Last Modified: Mon, 12 Oct 2026 20:12:15 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecb59e1f4a8f87cb477397c1d7876cfb480f75a147dba1dfd6df5bb6de9a8904`  
		Last Modified: Mon, 12 Oct 2026 20:12:16 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c233331fdce73aacd8a8696a5476a8a0ca4a5ad291e71142c590d3f0c0f0e5d7`  
		Last Modified: Mon, 12 Oct 2026 20:12:18 GMT  
		Size: 57.4 MB (57438613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a710d5def08112e5495c86fc8ab9cd14af67e80e7f14350e22d209bed54eff7`  
		Last Modified: Mon, 12 Oct 2026 20:12:17 GMT  
		Size: 326.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6526c3b0b71a698d53ca661298c1bd3957fcbebffd234caefec7cd008074c03`  
		Last Modified: Mon, 12 Oct 2026 20:12:20 GMT  
		Size: 160.0 MB (159958334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:514ea420f997205256cd21982069f6b15b59e32a5e172ce1e08f8aeb802201a8`  
		Last Modified: Mon, 12 Oct 2026 20:12:18 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26.7` - unknown; unknown

```console
$ docker pull mysql@sha256:6b1cb3787a01f23b2e9783d50f35c7c382799725630e22b5010820c884712be2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17452721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08175b2f44862eeb54a3be1437b232b1eb8aac57b359d74b8368fa69a579b725`

```dockerfile
```

-	Layers:
	-	`sha256:2659fa5447a2f0a95876099600d3ba81d2b2c72cb483f3255e0b20da0c05eab4`  
		Last Modified: Mon, 12 Oct 2026 20:12:16 GMT  
		Size: 17.4 MB (17417423 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9e6faf632f7d39b2fc61fe73a05a2c7a082e8369ae5ff9023d74e7f852fb1355`  
		Last Modified: Mon, 12 Oct 2026 20:12:15 GMT  
		Size: 35.3 KB (35298 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:26.7` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:46911fe021d2e75f6724959921599f5cdfd9a3758e4b171ba28034e174e0eb4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.0 MB (267993703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08f6250f9f8f653d8afb142b136a6b1d2177827276e5fd74974f3c3c5f190522`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 12 Oct 2026 19:10:25 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 12 Oct 2026 19:10:25 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 20:09:37 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 12 Oct 2026 20:09:39 GMT
ENV GOSU_VERSION=1.19
# Mon, 12 Oct 2026 20:09:39 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 12 Oct 2026 20:10:18 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 12 Oct 2026 20:10:19 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 12 Oct 2026 20:10:19 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 12 Oct 2026 20:10:19 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Mon, 12 Oct 2026 20:10:19 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 12 Oct 2026 20:11:01 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 12 Oct 2026 20:11:01 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 12 Oct 2026 20:11:01 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Mon, 12 Oct 2026 20:11:55 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 12 Oct 2026 20:11:55 GMT
VOLUME [/var/lib/mysql]
# Mon, 12 Oct 2026 20:11:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 12 Oct 2026 20:11:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 20:11:55 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 12 Oct 2026 20:11:55 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b1be88c1a95445e6111ba7b3bceed48f958b8f6eb2ff1c4b27f45fa7b0f45de9`  
		Last Modified: Mon, 12 Oct 2026 19:10:36 GMT  
		Size: 45.8 MB (45800687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0399a56949deaaf20c00b16050b77d7a63225e27be68c9ca385d0c1c880f0135`  
		Last Modified: Mon, 12 Oct 2026 20:12:31 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84bf64211785ff7a6c43b8e6a5a3709415938d2513f9e701416d4bcf62d531df`  
		Last Modified: Mon, 12 Oct 2026 20:12:32 GMT  
		Size: 737.5 KB (737522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7195dce5dfb48948082c8e356a5d15249f243f19f36574fcf0bb8502f0658d81`  
		Last Modified: Mon, 12 Oct 2026 20:12:32 GMT  
		Size: 5.8 MB (5809858 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67e4017b162aed8a9d3ab7530517eb44f352124cc95aa4f88c5562d014f88cad`  
		Last Modified: Mon, 12 Oct 2026 20:12:32 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d95985f6fb94910d133f5e8f92db9883ef3c4c586eb90644791a690f4bc0dc7b`  
		Last Modified: Mon, 12 Oct 2026 20:12:33 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b429d7e53711dbddcc2bf8fa1f38831ad39777485d80ab7f83050b744413ade6`  
		Last Modified: Mon, 12 Oct 2026 20:12:35 GMT  
		Size: 57.4 MB (57414294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ad383cc3314a302763fcfef893db025ea66afcdede0d41fd7410f67781a67a6`  
		Last Modified: Mon, 12 Oct 2026 20:12:33 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16c0cf53a295c474087f466e675f33b6dc1a049673660cb94c19d428f9ee3176`  
		Last Modified: Mon, 12 Oct 2026 20:12:37 GMT  
		Size: 158.2 MB (158221965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae7f2c27109c9b7a53338cc3c94f11c49cbd91d2499a4b427bbfe50c54b37887`  
		Last Modified: Mon, 12 Oct 2026 20:12:34 GMT  
		Size: 5.2 KB (5221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26.7` - unknown; unknown

```console
$ docker pull mysql@sha256:6abc841a93694bee7d74bb63fd917c9ef474a4569323034acb56e088abf1eca4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17451535 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15145fbf881023c0d02c304531029c80d34d1f81e9ada40099d7996a5d568389`

```dockerfile
```

-	Layers:
	-	`sha256:73883f5df73fbf47cd0e0b6694a110bff7a55e9e9ef0c51d2dca97848e31255a`  
		Last Modified: Mon, 12 Oct 2026 20:12:32 GMT  
		Size: 17.4 MB (17415896 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cab566f9ae27d529a7a07ea82e9029f7afc2542e3f873f26962cf83b3f53d157`  
		Last Modified: Mon, 12 Oct 2026 20:12:32 GMT  
		Size: 35.6 KB (35639 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:26.7-oracle`

```console
$ docker pull mysql@sha256:893418c8a7a34c60d2d961cc30ef136095da141478562ed2101ae3f5faba9c3f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:26.7-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:9bd5e8db9c913e82eefd16b556ca3e4e12ef25ff1b8507b73d04cf754b6b8f47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.6 MB (271629275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b130421b8c710f5c18f3bcce8d04d710616d55d747dcba1cb78886d4d5fc698`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 12 Oct 2026 19:11:06 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 12 Oct 2026 19:11:06 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 20:09:50 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 12 Oct 2026 20:09:52 GMT
ENV GOSU_VERSION=1.19
# Mon, 12 Oct 2026 20:09:52 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 12 Oct 2026 20:10:24 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 12 Oct 2026 20:10:25 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 12 Oct 2026 20:10:25 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 12 Oct 2026 20:10:25 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Mon, 12 Oct 2026 20:10:25 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 12 Oct 2026 20:11:00 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 12 Oct 2026 20:11:00 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 12 Oct 2026 20:11:00 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Mon, 12 Oct 2026 20:11:44 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 12 Oct 2026 20:11:44 GMT
VOLUME [/var/lib/mysql]
# Mon, 12 Oct 2026 20:11:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 12 Oct 2026 20:11:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 20:11:44 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 12 Oct 2026 20:11:44 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:e896da32f635ced58051c434f6d70ebdf95efaa199d796f16689ad6a7393d30e`  
		Last Modified: Mon, 12 Oct 2026 19:11:17 GMT  
		Size: 47.2 MB (47247118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:029a2ef99eb4bd84989e14407a162e85dd43c39f152800636b7f2f34e08e1d35`  
		Last Modified: Mon, 12 Oct 2026 20:12:15 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a798338f8ea05e3f1ee9fcbc5cf7fa005292ea5a19e57cb725d2f4b560f1e78e`  
		Last Modified: Mon, 12 Oct 2026 20:12:15 GMT  
		Size: 783.6 KB (783559 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d41b77484029035b0416172a7a516135161db36a5c4089fcbcb5450789ea5fb8`  
		Last Modified: Mon, 12 Oct 2026 20:12:15 GMT  
		Size: 6.2 MB (6192268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d057682167d504e74bea3542dbba561f97cd19d60d931145d6b4cfcc50074d4f`  
		Last Modified: Mon, 12 Oct 2026 20:12:15 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecb59e1f4a8f87cb477397c1d7876cfb480f75a147dba1dfd6df5bb6de9a8904`  
		Last Modified: Mon, 12 Oct 2026 20:12:16 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c233331fdce73aacd8a8696a5476a8a0ca4a5ad291e71142c590d3f0c0f0e5d7`  
		Last Modified: Mon, 12 Oct 2026 20:12:18 GMT  
		Size: 57.4 MB (57438613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a710d5def08112e5495c86fc8ab9cd14af67e80e7f14350e22d209bed54eff7`  
		Last Modified: Mon, 12 Oct 2026 20:12:17 GMT  
		Size: 326.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6526c3b0b71a698d53ca661298c1bd3957fcbebffd234caefec7cd008074c03`  
		Last Modified: Mon, 12 Oct 2026 20:12:20 GMT  
		Size: 160.0 MB (159958334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:514ea420f997205256cd21982069f6b15b59e32a5e172ce1e08f8aeb802201a8`  
		Last Modified: Mon, 12 Oct 2026 20:12:18 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26.7-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:6b1cb3787a01f23b2e9783d50f35c7c382799725630e22b5010820c884712be2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17452721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08175b2f44862eeb54a3be1437b232b1eb8aac57b359d74b8368fa69a579b725`

```dockerfile
```

-	Layers:
	-	`sha256:2659fa5447a2f0a95876099600d3ba81d2b2c72cb483f3255e0b20da0c05eab4`  
		Last Modified: Mon, 12 Oct 2026 20:12:16 GMT  
		Size: 17.4 MB (17417423 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9e6faf632f7d39b2fc61fe73a05a2c7a082e8369ae5ff9023d74e7f852fb1355`  
		Last Modified: Mon, 12 Oct 2026 20:12:15 GMT  
		Size: 35.3 KB (35298 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:26.7-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:46911fe021d2e75f6724959921599f5cdfd9a3758e4b171ba28034e174e0eb4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.0 MB (267993703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08f6250f9f8f653d8afb142b136a6b1d2177827276e5fd74974f3c3c5f190522`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 12 Oct 2026 19:10:25 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 12 Oct 2026 19:10:25 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 20:09:37 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 12 Oct 2026 20:09:39 GMT
ENV GOSU_VERSION=1.19
# Mon, 12 Oct 2026 20:09:39 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 12 Oct 2026 20:10:18 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 12 Oct 2026 20:10:19 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 12 Oct 2026 20:10:19 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 12 Oct 2026 20:10:19 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Mon, 12 Oct 2026 20:10:19 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 12 Oct 2026 20:11:01 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 12 Oct 2026 20:11:01 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 12 Oct 2026 20:11:01 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Mon, 12 Oct 2026 20:11:55 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 12 Oct 2026 20:11:55 GMT
VOLUME [/var/lib/mysql]
# Mon, 12 Oct 2026 20:11:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 12 Oct 2026 20:11:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 20:11:55 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 12 Oct 2026 20:11:55 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b1be88c1a95445e6111ba7b3bceed48f958b8f6eb2ff1c4b27f45fa7b0f45de9`  
		Last Modified: Mon, 12 Oct 2026 19:10:36 GMT  
		Size: 45.8 MB (45800687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0399a56949deaaf20c00b16050b77d7a63225e27be68c9ca385d0c1c880f0135`  
		Last Modified: Mon, 12 Oct 2026 20:12:31 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84bf64211785ff7a6c43b8e6a5a3709415938d2513f9e701416d4bcf62d531df`  
		Last Modified: Mon, 12 Oct 2026 20:12:32 GMT  
		Size: 737.5 KB (737522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7195dce5dfb48948082c8e356a5d15249f243f19f36574fcf0bb8502f0658d81`  
		Last Modified: Mon, 12 Oct 2026 20:12:32 GMT  
		Size: 5.8 MB (5809858 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67e4017b162aed8a9d3ab7530517eb44f352124cc95aa4f88c5562d014f88cad`  
		Last Modified: Mon, 12 Oct 2026 20:12:32 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d95985f6fb94910d133f5e8f92db9883ef3c4c586eb90644791a690f4bc0dc7b`  
		Last Modified: Mon, 12 Oct 2026 20:12:33 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b429d7e53711dbddcc2bf8fa1f38831ad39777485d80ab7f83050b744413ade6`  
		Last Modified: Mon, 12 Oct 2026 20:12:35 GMT  
		Size: 57.4 MB (57414294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ad383cc3314a302763fcfef893db025ea66afcdede0d41fd7410f67781a67a6`  
		Last Modified: Mon, 12 Oct 2026 20:12:33 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16c0cf53a295c474087f466e675f33b6dc1a049673660cb94c19d428f9ee3176`  
		Last Modified: Mon, 12 Oct 2026 20:12:37 GMT  
		Size: 158.2 MB (158221965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae7f2c27109c9b7a53338cc3c94f11c49cbd91d2499a4b427bbfe50c54b37887`  
		Last Modified: Mon, 12 Oct 2026 20:12:34 GMT  
		Size: 5.2 KB (5221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26.7-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:6abc841a93694bee7d74bb63fd917c9ef474a4569323034acb56e088abf1eca4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17451535 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15145fbf881023c0d02c304531029c80d34d1f81e9ada40099d7996a5d568389`

```dockerfile
```

-	Layers:
	-	`sha256:73883f5df73fbf47cd0e0b6694a110bff7a55e9e9ef0c51d2dca97848e31255a`  
		Last Modified: Mon, 12 Oct 2026 20:12:32 GMT  
		Size: 17.4 MB (17415896 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cab566f9ae27d529a7a07ea82e9029f7afc2542e3f873f26962cf83b3f53d157`  
		Last Modified: Mon, 12 Oct 2026 20:12:32 GMT  
		Size: 35.6 KB (35639 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:26.7-oraclelinux9`

```console
$ docker pull mysql@sha256:893418c8a7a34c60d2d961cc30ef136095da141478562ed2101ae3f5faba9c3f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:26.7-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:9bd5e8db9c913e82eefd16b556ca3e4e12ef25ff1b8507b73d04cf754b6b8f47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.6 MB (271629275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b130421b8c710f5c18f3bcce8d04d710616d55d747dcba1cb78886d4d5fc698`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 12 Oct 2026 19:11:06 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 12 Oct 2026 19:11:06 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 20:09:50 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 12 Oct 2026 20:09:52 GMT
ENV GOSU_VERSION=1.19
# Mon, 12 Oct 2026 20:09:52 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 12 Oct 2026 20:10:24 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 12 Oct 2026 20:10:25 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 12 Oct 2026 20:10:25 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 12 Oct 2026 20:10:25 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Mon, 12 Oct 2026 20:10:25 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 12 Oct 2026 20:11:00 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 12 Oct 2026 20:11:00 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 12 Oct 2026 20:11:00 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Mon, 12 Oct 2026 20:11:44 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 12 Oct 2026 20:11:44 GMT
VOLUME [/var/lib/mysql]
# Mon, 12 Oct 2026 20:11:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 12 Oct 2026 20:11:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 20:11:44 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 12 Oct 2026 20:11:44 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:e896da32f635ced58051c434f6d70ebdf95efaa199d796f16689ad6a7393d30e`  
		Last Modified: Mon, 12 Oct 2026 19:11:17 GMT  
		Size: 47.2 MB (47247118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:029a2ef99eb4bd84989e14407a162e85dd43c39f152800636b7f2f34e08e1d35`  
		Last Modified: Mon, 12 Oct 2026 20:12:15 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a798338f8ea05e3f1ee9fcbc5cf7fa005292ea5a19e57cb725d2f4b560f1e78e`  
		Last Modified: Mon, 12 Oct 2026 20:12:15 GMT  
		Size: 783.6 KB (783559 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d41b77484029035b0416172a7a516135161db36a5c4089fcbcb5450789ea5fb8`  
		Last Modified: Mon, 12 Oct 2026 20:12:15 GMT  
		Size: 6.2 MB (6192268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d057682167d504e74bea3542dbba561f97cd19d60d931145d6b4cfcc50074d4f`  
		Last Modified: Mon, 12 Oct 2026 20:12:15 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecb59e1f4a8f87cb477397c1d7876cfb480f75a147dba1dfd6df5bb6de9a8904`  
		Last Modified: Mon, 12 Oct 2026 20:12:16 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c233331fdce73aacd8a8696a5476a8a0ca4a5ad291e71142c590d3f0c0f0e5d7`  
		Last Modified: Mon, 12 Oct 2026 20:12:18 GMT  
		Size: 57.4 MB (57438613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a710d5def08112e5495c86fc8ab9cd14af67e80e7f14350e22d209bed54eff7`  
		Last Modified: Mon, 12 Oct 2026 20:12:17 GMT  
		Size: 326.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6526c3b0b71a698d53ca661298c1bd3957fcbebffd234caefec7cd008074c03`  
		Last Modified: Mon, 12 Oct 2026 20:12:20 GMT  
		Size: 160.0 MB (159958334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:514ea420f997205256cd21982069f6b15b59e32a5e172ce1e08f8aeb802201a8`  
		Last Modified: Mon, 12 Oct 2026 20:12:18 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26.7-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:6b1cb3787a01f23b2e9783d50f35c7c382799725630e22b5010820c884712be2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17452721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08175b2f44862eeb54a3be1437b232b1eb8aac57b359d74b8368fa69a579b725`

```dockerfile
```

-	Layers:
	-	`sha256:2659fa5447a2f0a95876099600d3ba81d2b2c72cb483f3255e0b20da0c05eab4`  
		Last Modified: Mon, 12 Oct 2026 20:12:16 GMT  
		Size: 17.4 MB (17417423 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9e6faf632f7d39b2fc61fe73a05a2c7a082e8369ae5ff9023d74e7f852fb1355`  
		Last Modified: Mon, 12 Oct 2026 20:12:15 GMT  
		Size: 35.3 KB (35298 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:26.7-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:46911fe021d2e75f6724959921599f5cdfd9a3758e4b171ba28034e174e0eb4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.0 MB (267993703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08f6250f9f8f653d8afb142b136a6b1d2177827276e5fd74974f3c3c5f190522`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 12 Oct 2026 19:10:25 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 12 Oct 2026 19:10:25 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 20:09:37 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 12 Oct 2026 20:09:39 GMT
ENV GOSU_VERSION=1.19
# Mon, 12 Oct 2026 20:09:39 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 12 Oct 2026 20:10:18 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 12 Oct 2026 20:10:19 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 12 Oct 2026 20:10:19 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 12 Oct 2026 20:10:19 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Mon, 12 Oct 2026 20:10:19 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 12 Oct 2026 20:11:01 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 12 Oct 2026 20:11:01 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 12 Oct 2026 20:11:01 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Mon, 12 Oct 2026 20:11:55 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 12 Oct 2026 20:11:55 GMT
VOLUME [/var/lib/mysql]
# Mon, 12 Oct 2026 20:11:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 12 Oct 2026 20:11:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 20:11:55 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 12 Oct 2026 20:11:55 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b1be88c1a95445e6111ba7b3bceed48f958b8f6eb2ff1c4b27f45fa7b0f45de9`  
		Last Modified: Mon, 12 Oct 2026 19:10:36 GMT  
		Size: 45.8 MB (45800687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0399a56949deaaf20c00b16050b77d7a63225e27be68c9ca385d0c1c880f0135`  
		Last Modified: Mon, 12 Oct 2026 20:12:31 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84bf64211785ff7a6c43b8e6a5a3709415938d2513f9e701416d4bcf62d531df`  
		Last Modified: Mon, 12 Oct 2026 20:12:32 GMT  
		Size: 737.5 KB (737522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7195dce5dfb48948082c8e356a5d15249f243f19f36574fcf0bb8502f0658d81`  
		Last Modified: Mon, 12 Oct 2026 20:12:32 GMT  
		Size: 5.8 MB (5809858 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67e4017b162aed8a9d3ab7530517eb44f352124cc95aa4f88c5562d014f88cad`  
		Last Modified: Mon, 12 Oct 2026 20:12:32 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d95985f6fb94910d133f5e8f92db9883ef3c4c586eb90644791a690f4bc0dc7b`  
		Last Modified: Mon, 12 Oct 2026 20:12:33 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b429d7e53711dbddcc2bf8fa1f38831ad39777485d80ab7f83050b744413ade6`  
		Last Modified: Mon, 12 Oct 2026 20:12:35 GMT  
		Size: 57.4 MB (57414294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ad383cc3314a302763fcfef893db025ea66afcdede0d41fd7410f67781a67a6`  
		Last Modified: Mon, 12 Oct 2026 20:12:33 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16c0cf53a295c474087f466e675f33b6dc1a049673660cb94c19d428f9ee3176`  
		Last Modified: Mon, 12 Oct 2026 20:12:37 GMT  
		Size: 158.2 MB (158221965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae7f2c27109c9b7a53338cc3c94f11c49cbd91d2499a4b427bbfe50c54b37887`  
		Last Modified: Mon, 12 Oct 2026 20:12:34 GMT  
		Size: 5.2 KB (5221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26.7-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:6abc841a93694bee7d74bb63fd917c9ef474a4569323034acb56e088abf1eca4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17451535 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15145fbf881023c0d02c304531029c80d34d1f81e9ada40099d7996a5d568389`

```dockerfile
```

-	Layers:
	-	`sha256:73883f5df73fbf47cd0e0b6694a110bff7a55e9e9ef0c51d2dca97848e31255a`  
		Last Modified: Mon, 12 Oct 2026 20:12:32 GMT  
		Size: 17.4 MB (17415896 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cab566f9ae27d529a7a07ea82e9029f7afc2542e3f873f26962cf83b3f53d157`  
		Last Modified: Mon, 12 Oct 2026 20:12:32 GMT  
		Size: 35.6 KB (35639 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:26.7.0`

```console
$ docker pull mysql@sha256:893418c8a7a34c60d2d961cc30ef136095da141478562ed2101ae3f5faba9c3f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:26.7.0` - linux; amd64

```console
$ docker pull mysql@sha256:9bd5e8db9c913e82eefd16b556ca3e4e12ef25ff1b8507b73d04cf754b6b8f47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.6 MB (271629275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b130421b8c710f5c18f3bcce8d04d710616d55d747dcba1cb78886d4d5fc698`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 12 Oct 2026 19:11:06 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 12 Oct 2026 19:11:06 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 20:09:50 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 12 Oct 2026 20:09:52 GMT
ENV GOSU_VERSION=1.19
# Mon, 12 Oct 2026 20:09:52 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 12 Oct 2026 20:10:24 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 12 Oct 2026 20:10:25 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 12 Oct 2026 20:10:25 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 12 Oct 2026 20:10:25 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Mon, 12 Oct 2026 20:10:25 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 12 Oct 2026 20:11:00 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 12 Oct 2026 20:11:00 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 12 Oct 2026 20:11:00 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Mon, 12 Oct 2026 20:11:44 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 12 Oct 2026 20:11:44 GMT
VOLUME [/var/lib/mysql]
# Mon, 12 Oct 2026 20:11:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 12 Oct 2026 20:11:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 20:11:44 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 12 Oct 2026 20:11:44 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:e896da32f635ced58051c434f6d70ebdf95efaa199d796f16689ad6a7393d30e`  
		Last Modified: Mon, 12 Oct 2026 19:11:17 GMT  
		Size: 47.2 MB (47247118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:029a2ef99eb4bd84989e14407a162e85dd43c39f152800636b7f2f34e08e1d35`  
		Last Modified: Mon, 12 Oct 2026 20:12:15 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a798338f8ea05e3f1ee9fcbc5cf7fa005292ea5a19e57cb725d2f4b560f1e78e`  
		Last Modified: Mon, 12 Oct 2026 20:12:15 GMT  
		Size: 783.6 KB (783559 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d41b77484029035b0416172a7a516135161db36a5c4089fcbcb5450789ea5fb8`  
		Last Modified: Mon, 12 Oct 2026 20:12:15 GMT  
		Size: 6.2 MB (6192268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d057682167d504e74bea3542dbba561f97cd19d60d931145d6b4cfcc50074d4f`  
		Last Modified: Mon, 12 Oct 2026 20:12:15 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecb59e1f4a8f87cb477397c1d7876cfb480f75a147dba1dfd6df5bb6de9a8904`  
		Last Modified: Mon, 12 Oct 2026 20:12:16 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c233331fdce73aacd8a8696a5476a8a0ca4a5ad291e71142c590d3f0c0f0e5d7`  
		Last Modified: Mon, 12 Oct 2026 20:12:18 GMT  
		Size: 57.4 MB (57438613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a710d5def08112e5495c86fc8ab9cd14af67e80e7f14350e22d209bed54eff7`  
		Last Modified: Mon, 12 Oct 2026 20:12:17 GMT  
		Size: 326.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6526c3b0b71a698d53ca661298c1bd3957fcbebffd234caefec7cd008074c03`  
		Last Modified: Mon, 12 Oct 2026 20:12:20 GMT  
		Size: 160.0 MB (159958334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:514ea420f997205256cd21982069f6b15b59e32a5e172ce1e08f8aeb802201a8`  
		Last Modified: Mon, 12 Oct 2026 20:12:18 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26.7.0` - unknown; unknown

```console
$ docker pull mysql@sha256:6b1cb3787a01f23b2e9783d50f35c7c382799725630e22b5010820c884712be2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17452721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08175b2f44862eeb54a3be1437b232b1eb8aac57b359d74b8368fa69a579b725`

```dockerfile
```

-	Layers:
	-	`sha256:2659fa5447a2f0a95876099600d3ba81d2b2c72cb483f3255e0b20da0c05eab4`  
		Last Modified: Mon, 12 Oct 2026 20:12:16 GMT  
		Size: 17.4 MB (17417423 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9e6faf632f7d39b2fc61fe73a05a2c7a082e8369ae5ff9023d74e7f852fb1355`  
		Last Modified: Mon, 12 Oct 2026 20:12:15 GMT  
		Size: 35.3 KB (35298 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:26.7.0` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:46911fe021d2e75f6724959921599f5cdfd9a3758e4b171ba28034e174e0eb4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.0 MB (267993703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08f6250f9f8f653d8afb142b136a6b1d2177827276e5fd74974f3c3c5f190522`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 12 Oct 2026 19:10:25 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 12 Oct 2026 19:10:25 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 20:09:37 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 12 Oct 2026 20:09:39 GMT
ENV GOSU_VERSION=1.19
# Mon, 12 Oct 2026 20:09:39 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 12 Oct 2026 20:10:18 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 12 Oct 2026 20:10:19 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 12 Oct 2026 20:10:19 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 12 Oct 2026 20:10:19 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Mon, 12 Oct 2026 20:10:19 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 12 Oct 2026 20:11:01 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 12 Oct 2026 20:11:01 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 12 Oct 2026 20:11:01 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Mon, 12 Oct 2026 20:11:55 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 12 Oct 2026 20:11:55 GMT
VOLUME [/var/lib/mysql]
# Mon, 12 Oct 2026 20:11:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 12 Oct 2026 20:11:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 20:11:55 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 12 Oct 2026 20:11:55 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b1be88c1a95445e6111ba7b3bceed48f958b8f6eb2ff1c4b27f45fa7b0f45de9`  
		Last Modified: Mon, 12 Oct 2026 19:10:36 GMT  
		Size: 45.8 MB (45800687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0399a56949deaaf20c00b16050b77d7a63225e27be68c9ca385d0c1c880f0135`  
		Last Modified: Mon, 12 Oct 2026 20:12:31 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84bf64211785ff7a6c43b8e6a5a3709415938d2513f9e701416d4bcf62d531df`  
		Last Modified: Mon, 12 Oct 2026 20:12:32 GMT  
		Size: 737.5 KB (737522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7195dce5dfb48948082c8e356a5d15249f243f19f36574fcf0bb8502f0658d81`  
		Last Modified: Mon, 12 Oct 2026 20:12:32 GMT  
		Size: 5.8 MB (5809858 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67e4017b162aed8a9d3ab7530517eb44f352124cc95aa4f88c5562d014f88cad`  
		Last Modified: Mon, 12 Oct 2026 20:12:32 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d95985f6fb94910d133f5e8f92db9883ef3c4c586eb90644791a690f4bc0dc7b`  
		Last Modified: Mon, 12 Oct 2026 20:12:33 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b429d7e53711dbddcc2bf8fa1f38831ad39777485d80ab7f83050b744413ade6`  
		Last Modified: Mon, 12 Oct 2026 20:12:35 GMT  
		Size: 57.4 MB (57414294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ad383cc3314a302763fcfef893db025ea66afcdede0d41fd7410f67781a67a6`  
		Last Modified: Mon, 12 Oct 2026 20:12:33 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16c0cf53a295c474087f466e675f33b6dc1a049673660cb94c19d428f9ee3176`  
		Last Modified: Mon, 12 Oct 2026 20:12:37 GMT  
		Size: 158.2 MB (158221965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae7f2c27109c9b7a53338cc3c94f11c49cbd91d2499a4b427bbfe50c54b37887`  
		Last Modified: Mon, 12 Oct 2026 20:12:34 GMT  
		Size: 5.2 KB (5221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26.7.0` - unknown; unknown

```console
$ docker pull mysql@sha256:6abc841a93694bee7d74bb63fd917c9ef474a4569323034acb56e088abf1eca4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17451535 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15145fbf881023c0d02c304531029c80d34d1f81e9ada40099d7996a5d568389`

```dockerfile
```

-	Layers:
	-	`sha256:73883f5df73fbf47cd0e0b6694a110bff7a55e9e9ef0c51d2dca97848e31255a`  
		Last Modified: Mon, 12 Oct 2026 20:12:32 GMT  
		Size: 17.4 MB (17415896 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cab566f9ae27d529a7a07ea82e9029f7afc2542e3f873f26962cf83b3f53d157`  
		Last Modified: Mon, 12 Oct 2026 20:12:32 GMT  
		Size: 35.6 KB (35639 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:26.7.0-oracle`

```console
$ docker pull mysql@sha256:893418c8a7a34c60d2d961cc30ef136095da141478562ed2101ae3f5faba9c3f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:26.7.0-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:9bd5e8db9c913e82eefd16b556ca3e4e12ef25ff1b8507b73d04cf754b6b8f47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.6 MB (271629275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b130421b8c710f5c18f3bcce8d04d710616d55d747dcba1cb78886d4d5fc698`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 12 Oct 2026 19:11:06 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 12 Oct 2026 19:11:06 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 20:09:50 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 12 Oct 2026 20:09:52 GMT
ENV GOSU_VERSION=1.19
# Mon, 12 Oct 2026 20:09:52 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 12 Oct 2026 20:10:24 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 12 Oct 2026 20:10:25 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 12 Oct 2026 20:10:25 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 12 Oct 2026 20:10:25 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Mon, 12 Oct 2026 20:10:25 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 12 Oct 2026 20:11:00 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 12 Oct 2026 20:11:00 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 12 Oct 2026 20:11:00 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Mon, 12 Oct 2026 20:11:44 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 12 Oct 2026 20:11:44 GMT
VOLUME [/var/lib/mysql]
# Mon, 12 Oct 2026 20:11:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 12 Oct 2026 20:11:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 20:11:44 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 12 Oct 2026 20:11:44 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:e896da32f635ced58051c434f6d70ebdf95efaa199d796f16689ad6a7393d30e`  
		Last Modified: Mon, 12 Oct 2026 19:11:17 GMT  
		Size: 47.2 MB (47247118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:029a2ef99eb4bd84989e14407a162e85dd43c39f152800636b7f2f34e08e1d35`  
		Last Modified: Mon, 12 Oct 2026 20:12:15 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a798338f8ea05e3f1ee9fcbc5cf7fa005292ea5a19e57cb725d2f4b560f1e78e`  
		Last Modified: Mon, 12 Oct 2026 20:12:15 GMT  
		Size: 783.6 KB (783559 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d41b77484029035b0416172a7a516135161db36a5c4089fcbcb5450789ea5fb8`  
		Last Modified: Mon, 12 Oct 2026 20:12:15 GMT  
		Size: 6.2 MB (6192268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d057682167d504e74bea3542dbba561f97cd19d60d931145d6b4cfcc50074d4f`  
		Last Modified: Mon, 12 Oct 2026 20:12:15 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecb59e1f4a8f87cb477397c1d7876cfb480f75a147dba1dfd6df5bb6de9a8904`  
		Last Modified: Mon, 12 Oct 2026 20:12:16 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c233331fdce73aacd8a8696a5476a8a0ca4a5ad291e71142c590d3f0c0f0e5d7`  
		Last Modified: Mon, 12 Oct 2026 20:12:18 GMT  
		Size: 57.4 MB (57438613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a710d5def08112e5495c86fc8ab9cd14af67e80e7f14350e22d209bed54eff7`  
		Last Modified: Mon, 12 Oct 2026 20:12:17 GMT  
		Size: 326.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6526c3b0b71a698d53ca661298c1bd3957fcbebffd234caefec7cd008074c03`  
		Last Modified: Mon, 12 Oct 2026 20:12:20 GMT  
		Size: 160.0 MB (159958334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:514ea420f997205256cd21982069f6b15b59e32a5e172ce1e08f8aeb802201a8`  
		Last Modified: Mon, 12 Oct 2026 20:12:18 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26.7.0-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:6b1cb3787a01f23b2e9783d50f35c7c382799725630e22b5010820c884712be2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17452721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08175b2f44862eeb54a3be1437b232b1eb8aac57b359d74b8368fa69a579b725`

```dockerfile
```

-	Layers:
	-	`sha256:2659fa5447a2f0a95876099600d3ba81d2b2c72cb483f3255e0b20da0c05eab4`  
		Last Modified: Mon, 12 Oct 2026 20:12:16 GMT  
		Size: 17.4 MB (17417423 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9e6faf632f7d39b2fc61fe73a05a2c7a082e8369ae5ff9023d74e7f852fb1355`  
		Last Modified: Mon, 12 Oct 2026 20:12:15 GMT  
		Size: 35.3 KB (35298 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:26.7.0-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:46911fe021d2e75f6724959921599f5cdfd9a3758e4b171ba28034e174e0eb4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.0 MB (267993703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08f6250f9f8f653d8afb142b136a6b1d2177827276e5fd74974f3c3c5f190522`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 12 Oct 2026 19:10:25 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 12 Oct 2026 19:10:25 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 20:09:37 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 12 Oct 2026 20:09:39 GMT
ENV GOSU_VERSION=1.19
# Mon, 12 Oct 2026 20:09:39 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 12 Oct 2026 20:10:18 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 12 Oct 2026 20:10:19 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 12 Oct 2026 20:10:19 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 12 Oct 2026 20:10:19 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Mon, 12 Oct 2026 20:10:19 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 12 Oct 2026 20:11:01 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 12 Oct 2026 20:11:01 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 12 Oct 2026 20:11:01 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Mon, 12 Oct 2026 20:11:55 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 12 Oct 2026 20:11:55 GMT
VOLUME [/var/lib/mysql]
# Mon, 12 Oct 2026 20:11:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 12 Oct 2026 20:11:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 20:11:55 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 12 Oct 2026 20:11:55 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b1be88c1a95445e6111ba7b3bceed48f958b8f6eb2ff1c4b27f45fa7b0f45de9`  
		Last Modified: Mon, 12 Oct 2026 19:10:36 GMT  
		Size: 45.8 MB (45800687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0399a56949deaaf20c00b16050b77d7a63225e27be68c9ca385d0c1c880f0135`  
		Last Modified: Mon, 12 Oct 2026 20:12:31 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84bf64211785ff7a6c43b8e6a5a3709415938d2513f9e701416d4bcf62d531df`  
		Last Modified: Mon, 12 Oct 2026 20:12:32 GMT  
		Size: 737.5 KB (737522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7195dce5dfb48948082c8e356a5d15249f243f19f36574fcf0bb8502f0658d81`  
		Last Modified: Mon, 12 Oct 2026 20:12:32 GMT  
		Size: 5.8 MB (5809858 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67e4017b162aed8a9d3ab7530517eb44f352124cc95aa4f88c5562d014f88cad`  
		Last Modified: Mon, 12 Oct 2026 20:12:32 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d95985f6fb94910d133f5e8f92db9883ef3c4c586eb90644791a690f4bc0dc7b`  
		Last Modified: Mon, 12 Oct 2026 20:12:33 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b429d7e53711dbddcc2bf8fa1f38831ad39777485d80ab7f83050b744413ade6`  
		Last Modified: Mon, 12 Oct 2026 20:12:35 GMT  
		Size: 57.4 MB (57414294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ad383cc3314a302763fcfef893db025ea66afcdede0d41fd7410f67781a67a6`  
		Last Modified: Mon, 12 Oct 2026 20:12:33 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16c0cf53a295c474087f466e675f33b6dc1a049673660cb94c19d428f9ee3176`  
		Last Modified: Mon, 12 Oct 2026 20:12:37 GMT  
		Size: 158.2 MB (158221965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae7f2c27109c9b7a53338cc3c94f11c49cbd91d2499a4b427bbfe50c54b37887`  
		Last Modified: Mon, 12 Oct 2026 20:12:34 GMT  
		Size: 5.2 KB (5221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26.7.0-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:6abc841a93694bee7d74bb63fd917c9ef474a4569323034acb56e088abf1eca4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17451535 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15145fbf881023c0d02c304531029c80d34d1f81e9ada40099d7996a5d568389`

```dockerfile
```

-	Layers:
	-	`sha256:73883f5df73fbf47cd0e0b6694a110bff7a55e9e9ef0c51d2dca97848e31255a`  
		Last Modified: Mon, 12 Oct 2026 20:12:32 GMT  
		Size: 17.4 MB (17415896 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cab566f9ae27d529a7a07ea82e9029f7afc2542e3f873f26962cf83b3f53d157`  
		Last Modified: Mon, 12 Oct 2026 20:12:32 GMT  
		Size: 35.6 KB (35639 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:26.7.0-oraclelinux9`

```console
$ docker pull mysql@sha256:893418c8a7a34c60d2d961cc30ef136095da141478562ed2101ae3f5faba9c3f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:26.7.0-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:9bd5e8db9c913e82eefd16b556ca3e4e12ef25ff1b8507b73d04cf754b6b8f47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.6 MB (271629275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b130421b8c710f5c18f3bcce8d04d710616d55d747dcba1cb78886d4d5fc698`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 12 Oct 2026 19:11:06 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 12 Oct 2026 19:11:06 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 20:09:50 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 12 Oct 2026 20:09:52 GMT
ENV GOSU_VERSION=1.19
# Mon, 12 Oct 2026 20:09:52 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 12 Oct 2026 20:10:24 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 12 Oct 2026 20:10:25 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 12 Oct 2026 20:10:25 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 12 Oct 2026 20:10:25 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Mon, 12 Oct 2026 20:10:25 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 12 Oct 2026 20:11:00 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 12 Oct 2026 20:11:00 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 12 Oct 2026 20:11:00 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Mon, 12 Oct 2026 20:11:44 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 12 Oct 2026 20:11:44 GMT
VOLUME [/var/lib/mysql]
# Mon, 12 Oct 2026 20:11:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 12 Oct 2026 20:11:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 20:11:44 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 12 Oct 2026 20:11:44 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:e896da32f635ced58051c434f6d70ebdf95efaa199d796f16689ad6a7393d30e`  
		Last Modified: Mon, 12 Oct 2026 19:11:17 GMT  
		Size: 47.2 MB (47247118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:029a2ef99eb4bd84989e14407a162e85dd43c39f152800636b7f2f34e08e1d35`  
		Last Modified: Mon, 12 Oct 2026 20:12:15 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a798338f8ea05e3f1ee9fcbc5cf7fa005292ea5a19e57cb725d2f4b560f1e78e`  
		Last Modified: Mon, 12 Oct 2026 20:12:15 GMT  
		Size: 783.6 KB (783559 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d41b77484029035b0416172a7a516135161db36a5c4089fcbcb5450789ea5fb8`  
		Last Modified: Mon, 12 Oct 2026 20:12:15 GMT  
		Size: 6.2 MB (6192268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d057682167d504e74bea3542dbba561f97cd19d60d931145d6b4cfcc50074d4f`  
		Last Modified: Mon, 12 Oct 2026 20:12:15 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecb59e1f4a8f87cb477397c1d7876cfb480f75a147dba1dfd6df5bb6de9a8904`  
		Last Modified: Mon, 12 Oct 2026 20:12:16 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c233331fdce73aacd8a8696a5476a8a0ca4a5ad291e71142c590d3f0c0f0e5d7`  
		Last Modified: Mon, 12 Oct 2026 20:12:18 GMT  
		Size: 57.4 MB (57438613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a710d5def08112e5495c86fc8ab9cd14af67e80e7f14350e22d209bed54eff7`  
		Last Modified: Mon, 12 Oct 2026 20:12:17 GMT  
		Size: 326.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6526c3b0b71a698d53ca661298c1bd3957fcbebffd234caefec7cd008074c03`  
		Last Modified: Mon, 12 Oct 2026 20:12:20 GMT  
		Size: 160.0 MB (159958334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:514ea420f997205256cd21982069f6b15b59e32a5e172ce1e08f8aeb802201a8`  
		Last Modified: Mon, 12 Oct 2026 20:12:18 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26.7.0-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:6b1cb3787a01f23b2e9783d50f35c7c382799725630e22b5010820c884712be2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17452721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08175b2f44862eeb54a3be1437b232b1eb8aac57b359d74b8368fa69a579b725`

```dockerfile
```

-	Layers:
	-	`sha256:2659fa5447a2f0a95876099600d3ba81d2b2c72cb483f3255e0b20da0c05eab4`  
		Last Modified: Mon, 12 Oct 2026 20:12:16 GMT  
		Size: 17.4 MB (17417423 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9e6faf632f7d39b2fc61fe73a05a2c7a082e8369ae5ff9023d74e7f852fb1355`  
		Last Modified: Mon, 12 Oct 2026 20:12:15 GMT  
		Size: 35.3 KB (35298 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:26.7.0-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:46911fe021d2e75f6724959921599f5cdfd9a3758e4b171ba28034e174e0eb4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.0 MB (267993703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08f6250f9f8f653d8afb142b136a6b1d2177827276e5fd74974f3c3c5f190522`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 12 Oct 2026 19:10:25 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 12 Oct 2026 19:10:25 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 20:09:37 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 12 Oct 2026 20:09:39 GMT
ENV GOSU_VERSION=1.19
# Mon, 12 Oct 2026 20:09:39 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 12 Oct 2026 20:10:18 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 12 Oct 2026 20:10:19 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 12 Oct 2026 20:10:19 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 12 Oct 2026 20:10:19 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Mon, 12 Oct 2026 20:10:19 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 12 Oct 2026 20:11:01 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 12 Oct 2026 20:11:01 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 12 Oct 2026 20:11:01 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Mon, 12 Oct 2026 20:11:55 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 12 Oct 2026 20:11:55 GMT
VOLUME [/var/lib/mysql]
# Mon, 12 Oct 2026 20:11:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 12 Oct 2026 20:11:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 20:11:55 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 12 Oct 2026 20:11:55 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b1be88c1a95445e6111ba7b3bceed48f958b8f6eb2ff1c4b27f45fa7b0f45de9`  
		Last Modified: Mon, 12 Oct 2026 19:10:36 GMT  
		Size: 45.8 MB (45800687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0399a56949deaaf20c00b16050b77d7a63225e27be68c9ca385d0c1c880f0135`  
		Last Modified: Mon, 12 Oct 2026 20:12:31 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84bf64211785ff7a6c43b8e6a5a3709415938d2513f9e701416d4bcf62d531df`  
		Last Modified: Mon, 12 Oct 2026 20:12:32 GMT  
		Size: 737.5 KB (737522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7195dce5dfb48948082c8e356a5d15249f243f19f36574fcf0bb8502f0658d81`  
		Last Modified: Mon, 12 Oct 2026 20:12:32 GMT  
		Size: 5.8 MB (5809858 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67e4017b162aed8a9d3ab7530517eb44f352124cc95aa4f88c5562d014f88cad`  
		Last Modified: Mon, 12 Oct 2026 20:12:32 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d95985f6fb94910d133f5e8f92db9883ef3c4c586eb90644791a690f4bc0dc7b`  
		Last Modified: Mon, 12 Oct 2026 20:12:33 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b429d7e53711dbddcc2bf8fa1f38831ad39777485d80ab7f83050b744413ade6`  
		Last Modified: Mon, 12 Oct 2026 20:12:35 GMT  
		Size: 57.4 MB (57414294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ad383cc3314a302763fcfef893db025ea66afcdede0d41fd7410f67781a67a6`  
		Last Modified: Mon, 12 Oct 2026 20:12:33 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16c0cf53a295c474087f466e675f33b6dc1a049673660cb94c19d428f9ee3176`  
		Last Modified: Mon, 12 Oct 2026 20:12:37 GMT  
		Size: 158.2 MB (158221965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae7f2c27109c9b7a53338cc3c94f11c49cbd91d2499a4b427bbfe50c54b37887`  
		Last Modified: Mon, 12 Oct 2026 20:12:34 GMT  
		Size: 5.2 KB (5221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26.7.0-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:6abc841a93694bee7d74bb63fd917c9ef474a4569323034acb56e088abf1eca4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17451535 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15145fbf881023c0d02c304531029c80d34d1f81e9ada40099d7996a5d568389`

```dockerfile
```

-	Layers:
	-	`sha256:73883f5df73fbf47cd0e0b6694a110bff7a55e9e9ef0c51d2dca97848e31255a`  
		Last Modified: Mon, 12 Oct 2026 20:12:32 GMT  
		Size: 17.4 MB (17415896 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cab566f9ae27d529a7a07ea82e9029f7afc2542e3f873f26962cf83b3f53d157`  
		Last Modified: Mon, 12 Oct 2026 20:12:32 GMT  
		Size: 35.6 KB (35639 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:8`

```console
$ docker pull mysql@sha256:24989179f58856db763f418010c1169fecc944e3ec1ea7e921572d83eb070f70
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8` - linux; amd64

```console
$ docker pull mysql@sha256:1f8411cc085d2f2f92060fca926746cbf97f87b76c3008e9741ad62e604c4ffa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.3 MB (238271431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efb212ddf03576a6c0b02b8d364e6a46f21e628308a719db0b0450f8817c0517`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 12 Oct 2026 19:11:06 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 12 Oct 2026 19:11:06 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 20:10:55 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 12 Oct 2026 20:10:57 GMT
ENV GOSU_VERSION=1.19
# Mon, 12 Oct 2026 20:10:57 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 12 Oct 2026 20:11:32 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 12 Oct 2026 20:11:32 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 12 Oct 2026 20:11:32 GMT
ENV MYSQL_MAJOR=8.4
# Mon, 12 Oct 2026 20:11:32 GMT
ENV MYSQL_VERSION=8.4.11-1.el9
# Mon, 12 Oct 2026 20:11:32 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 12 Oct 2026 20:12:11 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 12 Oct 2026 20:12:11 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 12 Oct 2026 20:12:11 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Mon, 12 Oct 2026 20:12:57 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 12 Oct 2026 20:12:57 GMT
VOLUME [/var/lib/mysql]
# Mon, 12 Oct 2026 20:12:57 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 12 Oct 2026 20:12:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 20:12:57 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 12 Oct 2026 20:12:57 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:e896da32f635ced58051c434f6d70ebdf95efaa199d796f16689ad6a7393d30e`  
		Last Modified: Mon, 12 Oct 2026 19:11:17 GMT  
		Size: 47.2 MB (47247118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3527249a80250b4d0f452811193658002eebd25e2758b35f93b639b2d721d899`  
		Last Modified: Mon, 12 Oct 2026 20:13:27 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b54d15c954d73fe71e59e0797bc565b9fa8d67c2fe18970df673a82d9c74f2c`  
		Last Modified: Mon, 12 Oct 2026 20:13:28 GMT  
		Size: 783.6 KB (783559 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf11ec3e7e5618767691195feb6cc40d1f86fb1a54338c80df3fe8804ece1c23`  
		Last Modified: Mon, 12 Oct 2026 20:13:28 GMT  
		Size: 6.2 MB (6192250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15ba404f5528b0547c2d4884ada43f999de2b0252eeaf1abcb9970479b444d94`  
		Last Modified: Mon, 12 Oct 2026 20:13:28 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad73434ffdad6997fe24eea0758aa8127a5bdb03b2a1693c0fac8f88b0a8f6a1`  
		Last Modified: Mon, 12 Oct 2026 20:13:28 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81077ec0e5ac518631417757cb001cff0c54df11a3a0a61235653162a18ff75d`  
		Last Modified: Mon, 12 Oct 2026 20:13:31 GMT  
		Size: 51.6 MB (51621353 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f51a9a1f0d203324da5a4ffb5b397fffadeb8756a87bbbbceb8c1508bc097bce`  
		Last Modified: Mon, 12 Oct 2026 20:13:29 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ba189089539754b09853c19d511d55261709ada5bb63d214f881eb201c3c2b6`  
		Last Modified: Mon, 12 Oct 2026 20:13:32 GMT  
		Size: 132.4 MB (132417781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4cc7515d7b7f23527c739e2870aaa442a0eed32e21710b9263a562e964e965a`  
		Last Modified: Mon, 12 Oct 2026 20:13:30 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8` - unknown; unknown

```console
$ docker pull mysql@sha256:50d1e33606e30393c5ffd2d96e103b4f3f3784f3f633766ddd2dcd8bf55649a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15745247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6050905f4b460d1f5837473a316ac098dc615fc530d92e9bff60fce9a80b0884`

```dockerfile
```

-	Layers:
	-	`sha256:8e537378399f384c3585c4b9f14500d6ad6c581e8e6ba250f43e670c27654814`  
		Last Modified: Mon, 12 Oct 2026 20:13:28 GMT  
		Size: 15.7 MB (15711934 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c3aa1963b3d36ab6e1be77cd1c592fe7055380c7fd560a485f63483860538281`  
		Last Modified: Mon, 12 Oct 2026 20:13:27 GMT  
		Size: 33.3 KB (33313 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:88b9c60a44c8864787b96e8254cd050c4af5e82fea6edf08225546f447b43a31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.0 MB (232966578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc52b8b5900d106bc482241091cfa7496d830280868e19aca8a24e8e7086568e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 12 Oct 2026 19:10:25 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 12 Oct 2026 19:10:25 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 20:10:29 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 12 Oct 2026 20:10:31 GMT
ENV GOSU_VERSION=1.19
# Mon, 12 Oct 2026 20:10:31 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 12 Oct 2026 20:11:09 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 12 Oct 2026 20:11:10 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 12 Oct 2026 20:11:10 GMT
ENV MYSQL_MAJOR=8.4
# Mon, 12 Oct 2026 20:11:10 GMT
ENV MYSQL_VERSION=8.4.11-1.el9
# Mon, 12 Oct 2026 20:11:10 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 12 Oct 2026 20:11:52 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 12 Oct 2026 20:11:52 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 12 Oct 2026 20:11:52 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Mon, 12 Oct 2026 20:12:41 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 12 Oct 2026 20:12:41 GMT
VOLUME [/var/lib/mysql]
# Mon, 12 Oct 2026 20:12:41 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 12 Oct 2026 20:12:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 20:12:41 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 12 Oct 2026 20:12:41 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b1be88c1a95445e6111ba7b3bceed48f958b8f6eb2ff1c4b27f45fa7b0f45de9`  
		Last Modified: Mon, 12 Oct 2026 19:10:36 GMT  
		Size: 45.8 MB (45800687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83b64b1168947aad11a558fd828116b9a5f9e8dd2c32fbe30d04591b1323f396`  
		Last Modified: Mon, 12 Oct 2026 20:13:13 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a58cacc6b5cf4869d4c424a8c80c0d4f9e392386e3cf281d6280cabfecb4e1a`  
		Last Modified: Mon, 12 Oct 2026 20:13:13 GMT  
		Size: 737.5 KB (737523 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7f73fdba829db0d2f5eccaea13eb82fca3a992ca92de985bb4fc8c97cea1045`  
		Last Modified: Mon, 12 Oct 2026 20:13:13 GMT  
		Size: 5.8 MB (5809858 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1953d80eb3b9559d28e3fe3302b402b9b4d90d783b6e3720b7078eea9b6c9d6d`  
		Last Modified: Mon, 12 Oct 2026 20:13:13 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:187b3ea816c40bc1a69927821cd589e72e6b173eb625d0ffe66a3a6c43797020`  
		Last Modified: Mon, 12 Oct 2026 20:13:14 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd3898dc44c741ec2e322bef4859b2f1ef11153911e88f2e19abcb8f4b1f7fd9`  
		Last Modified: Mon, 12 Oct 2026 20:13:16 GMT  
		Size: 49.8 MB (49840459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ecdc743ad912de8da5c3137cc8ff858193535595e404b5e3a8f33e6c6a6c2fb`  
		Last Modified: Mon, 12 Oct 2026 20:13:15 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebd9edd1f8654944def738986b750445dc9f4e00a93ac95c541e8947f0b36624`  
		Last Modified: Mon, 12 Oct 2026 20:13:18 GMT  
		Size: 130.8 MB (130768681 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69c97d6063ee119de522ed1a5a0a50969132f6aeeb78d79c2e3b74936697820d`  
		Last Modified: Mon, 12 Oct 2026 20:13:16 GMT  
		Size: 5.2 KB (5223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8` - unknown; unknown

```console
$ docker pull mysql@sha256:33579c6dd0151049ff25aecc0a2255ee1734c0a60cb9cedd108a9adc9f7149ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15743915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bba57ff62a49f5625801ddf5eab6c8ee48fb32a62a30f9ab44445e703045837`

```dockerfile
```

-	Layers:
	-	`sha256:f7fbb1d178cb4dae3d88d422a304e0829e1e1d913855c4e534a098f9d0408609`  
		Last Modified: Mon, 12 Oct 2026 20:13:14 GMT  
		Size: 15.7 MB (15710334 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fdecb8cd4a9e3a6ffb675cca71e535341d8ca3f8e03136c009e0d37c4317f89a`  
		Last Modified: Mon, 12 Oct 2026 20:13:13 GMT  
		Size: 33.6 KB (33581 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:8-oracle`

```console
$ docker pull mysql@sha256:24989179f58856db763f418010c1169fecc944e3ec1ea7e921572d83eb070f70
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:1f8411cc085d2f2f92060fca926746cbf97f87b76c3008e9741ad62e604c4ffa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.3 MB (238271431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efb212ddf03576a6c0b02b8d364e6a46f21e628308a719db0b0450f8817c0517`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 12 Oct 2026 19:11:06 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 12 Oct 2026 19:11:06 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 20:10:55 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 12 Oct 2026 20:10:57 GMT
ENV GOSU_VERSION=1.19
# Mon, 12 Oct 2026 20:10:57 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 12 Oct 2026 20:11:32 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 12 Oct 2026 20:11:32 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 12 Oct 2026 20:11:32 GMT
ENV MYSQL_MAJOR=8.4
# Mon, 12 Oct 2026 20:11:32 GMT
ENV MYSQL_VERSION=8.4.11-1.el9
# Mon, 12 Oct 2026 20:11:32 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 12 Oct 2026 20:12:11 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 12 Oct 2026 20:12:11 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 12 Oct 2026 20:12:11 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Mon, 12 Oct 2026 20:12:57 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 12 Oct 2026 20:12:57 GMT
VOLUME [/var/lib/mysql]
# Mon, 12 Oct 2026 20:12:57 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 12 Oct 2026 20:12:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 20:12:57 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 12 Oct 2026 20:12:57 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:e896da32f635ced58051c434f6d70ebdf95efaa199d796f16689ad6a7393d30e`  
		Last Modified: Mon, 12 Oct 2026 19:11:17 GMT  
		Size: 47.2 MB (47247118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3527249a80250b4d0f452811193658002eebd25e2758b35f93b639b2d721d899`  
		Last Modified: Mon, 12 Oct 2026 20:13:27 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b54d15c954d73fe71e59e0797bc565b9fa8d67c2fe18970df673a82d9c74f2c`  
		Last Modified: Mon, 12 Oct 2026 20:13:28 GMT  
		Size: 783.6 KB (783559 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf11ec3e7e5618767691195feb6cc40d1f86fb1a54338c80df3fe8804ece1c23`  
		Last Modified: Mon, 12 Oct 2026 20:13:28 GMT  
		Size: 6.2 MB (6192250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15ba404f5528b0547c2d4884ada43f999de2b0252eeaf1abcb9970479b444d94`  
		Last Modified: Mon, 12 Oct 2026 20:13:28 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad73434ffdad6997fe24eea0758aa8127a5bdb03b2a1693c0fac8f88b0a8f6a1`  
		Last Modified: Mon, 12 Oct 2026 20:13:28 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81077ec0e5ac518631417757cb001cff0c54df11a3a0a61235653162a18ff75d`  
		Last Modified: Mon, 12 Oct 2026 20:13:31 GMT  
		Size: 51.6 MB (51621353 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f51a9a1f0d203324da5a4ffb5b397fffadeb8756a87bbbbceb8c1508bc097bce`  
		Last Modified: Mon, 12 Oct 2026 20:13:29 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ba189089539754b09853c19d511d55261709ada5bb63d214f881eb201c3c2b6`  
		Last Modified: Mon, 12 Oct 2026 20:13:32 GMT  
		Size: 132.4 MB (132417781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4cc7515d7b7f23527c739e2870aaa442a0eed32e21710b9263a562e964e965a`  
		Last Modified: Mon, 12 Oct 2026 20:13:30 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:50d1e33606e30393c5ffd2d96e103b4f3f3784f3f633766ddd2dcd8bf55649a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15745247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6050905f4b460d1f5837473a316ac098dc615fc530d92e9bff60fce9a80b0884`

```dockerfile
```

-	Layers:
	-	`sha256:8e537378399f384c3585c4b9f14500d6ad6c581e8e6ba250f43e670c27654814`  
		Last Modified: Mon, 12 Oct 2026 20:13:28 GMT  
		Size: 15.7 MB (15711934 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c3aa1963b3d36ab6e1be77cd1c592fe7055380c7fd560a485f63483860538281`  
		Last Modified: Mon, 12 Oct 2026 20:13:27 GMT  
		Size: 33.3 KB (33313 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:88b9c60a44c8864787b96e8254cd050c4af5e82fea6edf08225546f447b43a31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.0 MB (232966578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc52b8b5900d106bc482241091cfa7496d830280868e19aca8a24e8e7086568e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 12 Oct 2026 19:10:25 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 12 Oct 2026 19:10:25 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 20:10:29 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 12 Oct 2026 20:10:31 GMT
ENV GOSU_VERSION=1.19
# Mon, 12 Oct 2026 20:10:31 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 12 Oct 2026 20:11:09 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 12 Oct 2026 20:11:10 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 12 Oct 2026 20:11:10 GMT
ENV MYSQL_MAJOR=8.4
# Mon, 12 Oct 2026 20:11:10 GMT
ENV MYSQL_VERSION=8.4.11-1.el9
# Mon, 12 Oct 2026 20:11:10 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 12 Oct 2026 20:11:52 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 12 Oct 2026 20:11:52 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 12 Oct 2026 20:11:52 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Mon, 12 Oct 2026 20:12:41 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 12 Oct 2026 20:12:41 GMT
VOLUME [/var/lib/mysql]
# Mon, 12 Oct 2026 20:12:41 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 12 Oct 2026 20:12:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 20:12:41 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 12 Oct 2026 20:12:41 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b1be88c1a95445e6111ba7b3bceed48f958b8f6eb2ff1c4b27f45fa7b0f45de9`  
		Last Modified: Mon, 12 Oct 2026 19:10:36 GMT  
		Size: 45.8 MB (45800687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83b64b1168947aad11a558fd828116b9a5f9e8dd2c32fbe30d04591b1323f396`  
		Last Modified: Mon, 12 Oct 2026 20:13:13 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a58cacc6b5cf4869d4c424a8c80c0d4f9e392386e3cf281d6280cabfecb4e1a`  
		Last Modified: Mon, 12 Oct 2026 20:13:13 GMT  
		Size: 737.5 KB (737523 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7f73fdba829db0d2f5eccaea13eb82fca3a992ca92de985bb4fc8c97cea1045`  
		Last Modified: Mon, 12 Oct 2026 20:13:13 GMT  
		Size: 5.8 MB (5809858 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1953d80eb3b9559d28e3fe3302b402b9b4d90d783b6e3720b7078eea9b6c9d6d`  
		Last Modified: Mon, 12 Oct 2026 20:13:13 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:187b3ea816c40bc1a69927821cd589e72e6b173eb625d0ffe66a3a6c43797020`  
		Last Modified: Mon, 12 Oct 2026 20:13:14 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd3898dc44c741ec2e322bef4859b2f1ef11153911e88f2e19abcb8f4b1f7fd9`  
		Last Modified: Mon, 12 Oct 2026 20:13:16 GMT  
		Size: 49.8 MB (49840459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ecdc743ad912de8da5c3137cc8ff858193535595e404b5e3a8f33e6c6a6c2fb`  
		Last Modified: Mon, 12 Oct 2026 20:13:15 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebd9edd1f8654944def738986b750445dc9f4e00a93ac95c541e8947f0b36624`  
		Last Modified: Mon, 12 Oct 2026 20:13:18 GMT  
		Size: 130.8 MB (130768681 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69c97d6063ee119de522ed1a5a0a50969132f6aeeb78d79c2e3b74936697820d`  
		Last Modified: Mon, 12 Oct 2026 20:13:16 GMT  
		Size: 5.2 KB (5223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:33579c6dd0151049ff25aecc0a2255ee1734c0a60cb9cedd108a9adc9f7149ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15743915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bba57ff62a49f5625801ddf5eab6c8ee48fb32a62a30f9ab44445e703045837`

```dockerfile
```

-	Layers:
	-	`sha256:f7fbb1d178cb4dae3d88d422a304e0829e1e1d913855c4e534a098f9d0408609`  
		Last Modified: Mon, 12 Oct 2026 20:13:14 GMT  
		Size: 15.7 MB (15710334 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fdecb8cd4a9e3a6ffb675cca71e535341d8ca3f8e03136c009e0d37c4317f89a`  
		Last Modified: Mon, 12 Oct 2026 20:13:13 GMT  
		Size: 33.6 KB (33581 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:8-oraclelinux9`

```console
$ docker pull mysql@sha256:24989179f58856db763f418010c1169fecc944e3ec1ea7e921572d83eb070f70
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:1f8411cc085d2f2f92060fca926746cbf97f87b76c3008e9741ad62e604c4ffa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.3 MB (238271431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efb212ddf03576a6c0b02b8d364e6a46f21e628308a719db0b0450f8817c0517`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 12 Oct 2026 19:11:06 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 12 Oct 2026 19:11:06 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 20:10:55 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 12 Oct 2026 20:10:57 GMT
ENV GOSU_VERSION=1.19
# Mon, 12 Oct 2026 20:10:57 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 12 Oct 2026 20:11:32 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 12 Oct 2026 20:11:32 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 12 Oct 2026 20:11:32 GMT
ENV MYSQL_MAJOR=8.4
# Mon, 12 Oct 2026 20:11:32 GMT
ENV MYSQL_VERSION=8.4.11-1.el9
# Mon, 12 Oct 2026 20:11:32 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 12 Oct 2026 20:12:11 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 12 Oct 2026 20:12:11 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 12 Oct 2026 20:12:11 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Mon, 12 Oct 2026 20:12:57 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 12 Oct 2026 20:12:57 GMT
VOLUME [/var/lib/mysql]
# Mon, 12 Oct 2026 20:12:57 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 12 Oct 2026 20:12:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 20:12:57 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 12 Oct 2026 20:12:57 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:e896da32f635ced58051c434f6d70ebdf95efaa199d796f16689ad6a7393d30e`  
		Last Modified: Mon, 12 Oct 2026 19:11:17 GMT  
		Size: 47.2 MB (47247118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3527249a80250b4d0f452811193658002eebd25e2758b35f93b639b2d721d899`  
		Last Modified: Mon, 12 Oct 2026 20:13:27 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b54d15c954d73fe71e59e0797bc565b9fa8d67c2fe18970df673a82d9c74f2c`  
		Last Modified: Mon, 12 Oct 2026 20:13:28 GMT  
		Size: 783.6 KB (783559 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf11ec3e7e5618767691195feb6cc40d1f86fb1a54338c80df3fe8804ece1c23`  
		Last Modified: Mon, 12 Oct 2026 20:13:28 GMT  
		Size: 6.2 MB (6192250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15ba404f5528b0547c2d4884ada43f999de2b0252eeaf1abcb9970479b444d94`  
		Last Modified: Mon, 12 Oct 2026 20:13:28 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad73434ffdad6997fe24eea0758aa8127a5bdb03b2a1693c0fac8f88b0a8f6a1`  
		Last Modified: Mon, 12 Oct 2026 20:13:28 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81077ec0e5ac518631417757cb001cff0c54df11a3a0a61235653162a18ff75d`  
		Last Modified: Mon, 12 Oct 2026 20:13:31 GMT  
		Size: 51.6 MB (51621353 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f51a9a1f0d203324da5a4ffb5b397fffadeb8756a87bbbbceb8c1508bc097bce`  
		Last Modified: Mon, 12 Oct 2026 20:13:29 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ba189089539754b09853c19d511d55261709ada5bb63d214f881eb201c3c2b6`  
		Last Modified: Mon, 12 Oct 2026 20:13:32 GMT  
		Size: 132.4 MB (132417781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4cc7515d7b7f23527c739e2870aaa442a0eed32e21710b9263a562e964e965a`  
		Last Modified: Mon, 12 Oct 2026 20:13:30 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:50d1e33606e30393c5ffd2d96e103b4f3f3784f3f633766ddd2dcd8bf55649a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15745247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6050905f4b460d1f5837473a316ac098dc615fc530d92e9bff60fce9a80b0884`

```dockerfile
```

-	Layers:
	-	`sha256:8e537378399f384c3585c4b9f14500d6ad6c581e8e6ba250f43e670c27654814`  
		Last Modified: Mon, 12 Oct 2026 20:13:28 GMT  
		Size: 15.7 MB (15711934 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c3aa1963b3d36ab6e1be77cd1c592fe7055380c7fd560a485f63483860538281`  
		Last Modified: Mon, 12 Oct 2026 20:13:27 GMT  
		Size: 33.3 KB (33313 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:88b9c60a44c8864787b96e8254cd050c4af5e82fea6edf08225546f447b43a31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.0 MB (232966578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc52b8b5900d106bc482241091cfa7496d830280868e19aca8a24e8e7086568e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 12 Oct 2026 19:10:25 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 12 Oct 2026 19:10:25 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 20:10:29 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 12 Oct 2026 20:10:31 GMT
ENV GOSU_VERSION=1.19
# Mon, 12 Oct 2026 20:10:31 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 12 Oct 2026 20:11:09 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 12 Oct 2026 20:11:10 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 12 Oct 2026 20:11:10 GMT
ENV MYSQL_MAJOR=8.4
# Mon, 12 Oct 2026 20:11:10 GMT
ENV MYSQL_VERSION=8.4.11-1.el9
# Mon, 12 Oct 2026 20:11:10 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 12 Oct 2026 20:11:52 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 12 Oct 2026 20:11:52 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 12 Oct 2026 20:11:52 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Mon, 12 Oct 2026 20:12:41 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 12 Oct 2026 20:12:41 GMT
VOLUME [/var/lib/mysql]
# Mon, 12 Oct 2026 20:12:41 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 12 Oct 2026 20:12:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 20:12:41 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 12 Oct 2026 20:12:41 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b1be88c1a95445e6111ba7b3bceed48f958b8f6eb2ff1c4b27f45fa7b0f45de9`  
		Last Modified: Mon, 12 Oct 2026 19:10:36 GMT  
		Size: 45.8 MB (45800687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83b64b1168947aad11a558fd828116b9a5f9e8dd2c32fbe30d04591b1323f396`  
		Last Modified: Mon, 12 Oct 2026 20:13:13 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a58cacc6b5cf4869d4c424a8c80c0d4f9e392386e3cf281d6280cabfecb4e1a`  
		Last Modified: Mon, 12 Oct 2026 20:13:13 GMT  
		Size: 737.5 KB (737523 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7f73fdba829db0d2f5eccaea13eb82fca3a992ca92de985bb4fc8c97cea1045`  
		Last Modified: Mon, 12 Oct 2026 20:13:13 GMT  
		Size: 5.8 MB (5809858 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1953d80eb3b9559d28e3fe3302b402b9b4d90d783b6e3720b7078eea9b6c9d6d`  
		Last Modified: Mon, 12 Oct 2026 20:13:13 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:187b3ea816c40bc1a69927821cd589e72e6b173eb625d0ffe66a3a6c43797020`  
		Last Modified: Mon, 12 Oct 2026 20:13:14 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd3898dc44c741ec2e322bef4859b2f1ef11153911e88f2e19abcb8f4b1f7fd9`  
		Last Modified: Mon, 12 Oct 2026 20:13:16 GMT  
		Size: 49.8 MB (49840459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ecdc743ad912de8da5c3137cc8ff858193535595e404b5e3a8f33e6c6a6c2fb`  
		Last Modified: Mon, 12 Oct 2026 20:13:15 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebd9edd1f8654944def738986b750445dc9f4e00a93ac95c541e8947f0b36624`  
		Last Modified: Mon, 12 Oct 2026 20:13:18 GMT  
		Size: 130.8 MB (130768681 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69c97d6063ee119de522ed1a5a0a50969132f6aeeb78d79c2e3b74936697820d`  
		Last Modified: Mon, 12 Oct 2026 20:13:16 GMT  
		Size: 5.2 KB (5223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:33579c6dd0151049ff25aecc0a2255ee1734c0a60cb9cedd108a9adc9f7149ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15743915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bba57ff62a49f5625801ddf5eab6c8ee48fb32a62a30f9ab44445e703045837`

```dockerfile
```

-	Layers:
	-	`sha256:f7fbb1d178cb4dae3d88d422a304e0829e1e1d913855c4e534a098f9d0408609`  
		Last Modified: Mon, 12 Oct 2026 20:13:14 GMT  
		Size: 15.7 MB (15710334 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fdecb8cd4a9e3a6ffb675cca71e535341d8ca3f8e03136c009e0d37c4317f89a`  
		Last Modified: Mon, 12 Oct 2026 20:13:13 GMT  
		Size: 33.6 KB (33581 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:8.4`

```console
$ docker pull mysql@sha256:24989179f58856db763f418010c1169fecc944e3ec1ea7e921572d83eb070f70
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8.4` - linux; amd64

```console
$ docker pull mysql@sha256:1f8411cc085d2f2f92060fca926746cbf97f87b76c3008e9741ad62e604c4ffa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.3 MB (238271431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efb212ddf03576a6c0b02b8d364e6a46f21e628308a719db0b0450f8817c0517`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 12 Oct 2026 19:11:06 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 12 Oct 2026 19:11:06 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 20:10:55 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 12 Oct 2026 20:10:57 GMT
ENV GOSU_VERSION=1.19
# Mon, 12 Oct 2026 20:10:57 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 12 Oct 2026 20:11:32 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 12 Oct 2026 20:11:32 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 12 Oct 2026 20:11:32 GMT
ENV MYSQL_MAJOR=8.4
# Mon, 12 Oct 2026 20:11:32 GMT
ENV MYSQL_VERSION=8.4.11-1.el9
# Mon, 12 Oct 2026 20:11:32 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 12 Oct 2026 20:12:11 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 12 Oct 2026 20:12:11 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 12 Oct 2026 20:12:11 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Mon, 12 Oct 2026 20:12:57 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 12 Oct 2026 20:12:57 GMT
VOLUME [/var/lib/mysql]
# Mon, 12 Oct 2026 20:12:57 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 12 Oct 2026 20:12:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 20:12:57 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 12 Oct 2026 20:12:57 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:e896da32f635ced58051c434f6d70ebdf95efaa199d796f16689ad6a7393d30e`  
		Last Modified: Mon, 12 Oct 2026 19:11:17 GMT  
		Size: 47.2 MB (47247118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3527249a80250b4d0f452811193658002eebd25e2758b35f93b639b2d721d899`  
		Last Modified: Mon, 12 Oct 2026 20:13:27 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b54d15c954d73fe71e59e0797bc565b9fa8d67c2fe18970df673a82d9c74f2c`  
		Last Modified: Mon, 12 Oct 2026 20:13:28 GMT  
		Size: 783.6 KB (783559 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf11ec3e7e5618767691195feb6cc40d1f86fb1a54338c80df3fe8804ece1c23`  
		Last Modified: Mon, 12 Oct 2026 20:13:28 GMT  
		Size: 6.2 MB (6192250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15ba404f5528b0547c2d4884ada43f999de2b0252eeaf1abcb9970479b444d94`  
		Last Modified: Mon, 12 Oct 2026 20:13:28 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad73434ffdad6997fe24eea0758aa8127a5bdb03b2a1693c0fac8f88b0a8f6a1`  
		Last Modified: Mon, 12 Oct 2026 20:13:28 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81077ec0e5ac518631417757cb001cff0c54df11a3a0a61235653162a18ff75d`  
		Last Modified: Mon, 12 Oct 2026 20:13:31 GMT  
		Size: 51.6 MB (51621353 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f51a9a1f0d203324da5a4ffb5b397fffadeb8756a87bbbbceb8c1508bc097bce`  
		Last Modified: Mon, 12 Oct 2026 20:13:29 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ba189089539754b09853c19d511d55261709ada5bb63d214f881eb201c3c2b6`  
		Last Modified: Mon, 12 Oct 2026 20:13:32 GMT  
		Size: 132.4 MB (132417781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4cc7515d7b7f23527c739e2870aaa442a0eed32e21710b9263a562e964e965a`  
		Last Modified: Mon, 12 Oct 2026 20:13:30 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4` - unknown; unknown

```console
$ docker pull mysql@sha256:50d1e33606e30393c5ffd2d96e103b4f3f3784f3f633766ddd2dcd8bf55649a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15745247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6050905f4b460d1f5837473a316ac098dc615fc530d92e9bff60fce9a80b0884`

```dockerfile
```

-	Layers:
	-	`sha256:8e537378399f384c3585c4b9f14500d6ad6c581e8e6ba250f43e670c27654814`  
		Last Modified: Mon, 12 Oct 2026 20:13:28 GMT  
		Size: 15.7 MB (15711934 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c3aa1963b3d36ab6e1be77cd1c592fe7055380c7fd560a485f63483860538281`  
		Last Modified: Mon, 12 Oct 2026 20:13:27 GMT  
		Size: 33.3 KB (33313 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8.4` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:88b9c60a44c8864787b96e8254cd050c4af5e82fea6edf08225546f447b43a31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.0 MB (232966578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc52b8b5900d106bc482241091cfa7496d830280868e19aca8a24e8e7086568e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 12 Oct 2026 19:10:25 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 12 Oct 2026 19:10:25 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 20:10:29 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 12 Oct 2026 20:10:31 GMT
ENV GOSU_VERSION=1.19
# Mon, 12 Oct 2026 20:10:31 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 12 Oct 2026 20:11:09 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 12 Oct 2026 20:11:10 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 12 Oct 2026 20:11:10 GMT
ENV MYSQL_MAJOR=8.4
# Mon, 12 Oct 2026 20:11:10 GMT
ENV MYSQL_VERSION=8.4.11-1.el9
# Mon, 12 Oct 2026 20:11:10 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 12 Oct 2026 20:11:52 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 12 Oct 2026 20:11:52 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 12 Oct 2026 20:11:52 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Mon, 12 Oct 2026 20:12:41 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 12 Oct 2026 20:12:41 GMT
VOLUME [/var/lib/mysql]
# Mon, 12 Oct 2026 20:12:41 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 12 Oct 2026 20:12:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 20:12:41 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 12 Oct 2026 20:12:41 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b1be88c1a95445e6111ba7b3bceed48f958b8f6eb2ff1c4b27f45fa7b0f45de9`  
		Last Modified: Mon, 12 Oct 2026 19:10:36 GMT  
		Size: 45.8 MB (45800687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83b64b1168947aad11a558fd828116b9a5f9e8dd2c32fbe30d04591b1323f396`  
		Last Modified: Mon, 12 Oct 2026 20:13:13 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a58cacc6b5cf4869d4c424a8c80c0d4f9e392386e3cf281d6280cabfecb4e1a`  
		Last Modified: Mon, 12 Oct 2026 20:13:13 GMT  
		Size: 737.5 KB (737523 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7f73fdba829db0d2f5eccaea13eb82fca3a992ca92de985bb4fc8c97cea1045`  
		Last Modified: Mon, 12 Oct 2026 20:13:13 GMT  
		Size: 5.8 MB (5809858 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1953d80eb3b9559d28e3fe3302b402b9b4d90d783b6e3720b7078eea9b6c9d6d`  
		Last Modified: Mon, 12 Oct 2026 20:13:13 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:187b3ea816c40bc1a69927821cd589e72e6b173eb625d0ffe66a3a6c43797020`  
		Last Modified: Mon, 12 Oct 2026 20:13:14 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd3898dc44c741ec2e322bef4859b2f1ef11153911e88f2e19abcb8f4b1f7fd9`  
		Last Modified: Mon, 12 Oct 2026 20:13:16 GMT  
		Size: 49.8 MB (49840459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ecdc743ad912de8da5c3137cc8ff858193535595e404b5e3a8f33e6c6a6c2fb`  
		Last Modified: Mon, 12 Oct 2026 20:13:15 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebd9edd1f8654944def738986b750445dc9f4e00a93ac95c541e8947f0b36624`  
		Last Modified: Mon, 12 Oct 2026 20:13:18 GMT  
		Size: 130.8 MB (130768681 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69c97d6063ee119de522ed1a5a0a50969132f6aeeb78d79c2e3b74936697820d`  
		Last Modified: Mon, 12 Oct 2026 20:13:16 GMT  
		Size: 5.2 KB (5223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4` - unknown; unknown

```console
$ docker pull mysql@sha256:33579c6dd0151049ff25aecc0a2255ee1734c0a60cb9cedd108a9adc9f7149ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15743915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bba57ff62a49f5625801ddf5eab6c8ee48fb32a62a30f9ab44445e703045837`

```dockerfile
```

-	Layers:
	-	`sha256:f7fbb1d178cb4dae3d88d422a304e0829e1e1d913855c4e534a098f9d0408609`  
		Last Modified: Mon, 12 Oct 2026 20:13:14 GMT  
		Size: 15.7 MB (15710334 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fdecb8cd4a9e3a6ffb675cca71e535341d8ca3f8e03136c009e0d37c4317f89a`  
		Last Modified: Mon, 12 Oct 2026 20:13:13 GMT  
		Size: 33.6 KB (33581 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:8.4-oracle`

```console
$ docker pull mysql@sha256:24989179f58856db763f418010c1169fecc944e3ec1ea7e921572d83eb070f70
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8.4-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:1f8411cc085d2f2f92060fca926746cbf97f87b76c3008e9741ad62e604c4ffa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.3 MB (238271431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efb212ddf03576a6c0b02b8d364e6a46f21e628308a719db0b0450f8817c0517`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 12 Oct 2026 19:11:06 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 12 Oct 2026 19:11:06 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 20:10:55 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 12 Oct 2026 20:10:57 GMT
ENV GOSU_VERSION=1.19
# Mon, 12 Oct 2026 20:10:57 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 12 Oct 2026 20:11:32 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 12 Oct 2026 20:11:32 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 12 Oct 2026 20:11:32 GMT
ENV MYSQL_MAJOR=8.4
# Mon, 12 Oct 2026 20:11:32 GMT
ENV MYSQL_VERSION=8.4.11-1.el9
# Mon, 12 Oct 2026 20:11:32 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 12 Oct 2026 20:12:11 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 12 Oct 2026 20:12:11 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 12 Oct 2026 20:12:11 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Mon, 12 Oct 2026 20:12:57 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 12 Oct 2026 20:12:57 GMT
VOLUME [/var/lib/mysql]
# Mon, 12 Oct 2026 20:12:57 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 12 Oct 2026 20:12:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 20:12:57 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 12 Oct 2026 20:12:57 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:e896da32f635ced58051c434f6d70ebdf95efaa199d796f16689ad6a7393d30e`  
		Last Modified: Mon, 12 Oct 2026 19:11:17 GMT  
		Size: 47.2 MB (47247118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3527249a80250b4d0f452811193658002eebd25e2758b35f93b639b2d721d899`  
		Last Modified: Mon, 12 Oct 2026 20:13:27 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b54d15c954d73fe71e59e0797bc565b9fa8d67c2fe18970df673a82d9c74f2c`  
		Last Modified: Mon, 12 Oct 2026 20:13:28 GMT  
		Size: 783.6 KB (783559 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf11ec3e7e5618767691195feb6cc40d1f86fb1a54338c80df3fe8804ece1c23`  
		Last Modified: Mon, 12 Oct 2026 20:13:28 GMT  
		Size: 6.2 MB (6192250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15ba404f5528b0547c2d4884ada43f999de2b0252eeaf1abcb9970479b444d94`  
		Last Modified: Mon, 12 Oct 2026 20:13:28 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad73434ffdad6997fe24eea0758aa8127a5bdb03b2a1693c0fac8f88b0a8f6a1`  
		Last Modified: Mon, 12 Oct 2026 20:13:28 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81077ec0e5ac518631417757cb001cff0c54df11a3a0a61235653162a18ff75d`  
		Last Modified: Mon, 12 Oct 2026 20:13:31 GMT  
		Size: 51.6 MB (51621353 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f51a9a1f0d203324da5a4ffb5b397fffadeb8756a87bbbbceb8c1508bc097bce`  
		Last Modified: Mon, 12 Oct 2026 20:13:29 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ba189089539754b09853c19d511d55261709ada5bb63d214f881eb201c3c2b6`  
		Last Modified: Mon, 12 Oct 2026 20:13:32 GMT  
		Size: 132.4 MB (132417781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4cc7515d7b7f23527c739e2870aaa442a0eed32e21710b9263a562e964e965a`  
		Last Modified: Mon, 12 Oct 2026 20:13:30 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:50d1e33606e30393c5ffd2d96e103b4f3f3784f3f633766ddd2dcd8bf55649a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15745247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6050905f4b460d1f5837473a316ac098dc615fc530d92e9bff60fce9a80b0884`

```dockerfile
```

-	Layers:
	-	`sha256:8e537378399f384c3585c4b9f14500d6ad6c581e8e6ba250f43e670c27654814`  
		Last Modified: Mon, 12 Oct 2026 20:13:28 GMT  
		Size: 15.7 MB (15711934 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c3aa1963b3d36ab6e1be77cd1c592fe7055380c7fd560a485f63483860538281`  
		Last Modified: Mon, 12 Oct 2026 20:13:27 GMT  
		Size: 33.3 KB (33313 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8.4-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:88b9c60a44c8864787b96e8254cd050c4af5e82fea6edf08225546f447b43a31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.0 MB (232966578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc52b8b5900d106bc482241091cfa7496d830280868e19aca8a24e8e7086568e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 12 Oct 2026 19:10:25 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 12 Oct 2026 19:10:25 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 20:10:29 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 12 Oct 2026 20:10:31 GMT
ENV GOSU_VERSION=1.19
# Mon, 12 Oct 2026 20:10:31 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 12 Oct 2026 20:11:09 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 12 Oct 2026 20:11:10 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 12 Oct 2026 20:11:10 GMT
ENV MYSQL_MAJOR=8.4
# Mon, 12 Oct 2026 20:11:10 GMT
ENV MYSQL_VERSION=8.4.11-1.el9
# Mon, 12 Oct 2026 20:11:10 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 12 Oct 2026 20:11:52 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 12 Oct 2026 20:11:52 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 12 Oct 2026 20:11:52 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Mon, 12 Oct 2026 20:12:41 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 12 Oct 2026 20:12:41 GMT
VOLUME [/var/lib/mysql]
# Mon, 12 Oct 2026 20:12:41 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 12 Oct 2026 20:12:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 20:12:41 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 12 Oct 2026 20:12:41 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b1be88c1a95445e6111ba7b3bceed48f958b8f6eb2ff1c4b27f45fa7b0f45de9`  
		Last Modified: Mon, 12 Oct 2026 19:10:36 GMT  
		Size: 45.8 MB (45800687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83b64b1168947aad11a558fd828116b9a5f9e8dd2c32fbe30d04591b1323f396`  
		Last Modified: Mon, 12 Oct 2026 20:13:13 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a58cacc6b5cf4869d4c424a8c80c0d4f9e392386e3cf281d6280cabfecb4e1a`  
		Last Modified: Mon, 12 Oct 2026 20:13:13 GMT  
		Size: 737.5 KB (737523 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7f73fdba829db0d2f5eccaea13eb82fca3a992ca92de985bb4fc8c97cea1045`  
		Last Modified: Mon, 12 Oct 2026 20:13:13 GMT  
		Size: 5.8 MB (5809858 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1953d80eb3b9559d28e3fe3302b402b9b4d90d783b6e3720b7078eea9b6c9d6d`  
		Last Modified: Mon, 12 Oct 2026 20:13:13 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:187b3ea816c40bc1a69927821cd589e72e6b173eb625d0ffe66a3a6c43797020`  
		Last Modified: Mon, 12 Oct 2026 20:13:14 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd3898dc44c741ec2e322bef4859b2f1ef11153911e88f2e19abcb8f4b1f7fd9`  
		Last Modified: Mon, 12 Oct 2026 20:13:16 GMT  
		Size: 49.8 MB (49840459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ecdc743ad912de8da5c3137cc8ff858193535595e404b5e3a8f33e6c6a6c2fb`  
		Last Modified: Mon, 12 Oct 2026 20:13:15 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebd9edd1f8654944def738986b750445dc9f4e00a93ac95c541e8947f0b36624`  
		Last Modified: Mon, 12 Oct 2026 20:13:18 GMT  
		Size: 130.8 MB (130768681 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69c97d6063ee119de522ed1a5a0a50969132f6aeeb78d79c2e3b74936697820d`  
		Last Modified: Mon, 12 Oct 2026 20:13:16 GMT  
		Size: 5.2 KB (5223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:33579c6dd0151049ff25aecc0a2255ee1734c0a60cb9cedd108a9adc9f7149ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15743915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bba57ff62a49f5625801ddf5eab6c8ee48fb32a62a30f9ab44445e703045837`

```dockerfile
```

-	Layers:
	-	`sha256:f7fbb1d178cb4dae3d88d422a304e0829e1e1d913855c4e534a098f9d0408609`  
		Last Modified: Mon, 12 Oct 2026 20:13:14 GMT  
		Size: 15.7 MB (15710334 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fdecb8cd4a9e3a6ffb675cca71e535341d8ca3f8e03136c009e0d37c4317f89a`  
		Last Modified: Mon, 12 Oct 2026 20:13:13 GMT  
		Size: 33.6 KB (33581 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:8.4-oraclelinux9`

```console
$ docker pull mysql@sha256:24989179f58856db763f418010c1169fecc944e3ec1ea7e921572d83eb070f70
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8.4-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:1f8411cc085d2f2f92060fca926746cbf97f87b76c3008e9741ad62e604c4ffa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.3 MB (238271431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efb212ddf03576a6c0b02b8d364e6a46f21e628308a719db0b0450f8817c0517`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 12 Oct 2026 19:11:06 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 12 Oct 2026 19:11:06 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 20:10:55 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 12 Oct 2026 20:10:57 GMT
ENV GOSU_VERSION=1.19
# Mon, 12 Oct 2026 20:10:57 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 12 Oct 2026 20:11:32 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 12 Oct 2026 20:11:32 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 12 Oct 2026 20:11:32 GMT
ENV MYSQL_MAJOR=8.4
# Mon, 12 Oct 2026 20:11:32 GMT
ENV MYSQL_VERSION=8.4.11-1.el9
# Mon, 12 Oct 2026 20:11:32 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 12 Oct 2026 20:12:11 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 12 Oct 2026 20:12:11 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 12 Oct 2026 20:12:11 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Mon, 12 Oct 2026 20:12:57 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 12 Oct 2026 20:12:57 GMT
VOLUME [/var/lib/mysql]
# Mon, 12 Oct 2026 20:12:57 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 12 Oct 2026 20:12:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 20:12:57 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 12 Oct 2026 20:12:57 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:e896da32f635ced58051c434f6d70ebdf95efaa199d796f16689ad6a7393d30e`  
		Last Modified: Mon, 12 Oct 2026 19:11:17 GMT  
		Size: 47.2 MB (47247118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3527249a80250b4d0f452811193658002eebd25e2758b35f93b639b2d721d899`  
		Last Modified: Mon, 12 Oct 2026 20:13:27 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b54d15c954d73fe71e59e0797bc565b9fa8d67c2fe18970df673a82d9c74f2c`  
		Last Modified: Mon, 12 Oct 2026 20:13:28 GMT  
		Size: 783.6 KB (783559 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf11ec3e7e5618767691195feb6cc40d1f86fb1a54338c80df3fe8804ece1c23`  
		Last Modified: Mon, 12 Oct 2026 20:13:28 GMT  
		Size: 6.2 MB (6192250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15ba404f5528b0547c2d4884ada43f999de2b0252eeaf1abcb9970479b444d94`  
		Last Modified: Mon, 12 Oct 2026 20:13:28 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad73434ffdad6997fe24eea0758aa8127a5bdb03b2a1693c0fac8f88b0a8f6a1`  
		Last Modified: Mon, 12 Oct 2026 20:13:28 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81077ec0e5ac518631417757cb001cff0c54df11a3a0a61235653162a18ff75d`  
		Last Modified: Mon, 12 Oct 2026 20:13:31 GMT  
		Size: 51.6 MB (51621353 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f51a9a1f0d203324da5a4ffb5b397fffadeb8756a87bbbbceb8c1508bc097bce`  
		Last Modified: Mon, 12 Oct 2026 20:13:29 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ba189089539754b09853c19d511d55261709ada5bb63d214f881eb201c3c2b6`  
		Last Modified: Mon, 12 Oct 2026 20:13:32 GMT  
		Size: 132.4 MB (132417781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4cc7515d7b7f23527c739e2870aaa442a0eed32e21710b9263a562e964e965a`  
		Last Modified: Mon, 12 Oct 2026 20:13:30 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:50d1e33606e30393c5ffd2d96e103b4f3f3784f3f633766ddd2dcd8bf55649a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15745247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6050905f4b460d1f5837473a316ac098dc615fc530d92e9bff60fce9a80b0884`

```dockerfile
```

-	Layers:
	-	`sha256:8e537378399f384c3585c4b9f14500d6ad6c581e8e6ba250f43e670c27654814`  
		Last Modified: Mon, 12 Oct 2026 20:13:28 GMT  
		Size: 15.7 MB (15711934 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c3aa1963b3d36ab6e1be77cd1c592fe7055380c7fd560a485f63483860538281`  
		Last Modified: Mon, 12 Oct 2026 20:13:27 GMT  
		Size: 33.3 KB (33313 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8.4-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:88b9c60a44c8864787b96e8254cd050c4af5e82fea6edf08225546f447b43a31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.0 MB (232966578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc52b8b5900d106bc482241091cfa7496d830280868e19aca8a24e8e7086568e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 12 Oct 2026 19:10:25 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 12 Oct 2026 19:10:25 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 20:10:29 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 12 Oct 2026 20:10:31 GMT
ENV GOSU_VERSION=1.19
# Mon, 12 Oct 2026 20:10:31 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 12 Oct 2026 20:11:09 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 12 Oct 2026 20:11:10 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 12 Oct 2026 20:11:10 GMT
ENV MYSQL_MAJOR=8.4
# Mon, 12 Oct 2026 20:11:10 GMT
ENV MYSQL_VERSION=8.4.11-1.el9
# Mon, 12 Oct 2026 20:11:10 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 12 Oct 2026 20:11:52 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 12 Oct 2026 20:11:52 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 12 Oct 2026 20:11:52 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Mon, 12 Oct 2026 20:12:41 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 12 Oct 2026 20:12:41 GMT
VOLUME [/var/lib/mysql]
# Mon, 12 Oct 2026 20:12:41 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 12 Oct 2026 20:12:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 20:12:41 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 12 Oct 2026 20:12:41 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b1be88c1a95445e6111ba7b3bceed48f958b8f6eb2ff1c4b27f45fa7b0f45de9`  
		Last Modified: Mon, 12 Oct 2026 19:10:36 GMT  
		Size: 45.8 MB (45800687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83b64b1168947aad11a558fd828116b9a5f9e8dd2c32fbe30d04591b1323f396`  
		Last Modified: Mon, 12 Oct 2026 20:13:13 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a58cacc6b5cf4869d4c424a8c80c0d4f9e392386e3cf281d6280cabfecb4e1a`  
		Last Modified: Mon, 12 Oct 2026 20:13:13 GMT  
		Size: 737.5 KB (737523 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7f73fdba829db0d2f5eccaea13eb82fca3a992ca92de985bb4fc8c97cea1045`  
		Last Modified: Mon, 12 Oct 2026 20:13:13 GMT  
		Size: 5.8 MB (5809858 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1953d80eb3b9559d28e3fe3302b402b9b4d90d783b6e3720b7078eea9b6c9d6d`  
		Last Modified: Mon, 12 Oct 2026 20:13:13 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:187b3ea816c40bc1a69927821cd589e72e6b173eb625d0ffe66a3a6c43797020`  
		Last Modified: Mon, 12 Oct 2026 20:13:14 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd3898dc44c741ec2e322bef4859b2f1ef11153911e88f2e19abcb8f4b1f7fd9`  
		Last Modified: Mon, 12 Oct 2026 20:13:16 GMT  
		Size: 49.8 MB (49840459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ecdc743ad912de8da5c3137cc8ff858193535595e404b5e3a8f33e6c6a6c2fb`  
		Last Modified: Mon, 12 Oct 2026 20:13:15 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebd9edd1f8654944def738986b750445dc9f4e00a93ac95c541e8947f0b36624`  
		Last Modified: Mon, 12 Oct 2026 20:13:18 GMT  
		Size: 130.8 MB (130768681 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69c97d6063ee119de522ed1a5a0a50969132f6aeeb78d79c2e3b74936697820d`  
		Last Modified: Mon, 12 Oct 2026 20:13:16 GMT  
		Size: 5.2 KB (5223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:33579c6dd0151049ff25aecc0a2255ee1734c0a60cb9cedd108a9adc9f7149ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15743915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bba57ff62a49f5625801ddf5eab6c8ee48fb32a62a30f9ab44445e703045837`

```dockerfile
```

-	Layers:
	-	`sha256:f7fbb1d178cb4dae3d88d422a304e0829e1e1d913855c4e534a098f9d0408609`  
		Last Modified: Mon, 12 Oct 2026 20:13:14 GMT  
		Size: 15.7 MB (15710334 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fdecb8cd4a9e3a6ffb675cca71e535341d8ca3f8e03136c009e0d37c4317f89a`  
		Last Modified: Mon, 12 Oct 2026 20:13:13 GMT  
		Size: 33.6 KB (33581 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:8.4.11`

```console
$ docker pull mysql@sha256:24989179f58856db763f418010c1169fecc944e3ec1ea7e921572d83eb070f70
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8.4.11` - linux; amd64

```console
$ docker pull mysql@sha256:1f8411cc085d2f2f92060fca926746cbf97f87b76c3008e9741ad62e604c4ffa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.3 MB (238271431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efb212ddf03576a6c0b02b8d364e6a46f21e628308a719db0b0450f8817c0517`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 12 Oct 2026 19:11:06 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 12 Oct 2026 19:11:06 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 20:10:55 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 12 Oct 2026 20:10:57 GMT
ENV GOSU_VERSION=1.19
# Mon, 12 Oct 2026 20:10:57 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 12 Oct 2026 20:11:32 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 12 Oct 2026 20:11:32 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 12 Oct 2026 20:11:32 GMT
ENV MYSQL_MAJOR=8.4
# Mon, 12 Oct 2026 20:11:32 GMT
ENV MYSQL_VERSION=8.4.11-1.el9
# Mon, 12 Oct 2026 20:11:32 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 12 Oct 2026 20:12:11 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 12 Oct 2026 20:12:11 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 12 Oct 2026 20:12:11 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Mon, 12 Oct 2026 20:12:57 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 12 Oct 2026 20:12:57 GMT
VOLUME [/var/lib/mysql]
# Mon, 12 Oct 2026 20:12:57 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 12 Oct 2026 20:12:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 20:12:57 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 12 Oct 2026 20:12:57 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:e896da32f635ced58051c434f6d70ebdf95efaa199d796f16689ad6a7393d30e`  
		Last Modified: Mon, 12 Oct 2026 19:11:17 GMT  
		Size: 47.2 MB (47247118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3527249a80250b4d0f452811193658002eebd25e2758b35f93b639b2d721d899`  
		Last Modified: Mon, 12 Oct 2026 20:13:27 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b54d15c954d73fe71e59e0797bc565b9fa8d67c2fe18970df673a82d9c74f2c`  
		Last Modified: Mon, 12 Oct 2026 20:13:28 GMT  
		Size: 783.6 KB (783559 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf11ec3e7e5618767691195feb6cc40d1f86fb1a54338c80df3fe8804ece1c23`  
		Last Modified: Mon, 12 Oct 2026 20:13:28 GMT  
		Size: 6.2 MB (6192250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15ba404f5528b0547c2d4884ada43f999de2b0252eeaf1abcb9970479b444d94`  
		Last Modified: Mon, 12 Oct 2026 20:13:28 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad73434ffdad6997fe24eea0758aa8127a5bdb03b2a1693c0fac8f88b0a8f6a1`  
		Last Modified: Mon, 12 Oct 2026 20:13:28 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81077ec0e5ac518631417757cb001cff0c54df11a3a0a61235653162a18ff75d`  
		Last Modified: Mon, 12 Oct 2026 20:13:31 GMT  
		Size: 51.6 MB (51621353 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f51a9a1f0d203324da5a4ffb5b397fffadeb8756a87bbbbceb8c1508bc097bce`  
		Last Modified: Mon, 12 Oct 2026 20:13:29 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ba189089539754b09853c19d511d55261709ada5bb63d214f881eb201c3c2b6`  
		Last Modified: Mon, 12 Oct 2026 20:13:32 GMT  
		Size: 132.4 MB (132417781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4cc7515d7b7f23527c739e2870aaa442a0eed32e21710b9263a562e964e965a`  
		Last Modified: Mon, 12 Oct 2026 20:13:30 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4.11` - unknown; unknown

```console
$ docker pull mysql@sha256:50d1e33606e30393c5ffd2d96e103b4f3f3784f3f633766ddd2dcd8bf55649a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15745247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6050905f4b460d1f5837473a316ac098dc615fc530d92e9bff60fce9a80b0884`

```dockerfile
```

-	Layers:
	-	`sha256:8e537378399f384c3585c4b9f14500d6ad6c581e8e6ba250f43e670c27654814`  
		Last Modified: Mon, 12 Oct 2026 20:13:28 GMT  
		Size: 15.7 MB (15711934 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c3aa1963b3d36ab6e1be77cd1c592fe7055380c7fd560a485f63483860538281`  
		Last Modified: Mon, 12 Oct 2026 20:13:27 GMT  
		Size: 33.3 KB (33313 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8.4.11` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:88b9c60a44c8864787b96e8254cd050c4af5e82fea6edf08225546f447b43a31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.0 MB (232966578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc52b8b5900d106bc482241091cfa7496d830280868e19aca8a24e8e7086568e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 12 Oct 2026 19:10:25 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 12 Oct 2026 19:10:25 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 20:10:29 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 12 Oct 2026 20:10:31 GMT
ENV GOSU_VERSION=1.19
# Mon, 12 Oct 2026 20:10:31 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 12 Oct 2026 20:11:09 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 12 Oct 2026 20:11:10 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 12 Oct 2026 20:11:10 GMT
ENV MYSQL_MAJOR=8.4
# Mon, 12 Oct 2026 20:11:10 GMT
ENV MYSQL_VERSION=8.4.11-1.el9
# Mon, 12 Oct 2026 20:11:10 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 12 Oct 2026 20:11:52 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 12 Oct 2026 20:11:52 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 12 Oct 2026 20:11:52 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Mon, 12 Oct 2026 20:12:41 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 12 Oct 2026 20:12:41 GMT
VOLUME [/var/lib/mysql]
# Mon, 12 Oct 2026 20:12:41 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 12 Oct 2026 20:12:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 20:12:41 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 12 Oct 2026 20:12:41 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b1be88c1a95445e6111ba7b3bceed48f958b8f6eb2ff1c4b27f45fa7b0f45de9`  
		Last Modified: Mon, 12 Oct 2026 19:10:36 GMT  
		Size: 45.8 MB (45800687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83b64b1168947aad11a558fd828116b9a5f9e8dd2c32fbe30d04591b1323f396`  
		Last Modified: Mon, 12 Oct 2026 20:13:13 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a58cacc6b5cf4869d4c424a8c80c0d4f9e392386e3cf281d6280cabfecb4e1a`  
		Last Modified: Mon, 12 Oct 2026 20:13:13 GMT  
		Size: 737.5 KB (737523 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7f73fdba829db0d2f5eccaea13eb82fca3a992ca92de985bb4fc8c97cea1045`  
		Last Modified: Mon, 12 Oct 2026 20:13:13 GMT  
		Size: 5.8 MB (5809858 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1953d80eb3b9559d28e3fe3302b402b9b4d90d783b6e3720b7078eea9b6c9d6d`  
		Last Modified: Mon, 12 Oct 2026 20:13:13 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:187b3ea816c40bc1a69927821cd589e72e6b173eb625d0ffe66a3a6c43797020`  
		Last Modified: Mon, 12 Oct 2026 20:13:14 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd3898dc44c741ec2e322bef4859b2f1ef11153911e88f2e19abcb8f4b1f7fd9`  
		Last Modified: Mon, 12 Oct 2026 20:13:16 GMT  
		Size: 49.8 MB (49840459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ecdc743ad912de8da5c3137cc8ff858193535595e404b5e3a8f33e6c6a6c2fb`  
		Last Modified: Mon, 12 Oct 2026 20:13:15 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebd9edd1f8654944def738986b750445dc9f4e00a93ac95c541e8947f0b36624`  
		Last Modified: Mon, 12 Oct 2026 20:13:18 GMT  
		Size: 130.8 MB (130768681 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69c97d6063ee119de522ed1a5a0a50969132f6aeeb78d79c2e3b74936697820d`  
		Last Modified: Mon, 12 Oct 2026 20:13:16 GMT  
		Size: 5.2 KB (5223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4.11` - unknown; unknown

```console
$ docker pull mysql@sha256:33579c6dd0151049ff25aecc0a2255ee1734c0a60cb9cedd108a9adc9f7149ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15743915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bba57ff62a49f5625801ddf5eab6c8ee48fb32a62a30f9ab44445e703045837`

```dockerfile
```

-	Layers:
	-	`sha256:f7fbb1d178cb4dae3d88d422a304e0829e1e1d913855c4e534a098f9d0408609`  
		Last Modified: Mon, 12 Oct 2026 20:13:14 GMT  
		Size: 15.7 MB (15710334 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fdecb8cd4a9e3a6ffb675cca71e535341d8ca3f8e03136c009e0d37c4317f89a`  
		Last Modified: Mon, 12 Oct 2026 20:13:13 GMT  
		Size: 33.6 KB (33581 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:8.4.11-oracle`

```console
$ docker pull mysql@sha256:24989179f58856db763f418010c1169fecc944e3ec1ea7e921572d83eb070f70
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8.4.11-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:1f8411cc085d2f2f92060fca926746cbf97f87b76c3008e9741ad62e604c4ffa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.3 MB (238271431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efb212ddf03576a6c0b02b8d364e6a46f21e628308a719db0b0450f8817c0517`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 12 Oct 2026 19:11:06 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 12 Oct 2026 19:11:06 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 20:10:55 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 12 Oct 2026 20:10:57 GMT
ENV GOSU_VERSION=1.19
# Mon, 12 Oct 2026 20:10:57 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 12 Oct 2026 20:11:32 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 12 Oct 2026 20:11:32 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 12 Oct 2026 20:11:32 GMT
ENV MYSQL_MAJOR=8.4
# Mon, 12 Oct 2026 20:11:32 GMT
ENV MYSQL_VERSION=8.4.11-1.el9
# Mon, 12 Oct 2026 20:11:32 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 12 Oct 2026 20:12:11 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 12 Oct 2026 20:12:11 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 12 Oct 2026 20:12:11 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Mon, 12 Oct 2026 20:12:57 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 12 Oct 2026 20:12:57 GMT
VOLUME [/var/lib/mysql]
# Mon, 12 Oct 2026 20:12:57 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 12 Oct 2026 20:12:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 20:12:57 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 12 Oct 2026 20:12:57 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:e896da32f635ced58051c434f6d70ebdf95efaa199d796f16689ad6a7393d30e`  
		Last Modified: Mon, 12 Oct 2026 19:11:17 GMT  
		Size: 47.2 MB (47247118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3527249a80250b4d0f452811193658002eebd25e2758b35f93b639b2d721d899`  
		Last Modified: Mon, 12 Oct 2026 20:13:27 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b54d15c954d73fe71e59e0797bc565b9fa8d67c2fe18970df673a82d9c74f2c`  
		Last Modified: Mon, 12 Oct 2026 20:13:28 GMT  
		Size: 783.6 KB (783559 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf11ec3e7e5618767691195feb6cc40d1f86fb1a54338c80df3fe8804ece1c23`  
		Last Modified: Mon, 12 Oct 2026 20:13:28 GMT  
		Size: 6.2 MB (6192250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15ba404f5528b0547c2d4884ada43f999de2b0252eeaf1abcb9970479b444d94`  
		Last Modified: Mon, 12 Oct 2026 20:13:28 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad73434ffdad6997fe24eea0758aa8127a5bdb03b2a1693c0fac8f88b0a8f6a1`  
		Last Modified: Mon, 12 Oct 2026 20:13:28 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81077ec0e5ac518631417757cb001cff0c54df11a3a0a61235653162a18ff75d`  
		Last Modified: Mon, 12 Oct 2026 20:13:31 GMT  
		Size: 51.6 MB (51621353 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f51a9a1f0d203324da5a4ffb5b397fffadeb8756a87bbbbceb8c1508bc097bce`  
		Last Modified: Mon, 12 Oct 2026 20:13:29 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ba189089539754b09853c19d511d55261709ada5bb63d214f881eb201c3c2b6`  
		Last Modified: Mon, 12 Oct 2026 20:13:32 GMT  
		Size: 132.4 MB (132417781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4cc7515d7b7f23527c739e2870aaa442a0eed32e21710b9263a562e964e965a`  
		Last Modified: Mon, 12 Oct 2026 20:13:30 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4.11-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:50d1e33606e30393c5ffd2d96e103b4f3f3784f3f633766ddd2dcd8bf55649a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15745247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6050905f4b460d1f5837473a316ac098dc615fc530d92e9bff60fce9a80b0884`

```dockerfile
```

-	Layers:
	-	`sha256:8e537378399f384c3585c4b9f14500d6ad6c581e8e6ba250f43e670c27654814`  
		Last Modified: Mon, 12 Oct 2026 20:13:28 GMT  
		Size: 15.7 MB (15711934 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c3aa1963b3d36ab6e1be77cd1c592fe7055380c7fd560a485f63483860538281`  
		Last Modified: Mon, 12 Oct 2026 20:13:27 GMT  
		Size: 33.3 KB (33313 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8.4.11-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:88b9c60a44c8864787b96e8254cd050c4af5e82fea6edf08225546f447b43a31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.0 MB (232966578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc52b8b5900d106bc482241091cfa7496d830280868e19aca8a24e8e7086568e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 12 Oct 2026 19:10:25 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 12 Oct 2026 19:10:25 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 20:10:29 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 12 Oct 2026 20:10:31 GMT
ENV GOSU_VERSION=1.19
# Mon, 12 Oct 2026 20:10:31 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 12 Oct 2026 20:11:09 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 12 Oct 2026 20:11:10 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 12 Oct 2026 20:11:10 GMT
ENV MYSQL_MAJOR=8.4
# Mon, 12 Oct 2026 20:11:10 GMT
ENV MYSQL_VERSION=8.4.11-1.el9
# Mon, 12 Oct 2026 20:11:10 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 12 Oct 2026 20:11:52 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 12 Oct 2026 20:11:52 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 12 Oct 2026 20:11:52 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Mon, 12 Oct 2026 20:12:41 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 12 Oct 2026 20:12:41 GMT
VOLUME [/var/lib/mysql]
# Mon, 12 Oct 2026 20:12:41 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 12 Oct 2026 20:12:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 20:12:41 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 12 Oct 2026 20:12:41 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b1be88c1a95445e6111ba7b3bceed48f958b8f6eb2ff1c4b27f45fa7b0f45de9`  
		Last Modified: Mon, 12 Oct 2026 19:10:36 GMT  
		Size: 45.8 MB (45800687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83b64b1168947aad11a558fd828116b9a5f9e8dd2c32fbe30d04591b1323f396`  
		Last Modified: Mon, 12 Oct 2026 20:13:13 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a58cacc6b5cf4869d4c424a8c80c0d4f9e392386e3cf281d6280cabfecb4e1a`  
		Last Modified: Mon, 12 Oct 2026 20:13:13 GMT  
		Size: 737.5 KB (737523 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7f73fdba829db0d2f5eccaea13eb82fca3a992ca92de985bb4fc8c97cea1045`  
		Last Modified: Mon, 12 Oct 2026 20:13:13 GMT  
		Size: 5.8 MB (5809858 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1953d80eb3b9559d28e3fe3302b402b9b4d90d783b6e3720b7078eea9b6c9d6d`  
		Last Modified: Mon, 12 Oct 2026 20:13:13 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:187b3ea816c40bc1a69927821cd589e72e6b173eb625d0ffe66a3a6c43797020`  
		Last Modified: Mon, 12 Oct 2026 20:13:14 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd3898dc44c741ec2e322bef4859b2f1ef11153911e88f2e19abcb8f4b1f7fd9`  
		Last Modified: Mon, 12 Oct 2026 20:13:16 GMT  
		Size: 49.8 MB (49840459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ecdc743ad912de8da5c3137cc8ff858193535595e404b5e3a8f33e6c6a6c2fb`  
		Last Modified: Mon, 12 Oct 2026 20:13:15 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebd9edd1f8654944def738986b750445dc9f4e00a93ac95c541e8947f0b36624`  
		Last Modified: Mon, 12 Oct 2026 20:13:18 GMT  
		Size: 130.8 MB (130768681 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69c97d6063ee119de522ed1a5a0a50969132f6aeeb78d79c2e3b74936697820d`  
		Last Modified: Mon, 12 Oct 2026 20:13:16 GMT  
		Size: 5.2 KB (5223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4.11-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:33579c6dd0151049ff25aecc0a2255ee1734c0a60cb9cedd108a9adc9f7149ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15743915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bba57ff62a49f5625801ddf5eab6c8ee48fb32a62a30f9ab44445e703045837`

```dockerfile
```

-	Layers:
	-	`sha256:f7fbb1d178cb4dae3d88d422a304e0829e1e1d913855c4e534a098f9d0408609`  
		Last Modified: Mon, 12 Oct 2026 20:13:14 GMT  
		Size: 15.7 MB (15710334 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fdecb8cd4a9e3a6ffb675cca71e535341d8ca3f8e03136c009e0d37c4317f89a`  
		Last Modified: Mon, 12 Oct 2026 20:13:13 GMT  
		Size: 33.6 KB (33581 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:8.4.11-oraclelinux9`

```console
$ docker pull mysql@sha256:24989179f58856db763f418010c1169fecc944e3ec1ea7e921572d83eb070f70
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8.4.11-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:1f8411cc085d2f2f92060fca926746cbf97f87b76c3008e9741ad62e604c4ffa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.3 MB (238271431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efb212ddf03576a6c0b02b8d364e6a46f21e628308a719db0b0450f8817c0517`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 12 Oct 2026 19:11:06 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 12 Oct 2026 19:11:06 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 20:10:55 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 12 Oct 2026 20:10:57 GMT
ENV GOSU_VERSION=1.19
# Mon, 12 Oct 2026 20:10:57 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 12 Oct 2026 20:11:32 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 12 Oct 2026 20:11:32 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 12 Oct 2026 20:11:32 GMT
ENV MYSQL_MAJOR=8.4
# Mon, 12 Oct 2026 20:11:32 GMT
ENV MYSQL_VERSION=8.4.11-1.el9
# Mon, 12 Oct 2026 20:11:32 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 12 Oct 2026 20:12:11 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 12 Oct 2026 20:12:11 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 12 Oct 2026 20:12:11 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Mon, 12 Oct 2026 20:12:57 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 12 Oct 2026 20:12:57 GMT
VOLUME [/var/lib/mysql]
# Mon, 12 Oct 2026 20:12:57 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 12 Oct 2026 20:12:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 20:12:57 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 12 Oct 2026 20:12:57 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:e896da32f635ced58051c434f6d70ebdf95efaa199d796f16689ad6a7393d30e`  
		Last Modified: Mon, 12 Oct 2026 19:11:17 GMT  
		Size: 47.2 MB (47247118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3527249a80250b4d0f452811193658002eebd25e2758b35f93b639b2d721d899`  
		Last Modified: Mon, 12 Oct 2026 20:13:27 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b54d15c954d73fe71e59e0797bc565b9fa8d67c2fe18970df673a82d9c74f2c`  
		Last Modified: Mon, 12 Oct 2026 20:13:28 GMT  
		Size: 783.6 KB (783559 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf11ec3e7e5618767691195feb6cc40d1f86fb1a54338c80df3fe8804ece1c23`  
		Last Modified: Mon, 12 Oct 2026 20:13:28 GMT  
		Size: 6.2 MB (6192250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15ba404f5528b0547c2d4884ada43f999de2b0252eeaf1abcb9970479b444d94`  
		Last Modified: Mon, 12 Oct 2026 20:13:28 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad73434ffdad6997fe24eea0758aa8127a5bdb03b2a1693c0fac8f88b0a8f6a1`  
		Last Modified: Mon, 12 Oct 2026 20:13:28 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81077ec0e5ac518631417757cb001cff0c54df11a3a0a61235653162a18ff75d`  
		Last Modified: Mon, 12 Oct 2026 20:13:31 GMT  
		Size: 51.6 MB (51621353 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f51a9a1f0d203324da5a4ffb5b397fffadeb8756a87bbbbceb8c1508bc097bce`  
		Last Modified: Mon, 12 Oct 2026 20:13:29 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ba189089539754b09853c19d511d55261709ada5bb63d214f881eb201c3c2b6`  
		Last Modified: Mon, 12 Oct 2026 20:13:32 GMT  
		Size: 132.4 MB (132417781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4cc7515d7b7f23527c739e2870aaa442a0eed32e21710b9263a562e964e965a`  
		Last Modified: Mon, 12 Oct 2026 20:13:30 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4.11-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:50d1e33606e30393c5ffd2d96e103b4f3f3784f3f633766ddd2dcd8bf55649a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15745247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6050905f4b460d1f5837473a316ac098dc615fc530d92e9bff60fce9a80b0884`

```dockerfile
```

-	Layers:
	-	`sha256:8e537378399f384c3585c4b9f14500d6ad6c581e8e6ba250f43e670c27654814`  
		Last Modified: Mon, 12 Oct 2026 20:13:28 GMT  
		Size: 15.7 MB (15711934 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c3aa1963b3d36ab6e1be77cd1c592fe7055380c7fd560a485f63483860538281`  
		Last Modified: Mon, 12 Oct 2026 20:13:27 GMT  
		Size: 33.3 KB (33313 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8.4.11-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:88b9c60a44c8864787b96e8254cd050c4af5e82fea6edf08225546f447b43a31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.0 MB (232966578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc52b8b5900d106bc482241091cfa7496d830280868e19aca8a24e8e7086568e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 12 Oct 2026 19:10:25 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 12 Oct 2026 19:10:25 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 20:10:29 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 12 Oct 2026 20:10:31 GMT
ENV GOSU_VERSION=1.19
# Mon, 12 Oct 2026 20:10:31 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 12 Oct 2026 20:11:09 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 12 Oct 2026 20:11:10 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 12 Oct 2026 20:11:10 GMT
ENV MYSQL_MAJOR=8.4
# Mon, 12 Oct 2026 20:11:10 GMT
ENV MYSQL_VERSION=8.4.11-1.el9
# Mon, 12 Oct 2026 20:11:10 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 12 Oct 2026 20:11:52 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 12 Oct 2026 20:11:52 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 12 Oct 2026 20:11:52 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Mon, 12 Oct 2026 20:12:41 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 12 Oct 2026 20:12:41 GMT
VOLUME [/var/lib/mysql]
# Mon, 12 Oct 2026 20:12:41 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 12 Oct 2026 20:12:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 20:12:41 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 12 Oct 2026 20:12:41 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b1be88c1a95445e6111ba7b3bceed48f958b8f6eb2ff1c4b27f45fa7b0f45de9`  
		Last Modified: Mon, 12 Oct 2026 19:10:36 GMT  
		Size: 45.8 MB (45800687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83b64b1168947aad11a558fd828116b9a5f9e8dd2c32fbe30d04591b1323f396`  
		Last Modified: Mon, 12 Oct 2026 20:13:13 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a58cacc6b5cf4869d4c424a8c80c0d4f9e392386e3cf281d6280cabfecb4e1a`  
		Last Modified: Mon, 12 Oct 2026 20:13:13 GMT  
		Size: 737.5 KB (737523 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7f73fdba829db0d2f5eccaea13eb82fca3a992ca92de985bb4fc8c97cea1045`  
		Last Modified: Mon, 12 Oct 2026 20:13:13 GMT  
		Size: 5.8 MB (5809858 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1953d80eb3b9559d28e3fe3302b402b9b4d90d783b6e3720b7078eea9b6c9d6d`  
		Last Modified: Mon, 12 Oct 2026 20:13:13 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:187b3ea816c40bc1a69927821cd589e72e6b173eb625d0ffe66a3a6c43797020`  
		Last Modified: Mon, 12 Oct 2026 20:13:14 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd3898dc44c741ec2e322bef4859b2f1ef11153911e88f2e19abcb8f4b1f7fd9`  
		Last Modified: Mon, 12 Oct 2026 20:13:16 GMT  
		Size: 49.8 MB (49840459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ecdc743ad912de8da5c3137cc8ff858193535595e404b5e3a8f33e6c6a6c2fb`  
		Last Modified: Mon, 12 Oct 2026 20:13:15 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebd9edd1f8654944def738986b750445dc9f4e00a93ac95c541e8947f0b36624`  
		Last Modified: Mon, 12 Oct 2026 20:13:18 GMT  
		Size: 130.8 MB (130768681 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69c97d6063ee119de522ed1a5a0a50969132f6aeeb78d79c2e3b74936697820d`  
		Last Modified: Mon, 12 Oct 2026 20:13:16 GMT  
		Size: 5.2 KB (5223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4.11-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:33579c6dd0151049ff25aecc0a2255ee1734c0a60cb9cedd108a9adc9f7149ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15743915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bba57ff62a49f5625801ddf5eab6c8ee48fb32a62a30f9ab44445e703045837`

```dockerfile
```

-	Layers:
	-	`sha256:f7fbb1d178cb4dae3d88d422a304e0829e1e1d913855c4e534a098f9d0408609`  
		Last Modified: Mon, 12 Oct 2026 20:13:14 GMT  
		Size: 15.7 MB (15710334 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fdecb8cd4a9e3a6ffb675cca71e535341d8ca3f8e03136c009e0d37c4317f89a`  
		Last Modified: Mon, 12 Oct 2026 20:13:13 GMT  
		Size: 33.6 KB (33581 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9`

```console
$ docker pull mysql@sha256:c7cb87a9822f499375287930cbff71d6d3b201e346b45108b1115b435ee2df13
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9` - linux; amd64

```console
$ docker pull mysql@sha256:1257504944c538da4aedd8ab06f0e280c8716b72ba16ac38fe134b9eb8145168
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.2 MB (270194646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6bb403c4b33f1f864294f176122f4e66a26d78b55df947f640bd7deb50d1718`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 12 Oct 2026 19:11:06 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 12 Oct 2026 19:11:06 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 20:10:37 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 12 Oct 2026 20:10:39 GMT
ENV GOSU_VERSION=1.19
# Mon, 12 Oct 2026 20:10:39 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 12 Oct 2026 20:11:11 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 12 Oct 2026 20:11:12 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 12 Oct 2026 20:11:12 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 12 Oct 2026 20:11:12 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Mon, 12 Oct 2026 20:11:12 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 12 Oct 2026 20:11:48 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 12 Oct 2026 20:11:48 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 12 Oct 2026 20:11:48 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 12 Oct 2026 20:12:33 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 12 Oct 2026 20:12:33 GMT
VOLUME [/var/lib/mysql]
# Mon, 12 Oct 2026 20:12:33 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 12 Oct 2026 20:12:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 20:12:33 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 12 Oct 2026 20:12:33 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:e896da32f635ced58051c434f6d70ebdf95efaa199d796f16689ad6a7393d30e`  
		Last Modified: Mon, 12 Oct 2026 19:11:17 GMT  
		Size: 47.2 MB (47247118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f20c7c51d408a5c40b05a6179b3008a493011301c589d55f9246ec7374578d8b`  
		Last Modified: Mon, 12 Oct 2026 20:13:05 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f82aea613929a80a104cdd3134bd06e93413a869d64bef69ff5d3b506766c4c2`  
		Last Modified: Mon, 12 Oct 2026 20:13:05 GMT  
		Size: 783.6 KB (783560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7b7f05290697169ad3e65e61d7669802dab4069ee6c3e7ec9bdc6b1dc5bc322`  
		Last Modified: Mon, 12 Oct 2026 20:13:05 GMT  
		Size: 6.2 MB (6192274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf3db0cf97f0793ab81934476935abdd2222056b83a8faa444f7fe3ac56727d4`  
		Last Modified: Mon, 12 Oct 2026 20:13:05 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ca850f28ac0cdf972fb9f2f336a209f3e8cc2cd45ed0e9c09a4533f4e2f8a92`  
		Last Modified: Mon, 12 Oct 2026 20:13:06 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9dcf293498a1b7632d7a29aa017ee35563dbfc3b8c874f92f2bfc5fd2ebb3099`  
		Last Modified: Mon, 12 Oct 2026 20:13:08 GMT  
		Size: 57.0 MB (57037927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8acbb507209a8d6bfa994710bfd8a68dfc67f4337bba411b5d030cb5feb564bc`  
		Last Modified: Mon, 12 Oct 2026 20:13:06 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c72467e5a2d3c62d11f18424fa1d7ecb29412d6149827eac34d85b37ae1b0786`  
		Last Modified: Mon, 12 Oct 2026 20:13:10 GMT  
		Size: 158.9 MB (158924399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06c380e51dc807542a232cd4c40bd083a022fa978c390eb3c1875c9c80607b8c`  
		Last Modified: Mon, 12 Oct 2026 20:13:07 GMT  
		Size: 5.2 KB (5223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9` - unknown; unknown

```console
$ docker pull mysql@sha256:c66a27273a78f17f12ad575989dfdb3fa71b9aab64f6803e348f632657575b8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3a986ee2a8e79e15a84325280feb122e0ed87f03b5d4af2e42398a07d428817`

```dockerfile
```

-	Layers:
	-	`sha256:069b18e5d9a4ea8ef283f4bd4210ddd2c2440fd6a94a204e6ee2bf809a6ae039`  
		Last Modified: Mon, 12 Oct 2026 20:13:05 GMT  
		Size: 16.8 MB (16799199 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:69872419d0f4b85c7eca8ceb2dcc23a351295084ed4e0e2e7f406cc5e64c7941`  
		Last Modified: Mon, 12 Oct 2026 20:13:05 GMT  
		Size: 34.2 KB (34208 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:7de8b0deefdbe4cf54d9784436bc02947317b2bd2b1d292601e9e6175755c910
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.7 MB (266653825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7502c0fe172dff9a28d0c292172229276eb1cb714ec565202527073f298504a3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 12 Oct 2026 19:10:25 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 12 Oct 2026 19:10:25 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 20:10:13 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 12 Oct 2026 20:10:14 GMT
ENV GOSU_VERSION=1.19
# Mon, 12 Oct 2026 20:10:14 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 12 Oct 2026 20:10:54 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 12 Oct 2026 20:10:55 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 12 Oct 2026 20:10:55 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 12 Oct 2026 20:10:55 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Mon, 12 Oct 2026 20:10:55 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 12 Oct 2026 20:11:38 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 12 Oct 2026 20:11:38 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 12 Oct 2026 20:11:38 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 12 Oct 2026 20:12:32 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 12 Oct 2026 20:12:32 GMT
VOLUME [/var/lib/mysql]
# Mon, 12 Oct 2026 20:12:33 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 12 Oct 2026 20:12:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 20:12:33 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 12 Oct 2026 20:12:33 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b1be88c1a95445e6111ba7b3bceed48f958b8f6eb2ff1c4b27f45fa7b0f45de9`  
		Last Modified: Mon, 12 Oct 2026 19:10:36 GMT  
		Size: 45.8 MB (45800687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:010f17da4d38fc3f15a7198fd534d127b818de2ac867251eaa4ae55f9b2c809b`  
		Last Modified: Mon, 12 Oct 2026 20:13:09 GMT  
		Size: 886.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:850ca42433a926b20884d341aab4e74dd6986f5fdc5652b93bfacb550b30933c`  
		Last Modified: Mon, 12 Oct 2026 20:13:09 GMT  
		Size: 737.5 KB (737519 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc28a85713b48bc92aae40973b6d1c841006de2d05648e119eae62a315220e6e`  
		Last Modified: Mon, 12 Oct 2026 20:13:09 GMT  
		Size: 5.8 MB (5809849 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:084574594fc331b203b7fd7fc6caabcd5bea34aae78637118407c0c0ad015894`  
		Last Modified: Mon, 12 Oct 2026 20:13:09 GMT  
		Size: 2.6 KB (2606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7e9d97ce246e047559544798cba1ab38e75246148693dae82eecd2f5877f516`  
		Last Modified: Mon, 12 Oct 2026 20:13:10 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74d7d50c1939308247ad9c26947c9216526e87fc89a21288c4c84abcd369620b`  
		Last Modified: Mon, 12 Oct 2026 20:13:12 GMT  
		Size: 57.1 MB (57098100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f54f075afc92041359d25ee9fb9a4633c20b55b8957fa594442d847afff1a1a3`  
		Last Modified: Mon, 12 Oct 2026 20:13:11 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48ed50a8605563989d7ed9d06c5ba70c9ffe0d71a7c113e88a682dfb3bfa47a2`  
		Last Modified: Mon, 12 Oct 2026 20:13:14 GMT  
		Size: 157.2 MB (157198303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2da8ae9c82090ada4f88074024fa34ac2f4c02229f962e25f098804f85b5019f`  
		Last Modified: Mon, 12 Oct 2026 20:13:12 GMT  
		Size: 5.2 KB (5222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9` - unknown; unknown

```console
$ docker pull mysql@sha256:0c6d386a3836d37e15c61010c590ff87ec13c7672c75cfcdea95a4e98400f457
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16832148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:225c3117a6d207f528a31442e1afed2e08ffa008862144355112a1a86aa58b0f`

```dockerfile
```

-	Layers:
	-	`sha256:d4fc2759fe49b126688007fa943b816f3d2de555682a38998afb5a8763564183`  
		Last Modified: Mon, 12 Oct 2026 20:13:10 GMT  
		Size: 16.8 MB (16797635 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9ec9a658cbc1c34c0ed627a1d5e68db8ef2000afaa8fb15af070719bbde6004f`  
		Last Modified: Mon, 12 Oct 2026 20:13:09 GMT  
		Size: 34.5 KB (34513 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9-oracle`

```console
$ docker pull mysql@sha256:c7cb87a9822f499375287930cbff71d6d3b201e346b45108b1115b435ee2df13
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:1257504944c538da4aedd8ab06f0e280c8716b72ba16ac38fe134b9eb8145168
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.2 MB (270194646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6bb403c4b33f1f864294f176122f4e66a26d78b55df947f640bd7deb50d1718`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 12 Oct 2026 19:11:06 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 12 Oct 2026 19:11:06 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 20:10:37 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 12 Oct 2026 20:10:39 GMT
ENV GOSU_VERSION=1.19
# Mon, 12 Oct 2026 20:10:39 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 12 Oct 2026 20:11:11 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 12 Oct 2026 20:11:12 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 12 Oct 2026 20:11:12 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 12 Oct 2026 20:11:12 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Mon, 12 Oct 2026 20:11:12 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 12 Oct 2026 20:11:48 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 12 Oct 2026 20:11:48 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 12 Oct 2026 20:11:48 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 12 Oct 2026 20:12:33 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 12 Oct 2026 20:12:33 GMT
VOLUME [/var/lib/mysql]
# Mon, 12 Oct 2026 20:12:33 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 12 Oct 2026 20:12:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 20:12:33 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 12 Oct 2026 20:12:33 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:e896da32f635ced58051c434f6d70ebdf95efaa199d796f16689ad6a7393d30e`  
		Last Modified: Mon, 12 Oct 2026 19:11:17 GMT  
		Size: 47.2 MB (47247118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f20c7c51d408a5c40b05a6179b3008a493011301c589d55f9246ec7374578d8b`  
		Last Modified: Mon, 12 Oct 2026 20:13:05 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f82aea613929a80a104cdd3134bd06e93413a869d64bef69ff5d3b506766c4c2`  
		Last Modified: Mon, 12 Oct 2026 20:13:05 GMT  
		Size: 783.6 KB (783560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7b7f05290697169ad3e65e61d7669802dab4069ee6c3e7ec9bdc6b1dc5bc322`  
		Last Modified: Mon, 12 Oct 2026 20:13:05 GMT  
		Size: 6.2 MB (6192274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf3db0cf97f0793ab81934476935abdd2222056b83a8faa444f7fe3ac56727d4`  
		Last Modified: Mon, 12 Oct 2026 20:13:05 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ca850f28ac0cdf972fb9f2f336a209f3e8cc2cd45ed0e9c09a4533f4e2f8a92`  
		Last Modified: Mon, 12 Oct 2026 20:13:06 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9dcf293498a1b7632d7a29aa017ee35563dbfc3b8c874f92f2bfc5fd2ebb3099`  
		Last Modified: Mon, 12 Oct 2026 20:13:08 GMT  
		Size: 57.0 MB (57037927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8acbb507209a8d6bfa994710bfd8a68dfc67f4337bba411b5d030cb5feb564bc`  
		Last Modified: Mon, 12 Oct 2026 20:13:06 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c72467e5a2d3c62d11f18424fa1d7ecb29412d6149827eac34d85b37ae1b0786`  
		Last Modified: Mon, 12 Oct 2026 20:13:10 GMT  
		Size: 158.9 MB (158924399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06c380e51dc807542a232cd4c40bd083a022fa978c390eb3c1875c9c80607b8c`  
		Last Modified: Mon, 12 Oct 2026 20:13:07 GMT  
		Size: 5.2 KB (5223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:c66a27273a78f17f12ad575989dfdb3fa71b9aab64f6803e348f632657575b8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3a986ee2a8e79e15a84325280feb122e0ed87f03b5d4af2e42398a07d428817`

```dockerfile
```

-	Layers:
	-	`sha256:069b18e5d9a4ea8ef283f4bd4210ddd2c2440fd6a94a204e6ee2bf809a6ae039`  
		Last Modified: Mon, 12 Oct 2026 20:13:05 GMT  
		Size: 16.8 MB (16799199 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:69872419d0f4b85c7eca8ceb2dcc23a351295084ed4e0e2e7f406cc5e64c7941`  
		Last Modified: Mon, 12 Oct 2026 20:13:05 GMT  
		Size: 34.2 KB (34208 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:7de8b0deefdbe4cf54d9784436bc02947317b2bd2b1d292601e9e6175755c910
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.7 MB (266653825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7502c0fe172dff9a28d0c292172229276eb1cb714ec565202527073f298504a3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 12 Oct 2026 19:10:25 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 12 Oct 2026 19:10:25 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 20:10:13 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 12 Oct 2026 20:10:14 GMT
ENV GOSU_VERSION=1.19
# Mon, 12 Oct 2026 20:10:14 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 12 Oct 2026 20:10:54 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 12 Oct 2026 20:10:55 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 12 Oct 2026 20:10:55 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 12 Oct 2026 20:10:55 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Mon, 12 Oct 2026 20:10:55 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 12 Oct 2026 20:11:38 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 12 Oct 2026 20:11:38 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 12 Oct 2026 20:11:38 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 12 Oct 2026 20:12:32 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 12 Oct 2026 20:12:32 GMT
VOLUME [/var/lib/mysql]
# Mon, 12 Oct 2026 20:12:33 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 12 Oct 2026 20:12:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 20:12:33 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 12 Oct 2026 20:12:33 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b1be88c1a95445e6111ba7b3bceed48f958b8f6eb2ff1c4b27f45fa7b0f45de9`  
		Last Modified: Mon, 12 Oct 2026 19:10:36 GMT  
		Size: 45.8 MB (45800687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:010f17da4d38fc3f15a7198fd534d127b818de2ac867251eaa4ae55f9b2c809b`  
		Last Modified: Mon, 12 Oct 2026 20:13:09 GMT  
		Size: 886.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:850ca42433a926b20884d341aab4e74dd6986f5fdc5652b93bfacb550b30933c`  
		Last Modified: Mon, 12 Oct 2026 20:13:09 GMT  
		Size: 737.5 KB (737519 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc28a85713b48bc92aae40973b6d1c841006de2d05648e119eae62a315220e6e`  
		Last Modified: Mon, 12 Oct 2026 20:13:09 GMT  
		Size: 5.8 MB (5809849 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:084574594fc331b203b7fd7fc6caabcd5bea34aae78637118407c0c0ad015894`  
		Last Modified: Mon, 12 Oct 2026 20:13:09 GMT  
		Size: 2.6 KB (2606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7e9d97ce246e047559544798cba1ab38e75246148693dae82eecd2f5877f516`  
		Last Modified: Mon, 12 Oct 2026 20:13:10 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74d7d50c1939308247ad9c26947c9216526e87fc89a21288c4c84abcd369620b`  
		Last Modified: Mon, 12 Oct 2026 20:13:12 GMT  
		Size: 57.1 MB (57098100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f54f075afc92041359d25ee9fb9a4633c20b55b8957fa594442d847afff1a1a3`  
		Last Modified: Mon, 12 Oct 2026 20:13:11 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48ed50a8605563989d7ed9d06c5ba70c9ffe0d71a7c113e88a682dfb3bfa47a2`  
		Last Modified: Mon, 12 Oct 2026 20:13:14 GMT  
		Size: 157.2 MB (157198303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2da8ae9c82090ada4f88074024fa34ac2f4c02229f962e25f098804f85b5019f`  
		Last Modified: Mon, 12 Oct 2026 20:13:12 GMT  
		Size: 5.2 KB (5222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:0c6d386a3836d37e15c61010c590ff87ec13c7672c75cfcdea95a4e98400f457
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16832148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:225c3117a6d207f528a31442e1afed2e08ffa008862144355112a1a86aa58b0f`

```dockerfile
```

-	Layers:
	-	`sha256:d4fc2759fe49b126688007fa943b816f3d2de555682a38998afb5a8763564183`  
		Last Modified: Mon, 12 Oct 2026 20:13:10 GMT  
		Size: 16.8 MB (16797635 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9ec9a658cbc1c34c0ed627a1d5e68db8ef2000afaa8fb15af070719bbde6004f`  
		Last Modified: Mon, 12 Oct 2026 20:13:09 GMT  
		Size: 34.5 KB (34513 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9-oraclelinux9`

```console
$ docker pull mysql@sha256:c7cb87a9822f499375287930cbff71d6d3b201e346b45108b1115b435ee2df13
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:1257504944c538da4aedd8ab06f0e280c8716b72ba16ac38fe134b9eb8145168
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.2 MB (270194646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6bb403c4b33f1f864294f176122f4e66a26d78b55df947f640bd7deb50d1718`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 12 Oct 2026 19:11:06 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 12 Oct 2026 19:11:06 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 20:10:37 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 12 Oct 2026 20:10:39 GMT
ENV GOSU_VERSION=1.19
# Mon, 12 Oct 2026 20:10:39 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 12 Oct 2026 20:11:11 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 12 Oct 2026 20:11:12 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 12 Oct 2026 20:11:12 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 12 Oct 2026 20:11:12 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Mon, 12 Oct 2026 20:11:12 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 12 Oct 2026 20:11:48 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 12 Oct 2026 20:11:48 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 12 Oct 2026 20:11:48 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 12 Oct 2026 20:12:33 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 12 Oct 2026 20:12:33 GMT
VOLUME [/var/lib/mysql]
# Mon, 12 Oct 2026 20:12:33 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 12 Oct 2026 20:12:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 20:12:33 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 12 Oct 2026 20:12:33 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:e896da32f635ced58051c434f6d70ebdf95efaa199d796f16689ad6a7393d30e`  
		Last Modified: Mon, 12 Oct 2026 19:11:17 GMT  
		Size: 47.2 MB (47247118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f20c7c51d408a5c40b05a6179b3008a493011301c589d55f9246ec7374578d8b`  
		Last Modified: Mon, 12 Oct 2026 20:13:05 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f82aea613929a80a104cdd3134bd06e93413a869d64bef69ff5d3b506766c4c2`  
		Last Modified: Mon, 12 Oct 2026 20:13:05 GMT  
		Size: 783.6 KB (783560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7b7f05290697169ad3e65e61d7669802dab4069ee6c3e7ec9bdc6b1dc5bc322`  
		Last Modified: Mon, 12 Oct 2026 20:13:05 GMT  
		Size: 6.2 MB (6192274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf3db0cf97f0793ab81934476935abdd2222056b83a8faa444f7fe3ac56727d4`  
		Last Modified: Mon, 12 Oct 2026 20:13:05 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ca850f28ac0cdf972fb9f2f336a209f3e8cc2cd45ed0e9c09a4533f4e2f8a92`  
		Last Modified: Mon, 12 Oct 2026 20:13:06 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9dcf293498a1b7632d7a29aa017ee35563dbfc3b8c874f92f2bfc5fd2ebb3099`  
		Last Modified: Mon, 12 Oct 2026 20:13:08 GMT  
		Size: 57.0 MB (57037927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8acbb507209a8d6bfa994710bfd8a68dfc67f4337bba411b5d030cb5feb564bc`  
		Last Modified: Mon, 12 Oct 2026 20:13:06 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c72467e5a2d3c62d11f18424fa1d7ecb29412d6149827eac34d85b37ae1b0786`  
		Last Modified: Mon, 12 Oct 2026 20:13:10 GMT  
		Size: 158.9 MB (158924399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06c380e51dc807542a232cd4c40bd083a022fa978c390eb3c1875c9c80607b8c`  
		Last Modified: Mon, 12 Oct 2026 20:13:07 GMT  
		Size: 5.2 KB (5223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:c66a27273a78f17f12ad575989dfdb3fa71b9aab64f6803e348f632657575b8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3a986ee2a8e79e15a84325280feb122e0ed87f03b5d4af2e42398a07d428817`

```dockerfile
```

-	Layers:
	-	`sha256:069b18e5d9a4ea8ef283f4bd4210ddd2c2440fd6a94a204e6ee2bf809a6ae039`  
		Last Modified: Mon, 12 Oct 2026 20:13:05 GMT  
		Size: 16.8 MB (16799199 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:69872419d0f4b85c7eca8ceb2dcc23a351295084ed4e0e2e7f406cc5e64c7941`  
		Last Modified: Mon, 12 Oct 2026 20:13:05 GMT  
		Size: 34.2 KB (34208 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:7de8b0deefdbe4cf54d9784436bc02947317b2bd2b1d292601e9e6175755c910
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.7 MB (266653825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7502c0fe172dff9a28d0c292172229276eb1cb714ec565202527073f298504a3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 12 Oct 2026 19:10:25 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 12 Oct 2026 19:10:25 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 20:10:13 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 12 Oct 2026 20:10:14 GMT
ENV GOSU_VERSION=1.19
# Mon, 12 Oct 2026 20:10:14 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 12 Oct 2026 20:10:54 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 12 Oct 2026 20:10:55 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 12 Oct 2026 20:10:55 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 12 Oct 2026 20:10:55 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Mon, 12 Oct 2026 20:10:55 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 12 Oct 2026 20:11:38 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 12 Oct 2026 20:11:38 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 12 Oct 2026 20:11:38 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 12 Oct 2026 20:12:32 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 12 Oct 2026 20:12:32 GMT
VOLUME [/var/lib/mysql]
# Mon, 12 Oct 2026 20:12:33 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 12 Oct 2026 20:12:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 20:12:33 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 12 Oct 2026 20:12:33 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b1be88c1a95445e6111ba7b3bceed48f958b8f6eb2ff1c4b27f45fa7b0f45de9`  
		Last Modified: Mon, 12 Oct 2026 19:10:36 GMT  
		Size: 45.8 MB (45800687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:010f17da4d38fc3f15a7198fd534d127b818de2ac867251eaa4ae55f9b2c809b`  
		Last Modified: Mon, 12 Oct 2026 20:13:09 GMT  
		Size: 886.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:850ca42433a926b20884d341aab4e74dd6986f5fdc5652b93bfacb550b30933c`  
		Last Modified: Mon, 12 Oct 2026 20:13:09 GMT  
		Size: 737.5 KB (737519 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc28a85713b48bc92aae40973b6d1c841006de2d05648e119eae62a315220e6e`  
		Last Modified: Mon, 12 Oct 2026 20:13:09 GMT  
		Size: 5.8 MB (5809849 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:084574594fc331b203b7fd7fc6caabcd5bea34aae78637118407c0c0ad015894`  
		Last Modified: Mon, 12 Oct 2026 20:13:09 GMT  
		Size: 2.6 KB (2606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7e9d97ce246e047559544798cba1ab38e75246148693dae82eecd2f5877f516`  
		Last Modified: Mon, 12 Oct 2026 20:13:10 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74d7d50c1939308247ad9c26947c9216526e87fc89a21288c4c84abcd369620b`  
		Last Modified: Mon, 12 Oct 2026 20:13:12 GMT  
		Size: 57.1 MB (57098100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f54f075afc92041359d25ee9fb9a4633c20b55b8957fa594442d847afff1a1a3`  
		Last Modified: Mon, 12 Oct 2026 20:13:11 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48ed50a8605563989d7ed9d06c5ba70c9ffe0d71a7c113e88a682dfb3bfa47a2`  
		Last Modified: Mon, 12 Oct 2026 20:13:14 GMT  
		Size: 157.2 MB (157198303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2da8ae9c82090ada4f88074024fa34ac2f4c02229f962e25f098804f85b5019f`  
		Last Modified: Mon, 12 Oct 2026 20:13:12 GMT  
		Size: 5.2 KB (5222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:0c6d386a3836d37e15c61010c590ff87ec13c7672c75cfcdea95a4e98400f457
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16832148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:225c3117a6d207f528a31442e1afed2e08ffa008862144355112a1a86aa58b0f`

```dockerfile
```

-	Layers:
	-	`sha256:d4fc2759fe49b126688007fa943b816f3d2de555682a38998afb5a8763564183`  
		Last Modified: Mon, 12 Oct 2026 20:13:10 GMT  
		Size: 16.8 MB (16797635 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9ec9a658cbc1c34c0ed627a1d5e68db8ef2000afaa8fb15af070719bbde6004f`  
		Last Modified: Mon, 12 Oct 2026 20:13:09 GMT  
		Size: 34.5 KB (34513 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9.7`

```console
$ docker pull mysql@sha256:c7cb87a9822f499375287930cbff71d6d3b201e346b45108b1115b435ee2df13
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9.7` - linux; amd64

```console
$ docker pull mysql@sha256:1257504944c538da4aedd8ab06f0e280c8716b72ba16ac38fe134b9eb8145168
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.2 MB (270194646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6bb403c4b33f1f864294f176122f4e66a26d78b55df947f640bd7deb50d1718`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 12 Oct 2026 19:11:06 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 12 Oct 2026 19:11:06 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 20:10:37 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 12 Oct 2026 20:10:39 GMT
ENV GOSU_VERSION=1.19
# Mon, 12 Oct 2026 20:10:39 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 12 Oct 2026 20:11:11 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 12 Oct 2026 20:11:12 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 12 Oct 2026 20:11:12 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 12 Oct 2026 20:11:12 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Mon, 12 Oct 2026 20:11:12 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 12 Oct 2026 20:11:48 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 12 Oct 2026 20:11:48 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 12 Oct 2026 20:11:48 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 12 Oct 2026 20:12:33 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 12 Oct 2026 20:12:33 GMT
VOLUME [/var/lib/mysql]
# Mon, 12 Oct 2026 20:12:33 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 12 Oct 2026 20:12:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 20:12:33 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 12 Oct 2026 20:12:33 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:e896da32f635ced58051c434f6d70ebdf95efaa199d796f16689ad6a7393d30e`  
		Last Modified: Mon, 12 Oct 2026 19:11:17 GMT  
		Size: 47.2 MB (47247118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f20c7c51d408a5c40b05a6179b3008a493011301c589d55f9246ec7374578d8b`  
		Last Modified: Mon, 12 Oct 2026 20:13:05 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f82aea613929a80a104cdd3134bd06e93413a869d64bef69ff5d3b506766c4c2`  
		Last Modified: Mon, 12 Oct 2026 20:13:05 GMT  
		Size: 783.6 KB (783560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7b7f05290697169ad3e65e61d7669802dab4069ee6c3e7ec9bdc6b1dc5bc322`  
		Last Modified: Mon, 12 Oct 2026 20:13:05 GMT  
		Size: 6.2 MB (6192274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf3db0cf97f0793ab81934476935abdd2222056b83a8faa444f7fe3ac56727d4`  
		Last Modified: Mon, 12 Oct 2026 20:13:05 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ca850f28ac0cdf972fb9f2f336a209f3e8cc2cd45ed0e9c09a4533f4e2f8a92`  
		Last Modified: Mon, 12 Oct 2026 20:13:06 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9dcf293498a1b7632d7a29aa017ee35563dbfc3b8c874f92f2bfc5fd2ebb3099`  
		Last Modified: Mon, 12 Oct 2026 20:13:08 GMT  
		Size: 57.0 MB (57037927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8acbb507209a8d6bfa994710bfd8a68dfc67f4337bba411b5d030cb5feb564bc`  
		Last Modified: Mon, 12 Oct 2026 20:13:06 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c72467e5a2d3c62d11f18424fa1d7ecb29412d6149827eac34d85b37ae1b0786`  
		Last Modified: Mon, 12 Oct 2026 20:13:10 GMT  
		Size: 158.9 MB (158924399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06c380e51dc807542a232cd4c40bd083a022fa978c390eb3c1875c9c80607b8c`  
		Last Modified: Mon, 12 Oct 2026 20:13:07 GMT  
		Size: 5.2 KB (5223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7` - unknown; unknown

```console
$ docker pull mysql@sha256:c66a27273a78f17f12ad575989dfdb3fa71b9aab64f6803e348f632657575b8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3a986ee2a8e79e15a84325280feb122e0ed87f03b5d4af2e42398a07d428817`

```dockerfile
```

-	Layers:
	-	`sha256:069b18e5d9a4ea8ef283f4bd4210ddd2c2440fd6a94a204e6ee2bf809a6ae039`  
		Last Modified: Mon, 12 Oct 2026 20:13:05 GMT  
		Size: 16.8 MB (16799199 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:69872419d0f4b85c7eca8ceb2dcc23a351295084ed4e0e2e7f406cc5e64c7941`  
		Last Modified: Mon, 12 Oct 2026 20:13:05 GMT  
		Size: 34.2 KB (34208 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9.7` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:7de8b0deefdbe4cf54d9784436bc02947317b2bd2b1d292601e9e6175755c910
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.7 MB (266653825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7502c0fe172dff9a28d0c292172229276eb1cb714ec565202527073f298504a3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 12 Oct 2026 19:10:25 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 12 Oct 2026 19:10:25 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 20:10:13 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 12 Oct 2026 20:10:14 GMT
ENV GOSU_VERSION=1.19
# Mon, 12 Oct 2026 20:10:14 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 12 Oct 2026 20:10:54 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 12 Oct 2026 20:10:55 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 12 Oct 2026 20:10:55 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 12 Oct 2026 20:10:55 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Mon, 12 Oct 2026 20:10:55 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 12 Oct 2026 20:11:38 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 12 Oct 2026 20:11:38 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 12 Oct 2026 20:11:38 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 12 Oct 2026 20:12:32 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 12 Oct 2026 20:12:32 GMT
VOLUME [/var/lib/mysql]
# Mon, 12 Oct 2026 20:12:33 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 12 Oct 2026 20:12:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 20:12:33 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 12 Oct 2026 20:12:33 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b1be88c1a95445e6111ba7b3bceed48f958b8f6eb2ff1c4b27f45fa7b0f45de9`  
		Last Modified: Mon, 12 Oct 2026 19:10:36 GMT  
		Size: 45.8 MB (45800687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:010f17da4d38fc3f15a7198fd534d127b818de2ac867251eaa4ae55f9b2c809b`  
		Last Modified: Mon, 12 Oct 2026 20:13:09 GMT  
		Size: 886.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:850ca42433a926b20884d341aab4e74dd6986f5fdc5652b93bfacb550b30933c`  
		Last Modified: Mon, 12 Oct 2026 20:13:09 GMT  
		Size: 737.5 KB (737519 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc28a85713b48bc92aae40973b6d1c841006de2d05648e119eae62a315220e6e`  
		Last Modified: Mon, 12 Oct 2026 20:13:09 GMT  
		Size: 5.8 MB (5809849 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:084574594fc331b203b7fd7fc6caabcd5bea34aae78637118407c0c0ad015894`  
		Last Modified: Mon, 12 Oct 2026 20:13:09 GMT  
		Size: 2.6 KB (2606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7e9d97ce246e047559544798cba1ab38e75246148693dae82eecd2f5877f516`  
		Last Modified: Mon, 12 Oct 2026 20:13:10 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74d7d50c1939308247ad9c26947c9216526e87fc89a21288c4c84abcd369620b`  
		Last Modified: Mon, 12 Oct 2026 20:13:12 GMT  
		Size: 57.1 MB (57098100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f54f075afc92041359d25ee9fb9a4633c20b55b8957fa594442d847afff1a1a3`  
		Last Modified: Mon, 12 Oct 2026 20:13:11 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48ed50a8605563989d7ed9d06c5ba70c9ffe0d71a7c113e88a682dfb3bfa47a2`  
		Last Modified: Mon, 12 Oct 2026 20:13:14 GMT  
		Size: 157.2 MB (157198303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2da8ae9c82090ada4f88074024fa34ac2f4c02229f962e25f098804f85b5019f`  
		Last Modified: Mon, 12 Oct 2026 20:13:12 GMT  
		Size: 5.2 KB (5222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7` - unknown; unknown

```console
$ docker pull mysql@sha256:0c6d386a3836d37e15c61010c590ff87ec13c7672c75cfcdea95a4e98400f457
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16832148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:225c3117a6d207f528a31442e1afed2e08ffa008862144355112a1a86aa58b0f`

```dockerfile
```

-	Layers:
	-	`sha256:d4fc2759fe49b126688007fa943b816f3d2de555682a38998afb5a8763564183`  
		Last Modified: Mon, 12 Oct 2026 20:13:10 GMT  
		Size: 16.8 MB (16797635 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9ec9a658cbc1c34c0ed627a1d5e68db8ef2000afaa8fb15af070719bbde6004f`  
		Last Modified: Mon, 12 Oct 2026 20:13:09 GMT  
		Size: 34.5 KB (34513 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9.7-oracle`

```console
$ docker pull mysql@sha256:c7cb87a9822f499375287930cbff71d6d3b201e346b45108b1115b435ee2df13
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9.7-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:1257504944c538da4aedd8ab06f0e280c8716b72ba16ac38fe134b9eb8145168
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.2 MB (270194646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6bb403c4b33f1f864294f176122f4e66a26d78b55df947f640bd7deb50d1718`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 12 Oct 2026 19:11:06 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 12 Oct 2026 19:11:06 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 20:10:37 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 12 Oct 2026 20:10:39 GMT
ENV GOSU_VERSION=1.19
# Mon, 12 Oct 2026 20:10:39 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 12 Oct 2026 20:11:11 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 12 Oct 2026 20:11:12 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 12 Oct 2026 20:11:12 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 12 Oct 2026 20:11:12 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Mon, 12 Oct 2026 20:11:12 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 12 Oct 2026 20:11:48 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 12 Oct 2026 20:11:48 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 12 Oct 2026 20:11:48 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 12 Oct 2026 20:12:33 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 12 Oct 2026 20:12:33 GMT
VOLUME [/var/lib/mysql]
# Mon, 12 Oct 2026 20:12:33 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 12 Oct 2026 20:12:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 20:12:33 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 12 Oct 2026 20:12:33 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:e896da32f635ced58051c434f6d70ebdf95efaa199d796f16689ad6a7393d30e`  
		Last Modified: Mon, 12 Oct 2026 19:11:17 GMT  
		Size: 47.2 MB (47247118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f20c7c51d408a5c40b05a6179b3008a493011301c589d55f9246ec7374578d8b`  
		Last Modified: Mon, 12 Oct 2026 20:13:05 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f82aea613929a80a104cdd3134bd06e93413a869d64bef69ff5d3b506766c4c2`  
		Last Modified: Mon, 12 Oct 2026 20:13:05 GMT  
		Size: 783.6 KB (783560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7b7f05290697169ad3e65e61d7669802dab4069ee6c3e7ec9bdc6b1dc5bc322`  
		Last Modified: Mon, 12 Oct 2026 20:13:05 GMT  
		Size: 6.2 MB (6192274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf3db0cf97f0793ab81934476935abdd2222056b83a8faa444f7fe3ac56727d4`  
		Last Modified: Mon, 12 Oct 2026 20:13:05 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ca850f28ac0cdf972fb9f2f336a209f3e8cc2cd45ed0e9c09a4533f4e2f8a92`  
		Last Modified: Mon, 12 Oct 2026 20:13:06 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9dcf293498a1b7632d7a29aa017ee35563dbfc3b8c874f92f2bfc5fd2ebb3099`  
		Last Modified: Mon, 12 Oct 2026 20:13:08 GMT  
		Size: 57.0 MB (57037927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8acbb507209a8d6bfa994710bfd8a68dfc67f4337bba411b5d030cb5feb564bc`  
		Last Modified: Mon, 12 Oct 2026 20:13:06 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c72467e5a2d3c62d11f18424fa1d7ecb29412d6149827eac34d85b37ae1b0786`  
		Last Modified: Mon, 12 Oct 2026 20:13:10 GMT  
		Size: 158.9 MB (158924399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06c380e51dc807542a232cd4c40bd083a022fa978c390eb3c1875c9c80607b8c`  
		Last Modified: Mon, 12 Oct 2026 20:13:07 GMT  
		Size: 5.2 KB (5223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:c66a27273a78f17f12ad575989dfdb3fa71b9aab64f6803e348f632657575b8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3a986ee2a8e79e15a84325280feb122e0ed87f03b5d4af2e42398a07d428817`

```dockerfile
```

-	Layers:
	-	`sha256:069b18e5d9a4ea8ef283f4bd4210ddd2c2440fd6a94a204e6ee2bf809a6ae039`  
		Last Modified: Mon, 12 Oct 2026 20:13:05 GMT  
		Size: 16.8 MB (16799199 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:69872419d0f4b85c7eca8ceb2dcc23a351295084ed4e0e2e7f406cc5e64c7941`  
		Last Modified: Mon, 12 Oct 2026 20:13:05 GMT  
		Size: 34.2 KB (34208 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9.7-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:7de8b0deefdbe4cf54d9784436bc02947317b2bd2b1d292601e9e6175755c910
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.7 MB (266653825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7502c0fe172dff9a28d0c292172229276eb1cb714ec565202527073f298504a3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 12 Oct 2026 19:10:25 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 12 Oct 2026 19:10:25 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 20:10:13 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 12 Oct 2026 20:10:14 GMT
ENV GOSU_VERSION=1.19
# Mon, 12 Oct 2026 20:10:14 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 12 Oct 2026 20:10:54 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 12 Oct 2026 20:10:55 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 12 Oct 2026 20:10:55 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 12 Oct 2026 20:10:55 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Mon, 12 Oct 2026 20:10:55 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 12 Oct 2026 20:11:38 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 12 Oct 2026 20:11:38 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 12 Oct 2026 20:11:38 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 12 Oct 2026 20:12:32 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 12 Oct 2026 20:12:32 GMT
VOLUME [/var/lib/mysql]
# Mon, 12 Oct 2026 20:12:33 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 12 Oct 2026 20:12:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 20:12:33 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 12 Oct 2026 20:12:33 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b1be88c1a95445e6111ba7b3bceed48f958b8f6eb2ff1c4b27f45fa7b0f45de9`  
		Last Modified: Mon, 12 Oct 2026 19:10:36 GMT  
		Size: 45.8 MB (45800687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:010f17da4d38fc3f15a7198fd534d127b818de2ac867251eaa4ae55f9b2c809b`  
		Last Modified: Mon, 12 Oct 2026 20:13:09 GMT  
		Size: 886.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:850ca42433a926b20884d341aab4e74dd6986f5fdc5652b93bfacb550b30933c`  
		Last Modified: Mon, 12 Oct 2026 20:13:09 GMT  
		Size: 737.5 KB (737519 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc28a85713b48bc92aae40973b6d1c841006de2d05648e119eae62a315220e6e`  
		Last Modified: Mon, 12 Oct 2026 20:13:09 GMT  
		Size: 5.8 MB (5809849 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:084574594fc331b203b7fd7fc6caabcd5bea34aae78637118407c0c0ad015894`  
		Last Modified: Mon, 12 Oct 2026 20:13:09 GMT  
		Size: 2.6 KB (2606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7e9d97ce246e047559544798cba1ab38e75246148693dae82eecd2f5877f516`  
		Last Modified: Mon, 12 Oct 2026 20:13:10 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74d7d50c1939308247ad9c26947c9216526e87fc89a21288c4c84abcd369620b`  
		Last Modified: Mon, 12 Oct 2026 20:13:12 GMT  
		Size: 57.1 MB (57098100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f54f075afc92041359d25ee9fb9a4633c20b55b8957fa594442d847afff1a1a3`  
		Last Modified: Mon, 12 Oct 2026 20:13:11 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48ed50a8605563989d7ed9d06c5ba70c9ffe0d71a7c113e88a682dfb3bfa47a2`  
		Last Modified: Mon, 12 Oct 2026 20:13:14 GMT  
		Size: 157.2 MB (157198303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2da8ae9c82090ada4f88074024fa34ac2f4c02229f962e25f098804f85b5019f`  
		Last Modified: Mon, 12 Oct 2026 20:13:12 GMT  
		Size: 5.2 KB (5222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:0c6d386a3836d37e15c61010c590ff87ec13c7672c75cfcdea95a4e98400f457
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16832148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:225c3117a6d207f528a31442e1afed2e08ffa008862144355112a1a86aa58b0f`

```dockerfile
```

-	Layers:
	-	`sha256:d4fc2759fe49b126688007fa943b816f3d2de555682a38998afb5a8763564183`  
		Last Modified: Mon, 12 Oct 2026 20:13:10 GMT  
		Size: 16.8 MB (16797635 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9ec9a658cbc1c34c0ed627a1d5e68db8ef2000afaa8fb15af070719bbde6004f`  
		Last Modified: Mon, 12 Oct 2026 20:13:09 GMT  
		Size: 34.5 KB (34513 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9.7-oraclelinux9`

```console
$ docker pull mysql@sha256:c7cb87a9822f499375287930cbff71d6d3b201e346b45108b1115b435ee2df13
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9.7-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:1257504944c538da4aedd8ab06f0e280c8716b72ba16ac38fe134b9eb8145168
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.2 MB (270194646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6bb403c4b33f1f864294f176122f4e66a26d78b55df947f640bd7deb50d1718`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 12 Oct 2026 19:11:06 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 12 Oct 2026 19:11:06 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 20:10:37 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 12 Oct 2026 20:10:39 GMT
ENV GOSU_VERSION=1.19
# Mon, 12 Oct 2026 20:10:39 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 12 Oct 2026 20:11:11 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 12 Oct 2026 20:11:12 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 12 Oct 2026 20:11:12 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 12 Oct 2026 20:11:12 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Mon, 12 Oct 2026 20:11:12 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 12 Oct 2026 20:11:48 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 12 Oct 2026 20:11:48 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 12 Oct 2026 20:11:48 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 12 Oct 2026 20:12:33 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 12 Oct 2026 20:12:33 GMT
VOLUME [/var/lib/mysql]
# Mon, 12 Oct 2026 20:12:33 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 12 Oct 2026 20:12:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 20:12:33 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 12 Oct 2026 20:12:33 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:e896da32f635ced58051c434f6d70ebdf95efaa199d796f16689ad6a7393d30e`  
		Last Modified: Mon, 12 Oct 2026 19:11:17 GMT  
		Size: 47.2 MB (47247118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f20c7c51d408a5c40b05a6179b3008a493011301c589d55f9246ec7374578d8b`  
		Last Modified: Mon, 12 Oct 2026 20:13:05 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f82aea613929a80a104cdd3134bd06e93413a869d64bef69ff5d3b506766c4c2`  
		Last Modified: Mon, 12 Oct 2026 20:13:05 GMT  
		Size: 783.6 KB (783560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7b7f05290697169ad3e65e61d7669802dab4069ee6c3e7ec9bdc6b1dc5bc322`  
		Last Modified: Mon, 12 Oct 2026 20:13:05 GMT  
		Size: 6.2 MB (6192274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf3db0cf97f0793ab81934476935abdd2222056b83a8faa444f7fe3ac56727d4`  
		Last Modified: Mon, 12 Oct 2026 20:13:05 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ca850f28ac0cdf972fb9f2f336a209f3e8cc2cd45ed0e9c09a4533f4e2f8a92`  
		Last Modified: Mon, 12 Oct 2026 20:13:06 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9dcf293498a1b7632d7a29aa017ee35563dbfc3b8c874f92f2bfc5fd2ebb3099`  
		Last Modified: Mon, 12 Oct 2026 20:13:08 GMT  
		Size: 57.0 MB (57037927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8acbb507209a8d6bfa994710bfd8a68dfc67f4337bba411b5d030cb5feb564bc`  
		Last Modified: Mon, 12 Oct 2026 20:13:06 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c72467e5a2d3c62d11f18424fa1d7ecb29412d6149827eac34d85b37ae1b0786`  
		Last Modified: Mon, 12 Oct 2026 20:13:10 GMT  
		Size: 158.9 MB (158924399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06c380e51dc807542a232cd4c40bd083a022fa978c390eb3c1875c9c80607b8c`  
		Last Modified: Mon, 12 Oct 2026 20:13:07 GMT  
		Size: 5.2 KB (5223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:c66a27273a78f17f12ad575989dfdb3fa71b9aab64f6803e348f632657575b8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3a986ee2a8e79e15a84325280feb122e0ed87f03b5d4af2e42398a07d428817`

```dockerfile
```

-	Layers:
	-	`sha256:069b18e5d9a4ea8ef283f4bd4210ddd2c2440fd6a94a204e6ee2bf809a6ae039`  
		Last Modified: Mon, 12 Oct 2026 20:13:05 GMT  
		Size: 16.8 MB (16799199 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:69872419d0f4b85c7eca8ceb2dcc23a351295084ed4e0e2e7f406cc5e64c7941`  
		Last Modified: Mon, 12 Oct 2026 20:13:05 GMT  
		Size: 34.2 KB (34208 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9.7-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:7de8b0deefdbe4cf54d9784436bc02947317b2bd2b1d292601e9e6175755c910
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.7 MB (266653825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7502c0fe172dff9a28d0c292172229276eb1cb714ec565202527073f298504a3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 12 Oct 2026 19:10:25 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 12 Oct 2026 19:10:25 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 20:10:13 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 12 Oct 2026 20:10:14 GMT
ENV GOSU_VERSION=1.19
# Mon, 12 Oct 2026 20:10:14 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 12 Oct 2026 20:10:54 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 12 Oct 2026 20:10:55 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 12 Oct 2026 20:10:55 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 12 Oct 2026 20:10:55 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Mon, 12 Oct 2026 20:10:55 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 12 Oct 2026 20:11:38 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 12 Oct 2026 20:11:38 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 12 Oct 2026 20:11:38 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 12 Oct 2026 20:12:32 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 12 Oct 2026 20:12:32 GMT
VOLUME [/var/lib/mysql]
# Mon, 12 Oct 2026 20:12:33 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 12 Oct 2026 20:12:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 20:12:33 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 12 Oct 2026 20:12:33 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b1be88c1a95445e6111ba7b3bceed48f958b8f6eb2ff1c4b27f45fa7b0f45de9`  
		Last Modified: Mon, 12 Oct 2026 19:10:36 GMT  
		Size: 45.8 MB (45800687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:010f17da4d38fc3f15a7198fd534d127b818de2ac867251eaa4ae55f9b2c809b`  
		Last Modified: Mon, 12 Oct 2026 20:13:09 GMT  
		Size: 886.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:850ca42433a926b20884d341aab4e74dd6986f5fdc5652b93bfacb550b30933c`  
		Last Modified: Mon, 12 Oct 2026 20:13:09 GMT  
		Size: 737.5 KB (737519 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc28a85713b48bc92aae40973b6d1c841006de2d05648e119eae62a315220e6e`  
		Last Modified: Mon, 12 Oct 2026 20:13:09 GMT  
		Size: 5.8 MB (5809849 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:084574594fc331b203b7fd7fc6caabcd5bea34aae78637118407c0c0ad015894`  
		Last Modified: Mon, 12 Oct 2026 20:13:09 GMT  
		Size: 2.6 KB (2606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7e9d97ce246e047559544798cba1ab38e75246148693dae82eecd2f5877f516`  
		Last Modified: Mon, 12 Oct 2026 20:13:10 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74d7d50c1939308247ad9c26947c9216526e87fc89a21288c4c84abcd369620b`  
		Last Modified: Mon, 12 Oct 2026 20:13:12 GMT  
		Size: 57.1 MB (57098100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f54f075afc92041359d25ee9fb9a4633c20b55b8957fa594442d847afff1a1a3`  
		Last Modified: Mon, 12 Oct 2026 20:13:11 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48ed50a8605563989d7ed9d06c5ba70c9ffe0d71a7c113e88a682dfb3bfa47a2`  
		Last Modified: Mon, 12 Oct 2026 20:13:14 GMT  
		Size: 157.2 MB (157198303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2da8ae9c82090ada4f88074024fa34ac2f4c02229f962e25f098804f85b5019f`  
		Last Modified: Mon, 12 Oct 2026 20:13:12 GMT  
		Size: 5.2 KB (5222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:0c6d386a3836d37e15c61010c590ff87ec13c7672c75cfcdea95a4e98400f457
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16832148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:225c3117a6d207f528a31442e1afed2e08ffa008862144355112a1a86aa58b0f`

```dockerfile
```

-	Layers:
	-	`sha256:d4fc2759fe49b126688007fa943b816f3d2de555682a38998afb5a8763564183`  
		Last Modified: Mon, 12 Oct 2026 20:13:10 GMT  
		Size: 16.8 MB (16797635 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9ec9a658cbc1c34c0ed627a1d5e68db8ef2000afaa8fb15af070719bbde6004f`  
		Last Modified: Mon, 12 Oct 2026 20:13:09 GMT  
		Size: 34.5 KB (34513 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9.7.2`

```console
$ docker pull mysql@sha256:c7cb87a9822f499375287930cbff71d6d3b201e346b45108b1115b435ee2df13
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9.7.2` - linux; amd64

```console
$ docker pull mysql@sha256:1257504944c538da4aedd8ab06f0e280c8716b72ba16ac38fe134b9eb8145168
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.2 MB (270194646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6bb403c4b33f1f864294f176122f4e66a26d78b55df947f640bd7deb50d1718`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 12 Oct 2026 19:11:06 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 12 Oct 2026 19:11:06 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 20:10:37 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 12 Oct 2026 20:10:39 GMT
ENV GOSU_VERSION=1.19
# Mon, 12 Oct 2026 20:10:39 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 12 Oct 2026 20:11:11 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 12 Oct 2026 20:11:12 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 12 Oct 2026 20:11:12 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 12 Oct 2026 20:11:12 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Mon, 12 Oct 2026 20:11:12 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 12 Oct 2026 20:11:48 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 12 Oct 2026 20:11:48 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 12 Oct 2026 20:11:48 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 12 Oct 2026 20:12:33 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 12 Oct 2026 20:12:33 GMT
VOLUME [/var/lib/mysql]
# Mon, 12 Oct 2026 20:12:33 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 12 Oct 2026 20:12:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 20:12:33 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 12 Oct 2026 20:12:33 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:e896da32f635ced58051c434f6d70ebdf95efaa199d796f16689ad6a7393d30e`  
		Last Modified: Mon, 12 Oct 2026 19:11:17 GMT  
		Size: 47.2 MB (47247118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f20c7c51d408a5c40b05a6179b3008a493011301c589d55f9246ec7374578d8b`  
		Last Modified: Mon, 12 Oct 2026 20:13:05 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f82aea613929a80a104cdd3134bd06e93413a869d64bef69ff5d3b506766c4c2`  
		Last Modified: Mon, 12 Oct 2026 20:13:05 GMT  
		Size: 783.6 KB (783560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7b7f05290697169ad3e65e61d7669802dab4069ee6c3e7ec9bdc6b1dc5bc322`  
		Last Modified: Mon, 12 Oct 2026 20:13:05 GMT  
		Size: 6.2 MB (6192274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf3db0cf97f0793ab81934476935abdd2222056b83a8faa444f7fe3ac56727d4`  
		Last Modified: Mon, 12 Oct 2026 20:13:05 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ca850f28ac0cdf972fb9f2f336a209f3e8cc2cd45ed0e9c09a4533f4e2f8a92`  
		Last Modified: Mon, 12 Oct 2026 20:13:06 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9dcf293498a1b7632d7a29aa017ee35563dbfc3b8c874f92f2bfc5fd2ebb3099`  
		Last Modified: Mon, 12 Oct 2026 20:13:08 GMT  
		Size: 57.0 MB (57037927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8acbb507209a8d6bfa994710bfd8a68dfc67f4337bba411b5d030cb5feb564bc`  
		Last Modified: Mon, 12 Oct 2026 20:13:06 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c72467e5a2d3c62d11f18424fa1d7ecb29412d6149827eac34d85b37ae1b0786`  
		Last Modified: Mon, 12 Oct 2026 20:13:10 GMT  
		Size: 158.9 MB (158924399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06c380e51dc807542a232cd4c40bd083a022fa978c390eb3c1875c9c80607b8c`  
		Last Modified: Mon, 12 Oct 2026 20:13:07 GMT  
		Size: 5.2 KB (5223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7.2` - unknown; unknown

```console
$ docker pull mysql@sha256:c66a27273a78f17f12ad575989dfdb3fa71b9aab64f6803e348f632657575b8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3a986ee2a8e79e15a84325280feb122e0ed87f03b5d4af2e42398a07d428817`

```dockerfile
```

-	Layers:
	-	`sha256:069b18e5d9a4ea8ef283f4bd4210ddd2c2440fd6a94a204e6ee2bf809a6ae039`  
		Last Modified: Mon, 12 Oct 2026 20:13:05 GMT  
		Size: 16.8 MB (16799199 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:69872419d0f4b85c7eca8ceb2dcc23a351295084ed4e0e2e7f406cc5e64c7941`  
		Last Modified: Mon, 12 Oct 2026 20:13:05 GMT  
		Size: 34.2 KB (34208 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9.7.2` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:7de8b0deefdbe4cf54d9784436bc02947317b2bd2b1d292601e9e6175755c910
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.7 MB (266653825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7502c0fe172dff9a28d0c292172229276eb1cb714ec565202527073f298504a3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 12 Oct 2026 19:10:25 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 12 Oct 2026 19:10:25 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 20:10:13 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 12 Oct 2026 20:10:14 GMT
ENV GOSU_VERSION=1.19
# Mon, 12 Oct 2026 20:10:14 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 12 Oct 2026 20:10:54 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 12 Oct 2026 20:10:55 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 12 Oct 2026 20:10:55 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 12 Oct 2026 20:10:55 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Mon, 12 Oct 2026 20:10:55 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 12 Oct 2026 20:11:38 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 12 Oct 2026 20:11:38 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 12 Oct 2026 20:11:38 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 12 Oct 2026 20:12:32 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 12 Oct 2026 20:12:32 GMT
VOLUME [/var/lib/mysql]
# Mon, 12 Oct 2026 20:12:33 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 12 Oct 2026 20:12:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 20:12:33 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 12 Oct 2026 20:12:33 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b1be88c1a95445e6111ba7b3bceed48f958b8f6eb2ff1c4b27f45fa7b0f45de9`  
		Last Modified: Mon, 12 Oct 2026 19:10:36 GMT  
		Size: 45.8 MB (45800687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:010f17da4d38fc3f15a7198fd534d127b818de2ac867251eaa4ae55f9b2c809b`  
		Last Modified: Mon, 12 Oct 2026 20:13:09 GMT  
		Size: 886.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:850ca42433a926b20884d341aab4e74dd6986f5fdc5652b93bfacb550b30933c`  
		Last Modified: Mon, 12 Oct 2026 20:13:09 GMT  
		Size: 737.5 KB (737519 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc28a85713b48bc92aae40973b6d1c841006de2d05648e119eae62a315220e6e`  
		Last Modified: Mon, 12 Oct 2026 20:13:09 GMT  
		Size: 5.8 MB (5809849 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:084574594fc331b203b7fd7fc6caabcd5bea34aae78637118407c0c0ad015894`  
		Last Modified: Mon, 12 Oct 2026 20:13:09 GMT  
		Size: 2.6 KB (2606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7e9d97ce246e047559544798cba1ab38e75246148693dae82eecd2f5877f516`  
		Last Modified: Mon, 12 Oct 2026 20:13:10 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74d7d50c1939308247ad9c26947c9216526e87fc89a21288c4c84abcd369620b`  
		Last Modified: Mon, 12 Oct 2026 20:13:12 GMT  
		Size: 57.1 MB (57098100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f54f075afc92041359d25ee9fb9a4633c20b55b8957fa594442d847afff1a1a3`  
		Last Modified: Mon, 12 Oct 2026 20:13:11 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48ed50a8605563989d7ed9d06c5ba70c9ffe0d71a7c113e88a682dfb3bfa47a2`  
		Last Modified: Mon, 12 Oct 2026 20:13:14 GMT  
		Size: 157.2 MB (157198303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2da8ae9c82090ada4f88074024fa34ac2f4c02229f962e25f098804f85b5019f`  
		Last Modified: Mon, 12 Oct 2026 20:13:12 GMT  
		Size: 5.2 KB (5222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7.2` - unknown; unknown

```console
$ docker pull mysql@sha256:0c6d386a3836d37e15c61010c590ff87ec13c7672c75cfcdea95a4e98400f457
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16832148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:225c3117a6d207f528a31442e1afed2e08ffa008862144355112a1a86aa58b0f`

```dockerfile
```

-	Layers:
	-	`sha256:d4fc2759fe49b126688007fa943b816f3d2de555682a38998afb5a8763564183`  
		Last Modified: Mon, 12 Oct 2026 20:13:10 GMT  
		Size: 16.8 MB (16797635 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9ec9a658cbc1c34c0ed627a1d5e68db8ef2000afaa8fb15af070719bbde6004f`  
		Last Modified: Mon, 12 Oct 2026 20:13:09 GMT  
		Size: 34.5 KB (34513 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9.7.2-oracle`

```console
$ docker pull mysql@sha256:c7cb87a9822f499375287930cbff71d6d3b201e346b45108b1115b435ee2df13
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9.7.2-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:1257504944c538da4aedd8ab06f0e280c8716b72ba16ac38fe134b9eb8145168
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.2 MB (270194646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6bb403c4b33f1f864294f176122f4e66a26d78b55df947f640bd7deb50d1718`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 12 Oct 2026 19:11:06 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 12 Oct 2026 19:11:06 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 20:10:37 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 12 Oct 2026 20:10:39 GMT
ENV GOSU_VERSION=1.19
# Mon, 12 Oct 2026 20:10:39 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 12 Oct 2026 20:11:11 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 12 Oct 2026 20:11:12 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 12 Oct 2026 20:11:12 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 12 Oct 2026 20:11:12 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Mon, 12 Oct 2026 20:11:12 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 12 Oct 2026 20:11:48 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 12 Oct 2026 20:11:48 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 12 Oct 2026 20:11:48 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 12 Oct 2026 20:12:33 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 12 Oct 2026 20:12:33 GMT
VOLUME [/var/lib/mysql]
# Mon, 12 Oct 2026 20:12:33 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 12 Oct 2026 20:12:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 20:12:33 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 12 Oct 2026 20:12:33 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:e896da32f635ced58051c434f6d70ebdf95efaa199d796f16689ad6a7393d30e`  
		Last Modified: Mon, 12 Oct 2026 19:11:17 GMT  
		Size: 47.2 MB (47247118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f20c7c51d408a5c40b05a6179b3008a493011301c589d55f9246ec7374578d8b`  
		Last Modified: Mon, 12 Oct 2026 20:13:05 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f82aea613929a80a104cdd3134bd06e93413a869d64bef69ff5d3b506766c4c2`  
		Last Modified: Mon, 12 Oct 2026 20:13:05 GMT  
		Size: 783.6 KB (783560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7b7f05290697169ad3e65e61d7669802dab4069ee6c3e7ec9bdc6b1dc5bc322`  
		Last Modified: Mon, 12 Oct 2026 20:13:05 GMT  
		Size: 6.2 MB (6192274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf3db0cf97f0793ab81934476935abdd2222056b83a8faa444f7fe3ac56727d4`  
		Last Modified: Mon, 12 Oct 2026 20:13:05 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ca850f28ac0cdf972fb9f2f336a209f3e8cc2cd45ed0e9c09a4533f4e2f8a92`  
		Last Modified: Mon, 12 Oct 2026 20:13:06 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9dcf293498a1b7632d7a29aa017ee35563dbfc3b8c874f92f2bfc5fd2ebb3099`  
		Last Modified: Mon, 12 Oct 2026 20:13:08 GMT  
		Size: 57.0 MB (57037927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8acbb507209a8d6bfa994710bfd8a68dfc67f4337bba411b5d030cb5feb564bc`  
		Last Modified: Mon, 12 Oct 2026 20:13:06 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c72467e5a2d3c62d11f18424fa1d7ecb29412d6149827eac34d85b37ae1b0786`  
		Last Modified: Mon, 12 Oct 2026 20:13:10 GMT  
		Size: 158.9 MB (158924399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06c380e51dc807542a232cd4c40bd083a022fa978c390eb3c1875c9c80607b8c`  
		Last Modified: Mon, 12 Oct 2026 20:13:07 GMT  
		Size: 5.2 KB (5223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7.2-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:c66a27273a78f17f12ad575989dfdb3fa71b9aab64f6803e348f632657575b8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3a986ee2a8e79e15a84325280feb122e0ed87f03b5d4af2e42398a07d428817`

```dockerfile
```

-	Layers:
	-	`sha256:069b18e5d9a4ea8ef283f4bd4210ddd2c2440fd6a94a204e6ee2bf809a6ae039`  
		Last Modified: Mon, 12 Oct 2026 20:13:05 GMT  
		Size: 16.8 MB (16799199 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:69872419d0f4b85c7eca8ceb2dcc23a351295084ed4e0e2e7f406cc5e64c7941`  
		Last Modified: Mon, 12 Oct 2026 20:13:05 GMT  
		Size: 34.2 KB (34208 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9.7.2-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:7de8b0deefdbe4cf54d9784436bc02947317b2bd2b1d292601e9e6175755c910
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.7 MB (266653825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7502c0fe172dff9a28d0c292172229276eb1cb714ec565202527073f298504a3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 12 Oct 2026 19:10:25 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 12 Oct 2026 19:10:25 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 20:10:13 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 12 Oct 2026 20:10:14 GMT
ENV GOSU_VERSION=1.19
# Mon, 12 Oct 2026 20:10:14 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 12 Oct 2026 20:10:54 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 12 Oct 2026 20:10:55 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 12 Oct 2026 20:10:55 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 12 Oct 2026 20:10:55 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Mon, 12 Oct 2026 20:10:55 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 12 Oct 2026 20:11:38 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 12 Oct 2026 20:11:38 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 12 Oct 2026 20:11:38 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 12 Oct 2026 20:12:32 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 12 Oct 2026 20:12:32 GMT
VOLUME [/var/lib/mysql]
# Mon, 12 Oct 2026 20:12:33 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 12 Oct 2026 20:12:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 20:12:33 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 12 Oct 2026 20:12:33 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b1be88c1a95445e6111ba7b3bceed48f958b8f6eb2ff1c4b27f45fa7b0f45de9`  
		Last Modified: Mon, 12 Oct 2026 19:10:36 GMT  
		Size: 45.8 MB (45800687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:010f17da4d38fc3f15a7198fd534d127b818de2ac867251eaa4ae55f9b2c809b`  
		Last Modified: Mon, 12 Oct 2026 20:13:09 GMT  
		Size: 886.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:850ca42433a926b20884d341aab4e74dd6986f5fdc5652b93bfacb550b30933c`  
		Last Modified: Mon, 12 Oct 2026 20:13:09 GMT  
		Size: 737.5 KB (737519 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc28a85713b48bc92aae40973b6d1c841006de2d05648e119eae62a315220e6e`  
		Last Modified: Mon, 12 Oct 2026 20:13:09 GMT  
		Size: 5.8 MB (5809849 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:084574594fc331b203b7fd7fc6caabcd5bea34aae78637118407c0c0ad015894`  
		Last Modified: Mon, 12 Oct 2026 20:13:09 GMT  
		Size: 2.6 KB (2606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7e9d97ce246e047559544798cba1ab38e75246148693dae82eecd2f5877f516`  
		Last Modified: Mon, 12 Oct 2026 20:13:10 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74d7d50c1939308247ad9c26947c9216526e87fc89a21288c4c84abcd369620b`  
		Last Modified: Mon, 12 Oct 2026 20:13:12 GMT  
		Size: 57.1 MB (57098100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f54f075afc92041359d25ee9fb9a4633c20b55b8957fa594442d847afff1a1a3`  
		Last Modified: Mon, 12 Oct 2026 20:13:11 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48ed50a8605563989d7ed9d06c5ba70c9ffe0d71a7c113e88a682dfb3bfa47a2`  
		Last Modified: Mon, 12 Oct 2026 20:13:14 GMT  
		Size: 157.2 MB (157198303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2da8ae9c82090ada4f88074024fa34ac2f4c02229f962e25f098804f85b5019f`  
		Last Modified: Mon, 12 Oct 2026 20:13:12 GMT  
		Size: 5.2 KB (5222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7.2-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:0c6d386a3836d37e15c61010c590ff87ec13c7672c75cfcdea95a4e98400f457
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16832148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:225c3117a6d207f528a31442e1afed2e08ffa008862144355112a1a86aa58b0f`

```dockerfile
```

-	Layers:
	-	`sha256:d4fc2759fe49b126688007fa943b816f3d2de555682a38998afb5a8763564183`  
		Last Modified: Mon, 12 Oct 2026 20:13:10 GMT  
		Size: 16.8 MB (16797635 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9ec9a658cbc1c34c0ed627a1d5e68db8ef2000afaa8fb15af070719bbde6004f`  
		Last Modified: Mon, 12 Oct 2026 20:13:09 GMT  
		Size: 34.5 KB (34513 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9.7.2-oraclelinux9`

```console
$ docker pull mysql@sha256:c7cb87a9822f499375287930cbff71d6d3b201e346b45108b1115b435ee2df13
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9.7.2-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:1257504944c538da4aedd8ab06f0e280c8716b72ba16ac38fe134b9eb8145168
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.2 MB (270194646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6bb403c4b33f1f864294f176122f4e66a26d78b55df947f640bd7deb50d1718`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 12 Oct 2026 19:11:06 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 12 Oct 2026 19:11:06 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 20:10:37 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 12 Oct 2026 20:10:39 GMT
ENV GOSU_VERSION=1.19
# Mon, 12 Oct 2026 20:10:39 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 12 Oct 2026 20:11:11 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 12 Oct 2026 20:11:12 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 12 Oct 2026 20:11:12 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 12 Oct 2026 20:11:12 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Mon, 12 Oct 2026 20:11:12 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 12 Oct 2026 20:11:48 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 12 Oct 2026 20:11:48 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 12 Oct 2026 20:11:48 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 12 Oct 2026 20:12:33 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 12 Oct 2026 20:12:33 GMT
VOLUME [/var/lib/mysql]
# Mon, 12 Oct 2026 20:12:33 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 12 Oct 2026 20:12:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 20:12:33 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 12 Oct 2026 20:12:33 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:e896da32f635ced58051c434f6d70ebdf95efaa199d796f16689ad6a7393d30e`  
		Last Modified: Mon, 12 Oct 2026 19:11:17 GMT  
		Size: 47.2 MB (47247118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f20c7c51d408a5c40b05a6179b3008a493011301c589d55f9246ec7374578d8b`  
		Last Modified: Mon, 12 Oct 2026 20:13:05 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f82aea613929a80a104cdd3134bd06e93413a869d64bef69ff5d3b506766c4c2`  
		Last Modified: Mon, 12 Oct 2026 20:13:05 GMT  
		Size: 783.6 KB (783560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7b7f05290697169ad3e65e61d7669802dab4069ee6c3e7ec9bdc6b1dc5bc322`  
		Last Modified: Mon, 12 Oct 2026 20:13:05 GMT  
		Size: 6.2 MB (6192274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf3db0cf97f0793ab81934476935abdd2222056b83a8faa444f7fe3ac56727d4`  
		Last Modified: Mon, 12 Oct 2026 20:13:05 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ca850f28ac0cdf972fb9f2f336a209f3e8cc2cd45ed0e9c09a4533f4e2f8a92`  
		Last Modified: Mon, 12 Oct 2026 20:13:06 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9dcf293498a1b7632d7a29aa017ee35563dbfc3b8c874f92f2bfc5fd2ebb3099`  
		Last Modified: Mon, 12 Oct 2026 20:13:08 GMT  
		Size: 57.0 MB (57037927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8acbb507209a8d6bfa994710bfd8a68dfc67f4337bba411b5d030cb5feb564bc`  
		Last Modified: Mon, 12 Oct 2026 20:13:06 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c72467e5a2d3c62d11f18424fa1d7ecb29412d6149827eac34d85b37ae1b0786`  
		Last Modified: Mon, 12 Oct 2026 20:13:10 GMT  
		Size: 158.9 MB (158924399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06c380e51dc807542a232cd4c40bd083a022fa978c390eb3c1875c9c80607b8c`  
		Last Modified: Mon, 12 Oct 2026 20:13:07 GMT  
		Size: 5.2 KB (5223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7.2-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:c66a27273a78f17f12ad575989dfdb3fa71b9aab64f6803e348f632657575b8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3a986ee2a8e79e15a84325280feb122e0ed87f03b5d4af2e42398a07d428817`

```dockerfile
```

-	Layers:
	-	`sha256:069b18e5d9a4ea8ef283f4bd4210ddd2c2440fd6a94a204e6ee2bf809a6ae039`  
		Last Modified: Mon, 12 Oct 2026 20:13:05 GMT  
		Size: 16.8 MB (16799199 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:69872419d0f4b85c7eca8ceb2dcc23a351295084ed4e0e2e7f406cc5e64c7941`  
		Last Modified: Mon, 12 Oct 2026 20:13:05 GMT  
		Size: 34.2 KB (34208 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9.7.2-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:7de8b0deefdbe4cf54d9784436bc02947317b2bd2b1d292601e9e6175755c910
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.7 MB (266653825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7502c0fe172dff9a28d0c292172229276eb1cb714ec565202527073f298504a3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 12 Oct 2026 19:10:25 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 12 Oct 2026 19:10:25 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 20:10:13 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 12 Oct 2026 20:10:14 GMT
ENV GOSU_VERSION=1.19
# Mon, 12 Oct 2026 20:10:14 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 12 Oct 2026 20:10:54 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 12 Oct 2026 20:10:55 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 12 Oct 2026 20:10:55 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 12 Oct 2026 20:10:55 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Mon, 12 Oct 2026 20:10:55 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 12 Oct 2026 20:11:38 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 12 Oct 2026 20:11:38 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 12 Oct 2026 20:11:38 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 12 Oct 2026 20:12:32 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 12 Oct 2026 20:12:32 GMT
VOLUME [/var/lib/mysql]
# Mon, 12 Oct 2026 20:12:33 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 12 Oct 2026 20:12:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 20:12:33 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 12 Oct 2026 20:12:33 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b1be88c1a95445e6111ba7b3bceed48f958b8f6eb2ff1c4b27f45fa7b0f45de9`  
		Last Modified: Mon, 12 Oct 2026 19:10:36 GMT  
		Size: 45.8 MB (45800687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:010f17da4d38fc3f15a7198fd534d127b818de2ac867251eaa4ae55f9b2c809b`  
		Last Modified: Mon, 12 Oct 2026 20:13:09 GMT  
		Size: 886.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:850ca42433a926b20884d341aab4e74dd6986f5fdc5652b93bfacb550b30933c`  
		Last Modified: Mon, 12 Oct 2026 20:13:09 GMT  
		Size: 737.5 KB (737519 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc28a85713b48bc92aae40973b6d1c841006de2d05648e119eae62a315220e6e`  
		Last Modified: Mon, 12 Oct 2026 20:13:09 GMT  
		Size: 5.8 MB (5809849 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:084574594fc331b203b7fd7fc6caabcd5bea34aae78637118407c0c0ad015894`  
		Last Modified: Mon, 12 Oct 2026 20:13:09 GMT  
		Size: 2.6 KB (2606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7e9d97ce246e047559544798cba1ab38e75246148693dae82eecd2f5877f516`  
		Last Modified: Mon, 12 Oct 2026 20:13:10 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74d7d50c1939308247ad9c26947c9216526e87fc89a21288c4c84abcd369620b`  
		Last Modified: Mon, 12 Oct 2026 20:13:12 GMT  
		Size: 57.1 MB (57098100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f54f075afc92041359d25ee9fb9a4633c20b55b8957fa594442d847afff1a1a3`  
		Last Modified: Mon, 12 Oct 2026 20:13:11 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48ed50a8605563989d7ed9d06c5ba70c9ffe0d71a7c113e88a682dfb3bfa47a2`  
		Last Modified: Mon, 12 Oct 2026 20:13:14 GMT  
		Size: 157.2 MB (157198303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2da8ae9c82090ada4f88074024fa34ac2f4c02229f962e25f098804f85b5019f`  
		Last Modified: Mon, 12 Oct 2026 20:13:12 GMT  
		Size: 5.2 KB (5222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7.2-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:0c6d386a3836d37e15c61010c590ff87ec13c7672c75cfcdea95a4e98400f457
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16832148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:225c3117a6d207f528a31442e1afed2e08ffa008862144355112a1a86aa58b0f`

```dockerfile
```

-	Layers:
	-	`sha256:d4fc2759fe49b126688007fa943b816f3d2de555682a38998afb5a8763564183`  
		Last Modified: Mon, 12 Oct 2026 20:13:10 GMT  
		Size: 16.8 MB (16797635 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9ec9a658cbc1c34c0ed627a1d5e68db8ef2000afaa8fb15af070719bbde6004f`  
		Last Modified: Mon, 12 Oct 2026 20:13:09 GMT  
		Size: 34.5 KB (34513 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:innovation`

```console
$ docker pull mysql@sha256:893418c8a7a34c60d2d961cc30ef136095da141478562ed2101ae3f5faba9c3f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:innovation` - linux; amd64

```console
$ docker pull mysql@sha256:9bd5e8db9c913e82eefd16b556ca3e4e12ef25ff1b8507b73d04cf754b6b8f47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.6 MB (271629275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b130421b8c710f5c18f3bcce8d04d710616d55d747dcba1cb78886d4d5fc698`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 12 Oct 2026 19:11:06 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 12 Oct 2026 19:11:06 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 20:09:50 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 12 Oct 2026 20:09:52 GMT
ENV GOSU_VERSION=1.19
# Mon, 12 Oct 2026 20:09:52 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 12 Oct 2026 20:10:24 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 12 Oct 2026 20:10:25 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 12 Oct 2026 20:10:25 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 12 Oct 2026 20:10:25 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Mon, 12 Oct 2026 20:10:25 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 12 Oct 2026 20:11:00 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 12 Oct 2026 20:11:00 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 12 Oct 2026 20:11:00 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Mon, 12 Oct 2026 20:11:44 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 12 Oct 2026 20:11:44 GMT
VOLUME [/var/lib/mysql]
# Mon, 12 Oct 2026 20:11:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 12 Oct 2026 20:11:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 20:11:44 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 12 Oct 2026 20:11:44 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:e896da32f635ced58051c434f6d70ebdf95efaa199d796f16689ad6a7393d30e`  
		Last Modified: Mon, 12 Oct 2026 19:11:17 GMT  
		Size: 47.2 MB (47247118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:029a2ef99eb4bd84989e14407a162e85dd43c39f152800636b7f2f34e08e1d35`  
		Last Modified: Mon, 12 Oct 2026 20:12:15 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a798338f8ea05e3f1ee9fcbc5cf7fa005292ea5a19e57cb725d2f4b560f1e78e`  
		Last Modified: Mon, 12 Oct 2026 20:12:15 GMT  
		Size: 783.6 KB (783559 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d41b77484029035b0416172a7a516135161db36a5c4089fcbcb5450789ea5fb8`  
		Last Modified: Mon, 12 Oct 2026 20:12:15 GMT  
		Size: 6.2 MB (6192268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d057682167d504e74bea3542dbba561f97cd19d60d931145d6b4cfcc50074d4f`  
		Last Modified: Mon, 12 Oct 2026 20:12:15 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecb59e1f4a8f87cb477397c1d7876cfb480f75a147dba1dfd6df5bb6de9a8904`  
		Last Modified: Mon, 12 Oct 2026 20:12:16 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c233331fdce73aacd8a8696a5476a8a0ca4a5ad291e71142c590d3f0c0f0e5d7`  
		Last Modified: Mon, 12 Oct 2026 20:12:18 GMT  
		Size: 57.4 MB (57438613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a710d5def08112e5495c86fc8ab9cd14af67e80e7f14350e22d209bed54eff7`  
		Last Modified: Mon, 12 Oct 2026 20:12:17 GMT  
		Size: 326.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6526c3b0b71a698d53ca661298c1bd3957fcbebffd234caefec7cd008074c03`  
		Last Modified: Mon, 12 Oct 2026 20:12:20 GMT  
		Size: 160.0 MB (159958334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:514ea420f997205256cd21982069f6b15b59e32a5e172ce1e08f8aeb802201a8`  
		Last Modified: Mon, 12 Oct 2026 20:12:18 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:innovation` - unknown; unknown

```console
$ docker pull mysql@sha256:6b1cb3787a01f23b2e9783d50f35c7c382799725630e22b5010820c884712be2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17452721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08175b2f44862eeb54a3be1437b232b1eb8aac57b359d74b8368fa69a579b725`

```dockerfile
```

-	Layers:
	-	`sha256:2659fa5447a2f0a95876099600d3ba81d2b2c72cb483f3255e0b20da0c05eab4`  
		Last Modified: Mon, 12 Oct 2026 20:12:16 GMT  
		Size: 17.4 MB (17417423 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9e6faf632f7d39b2fc61fe73a05a2c7a082e8369ae5ff9023d74e7f852fb1355`  
		Last Modified: Mon, 12 Oct 2026 20:12:15 GMT  
		Size: 35.3 KB (35298 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:innovation` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:46911fe021d2e75f6724959921599f5cdfd9a3758e4b171ba28034e174e0eb4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.0 MB (267993703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08f6250f9f8f653d8afb142b136a6b1d2177827276e5fd74974f3c3c5f190522`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 12 Oct 2026 19:10:25 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 12 Oct 2026 19:10:25 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 20:09:37 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 12 Oct 2026 20:09:39 GMT
ENV GOSU_VERSION=1.19
# Mon, 12 Oct 2026 20:09:39 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 12 Oct 2026 20:10:18 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 12 Oct 2026 20:10:19 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 12 Oct 2026 20:10:19 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 12 Oct 2026 20:10:19 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Mon, 12 Oct 2026 20:10:19 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 12 Oct 2026 20:11:01 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 12 Oct 2026 20:11:01 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 12 Oct 2026 20:11:01 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Mon, 12 Oct 2026 20:11:55 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 12 Oct 2026 20:11:55 GMT
VOLUME [/var/lib/mysql]
# Mon, 12 Oct 2026 20:11:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 12 Oct 2026 20:11:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 20:11:55 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 12 Oct 2026 20:11:55 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b1be88c1a95445e6111ba7b3bceed48f958b8f6eb2ff1c4b27f45fa7b0f45de9`  
		Last Modified: Mon, 12 Oct 2026 19:10:36 GMT  
		Size: 45.8 MB (45800687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0399a56949deaaf20c00b16050b77d7a63225e27be68c9ca385d0c1c880f0135`  
		Last Modified: Mon, 12 Oct 2026 20:12:31 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84bf64211785ff7a6c43b8e6a5a3709415938d2513f9e701416d4bcf62d531df`  
		Last Modified: Mon, 12 Oct 2026 20:12:32 GMT  
		Size: 737.5 KB (737522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7195dce5dfb48948082c8e356a5d15249f243f19f36574fcf0bb8502f0658d81`  
		Last Modified: Mon, 12 Oct 2026 20:12:32 GMT  
		Size: 5.8 MB (5809858 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67e4017b162aed8a9d3ab7530517eb44f352124cc95aa4f88c5562d014f88cad`  
		Last Modified: Mon, 12 Oct 2026 20:12:32 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d95985f6fb94910d133f5e8f92db9883ef3c4c586eb90644791a690f4bc0dc7b`  
		Last Modified: Mon, 12 Oct 2026 20:12:33 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b429d7e53711dbddcc2bf8fa1f38831ad39777485d80ab7f83050b744413ade6`  
		Last Modified: Mon, 12 Oct 2026 20:12:35 GMT  
		Size: 57.4 MB (57414294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ad383cc3314a302763fcfef893db025ea66afcdede0d41fd7410f67781a67a6`  
		Last Modified: Mon, 12 Oct 2026 20:12:33 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16c0cf53a295c474087f466e675f33b6dc1a049673660cb94c19d428f9ee3176`  
		Last Modified: Mon, 12 Oct 2026 20:12:37 GMT  
		Size: 158.2 MB (158221965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae7f2c27109c9b7a53338cc3c94f11c49cbd91d2499a4b427bbfe50c54b37887`  
		Last Modified: Mon, 12 Oct 2026 20:12:34 GMT  
		Size: 5.2 KB (5221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:innovation` - unknown; unknown

```console
$ docker pull mysql@sha256:6abc841a93694bee7d74bb63fd917c9ef474a4569323034acb56e088abf1eca4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17451535 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15145fbf881023c0d02c304531029c80d34d1f81e9ada40099d7996a5d568389`

```dockerfile
```

-	Layers:
	-	`sha256:73883f5df73fbf47cd0e0b6694a110bff7a55e9e9ef0c51d2dca97848e31255a`  
		Last Modified: Mon, 12 Oct 2026 20:12:32 GMT  
		Size: 17.4 MB (17415896 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cab566f9ae27d529a7a07ea82e9029f7afc2542e3f873f26962cf83b3f53d157`  
		Last Modified: Mon, 12 Oct 2026 20:12:32 GMT  
		Size: 35.6 KB (35639 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:innovation-oracle`

```console
$ docker pull mysql@sha256:893418c8a7a34c60d2d961cc30ef136095da141478562ed2101ae3f5faba9c3f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:innovation-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:9bd5e8db9c913e82eefd16b556ca3e4e12ef25ff1b8507b73d04cf754b6b8f47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.6 MB (271629275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b130421b8c710f5c18f3bcce8d04d710616d55d747dcba1cb78886d4d5fc698`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 12 Oct 2026 19:11:06 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 12 Oct 2026 19:11:06 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 20:09:50 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 12 Oct 2026 20:09:52 GMT
ENV GOSU_VERSION=1.19
# Mon, 12 Oct 2026 20:09:52 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 12 Oct 2026 20:10:24 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 12 Oct 2026 20:10:25 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 12 Oct 2026 20:10:25 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 12 Oct 2026 20:10:25 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Mon, 12 Oct 2026 20:10:25 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 12 Oct 2026 20:11:00 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 12 Oct 2026 20:11:00 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 12 Oct 2026 20:11:00 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Mon, 12 Oct 2026 20:11:44 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 12 Oct 2026 20:11:44 GMT
VOLUME [/var/lib/mysql]
# Mon, 12 Oct 2026 20:11:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 12 Oct 2026 20:11:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 20:11:44 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 12 Oct 2026 20:11:44 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:e896da32f635ced58051c434f6d70ebdf95efaa199d796f16689ad6a7393d30e`  
		Last Modified: Mon, 12 Oct 2026 19:11:17 GMT  
		Size: 47.2 MB (47247118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:029a2ef99eb4bd84989e14407a162e85dd43c39f152800636b7f2f34e08e1d35`  
		Last Modified: Mon, 12 Oct 2026 20:12:15 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a798338f8ea05e3f1ee9fcbc5cf7fa005292ea5a19e57cb725d2f4b560f1e78e`  
		Last Modified: Mon, 12 Oct 2026 20:12:15 GMT  
		Size: 783.6 KB (783559 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d41b77484029035b0416172a7a516135161db36a5c4089fcbcb5450789ea5fb8`  
		Last Modified: Mon, 12 Oct 2026 20:12:15 GMT  
		Size: 6.2 MB (6192268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d057682167d504e74bea3542dbba561f97cd19d60d931145d6b4cfcc50074d4f`  
		Last Modified: Mon, 12 Oct 2026 20:12:15 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecb59e1f4a8f87cb477397c1d7876cfb480f75a147dba1dfd6df5bb6de9a8904`  
		Last Modified: Mon, 12 Oct 2026 20:12:16 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c233331fdce73aacd8a8696a5476a8a0ca4a5ad291e71142c590d3f0c0f0e5d7`  
		Last Modified: Mon, 12 Oct 2026 20:12:18 GMT  
		Size: 57.4 MB (57438613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a710d5def08112e5495c86fc8ab9cd14af67e80e7f14350e22d209bed54eff7`  
		Last Modified: Mon, 12 Oct 2026 20:12:17 GMT  
		Size: 326.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6526c3b0b71a698d53ca661298c1bd3957fcbebffd234caefec7cd008074c03`  
		Last Modified: Mon, 12 Oct 2026 20:12:20 GMT  
		Size: 160.0 MB (159958334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:514ea420f997205256cd21982069f6b15b59e32a5e172ce1e08f8aeb802201a8`  
		Last Modified: Mon, 12 Oct 2026 20:12:18 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:innovation-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:6b1cb3787a01f23b2e9783d50f35c7c382799725630e22b5010820c884712be2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17452721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08175b2f44862eeb54a3be1437b232b1eb8aac57b359d74b8368fa69a579b725`

```dockerfile
```

-	Layers:
	-	`sha256:2659fa5447a2f0a95876099600d3ba81d2b2c72cb483f3255e0b20da0c05eab4`  
		Last Modified: Mon, 12 Oct 2026 20:12:16 GMT  
		Size: 17.4 MB (17417423 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9e6faf632f7d39b2fc61fe73a05a2c7a082e8369ae5ff9023d74e7f852fb1355`  
		Last Modified: Mon, 12 Oct 2026 20:12:15 GMT  
		Size: 35.3 KB (35298 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:innovation-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:46911fe021d2e75f6724959921599f5cdfd9a3758e4b171ba28034e174e0eb4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.0 MB (267993703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08f6250f9f8f653d8afb142b136a6b1d2177827276e5fd74974f3c3c5f190522`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 12 Oct 2026 19:10:25 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 12 Oct 2026 19:10:25 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 20:09:37 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 12 Oct 2026 20:09:39 GMT
ENV GOSU_VERSION=1.19
# Mon, 12 Oct 2026 20:09:39 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 12 Oct 2026 20:10:18 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 12 Oct 2026 20:10:19 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 12 Oct 2026 20:10:19 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 12 Oct 2026 20:10:19 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Mon, 12 Oct 2026 20:10:19 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 12 Oct 2026 20:11:01 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 12 Oct 2026 20:11:01 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 12 Oct 2026 20:11:01 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Mon, 12 Oct 2026 20:11:55 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 12 Oct 2026 20:11:55 GMT
VOLUME [/var/lib/mysql]
# Mon, 12 Oct 2026 20:11:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 12 Oct 2026 20:11:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 20:11:55 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 12 Oct 2026 20:11:55 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b1be88c1a95445e6111ba7b3bceed48f958b8f6eb2ff1c4b27f45fa7b0f45de9`  
		Last Modified: Mon, 12 Oct 2026 19:10:36 GMT  
		Size: 45.8 MB (45800687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0399a56949deaaf20c00b16050b77d7a63225e27be68c9ca385d0c1c880f0135`  
		Last Modified: Mon, 12 Oct 2026 20:12:31 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84bf64211785ff7a6c43b8e6a5a3709415938d2513f9e701416d4bcf62d531df`  
		Last Modified: Mon, 12 Oct 2026 20:12:32 GMT  
		Size: 737.5 KB (737522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7195dce5dfb48948082c8e356a5d15249f243f19f36574fcf0bb8502f0658d81`  
		Last Modified: Mon, 12 Oct 2026 20:12:32 GMT  
		Size: 5.8 MB (5809858 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67e4017b162aed8a9d3ab7530517eb44f352124cc95aa4f88c5562d014f88cad`  
		Last Modified: Mon, 12 Oct 2026 20:12:32 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d95985f6fb94910d133f5e8f92db9883ef3c4c586eb90644791a690f4bc0dc7b`  
		Last Modified: Mon, 12 Oct 2026 20:12:33 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b429d7e53711dbddcc2bf8fa1f38831ad39777485d80ab7f83050b744413ade6`  
		Last Modified: Mon, 12 Oct 2026 20:12:35 GMT  
		Size: 57.4 MB (57414294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ad383cc3314a302763fcfef893db025ea66afcdede0d41fd7410f67781a67a6`  
		Last Modified: Mon, 12 Oct 2026 20:12:33 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16c0cf53a295c474087f466e675f33b6dc1a049673660cb94c19d428f9ee3176`  
		Last Modified: Mon, 12 Oct 2026 20:12:37 GMT  
		Size: 158.2 MB (158221965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae7f2c27109c9b7a53338cc3c94f11c49cbd91d2499a4b427bbfe50c54b37887`  
		Last Modified: Mon, 12 Oct 2026 20:12:34 GMT  
		Size: 5.2 KB (5221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:innovation-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:6abc841a93694bee7d74bb63fd917c9ef474a4569323034acb56e088abf1eca4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17451535 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15145fbf881023c0d02c304531029c80d34d1f81e9ada40099d7996a5d568389`

```dockerfile
```

-	Layers:
	-	`sha256:73883f5df73fbf47cd0e0b6694a110bff7a55e9e9ef0c51d2dca97848e31255a`  
		Last Modified: Mon, 12 Oct 2026 20:12:32 GMT  
		Size: 17.4 MB (17415896 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cab566f9ae27d529a7a07ea82e9029f7afc2542e3f873f26962cf83b3f53d157`  
		Last Modified: Mon, 12 Oct 2026 20:12:32 GMT  
		Size: 35.6 KB (35639 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:innovation-oraclelinux9`

```console
$ docker pull mysql@sha256:893418c8a7a34c60d2d961cc30ef136095da141478562ed2101ae3f5faba9c3f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:innovation-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:9bd5e8db9c913e82eefd16b556ca3e4e12ef25ff1b8507b73d04cf754b6b8f47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.6 MB (271629275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b130421b8c710f5c18f3bcce8d04d710616d55d747dcba1cb78886d4d5fc698`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 12 Oct 2026 19:11:06 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 12 Oct 2026 19:11:06 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 20:09:50 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 12 Oct 2026 20:09:52 GMT
ENV GOSU_VERSION=1.19
# Mon, 12 Oct 2026 20:09:52 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 12 Oct 2026 20:10:24 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 12 Oct 2026 20:10:25 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 12 Oct 2026 20:10:25 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 12 Oct 2026 20:10:25 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Mon, 12 Oct 2026 20:10:25 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 12 Oct 2026 20:11:00 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 12 Oct 2026 20:11:00 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 12 Oct 2026 20:11:00 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Mon, 12 Oct 2026 20:11:44 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 12 Oct 2026 20:11:44 GMT
VOLUME [/var/lib/mysql]
# Mon, 12 Oct 2026 20:11:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 12 Oct 2026 20:11:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 20:11:44 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 12 Oct 2026 20:11:44 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:e896da32f635ced58051c434f6d70ebdf95efaa199d796f16689ad6a7393d30e`  
		Last Modified: Mon, 12 Oct 2026 19:11:17 GMT  
		Size: 47.2 MB (47247118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:029a2ef99eb4bd84989e14407a162e85dd43c39f152800636b7f2f34e08e1d35`  
		Last Modified: Mon, 12 Oct 2026 20:12:15 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a798338f8ea05e3f1ee9fcbc5cf7fa005292ea5a19e57cb725d2f4b560f1e78e`  
		Last Modified: Mon, 12 Oct 2026 20:12:15 GMT  
		Size: 783.6 KB (783559 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d41b77484029035b0416172a7a516135161db36a5c4089fcbcb5450789ea5fb8`  
		Last Modified: Mon, 12 Oct 2026 20:12:15 GMT  
		Size: 6.2 MB (6192268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d057682167d504e74bea3542dbba561f97cd19d60d931145d6b4cfcc50074d4f`  
		Last Modified: Mon, 12 Oct 2026 20:12:15 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecb59e1f4a8f87cb477397c1d7876cfb480f75a147dba1dfd6df5bb6de9a8904`  
		Last Modified: Mon, 12 Oct 2026 20:12:16 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c233331fdce73aacd8a8696a5476a8a0ca4a5ad291e71142c590d3f0c0f0e5d7`  
		Last Modified: Mon, 12 Oct 2026 20:12:18 GMT  
		Size: 57.4 MB (57438613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a710d5def08112e5495c86fc8ab9cd14af67e80e7f14350e22d209bed54eff7`  
		Last Modified: Mon, 12 Oct 2026 20:12:17 GMT  
		Size: 326.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6526c3b0b71a698d53ca661298c1bd3957fcbebffd234caefec7cd008074c03`  
		Last Modified: Mon, 12 Oct 2026 20:12:20 GMT  
		Size: 160.0 MB (159958334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:514ea420f997205256cd21982069f6b15b59e32a5e172ce1e08f8aeb802201a8`  
		Last Modified: Mon, 12 Oct 2026 20:12:18 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:innovation-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:6b1cb3787a01f23b2e9783d50f35c7c382799725630e22b5010820c884712be2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17452721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08175b2f44862eeb54a3be1437b232b1eb8aac57b359d74b8368fa69a579b725`

```dockerfile
```

-	Layers:
	-	`sha256:2659fa5447a2f0a95876099600d3ba81d2b2c72cb483f3255e0b20da0c05eab4`  
		Last Modified: Mon, 12 Oct 2026 20:12:16 GMT  
		Size: 17.4 MB (17417423 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9e6faf632f7d39b2fc61fe73a05a2c7a082e8369ae5ff9023d74e7f852fb1355`  
		Last Modified: Mon, 12 Oct 2026 20:12:15 GMT  
		Size: 35.3 KB (35298 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:innovation-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:46911fe021d2e75f6724959921599f5cdfd9a3758e4b171ba28034e174e0eb4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.0 MB (267993703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08f6250f9f8f653d8afb142b136a6b1d2177827276e5fd74974f3c3c5f190522`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 12 Oct 2026 19:10:25 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 12 Oct 2026 19:10:25 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 20:09:37 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 12 Oct 2026 20:09:39 GMT
ENV GOSU_VERSION=1.19
# Mon, 12 Oct 2026 20:09:39 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 12 Oct 2026 20:10:18 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 12 Oct 2026 20:10:19 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 12 Oct 2026 20:10:19 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 12 Oct 2026 20:10:19 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Mon, 12 Oct 2026 20:10:19 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 12 Oct 2026 20:11:01 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 12 Oct 2026 20:11:01 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 12 Oct 2026 20:11:01 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Mon, 12 Oct 2026 20:11:55 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 12 Oct 2026 20:11:55 GMT
VOLUME [/var/lib/mysql]
# Mon, 12 Oct 2026 20:11:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 12 Oct 2026 20:11:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 20:11:55 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 12 Oct 2026 20:11:55 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b1be88c1a95445e6111ba7b3bceed48f958b8f6eb2ff1c4b27f45fa7b0f45de9`  
		Last Modified: Mon, 12 Oct 2026 19:10:36 GMT  
		Size: 45.8 MB (45800687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0399a56949deaaf20c00b16050b77d7a63225e27be68c9ca385d0c1c880f0135`  
		Last Modified: Mon, 12 Oct 2026 20:12:31 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84bf64211785ff7a6c43b8e6a5a3709415938d2513f9e701416d4bcf62d531df`  
		Last Modified: Mon, 12 Oct 2026 20:12:32 GMT  
		Size: 737.5 KB (737522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7195dce5dfb48948082c8e356a5d15249f243f19f36574fcf0bb8502f0658d81`  
		Last Modified: Mon, 12 Oct 2026 20:12:32 GMT  
		Size: 5.8 MB (5809858 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67e4017b162aed8a9d3ab7530517eb44f352124cc95aa4f88c5562d014f88cad`  
		Last Modified: Mon, 12 Oct 2026 20:12:32 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d95985f6fb94910d133f5e8f92db9883ef3c4c586eb90644791a690f4bc0dc7b`  
		Last Modified: Mon, 12 Oct 2026 20:12:33 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b429d7e53711dbddcc2bf8fa1f38831ad39777485d80ab7f83050b744413ade6`  
		Last Modified: Mon, 12 Oct 2026 20:12:35 GMT  
		Size: 57.4 MB (57414294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ad383cc3314a302763fcfef893db025ea66afcdede0d41fd7410f67781a67a6`  
		Last Modified: Mon, 12 Oct 2026 20:12:33 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16c0cf53a295c474087f466e675f33b6dc1a049673660cb94c19d428f9ee3176`  
		Last Modified: Mon, 12 Oct 2026 20:12:37 GMT  
		Size: 158.2 MB (158221965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae7f2c27109c9b7a53338cc3c94f11c49cbd91d2499a4b427bbfe50c54b37887`  
		Last Modified: Mon, 12 Oct 2026 20:12:34 GMT  
		Size: 5.2 KB (5221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:innovation-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:6abc841a93694bee7d74bb63fd917c9ef474a4569323034acb56e088abf1eca4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17451535 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15145fbf881023c0d02c304531029c80d34d1f81e9ada40099d7996a5d568389`

```dockerfile
```

-	Layers:
	-	`sha256:73883f5df73fbf47cd0e0b6694a110bff7a55e9e9ef0c51d2dca97848e31255a`  
		Last Modified: Mon, 12 Oct 2026 20:12:32 GMT  
		Size: 17.4 MB (17415896 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cab566f9ae27d529a7a07ea82e9029f7afc2542e3f873f26962cf83b3f53d157`  
		Last Modified: Mon, 12 Oct 2026 20:12:32 GMT  
		Size: 35.6 KB (35639 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:latest`

```console
$ docker pull mysql@sha256:893418c8a7a34c60d2d961cc30ef136095da141478562ed2101ae3f5faba9c3f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:latest` - linux; amd64

```console
$ docker pull mysql@sha256:9bd5e8db9c913e82eefd16b556ca3e4e12ef25ff1b8507b73d04cf754b6b8f47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.6 MB (271629275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b130421b8c710f5c18f3bcce8d04d710616d55d747dcba1cb78886d4d5fc698`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 12 Oct 2026 19:11:06 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 12 Oct 2026 19:11:06 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 20:09:50 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 12 Oct 2026 20:09:52 GMT
ENV GOSU_VERSION=1.19
# Mon, 12 Oct 2026 20:09:52 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 12 Oct 2026 20:10:24 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 12 Oct 2026 20:10:25 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 12 Oct 2026 20:10:25 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 12 Oct 2026 20:10:25 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Mon, 12 Oct 2026 20:10:25 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 12 Oct 2026 20:11:00 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 12 Oct 2026 20:11:00 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 12 Oct 2026 20:11:00 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Mon, 12 Oct 2026 20:11:44 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 12 Oct 2026 20:11:44 GMT
VOLUME [/var/lib/mysql]
# Mon, 12 Oct 2026 20:11:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 12 Oct 2026 20:11:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 20:11:44 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 12 Oct 2026 20:11:44 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:e896da32f635ced58051c434f6d70ebdf95efaa199d796f16689ad6a7393d30e`  
		Last Modified: Mon, 12 Oct 2026 19:11:17 GMT  
		Size: 47.2 MB (47247118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:029a2ef99eb4bd84989e14407a162e85dd43c39f152800636b7f2f34e08e1d35`  
		Last Modified: Mon, 12 Oct 2026 20:12:15 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a798338f8ea05e3f1ee9fcbc5cf7fa005292ea5a19e57cb725d2f4b560f1e78e`  
		Last Modified: Mon, 12 Oct 2026 20:12:15 GMT  
		Size: 783.6 KB (783559 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d41b77484029035b0416172a7a516135161db36a5c4089fcbcb5450789ea5fb8`  
		Last Modified: Mon, 12 Oct 2026 20:12:15 GMT  
		Size: 6.2 MB (6192268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d057682167d504e74bea3542dbba561f97cd19d60d931145d6b4cfcc50074d4f`  
		Last Modified: Mon, 12 Oct 2026 20:12:15 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecb59e1f4a8f87cb477397c1d7876cfb480f75a147dba1dfd6df5bb6de9a8904`  
		Last Modified: Mon, 12 Oct 2026 20:12:16 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c233331fdce73aacd8a8696a5476a8a0ca4a5ad291e71142c590d3f0c0f0e5d7`  
		Last Modified: Mon, 12 Oct 2026 20:12:18 GMT  
		Size: 57.4 MB (57438613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a710d5def08112e5495c86fc8ab9cd14af67e80e7f14350e22d209bed54eff7`  
		Last Modified: Mon, 12 Oct 2026 20:12:17 GMT  
		Size: 326.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6526c3b0b71a698d53ca661298c1bd3957fcbebffd234caefec7cd008074c03`  
		Last Modified: Mon, 12 Oct 2026 20:12:20 GMT  
		Size: 160.0 MB (159958334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:514ea420f997205256cd21982069f6b15b59e32a5e172ce1e08f8aeb802201a8`  
		Last Modified: Mon, 12 Oct 2026 20:12:18 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:latest` - unknown; unknown

```console
$ docker pull mysql@sha256:6b1cb3787a01f23b2e9783d50f35c7c382799725630e22b5010820c884712be2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17452721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08175b2f44862eeb54a3be1437b232b1eb8aac57b359d74b8368fa69a579b725`

```dockerfile
```

-	Layers:
	-	`sha256:2659fa5447a2f0a95876099600d3ba81d2b2c72cb483f3255e0b20da0c05eab4`  
		Last Modified: Mon, 12 Oct 2026 20:12:16 GMT  
		Size: 17.4 MB (17417423 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9e6faf632f7d39b2fc61fe73a05a2c7a082e8369ae5ff9023d74e7f852fb1355`  
		Last Modified: Mon, 12 Oct 2026 20:12:15 GMT  
		Size: 35.3 KB (35298 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:latest` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:46911fe021d2e75f6724959921599f5cdfd9a3758e4b171ba28034e174e0eb4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.0 MB (267993703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08f6250f9f8f653d8afb142b136a6b1d2177827276e5fd74974f3c3c5f190522`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 12 Oct 2026 19:10:25 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 12 Oct 2026 19:10:25 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 20:09:37 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 12 Oct 2026 20:09:39 GMT
ENV GOSU_VERSION=1.19
# Mon, 12 Oct 2026 20:09:39 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 12 Oct 2026 20:10:18 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 12 Oct 2026 20:10:19 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 12 Oct 2026 20:10:19 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 12 Oct 2026 20:10:19 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Mon, 12 Oct 2026 20:10:19 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 12 Oct 2026 20:11:01 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 12 Oct 2026 20:11:01 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 12 Oct 2026 20:11:01 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Mon, 12 Oct 2026 20:11:55 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 12 Oct 2026 20:11:55 GMT
VOLUME [/var/lib/mysql]
# Mon, 12 Oct 2026 20:11:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 12 Oct 2026 20:11:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 20:11:55 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 12 Oct 2026 20:11:55 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b1be88c1a95445e6111ba7b3bceed48f958b8f6eb2ff1c4b27f45fa7b0f45de9`  
		Last Modified: Mon, 12 Oct 2026 19:10:36 GMT  
		Size: 45.8 MB (45800687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0399a56949deaaf20c00b16050b77d7a63225e27be68c9ca385d0c1c880f0135`  
		Last Modified: Mon, 12 Oct 2026 20:12:31 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84bf64211785ff7a6c43b8e6a5a3709415938d2513f9e701416d4bcf62d531df`  
		Last Modified: Mon, 12 Oct 2026 20:12:32 GMT  
		Size: 737.5 KB (737522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7195dce5dfb48948082c8e356a5d15249f243f19f36574fcf0bb8502f0658d81`  
		Last Modified: Mon, 12 Oct 2026 20:12:32 GMT  
		Size: 5.8 MB (5809858 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67e4017b162aed8a9d3ab7530517eb44f352124cc95aa4f88c5562d014f88cad`  
		Last Modified: Mon, 12 Oct 2026 20:12:32 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d95985f6fb94910d133f5e8f92db9883ef3c4c586eb90644791a690f4bc0dc7b`  
		Last Modified: Mon, 12 Oct 2026 20:12:33 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b429d7e53711dbddcc2bf8fa1f38831ad39777485d80ab7f83050b744413ade6`  
		Last Modified: Mon, 12 Oct 2026 20:12:35 GMT  
		Size: 57.4 MB (57414294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ad383cc3314a302763fcfef893db025ea66afcdede0d41fd7410f67781a67a6`  
		Last Modified: Mon, 12 Oct 2026 20:12:33 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16c0cf53a295c474087f466e675f33b6dc1a049673660cb94c19d428f9ee3176`  
		Last Modified: Mon, 12 Oct 2026 20:12:37 GMT  
		Size: 158.2 MB (158221965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae7f2c27109c9b7a53338cc3c94f11c49cbd91d2499a4b427bbfe50c54b37887`  
		Last Modified: Mon, 12 Oct 2026 20:12:34 GMT  
		Size: 5.2 KB (5221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:latest` - unknown; unknown

```console
$ docker pull mysql@sha256:6abc841a93694bee7d74bb63fd917c9ef474a4569323034acb56e088abf1eca4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17451535 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15145fbf881023c0d02c304531029c80d34d1f81e9ada40099d7996a5d568389`

```dockerfile
```

-	Layers:
	-	`sha256:73883f5df73fbf47cd0e0b6694a110bff7a55e9e9ef0c51d2dca97848e31255a`  
		Last Modified: Mon, 12 Oct 2026 20:12:32 GMT  
		Size: 17.4 MB (17415896 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cab566f9ae27d529a7a07ea82e9029f7afc2542e3f873f26962cf83b3f53d157`  
		Last Modified: Mon, 12 Oct 2026 20:12:32 GMT  
		Size: 35.6 KB (35639 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:lts`

```console
$ docker pull mysql@sha256:c7cb87a9822f499375287930cbff71d6d3b201e346b45108b1115b435ee2df13
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:lts` - linux; amd64

```console
$ docker pull mysql@sha256:1257504944c538da4aedd8ab06f0e280c8716b72ba16ac38fe134b9eb8145168
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.2 MB (270194646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6bb403c4b33f1f864294f176122f4e66a26d78b55df947f640bd7deb50d1718`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 12 Oct 2026 19:11:06 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 12 Oct 2026 19:11:06 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 20:10:37 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 12 Oct 2026 20:10:39 GMT
ENV GOSU_VERSION=1.19
# Mon, 12 Oct 2026 20:10:39 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 12 Oct 2026 20:11:11 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 12 Oct 2026 20:11:12 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 12 Oct 2026 20:11:12 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 12 Oct 2026 20:11:12 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Mon, 12 Oct 2026 20:11:12 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 12 Oct 2026 20:11:48 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 12 Oct 2026 20:11:48 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 12 Oct 2026 20:11:48 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 12 Oct 2026 20:12:33 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 12 Oct 2026 20:12:33 GMT
VOLUME [/var/lib/mysql]
# Mon, 12 Oct 2026 20:12:33 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 12 Oct 2026 20:12:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 20:12:33 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 12 Oct 2026 20:12:33 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:e896da32f635ced58051c434f6d70ebdf95efaa199d796f16689ad6a7393d30e`  
		Last Modified: Mon, 12 Oct 2026 19:11:17 GMT  
		Size: 47.2 MB (47247118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f20c7c51d408a5c40b05a6179b3008a493011301c589d55f9246ec7374578d8b`  
		Last Modified: Mon, 12 Oct 2026 20:13:05 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f82aea613929a80a104cdd3134bd06e93413a869d64bef69ff5d3b506766c4c2`  
		Last Modified: Mon, 12 Oct 2026 20:13:05 GMT  
		Size: 783.6 KB (783560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7b7f05290697169ad3e65e61d7669802dab4069ee6c3e7ec9bdc6b1dc5bc322`  
		Last Modified: Mon, 12 Oct 2026 20:13:05 GMT  
		Size: 6.2 MB (6192274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf3db0cf97f0793ab81934476935abdd2222056b83a8faa444f7fe3ac56727d4`  
		Last Modified: Mon, 12 Oct 2026 20:13:05 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ca850f28ac0cdf972fb9f2f336a209f3e8cc2cd45ed0e9c09a4533f4e2f8a92`  
		Last Modified: Mon, 12 Oct 2026 20:13:06 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9dcf293498a1b7632d7a29aa017ee35563dbfc3b8c874f92f2bfc5fd2ebb3099`  
		Last Modified: Mon, 12 Oct 2026 20:13:08 GMT  
		Size: 57.0 MB (57037927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8acbb507209a8d6bfa994710bfd8a68dfc67f4337bba411b5d030cb5feb564bc`  
		Last Modified: Mon, 12 Oct 2026 20:13:06 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c72467e5a2d3c62d11f18424fa1d7ecb29412d6149827eac34d85b37ae1b0786`  
		Last Modified: Mon, 12 Oct 2026 20:13:10 GMT  
		Size: 158.9 MB (158924399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06c380e51dc807542a232cd4c40bd083a022fa978c390eb3c1875c9c80607b8c`  
		Last Modified: Mon, 12 Oct 2026 20:13:07 GMT  
		Size: 5.2 KB (5223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:lts` - unknown; unknown

```console
$ docker pull mysql@sha256:c66a27273a78f17f12ad575989dfdb3fa71b9aab64f6803e348f632657575b8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3a986ee2a8e79e15a84325280feb122e0ed87f03b5d4af2e42398a07d428817`

```dockerfile
```

-	Layers:
	-	`sha256:069b18e5d9a4ea8ef283f4bd4210ddd2c2440fd6a94a204e6ee2bf809a6ae039`  
		Last Modified: Mon, 12 Oct 2026 20:13:05 GMT  
		Size: 16.8 MB (16799199 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:69872419d0f4b85c7eca8ceb2dcc23a351295084ed4e0e2e7f406cc5e64c7941`  
		Last Modified: Mon, 12 Oct 2026 20:13:05 GMT  
		Size: 34.2 KB (34208 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:lts` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:7de8b0deefdbe4cf54d9784436bc02947317b2bd2b1d292601e9e6175755c910
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.7 MB (266653825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7502c0fe172dff9a28d0c292172229276eb1cb714ec565202527073f298504a3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 12 Oct 2026 19:10:25 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 12 Oct 2026 19:10:25 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 20:10:13 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 12 Oct 2026 20:10:14 GMT
ENV GOSU_VERSION=1.19
# Mon, 12 Oct 2026 20:10:14 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 12 Oct 2026 20:10:54 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 12 Oct 2026 20:10:55 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 12 Oct 2026 20:10:55 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 12 Oct 2026 20:10:55 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Mon, 12 Oct 2026 20:10:55 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 12 Oct 2026 20:11:38 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 12 Oct 2026 20:11:38 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 12 Oct 2026 20:11:38 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 12 Oct 2026 20:12:32 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 12 Oct 2026 20:12:32 GMT
VOLUME [/var/lib/mysql]
# Mon, 12 Oct 2026 20:12:33 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 12 Oct 2026 20:12:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 20:12:33 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 12 Oct 2026 20:12:33 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b1be88c1a95445e6111ba7b3bceed48f958b8f6eb2ff1c4b27f45fa7b0f45de9`  
		Last Modified: Mon, 12 Oct 2026 19:10:36 GMT  
		Size: 45.8 MB (45800687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:010f17da4d38fc3f15a7198fd534d127b818de2ac867251eaa4ae55f9b2c809b`  
		Last Modified: Mon, 12 Oct 2026 20:13:09 GMT  
		Size: 886.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:850ca42433a926b20884d341aab4e74dd6986f5fdc5652b93bfacb550b30933c`  
		Last Modified: Mon, 12 Oct 2026 20:13:09 GMT  
		Size: 737.5 KB (737519 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc28a85713b48bc92aae40973b6d1c841006de2d05648e119eae62a315220e6e`  
		Last Modified: Mon, 12 Oct 2026 20:13:09 GMT  
		Size: 5.8 MB (5809849 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:084574594fc331b203b7fd7fc6caabcd5bea34aae78637118407c0c0ad015894`  
		Last Modified: Mon, 12 Oct 2026 20:13:09 GMT  
		Size: 2.6 KB (2606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7e9d97ce246e047559544798cba1ab38e75246148693dae82eecd2f5877f516`  
		Last Modified: Mon, 12 Oct 2026 20:13:10 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74d7d50c1939308247ad9c26947c9216526e87fc89a21288c4c84abcd369620b`  
		Last Modified: Mon, 12 Oct 2026 20:13:12 GMT  
		Size: 57.1 MB (57098100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f54f075afc92041359d25ee9fb9a4633c20b55b8957fa594442d847afff1a1a3`  
		Last Modified: Mon, 12 Oct 2026 20:13:11 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48ed50a8605563989d7ed9d06c5ba70c9ffe0d71a7c113e88a682dfb3bfa47a2`  
		Last Modified: Mon, 12 Oct 2026 20:13:14 GMT  
		Size: 157.2 MB (157198303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2da8ae9c82090ada4f88074024fa34ac2f4c02229f962e25f098804f85b5019f`  
		Last Modified: Mon, 12 Oct 2026 20:13:12 GMT  
		Size: 5.2 KB (5222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:lts` - unknown; unknown

```console
$ docker pull mysql@sha256:0c6d386a3836d37e15c61010c590ff87ec13c7672c75cfcdea95a4e98400f457
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16832148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:225c3117a6d207f528a31442e1afed2e08ffa008862144355112a1a86aa58b0f`

```dockerfile
```

-	Layers:
	-	`sha256:d4fc2759fe49b126688007fa943b816f3d2de555682a38998afb5a8763564183`  
		Last Modified: Mon, 12 Oct 2026 20:13:10 GMT  
		Size: 16.8 MB (16797635 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9ec9a658cbc1c34c0ed627a1d5e68db8ef2000afaa8fb15af070719bbde6004f`  
		Last Modified: Mon, 12 Oct 2026 20:13:09 GMT  
		Size: 34.5 KB (34513 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:lts-oracle`

```console
$ docker pull mysql@sha256:c7cb87a9822f499375287930cbff71d6d3b201e346b45108b1115b435ee2df13
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:lts-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:1257504944c538da4aedd8ab06f0e280c8716b72ba16ac38fe134b9eb8145168
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.2 MB (270194646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6bb403c4b33f1f864294f176122f4e66a26d78b55df947f640bd7deb50d1718`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 12 Oct 2026 19:11:06 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 12 Oct 2026 19:11:06 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 20:10:37 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 12 Oct 2026 20:10:39 GMT
ENV GOSU_VERSION=1.19
# Mon, 12 Oct 2026 20:10:39 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 12 Oct 2026 20:11:11 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 12 Oct 2026 20:11:12 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 12 Oct 2026 20:11:12 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 12 Oct 2026 20:11:12 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Mon, 12 Oct 2026 20:11:12 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 12 Oct 2026 20:11:48 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 12 Oct 2026 20:11:48 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 12 Oct 2026 20:11:48 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 12 Oct 2026 20:12:33 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 12 Oct 2026 20:12:33 GMT
VOLUME [/var/lib/mysql]
# Mon, 12 Oct 2026 20:12:33 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 12 Oct 2026 20:12:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 20:12:33 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 12 Oct 2026 20:12:33 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:e896da32f635ced58051c434f6d70ebdf95efaa199d796f16689ad6a7393d30e`  
		Last Modified: Mon, 12 Oct 2026 19:11:17 GMT  
		Size: 47.2 MB (47247118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f20c7c51d408a5c40b05a6179b3008a493011301c589d55f9246ec7374578d8b`  
		Last Modified: Mon, 12 Oct 2026 20:13:05 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f82aea613929a80a104cdd3134bd06e93413a869d64bef69ff5d3b506766c4c2`  
		Last Modified: Mon, 12 Oct 2026 20:13:05 GMT  
		Size: 783.6 KB (783560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7b7f05290697169ad3e65e61d7669802dab4069ee6c3e7ec9bdc6b1dc5bc322`  
		Last Modified: Mon, 12 Oct 2026 20:13:05 GMT  
		Size: 6.2 MB (6192274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf3db0cf97f0793ab81934476935abdd2222056b83a8faa444f7fe3ac56727d4`  
		Last Modified: Mon, 12 Oct 2026 20:13:05 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ca850f28ac0cdf972fb9f2f336a209f3e8cc2cd45ed0e9c09a4533f4e2f8a92`  
		Last Modified: Mon, 12 Oct 2026 20:13:06 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9dcf293498a1b7632d7a29aa017ee35563dbfc3b8c874f92f2bfc5fd2ebb3099`  
		Last Modified: Mon, 12 Oct 2026 20:13:08 GMT  
		Size: 57.0 MB (57037927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8acbb507209a8d6bfa994710bfd8a68dfc67f4337bba411b5d030cb5feb564bc`  
		Last Modified: Mon, 12 Oct 2026 20:13:06 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c72467e5a2d3c62d11f18424fa1d7ecb29412d6149827eac34d85b37ae1b0786`  
		Last Modified: Mon, 12 Oct 2026 20:13:10 GMT  
		Size: 158.9 MB (158924399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06c380e51dc807542a232cd4c40bd083a022fa978c390eb3c1875c9c80607b8c`  
		Last Modified: Mon, 12 Oct 2026 20:13:07 GMT  
		Size: 5.2 KB (5223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:lts-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:c66a27273a78f17f12ad575989dfdb3fa71b9aab64f6803e348f632657575b8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3a986ee2a8e79e15a84325280feb122e0ed87f03b5d4af2e42398a07d428817`

```dockerfile
```

-	Layers:
	-	`sha256:069b18e5d9a4ea8ef283f4bd4210ddd2c2440fd6a94a204e6ee2bf809a6ae039`  
		Last Modified: Mon, 12 Oct 2026 20:13:05 GMT  
		Size: 16.8 MB (16799199 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:69872419d0f4b85c7eca8ceb2dcc23a351295084ed4e0e2e7f406cc5e64c7941`  
		Last Modified: Mon, 12 Oct 2026 20:13:05 GMT  
		Size: 34.2 KB (34208 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:lts-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:7de8b0deefdbe4cf54d9784436bc02947317b2bd2b1d292601e9e6175755c910
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.7 MB (266653825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7502c0fe172dff9a28d0c292172229276eb1cb714ec565202527073f298504a3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 12 Oct 2026 19:10:25 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 12 Oct 2026 19:10:25 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 20:10:13 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 12 Oct 2026 20:10:14 GMT
ENV GOSU_VERSION=1.19
# Mon, 12 Oct 2026 20:10:14 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 12 Oct 2026 20:10:54 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 12 Oct 2026 20:10:55 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 12 Oct 2026 20:10:55 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 12 Oct 2026 20:10:55 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Mon, 12 Oct 2026 20:10:55 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 12 Oct 2026 20:11:38 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 12 Oct 2026 20:11:38 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 12 Oct 2026 20:11:38 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 12 Oct 2026 20:12:32 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 12 Oct 2026 20:12:32 GMT
VOLUME [/var/lib/mysql]
# Mon, 12 Oct 2026 20:12:33 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 12 Oct 2026 20:12:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 20:12:33 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 12 Oct 2026 20:12:33 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b1be88c1a95445e6111ba7b3bceed48f958b8f6eb2ff1c4b27f45fa7b0f45de9`  
		Last Modified: Mon, 12 Oct 2026 19:10:36 GMT  
		Size: 45.8 MB (45800687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:010f17da4d38fc3f15a7198fd534d127b818de2ac867251eaa4ae55f9b2c809b`  
		Last Modified: Mon, 12 Oct 2026 20:13:09 GMT  
		Size: 886.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:850ca42433a926b20884d341aab4e74dd6986f5fdc5652b93bfacb550b30933c`  
		Last Modified: Mon, 12 Oct 2026 20:13:09 GMT  
		Size: 737.5 KB (737519 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc28a85713b48bc92aae40973b6d1c841006de2d05648e119eae62a315220e6e`  
		Last Modified: Mon, 12 Oct 2026 20:13:09 GMT  
		Size: 5.8 MB (5809849 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:084574594fc331b203b7fd7fc6caabcd5bea34aae78637118407c0c0ad015894`  
		Last Modified: Mon, 12 Oct 2026 20:13:09 GMT  
		Size: 2.6 KB (2606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7e9d97ce246e047559544798cba1ab38e75246148693dae82eecd2f5877f516`  
		Last Modified: Mon, 12 Oct 2026 20:13:10 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74d7d50c1939308247ad9c26947c9216526e87fc89a21288c4c84abcd369620b`  
		Last Modified: Mon, 12 Oct 2026 20:13:12 GMT  
		Size: 57.1 MB (57098100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f54f075afc92041359d25ee9fb9a4633c20b55b8957fa594442d847afff1a1a3`  
		Last Modified: Mon, 12 Oct 2026 20:13:11 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48ed50a8605563989d7ed9d06c5ba70c9ffe0d71a7c113e88a682dfb3bfa47a2`  
		Last Modified: Mon, 12 Oct 2026 20:13:14 GMT  
		Size: 157.2 MB (157198303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2da8ae9c82090ada4f88074024fa34ac2f4c02229f962e25f098804f85b5019f`  
		Last Modified: Mon, 12 Oct 2026 20:13:12 GMT  
		Size: 5.2 KB (5222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:lts-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:0c6d386a3836d37e15c61010c590ff87ec13c7672c75cfcdea95a4e98400f457
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16832148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:225c3117a6d207f528a31442e1afed2e08ffa008862144355112a1a86aa58b0f`

```dockerfile
```

-	Layers:
	-	`sha256:d4fc2759fe49b126688007fa943b816f3d2de555682a38998afb5a8763564183`  
		Last Modified: Mon, 12 Oct 2026 20:13:10 GMT  
		Size: 16.8 MB (16797635 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9ec9a658cbc1c34c0ed627a1d5e68db8ef2000afaa8fb15af070719bbde6004f`  
		Last Modified: Mon, 12 Oct 2026 20:13:09 GMT  
		Size: 34.5 KB (34513 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:lts-oraclelinux9`

```console
$ docker pull mysql@sha256:c7cb87a9822f499375287930cbff71d6d3b201e346b45108b1115b435ee2df13
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:lts-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:1257504944c538da4aedd8ab06f0e280c8716b72ba16ac38fe134b9eb8145168
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.2 MB (270194646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6bb403c4b33f1f864294f176122f4e66a26d78b55df947f640bd7deb50d1718`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 12 Oct 2026 19:11:06 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 12 Oct 2026 19:11:06 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 20:10:37 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 12 Oct 2026 20:10:39 GMT
ENV GOSU_VERSION=1.19
# Mon, 12 Oct 2026 20:10:39 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 12 Oct 2026 20:11:11 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 12 Oct 2026 20:11:12 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 12 Oct 2026 20:11:12 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 12 Oct 2026 20:11:12 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Mon, 12 Oct 2026 20:11:12 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 12 Oct 2026 20:11:48 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 12 Oct 2026 20:11:48 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 12 Oct 2026 20:11:48 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 12 Oct 2026 20:12:33 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 12 Oct 2026 20:12:33 GMT
VOLUME [/var/lib/mysql]
# Mon, 12 Oct 2026 20:12:33 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 12 Oct 2026 20:12:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 20:12:33 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 12 Oct 2026 20:12:33 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:e896da32f635ced58051c434f6d70ebdf95efaa199d796f16689ad6a7393d30e`  
		Last Modified: Mon, 12 Oct 2026 19:11:17 GMT  
		Size: 47.2 MB (47247118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f20c7c51d408a5c40b05a6179b3008a493011301c589d55f9246ec7374578d8b`  
		Last Modified: Mon, 12 Oct 2026 20:13:05 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f82aea613929a80a104cdd3134bd06e93413a869d64bef69ff5d3b506766c4c2`  
		Last Modified: Mon, 12 Oct 2026 20:13:05 GMT  
		Size: 783.6 KB (783560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7b7f05290697169ad3e65e61d7669802dab4069ee6c3e7ec9bdc6b1dc5bc322`  
		Last Modified: Mon, 12 Oct 2026 20:13:05 GMT  
		Size: 6.2 MB (6192274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf3db0cf97f0793ab81934476935abdd2222056b83a8faa444f7fe3ac56727d4`  
		Last Modified: Mon, 12 Oct 2026 20:13:05 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ca850f28ac0cdf972fb9f2f336a209f3e8cc2cd45ed0e9c09a4533f4e2f8a92`  
		Last Modified: Mon, 12 Oct 2026 20:13:06 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9dcf293498a1b7632d7a29aa017ee35563dbfc3b8c874f92f2bfc5fd2ebb3099`  
		Last Modified: Mon, 12 Oct 2026 20:13:08 GMT  
		Size: 57.0 MB (57037927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8acbb507209a8d6bfa994710bfd8a68dfc67f4337bba411b5d030cb5feb564bc`  
		Last Modified: Mon, 12 Oct 2026 20:13:06 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c72467e5a2d3c62d11f18424fa1d7ecb29412d6149827eac34d85b37ae1b0786`  
		Last Modified: Mon, 12 Oct 2026 20:13:10 GMT  
		Size: 158.9 MB (158924399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06c380e51dc807542a232cd4c40bd083a022fa978c390eb3c1875c9c80607b8c`  
		Last Modified: Mon, 12 Oct 2026 20:13:07 GMT  
		Size: 5.2 KB (5223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:lts-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:c66a27273a78f17f12ad575989dfdb3fa71b9aab64f6803e348f632657575b8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3a986ee2a8e79e15a84325280feb122e0ed87f03b5d4af2e42398a07d428817`

```dockerfile
```

-	Layers:
	-	`sha256:069b18e5d9a4ea8ef283f4bd4210ddd2c2440fd6a94a204e6ee2bf809a6ae039`  
		Last Modified: Mon, 12 Oct 2026 20:13:05 GMT  
		Size: 16.8 MB (16799199 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:69872419d0f4b85c7eca8ceb2dcc23a351295084ed4e0e2e7f406cc5e64c7941`  
		Last Modified: Mon, 12 Oct 2026 20:13:05 GMT  
		Size: 34.2 KB (34208 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:lts-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:7de8b0deefdbe4cf54d9784436bc02947317b2bd2b1d292601e9e6175755c910
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.7 MB (266653825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7502c0fe172dff9a28d0c292172229276eb1cb714ec565202527073f298504a3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 12 Oct 2026 19:10:25 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 12 Oct 2026 19:10:25 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 20:10:13 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 12 Oct 2026 20:10:14 GMT
ENV GOSU_VERSION=1.19
# Mon, 12 Oct 2026 20:10:14 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 12 Oct 2026 20:10:54 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 12 Oct 2026 20:10:55 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 12 Oct 2026 20:10:55 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 12 Oct 2026 20:10:55 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Mon, 12 Oct 2026 20:10:55 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 12 Oct 2026 20:11:38 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 12 Oct 2026 20:11:38 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 12 Oct 2026 20:11:38 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 12 Oct 2026 20:12:32 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 12 Oct 2026 20:12:32 GMT
VOLUME [/var/lib/mysql]
# Mon, 12 Oct 2026 20:12:33 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 12 Oct 2026 20:12:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 20:12:33 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 12 Oct 2026 20:12:33 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b1be88c1a95445e6111ba7b3bceed48f958b8f6eb2ff1c4b27f45fa7b0f45de9`  
		Last Modified: Mon, 12 Oct 2026 19:10:36 GMT  
		Size: 45.8 MB (45800687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:010f17da4d38fc3f15a7198fd534d127b818de2ac867251eaa4ae55f9b2c809b`  
		Last Modified: Mon, 12 Oct 2026 20:13:09 GMT  
		Size: 886.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:850ca42433a926b20884d341aab4e74dd6986f5fdc5652b93bfacb550b30933c`  
		Last Modified: Mon, 12 Oct 2026 20:13:09 GMT  
		Size: 737.5 KB (737519 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc28a85713b48bc92aae40973b6d1c841006de2d05648e119eae62a315220e6e`  
		Last Modified: Mon, 12 Oct 2026 20:13:09 GMT  
		Size: 5.8 MB (5809849 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:084574594fc331b203b7fd7fc6caabcd5bea34aae78637118407c0c0ad015894`  
		Last Modified: Mon, 12 Oct 2026 20:13:09 GMT  
		Size: 2.6 KB (2606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7e9d97ce246e047559544798cba1ab38e75246148693dae82eecd2f5877f516`  
		Last Modified: Mon, 12 Oct 2026 20:13:10 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74d7d50c1939308247ad9c26947c9216526e87fc89a21288c4c84abcd369620b`  
		Last Modified: Mon, 12 Oct 2026 20:13:12 GMT  
		Size: 57.1 MB (57098100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f54f075afc92041359d25ee9fb9a4633c20b55b8957fa594442d847afff1a1a3`  
		Last Modified: Mon, 12 Oct 2026 20:13:11 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48ed50a8605563989d7ed9d06c5ba70c9ffe0d71a7c113e88a682dfb3bfa47a2`  
		Last Modified: Mon, 12 Oct 2026 20:13:14 GMT  
		Size: 157.2 MB (157198303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2da8ae9c82090ada4f88074024fa34ac2f4c02229f962e25f098804f85b5019f`  
		Last Modified: Mon, 12 Oct 2026 20:13:12 GMT  
		Size: 5.2 KB (5222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:lts-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:0c6d386a3836d37e15c61010c590ff87ec13c7672c75cfcdea95a4e98400f457
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16832148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:225c3117a6d207f528a31442e1afed2e08ffa008862144355112a1a86aa58b0f`

```dockerfile
```

-	Layers:
	-	`sha256:d4fc2759fe49b126688007fa943b816f3d2de555682a38998afb5a8763564183`  
		Last Modified: Mon, 12 Oct 2026 20:13:10 GMT  
		Size: 16.8 MB (16797635 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9ec9a658cbc1c34c0ed627a1d5e68db8ef2000afaa8fb15af070719bbde6004f`  
		Last Modified: Mon, 12 Oct 2026 20:13:09 GMT  
		Size: 34.5 KB (34513 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:oracle`

```console
$ docker pull mysql@sha256:893418c8a7a34c60d2d961cc30ef136095da141478562ed2101ae3f5faba9c3f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:oracle` - linux; amd64

```console
$ docker pull mysql@sha256:9bd5e8db9c913e82eefd16b556ca3e4e12ef25ff1b8507b73d04cf754b6b8f47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.6 MB (271629275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b130421b8c710f5c18f3bcce8d04d710616d55d747dcba1cb78886d4d5fc698`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 12 Oct 2026 19:11:06 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 12 Oct 2026 19:11:06 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 20:09:50 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 12 Oct 2026 20:09:52 GMT
ENV GOSU_VERSION=1.19
# Mon, 12 Oct 2026 20:09:52 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 12 Oct 2026 20:10:24 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 12 Oct 2026 20:10:25 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 12 Oct 2026 20:10:25 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 12 Oct 2026 20:10:25 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Mon, 12 Oct 2026 20:10:25 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 12 Oct 2026 20:11:00 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 12 Oct 2026 20:11:00 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 12 Oct 2026 20:11:00 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Mon, 12 Oct 2026 20:11:44 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 12 Oct 2026 20:11:44 GMT
VOLUME [/var/lib/mysql]
# Mon, 12 Oct 2026 20:11:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 12 Oct 2026 20:11:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 20:11:44 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 12 Oct 2026 20:11:44 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:e896da32f635ced58051c434f6d70ebdf95efaa199d796f16689ad6a7393d30e`  
		Last Modified: Mon, 12 Oct 2026 19:11:17 GMT  
		Size: 47.2 MB (47247118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:029a2ef99eb4bd84989e14407a162e85dd43c39f152800636b7f2f34e08e1d35`  
		Last Modified: Mon, 12 Oct 2026 20:12:15 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a798338f8ea05e3f1ee9fcbc5cf7fa005292ea5a19e57cb725d2f4b560f1e78e`  
		Last Modified: Mon, 12 Oct 2026 20:12:15 GMT  
		Size: 783.6 KB (783559 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d41b77484029035b0416172a7a516135161db36a5c4089fcbcb5450789ea5fb8`  
		Last Modified: Mon, 12 Oct 2026 20:12:15 GMT  
		Size: 6.2 MB (6192268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d057682167d504e74bea3542dbba561f97cd19d60d931145d6b4cfcc50074d4f`  
		Last Modified: Mon, 12 Oct 2026 20:12:15 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecb59e1f4a8f87cb477397c1d7876cfb480f75a147dba1dfd6df5bb6de9a8904`  
		Last Modified: Mon, 12 Oct 2026 20:12:16 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c233331fdce73aacd8a8696a5476a8a0ca4a5ad291e71142c590d3f0c0f0e5d7`  
		Last Modified: Mon, 12 Oct 2026 20:12:18 GMT  
		Size: 57.4 MB (57438613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a710d5def08112e5495c86fc8ab9cd14af67e80e7f14350e22d209bed54eff7`  
		Last Modified: Mon, 12 Oct 2026 20:12:17 GMT  
		Size: 326.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6526c3b0b71a698d53ca661298c1bd3957fcbebffd234caefec7cd008074c03`  
		Last Modified: Mon, 12 Oct 2026 20:12:20 GMT  
		Size: 160.0 MB (159958334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:514ea420f997205256cd21982069f6b15b59e32a5e172ce1e08f8aeb802201a8`  
		Last Modified: Mon, 12 Oct 2026 20:12:18 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:6b1cb3787a01f23b2e9783d50f35c7c382799725630e22b5010820c884712be2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17452721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08175b2f44862eeb54a3be1437b232b1eb8aac57b359d74b8368fa69a579b725`

```dockerfile
```

-	Layers:
	-	`sha256:2659fa5447a2f0a95876099600d3ba81d2b2c72cb483f3255e0b20da0c05eab4`  
		Last Modified: Mon, 12 Oct 2026 20:12:16 GMT  
		Size: 17.4 MB (17417423 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9e6faf632f7d39b2fc61fe73a05a2c7a082e8369ae5ff9023d74e7f852fb1355`  
		Last Modified: Mon, 12 Oct 2026 20:12:15 GMT  
		Size: 35.3 KB (35298 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:46911fe021d2e75f6724959921599f5cdfd9a3758e4b171ba28034e174e0eb4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.0 MB (267993703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08f6250f9f8f653d8afb142b136a6b1d2177827276e5fd74974f3c3c5f190522`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 12 Oct 2026 19:10:25 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 12 Oct 2026 19:10:25 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 20:09:37 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 12 Oct 2026 20:09:39 GMT
ENV GOSU_VERSION=1.19
# Mon, 12 Oct 2026 20:09:39 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 12 Oct 2026 20:10:18 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 12 Oct 2026 20:10:19 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 12 Oct 2026 20:10:19 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 12 Oct 2026 20:10:19 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Mon, 12 Oct 2026 20:10:19 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 12 Oct 2026 20:11:01 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 12 Oct 2026 20:11:01 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 12 Oct 2026 20:11:01 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Mon, 12 Oct 2026 20:11:55 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 12 Oct 2026 20:11:55 GMT
VOLUME [/var/lib/mysql]
# Mon, 12 Oct 2026 20:11:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 12 Oct 2026 20:11:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 20:11:55 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 12 Oct 2026 20:11:55 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b1be88c1a95445e6111ba7b3bceed48f958b8f6eb2ff1c4b27f45fa7b0f45de9`  
		Last Modified: Mon, 12 Oct 2026 19:10:36 GMT  
		Size: 45.8 MB (45800687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0399a56949deaaf20c00b16050b77d7a63225e27be68c9ca385d0c1c880f0135`  
		Last Modified: Mon, 12 Oct 2026 20:12:31 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84bf64211785ff7a6c43b8e6a5a3709415938d2513f9e701416d4bcf62d531df`  
		Last Modified: Mon, 12 Oct 2026 20:12:32 GMT  
		Size: 737.5 KB (737522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7195dce5dfb48948082c8e356a5d15249f243f19f36574fcf0bb8502f0658d81`  
		Last Modified: Mon, 12 Oct 2026 20:12:32 GMT  
		Size: 5.8 MB (5809858 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67e4017b162aed8a9d3ab7530517eb44f352124cc95aa4f88c5562d014f88cad`  
		Last Modified: Mon, 12 Oct 2026 20:12:32 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d95985f6fb94910d133f5e8f92db9883ef3c4c586eb90644791a690f4bc0dc7b`  
		Last Modified: Mon, 12 Oct 2026 20:12:33 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b429d7e53711dbddcc2bf8fa1f38831ad39777485d80ab7f83050b744413ade6`  
		Last Modified: Mon, 12 Oct 2026 20:12:35 GMT  
		Size: 57.4 MB (57414294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ad383cc3314a302763fcfef893db025ea66afcdede0d41fd7410f67781a67a6`  
		Last Modified: Mon, 12 Oct 2026 20:12:33 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16c0cf53a295c474087f466e675f33b6dc1a049673660cb94c19d428f9ee3176`  
		Last Modified: Mon, 12 Oct 2026 20:12:37 GMT  
		Size: 158.2 MB (158221965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae7f2c27109c9b7a53338cc3c94f11c49cbd91d2499a4b427bbfe50c54b37887`  
		Last Modified: Mon, 12 Oct 2026 20:12:34 GMT  
		Size: 5.2 KB (5221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:6abc841a93694bee7d74bb63fd917c9ef474a4569323034acb56e088abf1eca4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17451535 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15145fbf881023c0d02c304531029c80d34d1f81e9ada40099d7996a5d568389`

```dockerfile
```

-	Layers:
	-	`sha256:73883f5df73fbf47cd0e0b6694a110bff7a55e9e9ef0c51d2dca97848e31255a`  
		Last Modified: Mon, 12 Oct 2026 20:12:32 GMT  
		Size: 17.4 MB (17415896 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cab566f9ae27d529a7a07ea82e9029f7afc2542e3f873f26962cf83b3f53d157`  
		Last Modified: Mon, 12 Oct 2026 20:12:32 GMT  
		Size: 35.6 KB (35639 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:oraclelinux9`

```console
$ docker pull mysql@sha256:893418c8a7a34c60d2d961cc30ef136095da141478562ed2101ae3f5faba9c3f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:9bd5e8db9c913e82eefd16b556ca3e4e12ef25ff1b8507b73d04cf754b6b8f47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.6 MB (271629275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b130421b8c710f5c18f3bcce8d04d710616d55d747dcba1cb78886d4d5fc698`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 12 Oct 2026 19:11:06 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 12 Oct 2026 19:11:06 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 20:09:50 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 12 Oct 2026 20:09:52 GMT
ENV GOSU_VERSION=1.19
# Mon, 12 Oct 2026 20:09:52 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 12 Oct 2026 20:10:24 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 12 Oct 2026 20:10:25 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 12 Oct 2026 20:10:25 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 12 Oct 2026 20:10:25 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Mon, 12 Oct 2026 20:10:25 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 12 Oct 2026 20:11:00 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 12 Oct 2026 20:11:00 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 12 Oct 2026 20:11:00 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Mon, 12 Oct 2026 20:11:44 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 12 Oct 2026 20:11:44 GMT
VOLUME [/var/lib/mysql]
# Mon, 12 Oct 2026 20:11:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 12 Oct 2026 20:11:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 20:11:44 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 12 Oct 2026 20:11:44 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:e896da32f635ced58051c434f6d70ebdf95efaa199d796f16689ad6a7393d30e`  
		Last Modified: Mon, 12 Oct 2026 19:11:17 GMT  
		Size: 47.2 MB (47247118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:029a2ef99eb4bd84989e14407a162e85dd43c39f152800636b7f2f34e08e1d35`  
		Last Modified: Mon, 12 Oct 2026 20:12:15 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a798338f8ea05e3f1ee9fcbc5cf7fa005292ea5a19e57cb725d2f4b560f1e78e`  
		Last Modified: Mon, 12 Oct 2026 20:12:15 GMT  
		Size: 783.6 KB (783559 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d41b77484029035b0416172a7a516135161db36a5c4089fcbcb5450789ea5fb8`  
		Last Modified: Mon, 12 Oct 2026 20:12:15 GMT  
		Size: 6.2 MB (6192268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d057682167d504e74bea3542dbba561f97cd19d60d931145d6b4cfcc50074d4f`  
		Last Modified: Mon, 12 Oct 2026 20:12:15 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecb59e1f4a8f87cb477397c1d7876cfb480f75a147dba1dfd6df5bb6de9a8904`  
		Last Modified: Mon, 12 Oct 2026 20:12:16 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c233331fdce73aacd8a8696a5476a8a0ca4a5ad291e71142c590d3f0c0f0e5d7`  
		Last Modified: Mon, 12 Oct 2026 20:12:18 GMT  
		Size: 57.4 MB (57438613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a710d5def08112e5495c86fc8ab9cd14af67e80e7f14350e22d209bed54eff7`  
		Last Modified: Mon, 12 Oct 2026 20:12:17 GMT  
		Size: 326.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6526c3b0b71a698d53ca661298c1bd3957fcbebffd234caefec7cd008074c03`  
		Last Modified: Mon, 12 Oct 2026 20:12:20 GMT  
		Size: 160.0 MB (159958334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:514ea420f997205256cd21982069f6b15b59e32a5e172ce1e08f8aeb802201a8`  
		Last Modified: Mon, 12 Oct 2026 20:12:18 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:6b1cb3787a01f23b2e9783d50f35c7c382799725630e22b5010820c884712be2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17452721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08175b2f44862eeb54a3be1437b232b1eb8aac57b359d74b8368fa69a579b725`

```dockerfile
```

-	Layers:
	-	`sha256:2659fa5447a2f0a95876099600d3ba81d2b2c72cb483f3255e0b20da0c05eab4`  
		Last Modified: Mon, 12 Oct 2026 20:12:16 GMT  
		Size: 17.4 MB (17417423 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9e6faf632f7d39b2fc61fe73a05a2c7a082e8369ae5ff9023d74e7f852fb1355`  
		Last Modified: Mon, 12 Oct 2026 20:12:15 GMT  
		Size: 35.3 KB (35298 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:46911fe021d2e75f6724959921599f5cdfd9a3758e4b171ba28034e174e0eb4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.0 MB (267993703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08f6250f9f8f653d8afb142b136a6b1d2177827276e5fd74974f3c3c5f190522`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 12 Oct 2026 19:10:25 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 12 Oct 2026 19:10:25 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 20:09:37 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 12 Oct 2026 20:09:39 GMT
ENV GOSU_VERSION=1.19
# Mon, 12 Oct 2026 20:09:39 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 12 Oct 2026 20:10:18 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 12 Oct 2026 20:10:19 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 12 Oct 2026 20:10:19 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 12 Oct 2026 20:10:19 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Mon, 12 Oct 2026 20:10:19 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 12 Oct 2026 20:11:01 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 12 Oct 2026 20:11:01 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 12 Oct 2026 20:11:01 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Mon, 12 Oct 2026 20:11:55 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 12 Oct 2026 20:11:55 GMT
VOLUME [/var/lib/mysql]
# Mon, 12 Oct 2026 20:11:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 12 Oct 2026 20:11:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 20:11:55 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 12 Oct 2026 20:11:55 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b1be88c1a95445e6111ba7b3bceed48f958b8f6eb2ff1c4b27f45fa7b0f45de9`  
		Last Modified: Mon, 12 Oct 2026 19:10:36 GMT  
		Size: 45.8 MB (45800687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0399a56949deaaf20c00b16050b77d7a63225e27be68c9ca385d0c1c880f0135`  
		Last Modified: Mon, 12 Oct 2026 20:12:31 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84bf64211785ff7a6c43b8e6a5a3709415938d2513f9e701416d4bcf62d531df`  
		Last Modified: Mon, 12 Oct 2026 20:12:32 GMT  
		Size: 737.5 KB (737522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7195dce5dfb48948082c8e356a5d15249f243f19f36574fcf0bb8502f0658d81`  
		Last Modified: Mon, 12 Oct 2026 20:12:32 GMT  
		Size: 5.8 MB (5809858 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67e4017b162aed8a9d3ab7530517eb44f352124cc95aa4f88c5562d014f88cad`  
		Last Modified: Mon, 12 Oct 2026 20:12:32 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d95985f6fb94910d133f5e8f92db9883ef3c4c586eb90644791a690f4bc0dc7b`  
		Last Modified: Mon, 12 Oct 2026 20:12:33 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b429d7e53711dbddcc2bf8fa1f38831ad39777485d80ab7f83050b744413ade6`  
		Last Modified: Mon, 12 Oct 2026 20:12:35 GMT  
		Size: 57.4 MB (57414294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ad383cc3314a302763fcfef893db025ea66afcdede0d41fd7410f67781a67a6`  
		Last Modified: Mon, 12 Oct 2026 20:12:33 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16c0cf53a295c474087f466e675f33b6dc1a049673660cb94c19d428f9ee3176`  
		Last Modified: Mon, 12 Oct 2026 20:12:37 GMT  
		Size: 158.2 MB (158221965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae7f2c27109c9b7a53338cc3c94f11c49cbd91d2499a4b427bbfe50c54b37887`  
		Last Modified: Mon, 12 Oct 2026 20:12:34 GMT  
		Size: 5.2 KB (5221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:6abc841a93694bee7d74bb63fd917c9ef474a4569323034acb56e088abf1eca4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17451535 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15145fbf881023c0d02c304531029c80d34d1f81e9ada40099d7996a5d568389`

```dockerfile
```

-	Layers:
	-	`sha256:73883f5df73fbf47cd0e0b6694a110bff7a55e9e9ef0c51d2dca97848e31255a`  
		Last Modified: Mon, 12 Oct 2026 20:12:32 GMT  
		Size: 17.4 MB (17415896 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cab566f9ae27d529a7a07ea82e9029f7afc2542e3f873f26962cf83b3f53d157`  
		Last Modified: Mon, 12 Oct 2026 20:12:32 GMT  
		Size: 35.6 KB (35639 bytes)  
		MIME: application/vnd.in-toto+json
