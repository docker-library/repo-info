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
$ docker pull mysql@sha256:c831a0f11348d402b43d77453e17d770be2eef356615a2823fe0f5a0d6c8b9af
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8` - linux; amd64

```console
$ docker pull mysql@sha256:ef9038553b7ea407704f16770e407ffd32f5566f125d0d94f63ff736af1d43f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.0 MB (238961401 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78c993fee8d828d00b080eb45a44bb43e56befb0caa67a1c2d1da57d2fc0fa95`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 09 Jul 2026 18:34:49 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 09 Jul 2026 18:34:49 GMT
CMD ["/bin/bash"]
# Thu, 09 Jul 2026 19:10:31 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 09 Jul 2026 19:10:33 GMT
ENV GOSU_VERSION=1.19
# Thu, 09 Jul 2026 19:10:33 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 09 Jul 2026 19:11:02 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 09 Jul 2026 19:11:02 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 09 Jul 2026 19:11:02 GMT
ENV MYSQL_MAJOR=8.4
# Thu, 09 Jul 2026 19:11:02 GMT
ENV MYSQL_VERSION=8.4.10-1.el9
# Thu, 09 Jul 2026 19:11:02 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 09 Jul 2026 19:11:36 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 09 Jul 2026 19:11:36 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 09 Jul 2026 19:11:36 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Thu, 09 Jul 2026 19:12:19 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 09 Jul 2026 19:12:19 GMT
VOLUME [/var/lib/mysql]
# Thu, 09 Jul 2026 19:12:19 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 09 Jul 2026 19:12:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 Jul 2026 19:12:19 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 09 Jul 2026 19:12:19 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ecf47111addbec56de180c5066787a73b3998b900305972f62be7fc13c26caa3`  
		Last Modified: Thu, 09 Jul 2026 18:35:00 GMT  
		Size: 47.9 MB (47928988 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2778f503521c2cca13ce562a3bf006684324682fbc03306c7146f4e5d21539c2`  
		Last Modified: Thu, 09 Jul 2026 19:12:49 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e3d989135ce1878722069b438a9351f665f07f6d3ee5d5a440e80d27846dac2`  
		Last Modified: Thu, 09 Jul 2026 19:12:49 GMT  
		Size: 783.6 KB (783556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d509f2b224383459646eaac3ead317defa01a82dfb09d50d188589cf3e44010`  
		Last Modified: Thu, 09 Jul 2026 19:12:49 GMT  
		Size: 6.2 MB (6194518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa21e3319a39dac83fc1819b756fedb22f3b752f4dd3dde1709a571ecb1aeb44`  
		Last Modified: Thu, 09 Jul 2026 19:12:49 GMT  
		Size: 2.6 KB (2604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7201ae730ac194e7838ae429aacc22973d0104942d2a888f630bfb2f1301745c`  
		Last Modified: Thu, 09 Jul 2026 19:12:50 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a10a81ee8ad1e1a65188d507a3059922e8f4c8362f4f7a164e4c5d792291c2fe`  
		Last Modified: Thu, 09 Jul 2026 19:12:52 GMT  
		Size: 51.6 MB (51612100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf02ea966033f7bed4a64220f5def27838703fdfbd0128dc82311f2e07090aaa`  
		Last Modified: Thu, 09 Jul 2026 19:12:50 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed597d474ff7deabe25f5e68249bcd9907b49bcccbd9b9f5dd411e755c7ca5b6`  
		Last Modified: Thu, 09 Jul 2026 19:12:55 GMT  
		Size: 132.4 MB (132432870 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ef02df284232bb32623608ed74925b081b65b237bd0e5ac90a9f11c546786f7`  
		Last Modified: Thu, 09 Jul 2026 19:12:51 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8` - unknown; unknown

```console
$ docker pull mysql@sha256:e5e397cbdf937c6bb0975916affcf497befd62980f24f4e3ac7cab1909279613
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15745146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7913911f9c032b7ec2a17456c1d2082e05b44eeb6e23c48201404d04eeb3d6ea`

```dockerfile
```

-	Layers:
	-	`sha256:94ae3db8584907bf8b14160daab480b16c9bc19b1fb93e9433135f5d3988d5f0`  
		Last Modified: Thu, 09 Jul 2026 19:12:49 GMT  
		Size: 15.7 MB (15711833 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c6f7080d746c6ee01ec478348841eac21938d6bc34aa3acdbf6866c4779e924c`  
		Last Modified: Thu, 09 Jul 2026 19:12:49 GMT  
		Size: 33.3 KB (33313 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:28474aba911e2a51b664e5c77d6ffe5657ae4b27550ff588e8c54db426023c44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.7 MB (233676692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6d60e353ec4fb7c2d29bb14c82ae435ac41748168198757200639d6dc28cbe8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 09 Jul 2026 18:34:49 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 09 Jul 2026 18:34:49 GMT
CMD ["/bin/bash"]
# Thu, 09 Jul 2026 19:10:20 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 09 Jul 2026 19:10:22 GMT
ENV GOSU_VERSION=1.19
# Thu, 09 Jul 2026 19:10:22 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 09 Jul 2026 19:10:55 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 09 Jul 2026 19:10:56 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 09 Jul 2026 19:10:56 GMT
ENV MYSQL_MAJOR=8.4
# Thu, 09 Jul 2026 19:10:56 GMT
ENV MYSQL_VERSION=8.4.10-1.el9
# Thu, 09 Jul 2026 19:10:56 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 09 Jul 2026 19:11:35 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 09 Jul 2026 19:11:35 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 09 Jul 2026 19:11:35 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Thu, 09 Jul 2026 19:12:23 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 09 Jul 2026 19:12:23 GMT
VOLUME [/var/lib/mysql]
# Thu, 09 Jul 2026 19:12:23 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 09 Jul 2026 19:12:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 Jul 2026 19:12:23 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 09 Jul 2026 19:12:23 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c376d03c53ced8ad660398cf332d5f794462a489fe0fc7a2a87af992dcb3a48d`  
		Last Modified: Thu, 09 Jul 2026 18:35:00 GMT  
		Size: 46.5 MB (46475986 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96b430ab32993350a2b12aa18bccba422ff18b5c6dc1d84fde3a866a5d52a983`  
		Last Modified: Thu, 09 Jul 2026 19:12:55 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5d707103115bf79b1b58580141297a7b2e5ef3f561a905dbf3079f2e0013ce7`  
		Last Modified: Thu, 09 Jul 2026 19:12:55 GMT  
		Size: 737.5 KB (737531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fbfa65715153a256b5c8472307e3f54e9fdea9b0c1d03f82c8301b378be9444`  
		Last Modified: Thu, 09 Jul 2026 19:12:55 GMT  
		Size: 5.8 MB (5815043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c71b4b2af885b1b161974e474c7b4060e9bdfda7d511e3586ce492f0cb82dd78`  
		Last Modified: Thu, 09 Jul 2026 19:12:55 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b9aec2d193b6e479cf91a79b92cda60b168284e3ae91ab137e68fd642e7c501`  
		Last Modified: Thu, 09 Jul 2026 19:12:56 GMT  
		Size: 331.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d56fe6ef093855431c83feb54f5a1cd6f6f258a63b0b4f340f9a494f841b176`  
		Last Modified: Thu, 09 Jul 2026 19:12:58 GMT  
		Size: 49.8 MB (49848253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9aec01ec212840ece49cc8efbcd7d2e282b2ef65222ad8452d131c6ffb0fdf0b`  
		Last Modified: Thu, 09 Jul 2026 19:12:56 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:857e1814fb9758cc6a183af6c2c2d73ecd525dda6ca8ba95875dfcb7340a7228`  
		Last Modified: Thu, 09 Jul 2026 19:13:00 GMT  
		Size: 130.8 MB (130790506 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f78502d53379caf7942578cd9a0d22f0287d1dc87778bba8091de0e25f5fa94`  
		Last Modified: Thu, 09 Jul 2026 19:12:58 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8` - unknown; unknown

```console
$ docker pull mysql@sha256:3d77ed0e714a60d3c6e864794d0f8c55e79563fa297b38fd858157493a7da882
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15743815 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14ff2ce915583bba9983bbdf27478128bd024dae302a853d4d2890cabbb66129`

```dockerfile
```

-	Layers:
	-	`sha256:13d5235b03f6148fadea2d8d35117e4bbda6b6829a2cc68839f35321630b2fc5`  
		Last Modified: Thu, 09 Jul 2026 19:12:55 GMT  
		Size: 15.7 MB (15710233 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6f638ad76146894aceafada071d678919b7f535291c2575574c07fc28a52e8d5`  
		Last Modified: Thu, 09 Jul 2026 19:12:55 GMT  
		Size: 33.6 KB (33582 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:8-oracle`

```console
$ docker pull mysql@sha256:c831a0f11348d402b43d77453e17d770be2eef356615a2823fe0f5a0d6c8b9af
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:ef9038553b7ea407704f16770e407ffd32f5566f125d0d94f63ff736af1d43f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.0 MB (238961401 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78c993fee8d828d00b080eb45a44bb43e56befb0caa67a1c2d1da57d2fc0fa95`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 09 Jul 2026 18:34:49 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 09 Jul 2026 18:34:49 GMT
CMD ["/bin/bash"]
# Thu, 09 Jul 2026 19:10:31 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 09 Jul 2026 19:10:33 GMT
ENV GOSU_VERSION=1.19
# Thu, 09 Jul 2026 19:10:33 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 09 Jul 2026 19:11:02 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 09 Jul 2026 19:11:02 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 09 Jul 2026 19:11:02 GMT
ENV MYSQL_MAJOR=8.4
# Thu, 09 Jul 2026 19:11:02 GMT
ENV MYSQL_VERSION=8.4.10-1.el9
# Thu, 09 Jul 2026 19:11:02 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 09 Jul 2026 19:11:36 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 09 Jul 2026 19:11:36 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 09 Jul 2026 19:11:36 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Thu, 09 Jul 2026 19:12:19 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 09 Jul 2026 19:12:19 GMT
VOLUME [/var/lib/mysql]
# Thu, 09 Jul 2026 19:12:19 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 09 Jul 2026 19:12:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 Jul 2026 19:12:19 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 09 Jul 2026 19:12:19 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ecf47111addbec56de180c5066787a73b3998b900305972f62be7fc13c26caa3`  
		Last Modified: Thu, 09 Jul 2026 18:35:00 GMT  
		Size: 47.9 MB (47928988 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2778f503521c2cca13ce562a3bf006684324682fbc03306c7146f4e5d21539c2`  
		Last Modified: Thu, 09 Jul 2026 19:12:49 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e3d989135ce1878722069b438a9351f665f07f6d3ee5d5a440e80d27846dac2`  
		Last Modified: Thu, 09 Jul 2026 19:12:49 GMT  
		Size: 783.6 KB (783556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d509f2b224383459646eaac3ead317defa01a82dfb09d50d188589cf3e44010`  
		Last Modified: Thu, 09 Jul 2026 19:12:49 GMT  
		Size: 6.2 MB (6194518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa21e3319a39dac83fc1819b756fedb22f3b752f4dd3dde1709a571ecb1aeb44`  
		Last Modified: Thu, 09 Jul 2026 19:12:49 GMT  
		Size: 2.6 KB (2604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7201ae730ac194e7838ae429aacc22973d0104942d2a888f630bfb2f1301745c`  
		Last Modified: Thu, 09 Jul 2026 19:12:50 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a10a81ee8ad1e1a65188d507a3059922e8f4c8362f4f7a164e4c5d792291c2fe`  
		Last Modified: Thu, 09 Jul 2026 19:12:52 GMT  
		Size: 51.6 MB (51612100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf02ea966033f7bed4a64220f5def27838703fdfbd0128dc82311f2e07090aaa`  
		Last Modified: Thu, 09 Jul 2026 19:12:50 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed597d474ff7deabe25f5e68249bcd9907b49bcccbd9b9f5dd411e755c7ca5b6`  
		Last Modified: Thu, 09 Jul 2026 19:12:55 GMT  
		Size: 132.4 MB (132432870 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ef02df284232bb32623608ed74925b081b65b237bd0e5ac90a9f11c546786f7`  
		Last Modified: Thu, 09 Jul 2026 19:12:51 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:e5e397cbdf937c6bb0975916affcf497befd62980f24f4e3ac7cab1909279613
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15745146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7913911f9c032b7ec2a17456c1d2082e05b44eeb6e23c48201404d04eeb3d6ea`

```dockerfile
```

-	Layers:
	-	`sha256:94ae3db8584907bf8b14160daab480b16c9bc19b1fb93e9433135f5d3988d5f0`  
		Last Modified: Thu, 09 Jul 2026 19:12:49 GMT  
		Size: 15.7 MB (15711833 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c6f7080d746c6ee01ec478348841eac21938d6bc34aa3acdbf6866c4779e924c`  
		Last Modified: Thu, 09 Jul 2026 19:12:49 GMT  
		Size: 33.3 KB (33313 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:28474aba911e2a51b664e5c77d6ffe5657ae4b27550ff588e8c54db426023c44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.7 MB (233676692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6d60e353ec4fb7c2d29bb14c82ae435ac41748168198757200639d6dc28cbe8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 09 Jul 2026 18:34:49 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 09 Jul 2026 18:34:49 GMT
CMD ["/bin/bash"]
# Thu, 09 Jul 2026 19:10:20 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 09 Jul 2026 19:10:22 GMT
ENV GOSU_VERSION=1.19
# Thu, 09 Jul 2026 19:10:22 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 09 Jul 2026 19:10:55 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 09 Jul 2026 19:10:56 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 09 Jul 2026 19:10:56 GMT
ENV MYSQL_MAJOR=8.4
# Thu, 09 Jul 2026 19:10:56 GMT
ENV MYSQL_VERSION=8.4.10-1.el9
# Thu, 09 Jul 2026 19:10:56 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 09 Jul 2026 19:11:35 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 09 Jul 2026 19:11:35 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 09 Jul 2026 19:11:35 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Thu, 09 Jul 2026 19:12:23 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 09 Jul 2026 19:12:23 GMT
VOLUME [/var/lib/mysql]
# Thu, 09 Jul 2026 19:12:23 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 09 Jul 2026 19:12:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 Jul 2026 19:12:23 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 09 Jul 2026 19:12:23 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c376d03c53ced8ad660398cf332d5f794462a489fe0fc7a2a87af992dcb3a48d`  
		Last Modified: Thu, 09 Jul 2026 18:35:00 GMT  
		Size: 46.5 MB (46475986 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96b430ab32993350a2b12aa18bccba422ff18b5c6dc1d84fde3a866a5d52a983`  
		Last Modified: Thu, 09 Jul 2026 19:12:55 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5d707103115bf79b1b58580141297a7b2e5ef3f561a905dbf3079f2e0013ce7`  
		Last Modified: Thu, 09 Jul 2026 19:12:55 GMT  
		Size: 737.5 KB (737531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fbfa65715153a256b5c8472307e3f54e9fdea9b0c1d03f82c8301b378be9444`  
		Last Modified: Thu, 09 Jul 2026 19:12:55 GMT  
		Size: 5.8 MB (5815043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c71b4b2af885b1b161974e474c7b4060e9bdfda7d511e3586ce492f0cb82dd78`  
		Last Modified: Thu, 09 Jul 2026 19:12:55 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b9aec2d193b6e479cf91a79b92cda60b168284e3ae91ab137e68fd642e7c501`  
		Last Modified: Thu, 09 Jul 2026 19:12:56 GMT  
		Size: 331.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d56fe6ef093855431c83feb54f5a1cd6f6f258a63b0b4f340f9a494f841b176`  
		Last Modified: Thu, 09 Jul 2026 19:12:58 GMT  
		Size: 49.8 MB (49848253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9aec01ec212840ece49cc8efbcd7d2e282b2ef65222ad8452d131c6ffb0fdf0b`  
		Last Modified: Thu, 09 Jul 2026 19:12:56 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:857e1814fb9758cc6a183af6c2c2d73ecd525dda6ca8ba95875dfcb7340a7228`  
		Last Modified: Thu, 09 Jul 2026 19:13:00 GMT  
		Size: 130.8 MB (130790506 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f78502d53379caf7942578cd9a0d22f0287d1dc87778bba8091de0e25f5fa94`  
		Last Modified: Thu, 09 Jul 2026 19:12:58 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:3d77ed0e714a60d3c6e864794d0f8c55e79563fa297b38fd858157493a7da882
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15743815 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14ff2ce915583bba9983bbdf27478128bd024dae302a853d4d2890cabbb66129`

```dockerfile
```

-	Layers:
	-	`sha256:13d5235b03f6148fadea2d8d35117e4bbda6b6829a2cc68839f35321630b2fc5`  
		Last Modified: Thu, 09 Jul 2026 19:12:55 GMT  
		Size: 15.7 MB (15710233 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6f638ad76146894aceafada071d678919b7f535291c2575574c07fc28a52e8d5`  
		Last Modified: Thu, 09 Jul 2026 19:12:55 GMT  
		Size: 33.6 KB (33582 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:8-oraclelinux9`

```console
$ docker pull mysql@sha256:c831a0f11348d402b43d77453e17d770be2eef356615a2823fe0f5a0d6c8b9af
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:ef9038553b7ea407704f16770e407ffd32f5566f125d0d94f63ff736af1d43f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.0 MB (238961401 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78c993fee8d828d00b080eb45a44bb43e56befb0caa67a1c2d1da57d2fc0fa95`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 09 Jul 2026 18:34:49 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 09 Jul 2026 18:34:49 GMT
CMD ["/bin/bash"]
# Thu, 09 Jul 2026 19:10:31 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 09 Jul 2026 19:10:33 GMT
ENV GOSU_VERSION=1.19
# Thu, 09 Jul 2026 19:10:33 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 09 Jul 2026 19:11:02 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 09 Jul 2026 19:11:02 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 09 Jul 2026 19:11:02 GMT
ENV MYSQL_MAJOR=8.4
# Thu, 09 Jul 2026 19:11:02 GMT
ENV MYSQL_VERSION=8.4.10-1.el9
# Thu, 09 Jul 2026 19:11:02 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 09 Jul 2026 19:11:36 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 09 Jul 2026 19:11:36 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 09 Jul 2026 19:11:36 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Thu, 09 Jul 2026 19:12:19 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 09 Jul 2026 19:12:19 GMT
VOLUME [/var/lib/mysql]
# Thu, 09 Jul 2026 19:12:19 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 09 Jul 2026 19:12:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 Jul 2026 19:12:19 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 09 Jul 2026 19:12:19 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ecf47111addbec56de180c5066787a73b3998b900305972f62be7fc13c26caa3`  
		Last Modified: Thu, 09 Jul 2026 18:35:00 GMT  
		Size: 47.9 MB (47928988 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2778f503521c2cca13ce562a3bf006684324682fbc03306c7146f4e5d21539c2`  
		Last Modified: Thu, 09 Jul 2026 19:12:49 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e3d989135ce1878722069b438a9351f665f07f6d3ee5d5a440e80d27846dac2`  
		Last Modified: Thu, 09 Jul 2026 19:12:49 GMT  
		Size: 783.6 KB (783556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d509f2b224383459646eaac3ead317defa01a82dfb09d50d188589cf3e44010`  
		Last Modified: Thu, 09 Jul 2026 19:12:49 GMT  
		Size: 6.2 MB (6194518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa21e3319a39dac83fc1819b756fedb22f3b752f4dd3dde1709a571ecb1aeb44`  
		Last Modified: Thu, 09 Jul 2026 19:12:49 GMT  
		Size: 2.6 KB (2604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7201ae730ac194e7838ae429aacc22973d0104942d2a888f630bfb2f1301745c`  
		Last Modified: Thu, 09 Jul 2026 19:12:50 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a10a81ee8ad1e1a65188d507a3059922e8f4c8362f4f7a164e4c5d792291c2fe`  
		Last Modified: Thu, 09 Jul 2026 19:12:52 GMT  
		Size: 51.6 MB (51612100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf02ea966033f7bed4a64220f5def27838703fdfbd0128dc82311f2e07090aaa`  
		Last Modified: Thu, 09 Jul 2026 19:12:50 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed597d474ff7deabe25f5e68249bcd9907b49bcccbd9b9f5dd411e755c7ca5b6`  
		Last Modified: Thu, 09 Jul 2026 19:12:55 GMT  
		Size: 132.4 MB (132432870 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ef02df284232bb32623608ed74925b081b65b237bd0e5ac90a9f11c546786f7`  
		Last Modified: Thu, 09 Jul 2026 19:12:51 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:e5e397cbdf937c6bb0975916affcf497befd62980f24f4e3ac7cab1909279613
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15745146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7913911f9c032b7ec2a17456c1d2082e05b44eeb6e23c48201404d04eeb3d6ea`

```dockerfile
```

-	Layers:
	-	`sha256:94ae3db8584907bf8b14160daab480b16c9bc19b1fb93e9433135f5d3988d5f0`  
		Last Modified: Thu, 09 Jul 2026 19:12:49 GMT  
		Size: 15.7 MB (15711833 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c6f7080d746c6ee01ec478348841eac21938d6bc34aa3acdbf6866c4779e924c`  
		Last Modified: Thu, 09 Jul 2026 19:12:49 GMT  
		Size: 33.3 KB (33313 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:28474aba911e2a51b664e5c77d6ffe5657ae4b27550ff588e8c54db426023c44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.7 MB (233676692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6d60e353ec4fb7c2d29bb14c82ae435ac41748168198757200639d6dc28cbe8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 09 Jul 2026 18:34:49 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 09 Jul 2026 18:34:49 GMT
CMD ["/bin/bash"]
# Thu, 09 Jul 2026 19:10:20 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 09 Jul 2026 19:10:22 GMT
ENV GOSU_VERSION=1.19
# Thu, 09 Jul 2026 19:10:22 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 09 Jul 2026 19:10:55 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 09 Jul 2026 19:10:56 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 09 Jul 2026 19:10:56 GMT
ENV MYSQL_MAJOR=8.4
# Thu, 09 Jul 2026 19:10:56 GMT
ENV MYSQL_VERSION=8.4.10-1.el9
# Thu, 09 Jul 2026 19:10:56 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 09 Jul 2026 19:11:35 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 09 Jul 2026 19:11:35 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 09 Jul 2026 19:11:35 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Thu, 09 Jul 2026 19:12:23 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 09 Jul 2026 19:12:23 GMT
VOLUME [/var/lib/mysql]
# Thu, 09 Jul 2026 19:12:23 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 09 Jul 2026 19:12:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 Jul 2026 19:12:23 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 09 Jul 2026 19:12:23 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c376d03c53ced8ad660398cf332d5f794462a489fe0fc7a2a87af992dcb3a48d`  
		Last Modified: Thu, 09 Jul 2026 18:35:00 GMT  
		Size: 46.5 MB (46475986 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96b430ab32993350a2b12aa18bccba422ff18b5c6dc1d84fde3a866a5d52a983`  
		Last Modified: Thu, 09 Jul 2026 19:12:55 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5d707103115bf79b1b58580141297a7b2e5ef3f561a905dbf3079f2e0013ce7`  
		Last Modified: Thu, 09 Jul 2026 19:12:55 GMT  
		Size: 737.5 KB (737531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fbfa65715153a256b5c8472307e3f54e9fdea9b0c1d03f82c8301b378be9444`  
		Last Modified: Thu, 09 Jul 2026 19:12:55 GMT  
		Size: 5.8 MB (5815043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c71b4b2af885b1b161974e474c7b4060e9bdfda7d511e3586ce492f0cb82dd78`  
		Last Modified: Thu, 09 Jul 2026 19:12:55 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b9aec2d193b6e479cf91a79b92cda60b168284e3ae91ab137e68fd642e7c501`  
		Last Modified: Thu, 09 Jul 2026 19:12:56 GMT  
		Size: 331.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d56fe6ef093855431c83feb54f5a1cd6f6f258a63b0b4f340f9a494f841b176`  
		Last Modified: Thu, 09 Jul 2026 19:12:58 GMT  
		Size: 49.8 MB (49848253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9aec01ec212840ece49cc8efbcd7d2e282b2ef65222ad8452d131c6ffb0fdf0b`  
		Last Modified: Thu, 09 Jul 2026 19:12:56 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:857e1814fb9758cc6a183af6c2c2d73ecd525dda6ca8ba95875dfcb7340a7228`  
		Last Modified: Thu, 09 Jul 2026 19:13:00 GMT  
		Size: 130.8 MB (130790506 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f78502d53379caf7942578cd9a0d22f0287d1dc87778bba8091de0e25f5fa94`  
		Last Modified: Thu, 09 Jul 2026 19:12:58 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:3d77ed0e714a60d3c6e864794d0f8c55e79563fa297b38fd858157493a7da882
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15743815 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14ff2ce915583bba9983bbdf27478128bd024dae302a853d4d2890cabbb66129`

```dockerfile
```

-	Layers:
	-	`sha256:13d5235b03f6148fadea2d8d35117e4bbda6b6829a2cc68839f35321630b2fc5`  
		Last Modified: Thu, 09 Jul 2026 19:12:55 GMT  
		Size: 15.7 MB (15710233 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6f638ad76146894aceafada071d678919b7f535291c2575574c07fc28a52e8d5`  
		Last Modified: Thu, 09 Jul 2026 19:12:55 GMT  
		Size: 33.6 KB (33582 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:8.4`

```console
$ docker pull mysql@sha256:c831a0f11348d402b43d77453e17d770be2eef356615a2823fe0f5a0d6c8b9af
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8.4` - linux; amd64

```console
$ docker pull mysql@sha256:ef9038553b7ea407704f16770e407ffd32f5566f125d0d94f63ff736af1d43f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.0 MB (238961401 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78c993fee8d828d00b080eb45a44bb43e56befb0caa67a1c2d1da57d2fc0fa95`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 09 Jul 2026 18:34:49 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 09 Jul 2026 18:34:49 GMT
CMD ["/bin/bash"]
# Thu, 09 Jul 2026 19:10:31 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 09 Jul 2026 19:10:33 GMT
ENV GOSU_VERSION=1.19
# Thu, 09 Jul 2026 19:10:33 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 09 Jul 2026 19:11:02 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 09 Jul 2026 19:11:02 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 09 Jul 2026 19:11:02 GMT
ENV MYSQL_MAJOR=8.4
# Thu, 09 Jul 2026 19:11:02 GMT
ENV MYSQL_VERSION=8.4.10-1.el9
# Thu, 09 Jul 2026 19:11:02 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 09 Jul 2026 19:11:36 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 09 Jul 2026 19:11:36 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 09 Jul 2026 19:11:36 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Thu, 09 Jul 2026 19:12:19 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 09 Jul 2026 19:12:19 GMT
VOLUME [/var/lib/mysql]
# Thu, 09 Jul 2026 19:12:19 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 09 Jul 2026 19:12:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 Jul 2026 19:12:19 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 09 Jul 2026 19:12:19 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ecf47111addbec56de180c5066787a73b3998b900305972f62be7fc13c26caa3`  
		Last Modified: Thu, 09 Jul 2026 18:35:00 GMT  
		Size: 47.9 MB (47928988 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2778f503521c2cca13ce562a3bf006684324682fbc03306c7146f4e5d21539c2`  
		Last Modified: Thu, 09 Jul 2026 19:12:49 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e3d989135ce1878722069b438a9351f665f07f6d3ee5d5a440e80d27846dac2`  
		Last Modified: Thu, 09 Jul 2026 19:12:49 GMT  
		Size: 783.6 KB (783556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d509f2b224383459646eaac3ead317defa01a82dfb09d50d188589cf3e44010`  
		Last Modified: Thu, 09 Jul 2026 19:12:49 GMT  
		Size: 6.2 MB (6194518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa21e3319a39dac83fc1819b756fedb22f3b752f4dd3dde1709a571ecb1aeb44`  
		Last Modified: Thu, 09 Jul 2026 19:12:49 GMT  
		Size: 2.6 KB (2604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7201ae730ac194e7838ae429aacc22973d0104942d2a888f630bfb2f1301745c`  
		Last Modified: Thu, 09 Jul 2026 19:12:50 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a10a81ee8ad1e1a65188d507a3059922e8f4c8362f4f7a164e4c5d792291c2fe`  
		Last Modified: Thu, 09 Jul 2026 19:12:52 GMT  
		Size: 51.6 MB (51612100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf02ea966033f7bed4a64220f5def27838703fdfbd0128dc82311f2e07090aaa`  
		Last Modified: Thu, 09 Jul 2026 19:12:50 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed597d474ff7deabe25f5e68249bcd9907b49bcccbd9b9f5dd411e755c7ca5b6`  
		Last Modified: Thu, 09 Jul 2026 19:12:55 GMT  
		Size: 132.4 MB (132432870 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ef02df284232bb32623608ed74925b081b65b237bd0e5ac90a9f11c546786f7`  
		Last Modified: Thu, 09 Jul 2026 19:12:51 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4` - unknown; unknown

```console
$ docker pull mysql@sha256:e5e397cbdf937c6bb0975916affcf497befd62980f24f4e3ac7cab1909279613
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15745146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7913911f9c032b7ec2a17456c1d2082e05b44eeb6e23c48201404d04eeb3d6ea`

```dockerfile
```

-	Layers:
	-	`sha256:94ae3db8584907bf8b14160daab480b16c9bc19b1fb93e9433135f5d3988d5f0`  
		Last Modified: Thu, 09 Jul 2026 19:12:49 GMT  
		Size: 15.7 MB (15711833 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c6f7080d746c6ee01ec478348841eac21938d6bc34aa3acdbf6866c4779e924c`  
		Last Modified: Thu, 09 Jul 2026 19:12:49 GMT  
		Size: 33.3 KB (33313 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8.4` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:28474aba911e2a51b664e5c77d6ffe5657ae4b27550ff588e8c54db426023c44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.7 MB (233676692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6d60e353ec4fb7c2d29bb14c82ae435ac41748168198757200639d6dc28cbe8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 09 Jul 2026 18:34:49 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 09 Jul 2026 18:34:49 GMT
CMD ["/bin/bash"]
# Thu, 09 Jul 2026 19:10:20 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 09 Jul 2026 19:10:22 GMT
ENV GOSU_VERSION=1.19
# Thu, 09 Jul 2026 19:10:22 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 09 Jul 2026 19:10:55 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 09 Jul 2026 19:10:56 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 09 Jul 2026 19:10:56 GMT
ENV MYSQL_MAJOR=8.4
# Thu, 09 Jul 2026 19:10:56 GMT
ENV MYSQL_VERSION=8.4.10-1.el9
# Thu, 09 Jul 2026 19:10:56 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 09 Jul 2026 19:11:35 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 09 Jul 2026 19:11:35 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 09 Jul 2026 19:11:35 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Thu, 09 Jul 2026 19:12:23 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 09 Jul 2026 19:12:23 GMT
VOLUME [/var/lib/mysql]
# Thu, 09 Jul 2026 19:12:23 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 09 Jul 2026 19:12:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 Jul 2026 19:12:23 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 09 Jul 2026 19:12:23 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c376d03c53ced8ad660398cf332d5f794462a489fe0fc7a2a87af992dcb3a48d`  
		Last Modified: Thu, 09 Jul 2026 18:35:00 GMT  
		Size: 46.5 MB (46475986 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96b430ab32993350a2b12aa18bccba422ff18b5c6dc1d84fde3a866a5d52a983`  
		Last Modified: Thu, 09 Jul 2026 19:12:55 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5d707103115bf79b1b58580141297a7b2e5ef3f561a905dbf3079f2e0013ce7`  
		Last Modified: Thu, 09 Jul 2026 19:12:55 GMT  
		Size: 737.5 KB (737531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fbfa65715153a256b5c8472307e3f54e9fdea9b0c1d03f82c8301b378be9444`  
		Last Modified: Thu, 09 Jul 2026 19:12:55 GMT  
		Size: 5.8 MB (5815043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c71b4b2af885b1b161974e474c7b4060e9bdfda7d511e3586ce492f0cb82dd78`  
		Last Modified: Thu, 09 Jul 2026 19:12:55 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b9aec2d193b6e479cf91a79b92cda60b168284e3ae91ab137e68fd642e7c501`  
		Last Modified: Thu, 09 Jul 2026 19:12:56 GMT  
		Size: 331.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d56fe6ef093855431c83feb54f5a1cd6f6f258a63b0b4f340f9a494f841b176`  
		Last Modified: Thu, 09 Jul 2026 19:12:58 GMT  
		Size: 49.8 MB (49848253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9aec01ec212840ece49cc8efbcd7d2e282b2ef65222ad8452d131c6ffb0fdf0b`  
		Last Modified: Thu, 09 Jul 2026 19:12:56 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:857e1814fb9758cc6a183af6c2c2d73ecd525dda6ca8ba95875dfcb7340a7228`  
		Last Modified: Thu, 09 Jul 2026 19:13:00 GMT  
		Size: 130.8 MB (130790506 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f78502d53379caf7942578cd9a0d22f0287d1dc87778bba8091de0e25f5fa94`  
		Last Modified: Thu, 09 Jul 2026 19:12:58 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4` - unknown; unknown

```console
$ docker pull mysql@sha256:3d77ed0e714a60d3c6e864794d0f8c55e79563fa297b38fd858157493a7da882
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15743815 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14ff2ce915583bba9983bbdf27478128bd024dae302a853d4d2890cabbb66129`

```dockerfile
```

-	Layers:
	-	`sha256:13d5235b03f6148fadea2d8d35117e4bbda6b6829a2cc68839f35321630b2fc5`  
		Last Modified: Thu, 09 Jul 2026 19:12:55 GMT  
		Size: 15.7 MB (15710233 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6f638ad76146894aceafada071d678919b7f535291c2575574c07fc28a52e8d5`  
		Last Modified: Thu, 09 Jul 2026 19:12:55 GMT  
		Size: 33.6 KB (33582 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:8.4-oracle`

```console
$ docker pull mysql@sha256:c831a0f11348d402b43d77453e17d770be2eef356615a2823fe0f5a0d6c8b9af
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8.4-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:ef9038553b7ea407704f16770e407ffd32f5566f125d0d94f63ff736af1d43f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.0 MB (238961401 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78c993fee8d828d00b080eb45a44bb43e56befb0caa67a1c2d1da57d2fc0fa95`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 09 Jul 2026 18:34:49 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 09 Jul 2026 18:34:49 GMT
CMD ["/bin/bash"]
# Thu, 09 Jul 2026 19:10:31 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 09 Jul 2026 19:10:33 GMT
ENV GOSU_VERSION=1.19
# Thu, 09 Jul 2026 19:10:33 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 09 Jul 2026 19:11:02 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 09 Jul 2026 19:11:02 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 09 Jul 2026 19:11:02 GMT
ENV MYSQL_MAJOR=8.4
# Thu, 09 Jul 2026 19:11:02 GMT
ENV MYSQL_VERSION=8.4.10-1.el9
# Thu, 09 Jul 2026 19:11:02 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 09 Jul 2026 19:11:36 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 09 Jul 2026 19:11:36 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 09 Jul 2026 19:11:36 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Thu, 09 Jul 2026 19:12:19 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 09 Jul 2026 19:12:19 GMT
VOLUME [/var/lib/mysql]
# Thu, 09 Jul 2026 19:12:19 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 09 Jul 2026 19:12:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 Jul 2026 19:12:19 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 09 Jul 2026 19:12:19 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ecf47111addbec56de180c5066787a73b3998b900305972f62be7fc13c26caa3`  
		Last Modified: Thu, 09 Jul 2026 18:35:00 GMT  
		Size: 47.9 MB (47928988 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2778f503521c2cca13ce562a3bf006684324682fbc03306c7146f4e5d21539c2`  
		Last Modified: Thu, 09 Jul 2026 19:12:49 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e3d989135ce1878722069b438a9351f665f07f6d3ee5d5a440e80d27846dac2`  
		Last Modified: Thu, 09 Jul 2026 19:12:49 GMT  
		Size: 783.6 KB (783556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d509f2b224383459646eaac3ead317defa01a82dfb09d50d188589cf3e44010`  
		Last Modified: Thu, 09 Jul 2026 19:12:49 GMT  
		Size: 6.2 MB (6194518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa21e3319a39dac83fc1819b756fedb22f3b752f4dd3dde1709a571ecb1aeb44`  
		Last Modified: Thu, 09 Jul 2026 19:12:49 GMT  
		Size: 2.6 KB (2604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7201ae730ac194e7838ae429aacc22973d0104942d2a888f630bfb2f1301745c`  
		Last Modified: Thu, 09 Jul 2026 19:12:50 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a10a81ee8ad1e1a65188d507a3059922e8f4c8362f4f7a164e4c5d792291c2fe`  
		Last Modified: Thu, 09 Jul 2026 19:12:52 GMT  
		Size: 51.6 MB (51612100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf02ea966033f7bed4a64220f5def27838703fdfbd0128dc82311f2e07090aaa`  
		Last Modified: Thu, 09 Jul 2026 19:12:50 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed597d474ff7deabe25f5e68249bcd9907b49bcccbd9b9f5dd411e755c7ca5b6`  
		Last Modified: Thu, 09 Jul 2026 19:12:55 GMT  
		Size: 132.4 MB (132432870 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ef02df284232bb32623608ed74925b081b65b237bd0e5ac90a9f11c546786f7`  
		Last Modified: Thu, 09 Jul 2026 19:12:51 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:e5e397cbdf937c6bb0975916affcf497befd62980f24f4e3ac7cab1909279613
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15745146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7913911f9c032b7ec2a17456c1d2082e05b44eeb6e23c48201404d04eeb3d6ea`

```dockerfile
```

-	Layers:
	-	`sha256:94ae3db8584907bf8b14160daab480b16c9bc19b1fb93e9433135f5d3988d5f0`  
		Last Modified: Thu, 09 Jul 2026 19:12:49 GMT  
		Size: 15.7 MB (15711833 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c6f7080d746c6ee01ec478348841eac21938d6bc34aa3acdbf6866c4779e924c`  
		Last Modified: Thu, 09 Jul 2026 19:12:49 GMT  
		Size: 33.3 KB (33313 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8.4-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:28474aba911e2a51b664e5c77d6ffe5657ae4b27550ff588e8c54db426023c44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.7 MB (233676692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6d60e353ec4fb7c2d29bb14c82ae435ac41748168198757200639d6dc28cbe8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 09 Jul 2026 18:34:49 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 09 Jul 2026 18:34:49 GMT
CMD ["/bin/bash"]
# Thu, 09 Jul 2026 19:10:20 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 09 Jul 2026 19:10:22 GMT
ENV GOSU_VERSION=1.19
# Thu, 09 Jul 2026 19:10:22 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 09 Jul 2026 19:10:55 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 09 Jul 2026 19:10:56 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 09 Jul 2026 19:10:56 GMT
ENV MYSQL_MAJOR=8.4
# Thu, 09 Jul 2026 19:10:56 GMT
ENV MYSQL_VERSION=8.4.10-1.el9
# Thu, 09 Jul 2026 19:10:56 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 09 Jul 2026 19:11:35 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 09 Jul 2026 19:11:35 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 09 Jul 2026 19:11:35 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Thu, 09 Jul 2026 19:12:23 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 09 Jul 2026 19:12:23 GMT
VOLUME [/var/lib/mysql]
# Thu, 09 Jul 2026 19:12:23 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 09 Jul 2026 19:12:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 Jul 2026 19:12:23 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 09 Jul 2026 19:12:23 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c376d03c53ced8ad660398cf332d5f794462a489fe0fc7a2a87af992dcb3a48d`  
		Last Modified: Thu, 09 Jul 2026 18:35:00 GMT  
		Size: 46.5 MB (46475986 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96b430ab32993350a2b12aa18bccba422ff18b5c6dc1d84fde3a866a5d52a983`  
		Last Modified: Thu, 09 Jul 2026 19:12:55 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5d707103115bf79b1b58580141297a7b2e5ef3f561a905dbf3079f2e0013ce7`  
		Last Modified: Thu, 09 Jul 2026 19:12:55 GMT  
		Size: 737.5 KB (737531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fbfa65715153a256b5c8472307e3f54e9fdea9b0c1d03f82c8301b378be9444`  
		Last Modified: Thu, 09 Jul 2026 19:12:55 GMT  
		Size: 5.8 MB (5815043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c71b4b2af885b1b161974e474c7b4060e9bdfda7d511e3586ce492f0cb82dd78`  
		Last Modified: Thu, 09 Jul 2026 19:12:55 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b9aec2d193b6e479cf91a79b92cda60b168284e3ae91ab137e68fd642e7c501`  
		Last Modified: Thu, 09 Jul 2026 19:12:56 GMT  
		Size: 331.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d56fe6ef093855431c83feb54f5a1cd6f6f258a63b0b4f340f9a494f841b176`  
		Last Modified: Thu, 09 Jul 2026 19:12:58 GMT  
		Size: 49.8 MB (49848253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9aec01ec212840ece49cc8efbcd7d2e282b2ef65222ad8452d131c6ffb0fdf0b`  
		Last Modified: Thu, 09 Jul 2026 19:12:56 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:857e1814fb9758cc6a183af6c2c2d73ecd525dda6ca8ba95875dfcb7340a7228`  
		Last Modified: Thu, 09 Jul 2026 19:13:00 GMT  
		Size: 130.8 MB (130790506 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f78502d53379caf7942578cd9a0d22f0287d1dc87778bba8091de0e25f5fa94`  
		Last Modified: Thu, 09 Jul 2026 19:12:58 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:3d77ed0e714a60d3c6e864794d0f8c55e79563fa297b38fd858157493a7da882
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15743815 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14ff2ce915583bba9983bbdf27478128bd024dae302a853d4d2890cabbb66129`

```dockerfile
```

-	Layers:
	-	`sha256:13d5235b03f6148fadea2d8d35117e4bbda6b6829a2cc68839f35321630b2fc5`  
		Last Modified: Thu, 09 Jul 2026 19:12:55 GMT  
		Size: 15.7 MB (15710233 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6f638ad76146894aceafada071d678919b7f535291c2575574c07fc28a52e8d5`  
		Last Modified: Thu, 09 Jul 2026 19:12:55 GMT  
		Size: 33.6 KB (33582 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:8.4-oraclelinux9`

```console
$ docker pull mysql@sha256:c831a0f11348d402b43d77453e17d770be2eef356615a2823fe0f5a0d6c8b9af
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8.4-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:ef9038553b7ea407704f16770e407ffd32f5566f125d0d94f63ff736af1d43f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.0 MB (238961401 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78c993fee8d828d00b080eb45a44bb43e56befb0caa67a1c2d1da57d2fc0fa95`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 09 Jul 2026 18:34:49 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 09 Jul 2026 18:34:49 GMT
CMD ["/bin/bash"]
# Thu, 09 Jul 2026 19:10:31 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 09 Jul 2026 19:10:33 GMT
ENV GOSU_VERSION=1.19
# Thu, 09 Jul 2026 19:10:33 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 09 Jul 2026 19:11:02 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 09 Jul 2026 19:11:02 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 09 Jul 2026 19:11:02 GMT
ENV MYSQL_MAJOR=8.4
# Thu, 09 Jul 2026 19:11:02 GMT
ENV MYSQL_VERSION=8.4.10-1.el9
# Thu, 09 Jul 2026 19:11:02 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 09 Jul 2026 19:11:36 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 09 Jul 2026 19:11:36 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 09 Jul 2026 19:11:36 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Thu, 09 Jul 2026 19:12:19 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 09 Jul 2026 19:12:19 GMT
VOLUME [/var/lib/mysql]
# Thu, 09 Jul 2026 19:12:19 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 09 Jul 2026 19:12:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 Jul 2026 19:12:19 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 09 Jul 2026 19:12:19 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ecf47111addbec56de180c5066787a73b3998b900305972f62be7fc13c26caa3`  
		Last Modified: Thu, 09 Jul 2026 18:35:00 GMT  
		Size: 47.9 MB (47928988 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2778f503521c2cca13ce562a3bf006684324682fbc03306c7146f4e5d21539c2`  
		Last Modified: Thu, 09 Jul 2026 19:12:49 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e3d989135ce1878722069b438a9351f665f07f6d3ee5d5a440e80d27846dac2`  
		Last Modified: Thu, 09 Jul 2026 19:12:49 GMT  
		Size: 783.6 KB (783556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d509f2b224383459646eaac3ead317defa01a82dfb09d50d188589cf3e44010`  
		Last Modified: Thu, 09 Jul 2026 19:12:49 GMT  
		Size: 6.2 MB (6194518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa21e3319a39dac83fc1819b756fedb22f3b752f4dd3dde1709a571ecb1aeb44`  
		Last Modified: Thu, 09 Jul 2026 19:12:49 GMT  
		Size: 2.6 KB (2604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7201ae730ac194e7838ae429aacc22973d0104942d2a888f630bfb2f1301745c`  
		Last Modified: Thu, 09 Jul 2026 19:12:50 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a10a81ee8ad1e1a65188d507a3059922e8f4c8362f4f7a164e4c5d792291c2fe`  
		Last Modified: Thu, 09 Jul 2026 19:12:52 GMT  
		Size: 51.6 MB (51612100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf02ea966033f7bed4a64220f5def27838703fdfbd0128dc82311f2e07090aaa`  
		Last Modified: Thu, 09 Jul 2026 19:12:50 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed597d474ff7deabe25f5e68249bcd9907b49bcccbd9b9f5dd411e755c7ca5b6`  
		Last Modified: Thu, 09 Jul 2026 19:12:55 GMT  
		Size: 132.4 MB (132432870 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ef02df284232bb32623608ed74925b081b65b237bd0e5ac90a9f11c546786f7`  
		Last Modified: Thu, 09 Jul 2026 19:12:51 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:e5e397cbdf937c6bb0975916affcf497befd62980f24f4e3ac7cab1909279613
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15745146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7913911f9c032b7ec2a17456c1d2082e05b44eeb6e23c48201404d04eeb3d6ea`

```dockerfile
```

-	Layers:
	-	`sha256:94ae3db8584907bf8b14160daab480b16c9bc19b1fb93e9433135f5d3988d5f0`  
		Last Modified: Thu, 09 Jul 2026 19:12:49 GMT  
		Size: 15.7 MB (15711833 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c6f7080d746c6ee01ec478348841eac21938d6bc34aa3acdbf6866c4779e924c`  
		Last Modified: Thu, 09 Jul 2026 19:12:49 GMT  
		Size: 33.3 KB (33313 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8.4-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:28474aba911e2a51b664e5c77d6ffe5657ae4b27550ff588e8c54db426023c44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.7 MB (233676692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6d60e353ec4fb7c2d29bb14c82ae435ac41748168198757200639d6dc28cbe8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 09 Jul 2026 18:34:49 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 09 Jul 2026 18:34:49 GMT
CMD ["/bin/bash"]
# Thu, 09 Jul 2026 19:10:20 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 09 Jul 2026 19:10:22 GMT
ENV GOSU_VERSION=1.19
# Thu, 09 Jul 2026 19:10:22 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 09 Jul 2026 19:10:55 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 09 Jul 2026 19:10:56 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 09 Jul 2026 19:10:56 GMT
ENV MYSQL_MAJOR=8.4
# Thu, 09 Jul 2026 19:10:56 GMT
ENV MYSQL_VERSION=8.4.10-1.el9
# Thu, 09 Jul 2026 19:10:56 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 09 Jul 2026 19:11:35 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 09 Jul 2026 19:11:35 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 09 Jul 2026 19:11:35 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Thu, 09 Jul 2026 19:12:23 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 09 Jul 2026 19:12:23 GMT
VOLUME [/var/lib/mysql]
# Thu, 09 Jul 2026 19:12:23 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 09 Jul 2026 19:12:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 Jul 2026 19:12:23 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 09 Jul 2026 19:12:23 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c376d03c53ced8ad660398cf332d5f794462a489fe0fc7a2a87af992dcb3a48d`  
		Last Modified: Thu, 09 Jul 2026 18:35:00 GMT  
		Size: 46.5 MB (46475986 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96b430ab32993350a2b12aa18bccba422ff18b5c6dc1d84fde3a866a5d52a983`  
		Last Modified: Thu, 09 Jul 2026 19:12:55 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5d707103115bf79b1b58580141297a7b2e5ef3f561a905dbf3079f2e0013ce7`  
		Last Modified: Thu, 09 Jul 2026 19:12:55 GMT  
		Size: 737.5 KB (737531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fbfa65715153a256b5c8472307e3f54e9fdea9b0c1d03f82c8301b378be9444`  
		Last Modified: Thu, 09 Jul 2026 19:12:55 GMT  
		Size: 5.8 MB (5815043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c71b4b2af885b1b161974e474c7b4060e9bdfda7d511e3586ce492f0cb82dd78`  
		Last Modified: Thu, 09 Jul 2026 19:12:55 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b9aec2d193b6e479cf91a79b92cda60b168284e3ae91ab137e68fd642e7c501`  
		Last Modified: Thu, 09 Jul 2026 19:12:56 GMT  
		Size: 331.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d56fe6ef093855431c83feb54f5a1cd6f6f258a63b0b4f340f9a494f841b176`  
		Last Modified: Thu, 09 Jul 2026 19:12:58 GMT  
		Size: 49.8 MB (49848253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9aec01ec212840ece49cc8efbcd7d2e282b2ef65222ad8452d131c6ffb0fdf0b`  
		Last Modified: Thu, 09 Jul 2026 19:12:56 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:857e1814fb9758cc6a183af6c2c2d73ecd525dda6ca8ba95875dfcb7340a7228`  
		Last Modified: Thu, 09 Jul 2026 19:13:00 GMT  
		Size: 130.8 MB (130790506 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f78502d53379caf7942578cd9a0d22f0287d1dc87778bba8091de0e25f5fa94`  
		Last Modified: Thu, 09 Jul 2026 19:12:58 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:3d77ed0e714a60d3c6e864794d0f8c55e79563fa297b38fd858157493a7da882
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15743815 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14ff2ce915583bba9983bbdf27478128bd024dae302a853d4d2890cabbb66129`

```dockerfile
```

-	Layers:
	-	`sha256:13d5235b03f6148fadea2d8d35117e4bbda6b6829a2cc68839f35321630b2fc5`  
		Last Modified: Thu, 09 Jul 2026 19:12:55 GMT  
		Size: 15.7 MB (15710233 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6f638ad76146894aceafada071d678919b7f535291c2575574c07fc28a52e8d5`  
		Last Modified: Thu, 09 Jul 2026 19:12:55 GMT  
		Size: 33.6 KB (33582 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:8.4.10`

```console
$ docker pull mysql@sha256:c831a0f11348d402b43d77453e17d770be2eef356615a2823fe0f5a0d6c8b9af
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8.4.10` - linux; amd64

```console
$ docker pull mysql@sha256:ef9038553b7ea407704f16770e407ffd32f5566f125d0d94f63ff736af1d43f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.0 MB (238961401 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78c993fee8d828d00b080eb45a44bb43e56befb0caa67a1c2d1da57d2fc0fa95`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 09 Jul 2026 18:34:49 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 09 Jul 2026 18:34:49 GMT
CMD ["/bin/bash"]
# Thu, 09 Jul 2026 19:10:31 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 09 Jul 2026 19:10:33 GMT
ENV GOSU_VERSION=1.19
# Thu, 09 Jul 2026 19:10:33 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 09 Jul 2026 19:11:02 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 09 Jul 2026 19:11:02 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 09 Jul 2026 19:11:02 GMT
ENV MYSQL_MAJOR=8.4
# Thu, 09 Jul 2026 19:11:02 GMT
ENV MYSQL_VERSION=8.4.10-1.el9
# Thu, 09 Jul 2026 19:11:02 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 09 Jul 2026 19:11:36 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 09 Jul 2026 19:11:36 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 09 Jul 2026 19:11:36 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Thu, 09 Jul 2026 19:12:19 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 09 Jul 2026 19:12:19 GMT
VOLUME [/var/lib/mysql]
# Thu, 09 Jul 2026 19:12:19 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 09 Jul 2026 19:12:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 Jul 2026 19:12:19 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 09 Jul 2026 19:12:19 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ecf47111addbec56de180c5066787a73b3998b900305972f62be7fc13c26caa3`  
		Last Modified: Thu, 09 Jul 2026 18:35:00 GMT  
		Size: 47.9 MB (47928988 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2778f503521c2cca13ce562a3bf006684324682fbc03306c7146f4e5d21539c2`  
		Last Modified: Thu, 09 Jul 2026 19:12:49 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e3d989135ce1878722069b438a9351f665f07f6d3ee5d5a440e80d27846dac2`  
		Last Modified: Thu, 09 Jul 2026 19:12:49 GMT  
		Size: 783.6 KB (783556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d509f2b224383459646eaac3ead317defa01a82dfb09d50d188589cf3e44010`  
		Last Modified: Thu, 09 Jul 2026 19:12:49 GMT  
		Size: 6.2 MB (6194518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa21e3319a39dac83fc1819b756fedb22f3b752f4dd3dde1709a571ecb1aeb44`  
		Last Modified: Thu, 09 Jul 2026 19:12:49 GMT  
		Size: 2.6 KB (2604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7201ae730ac194e7838ae429aacc22973d0104942d2a888f630bfb2f1301745c`  
		Last Modified: Thu, 09 Jul 2026 19:12:50 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a10a81ee8ad1e1a65188d507a3059922e8f4c8362f4f7a164e4c5d792291c2fe`  
		Last Modified: Thu, 09 Jul 2026 19:12:52 GMT  
		Size: 51.6 MB (51612100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf02ea966033f7bed4a64220f5def27838703fdfbd0128dc82311f2e07090aaa`  
		Last Modified: Thu, 09 Jul 2026 19:12:50 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed597d474ff7deabe25f5e68249bcd9907b49bcccbd9b9f5dd411e755c7ca5b6`  
		Last Modified: Thu, 09 Jul 2026 19:12:55 GMT  
		Size: 132.4 MB (132432870 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ef02df284232bb32623608ed74925b081b65b237bd0e5ac90a9f11c546786f7`  
		Last Modified: Thu, 09 Jul 2026 19:12:51 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4.10` - unknown; unknown

```console
$ docker pull mysql@sha256:e5e397cbdf937c6bb0975916affcf497befd62980f24f4e3ac7cab1909279613
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15745146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7913911f9c032b7ec2a17456c1d2082e05b44eeb6e23c48201404d04eeb3d6ea`

```dockerfile
```

-	Layers:
	-	`sha256:94ae3db8584907bf8b14160daab480b16c9bc19b1fb93e9433135f5d3988d5f0`  
		Last Modified: Thu, 09 Jul 2026 19:12:49 GMT  
		Size: 15.7 MB (15711833 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c6f7080d746c6ee01ec478348841eac21938d6bc34aa3acdbf6866c4779e924c`  
		Last Modified: Thu, 09 Jul 2026 19:12:49 GMT  
		Size: 33.3 KB (33313 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8.4.10` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:28474aba911e2a51b664e5c77d6ffe5657ae4b27550ff588e8c54db426023c44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.7 MB (233676692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6d60e353ec4fb7c2d29bb14c82ae435ac41748168198757200639d6dc28cbe8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 09 Jul 2026 18:34:49 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 09 Jul 2026 18:34:49 GMT
CMD ["/bin/bash"]
# Thu, 09 Jul 2026 19:10:20 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 09 Jul 2026 19:10:22 GMT
ENV GOSU_VERSION=1.19
# Thu, 09 Jul 2026 19:10:22 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 09 Jul 2026 19:10:55 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 09 Jul 2026 19:10:56 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 09 Jul 2026 19:10:56 GMT
ENV MYSQL_MAJOR=8.4
# Thu, 09 Jul 2026 19:10:56 GMT
ENV MYSQL_VERSION=8.4.10-1.el9
# Thu, 09 Jul 2026 19:10:56 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 09 Jul 2026 19:11:35 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 09 Jul 2026 19:11:35 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 09 Jul 2026 19:11:35 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Thu, 09 Jul 2026 19:12:23 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 09 Jul 2026 19:12:23 GMT
VOLUME [/var/lib/mysql]
# Thu, 09 Jul 2026 19:12:23 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 09 Jul 2026 19:12:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 Jul 2026 19:12:23 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 09 Jul 2026 19:12:23 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c376d03c53ced8ad660398cf332d5f794462a489fe0fc7a2a87af992dcb3a48d`  
		Last Modified: Thu, 09 Jul 2026 18:35:00 GMT  
		Size: 46.5 MB (46475986 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96b430ab32993350a2b12aa18bccba422ff18b5c6dc1d84fde3a866a5d52a983`  
		Last Modified: Thu, 09 Jul 2026 19:12:55 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5d707103115bf79b1b58580141297a7b2e5ef3f561a905dbf3079f2e0013ce7`  
		Last Modified: Thu, 09 Jul 2026 19:12:55 GMT  
		Size: 737.5 KB (737531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fbfa65715153a256b5c8472307e3f54e9fdea9b0c1d03f82c8301b378be9444`  
		Last Modified: Thu, 09 Jul 2026 19:12:55 GMT  
		Size: 5.8 MB (5815043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c71b4b2af885b1b161974e474c7b4060e9bdfda7d511e3586ce492f0cb82dd78`  
		Last Modified: Thu, 09 Jul 2026 19:12:55 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b9aec2d193b6e479cf91a79b92cda60b168284e3ae91ab137e68fd642e7c501`  
		Last Modified: Thu, 09 Jul 2026 19:12:56 GMT  
		Size: 331.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d56fe6ef093855431c83feb54f5a1cd6f6f258a63b0b4f340f9a494f841b176`  
		Last Modified: Thu, 09 Jul 2026 19:12:58 GMT  
		Size: 49.8 MB (49848253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9aec01ec212840ece49cc8efbcd7d2e282b2ef65222ad8452d131c6ffb0fdf0b`  
		Last Modified: Thu, 09 Jul 2026 19:12:56 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:857e1814fb9758cc6a183af6c2c2d73ecd525dda6ca8ba95875dfcb7340a7228`  
		Last Modified: Thu, 09 Jul 2026 19:13:00 GMT  
		Size: 130.8 MB (130790506 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f78502d53379caf7942578cd9a0d22f0287d1dc87778bba8091de0e25f5fa94`  
		Last Modified: Thu, 09 Jul 2026 19:12:58 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4.10` - unknown; unknown

```console
$ docker pull mysql@sha256:3d77ed0e714a60d3c6e864794d0f8c55e79563fa297b38fd858157493a7da882
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15743815 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14ff2ce915583bba9983bbdf27478128bd024dae302a853d4d2890cabbb66129`

```dockerfile
```

-	Layers:
	-	`sha256:13d5235b03f6148fadea2d8d35117e4bbda6b6829a2cc68839f35321630b2fc5`  
		Last Modified: Thu, 09 Jul 2026 19:12:55 GMT  
		Size: 15.7 MB (15710233 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6f638ad76146894aceafada071d678919b7f535291c2575574c07fc28a52e8d5`  
		Last Modified: Thu, 09 Jul 2026 19:12:55 GMT  
		Size: 33.6 KB (33582 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:8.4.10-oracle`

```console
$ docker pull mysql@sha256:c831a0f11348d402b43d77453e17d770be2eef356615a2823fe0f5a0d6c8b9af
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8.4.10-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:ef9038553b7ea407704f16770e407ffd32f5566f125d0d94f63ff736af1d43f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.0 MB (238961401 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78c993fee8d828d00b080eb45a44bb43e56befb0caa67a1c2d1da57d2fc0fa95`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 09 Jul 2026 18:34:49 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 09 Jul 2026 18:34:49 GMT
CMD ["/bin/bash"]
# Thu, 09 Jul 2026 19:10:31 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 09 Jul 2026 19:10:33 GMT
ENV GOSU_VERSION=1.19
# Thu, 09 Jul 2026 19:10:33 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 09 Jul 2026 19:11:02 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 09 Jul 2026 19:11:02 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 09 Jul 2026 19:11:02 GMT
ENV MYSQL_MAJOR=8.4
# Thu, 09 Jul 2026 19:11:02 GMT
ENV MYSQL_VERSION=8.4.10-1.el9
# Thu, 09 Jul 2026 19:11:02 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 09 Jul 2026 19:11:36 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 09 Jul 2026 19:11:36 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 09 Jul 2026 19:11:36 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Thu, 09 Jul 2026 19:12:19 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 09 Jul 2026 19:12:19 GMT
VOLUME [/var/lib/mysql]
# Thu, 09 Jul 2026 19:12:19 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 09 Jul 2026 19:12:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 Jul 2026 19:12:19 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 09 Jul 2026 19:12:19 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ecf47111addbec56de180c5066787a73b3998b900305972f62be7fc13c26caa3`  
		Last Modified: Thu, 09 Jul 2026 18:35:00 GMT  
		Size: 47.9 MB (47928988 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2778f503521c2cca13ce562a3bf006684324682fbc03306c7146f4e5d21539c2`  
		Last Modified: Thu, 09 Jul 2026 19:12:49 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e3d989135ce1878722069b438a9351f665f07f6d3ee5d5a440e80d27846dac2`  
		Last Modified: Thu, 09 Jul 2026 19:12:49 GMT  
		Size: 783.6 KB (783556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d509f2b224383459646eaac3ead317defa01a82dfb09d50d188589cf3e44010`  
		Last Modified: Thu, 09 Jul 2026 19:12:49 GMT  
		Size: 6.2 MB (6194518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa21e3319a39dac83fc1819b756fedb22f3b752f4dd3dde1709a571ecb1aeb44`  
		Last Modified: Thu, 09 Jul 2026 19:12:49 GMT  
		Size: 2.6 KB (2604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7201ae730ac194e7838ae429aacc22973d0104942d2a888f630bfb2f1301745c`  
		Last Modified: Thu, 09 Jul 2026 19:12:50 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a10a81ee8ad1e1a65188d507a3059922e8f4c8362f4f7a164e4c5d792291c2fe`  
		Last Modified: Thu, 09 Jul 2026 19:12:52 GMT  
		Size: 51.6 MB (51612100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf02ea966033f7bed4a64220f5def27838703fdfbd0128dc82311f2e07090aaa`  
		Last Modified: Thu, 09 Jul 2026 19:12:50 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed597d474ff7deabe25f5e68249bcd9907b49bcccbd9b9f5dd411e755c7ca5b6`  
		Last Modified: Thu, 09 Jul 2026 19:12:55 GMT  
		Size: 132.4 MB (132432870 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ef02df284232bb32623608ed74925b081b65b237bd0e5ac90a9f11c546786f7`  
		Last Modified: Thu, 09 Jul 2026 19:12:51 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4.10-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:e5e397cbdf937c6bb0975916affcf497befd62980f24f4e3ac7cab1909279613
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15745146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7913911f9c032b7ec2a17456c1d2082e05b44eeb6e23c48201404d04eeb3d6ea`

```dockerfile
```

-	Layers:
	-	`sha256:94ae3db8584907bf8b14160daab480b16c9bc19b1fb93e9433135f5d3988d5f0`  
		Last Modified: Thu, 09 Jul 2026 19:12:49 GMT  
		Size: 15.7 MB (15711833 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c6f7080d746c6ee01ec478348841eac21938d6bc34aa3acdbf6866c4779e924c`  
		Last Modified: Thu, 09 Jul 2026 19:12:49 GMT  
		Size: 33.3 KB (33313 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8.4.10-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:28474aba911e2a51b664e5c77d6ffe5657ae4b27550ff588e8c54db426023c44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.7 MB (233676692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6d60e353ec4fb7c2d29bb14c82ae435ac41748168198757200639d6dc28cbe8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 09 Jul 2026 18:34:49 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 09 Jul 2026 18:34:49 GMT
CMD ["/bin/bash"]
# Thu, 09 Jul 2026 19:10:20 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 09 Jul 2026 19:10:22 GMT
ENV GOSU_VERSION=1.19
# Thu, 09 Jul 2026 19:10:22 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 09 Jul 2026 19:10:55 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 09 Jul 2026 19:10:56 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 09 Jul 2026 19:10:56 GMT
ENV MYSQL_MAJOR=8.4
# Thu, 09 Jul 2026 19:10:56 GMT
ENV MYSQL_VERSION=8.4.10-1.el9
# Thu, 09 Jul 2026 19:10:56 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 09 Jul 2026 19:11:35 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 09 Jul 2026 19:11:35 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 09 Jul 2026 19:11:35 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Thu, 09 Jul 2026 19:12:23 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 09 Jul 2026 19:12:23 GMT
VOLUME [/var/lib/mysql]
# Thu, 09 Jul 2026 19:12:23 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 09 Jul 2026 19:12:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 Jul 2026 19:12:23 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 09 Jul 2026 19:12:23 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c376d03c53ced8ad660398cf332d5f794462a489fe0fc7a2a87af992dcb3a48d`  
		Last Modified: Thu, 09 Jul 2026 18:35:00 GMT  
		Size: 46.5 MB (46475986 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96b430ab32993350a2b12aa18bccba422ff18b5c6dc1d84fde3a866a5d52a983`  
		Last Modified: Thu, 09 Jul 2026 19:12:55 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5d707103115bf79b1b58580141297a7b2e5ef3f561a905dbf3079f2e0013ce7`  
		Last Modified: Thu, 09 Jul 2026 19:12:55 GMT  
		Size: 737.5 KB (737531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fbfa65715153a256b5c8472307e3f54e9fdea9b0c1d03f82c8301b378be9444`  
		Last Modified: Thu, 09 Jul 2026 19:12:55 GMT  
		Size: 5.8 MB (5815043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c71b4b2af885b1b161974e474c7b4060e9bdfda7d511e3586ce492f0cb82dd78`  
		Last Modified: Thu, 09 Jul 2026 19:12:55 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b9aec2d193b6e479cf91a79b92cda60b168284e3ae91ab137e68fd642e7c501`  
		Last Modified: Thu, 09 Jul 2026 19:12:56 GMT  
		Size: 331.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d56fe6ef093855431c83feb54f5a1cd6f6f258a63b0b4f340f9a494f841b176`  
		Last Modified: Thu, 09 Jul 2026 19:12:58 GMT  
		Size: 49.8 MB (49848253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9aec01ec212840ece49cc8efbcd7d2e282b2ef65222ad8452d131c6ffb0fdf0b`  
		Last Modified: Thu, 09 Jul 2026 19:12:56 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:857e1814fb9758cc6a183af6c2c2d73ecd525dda6ca8ba95875dfcb7340a7228`  
		Last Modified: Thu, 09 Jul 2026 19:13:00 GMT  
		Size: 130.8 MB (130790506 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f78502d53379caf7942578cd9a0d22f0287d1dc87778bba8091de0e25f5fa94`  
		Last Modified: Thu, 09 Jul 2026 19:12:58 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4.10-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:3d77ed0e714a60d3c6e864794d0f8c55e79563fa297b38fd858157493a7da882
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15743815 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14ff2ce915583bba9983bbdf27478128bd024dae302a853d4d2890cabbb66129`

```dockerfile
```

-	Layers:
	-	`sha256:13d5235b03f6148fadea2d8d35117e4bbda6b6829a2cc68839f35321630b2fc5`  
		Last Modified: Thu, 09 Jul 2026 19:12:55 GMT  
		Size: 15.7 MB (15710233 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6f638ad76146894aceafada071d678919b7f535291c2575574c07fc28a52e8d5`  
		Last Modified: Thu, 09 Jul 2026 19:12:55 GMT  
		Size: 33.6 KB (33582 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:8.4.10-oraclelinux9`

```console
$ docker pull mysql@sha256:c831a0f11348d402b43d77453e17d770be2eef356615a2823fe0f5a0d6c8b9af
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8.4.10-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:ef9038553b7ea407704f16770e407ffd32f5566f125d0d94f63ff736af1d43f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.0 MB (238961401 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78c993fee8d828d00b080eb45a44bb43e56befb0caa67a1c2d1da57d2fc0fa95`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 09 Jul 2026 18:34:49 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 09 Jul 2026 18:34:49 GMT
CMD ["/bin/bash"]
# Thu, 09 Jul 2026 19:10:31 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 09 Jul 2026 19:10:33 GMT
ENV GOSU_VERSION=1.19
# Thu, 09 Jul 2026 19:10:33 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 09 Jul 2026 19:11:02 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 09 Jul 2026 19:11:02 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 09 Jul 2026 19:11:02 GMT
ENV MYSQL_MAJOR=8.4
# Thu, 09 Jul 2026 19:11:02 GMT
ENV MYSQL_VERSION=8.4.10-1.el9
# Thu, 09 Jul 2026 19:11:02 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 09 Jul 2026 19:11:36 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 09 Jul 2026 19:11:36 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 09 Jul 2026 19:11:36 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Thu, 09 Jul 2026 19:12:19 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 09 Jul 2026 19:12:19 GMT
VOLUME [/var/lib/mysql]
# Thu, 09 Jul 2026 19:12:19 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 09 Jul 2026 19:12:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 Jul 2026 19:12:19 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 09 Jul 2026 19:12:19 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ecf47111addbec56de180c5066787a73b3998b900305972f62be7fc13c26caa3`  
		Last Modified: Thu, 09 Jul 2026 18:35:00 GMT  
		Size: 47.9 MB (47928988 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2778f503521c2cca13ce562a3bf006684324682fbc03306c7146f4e5d21539c2`  
		Last Modified: Thu, 09 Jul 2026 19:12:49 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e3d989135ce1878722069b438a9351f665f07f6d3ee5d5a440e80d27846dac2`  
		Last Modified: Thu, 09 Jul 2026 19:12:49 GMT  
		Size: 783.6 KB (783556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d509f2b224383459646eaac3ead317defa01a82dfb09d50d188589cf3e44010`  
		Last Modified: Thu, 09 Jul 2026 19:12:49 GMT  
		Size: 6.2 MB (6194518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa21e3319a39dac83fc1819b756fedb22f3b752f4dd3dde1709a571ecb1aeb44`  
		Last Modified: Thu, 09 Jul 2026 19:12:49 GMT  
		Size: 2.6 KB (2604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7201ae730ac194e7838ae429aacc22973d0104942d2a888f630bfb2f1301745c`  
		Last Modified: Thu, 09 Jul 2026 19:12:50 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a10a81ee8ad1e1a65188d507a3059922e8f4c8362f4f7a164e4c5d792291c2fe`  
		Last Modified: Thu, 09 Jul 2026 19:12:52 GMT  
		Size: 51.6 MB (51612100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf02ea966033f7bed4a64220f5def27838703fdfbd0128dc82311f2e07090aaa`  
		Last Modified: Thu, 09 Jul 2026 19:12:50 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed597d474ff7deabe25f5e68249bcd9907b49bcccbd9b9f5dd411e755c7ca5b6`  
		Last Modified: Thu, 09 Jul 2026 19:12:55 GMT  
		Size: 132.4 MB (132432870 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ef02df284232bb32623608ed74925b081b65b237bd0e5ac90a9f11c546786f7`  
		Last Modified: Thu, 09 Jul 2026 19:12:51 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4.10-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:e5e397cbdf937c6bb0975916affcf497befd62980f24f4e3ac7cab1909279613
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15745146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7913911f9c032b7ec2a17456c1d2082e05b44eeb6e23c48201404d04eeb3d6ea`

```dockerfile
```

-	Layers:
	-	`sha256:94ae3db8584907bf8b14160daab480b16c9bc19b1fb93e9433135f5d3988d5f0`  
		Last Modified: Thu, 09 Jul 2026 19:12:49 GMT  
		Size: 15.7 MB (15711833 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c6f7080d746c6ee01ec478348841eac21938d6bc34aa3acdbf6866c4779e924c`  
		Last Modified: Thu, 09 Jul 2026 19:12:49 GMT  
		Size: 33.3 KB (33313 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8.4.10-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:28474aba911e2a51b664e5c77d6ffe5657ae4b27550ff588e8c54db426023c44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.7 MB (233676692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6d60e353ec4fb7c2d29bb14c82ae435ac41748168198757200639d6dc28cbe8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 09 Jul 2026 18:34:49 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 09 Jul 2026 18:34:49 GMT
CMD ["/bin/bash"]
# Thu, 09 Jul 2026 19:10:20 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 09 Jul 2026 19:10:22 GMT
ENV GOSU_VERSION=1.19
# Thu, 09 Jul 2026 19:10:22 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 09 Jul 2026 19:10:55 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 09 Jul 2026 19:10:56 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 09 Jul 2026 19:10:56 GMT
ENV MYSQL_MAJOR=8.4
# Thu, 09 Jul 2026 19:10:56 GMT
ENV MYSQL_VERSION=8.4.10-1.el9
# Thu, 09 Jul 2026 19:10:56 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 09 Jul 2026 19:11:35 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 09 Jul 2026 19:11:35 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 09 Jul 2026 19:11:35 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Thu, 09 Jul 2026 19:12:23 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 09 Jul 2026 19:12:23 GMT
VOLUME [/var/lib/mysql]
# Thu, 09 Jul 2026 19:12:23 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 09 Jul 2026 19:12:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 Jul 2026 19:12:23 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 09 Jul 2026 19:12:23 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c376d03c53ced8ad660398cf332d5f794462a489fe0fc7a2a87af992dcb3a48d`  
		Last Modified: Thu, 09 Jul 2026 18:35:00 GMT  
		Size: 46.5 MB (46475986 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96b430ab32993350a2b12aa18bccba422ff18b5c6dc1d84fde3a866a5d52a983`  
		Last Modified: Thu, 09 Jul 2026 19:12:55 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5d707103115bf79b1b58580141297a7b2e5ef3f561a905dbf3079f2e0013ce7`  
		Last Modified: Thu, 09 Jul 2026 19:12:55 GMT  
		Size: 737.5 KB (737531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fbfa65715153a256b5c8472307e3f54e9fdea9b0c1d03f82c8301b378be9444`  
		Last Modified: Thu, 09 Jul 2026 19:12:55 GMT  
		Size: 5.8 MB (5815043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c71b4b2af885b1b161974e474c7b4060e9bdfda7d511e3586ce492f0cb82dd78`  
		Last Modified: Thu, 09 Jul 2026 19:12:55 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b9aec2d193b6e479cf91a79b92cda60b168284e3ae91ab137e68fd642e7c501`  
		Last Modified: Thu, 09 Jul 2026 19:12:56 GMT  
		Size: 331.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d56fe6ef093855431c83feb54f5a1cd6f6f258a63b0b4f340f9a494f841b176`  
		Last Modified: Thu, 09 Jul 2026 19:12:58 GMT  
		Size: 49.8 MB (49848253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9aec01ec212840ece49cc8efbcd7d2e282b2ef65222ad8452d131c6ffb0fdf0b`  
		Last Modified: Thu, 09 Jul 2026 19:12:56 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:857e1814fb9758cc6a183af6c2c2d73ecd525dda6ca8ba95875dfcb7340a7228`  
		Last Modified: Thu, 09 Jul 2026 19:13:00 GMT  
		Size: 130.8 MB (130790506 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f78502d53379caf7942578cd9a0d22f0287d1dc87778bba8091de0e25f5fa94`  
		Last Modified: Thu, 09 Jul 2026 19:12:58 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4.10-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:3d77ed0e714a60d3c6e864794d0f8c55e79563fa297b38fd858157493a7da882
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15743815 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14ff2ce915583bba9983bbdf27478128bd024dae302a853d4d2890cabbb66129`

```dockerfile
```

-	Layers:
	-	`sha256:13d5235b03f6148fadea2d8d35117e4bbda6b6829a2cc68839f35321630b2fc5`  
		Last Modified: Thu, 09 Jul 2026 19:12:55 GMT  
		Size: 15.7 MB (15710233 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6f638ad76146894aceafada071d678919b7f535291c2575574c07fc28a52e8d5`  
		Last Modified: Thu, 09 Jul 2026 19:12:55 GMT  
		Size: 33.6 KB (33582 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9`

```console
$ docker pull mysql@sha256:ae269281abffe401d65f04cb54d45a069a495b8174b9c0a815e502fed7fa0370
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9` - linux; amd64

```console
$ docker pull mysql@sha256:91e42ae952f37b724f945c734cf067c65aa66bf15d4992a7f7c174918d15fc77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.9 MB (270857504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:914b9d749556f431a13a98293ea1e093446b93c6f4a70e758505650808fa545d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 09 Jul 2026 18:34:49 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 09 Jul 2026 18:34:49 GMT
CMD ["/bin/bash"]
# Thu, 09 Jul 2026 19:09:53 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 09 Jul 2026 19:09:54 GMT
ENV GOSU_VERSION=1.19
# Thu, 09 Jul 2026 19:09:54 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 09 Jul 2026 19:10:27 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 09 Jul 2026 19:10:28 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 09 Jul 2026 19:10:28 GMT
ENV MYSQL_MAJOR=9.7
# Thu, 09 Jul 2026 19:10:28 GMT
ENV MYSQL_VERSION=9.7.1-1.el9
# Thu, 09 Jul 2026 19:10:28 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 09 Jul 2026 19:11:06 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 09 Jul 2026 19:11:06 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 09 Jul 2026 19:11:06 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Thu, 09 Jul 2026 19:11:54 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 09 Jul 2026 19:11:54 GMT
VOLUME [/var/lib/mysql]
# Thu, 09 Jul 2026 19:11:54 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 09 Jul 2026 19:11:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 Jul 2026 19:11:54 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 09 Jul 2026 19:11:54 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ecf47111addbec56de180c5066787a73b3998b900305972f62be7fc13c26caa3`  
		Last Modified: Thu, 09 Jul 2026 18:35:00 GMT  
		Size: 47.9 MB (47928988 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4c51daaa784691ea28f53026076e6cf56b7f0ed81f9b1f768d642e20cd95f91`  
		Last Modified: Thu, 09 Jul 2026 19:12:30 GMT  
		Size: 882.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad18077cf381e6ccaafad4a1e120942a81325d527ba90c8f3fb17d6fac5830a9`  
		Last Modified: Thu, 09 Jul 2026 19:12:31 GMT  
		Size: 783.6 KB (783558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f5b662d2d4d6db9cd98c3ce4a47dc2c7d01335c1fe054d57cd58b31eefc2748`  
		Last Modified: Thu, 09 Jul 2026 19:12:30 GMT  
		Size: 6.2 MB (6194490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:890dd41ed99a7c2fe3c1a6589b2e0adaaa2c84ebf4d2dc086285586548ecda92`  
		Last Modified: Thu, 09 Jul 2026 19:12:30 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1257e53bba2aeeccda63f98a3f4d452cfb9d676b96d4703b22b1d1613440faa9`  
		Last Modified: Thu, 09 Jul 2026 19:12:32 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b6fad81c71797f0cf817afc457b77dbb2dc38d5a37a0d7a974eee21657c0727`  
		Last Modified: Thu, 09 Jul 2026 19:12:34 GMT  
		Size: 57.0 MB (56998712 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aeff22d410558cda12b806f6fe76e71d148a77967c188860ecf670380b597494`  
		Last Modified: Thu, 09 Jul 2026 19:12:32 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04eb080c2a10a0e3b689a2b4d3c49f806102a8107c02322926927b0b8b929ad9`  
		Last Modified: Thu, 09 Jul 2026 19:12:36 GMT  
		Size: 158.9 MB (158942384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:446597dc68d24d8917a37b56402c6a9dc47e66ebd4e14401633df9e924545e88`  
		Last Modified: Thu, 09 Jul 2026 19:12:33 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9` - unknown; unknown

```console
$ docker pull mysql@sha256:57e20b5be94b72f1c2431f1f9e2a8d945063870851e2e55e739720298b72364f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16834314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60ef25d8fcdb329022583c21ff973b1f7c9043a69c6d2d5ec3d615daa484724d`

```dockerfile
```

-	Layers:
	-	`sha256:54e5e996b4614d76cd312d5529df900d9540c64e96a17ab848540c60e8aaf750`  
		Last Modified: Thu, 09 Jul 2026 19:12:31 GMT  
		Size: 16.8 MB (16799207 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:62f7e05598ba74e7e3f81a98b82ad5dce6af7ffb4b8b170895d47eb51bf1d7f3`  
		Last Modified: Thu, 09 Jul 2026 19:12:30 GMT  
		Size: 35.1 KB (35107 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:4bc4777950abccc45815439b50b0a5f90f5803806c7c1fcc217ec5744c265de7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.2 MB (267249663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5ffb5285b6ef493376f73dda40a96cb17ced0e950d17f2e23f72dc5c73845c1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 09 Jul 2026 18:34:49 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 09 Jul 2026 18:34:49 GMT
CMD ["/bin/bash"]
# Thu, 09 Jul 2026 19:09:42 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 09 Jul 2026 19:09:44 GMT
ENV GOSU_VERSION=1.19
# Thu, 09 Jul 2026 19:09:44 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 09 Jul 2026 19:10:18 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 09 Jul 2026 19:10:19 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 09 Jul 2026 19:10:19 GMT
ENV MYSQL_MAJOR=9.7
# Thu, 09 Jul 2026 19:10:19 GMT
ENV MYSQL_VERSION=9.7.1-1.el9
# Thu, 09 Jul 2026 19:10:19 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 09 Jul 2026 19:10:58 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 09 Jul 2026 19:10:58 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 09 Jul 2026 19:10:58 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Thu, 09 Jul 2026 19:11:52 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 09 Jul 2026 19:11:52 GMT
VOLUME [/var/lib/mysql]
# Thu, 09 Jul 2026 19:11:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 09 Jul 2026 19:11:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 Jul 2026 19:11:52 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 09 Jul 2026 19:11:52 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c376d03c53ced8ad660398cf332d5f794462a489fe0fc7a2a87af992dcb3a48d`  
		Last Modified: Thu, 09 Jul 2026 18:35:00 GMT  
		Size: 46.5 MB (46475986 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:764b3f5a80d6d812b13a0938ff505e7e716011725fe09599afd0d1b6066ada9f`  
		Last Modified: Thu, 09 Jul 2026 19:12:27 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eacdca1c97077030436260cd6bb30a78d3e6ac67cafd9e7dd24f0ce1d80199ef`  
		Last Modified: Thu, 09 Jul 2026 19:12:28 GMT  
		Size: 737.5 KB (737529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a7674f20c6d9b2221572c7e2b7f4c3221e733089d54c585b0e4f4050f74df36`  
		Last Modified: Thu, 09 Jul 2026 19:12:28 GMT  
		Size: 5.8 MB (5814946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e64224a485ec7598e07bbaedec376c387235a841636c391386e250b442e63262`  
		Last Modified: Thu, 09 Jul 2026 19:12:28 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2953739ba54b306a693a68724f091f163c729cc4248105f6bee8296cadbe587`  
		Last Modified: Thu, 09 Jul 2026 19:12:29 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57b11cc044c56dd80abda8ea46154b91346502ec256dc5499184cbddd0e74e53`  
		Last Modified: Thu, 09 Jul 2026 19:12:32 GMT  
		Size: 57.0 MB (57002784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3de736969ff846bd0a65fe1f65956b7adab746b4b561d0fdf5bb5dc4d16a8fd2`  
		Last Modified: Thu, 09 Jul 2026 19:12:29 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4686d34e507daeb0e98207dd055958f12b9bba44d521fcca7f4930052a4dab84`  
		Last Modified: Thu, 09 Jul 2026 19:12:34 GMT  
		Size: 157.2 MB (157209041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72b37347148f1eac56e4cb422514f29c00faa68d52abf532bb969a22fab8b663`  
		Last Modified: Thu, 09 Jul 2026 19:12:30 GMT  
		Size: 5.2 KB (5231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9` - unknown; unknown

```console
$ docker pull mysql@sha256:b52f034a50ab1bfff4939254841e80ac715d1c85ad7d5482adc0b01b2f3979e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2fa93d3b6a7a71770bb1e8d2a3ce01e1c3c7a7cf79f43c4afc41d71c4bf54fc`

```dockerfile
```

-	Layers:
	-	`sha256:6d35f4fbdbdab2bfbb17d6c01ff07b763ba902b2ca37c11b9e0556ffe6aa5819`  
		Last Modified: Thu, 09 Jul 2026 19:12:28 GMT  
		Size: 16.8 MB (16797679 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4a484ac9e35cafb6444aee5d98a8a3cb60f6b95eda3e245c2412eb8313326b0d`  
		Last Modified: Thu, 09 Jul 2026 19:12:28 GMT  
		Size: 35.4 KB (35449 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9-oracle`

```console
$ docker pull mysql@sha256:ae269281abffe401d65f04cb54d45a069a495b8174b9c0a815e502fed7fa0370
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:91e42ae952f37b724f945c734cf067c65aa66bf15d4992a7f7c174918d15fc77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.9 MB (270857504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:914b9d749556f431a13a98293ea1e093446b93c6f4a70e758505650808fa545d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 09 Jul 2026 18:34:49 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 09 Jul 2026 18:34:49 GMT
CMD ["/bin/bash"]
# Thu, 09 Jul 2026 19:09:53 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 09 Jul 2026 19:09:54 GMT
ENV GOSU_VERSION=1.19
# Thu, 09 Jul 2026 19:09:54 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 09 Jul 2026 19:10:27 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 09 Jul 2026 19:10:28 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 09 Jul 2026 19:10:28 GMT
ENV MYSQL_MAJOR=9.7
# Thu, 09 Jul 2026 19:10:28 GMT
ENV MYSQL_VERSION=9.7.1-1.el9
# Thu, 09 Jul 2026 19:10:28 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 09 Jul 2026 19:11:06 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 09 Jul 2026 19:11:06 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 09 Jul 2026 19:11:06 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Thu, 09 Jul 2026 19:11:54 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 09 Jul 2026 19:11:54 GMT
VOLUME [/var/lib/mysql]
# Thu, 09 Jul 2026 19:11:54 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 09 Jul 2026 19:11:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 Jul 2026 19:11:54 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 09 Jul 2026 19:11:54 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ecf47111addbec56de180c5066787a73b3998b900305972f62be7fc13c26caa3`  
		Last Modified: Thu, 09 Jul 2026 18:35:00 GMT  
		Size: 47.9 MB (47928988 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4c51daaa784691ea28f53026076e6cf56b7f0ed81f9b1f768d642e20cd95f91`  
		Last Modified: Thu, 09 Jul 2026 19:12:30 GMT  
		Size: 882.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad18077cf381e6ccaafad4a1e120942a81325d527ba90c8f3fb17d6fac5830a9`  
		Last Modified: Thu, 09 Jul 2026 19:12:31 GMT  
		Size: 783.6 KB (783558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f5b662d2d4d6db9cd98c3ce4a47dc2c7d01335c1fe054d57cd58b31eefc2748`  
		Last Modified: Thu, 09 Jul 2026 19:12:30 GMT  
		Size: 6.2 MB (6194490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:890dd41ed99a7c2fe3c1a6589b2e0adaaa2c84ebf4d2dc086285586548ecda92`  
		Last Modified: Thu, 09 Jul 2026 19:12:30 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1257e53bba2aeeccda63f98a3f4d452cfb9d676b96d4703b22b1d1613440faa9`  
		Last Modified: Thu, 09 Jul 2026 19:12:32 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b6fad81c71797f0cf817afc457b77dbb2dc38d5a37a0d7a974eee21657c0727`  
		Last Modified: Thu, 09 Jul 2026 19:12:34 GMT  
		Size: 57.0 MB (56998712 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aeff22d410558cda12b806f6fe76e71d148a77967c188860ecf670380b597494`  
		Last Modified: Thu, 09 Jul 2026 19:12:32 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04eb080c2a10a0e3b689a2b4d3c49f806102a8107c02322926927b0b8b929ad9`  
		Last Modified: Thu, 09 Jul 2026 19:12:36 GMT  
		Size: 158.9 MB (158942384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:446597dc68d24d8917a37b56402c6a9dc47e66ebd4e14401633df9e924545e88`  
		Last Modified: Thu, 09 Jul 2026 19:12:33 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:57e20b5be94b72f1c2431f1f9e2a8d945063870851e2e55e739720298b72364f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16834314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60ef25d8fcdb329022583c21ff973b1f7c9043a69c6d2d5ec3d615daa484724d`

```dockerfile
```

-	Layers:
	-	`sha256:54e5e996b4614d76cd312d5529df900d9540c64e96a17ab848540c60e8aaf750`  
		Last Modified: Thu, 09 Jul 2026 19:12:31 GMT  
		Size: 16.8 MB (16799207 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:62f7e05598ba74e7e3f81a98b82ad5dce6af7ffb4b8b170895d47eb51bf1d7f3`  
		Last Modified: Thu, 09 Jul 2026 19:12:30 GMT  
		Size: 35.1 KB (35107 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:4bc4777950abccc45815439b50b0a5f90f5803806c7c1fcc217ec5744c265de7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.2 MB (267249663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5ffb5285b6ef493376f73dda40a96cb17ced0e950d17f2e23f72dc5c73845c1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 09 Jul 2026 18:34:49 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 09 Jul 2026 18:34:49 GMT
CMD ["/bin/bash"]
# Thu, 09 Jul 2026 19:09:42 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 09 Jul 2026 19:09:44 GMT
ENV GOSU_VERSION=1.19
# Thu, 09 Jul 2026 19:09:44 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 09 Jul 2026 19:10:18 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 09 Jul 2026 19:10:19 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 09 Jul 2026 19:10:19 GMT
ENV MYSQL_MAJOR=9.7
# Thu, 09 Jul 2026 19:10:19 GMT
ENV MYSQL_VERSION=9.7.1-1.el9
# Thu, 09 Jul 2026 19:10:19 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 09 Jul 2026 19:10:58 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 09 Jul 2026 19:10:58 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 09 Jul 2026 19:10:58 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Thu, 09 Jul 2026 19:11:52 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 09 Jul 2026 19:11:52 GMT
VOLUME [/var/lib/mysql]
# Thu, 09 Jul 2026 19:11:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 09 Jul 2026 19:11:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 Jul 2026 19:11:52 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 09 Jul 2026 19:11:52 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c376d03c53ced8ad660398cf332d5f794462a489fe0fc7a2a87af992dcb3a48d`  
		Last Modified: Thu, 09 Jul 2026 18:35:00 GMT  
		Size: 46.5 MB (46475986 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:764b3f5a80d6d812b13a0938ff505e7e716011725fe09599afd0d1b6066ada9f`  
		Last Modified: Thu, 09 Jul 2026 19:12:27 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eacdca1c97077030436260cd6bb30a78d3e6ac67cafd9e7dd24f0ce1d80199ef`  
		Last Modified: Thu, 09 Jul 2026 19:12:28 GMT  
		Size: 737.5 KB (737529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a7674f20c6d9b2221572c7e2b7f4c3221e733089d54c585b0e4f4050f74df36`  
		Last Modified: Thu, 09 Jul 2026 19:12:28 GMT  
		Size: 5.8 MB (5814946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e64224a485ec7598e07bbaedec376c387235a841636c391386e250b442e63262`  
		Last Modified: Thu, 09 Jul 2026 19:12:28 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2953739ba54b306a693a68724f091f163c729cc4248105f6bee8296cadbe587`  
		Last Modified: Thu, 09 Jul 2026 19:12:29 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57b11cc044c56dd80abda8ea46154b91346502ec256dc5499184cbddd0e74e53`  
		Last Modified: Thu, 09 Jul 2026 19:12:32 GMT  
		Size: 57.0 MB (57002784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3de736969ff846bd0a65fe1f65956b7adab746b4b561d0fdf5bb5dc4d16a8fd2`  
		Last Modified: Thu, 09 Jul 2026 19:12:29 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4686d34e507daeb0e98207dd055958f12b9bba44d521fcca7f4930052a4dab84`  
		Last Modified: Thu, 09 Jul 2026 19:12:34 GMT  
		Size: 157.2 MB (157209041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72b37347148f1eac56e4cb422514f29c00faa68d52abf532bb969a22fab8b663`  
		Last Modified: Thu, 09 Jul 2026 19:12:30 GMT  
		Size: 5.2 KB (5231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:b52f034a50ab1bfff4939254841e80ac715d1c85ad7d5482adc0b01b2f3979e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2fa93d3b6a7a71770bb1e8d2a3ce01e1c3c7a7cf79f43c4afc41d71c4bf54fc`

```dockerfile
```

-	Layers:
	-	`sha256:6d35f4fbdbdab2bfbb17d6c01ff07b763ba902b2ca37c11b9e0556ffe6aa5819`  
		Last Modified: Thu, 09 Jul 2026 19:12:28 GMT  
		Size: 16.8 MB (16797679 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4a484ac9e35cafb6444aee5d98a8a3cb60f6b95eda3e245c2412eb8313326b0d`  
		Last Modified: Thu, 09 Jul 2026 19:12:28 GMT  
		Size: 35.4 KB (35449 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9-oraclelinux9`

```console
$ docker pull mysql@sha256:ae269281abffe401d65f04cb54d45a069a495b8174b9c0a815e502fed7fa0370
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:91e42ae952f37b724f945c734cf067c65aa66bf15d4992a7f7c174918d15fc77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.9 MB (270857504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:914b9d749556f431a13a98293ea1e093446b93c6f4a70e758505650808fa545d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 09 Jul 2026 18:34:49 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 09 Jul 2026 18:34:49 GMT
CMD ["/bin/bash"]
# Thu, 09 Jul 2026 19:09:53 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 09 Jul 2026 19:09:54 GMT
ENV GOSU_VERSION=1.19
# Thu, 09 Jul 2026 19:09:54 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 09 Jul 2026 19:10:27 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 09 Jul 2026 19:10:28 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 09 Jul 2026 19:10:28 GMT
ENV MYSQL_MAJOR=9.7
# Thu, 09 Jul 2026 19:10:28 GMT
ENV MYSQL_VERSION=9.7.1-1.el9
# Thu, 09 Jul 2026 19:10:28 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 09 Jul 2026 19:11:06 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 09 Jul 2026 19:11:06 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 09 Jul 2026 19:11:06 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Thu, 09 Jul 2026 19:11:54 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 09 Jul 2026 19:11:54 GMT
VOLUME [/var/lib/mysql]
# Thu, 09 Jul 2026 19:11:54 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 09 Jul 2026 19:11:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 Jul 2026 19:11:54 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 09 Jul 2026 19:11:54 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ecf47111addbec56de180c5066787a73b3998b900305972f62be7fc13c26caa3`  
		Last Modified: Thu, 09 Jul 2026 18:35:00 GMT  
		Size: 47.9 MB (47928988 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4c51daaa784691ea28f53026076e6cf56b7f0ed81f9b1f768d642e20cd95f91`  
		Last Modified: Thu, 09 Jul 2026 19:12:30 GMT  
		Size: 882.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad18077cf381e6ccaafad4a1e120942a81325d527ba90c8f3fb17d6fac5830a9`  
		Last Modified: Thu, 09 Jul 2026 19:12:31 GMT  
		Size: 783.6 KB (783558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f5b662d2d4d6db9cd98c3ce4a47dc2c7d01335c1fe054d57cd58b31eefc2748`  
		Last Modified: Thu, 09 Jul 2026 19:12:30 GMT  
		Size: 6.2 MB (6194490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:890dd41ed99a7c2fe3c1a6589b2e0adaaa2c84ebf4d2dc086285586548ecda92`  
		Last Modified: Thu, 09 Jul 2026 19:12:30 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1257e53bba2aeeccda63f98a3f4d452cfb9d676b96d4703b22b1d1613440faa9`  
		Last Modified: Thu, 09 Jul 2026 19:12:32 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b6fad81c71797f0cf817afc457b77dbb2dc38d5a37a0d7a974eee21657c0727`  
		Last Modified: Thu, 09 Jul 2026 19:12:34 GMT  
		Size: 57.0 MB (56998712 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aeff22d410558cda12b806f6fe76e71d148a77967c188860ecf670380b597494`  
		Last Modified: Thu, 09 Jul 2026 19:12:32 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04eb080c2a10a0e3b689a2b4d3c49f806102a8107c02322926927b0b8b929ad9`  
		Last Modified: Thu, 09 Jul 2026 19:12:36 GMT  
		Size: 158.9 MB (158942384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:446597dc68d24d8917a37b56402c6a9dc47e66ebd4e14401633df9e924545e88`  
		Last Modified: Thu, 09 Jul 2026 19:12:33 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:57e20b5be94b72f1c2431f1f9e2a8d945063870851e2e55e739720298b72364f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16834314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60ef25d8fcdb329022583c21ff973b1f7c9043a69c6d2d5ec3d615daa484724d`

```dockerfile
```

-	Layers:
	-	`sha256:54e5e996b4614d76cd312d5529df900d9540c64e96a17ab848540c60e8aaf750`  
		Last Modified: Thu, 09 Jul 2026 19:12:31 GMT  
		Size: 16.8 MB (16799207 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:62f7e05598ba74e7e3f81a98b82ad5dce6af7ffb4b8b170895d47eb51bf1d7f3`  
		Last Modified: Thu, 09 Jul 2026 19:12:30 GMT  
		Size: 35.1 KB (35107 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:4bc4777950abccc45815439b50b0a5f90f5803806c7c1fcc217ec5744c265de7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.2 MB (267249663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5ffb5285b6ef493376f73dda40a96cb17ced0e950d17f2e23f72dc5c73845c1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 09 Jul 2026 18:34:49 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 09 Jul 2026 18:34:49 GMT
CMD ["/bin/bash"]
# Thu, 09 Jul 2026 19:09:42 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 09 Jul 2026 19:09:44 GMT
ENV GOSU_VERSION=1.19
# Thu, 09 Jul 2026 19:09:44 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 09 Jul 2026 19:10:18 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 09 Jul 2026 19:10:19 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 09 Jul 2026 19:10:19 GMT
ENV MYSQL_MAJOR=9.7
# Thu, 09 Jul 2026 19:10:19 GMT
ENV MYSQL_VERSION=9.7.1-1.el9
# Thu, 09 Jul 2026 19:10:19 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 09 Jul 2026 19:10:58 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 09 Jul 2026 19:10:58 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 09 Jul 2026 19:10:58 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Thu, 09 Jul 2026 19:11:52 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 09 Jul 2026 19:11:52 GMT
VOLUME [/var/lib/mysql]
# Thu, 09 Jul 2026 19:11:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 09 Jul 2026 19:11:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 Jul 2026 19:11:52 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 09 Jul 2026 19:11:52 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c376d03c53ced8ad660398cf332d5f794462a489fe0fc7a2a87af992dcb3a48d`  
		Last Modified: Thu, 09 Jul 2026 18:35:00 GMT  
		Size: 46.5 MB (46475986 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:764b3f5a80d6d812b13a0938ff505e7e716011725fe09599afd0d1b6066ada9f`  
		Last Modified: Thu, 09 Jul 2026 19:12:27 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eacdca1c97077030436260cd6bb30a78d3e6ac67cafd9e7dd24f0ce1d80199ef`  
		Last Modified: Thu, 09 Jul 2026 19:12:28 GMT  
		Size: 737.5 KB (737529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a7674f20c6d9b2221572c7e2b7f4c3221e733089d54c585b0e4f4050f74df36`  
		Last Modified: Thu, 09 Jul 2026 19:12:28 GMT  
		Size: 5.8 MB (5814946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e64224a485ec7598e07bbaedec376c387235a841636c391386e250b442e63262`  
		Last Modified: Thu, 09 Jul 2026 19:12:28 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2953739ba54b306a693a68724f091f163c729cc4248105f6bee8296cadbe587`  
		Last Modified: Thu, 09 Jul 2026 19:12:29 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57b11cc044c56dd80abda8ea46154b91346502ec256dc5499184cbddd0e74e53`  
		Last Modified: Thu, 09 Jul 2026 19:12:32 GMT  
		Size: 57.0 MB (57002784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3de736969ff846bd0a65fe1f65956b7adab746b4b561d0fdf5bb5dc4d16a8fd2`  
		Last Modified: Thu, 09 Jul 2026 19:12:29 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4686d34e507daeb0e98207dd055958f12b9bba44d521fcca7f4930052a4dab84`  
		Last Modified: Thu, 09 Jul 2026 19:12:34 GMT  
		Size: 157.2 MB (157209041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72b37347148f1eac56e4cb422514f29c00faa68d52abf532bb969a22fab8b663`  
		Last Modified: Thu, 09 Jul 2026 19:12:30 GMT  
		Size: 5.2 KB (5231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:b52f034a50ab1bfff4939254841e80ac715d1c85ad7d5482adc0b01b2f3979e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2fa93d3b6a7a71770bb1e8d2a3ce01e1c3c7a7cf79f43c4afc41d71c4bf54fc`

```dockerfile
```

-	Layers:
	-	`sha256:6d35f4fbdbdab2bfbb17d6c01ff07b763ba902b2ca37c11b9e0556ffe6aa5819`  
		Last Modified: Thu, 09 Jul 2026 19:12:28 GMT  
		Size: 16.8 MB (16797679 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4a484ac9e35cafb6444aee5d98a8a3cb60f6b95eda3e245c2412eb8313326b0d`  
		Last Modified: Thu, 09 Jul 2026 19:12:28 GMT  
		Size: 35.4 KB (35449 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9.7`

```console
$ docker pull mysql@sha256:ae269281abffe401d65f04cb54d45a069a495b8174b9c0a815e502fed7fa0370
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9.7` - linux; amd64

```console
$ docker pull mysql@sha256:91e42ae952f37b724f945c734cf067c65aa66bf15d4992a7f7c174918d15fc77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.9 MB (270857504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:914b9d749556f431a13a98293ea1e093446b93c6f4a70e758505650808fa545d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 09 Jul 2026 18:34:49 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 09 Jul 2026 18:34:49 GMT
CMD ["/bin/bash"]
# Thu, 09 Jul 2026 19:09:53 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 09 Jul 2026 19:09:54 GMT
ENV GOSU_VERSION=1.19
# Thu, 09 Jul 2026 19:09:54 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 09 Jul 2026 19:10:27 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 09 Jul 2026 19:10:28 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 09 Jul 2026 19:10:28 GMT
ENV MYSQL_MAJOR=9.7
# Thu, 09 Jul 2026 19:10:28 GMT
ENV MYSQL_VERSION=9.7.1-1.el9
# Thu, 09 Jul 2026 19:10:28 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 09 Jul 2026 19:11:06 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 09 Jul 2026 19:11:06 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 09 Jul 2026 19:11:06 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Thu, 09 Jul 2026 19:11:54 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 09 Jul 2026 19:11:54 GMT
VOLUME [/var/lib/mysql]
# Thu, 09 Jul 2026 19:11:54 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 09 Jul 2026 19:11:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 Jul 2026 19:11:54 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 09 Jul 2026 19:11:54 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ecf47111addbec56de180c5066787a73b3998b900305972f62be7fc13c26caa3`  
		Last Modified: Thu, 09 Jul 2026 18:35:00 GMT  
		Size: 47.9 MB (47928988 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4c51daaa784691ea28f53026076e6cf56b7f0ed81f9b1f768d642e20cd95f91`  
		Last Modified: Thu, 09 Jul 2026 19:12:30 GMT  
		Size: 882.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad18077cf381e6ccaafad4a1e120942a81325d527ba90c8f3fb17d6fac5830a9`  
		Last Modified: Thu, 09 Jul 2026 19:12:31 GMT  
		Size: 783.6 KB (783558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f5b662d2d4d6db9cd98c3ce4a47dc2c7d01335c1fe054d57cd58b31eefc2748`  
		Last Modified: Thu, 09 Jul 2026 19:12:30 GMT  
		Size: 6.2 MB (6194490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:890dd41ed99a7c2fe3c1a6589b2e0adaaa2c84ebf4d2dc086285586548ecda92`  
		Last Modified: Thu, 09 Jul 2026 19:12:30 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1257e53bba2aeeccda63f98a3f4d452cfb9d676b96d4703b22b1d1613440faa9`  
		Last Modified: Thu, 09 Jul 2026 19:12:32 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b6fad81c71797f0cf817afc457b77dbb2dc38d5a37a0d7a974eee21657c0727`  
		Last Modified: Thu, 09 Jul 2026 19:12:34 GMT  
		Size: 57.0 MB (56998712 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aeff22d410558cda12b806f6fe76e71d148a77967c188860ecf670380b597494`  
		Last Modified: Thu, 09 Jul 2026 19:12:32 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04eb080c2a10a0e3b689a2b4d3c49f806102a8107c02322926927b0b8b929ad9`  
		Last Modified: Thu, 09 Jul 2026 19:12:36 GMT  
		Size: 158.9 MB (158942384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:446597dc68d24d8917a37b56402c6a9dc47e66ebd4e14401633df9e924545e88`  
		Last Modified: Thu, 09 Jul 2026 19:12:33 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7` - unknown; unknown

```console
$ docker pull mysql@sha256:57e20b5be94b72f1c2431f1f9e2a8d945063870851e2e55e739720298b72364f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16834314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60ef25d8fcdb329022583c21ff973b1f7c9043a69c6d2d5ec3d615daa484724d`

```dockerfile
```

-	Layers:
	-	`sha256:54e5e996b4614d76cd312d5529df900d9540c64e96a17ab848540c60e8aaf750`  
		Last Modified: Thu, 09 Jul 2026 19:12:31 GMT  
		Size: 16.8 MB (16799207 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:62f7e05598ba74e7e3f81a98b82ad5dce6af7ffb4b8b170895d47eb51bf1d7f3`  
		Last Modified: Thu, 09 Jul 2026 19:12:30 GMT  
		Size: 35.1 KB (35107 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9.7` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:4bc4777950abccc45815439b50b0a5f90f5803806c7c1fcc217ec5744c265de7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.2 MB (267249663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5ffb5285b6ef493376f73dda40a96cb17ced0e950d17f2e23f72dc5c73845c1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 09 Jul 2026 18:34:49 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 09 Jul 2026 18:34:49 GMT
CMD ["/bin/bash"]
# Thu, 09 Jul 2026 19:09:42 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 09 Jul 2026 19:09:44 GMT
ENV GOSU_VERSION=1.19
# Thu, 09 Jul 2026 19:09:44 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 09 Jul 2026 19:10:18 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 09 Jul 2026 19:10:19 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 09 Jul 2026 19:10:19 GMT
ENV MYSQL_MAJOR=9.7
# Thu, 09 Jul 2026 19:10:19 GMT
ENV MYSQL_VERSION=9.7.1-1.el9
# Thu, 09 Jul 2026 19:10:19 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 09 Jul 2026 19:10:58 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 09 Jul 2026 19:10:58 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 09 Jul 2026 19:10:58 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Thu, 09 Jul 2026 19:11:52 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 09 Jul 2026 19:11:52 GMT
VOLUME [/var/lib/mysql]
# Thu, 09 Jul 2026 19:11:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 09 Jul 2026 19:11:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 Jul 2026 19:11:52 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 09 Jul 2026 19:11:52 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c376d03c53ced8ad660398cf332d5f794462a489fe0fc7a2a87af992dcb3a48d`  
		Last Modified: Thu, 09 Jul 2026 18:35:00 GMT  
		Size: 46.5 MB (46475986 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:764b3f5a80d6d812b13a0938ff505e7e716011725fe09599afd0d1b6066ada9f`  
		Last Modified: Thu, 09 Jul 2026 19:12:27 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eacdca1c97077030436260cd6bb30a78d3e6ac67cafd9e7dd24f0ce1d80199ef`  
		Last Modified: Thu, 09 Jul 2026 19:12:28 GMT  
		Size: 737.5 KB (737529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a7674f20c6d9b2221572c7e2b7f4c3221e733089d54c585b0e4f4050f74df36`  
		Last Modified: Thu, 09 Jul 2026 19:12:28 GMT  
		Size: 5.8 MB (5814946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e64224a485ec7598e07bbaedec376c387235a841636c391386e250b442e63262`  
		Last Modified: Thu, 09 Jul 2026 19:12:28 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2953739ba54b306a693a68724f091f163c729cc4248105f6bee8296cadbe587`  
		Last Modified: Thu, 09 Jul 2026 19:12:29 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57b11cc044c56dd80abda8ea46154b91346502ec256dc5499184cbddd0e74e53`  
		Last Modified: Thu, 09 Jul 2026 19:12:32 GMT  
		Size: 57.0 MB (57002784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3de736969ff846bd0a65fe1f65956b7adab746b4b561d0fdf5bb5dc4d16a8fd2`  
		Last Modified: Thu, 09 Jul 2026 19:12:29 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4686d34e507daeb0e98207dd055958f12b9bba44d521fcca7f4930052a4dab84`  
		Last Modified: Thu, 09 Jul 2026 19:12:34 GMT  
		Size: 157.2 MB (157209041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72b37347148f1eac56e4cb422514f29c00faa68d52abf532bb969a22fab8b663`  
		Last Modified: Thu, 09 Jul 2026 19:12:30 GMT  
		Size: 5.2 KB (5231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7` - unknown; unknown

```console
$ docker pull mysql@sha256:b52f034a50ab1bfff4939254841e80ac715d1c85ad7d5482adc0b01b2f3979e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2fa93d3b6a7a71770bb1e8d2a3ce01e1c3c7a7cf79f43c4afc41d71c4bf54fc`

```dockerfile
```

-	Layers:
	-	`sha256:6d35f4fbdbdab2bfbb17d6c01ff07b763ba902b2ca37c11b9e0556ffe6aa5819`  
		Last Modified: Thu, 09 Jul 2026 19:12:28 GMT  
		Size: 16.8 MB (16797679 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4a484ac9e35cafb6444aee5d98a8a3cb60f6b95eda3e245c2412eb8313326b0d`  
		Last Modified: Thu, 09 Jul 2026 19:12:28 GMT  
		Size: 35.4 KB (35449 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9.7-oracle`

```console
$ docker pull mysql@sha256:ae269281abffe401d65f04cb54d45a069a495b8174b9c0a815e502fed7fa0370
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9.7-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:91e42ae952f37b724f945c734cf067c65aa66bf15d4992a7f7c174918d15fc77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.9 MB (270857504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:914b9d749556f431a13a98293ea1e093446b93c6f4a70e758505650808fa545d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 09 Jul 2026 18:34:49 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 09 Jul 2026 18:34:49 GMT
CMD ["/bin/bash"]
# Thu, 09 Jul 2026 19:09:53 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 09 Jul 2026 19:09:54 GMT
ENV GOSU_VERSION=1.19
# Thu, 09 Jul 2026 19:09:54 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 09 Jul 2026 19:10:27 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 09 Jul 2026 19:10:28 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 09 Jul 2026 19:10:28 GMT
ENV MYSQL_MAJOR=9.7
# Thu, 09 Jul 2026 19:10:28 GMT
ENV MYSQL_VERSION=9.7.1-1.el9
# Thu, 09 Jul 2026 19:10:28 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 09 Jul 2026 19:11:06 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 09 Jul 2026 19:11:06 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 09 Jul 2026 19:11:06 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Thu, 09 Jul 2026 19:11:54 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 09 Jul 2026 19:11:54 GMT
VOLUME [/var/lib/mysql]
# Thu, 09 Jul 2026 19:11:54 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 09 Jul 2026 19:11:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 Jul 2026 19:11:54 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 09 Jul 2026 19:11:54 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ecf47111addbec56de180c5066787a73b3998b900305972f62be7fc13c26caa3`  
		Last Modified: Thu, 09 Jul 2026 18:35:00 GMT  
		Size: 47.9 MB (47928988 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4c51daaa784691ea28f53026076e6cf56b7f0ed81f9b1f768d642e20cd95f91`  
		Last Modified: Thu, 09 Jul 2026 19:12:30 GMT  
		Size: 882.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad18077cf381e6ccaafad4a1e120942a81325d527ba90c8f3fb17d6fac5830a9`  
		Last Modified: Thu, 09 Jul 2026 19:12:31 GMT  
		Size: 783.6 KB (783558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f5b662d2d4d6db9cd98c3ce4a47dc2c7d01335c1fe054d57cd58b31eefc2748`  
		Last Modified: Thu, 09 Jul 2026 19:12:30 GMT  
		Size: 6.2 MB (6194490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:890dd41ed99a7c2fe3c1a6589b2e0adaaa2c84ebf4d2dc086285586548ecda92`  
		Last Modified: Thu, 09 Jul 2026 19:12:30 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1257e53bba2aeeccda63f98a3f4d452cfb9d676b96d4703b22b1d1613440faa9`  
		Last Modified: Thu, 09 Jul 2026 19:12:32 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b6fad81c71797f0cf817afc457b77dbb2dc38d5a37a0d7a974eee21657c0727`  
		Last Modified: Thu, 09 Jul 2026 19:12:34 GMT  
		Size: 57.0 MB (56998712 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aeff22d410558cda12b806f6fe76e71d148a77967c188860ecf670380b597494`  
		Last Modified: Thu, 09 Jul 2026 19:12:32 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04eb080c2a10a0e3b689a2b4d3c49f806102a8107c02322926927b0b8b929ad9`  
		Last Modified: Thu, 09 Jul 2026 19:12:36 GMT  
		Size: 158.9 MB (158942384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:446597dc68d24d8917a37b56402c6a9dc47e66ebd4e14401633df9e924545e88`  
		Last Modified: Thu, 09 Jul 2026 19:12:33 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:57e20b5be94b72f1c2431f1f9e2a8d945063870851e2e55e739720298b72364f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16834314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60ef25d8fcdb329022583c21ff973b1f7c9043a69c6d2d5ec3d615daa484724d`

```dockerfile
```

-	Layers:
	-	`sha256:54e5e996b4614d76cd312d5529df900d9540c64e96a17ab848540c60e8aaf750`  
		Last Modified: Thu, 09 Jul 2026 19:12:31 GMT  
		Size: 16.8 MB (16799207 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:62f7e05598ba74e7e3f81a98b82ad5dce6af7ffb4b8b170895d47eb51bf1d7f3`  
		Last Modified: Thu, 09 Jul 2026 19:12:30 GMT  
		Size: 35.1 KB (35107 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9.7-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:4bc4777950abccc45815439b50b0a5f90f5803806c7c1fcc217ec5744c265de7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.2 MB (267249663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5ffb5285b6ef493376f73dda40a96cb17ced0e950d17f2e23f72dc5c73845c1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 09 Jul 2026 18:34:49 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 09 Jul 2026 18:34:49 GMT
CMD ["/bin/bash"]
# Thu, 09 Jul 2026 19:09:42 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 09 Jul 2026 19:09:44 GMT
ENV GOSU_VERSION=1.19
# Thu, 09 Jul 2026 19:09:44 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 09 Jul 2026 19:10:18 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 09 Jul 2026 19:10:19 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 09 Jul 2026 19:10:19 GMT
ENV MYSQL_MAJOR=9.7
# Thu, 09 Jul 2026 19:10:19 GMT
ENV MYSQL_VERSION=9.7.1-1.el9
# Thu, 09 Jul 2026 19:10:19 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 09 Jul 2026 19:10:58 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 09 Jul 2026 19:10:58 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 09 Jul 2026 19:10:58 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Thu, 09 Jul 2026 19:11:52 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 09 Jul 2026 19:11:52 GMT
VOLUME [/var/lib/mysql]
# Thu, 09 Jul 2026 19:11:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 09 Jul 2026 19:11:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 Jul 2026 19:11:52 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 09 Jul 2026 19:11:52 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c376d03c53ced8ad660398cf332d5f794462a489fe0fc7a2a87af992dcb3a48d`  
		Last Modified: Thu, 09 Jul 2026 18:35:00 GMT  
		Size: 46.5 MB (46475986 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:764b3f5a80d6d812b13a0938ff505e7e716011725fe09599afd0d1b6066ada9f`  
		Last Modified: Thu, 09 Jul 2026 19:12:27 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eacdca1c97077030436260cd6bb30a78d3e6ac67cafd9e7dd24f0ce1d80199ef`  
		Last Modified: Thu, 09 Jul 2026 19:12:28 GMT  
		Size: 737.5 KB (737529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a7674f20c6d9b2221572c7e2b7f4c3221e733089d54c585b0e4f4050f74df36`  
		Last Modified: Thu, 09 Jul 2026 19:12:28 GMT  
		Size: 5.8 MB (5814946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e64224a485ec7598e07bbaedec376c387235a841636c391386e250b442e63262`  
		Last Modified: Thu, 09 Jul 2026 19:12:28 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2953739ba54b306a693a68724f091f163c729cc4248105f6bee8296cadbe587`  
		Last Modified: Thu, 09 Jul 2026 19:12:29 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57b11cc044c56dd80abda8ea46154b91346502ec256dc5499184cbddd0e74e53`  
		Last Modified: Thu, 09 Jul 2026 19:12:32 GMT  
		Size: 57.0 MB (57002784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3de736969ff846bd0a65fe1f65956b7adab746b4b561d0fdf5bb5dc4d16a8fd2`  
		Last Modified: Thu, 09 Jul 2026 19:12:29 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4686d34e507daeb0e98207dd055958f12b9bba44d521fcca7f4930052a4dab84`  
		Last Modified: Thu, 09 Jul 2026 19:12:34 GMT  
		Size: 157.2 MB (157209041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72b37347148f1eac56e4cb422514f29c00faa68d52abf532bb969a22fab8b663`  
		Last Modified: Thu, 09 Jul 2026 19:12:30 GMT  
		Size: 5.2 KB (5231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:b52f034a50ab1bfff4939254841e80ac715d1c85ad7d5482adc0b01b2f3979e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2fa93d3b6a7a71770bb1e8d2a3ce01e1c3c7a7cf79f43c4afc41d71c4bf54fc`

```dockerfile
```

-	Layers:
	-	`sha256:6d35f4fbdbdab2bfbb17d6c01ff07b763ba902b2ca37c11b9e0556ffe6aa5819`  
		Last Modified: Thu, 09 Jul 2026 19:12:28 GMT  
		Size: 16.8 MB (16797679 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4a484ac9e35cafb6444aee5d98a8a3cb60f6b95eda3e245c2412eb8313326b0d`  
		Last Modified: Thu, 09 Jul 2026 19:12:28 GMT  
		Size: 35.4 KB (35449 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9.7-oraclelinux9`

```console
$ docker pull mysql@sha256:ae269281abffe401d65f04cb54d45a069a495b8174b9c0a815e502fed7fa0370
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9.7-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:91e42ae952f37b724f945c734cf067c65aa66bf15d4992a7f7c174918d15fc77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.9 MB (270857504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:914b9d749556f431a13a98293ea1e093446b93c6f4a70e758505650808fa545d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 09 Jul 2026 18:34:49 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 09 Jul 2026 18:34:49 GMT
CMD ["/bin/bash"]
# Thu, 09 Jul 2026 19:09:53 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 09 Jul 2026 19:09:54 GMT
ENV GOSU_VERSION=1.19
# Thu, 09 Jul 2026 19:09:54 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 09 Jul 2026 19:10:27 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 09 Jul 2026 19:10:28 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 09 Jul 2026 19:10:28 GMT
ENV MYSQL_MAJOR=9.7
# Thu, 09 Jul 2026 19:10:28 GMT
ENV MYSQL_VERSION=9.7.1-1.el9
# Thu, 09 Jul 2026 19:10:28 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 09 Jul 2026 19:11:06 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 09 Jul 2026 19:11:06 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 09 Jul 2026 19:11:06 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Thu, 09 Jul 2026 19:11:54 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 09 Jul 2026 19:11:54 GMT
VOLUME [/var/lib/mysql]
# Thu, 09 Jul 2026 19:11:54 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 09 Jul 2026 19:11:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 Jul 2026 19:11:54 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 09 Jul 2026 19:11:54 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ecf47111addbec56de180c5066787a73b3998b900305972f62be7fc13c26caa3`  
		Last Modified: Thu, 09 Jul 2026 18:35:00 GMT  
		Size: 47.9 MB (47928988 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4c51daaa784691ea28f53026076e6cf56b7f0ed81f9b1f768d642e20cd95f91`  
		Last Modified: Thu, 09 Jul 2026 19:12:30 GMT  
		Size: 882.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad18077cf381e6ccaafad4a1e120942a81325d527ba90c8f3fb17d6fac5830a9`  
		Last Modified: Thu, 09 Jul 2026 19:12:31 GMT  
		Size: 783.6 KB (783558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f5b662d2d4d6db9cd98c3ce4a47dc2c7d01335c1fe054d57cd58b31eefc2748`  
		Last Modified: Thu, 09 Jul 2026 19:12:30 GMT  
		Size: 6.2 MB (6194490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:890dd41ed99a7c2fe3c1a6589b2e0adaaa2c84ebf4d2dc086285586548ecda92`  
		Last Modified: Thu, 09 Jul 2026 19:12:30 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1257e53bba2aeeccda63f98a3f4d452cfb9d676b96d4703b22b1d1613440faa9`  
		Last Modified: Thu, 09 Jul 2026 19:12:32 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b6fad81c71797f0cf817afc457b77dbb2dc38d5a37a0d7a974eee21657c0727`  
		Last Modified: Thu, 09 Jul 2026 19:12:34 GMT  
		Size: 57.0 MB (56998712 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aeff22d410558cda12b806f6fe76e71d148a77967c188860ecf670380b597494`  
		Last Modified: Thu, 09 Jul 2026 19:12:32 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04eb080c2a10a0e3b689a2b4d3c49f806102a8107c02322926927b0b8b929ad9`  
		Last Modified: Thu, 09 Jul 2026 19:12:36 GMT  
		Size: 158.9 MB (158942384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:446597dc68d24d8917a37b56402c6a9dc47e66ebd4e14401633df9e924545e88`  
		Last Modified: Thu, 09 Jul 2026 19:12:33 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:57e20b5be94b72f1c2431f1f9e2a8d945063870851e2e55e739720298b72364f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16834314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60ef25d8fcdb329022583c21ff973b1f7c9043a69c6d2d5ec3d615daa484724d`

```dockerfile
```

-	Layers:
	-	`sha256:54e5e996b4614d76cd312d5529df900d9540c64e96a17ab848540c60e8aaf750`  
		Last Modified: Thu, 09 Jul 2026 19:12:31 GMT  
		Size: 16.8 MB (16799207 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:62f7e05598ba74e7e3f81a98b82ad5dce6af7ffb4b8b170895d47eb51bf1d7f3`  
		Last Modified: Thu, 09 Jul 2026 19:12:30 GMT  
		Size: 35.1 KB (35107 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9.7-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:4bc4777950abccc45815439b50b0a5f90f5803806c7c1fcc217ec5744c265de7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.2 MB (267249663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5ffb5285b6ef493376f73dda40a96cb17ced0e950d17f2e23f72dc5c73845c1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 09 Jul 2026 18:34:49 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 09 Jul 2026 18:34:49 GMT
CMD ["/bin/bash"]
# Thu, 09 Jul 2026 19:09:42 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 09 Jul 2026 19:09:44 GMT
ENV GOSU_VERSION=1.19
# Thu, 09 Jul 2026 19:09:44 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 09 Jul 2026 19:10:18 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 09 Jul 2026 19:10:19 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 09 Jul 2026 19:10:19 GMT
ENV MYSQL_MAJOR=9.7
# Thu, 09 Jul 2026 19:10:19 GMT
ENV MYSQL_VERSION=9.7.1-1.el9
# Thu, 09 Jul 2026 19:10:19 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 09 Jul 2026 19:10:58 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 09 Jul 2026 19:10:58 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 09 Jul 2026 19:10:58 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Thu, 09 Jul 2026 19:11:52 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 09 Jul 2026 19:11:52 GMT
VOLUME [/var/lib/mysql]
# Thu, 09 Jul 2026 19:11:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 09 Jul 2026 19:11:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 Jul 2026 19:11:52 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 09 Jul 2026 19:11:52 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c376d03c53ced8ad660398cf332d5f794462a489fe0fc7a2a87af992dcb3a48d`  
		Last Modified: Thu, 09 Jul 2026 18:35:00 GMT  
		Size: 46.5 MB (46475986 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:764b3f5a80d6d812b13a0938ff505e7e716011725fe09599afd0d1b6066ada9f`  
		Last Modified: Thu, 09 Jul 2026 19:12:27 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eacdca1c97077030436260cd6bb30a78d3e6ac67cafd9e7dd24f0ce1d80199ef`  
		Last Modified: Thu, 09 Jul 2026 19:12:28 GMT  
		Size: 737.5 KB (737529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a7674f20c6d9b2221572c7e2b7f4c3221e733089d54c585b0e4f4050f74df36`  
		Last Modified: Thu, 09 Jul 2026 19:12:28 GMT  
		Size: 5.8 MB (5814946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e64224a485ec7598e07bbaedec376c387235a841636c391386e250b442e63262`  
		Last Modified: Thu, 09 Jul 2026 19:12:28 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2953739ba54b306a693a68724f091f163c729cc4248105f6bee8296cadbe587`  
		Last Modified: Thu, 09 Jul 2026 19:12:29 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57b11cc044c56dd80abda8ea46154b91346502ec256dc5499184cbddd0e74e53`  
		Last Modified: Thu, 09 Jul 2026 19:12:32 GMT  
		Size: 57.0 MB (57002784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3de736969ff846bd0a65fe1f65956b7adab746b4b561d0fdf5bb5dc4d16a8fd2`  
		Last Modified: Thu, 09 Jul 2026 19:12:29 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4686d34e507daeb0e98207dd055958f12b9bba44d521fcca7f4930052a4dab84`  
		Last Modified: Thu, 09 Jul 2026 19:12:34 GMT  
		Size: 157.2 MB (157209041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72b37347148f1eac56e4cb422514f29c00faa68d52abf532bb969a22fab8b663`  
		Last Modified: Thu, 09 Jul 2026 19:12:30 GMT  
		Size: 5.2 KB (5231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:b52f034a50ab1bfff4939254841e80ac715d1c85ad7d5482adc0b01b2f3979e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2fa93d3b6a7a71770bb1e8d2a3ce01e1c3c7a7cf79f43c4afc41d71c4bf54fc`

```dockerfile
```

-	Layers:
	-	`sha256:6d35f4fbdbdab2bfbb17d6c01ff07b763ba902b2ca37c11b9e0556ffe6aa5819`  
		Last Modified: Thu, 09 Jul 2026 19:12:28 GMT  
		Size: 16.8 MB (16797679 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4a484ac9e35cafb6444aee5d98a8a3cb60f6b95eda3e245c2412eb8313326b0d`  
		Last Modified: Thu, 09 Jul 2026 19:12:28 GMT  
		Size: 35.4 KB (35449 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9.7.1`

```console
$ docker pull mysql@sha256:ae269281abffe401d65f04cb54d45a069a495b8174b9c0a815e502fed7fa0370
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9.7.1` - linux; amd64

```console
$ docker pull mysql@sha256:91e42ae952f37b724f945c734cf067c65aa66bf15d4992a7f7c174918d15fc77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.9 MB (270857504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:914b9d749556f431a13a98293ea1e093446b93c6f4a70e758505650808fa545d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 09 Jul 2026 18:34:49 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 09 Jul 2026 18:34:49 GMT
CMD ["/bin/bash"]
# Thu, 09 Jul 2026 19:09:53 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 09 Jul 2026 19:09:54 GMT
ENV GOSU_VERSION=1.19
# Thu, 09 Jul 2026 19:09:54 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 09 Jul 2026 19:10:27 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 09 Jul 2026 19:10:28 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 09 Jul 2026 19:10:28 GMT
ENV MYSQL_MAJOR=9.7
# Thu, 09 Jul 2026 19:10:28 GMT
ENV MYSQL_VERSION=9.7.1-1.el9
# Thu, 09 Jul 2026 19:10:28 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 09 Jul 2026 19:11:06 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 09 Jul 2026 19:11:06 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 09 Jul 2026 19:11:06 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Thu, 09 Jul 2026 19:11:54 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 09 Jul 2026 19:11:54 GMT
VOLUME [/var/lib/mysql]
# Thu, 09 Jul 2026 19:11:54 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 09 Jul 2026 19:11:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 Jul 2026 19:11:54 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 09 Jul 2026 19:11:54 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ecf47111addbec56de180c5066787a73b3998b900305972f62be7fc13c26caa3`  
		Last Modified: Thu, 09 Jul 2026 18:35:00 GMT  
		Size: 47.9 MB (47928988 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4c51daaa784691ea28f53026076e6cf56b7f0ed81f9b1f768d642e20cd95f91`  
		Last Modified: Thu, 09 Jul 2026 19:12:30 GMT  
		Size: 882.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad18077cf381e6ccaafad4a1e120942a81325d527ba90c8f3fb17d6fac5830a9`  
		Last Modified: Thu, 09 Jul 2026 19:12:31 GMT  
		Size: 783.6 KB (783558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f5b662d2d4d6db9cd98c3ce4a47dc2c7d01335c1fe054d57cd58b31eefc2748`  
		Last Modified: Thu, 09 Jul 2026 19:12:30 GMT  
		Size: 6.2 MB (6194490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:890dd41ed99a7c2fe3c1a6589b2e0adaaa2c84ebf4d2dc086285586548ecda92`  
		Last Modified: Thu, 09 Jul 2026 19:12:30 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1257e53bba2aeeccda63f98a3f4d452cfb9d676b96d4703b22b1d1613440faa9`  
		Last Modified: Thu, 09 Jul 2026 19:12:32 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b6fad81c71797f0cf817afc457b77dbb2dc38d5a37a0d7a974eee21657c0727`  
		Last Modified: Thu, 09 Jul 2026 19:12:34 GMT  
		Size: 57.0 MB (56998712 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aeff22d410558cda12b806f6fe76e71d148a77967c188860ecf670380b597494`  
		Last Modified: Thu, 09 Jul 2026 19:12:32 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04eb080c2a10a0e3b689a2b4d3c49f806102a8107c02322926927b0b8b929ad9`  
		Last Modified: Thu, 09 Jul 2026 19:12:36 GMT  
		Size: 158.9 MB (158942384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:446597dc68d24d8917a37b56402c6a9dc47e66ebd4e14401633df9e924545e88`  
		Last Modified: Thu, 09 Jul 2026 19:12:33 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7.1` - unknown; unknown

```console
$ docker pull mysql@sha256:57e20b5be94b72f1c2431f1f9e2a8d945063870851e2e55e739720298b72364f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16834314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60ef25d8fcdb329022583c21ff973b1f7c9043a69c6d2d5ec3d615daa484724d`

```dockerfile
```

-	Layers:
	-	`sha256:54e5e996b4614d76cd312d5529df900d9540c64e96a17ab848540c60e8aaf750`  
		Last Modified: Thu, 09 Jul 2026 19:12:31 GMT  
		Size: 16.8 MB (16799207 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:62f7e05598ba74e7e3f81a98b82ad5dce6af7ffb4b8b170895d47eb51bf1d7f3`  
		Last Modified: Thu, 09 Jul 2026 19:12:30 GMT  
		Size: 35.1 KB (35107 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9.7.1` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:4bc4777950abccc45815439b50b0a5f90f5803806c7c1fcc217ec5744c265de7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.2 MB (267249663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5ffb5285b6ef493376f73dda40a96cb17ced0e950d17f2e23f72dc5c73845c1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 09 Jul 2026 18:34:49 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 09 Jul 2026 18:34:49 GMT
CMD ["/bin/bash"]
# Thu, 09 Jul 2026 19:09:42 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 09 Jul 2026 19:09:44 GMT
ENV GOSU_VERSION=1.19
# Thu, 09 Jul 2026 19:09:44 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 09 Jul 2026 19:10:18 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 09 Jul 2026 19:10:19 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 09 Jul 2026 19:10:19 GMT
ENV MYSQL_MAJOR=9.7
# Thu, 09 Jul 2026 19:10:19 GMT
ENV MYSQL_VERSION=9.7.1-1.el9
# Thu, 09 Jul 2026 19:10:19 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 09 Jul 2026 19:10:58 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 09 Jul 2026 19:10:58 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 09 Jul 2026 19:10:58 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Thu, 09 Jul 2026 19:11:52 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 09 Jul 2026 19:11:52 GMT
VOLUME [/var/lib/mysql]
# Thu, 09 Jul 2026 19:11:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 09 Jul 2026 19:11:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 Jul 2026 19:11:52 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 09 Jul 2026 19:11:52 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c376d03c53ced8ad660398cf332d5f794462a489fe0fc7a2a87af992dcb3a48d`  
		Last Modified: Thu, 09 Jul 2026 18:35:00 GMT  
		Size: 46.5 MB (46475986 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:764b3f5a80d6d812b13a0938ff505e7e716011725fe09599afd0d1b6066ada9f`  
		Last Modified: Thu, 09 Jul 2026 19:12:27 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eacdca1c97077030436260cd6bb30a78d3e6ac67cafd9e7dd24f0ce1d80199ef`  
		Last Modified: Thu, 09 Jul 2026 19:12:28 GMT  
		Size: 737.5 KB (737529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a7674f20c6d9b2221572c7e2b7f4c3221e733089d54c585b0e4f4050f74df36`  
		Last Modified: Thu, 09 Jul 2026 19:12:28 GMT  
		Size: 5.8 MB (5814946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e64224a485ec7598e07bbaedec376c387235a841636c391386e250b442e63262`  
		Last Modified: Thu, 09 Jul 2026 19:12:28 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2953739ba54b306a693a68724f091f163c729cc4248105f6bee8296cadbe587`  
		Last Modified: Thu, 09 Jul 2026 19:12:29 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57b11cc044c56dd80abda8ea46154b91346502ec256dc5499184cbddd0e74e53`  
		Last Modified: Thu, 09 Jul 2026 19:12:32 GMT  
		Size: 57.0 MB (57002784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3de736969ff846bd0a65fe1f65956b7adab746b4b561d0fdf5bb5dc4d16a8fd2`  
		Last Modified: Thu, 09 Jul 2026 19:12:29 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4686d34e507daeb0e98207dd055958f12b9bba44d521fcca7f4930052a4dab84`  
		Last Modified: Thu, 09 Jul 2026 19:12:34 GMT  
		Size: 157.2 MB (157209041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72b37347148f1eac56e4cb422514f29c00faa68d52abf532bb969a22fab8b663`  
		Last Modified: Thu, 09 Jul 2026 19:12:30 GMT  
		Size: 5.2 KB (5231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7.1` - unknown; unknown

```console
$ docker pull mysql@sha256:b52f034a50ab1bfff4939254841e80ac715d1c85ad7d5482adc0b01b2f3979e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2fa93d3b6a7a71770bb1e8d2a3ce01e1c3c7a7cf79f43c4afc41d71c4bf54fc`

```dockerfile
```

-	Layers:
	-	`sha256:6d35f4fbdbdab2bfbb17d6c01ff07b763ba902b2ca37c11b9e0556ffe6aa5819`  
		Last Modified: Thu, 09 Jul 2026 19:12:28 GMT  
		Size: 16.8 MB (16797679 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4a484ac9e35cafb6444aee5d98a8a3cb60f6b95eda3e245c2412eb8313326b0d`  
		Last Modified: Thu, 09 Jul 2026 19:12:28 GMT  
		Size: 35.4 KB (35449 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9.7.1-oracle`

```console
$ docker pull mysql@sha256:ae269281abffe401d65f04cb54d45a069a495b8174b9c0a815e502fed7fa0370
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9.7.1-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:91e42ae952f37b724f945c734cf067c65aa66bf15d4992a7f7c174918d15fc77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.9 MB (270857504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:914b9d749556f431a13a98293ea1e093446b93c6f4a70e758505650808fa545d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 09 Jul 2026 18:34:49 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 09 Jul 2026 18:34:49 GMT
CMD ["/bin/bash"]
# Thu, 09 Jul 2026 19:09:53 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 09 Jul 2026 19:09:54 GMT
ENV GOSU_VERSION=1.19
# Thu, 09 Jul 2026 19:09:54 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 09 Jul 2026 19:10:27 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 09 Jul 2026 19:10:28 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 09 Jul 2026 19:10:28 GMT
ENV MYSQL_MAJOR=9.7
# Thu, 09 Jul 2026 19:10:28 GMT
ENV MYSQL_VERSION=9.7.1-1.el9
# Thu, 09 Jul 2026 19:10:28 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 09 Jul 2026 19:11:06 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 09 Jul 2026 19:11:06 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 09 Jul 2026 19:11:06 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Thu, 09 Jul 2026 19:11:54 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 09 Jul 2026 19:11:54 GMT
VOLUME [/var/lib/mysql]
# Thu, 09 Jul 2026 19:11:54 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 09 Jul 2026 19:11:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 Jul 2026 19:11:54 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 09 Jul 2026 19:11:54 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ecf47111addbec56de180c5066787a73b3998b900305972f62be7fc13c26caa3`  
		Last Modified: Thu, 09 Jul 2026 18:35:00 GMT  
		Size: 47.9 MB (47928988 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4c51daaa784691ea28f53026076e6cf56b7f0ed81f9b1f768d642e20cd95f91`  
		Last Modified: Thu, 09 Jul 2026 19:12:30 GMT  
		Size: 882.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad18077cf381e6ccaafad4a1e120942a81325d527ba90c8f3fb17d6fac5830a9`  
		Last Modified: Thu, 09 Jul 2026 19:12:31 GMT  
		Size: 783.6 KB (783558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f5b662d2d4d6db9cd98c3ce4a47dc2c7d01335c1fe054d57cd58b31eefc2748`  
		Last Modified: Thu, 09 Jul 2026 19:12:30 GMT  
		Size: 6.2 MB (6194490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:890dd41ed99a7c2fe3c1a6589b2e0adaaa2c84ebf4d2dc086285586548ecda92`  
		Last Modified: Thu, 09 Jul 2026 19:12:30 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1257e53bba2aeeccda63f98a3f4d452cfb9d676b96d4703b22b1d1613440faa9`  
		Last Modified: Thu, 09 Jul 2026 19:12:32 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b6fad81c71797f0cf817afc457b77dbb2dc38d5a37a0d7a974eee21657c0727`  
		Last Modified: Thu, 09 Jul 2026 19:12:34 GMT  
		Size: 57.0 MB (56998712 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aeff22d410558cda12b806f6fe76e71d148a77967c188860ecf670380b597494`  
		Last Modified: Thu, 09 Jul 2026 19:12:32 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04eb080c2a10a0e3b689a2b4d3c49f806102a8107c02322926927b0b8b929ad9`  
		Last Modified: Thu, 09 Jul 2026 19:12:36 GMT  
		Size: 158.9 MB (158942384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:446597dc68d24d8917a37b56402c6a9dc47e66ebd4e14401633df9e924545e88`  
		Last Modified: Thu, 09 Jul 2026 19:12:33 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7.1-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:57e20b5be94b72f1c2431f1f9e2a8d945063870851e2e55e739720298b72364f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16834314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60ef25d8fcdb329022583c21ff973b1f7c9043a69c6d2d5ec3d615daa484724d`

```dockerfile
```

-	Layers:
	-	`sha256:54e5e996b4614d76cd312d5529df900d9540c64e96a17ab848540c60e8aaf750`  
		Last Modified: Thu, 09 Jul 2026 19:12:31 GMT  
		Size: 16.8 MB (16799207 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:62f7e05598ba74e7e3f81a98b82ad5dce6af7ffb4b8b170895d47eb51bf1d7f3`  
		Last Modified: Thu, 09 Jul 2026 19:12:30 GMT  
		Size: 35.1 KB (35107 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9.7.1-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:4bc4777950abccc45815439b50b0a5f90f5803806c7c1fcc217ec5744c265de7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.2 MB (267249663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5ffb5285b6ef493376f73dda40a96cb17ced0e950d17f2e23f72dc5c73845c1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 09 Jul 2026 18:34:49 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 09 Jul 2026 18:34:49 GMT
CMD ["/bin/bash"]
# Thu, 09 Jul 2026 19:09:42 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 09 Jul 2026 19:09:44 GMT
ENV GOSU_VERSION=1.19
# Thu, 09 Jul 2026 19:09:44 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 09 Jul 2026 19:10:18 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 09 Jul 2026 19:10:19 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 09 Jul 2026 19:10:19 GMT
ENV MYSQL_MAJOR=9.7
# Thu, 09 Jul 2026 19:10:19 GMT
ENV MYSQL_VERSION=9.7.1-1.el9
# Thu, 09 Jul 2026 19:10:19 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 09 Jul 2026 19:10:58 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 09 Jul 2026 19:10:58 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 09 Jul 2026 19:10:58 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Thu, 09 Jul 2026 19:11:52 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 09 Jul 2026 19:11:52 GMT
VOLUME [/var/lib/mysql]
# Thu, 09 Jul 2026 19:11:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 09 Jul 2026 19:11:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 Jul 2026 19:11:52 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 09 Jul 2026 19:11:52 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c376d03c53ced8ad660398cf332d5f794462a489fe0fc7a2a87af992dcb3a48d`  
		Last Modified: Thu, 09 Jul 2026 18:35:00 GMT  
		Size: 46.5 MB (46475986 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:764b3f5a80d6d812b13a0938ff505e7e716011725fe09599afd0d1b6066ada9f`  
		Last Modified: Thu, 09 Jul 2026 19:12:27 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eacdca1c97077030436260cd6bb30a78d3e6ac67cafd9e7dd24f0ce1d80199ef`  
		Last Modified: Thu, 09 Jul 2026 19:12:28 GMT  
		Size: 737.5 KB (737529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a7674f20c6d9b2221572c7e2b7f4c3221e733089d54c585b0e4f4050f74df36`  
		Last Modified: Thu, 09 Jul 2026 19:12:28 GMT  
		Size: 5.8 MB (5814946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e64224a485ec7598e07bbaedec376c387235a841636c391386e250b442e63262`  
		Last Modified: Thu, 09 Jul 2026 19:12:28 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2953739ba54b306a693a68724f091f163c729cc4248105f6bee8296cadbe587`  
		Last Modified: Thu, 09 Jul 2026 19:12:29 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57b11cc044c56dd80abda8ea46154b91346502ec256dc5499184cbddd0e74e53`  
		Last Modified: Thu, 09 Jul 2026 19:12:32 GMT  
		Size: 57.0 MB (57002784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3de736969ff846bd0a65fe1f65956b7adab746b4b561d0fdf5bb5dc4d16a8fd2`  
		Last Modified: Thu, 09 Jul 2026 19:12:29 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4686d34e507daeb0e98207dd055958f12b9bba44d521fcca7f4930052a4dab84`  
		Last Modified: Thu, 09 Jul 2026 19:12:34 GMT  
		Size: 157.2 MB (157209041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72b37347148f1eac56e4cb422514f29c00faa68d52abf532bb969a22fab8b663`  
		Last Modified: Thu, 09 Jul 2026 19:12:30 GMT  
		Size: 5.2 KB (5231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7.1-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:b52f034a50ab1bfff4939254841e80ac715d1c85ad7d5482adc0b01b2f3979e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2fa93d3b6a7a71770bb1e8d2a3ce01e1c3c7a7cf79f43c4afc41d71c4bf54fc`

```dockerfile
```

-	Layers:
	-	`sha256:6d35f4fbdbdab2bfbb17d6c01ff07b763ba902b2ca37c11b9e0556ffe6aa5819`  
		Last Modified: Thu, 09 Jul 2026 19:12:28 GMT  
		Size: 16.8 MB (16797679 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4a484ac9e35cafb6444aee5d98a8a3cb60f6b95eda3e245c2412eb8313326b0d`  
		Last Modified: Thu, 09 Jul 2026 19:12:28 GMT  
		Size: 35.4 KB (35449 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9.7.1-oraclelinux9`

```console
$ docker pull mysql@sha256:ae269281abffe401d65f04cb54d45a069a495b8174b9c0a815e502fed7fa0370
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9.7.1-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:91e42ae952f37b724f945c734cf067c65aa66bf15d4992a7f7c174918d15fc77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.9 MB (270857504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:914b9d749556f431a13a98293ea1e093446b93c6f4a70e758505650808fa545d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 09 Jul 2026 18:34:49 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 09 Jul 2026 18:34:49 GMT
CMD ["/bin/bash"]
# Thu, 09 Jul 2026 19:09:53 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 09 Jul 2026 19:09:54 GMT
ENV GOSU_VERSION=1.19
# Thu, 09 Jul 2026 19:09:54 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 09 Jul 2026 19:10:27 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 09 Jul 2026 19:10:28 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 09 Jul 2026 19:10:28 GMT
ENV MYSQL_MAJOR=9.7
# Thu, 09 Jul 2026 19:10:28 GMT
ENV MYSQL_VERSION=9.7.1-1.el9
# Thu, 09 Jul 2026 19:10:28 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 09 Jul 2026 19:11:06 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 09 Jul 2026 19:11:06 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 09 Jul 2026 19:11:06 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Thu, 09 Jul 2026 19:11:54 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 09 Jul 2026 19:11:54 GMT
VOLUME [/var/lib/mysql]
# Thu, 09 Jul 2026 19:11:54 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 09 Jul 2026 19:11:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 Jul 2026 19:11:54 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 09 Jul 2026 19:11:54 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ecf47111addbec56de180c5066787a73b3998b900305972f62be7fc13c26caa3`  
		Last Modified: Thu, 09 Jul 2026 18:35:00 GMT  
		Size: 47.9 MB (47928988 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4c51daaa784691ea28f53026076e6cf56b7f0ed81f9b1f768d642e20cd95f91`  
		Last Modified: Thu, 09 Jul 2026 19:12:30 GMT  
		Size: 882.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad18077cf381e6ccaafad4a1e120942a81325d527ba90c8f3fb17d6fac5830a9`  
		Last Modified: Thu, 09 Jul 2026 19:12:31 GMT  
		Size: 783.6 KB (783558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f5b662d2d4d6db9cd98c3ce4a47dc2c7d01335c1fe054d57cd58b31eefc2748`  
		Last Modified: Thu, 09 Jul 2026 19:12:30 GMT  
		Size: 6.2 MB (6194490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:890dd41ed99a7c2fe3c1a6589b2e0adaaa2c84ebf4d2dc086285586548ecda92`  
		Last Modified: Thu, 09 Jul 2026 19:12:30 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1257e53bba2aeeccda63f98a3f4d452cfb9d676b96d4703b22b1d1613440faa9`  
		Last Modified: Thu, 09 Jul 2026 19:12:32 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b6fad81c71797f0cf817afc457b77dbb2dc38d5a37a0d7a974eee21657c0727`  
		Last Modified: Thu, 09 Jul 2026 19:12:34 GMT  
		Size: 57.0 MB (56998712 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aeff22d410558cda12b806f6fe76e71d148a77967c188860ecf670380b597494`  
		Last Modified: Thu, 09 Jul 2026 19:12:32 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04eb080c2a10a0e3b689a2b4d3c49f806102a8107c02322926927b0b8b929ad9`  
		Last Modified: Thu, 09 Jul 2026 19:12:36 GMT  
		Size: 158.9 MB (158942384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:446597dc68d24d8917a37b56402c6a9dc47e66ebd4e14401633df9e924545e88`  
		Last Modified: Thu, 09 Jul 2026 19:12:33 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7.1-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:57e20b5be94b72f1c2431f1f9e2a8d945063870851e2e55e739720298b72364f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16834314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60ef25d8fcdb329022583c21ff973b1f7c9043a69c6d2d5ec3d615daa484724d`

```dockerfile
```

-	Layers:
	-	`sha256:54e5e996b4614d76cd312d5529df900d9540c64e96a17ab848540c60e8aaf750`  
		Last Modified: Thu, 09 Jul 2026 19:12:31 GMT  
		Size: 16.8 MB (16799207 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:62f7e05598ba74e7e3f81a98b82ad5dce6af7ffb4b8b170895d47eb51bf1d7f3`  
		Last Modified: Thu, 09 Jul 2026 19:12:30 GMT  
		Size: 35.1 KB (35107 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9.7.1-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:4bc4777950abccc45815439b50b0a5f90f5803806c7c1fcc217ec5744c265de7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.2 MB (267249663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5ffb5285b6ef493376f73dda40a96cb17ced0e950d17f2e23f72dc5c73845c1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 09 Jul 2026 18:34:49 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 09 Jul 2026 18:34:49 GMT
CMD ["/bin/bash"]
# Thu, 09 Jul 2026 19:09:42 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 09 Jul 2026 19:09:44 GMT
ENV GOSU_VERSION=1.19
# Thu, 09 Jul 2026 19:09:44 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 09 Jul 2026 19:10:18 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 09 Jul 2026 19:10:19 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 09 Jul 2026 19:10:19 GMT
ENV MYSQL_MAJOR=9.7
# Thu, 09 Jul 2026 19:10:19 GMT
ENV MYSQL_VERSION=9.7.1-1.el9
# Thu, 09 Jul 2026 19:10:19 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 09 Jul 2026 19:10:58 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 09 Jul 2026 19:10:58 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 09 Jul 2026 19:10:58 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Thu, 09 Jul 2026 19:11:52 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 09 Jul 2026 19:11:52 GMT
VOLUME [/var/lib/mysql]
# Thu, 09 Jul 2026 19:11:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 09 Jul 2026 19:11:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 Jul 2026 19:11:52 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 09 Jul 2026 19:11:52 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c376d03c53ced8ad660398cf332d5f794462a489fe0fc7a2a87af992dcb3a48d`  
		Last Modified: Thu, 09 Jul 2026 18:35:00 GMT  
		Size: 46.5 MB (46475986 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:764b3f5a80d6d812b13a0938ff505e7e716011725fe09599afd0d1b6066ada9f`  
		Last Modified: Thu, 09 Jul 2026 19:12:27 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eacdca1c97077030436260cd6bb30a78d3e6ac67cafd9e7dd24f0ce1d80199ef`  
		Last Modified: Thu, 09 Jul 2026 19:12:28 GMT  
		Size: 737.5 KB (737529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a7674f20c6d9b2221572c7e2b7f4c3221e733089d54c585b0e4f4050f74df36`  
		Last Modified: Thu, 09 Jul 2026 19:12:28 GMT  
		Size: 5.8 MB (5814946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e64224a485ec7598e07bbaedec376c387235a841636c391386e250b442e63262`  
		Last Modified: Thu, 09 Jul 2026 19:12:28 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2953739ba54b306a693a68724f091f163c729cc4248105f6bee8296cadbe587`  
		Last Modified: Thu, 09 Jul 2026 19:12:29 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57b11cc044c56dd80abda8ea46154b91346502ec256dc5499184cbddd0e74e53`  
		Last Modified: Thu, 09 Jul 2026 19:12:32 GMT  
		Size: 57.0 MB (57002784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3de736969ff846bd0a65fe1f65956b7adab746b4b561d0fdf5bb5dc4d16a8fd2`  
		Last Modified: Thu, 09 Jul 2026 19:12:29 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4686d34e507daeb0e98207dd055958f12b9bba44d521fcca7f4930052a4dab84`  
		Last Modified: Thu, 09 Jul 2026 19:12:34 GMT  
		Size: 157.2 MB (157209041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72b37347148f1eac56e4cb422514f29c00faa68d52abf532bb969a22fab8b663`  
		Last Modified: Thu, 09 Jul 2026 19:12:30 GMT  
		Size: 5.2 KB (5231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7.1-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:b52f034a50ab1bfff4939254841e80ac715d1c85ad7d5482adc0b01b2f3979e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2fa93d3b6a7a71770bb1e8d2a3ce01e1c3c7a7cf79f43c4afc41d71c4bf54fc`

```dockerfile
```

-	Layers:
	-	`sha256:6d35f4fbdbdab2bfbb17d6c01ff07b763ba902b2ca37c11b9e0556ffe6aa5819`  
		Last Modified: Thu, 09 Jul 2026 19:12:28 GMT  
		Size: 16.8 MB (16797679 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4a484ac9e35cafb6444aee5d98a8a3cb60f6b95eda3e245c2412eb8313326b0d`  
		Last Modified: Thu, 09 Jul 2026 19:12:28 GMT  
		Size: 35.4 KB (35449 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:latest`

```console
$ docker pull mysql@sha256:ae269281abffe401d65f04cb54d45a069a495b8174b9c0a815e502fed7fa0370
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:latest` - linux; amd64

```console
$ docker pull mysql@sha256:91e42ae952f37b724f945c734cf067c65aa66bf15d4992a7f7c174918d15fc77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.9 MB (270857504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:914b9d749556f431a13a98293ea1e093446b93c6f4a70e758505650808fa545d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 09 Jul 2026 18:34:49 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 09 Jul 2026 18:34:49 GMT
CMD ["/bin/bash"]
# Thu, 09 Jul 2026 19:09:53 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 09 Jul 2026 19:09:54 GMT
ENV GOSU_VERSION=1.19
# Thu, 09 Jul 2026 19:09:54 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 09 Jul 2026 19:10:27 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 09 Jul 2026 19:10:28 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 09 Jul 2026 19:10:28 GMT
ENV MYSQL_MAJOR=9.7
# Thu, 09 Jul 2026 19:10:28 GMT
ENV MYSQL_VERSION=9.7.1-1.el9
# Thu, 09 Jul 2026 19:10:28 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 09 Jul 2026 19:11:06 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 09 Jul 2026 19:11:06 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 09 Jul 2026 19:11:06 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Thu, 09 Jul 2026 19:11:54 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 09 Jul 2026 19:11:54 GMT
VOLUME [/var/lib/mysql]
# Thu, 09 Jul 2026 19:11:54 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 09 Jul 2026 19:11:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 Jul 2026 19:11:54 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 09 Jul 2026 19:11:54 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ecf47111addbec56de180c5066787a73b3998b900305972f62be7fc13c26caa3`  
		Last Modified: Thu, 09 Jul 2026 18:35:00 GMT  
		Size: 47.9 MB (47928988 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4c51daaa784691ea28f53026076e6cf56b7f0ed81f9b1f768d642e20cd95f91`  
		Last Modified: Thu, 09 Jul 2026 19:12:30 GMT  
		Size: 882.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad18077cf381e6ccaafad4a1e120942a81325d527ba90c8f3fb17d6fac5830a9`  
		Last Modified: Thu, 09 Jul 2026 19:12:31 GMT  
		Size: 783.6 KB (783558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f5b662d2d4d6db9cd98c3ce4a47dc2c7d01335c1fe054d57cd58b31eefc2748`  
		Last Modified: Thu, 09 Jul 2026 19:12:30 GMT  
		Size: 6.2 MB (6194490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:890dd41ed99a7c2fe3c1a6589b2e0adaaa2c84ebf4d2dc086285586548ecda92`  
		Last Modified: Thu, 09 Jul 2026 19:12:30 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1257e53bba2aeeccda63f98a3f4d452cfb9d676b96d4703b22b1d1613440faa9`  
		Last Modified: Thu, 09 Jul 2026 19:12:32 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b6fad81c71797f0cf817afc457b77dbb2dc38d5a37a0d7a974eee21657c0727`  
		Last Modified: Thu, 09 Jul 2026 19:12:34 GMT  
		Size: 57.0 MB (56998712 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aeff22d410558cda12b806f6fe76e71d148a77967c188860ecf670380b597494`  
		Last Modified: Thu, 09 Jul 2026 19:12:32 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04eb080c2a10a0e3b689a2b4d3c49f806102a8107c02322926927b0b8b929ad9`  
		Last Modified: Thu, 09 Jul 2026 19:12:36 GMT  
		Size: 158.9 MB (158942384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:446597dc68d24d8917a37b56402c6a9dc47e66ebd4e14401633df9e924545e88`  
		Last Modified: Thu, 09 Jul 2026 19:12:33 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:latest` - unknown; unknown

```console
$ docker pull mysql@sha256:57e20b5be94b72f1c2431f1f9e2a8d945063870851e2e55e739720298b72364f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16834314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60ef25d8fcdb329022583c21ff973b1f7c9043a69c6d2d5ec3d615daa484724d`

```dockerfile
```

-	Layers:
	-	`sha256:54e5e996b4614d76cd312d5529df900d9540c64e96a17ab848540c60e8aaf750`  
		Last Modified: Thu, 09 Jul 2026 19:12:31 GMT  
		Size: 16.8 MB (16799207 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:62f7e05598ba74e7e3f81a98b82ad5dce6af7ffb4b8b170895d47eb51bf1d7f3`  
		Last Modified: Thu, 09 Jul 2026 19:12:30 GMT  
		Size: 35.1 KB (35107 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:latest` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:4bc4777950abccc45815439b50b0a5f90f5803806c7c1fcc217ec5744c265de7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.2 MB (267249663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5ffb5285b6ef493376f73dda40a96cb17ced0e950d17f2e23f72dc5c73845c1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 09 Jul 2026 18:34:49 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 09 Jul 2026 18:34:49 GMT
CMD ["/bin/bash"]
# Thu, 09 Jul 2026 19:09:42 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 09 Jul 2026 19:09:44 GMT
ENV GOSU_VERSION=1.19
# Thu, 09 Jul 2026 19:09:44 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 09 Jul 2026 19:10:18 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 09 Jul 2026 19:10:19 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 09 Jul 2026 19:10:19 GMT
ENV MYSQL_MAJOR=9.7
# Thu, 09 Jul 2026 19:10:19 GMT
ENV MYSQL_VERSION=9.7.1-1.el9
# Thu, 09 Jul 2026 19:10:19 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 09 Jul 2026 19:10:58 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 09 Jul 2026 19:10:58 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 09 Jul 2026 19:10:58 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Thu, 09 Jul 2026 19:11:52 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 09 Jul 2026 19:11:52 GMT
VOLUME [/var/lib/mysql]
# Thu, 09 Jul 2026 19:11:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 09 Jul 2026 19:11:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 Jul 2026 19:11:52 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 09 Jul 2026 19:11:52 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c376d03c53ced8ad660398cf332d5f794462a489fe0fc7a2a87af992dcb3a48d`  
		Last Modified: Thu, 09 Jul 2026 18:35:00 GMT  
		Size: 46.5 MB (46475986 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:764b3f5a80d6d812b13a0938ff505e7e716011725fe09599afd0d1b6066ada9f`  
		Last Modified: Thu, 09 Jul 2026 19:12:27 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eacdca1c97077030436260cd6bb30a78d3e6ac67cafd9e7dd24f0ce1d80199ef`  
		Last Modified: Thu, 09 Jul 2026 19:12:28 GMT  
		Size: 737.5 KB (737529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a7674f20c6d9b2221572c7e2b7f4c3221e733089d54c585b0e4f4050f74df36`  
		Last Modified: Thu, 09 Jul 2026 19:12:28 GMT  
		Size: 5.8 MB (5814946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e64224a485ec7598e07bbaedec376c387235a841636c391386e250b442e63262`  
		Last Modified: Thu, 09 Jul 2026 19:12:28 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2953739ba54b306a693a68724f091f163c729cc4248105f6bee8296cadbe587`  
		Last Modified: Thu, 09 Jul 2026 19:12:29 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57b11cc044c56dd80abda8ea46154b91346502ec256dc5499184cbddd0e74e53`  
		Last Modified: Thu, 09 Jul 2026 19:12:32 GMT  
		Size: 57.0 MB (57002784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3de736969ff846bd0a65fe1f65956b7adab746b4b561d0fdf5bb5dc4d16a8fd2`  
		Last Modified: Thu, 09 Jul 2026 19:12:29 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4686d34e507daeb0e98207dd055958f12b9bba44d521fcca7f4930052a4dab84`  
		Last Modified: Thu, 09 Jul 2026 19:12:34 GMT  
		Size: 157.2 MB (157209041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72b37347148f1eac56e4cb422514f29c00faa68d52abf532bb969a22fab8b663`  
		Last Modified: Thu, 09 Jul 2026 19:12:30 GMT  
		Size: 5.2 KB (5231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:latest` - unknown; unknown

```console
$ docker pull mysql@sha256:b52f034a50ab1bfff4939254841e80ac715d1c85ad7d5482adc0b01b2f3979e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2fa93d3b6a7a71770bb1e8d2a3ce01e1c3c7a7cf79f43c4afc41d71c4bf54fc`

```dockerfile
```

-	Layers:
	-	`sha256:6d35f4fbdbdab2bfbb17d6c01ff07b763ba902b2ca37c11b9e0556ffe6aa5819`  
		Last Modified: Thu, 09 Jul 2026 19:12:28 GMT  
		Size: 16.8 MB (16797679 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4a484ac9e35cafb6444aee5d98a8a3cb60f6b95eda3e245c2412eb8313326b0d`  
		Last Modified: Thu, 09 Jul 2026 19:12:28 GMT  
		Size: 35.4 KB (35449 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:lts`

```console
$ docker pull mysql@sha256:ae269281abffe401d65f04cb54d45a069a495b8174b9c0a815e502fed7fa0370
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:lts` - linux; amd64

```console
$ docker pull mysql@sha256:91e42ae952f37b724f945c734cf067c65aa66bf15d4992a7f7c174918d15fc77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.9 MB (270857504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:914b9d749556f431a13a98293ea1e093446b93c6f4a70e758505650808fa545d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 09 Jul 2026 18:34:49 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 09 Jul 2026 18:34:49 GMT
CMD ["/bin/bash"]
# Thu, 09 Jul 2026 19:09:53 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 09 Jul 2026 19:09:54 GMT
ENV GOSU_VERSION=1.19
# Thu, 09 Jul 2026 19:09:54 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 09 Jul 2026 19:10:27 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 09 Jul 2026 19:10:28 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 09 Jul 2026 19:10:28 GMT
ENV MYSQL_MAJOR=9.7
# Thu, 09 Jul 2026 19:10:28 GMT
ENV MYSQL_VERSION=9.7.1-1.el9
# Thu, 09 Jul 2026 19:10:28 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 09 Jul 2026 19:11:06 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 09 Jul 2026 19:11:06 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 09 Jul 2026 19:11:06 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Thu, 09 Jul 2026 19:11:54 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 09 Jul 2026 19:11:54 GMT
VOLUME [/var/lib/mysql]
# Thu, 09 Jul 2026 19:11:54 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 09 Jul 2026 19:11:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 Jul 2026 19:11:54 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 09 Jul 2026 19:11:54 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ecf47111addbec56de180c5066787a73b3998b900305972f62be7fc13c26caa3`  
		Last Modified: Thu, 09 Jul 2026 18:35:00 GMT  
		Size: 47.9 MB (47928988 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4c51daaa784691ea28f53026076e6cf56b7f0ed81f9b1f768d642e20cd95f91`  
		Last Modified: Thu, 09 Jul 2026 19:12:30 GMT  
		Size: 882.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad18077cf381e6ccaafad4a1e120942a81325d527ba90c8f3fb17d6fac5830a9`  
		Last Modified: Thu, 09 Jul 2026 19:12:31 GMT  
		Size: 783.6 KB (783558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f5b662d2d4d6db9cd98c3ce4a47dc2c7d01335c1fe054d57cd58b31eefc2748`  
		Last Modified: Thu, 09 Jul 2026 19:12:30 GMT  
		Size: 6.2 MB (6194490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:890dd41ed99a7c2fe3c1a6589b2e0adaaa2c84ebf4d2dc086285586548ecda92`  
		Last Modified: Thu, 09 Jul 2026 19:12:30 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1257e53bba2aeeccda63f98a3f4d452cfb9d676b96d4703b22b1d1613440faa9`  
		Last Modified: Thu, 09 Jul 2026 19:12:32 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b6fad81c71797f0cf817afc457b77dbb2dc38d5a37a0d7a974eee21657c0727`  
		Last Modified: Thu, 09 Jul 2026 19:12:34 GMT  
		Size: 57.0 MB (56998712 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aeff22d410558cda12b806f6fe76e71d148a77967c188860ecf670380b597494`  
		Last Modified: Thu, 09 Jul 2026 19:12:32 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04eb080c2a10a0e3b689a2b4d3c49f806102a8107c02322926927b0b8b929ad9`  
		Last Modified: Thu, 09 Jul 2026 19:12:36 GMT  
		Size: 158.9 MB (158942384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:446597dc68d24d8917a37b56402c6a9dc47e66ebd4e14401633df9e924545e88`  
		Last Modified: Thu, 09 Jul 2026 19:12:33 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:lts` - unknown; unknown

```console
$ docker pull mysql@sha256:57e20b5be94b72f1c2431f1f9e2a8d945063870851e2e55e739720298b72364f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16834314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60ef25d8fcdb329022583c21ff973b1f7c9043a69c6d2d5ec3d615daa484724d`

```dockerfile
```

-	Layers:
	-	`sha256:54e5e996b4614d76cd312d5529df900d9540c64e96a17ab848540c60e8aaf750`  
		Last Modified: Thu, 09 Jul 2026 19:12:31 GMT  
		Size: 16.8 MB (16799207 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:62f7e05598ba74e7e3f81a98b82ad5dce6af7ffb4b8b170895d47eb51bf1d7f3`  
		Last Modified: Thu, 09 Jul 2026 19:12:30 GMT  
		Size: 35.1 KB (35107 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:lts` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:4bc4777950abccc45815439b50b0a5f90f5803806c7c1fcc217ec5744c265de7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.2 MB (267249663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5ffb5285b6ef493376f73dda40a96cb17ced0e950d17f2e23f72dc5c73845c1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 09 Jul 2026 18:34:49 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 09 Jul 2026 18:34:49 GMT
CMD ["/bin/bash"]
# Thu, 09 Jul 2026 19:09:42 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 09 Jul 2026 19:09:44 GMT
ENV GOSU_VERSION=1.19
# Thu, 09 Jul 2026 19:09:44 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 09 Jul 2026 19:10:18 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 09 Jul 2026 19:10:19 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 09 Jul 2026 19:10:19 GMT
ENV MYSQL_MAJOR=9.7
# Thu, 09 Jul 2026 19:10:19 GMT
ENV MYSQL_VERSION=9.7.1-1.el9
# Thu, 09 Jul 2026 19:10:19 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 09 Jul 2026 19:10:58 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 09 Jul 2026 19:10:58 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 09 Jul 2026 19:10:58 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Thu, 09 Jul 2026 19:11:52 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 09 Jul 2026 19:11:52 GMT
VOLUME [/var/lib/mysql]
# Thu, 09 Jul 2026 19:11:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 09 Jul 2026 19:11:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 Jul 2026 19:11:52 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 09 Jul 2026 19:11:52 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c376d03c53ced8ad660398cf332d5f794462a489fe0fc7a2a87af992dcb3a48d`  
		Last Modified: Thu, 09 Jul 2026 18:35:00 GMT  
		Size: 46.5 MB (46475986 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:764b3f5a80d6d812b13a0938ff505e7e716011725fe09599afd0d1b6066ada9f`  
		Last Modified: Thu, 09 Jul 2026 19:12:27 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eacdca1c97077030436260cd6bb30a78d3e6ac67cafd9e7dd24f0ce1d80199ef`  
		Last Modified: Thu, 09 Jul 2026 19:12:28 GMT  
		Size: 737.5 KB (737529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a7674f20c6d9b2221572c7e2b7f4c3221e733089d54c585b0e4f4050f74df36`  
		Last Modified: Thu, 09 Jul 2026 19:12:28 GMT  
		Size: 5.8 MB (5814946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e64224a485ec7598e07bbaedec376c387235a841636c391386e250b442e63262`  
		Last Modified: Thu, 09 Jul 2026 19:12:28 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2953739ba54b306a693a68724f091f163c729cc4248105f6bee8296cadbe587`  
		Last Modified: Thu, 09 Jul 2026 19:12:29 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57b11cc044c56dd80abda8ea46154b91346502ec256dc5499184cbddd0e74e53`  
		Last Modified: Thu, 09 Jul 2026 19:12:32 GMT  
		Size: 57.0 MB (57002784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3de736969ff846bd0a65fe1f65956b7adab746b4b561d0fdf5bb5dc4d16a8fd2`  
		Last Modified: Thu, 09 Jul 2026 19:12:29 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4686d34e507daeb0e98207dd055958f12b9bba44d521fcca7f4930052a4dab84`  
		Last Modified: Thu, 09 Jul 2026 19:12:34 GMT  
		Size: 157.2 MB (157209041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72b37347148f1eac56e4cb422514f29c00faa68d52abf532bb969a22fab8b663`  
		Last Modified: Thu, 09 Jul 2026 19:12:30 GMT  
		Size: 5.2 KB (5231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:lts` - unknown; unknown

```console
$ docker pull mysql@sha256:b52f034a50ab1bfff4939254841e80ac715d1c85ad7d5482adc0b01b2f3979e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2fa93d3b6a7a71770bb1e8d2a3ce01e1c3c7a7cf79f43c4afc41d71c4bf54fc`

```dockerfile
```

-	Layers:
	-	`sha256:6d35f4fbdbdab2bfbb17d6c01ff07b763ba902b2ca37c11b9e0556ffe6aa5819`  
		Last Modified: Thu, 09 Jul 2026 19:12:28 GMT  
		Size: 16.8 MB (16797679 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4a484ac9e35cafb6444aee5d98a8a3cb60f6b95eda3e245c2412eb8313326b0d`  
		Last Modified: Thu, 09 Jul 2026 19:12:28 GMT  
		Size: 35.4 KB (35449 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:lts-oracle`

```console
$ docker pull mysql@sha256:ae269281abffe401d65f04cb54d45a069a495b8174b9c0a815e502fed7fa0370
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:lts-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:91e42ae952f37b724f945c734cf067c65aa66bf15d4992a7f7c174918d15fc77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.9 MB (270857504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:914b9d749556f431a13a98293ea1e093446b93c6f4a70e758505650808fa545d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 09 Jul 2026 18:34:49 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 09 Jul 2026 18:34:49 GMT
CMD ["/bin/bash"]
# Thu, 09 Jul 2026 19:09:53 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 09 Jul 2026 19:09:54 GMT
ENV GOSU_VERSION=1.19
# Thu, 09 Jul 2026 19:09:54 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 09 Jul 2026 19:10:27 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 09 Jul 2026 19:10:28 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 09 Jul 2026 19:10:28 GMT
ENV MYSQL_MAJOR=9.7
# Thu, 09 Jul 2026 19:10:28 GMT
ENV MYSQL_VERSION=9.7.1-1.el9
# Thu, 09 Jul 2026 19:10:28 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 09 Jul 2026 19:11:06 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 09 Jul 2026 19:11:06 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 09 Jul 2026 19:11:06 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Thu, 09 Jul 2026 19:11:54 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 09 Jul 2026 19:11:54 GMT
VOLUME [/var/lib/mysql]
# Thu, 09 Jul 2026 19:11:54 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 09 Jul 2026 19:11:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 Jul 2026 19:11:54 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 09 Jul 2026 19:11:54 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ecf47111addbec56de180c5066787a73b3998b900305972f62be7fc13c26caa3`  
		Last Modified: Thu, 09 Jul 2026 18:35:00 GMT  
		Size: 47.9 MB (47928988 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4c51daaa784691ea28f53026076e6cf56b7f0ed81f9b1f768d642e20cd95f91`  
		Last Modified: Thu, 09 Jul 2026 19:12:30 GMT  
		Size: 882.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad18077cf381e6ccaafad4a1e120942a81325d527ba90c8f3fb17d6fac5830a9`  
		Last Modified: Thu, 09 Jul 2026 19:12:31 GMT  
		Size: 783.6 KB (783558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f5b662d2d4d6db9cd98c3ce4a47dc2c7d01335c1fe054d57cd58b31eefc2748`  
		Last Modified: Thu, 09 Jul 2026 19:12:30 GMT  
		Size: 6.2 MB (6194490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:890dd41ed99a7c2fe3c1a6589b2e0adaaa2c84ebf4d2dc086285586548ecda92`  
		Last Modified: Thu, 09 Jul 2026 19:12:30 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1257e53bba2aeeccda63f98a3f4d452cfb9d676b96d4703b22b1d1613440faa9`  
		Last Modified: Thu, 09 Jul 2026 19:12:32 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b6fad81c71797f0cf817afc457b77dbb2dc38d5a37a0d7a974eee21657c0727`  
		Last Modified: Thu, 09 Jul 2026 19:12:34 GMT  
		Size: 57.0 MB (56998712 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aeff22d410558cda12b806f6fe76e71d148a77967c188860ecf670380b597494`  
		Last Modified: Thu, 09 Jul 2026 19:12:32 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04eb080c2a10a0e3b689a2b4d3c49f806102a8107c02322926927b0b8b929ad9`  
		Last Modified: Thu, 09 Jul 2026 19:12:36 GMT  
		Size: 158.9 MB (158942384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:446597dc68d24d8917a37b56402c6a9dc47e66ebd4e14401633df9e924545e88`  
		Last Modified: Thu, 09 Jul 2026 19:12:33 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:lts-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:57e20b5be94b72f1c2431f1f9e2a8d945063870851e2e55e739720298b72364f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16834314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60ef25d8fcdb329022583c21ff973b1f7c9043a69c6d2d5ec3d615daa484724d`

```dockerfile
```

-	Layers:
	-	`sha256:54e5e996b4614d76cd312d5529df900d9540c64e96a17ab848540c60e8aaf750`  
		Last Modified: Thu, 09 Jul 2026 19:12:31 GMT  
		Size: 16.8 MB (16799207 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:62f7e05598ba74e7e3f81a98b82ad5dce6af7ffb4b8b170895d47eb51bf1d7f3`  
		Last Modified: Thu, 09 Jul 2026 19:12:30 GMT  
		Size: 35.1 KB (35107 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:lts-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:4bc4777950abccc45815439b50b0a5f90f5803806c7c1fcc217ec5744c265de7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.2 MB (267249663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5ffb5285b6ef493376f73dda40a96cb17ced0e950d17f2e23f72dc5c73845c1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 09 Jul 2026 18:34:49 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 09 Jul 2026 18:34:49 GMT
CMD ["/bin/bash"]
# Thu, 09 Jul 2026 19:09:42 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 09 Jul 2026 19:09:44 GMT
ENV GOSU_VERSION=1.19
# Thu, 09 Jul 2026 19:09:44 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 09 Jul 2026 19:10:18 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 09 Jul 2026 19:10:19 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 09 Jul 2026 19:10:19 GMT
ENV MYSQL_MAJOR=9.7
# Thu, 09 Jul 2026 19:10:19 GMT
ENV MYSQL_VERSION=9.7.1-1.el9
# Thu, 09 Jul 2026 19:10:19 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 09 Jul 2026 19:10:58 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 09 Jul 2026 19:10:58 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 09 Jul 2026 19:10:58 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Thu, 09 Jul 2026 19:11:52 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 09 Jul 2026 19:11:52 GMT
VOLUME [/var/lib/mysql]
# Thu, 09 Jul 2026 19:11:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 09 Jul 2026 19:11:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 Jul 2026 19:11:52 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 09 Jul 2026 19:11:52 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c376d03c53ced8ad660398cf332d5f794462a489fe0fc7a2a87af992dcb3a48d`  
		Last Modified: Thu, 09 Jul 2026 18:35:00 GMT  
		Size: 46.5 MB (46475986 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:764b3f5a80d6d812b13a0938ff505e7e716011725fe09599afd0d1b6066ada9f`  
		Last Modified: Thu, 09 Jul 2026 19:12:27 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eacdca1c97077030436260cd6bb30a78d3e6ac67cafd9e7dd24f0ce1d80199ef`  
		Last Modified: Thu, 09 Jul 2026 19:12:28 GMT  
		Size: 737.5 KB (737529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a7674f20c6d9b2221572c7e2b7f4c3221e733089d54c585b0e4f4050f74df36`  
		Last Modified: Thu, 09 Jul 2026 19:12:28 GMT  
		Size: 5.8 MB (5814946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e64224a485ec7598e07bbaedec376c387235a841636c391386e250b442e63262`  
		Last Modified: Thu, 09 Jul 2026 19:12:28 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2953739ba54b306a693a68724f091f163c729cc4248105f6bee8296cadbe587`  
		Last Modified: Thu, 09 Jul 2026 19:12:29 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57b11cc044c56dd80abda8ea46154b91346502ec256dc5499184cbddd0e74e53`  
		Last Modified: Thu, 09 Jul 2026 19:12:32 GMT  
		Size: 57.0 MB (57002784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3de736969ff846bd0a65fe1f65956b7adab746b4b561d0fdf5bb5dc4d16a8fd2`  
		Last Modified: Thu, 09 Jul 2026 19:12:29 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4686d34e507daeb0e98207dd055958f12b9bba44d521fcca7f4930052a4dab84`  
		Last Modified: Thu, 09 Jul 2026 19:12:34 GMT  
		Size: 157.2 MB (157209041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72b37347148f1eac56e4cb422514f29c00faa68d52abf532bb969a22fab8b663`  
		Last Modified: Thu, 09 Jul 2026 19:12:30 GMT  
		Size: 5.2 KB (5231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:lts-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:b52f034a50ab1bfff4939254841e80ac715d1c85ad7d5482adc0b01b2f3979e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2fa93d3b6a7a71770bb1e8d2a3ce01e1c3c7a7cf79f43c4afc41d71c4bf54fc`

```dockerfile
```

-	Layers:
	-	`sha256:6d35f4fbdbdab2bfbb17d6c01ff07b763ba902b2ca37c11b9e0556ffe6aa5819`  
		Last Modified: Thu, 09 Jul 2026 19:12:28 GMT  
		Size: 16.8 MB (16797679 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4a484ac9e35cafb6444aee5d98a8a3cb60f6b95eda3e245c2412eb8313326b0d`  
		Last Modified: Thu, 09 Jul 2026 19:12:28 GMT  
		Size: 35.4 KB (35449 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:lts-oraclelinux9`

```console
$ docker pull mysql@sha256:ae269281abffe401d65f04cb54d45a069a495b8174b9c0a815e502fed7fa0370
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:lts-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:91e42ae952f37b724f945c734cf067c65aa66bf15d4992a7f7c174918d15fc77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.9 MB (270857504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:914b9d749556f431a13a98293ea1e093446b93c6f4a70e758505650808fa545d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 09 Jul 2026 18:34:49 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 09 Jul 2026 18:34:49 GMT
CMD ["/bin/bash"]
# Thu, 09 Jul 2026 19:09:53 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 09 Jul 2026 19:09:54 GMT
ENV GOSU_VERSION=1.19
# Thu, 09 Jul 2026 19:09:54 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 09 Jul 2026 19:10:27 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 09 Jul 2026 19:10:28 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 09 Jul 2026 19:10:28 GMT
ENV MYSQL_MAJOR=9.7
# Thu, 09 Jul 2026 19:10:28 GMT
ENV MYSQL_VERSION=9.7.1-1.el9
# Thu, 09 Jul 2026 19:10:28 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 09 Jul 2026 19:11:06 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 09 Jul 2026 19:11:06 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 09 Jul 2026 19:11:06 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Thu, 09 Jul 2026 19:11:54 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 09 Jul 2026 19:11:54 GMT
VOLUME [/var/lib/mysql]
# Thu, 09 Jul 2026 19:11:54 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 09 Jul 2026 19:11:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 Jul 2026 19:11:54 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 09 Jul 2026 19:11:54 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ecf47111addbec56de180c5066787a73b3998b900305972f62be7fc13c26caa3`  
		Last Modified: Thu, 09 Jul 2026 18:35:00 GMT  
		Size: 47.9 MB (47928988 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4c51daaa784691ea28f53026076e6cf56b7f0ed81f9b1f768d642e20cd95f91`  
		Last Modified: Thu, 09 Jul 2026 19:12:30 GMT  
		Size: 882.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad18077cf381e6ccaafad4a1e120942a81325d527ba90c8f3fb17d6fac5830a9`  
		Last Modified: Thu, 09 Jul 2026 19:12:31 GMT  
		Size: 783.6 KB (783558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f5b662d2d4d6db9cd98c3ce4a47dc2c7d01335c1fe054d57cd58b31eefc2748`  
		Last Modified: Thu, 09 Jul 2026 19:12:30 GMT  
		Size: 6.2 MB (6194490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:890dd41ed99a7c2fe3c1a6589b2e0adaaa2c84ebf4d2dc086285586548ecda92`  
		Last Modified: Thu, 09 Jul 2026 19:12:30 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1257e53bba2aeeccda63f98a3f4d452cfb9d676b96d4703b22b1d1613440faa9`  
		Last Modified: Thu, 09 Jul 2026 19:12:32 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b6fad81c71797f0cf817afc457b77dbb2dc38d5a37a0d7a974eee21657c0727`  
		Last Modified: Thu, 09 Jul 2026 19:12:34 GMT  
		Size: 57.0 MB (56998712 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aeff22d410558cda12b806f6fe76e71d148a77967c188860ecf670380b597494`  
		Last Modified: Thu, 09 Jul 2026 19:12:32 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04eb080c2a10a0e3b689a2b4d3c49f806102a8107c02322926927b0b8b929ad9`  
		Last Modified: Thu, 09 Jul 2026 19:12:36 GMT  
		Size: 158.9 MB (158942384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:446597dc68d24d8917a37b56402c6a9dc47e66ebd4e14401633df9e924545e88`  
		Last Modified: Thu, 09 Jul 2026 19:12:33 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:lts-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:57e20b5be94b72f1c2431f1f9e2a8d945063870851e2e55e739720298b72364f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16834314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60ef25d8fcdb329022583c21ff973b1f7c9043a69c6d2d5ec3d615daa484724d`

```dockerfile
```

-	Layers:
	-	`sha256:54e5e996b4614d76cd312d5529df900d9540c64e96a17ab848540c60e8aaf750`  
		Last Modified: Thu, 09 Jul 2026 19:12:31 GMT  
		Size: 16.8 MB (16799207 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:62f7e05598ba74e7e3f81a98b82ad5dce6af7ffb4b8b170895d47eb51bf1d7f3`  
		Last Modified: Thu, 09 Jul 2026 19:12:30 GMT  
		Size: 35.1 KB (35107 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:lts-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:4bc4777950abccc45815439b50b0a5f90f5803806c7c1fcc217ec5744c265de7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.2 MB (267249663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5ffb5285b6ef493376f73dda40a96cb17ced0e950d17f2e23f72dc5c73845c1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 09 Jul 2026 18:34:49 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 09 Jul 2026 18:34:49 GMT
CMD ["/bin/bash"]
# Thu, 09 Jul 2026 19:09:42 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 09 Jul 2026 19:09:44 GMT
ENV GOSU_VERSION=1.19
# Thu, 09 Jul 2026 19:09:44 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 09 Jul 2026 19:10:18 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 09 Jul 2026 19:10:19 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 09 Jul 2026 19:10:19 GMT
ENV MYSQL_MAJOR=9.7
# Thu, 09 Jul 2026 19:10:19 GMT
ENV MYSQL_VERSION=9.7.1-1.el9
# Thu, 09 Jul 2026 19:10:19 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 09 Jul 2026 19:10:58 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 09 Jul 2026 19:10:58 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 09 Jul 2026 19:10:58 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Thu, 09 Jul 2026 19:11:52 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 09 Jul 2026 19:11:52 GMT
VOLUME [/var/lib/mysql]
# Thu, 09 Jul 2026 19:11:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 09 Jul 2026 19:11:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 Jul 2026 19:11:52 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 09 Jul 2026 19:11:52 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c376d03c53ced8ad660398cf332d5f794462a489fe0fc7a2a87af992dcb3a48d`  
		Last Modified: Thu, 09 Jul 2026 18:35:00 GMT  
		Size: 46.5 MB (46475986 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:764b3f5a80d6d812b13a0938ff505e7e716011725fe09599afd0d1b6066ada9f`  
		Last Modified: Thu, 09 Jul 2026 19:12:27 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eacdca1c97077030436260cd6bb30a78d3e6ac67cafd9e7dd24f0ce1d80199ef`  
		Last Modified: Thu, 09 Jul 2026 19:12:28 GMT  
		Size: 737.5 KB (737529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a7674f20c6d9b2221572c7e2b7f4c3221e733089d54c585b0e4f4050f74df36`  
		Last Modified: Thu, 09 Jul 2026 19:12:28 GMT  
		Size: 5.8 MB (5814946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e64224a485ec7598e07bbaedec376c387235a841636c391386e250b442e63262`  
		Last Modified: Thu, 09 Jul 2026 19:12:28 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2953739ba54b306a693a68724f091f163c729cc4248105f6bee8296cadbe587`  
		Last Modified: Thu, 09 Jul 2026 19:12:29 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57b11cc044c56dd80abda8ea46154b91346502ec256dc5499184cbddd0e74e53`  
		Last Modified: Thu, 09 Jul 2026 19:12:32 GMT  
		Size: 57.0 MB (57002784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3de736969ff846bd0a65fe1f65956b7adab746b4b561d0fdf5bb5dc4d16a8fd2`  
		Last Modified: Thu, 09 Jul 2026 19:12:29 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4686d34e507daeb0e98207dd055958f12b9bba44d521fcca7f4930052a4dab84`  
		Last Modified: Thu, 09 Jul 2026 19:12:34 GMT  
		Size: 157.2 MB (157209041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72b37347148f1eac56e4cb422514f29c00faa68d52abf532bb969a22fab8b663`  
		Last Modified: Thu, 09 Jul 2026 19:12:30 GMT  
		Size: 5.2 KB (5231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:lts-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:b52f034a50ab1bfff4939254841e80ac715d1c85ad7d5482adc0b01b2f3979e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2fa93d3b6a7a71770bb1e8d2a3ce01e1c3c7a7cf79f43c4afc41d71c4bf54fc`

```dockerfile
```

-	Layers:
	-	`sha256:6d35f4fbdbdab2bfbb17d6c01ff07b763ba902b2ca37c11b9e0556ffe6aa5819`  
		Last Modified: Thu, 09 Jul 2026 19:12:28 GMT  
		Size: 16.8 MB (16797679 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4a484ac9e35cafb6444aee5d98a8a3cb60f6b95eda3e245c2412eb8313326b0d`  
		Last Modified: Thu, 09 Jul 2026 19:12:28 GMT  
		Size: 35.4 KB (35449 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:oracle`

```console
$ docker pull mysql@sha256:ae269281abffe401d65f04cb54d45a069a495b8174b9c0a815e502fed7fa0370
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:oracle` - linux; amd64

```console
$ docker pull mysql@sha256:91e42ae952f37b724f945c734cf067c65aa66bf15d4992a7f7c174918d15fc77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.9 MB (270857504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:914b9d749556f431a13a98293ea1e093446b93c6f4a70e758505650808fa545d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 09 Jul 2026 18:34:49 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 09 Jul 2026 18:34:49 GMT
CMD ["/bin/bash"]
# Thu, 09 Jul 2026 19:09:53 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 09 Jul 2026 19:09:54 GMT
ENV GOSU_VERSION=1.19
# Thu, 09 Jul 2026 19:09:54 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 09 Jul 2026 19:10:27 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 09 Jul 2026 19:10:28 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 09 Jul 2026 19:10:28 GMT
ENV MYSQL_MAJOR=9.7
# Thu, 09 Jul 2026 19:10:28 GMT
ENV MYSQL_VERSION=9.7.1-1.el9
# Thu, 09 Jul 2026 19:10:28 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 09 Jul 2026 19:11:06 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 09 Jul 2026 19:11:06 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 09 Jul 2026 19:11:06 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Thu, 09 Jul 2026 19:11:54 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 09 Jul 2026 19:11:54 GMT
VOLUME [/var/lib/mysql]
# Thu, 09 Jul 2026 19:11:54 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 09 Jul 2026 19:11:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 Jul 2026 19:11:54 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 09 Jul 2026 19:11:54 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ecf47111addbec56de180c5066787a73b3998b900305972f62be7fc13c26caa3`  
		Last Modified: Thu, 09 Jul 2026 18:35:00 GMT  
		Size: 47.9 MB (47928988 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4c51daaa784691ea28f53026076e6cf56b7f0ed81f9b1f768d642e20cd95f91`  
		Last Modified: Thu, 09 Jul 2026 19:12:30 GMT  
		Size: 882.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad18077cf381e6ccaafad4a1e120942a81325d527ba90c8f3fb17d6fac5830a9`  
		Last Modified: Thu, 09 Jul 2026 19:12:31 GMT  
		Size: 783.6 KB (783558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f5b662d2d4d6db9cd98c3ce4a47dc2c7d01335c1fe054d57cd58b31eefc2748`  
		Last Modified: Thu, 09 Jul 2026 19:12:30 GMT  
		Size: 6.2 MB (6194490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:890dd41ed99a7c2fe3c1a6589b2e0adaaa2c84ebf4d2dc086285586548ecda92`  
		Last Modified: Thu, 09 Jul 2026 19:12:30 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1257e53bba2aeeccda63f98a3f4d452cfb9d676b96d4703b22b1d1613440faa9`  
		Last Modified: Thu, 09 Jul 2026 19:12:32 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b6fad81c71797f0cf817afc457b77dbb2dc38d5a37a0d7a974eee21657c0727`  
		Last Modified: Thu, 09 Jul 2026 19:12:34 GMT  
		Size: 57.0 MB (56998712 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aeff22d410558cda12b806f6fe76e71d148a77967c188860ecf670380b597494`  
		Last Modified: Thu, 09 Jul 2026 19:12:32 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04eb080c2a10a0e3b689a2b4d3c49f806102a8107c02322926927b0b8b929ad9`  
		Last Modified: Thu, 09 Jul 2026 19:12:36 GMT  
		Size: 158.9 MB (158942384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:446597dc68d24d8917a37b56402c6a9dc47e66ebd4e14401633df9e924545e88`  
		Last Modified: Thu, 09 Jul 2026 19:12:33 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:57e20b5be94b72f1c2431f1f9e2a8d945063870851e2e55e739720298b72364f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16834314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60ef25d8fcdb329022583c21ff973b1f7c9043a69c6d2d5ec3d615daa484724d`

```dockerfile
```

-	Layers:
	-	`sha256:54e5e996b4614d76cd312d5529df900d9540c64e96a17ab848540c60e8aaf750`  
		Last Modified: Thu, 09 Jul 2026 19:12:31 GMT  
		Size: 16.8 MB (16799207 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:62f7e05598ba74e7e3f81a98b82ad5dce6af7ffb4b8b170895d47eb51bf1d7f3`  
		Last Modified: Thu, 09 Jul 2026 19:12:30 GMT  
		Size: 35.1 KB (35107 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:4bc4777950abccc45815439b50b0a5f90f5803806c7c1fcc217ec5744c265de7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.2 MB (267249663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5ffb5285b6ef493376f73dda40a96cb17ced0e950d17f2e23f72dc5c73845c1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 09 Jul 2026 18:34:49 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 09 Jul 2026 18:34:49 GMT
CMD ["/bin/bash"]
# Thu, 09 Jul 2026 19:09:42 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 09 Jul 2026 19:09:44 GMT
ENV GOSU_VERSION=1.19
# Thu, 09 Jul 2026 19:09:44 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 09 Jul 2026 19:10:18 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 09 Jul 2026 19:10:19 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 09 Jul 2026 19:10:19 GMT
ENV MYSQL_MAJOR=9.7
# Thu, 09 Jul 2026 19:10:19 GMT
ENV MYSQL_VERSION=9.7.1-1.el9
# Thu, 09 Jul 2026 19:10:19 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 09 Jul 2026 19:10:58 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 09 Jul 2026 19:10:58 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 09 Jul 2026 19:10:58 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Thu, 09 Jul 2026 19:11:52 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 09 Jul 2026 19:11:52 GMT
VOLUME [/var/lib/mysql]
# Thu, 09 Jul 2026 19:11:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 09 Jul 2026 19:11:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 Jul 2026 19:11:52 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 09 Jul 2026 19:11:52 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c376d03c53ced8ad660398cf332d5f794462a489fe0fc7a2a87af992dcb3a48d`  
		Last Modified: Thu, 09 Jul 2026 18:35:00 GMT  
		Size: 46.5 MB (46475986 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:764b3f5a80d6d812b13a0938ff505e7e716011725fe09599afd0d1b6066ada9f`  
		Last Modified: Thu, 09 Jul 2026 19:12:27 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eacdca1c97077030436260cd6bb30a78d3e6ac67cafd9e7dd24f0ce1d80199ef`  
		Last Modified: Thu, 09 Jul 2026 19:12:28 GMT  
		Size: 737.5 KB (737529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a7674f20c6d9b2221572c7e2b7f4c3221e733089d54c585b0e4f4050f74df36`  
		Last Modified: Thu, 09 Jul 2026 19:12:28 GMT  
		Size: 5.8 MB (5814946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e64224a485ec7598e07bbaedec376c387235a841636c391386e250b442e63262`  
		Last Modified: Thu, 09 Jul 2026 19:12:28 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2953739ba54b306a693a68724f091f163c729cc4248105f6bee8296cadbe587`  
		Last Modified: Thu, 09 Jul 2026 19:12:29 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57b11cc044c56dd80abda8ea46154b91346502ec256dc5499184cbddd0e74e53`  
		Last Modified: Thu, 09 Jul 2026 19:12:32 GMT  
		Size: 57.0 MB (57002784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3de736969ff846bd0a65fe1f65956b7adab746b4b561d0fdf5bb5dc4d16a8fd2`  
		Last Modified: Thu, 09 Jul 2026 19:12:29 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4686d34e507daeb0e98207dd055958f12b9bba44d521fcca7f4930052a4dab84`  
		Last Modified: Thu, 09 Jul 2026 19:12:34 GMT  
		Size: 157.2 MB (157209041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72b37347148f1eac56e4cb422514f29c00faa68d52abf532bb969a22fab8b663`  
		Last Modified: Thu, 09 Jul 2026 19:12:30 GMT  
		Size: 5.2 KB (5231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:b52f034a50ab1bfff4939254841e80ac715d1c85ad7d5482adc0b01b2f3979e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2fa93d3b6a7a71770bb1e8d2a3ce01e1c3c7a7cf79f43c4afc41d71c4bf54fc`

```dockerfile
```

-	Layers:
	-	`sha256:6d35f4fbdbdab2bfbb17d6c01ff07b763ba902b2ca37c11b9e0556ffe6aa5819`  
		Last Modified: Thu, 09 Jul 2026 19:12:28 GMT  
		Size: 16.8 MB (16797679 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4a484ac9e35cafb6444aee5d98a8a3cb60f6b95eda3e245c2412eb8313326b0d`  
		Last Modified: Thu, 09 Jul 2026 19:12:28 GMT  
		Size: 35.4 KB (35449 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:oraclelinux9`

```console
$ docker pull mysql@sha256:ae269281abffe401d65f04cb54d45a069a495b8174b9c0a815e502fed7fa0370
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:91e42ae952f37b724f945c734cf067c65aa66bf15d4992a7f7c174918d15fc77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.9 MB (270857504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:914b9d749556f431a13a98293ea1e093446b93c6f4a70e758505650808fa545d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 09 Jul 2026 18:34:49 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 09 Jul 2026 18:34:49 GMT
CMD ["/bin/bash"]
# Thu, 09 Jul 2026 19:09:53 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 09 Jul 2026 19:09:54 GMT
ENV GOSU_VERSION=1.19
# Thu, 09 Jul 2026 19:09:54 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 09 Jul 2026 19:10:27 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 09 Jul 2026 19:10:28 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 09 Jul 2026 19:10:28 GMT
ENV MYSQL_MAJOR=9.7
# Thu, 09 Jul 2026 19:10:28 GMT
ENV MYSQL_VERSION=9.7.1-1.el9
# Thu, 09 Jul 2026 19:10:28 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 09 Jul 2026 19:11:06 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 09 Jul 2026 19:11:06 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 09 Jul 2026 19:11:06 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Thu, 09 Jul 2026 19:11:54 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 09 Jul 2026 19:11:54 GMT
VOLUME [/var/lib/mysql]
# Thu, 09 Jul 2026 19:11:54 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 09 Jul 2026 19:11:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 Jul 2026 19:11:54 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 09 Jul 2026 19:11:54 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ecf47111addbec56de180c5066787a73b3998b900305972f62be7fc13c26caa3`  
		Last Modified: Thu, 09 Jul 2026 18:35:00 GMT  
		Size: 47.9 MB (47928988 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4c51daaa784691ea28f53026076e6cf56b7f0ed81f9b1f768d642e20cd95f91`  
		Last Modified: Thu, 09 Jul 2026 19:12:30 GMT  
		Size: 882.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad18077cf381e6ccaafad4a1e120942a81325d527ba90c8f3fb17d6fac5830a9`  
		Last Modified: Thu, 09 Jul 2026 19:12:31 GMT  
		Size: 783.6 KB (783558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f5b662d2d4d6db9cd98c3ce4a47dc2c7d01335c1fe054d57cd58b31eefc2748`  
		Last Modified: Thu, 09 Jul 2026 19:12:30 GMT  
		Size: 6.2 MB (6194490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:890dd41ed99a7c2fe3c1a6589b2e0adaaa2c84ebf4d2dc086285586548ecda92`  
		Last Modified: Thu, 09 Jul 2026 19:12:30 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1257e53bba2aeeccda63f98a3f4d452cfb9d676b96d4703b22b1d1613440faa9`  
		Last Modified: Thu, 09 Jul 2026 19:12:32 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b6fad81c71797f0cf817afc457b77dbb2dc38d5a37a0d7a974eee21657c0727`  
		Last Modified: Thu, 09 Jul 2026 19:12:34 GMT  
		Size: 57.0 MB (56998712 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aeff22d410558cda12b806f6fe76e71d148a77967c188860ecf670380b597494`  
		Last Modified: Thu, 09 Jul 2026 19:12:32 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04eb080c2a10a0e3b689a2b4d3c49f806102a8107c02322926927b0b8b929ad9`  
		Last Modified: Thu, 09 Jul 2026 19:12:36 GMT  
		Size: 158.9 MB (158942384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:446597dc68d24d8917a37b56402c6a9dc47e66ebd4e14401633df9e924545e88`  
		Last Modified: Thu, 09 Jul 2026 19:12:33 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:57e20b5be94b72f1c2431f1f9e2a8d945063870851e2e55e739720298b72364f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16834314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60ef25d8fcdb329022583c21ff973b1f7c9043a69c6d2d5ec3d615daa484724d`

```dockerfile
```

-	Layers:
	-	`sha256:54e5e996b4614d76cd312d5529df900d9540c64e96a17ab848540c60e8aaf750`  
		Last Modified: Thu, 09 Jul 2026 19:12:31 GMT  
		Size: 16.8 MB (16799207 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:62f7e05598ba74e7e3f81a98b82ad5dce6af7ffb4b8b170895d47eb51bf1d7f3`  
		Last Modified: Thu, 09 Jul 2026 19:12:30 GMT  
		Size: 35.1 KB (35107 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:4bc4777950abccc45815439b50b0a5f90f5803806c7c1fcc217ec5744c265de7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.2 MB (267249663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5ffb5285b6ef493376f73dda40a96cb17ced0e950d17f2e23f72dc5c73845c1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 09 Jul 2026 18:34:49 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 09 Jul 2026 18:34:49 GMT
CMD ["/bin/bash"]
# Thu, 09 Jul 2026 19:09:42 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 09 Jul 2026 19:09:44 GMT
ENV GOSU_VERSION=1.19
# Thu, 09 Jul 2026 19:09:44 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 09 Jul 2026 19:10:18 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 09 Jul 2026 19:10:19 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 09 Jul 2026 19:10:19 GMT
ENV MYSQL_MAJOR=9.7
# Thu, 09 Jul 2026 19:10:19 GMT
ENV MYSQL_VERSION=9.7.1-1.el9
# Thu, 09 Jul 2026 19:10:19 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 09 Jul 2026 19:10:58 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 09 Jul 2026 19:10:58 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 09 Jul 2026 19:10:58 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Thu, 09 Jul 2026 19:11:52 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 09 Jul 2026 19:11:52 GMT
VOLUME [/var/lib/mysql]
# Thu, 09 Jul 2026 19:11:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 09 Jul 2026 19:11:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 Jul 2026 19:11:52 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 09 Jul 2026 19:11:52 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c376d03c53ced8ad660398cf332d5f794462a489fe0fc7a2a87af992dcb3a48d`  
		Last Modified: Thu, 09 Jul 2026 18:35:00 GMT  
		Size: 46.5 MB (46475986 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:764b3f5a80d6d812b13a0938ff505e7e716011725fe09599afd0d1b6066ada9f`  
		Last Modified: Thu, 09 Jul 2026 19:12:27 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eacdca1c97077030436260cd6bb30a78d3e6ac67cafd9e7dd24f0ce1d80199ef`  
		Last Modified: Thu, 09 Jul 2026 19:12:28 GMT  
		Size: 737.5 KB (737529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a7674f20c6d9b2221572c7e2b7f4c3221e733089d54c585b0e4f4050f74df36`  
		Last Modified: Thu, 09 Jul 2026 19:12:28 GMT  
		Size: 5.8 MB (5814946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e64224a485ec7598e07bbaedec376c387235a841636c391386e250b442e63262`  
		Last Modified: Thu, 09 Jul 2026 19:12:28 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2953739ba54b306a693a68724f091f163c729cc4248105f6bee8296cadbe587`  
		Last Modified: Thu, 09 Jul 2026 19:12:29 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57b11cc044c56dd80abda8ea46154b91346502ec256dc5499184cbddd0e74e53`  
		Last Modified: Thu, 09 Jul 2026 19:12:32 GMT  
		Size: 57.0 MB (57002784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3de736969ff846bd0a65fe1f65956b7adab746b4b561d0fdf5bb5dc4d16a8fd2`  
		Last Modified: Thu, 09 Jul 2026 19:12:29 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4686d34e507daeb0e98207dd055958f12b9bba44d521fcca7f4930052a4dab84`  
		Last Modified: Thu, 09 Jul 2026 19:12:34 GMT  
		Size: 157.2 MB (157209041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72b37347148f1eac56e4cb422514f29c00faa68d52abf532bb969a22fab8b663`  
		Last Modified: Thu, 09 Jul 2026 19:12:30 GMT  
		Size: 5.2 KB (5231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:b52f034a50ab1bfff4939254841e80ac715d1c85ad7d5482adc0b01b2f3979e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2fa93d3b6a7a71770bb1e8d2a3ce01e1c3c7a7cf79f43c4afc41d71c4bf54fc`

```dockerfile
```

-	Layers:
	-	`sha256:6d35f4fbdbdab2bfbb17d6c01ff07b763ba902b2ca37c11b9e0556ffe6aa5819`  
		Last Modified: Thu, 09 Jul 2026 19:12:28 GMT  
		Size: 16.8 MB (16797679 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4a484ac9e35cafb6444aee5d98a8a3cb60f6b95eda3e245c2412eb8313326b0d`  
		Last Modified: Thu, 09 Jul 2026 19:12:28 GMT  
		Size: 35.4 KB (35449 bytes)  
		MIME: application/vnd.in-toto+json
