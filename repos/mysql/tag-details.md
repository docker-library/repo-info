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
$ docker pull mysql@sha256:c592c15aaf4a1961e15d82eb31ea5987dda862d1c4b1e93424438c0e91dc1f8d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8` - linux; amd64

```console
$ docker pull mysql@sha256:6ec1dc148edc412cce3ae27dd5b78dcd4e026976648424b3d31d9a8c6204db4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.9 MB (241917096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:083c8ddb1fa10c35fc618f43b45b403f7b12408e5b14b1d06ec523557904c2cf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 16 Jul 2026 20:48:05 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 16 Jul 2026 20:48:05 GMT
CMD ["/bin/bash"]
# Thu, 16 Jul 2026 21:10:48 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 16 Jul 2026 21:10:50 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 21:10:50 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 21:11:20 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 16 Jul 2026 21:11:21 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 16 Jul 2026 21:11:21 GMT
ENV MYSQL_MAJOR=8.4
# Thu, 16 Jul 2026 21:11:21 GMT
ENV MYSQL_VERSION=8.4.10-1.el9
# Thu, 16 Jul 2026 21:11:21 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 16 Jul 2026 21:11:54 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 16 Jul 2026 21:11:54 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 16 Jul 2026 21:11:54 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Thu, 16 Jul 2026 21:12:35 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 16 Jul 2026 21:12:35 GMT
VOLUME [/var/lib/mysql]
# Thu, 16 Jul 2026 21:12:35 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 21:12:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 21:12:35 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 16 Jul 2026 21:12:35 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c2fb254fc2f4b50f787676deb0f80a262903ec364284bad41e6b1a75f587d3c8`  
		Last Modified: Thu, 16 Jul 2026 20:48:16 GMT  
		Size: 47.9 MB (47928388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:392f62f0c6a55ed557572067e9ca53850d5fb317ef7570deb228044b610b8727`  
		Last Modified: Thu, 16 Jul 2026 21:13:07 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06a8291f1ecf5f94f5d9f947cc0109131bf39434cb4a0eb5373060e62bb7e307`  
		Last Modified: Thu, 16 Jul 2026 21:13:07 GMT  
		Size: 783.6 KB (783556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c0beac24bd0d00afb7ddd58fe7ed9b2f97bb738278e96abe4f651aff81bb141`  
		Last Modified: Thu, 16 Jul 2026 21:13:07 GMT  
		Size: 9.1 MB (9149977 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ec1fc2c51e25c30bf1a1fc9f0f93c5b1a05b057af9bbbc76b888e3ab18e002b`  
		Last Modified: Thu, 16 Jul 2026 21:13:07 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6396417485a7b4a2c5b45b709d6ce19d2c9b15d18e61452734ea6fe39677e377`  
		Last Modified: Thu, 16 Jul 2026 21:13:08 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f3f9542983a03a8d867b773aa5bf1d78231b27dd6e370487242c079ff06f36e`  
		Last Modified: Thu, 16 Jul 2026 21:13:10 GMT  
		Size: 51.6 MB (51616583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f89150c047c1d457e6655d6917fd3f114354a88efd16d208871708a6acf42479`  
		Last Modified: Thu, 16 Jul 2026 21:13:08 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38f0fce665360bcca7cd2d302dcb0bcc026bb55b183fef40fe96dcd1df8dd4f5`  
		Last Modified: Thu, 16 Jul 2026 21:13:12 GMT  
		Size: 132.4 MB (132429222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e86fa202d2cb7c01afddc2182f8726c3cd2b13f90bbb6485e8d7cbc1ec603e72`  
		Last Modified: Thu, 16 Jul 2026 21:13:09 GMT  
		Size: 5.2 KB (5224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8` - unknown; unknown

```console
$ docker pull mysql@sha256:adac33e1d01ca7ddd87da9d2e8b006c619669dc5b06dadcbbd5f1a2d9d741892
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15745146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd7a551246fd3b7a32cee17d334b585000f82728379c6743776f82c9d7c26971`

```dockerfile
```

-	Layers:
	-	`sha256:6c08bc249044d3f6549f348b8a8f3645f4b58b732c439c9febe9a786972a8d95`  
		Last Modified: Thu, 16 Jul 2026 21:13:07 GMT  
		Size: 15.7 MB (15711833 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:36521ae54d4a1db9e5a73277b4dce27c1c38d1a94167af0acf77301cb68ee431`  
		Last Modified: Thu, 16 Jul 2026 21:13:07 GMT  
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
$ docker pull mysql@sha256:c592c15aaf4a1961e15d82eb31ea5987dda862d1c4b1e93424438c0e91dc1f8d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:6ec1dc148edc412cce3ae27dd5b78dcd4e026976648424b3d31d9a8c6204db4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.9 MB (241917096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:083c8ddb1fa10c35fc618f43b45b403f7b12408e5b14b1d06ec523557904c2cf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 16 Jul 2026 20:48:05 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 16 Jul 2026 20:48:05 GMT
CMD ["/bin/bash"]
# Thu, 16 Jul 2026 21:10:48 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 16 Jul 2026 21:10:50 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 21:10:50 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 21:11:20 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 16 Jul 2026 21:11:21 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 16 Jul 2026 21:11:21 GMT
ENV MYSQL_MAJOR=8.4
# Thu, 16 Jul 2026 21:11:21 GMT
ENV MYSQL_VERSION=8.4.10-1.el9
# Thu, 16 Jul 2026 21:11:21 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 16 Jul 2026 21:11:54 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 16 Jul 2026 21:11:54 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 16 Jul 2026 21:11:54 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Thu, 16 Jul 2026 21:12:35 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 16 Jul 2026 21:12:35 GMT
VOLUME [/var/lib/mysql]
# Thu, 16 Jul 2026 21:12:35 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 21:12:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 21:12:35 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 16 Jul 2026 21:12:35 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c2fb254fc2f4b50f787676deb0f80a262903ec364284bad41e6b1a75f587d3c8`  
		Last Modified: Thu, 16 Jul 2026 20:48:16 GMT  
		Size: 47.9 MB (47928388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:392f62f0c6a55ed557572067e9ca53850d5fb317ef7570deb228044b610b8727`  
		Last Modified: Thu, 16 Jul 2026 21:13:07 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06a8291f1ecf5f94f5d9f947cc0109131bf39434cb4a0eb5373060e62bb7e307`  
		Last Modified: Thu, 16 Jul 2026 21:13:07 GMT  
		Size: 783.6 KB (783556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c0beac24bd0d00afb7ddd58fe7ed9b2f97bb738278e96abe4f651aff81bb141`  
		Last Modified: Thu, 16 Jul 2026 21:13:07 GMT  
		Size: 9.1 MB (9149977 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ec1fc2c51e25c30bf1a1fc9f0f93c5b1a05b057af9bbbc76b888e3ab18e002b`  
		Last Modified: Thu, 16 Jul 2026 21:13:07 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6396417485a7b4a2c5b45b709d6ce19d2c9b15d18e61452734ea6fe39677e377`  
		Last Modified: Thu, 16 Jul 2026 21:13:08 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f3f9542983a03a8d867b773aa5bf1d78231b27dd6e370487242c079ff06f36e`  
		Last Modified: Thu, 16 Jul 2026 21:13:10 GMT  
		Size: 51.6 MB (51616583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f89150c047c1d457e6655d6917fd3f114354a88efd16d208871708a6acf42479`  
		Last Modified: Thu, 16 Jul 2026 21:13:08 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38f0fce665360bcca7cd2d302dcb0bcc026bb55b183fef40fe96dcd1df8dd4f5`  
		Last Modified: Thu, 16 Jul 2026 21:13:12 GMT  
		Size: 132.4 MB (132429222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e86fa202d2cb7c01afddc2182f8726c3cd2b13f90bbb6485e8d7cbc1ec603e72`  
		Last Modified: Thu, 16 Jul 2026 21:13:09 GMT  
		Size: 5.2 KB (5224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:adac33e1d01ca7ddd87da9d2e8b006c619669dc5b06dadcbbd5f1a2d9d741892
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15745146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd7a551246fd3b7a32cee17d334b585000f82728379c6743776f82c9d7c26971`

```dockerfile
```

-	Layers:
	-	`sha256:6c08bc249044d3f6549f348b8a8f3645f4b58b732c439c9febe9a786972a8d95`  
		Last Modified: Thu, 16 Jul 2026 21:13:07 GMT  
		Size: 15.7 MB (15711833 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:36521ae54d4a1db9e5a73277b4dce27c1c38d1a94167af0acf77301cb68ee431`  
		Last Modified: Thu, 16 Jul 2026 21:13:07 GMT  
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
$ docker pull mysql@sha256:c592c15aaf4a1961e15d82eb31ea5987dda862d1c4b1e93424438c0e91dc1f8d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:6ec1dc148edc412cce3ae27dd5b78dcd4e026976648424b3d31d9a8c6204db4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.9 MB (241917096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:083c8ddb1fa10c35fc618f43b45b403f7b12408e5b14b1d06ec523557904c2cf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 16 Jul 2026 20:48:05 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 16 Jul 2026 20:48:05 GMT
CMD ["/bin/bash"]
# Thu, 16 Jul 2026 21:10:48 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 16 Jul 2026 21:10:50 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 21:10:50 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 21:11:20 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 16 Jul 2026 21:11:21 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 16 Jul 2026 21:11:21 GMT
ENV MYSQL_MAJOR=8.4
# Thu, 16 Jul 2026 21:11:21 GMT
ENV MYSQL_VERSION=8.4.10-1.el9
# Thu, 16 Jul 2026 21:11:21 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 16 Jul 2026 21:11:54 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 16 Jul 2026 21:11:54 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 16 Jul 2026 21:11:54 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Thu, 16 Jul 2026 21:12:35 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 16 Jul 2026 21:12:35 GMT
VOLUME [/var/lib/mysql]
# Thu, 16 Jul 2026 21:12:35 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 21:12:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 21:12:35 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 16 Jul 2026 21:12:35 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c2fb254fc2f4b50f787676deb0f80a262903ec364284bad41e6b1a75f587d3c8`  
		Last Modified: Thu, 16 Jul 2026 20:48:16 GMT  
		Size: 47.9 MB (47928388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:392f62f0c6a55ed557572067e9ca53850d5fb317ef7570deb228044b610b8727`  
		Last Modified: Thu, 16 Jul 2026 21:13:07 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06a8291f1ecf5f94f5d9f947cc0109131bf39434cb4a0eb5373060e62bb7e307`  
		Last Modified: Thu, 16 Jul 2026 21:13:07 GMT  
		Size: 783.6 KB (783556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c0beac24bd0d00afb7ddd58fe7ed9b2f97bb738278e96abe4f651aff81bb141`  
		Last Modified: Thu, 16 Jul 2026 21:13:07 GMT  
		Size: 9.1 MB (9149977 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ec1fc2c51e25c30bf1a1fc9f0f93c5b1a05b057af9bbbc76b888e3ab18e002b`  
		Last Modified: Thu, 16 Jul 2026 21:13:07 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6396417485a7b4a2c5b45b709d6ce19d2c9b15d18e61452734ea6fe39677e377`  
		Last Modified: Thu, 16 Jul 2026 21:13:08 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f3f9542983a03a8d867b773aa5bf1d78231b27dd6e370487242c079ff06f36e`  
		Last Modified: Thu, 16 Jul 2026 21:13:10 GMT  
		Size: 51.6 MB (51616583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f89150c047c1d457e6655d6917fd3f114354a88efd16d208871708a6acf42479`  
		Last Modified: Thu, 16 Jul 2026 21:13:08 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38f0fce665360bcca7cd2d302dcb0bcc026bb55b183fef40fe96dcd1df8dd4f5`  
		Last Modified: Thu, 16 Jul 2026 21:13:12 GMT  
		Size: 132.4 MB (132429222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e86fa202d2cb7c01afddc2182f8726c3cd2b13f90bbb6485e8d7cbc1ec603e72`  
		Last Modified: Thu, 16 Jul 2026 21:13:09 GMT  
		Size: 5.2 KB (5224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:adac33e1d01ca7ddd87da9d2e8b006c619669dc5b06dadcbbd5f1a2d9d741892
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15745146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd7a551246fd3b7a32cee17d334b585000f82728379c6743776f82c9d7c26971`

```dockerfile
```

-	Layers:
	-	`sha256:6c08bc249044d3f6549f348b8a8f3645f4b58b732c439c9febe9a786972a8d95`  
		Last Modified: Thu, 16 Jul 2026 21:13:07 GMT  
		Size: 15.7 MB (15711833 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:36521ae54d4a1db9e5a73277b4dce27c1c38d1a94167af0acf77301cb68ee431`  
		Last Modified: Thu, 16 Jul 2026 21:13:07 GMT  
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
$ docker pull mysql@sha256:c592c15aaf4a1961e15d82eb31ea5987dda862d1c4b1e93424438c0e91dc1f8d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8.4` - linux; amd64

```console
$ docker pull mysql@sha256:6ec1dc148edc412cce3ae27dd5b78dcd4e026976648424b3d31d9a8c6204db4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.9 MB (241917096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:083c8ddb1fa10c35fc618f43b45b403f7b12408e5b14b1d06ec523557904c2cf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 16 Jul 2026 20:48:05 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 16 Jul 2026 20:48:05 GMT
CMD ["/bin/bash"]
# Thu, 16 Jul 2026 21:10:48 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 16 Jul 2026 21:10:50 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 21:10:50 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 21:11:20 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 16 Jul 2026 21:11:21 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 16 Jul 2026 21:11:21 GMT
ENV MYSQL_MAJOR=8.4
# Thu, 16 Jul 2026 21:11:21 GMT
ENV MYSQL_VERSION=8.4.10-1.el9
# Thu, 16 Jul 2026 21:11:21 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 16 Jul 2026 21:11:54 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 16 Jul 2026 21:11:54 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 16 Jul 2026 21:11:54 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Thu, 16 Jul 2026 21:12:35 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 16 Jul 2026 21:12:35 GMT
VOLUME [/var/lib/mysql]
# Thu, 16 Jul 2026 21:12:35 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 21:12:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 21:12:35 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 16 Jul 2026 21:12:35 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c2fb254fc2f4b50f787676deb0f80a262903ec364284bad41e6b1a75f587d3c8`  
		Last Modified: Thu, 16 Jul 2026 20:48:16 GMT  
		Size: 47.9 MB (47928388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:392f62f0c6a55ed557572067e9ca53850d5fb317ef7570deb228044b610b8727`  
		Last Modified: Thu, 16 Jul 2026 21:13:07 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06a8291f1ecf5f94f5d9f947cc0109131bf39434cb4a0eb5373060e62bb7e307`  
		Last Modified: Thu, 16 Jul 2026 21:13:07 GMT  
		Size: 783.6 KB (783556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c0beac24bd0d00afb7ddd58fe7ed9b2f97bb738278e96abe4f651aff81bb141`  
		Last Modified: Thu, 16 Jul 2026 21:13:07 GMT  
		Size: 9.1 MB (9149977 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ec1fc2c51e25c30bf1a1fc9f0f93c5b1a05b057af9bbbc76b888e3ab18e002b`  
		Last Modified: Thu, 16 Jul 2026 21:13:07 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6396417485a7b4a2c5b45b709d6ce19d2c9b15d18e61452734ea6fe39677e377`  
		Last Modified: Thu, 16 Jul 2026 21:13:08 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f3f9542983a03a8d867b773aa5bf1d78231b27dd6e370487242c079ff06f36e`  
		Last Modified: Thu, 16 Jul 2026 21:13:10 GMT  
		Size: 51.6 MB (51616583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f89150c047c1d457e6655d6917fd3f114354a88efd16d208871708a6acf42479`  
		Last Modified: Thu, 16 Jul 2026 21:13:08 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38f0fce665360bcca7cd2d302dcb0bcc026bb55b183fef40fe96dcd1df8dd4f5`  
		Last Modified: Thu, 16 Jul 2026 21:13:12 GMT  
		Size: 132.4 MB (132429222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e86fa202d2cb7c01afddc2182f8726c3cd2b13f90bbb6485e8d7cbc1ec603e72`  
		Last Modified: Thu, 16 Jul 2026 21:13:09 GMT  
		Size: 5.2 KB (5224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4` - unknown; unknown

```console
$ docker pull mysql@sha256:adac33e1d01ca7ddd87da9d2e8b006c619669dc5b06dadcbbd5f1a2d9d741892
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15745146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd7a551246fd3b7a32cee17d334b585000f82728379c6743776f82c9d7c26971`

```dockerfile
```

-	Layers:
	-	`sha256:6c08bc249044d3f6549f348b8a8f3645f4b58b732c439c9febe9a786972a8d95`  
		Last Modified: Thu, 16 Jul 2026 21:13:07 GMT  
		Size: 15.7 MB (15711833 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:36521ae54d4a1db9e5a73277b4dce27c1c38d1a94167af0acf77301cb68ee431`  
		Last Modified: Thu, 16 Jul 2026 21:13:07 GMT  
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
$ docker pull mysql@sha256:c592c15aaf4a1961e15d82eb31ea5987dda862d1c4b1e93424438c0e91dc1f8d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8.4-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:6ec1dc148edc412cce3ae27dd5b78dcd4e026976648424b3d31d9a8c6204db4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.9 MB (241917096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:083c8ddb1fa10c35fc618f43b45b403f7b12408e5b14b1d06ec523557904c2cf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 16 Jul 2026 20:48:05 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 16 Jul 2026 20:48:05 GMT
CMD ["/bin/bash"]
# Thu, 16 Jul 2026 21:10:48 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 16 Jul 2026 21:10:50 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 21:10:50 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 21:11:20 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 16 Jul 2026 21:11:21 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 16 Jul 2026 21:11:21 GMT
ENV MYSQL_MAJOR=8.4
# Thu, 16 Jul 2026 21:11:21 GMT
ENV MYSQL_VERSION=8.4.10-1.el9
# Thu, 16 Jul 2026 21:11:21 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 16 Jul 2026 21:11:54 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 16 Jul 2026 21:11:54 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 16 Jul 2026 21:11:54 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Thu, 16 Jul 2026 21:12:35 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 16 Jul 2026 21:12:35 GMT
VOLUME [/var/lib/mysql]
# Thu, 16 Jul 2026 21:12:35 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 21:12:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 21:12:35 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 16 Jul 2026 21:12:35 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c2fb254fc2f4b50f787676deb0f80a262903ec364284bad41e6b1a75f587d3c8`  
		Last Modified: Thu, 16 Jul 2026 20:48:16 GMT  
		Size: 47.9 MB (47928388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:392f62f0c6a55ed557572067e9ca53850d5fb317ef7570deb228044b610b8727`  
		Last Modified: Thu, 16 Jul 2026 21:13:07 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06a8291f1ecf5f94f5d9f947cc0109131bf39434cb4a0eb5373060e62bb7e307`  
		Last Modified: Thu, 16 Jul 2026 21:13:07 GMT  
		Size: 783.6 KB (783556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c0beac24bd0d00afb7ddd58fe7ed9b2f97bb738278e96abe4f651aff81bb141`  
		Last Modified: Thu, 16 Jul 2026 21:13:07 GMT  
		Size: 9.1 MB (9149977 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ec1fc2c51e25c30bf1a1fc9f0f93c5b1a05b057af9bbbc76b888e3ab18e002b`  
		Last Modified: Thu, 16 Jul 2026 21:13:07 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6396417485a7b4a2c5b45b709d6ce19d2c9b15d18e61452734ea6fe39677e377`  
		Last Modified: Thu, 16 Jul 2026 21:13:08 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f3f9542983a03a8d867b773aa5bf1d78231b27dd6e370487242c079ff06f36e`  
		Last Modified: Thu, 16 Jul 2026 21:13:10 GMT  
		Size: 51.6 MB (51616583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f89150c047c1d457e6655d6917fd3f114354a88efd16d208871708a6acf42479`  
		Last Modified: Thu, 16 Jul 2026 21:13:08 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38f0fce665360bcca7cd2d302dcb0bcc026bb55b183fef40fe96dcd1df8dd4f5`  
		Last Modified: Thu, 16 Jul 2026 21:13:12 GMT  
		Size: 132.4 MB (132429222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e86fa202d2cb7c01afddc2182f8726c3cd2b13f90bbb6485e8d7cbc1ec603e72`  
		Last Modified: Thu, 16 Jul 2026 21:13:09 GMT  
		Size: 5.2 KB (5224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:adac33e1d01ca7ddd87da9d2e8b006c619669dc5b06dadcbbd5f1a2d9d741892
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15745146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd7a551246fd3b7a32cee17d334b585000f82728379c6743776f82c9d7c26971`

```dockerfile
```

-	Layers:
	-	`sha256:6c08bc249044d3f6549f348b8a8f3645f4b58b732c439c9febe9a786972a8d95`  
		Last Modified: Thu, 16 Jul 2026 21:13:07 GMT  
		Size: 15.7 MB (15711833 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:36521ae54d4a1db9e5a73277b4dce27c1c38d1a94167af0acf77301cb68ee431`  
		Last Modified: Thu, 16 Jul 2026 21:13:07 GMT  
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
$ docker pull mysql@sha256:c592c15aaf4a1961e15d82eb31ea5987dda862d1c4b1e93424438c0e91dc1f8d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8.4-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:6ec1dc148edc412cce3ae27dd5b78dcd4e026976648424b3d31d9a8c6204db4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.9 MB (241917096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:083c8ddb1fa10c35fc618f43b45b403f7b12408e5b14b1d06ec523557904c2cf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 16 Jul 2026 20:48:05 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 16 Jul 2026 20:48:05 GMT
CMD ["/bin/bash"]
# Thu, 16 Jul 2026 21:10:48 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 16 Jul 2026 21:10:50 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 21:10:50 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 21:11:20 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 16 Jul 2026 21:11:21 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 16 Jul 2026 21:11:21 GMT
ENV MYSQL_MAJOR=8.4
# Thu, 16 Jul 2026 21:11:21 GMT
ENV MYSQL_VERSION=8.4.10-1.el9
# Thu, 16 Jul 2026 21:11:21 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 16 Jul 2026 21:11:54 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 16 Jul 2026 21:11:54 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 16 Jul 2026 21:11:54 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Thu, 16 Jul 2026 21:12:35 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 16 Jul 2026 21:12:35 GMT
VOLUME [/var/lib/mysql]
# Thu, 16 Jul 2026 21:12:35 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 21:12:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 21:12:35 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 16 Jul 2026 21:12:35 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c2fb254fc2f4b50f787676deb0f80a262903ec364284bad41e6b1a75f587d3c8`  
		Last Modified: Thu, 16 Jul 2026 20:48:16 GMT  
		Size: 47.9 MB (47928388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:392f62f0c6a55ed557572067e9ca53850d5fb317ef7570deb228044b610b8727`  
		Last Modified: Thu, 16 Jul 2026 21:13:07 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06a8291f1ecf5f94f5d9f947cc0109131bf39434cb4a0eb5373060e62bb7e307`  
		Last Modified: Thu, 16 Jul 2026 21:13:07 GMT  
		Size: 783.6 KB (783556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c0beac24bd0d00afb7ddd58fe7ed9b2f97bb738278e96abe4f651aff81bb141`  
		Last Modified: Thu, 16 Jul 2026 21:13:07 GMT  
		Size: 9.1 MB (9149977 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ec1fc2c51e25c30bf1a1fc9f0f93c5b1a05b057af9bbbc76b888e3ab18e002b`  
		Last Modified: Thu, 16 Jul 2026 21:13:07 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6396417485a7b4a2c5b45b709d6ce19d2c9b15d18e61452734ea6fe39677e377`  
		Last Modified: Thu, 16 Jul 2026 21:13:08 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f3f9542983a03a8d867b773aa5bf1d78231b27dd6e370487242c079ff06f36e`  
		Last Modified: Thu, 16 Jul 2026 21:13:10 GMT  
		Size: 51.6 MB (51616583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f89150c047c1d457e6655d6917fd3f114354a88efd16d208871708a6acf42479`  
		Last Modified: Thu, 16 Jul 2026 21:13:08 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38f0fce665360bcca7cd2d302dcb0bcc026bb55b183fef40fe96dcd1df8dd4f5`  
		Last Modified: Thu, 16 Jul 2026 21:13:12 GMT  
		Size: 132.4 MB (132429222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e86fa202d2cb7c01afddc2182f8726c3cd2b13f90bbb6485e8d7cbc1ec603e72`  
		Last Modified: Thu, 16 Jul 2026 21:13:09 GMT  
		Size: 5.2 KB (5224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:adac33e1d01ca7ddd87da9d2e8b006c619669dc5b06dadcbbd5f1a2d9d741892
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15745146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd7a551246fd3b7a32cee17d334b585000f82728379c6743776f82c9d7c26971`

```dockerfile
```

-	Layers:
	-	`sha256:6c08bc249044d3f6549f348b8a8f3645f4b58b732c439c9febe9a786972a8d95`  
		Last Modified: Thu, 16 Jul 2026 21:13:07 GMT  
		Size: 15.7 MB (15711833 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:36521ae54d4a1db9e5a73277b4dce27c1c38d1a94167af0acf77301cb68ee431`  
		Last Modified: Thu, 16 Jul 2026 21:13:07 GMT  
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
$ docker pull mysql@sha256:c592c15aaf4a1961e15d82eb31ea5987dda862d1c4b1e93424438c0e91dc1f8d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8.4.10` - linux; amd64

```console
$ docker pull mysql@sha256:6ec1dc148edc412cce3ae27dd5b78dcd4e026976648424b3d31d9a8c6204db4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.9 MB (241917096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:083c8ddb1fa10c35fc618f43b45b403f7b12408e5b14b1d06ec523557904c2cf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 16 Jul 2026 20:48:05 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 16 Jul 2026 20:48:05 GMT
CMD ["/bin/bash"]
# Thu, 16 Jul 2026 21:10:48 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 16 Jul 2026 21:10:50 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 21:10:50 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 21:11:20 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 16 Jul 2026 21:11:21 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 16 Jul 2026 21:11:21 GMT
ENV MYSQL_MAJOR=8.4
# Thu, 16 Jul 2026 21:11:21 GMT
ENV MYSQL_VERSION=8.4.10-1.el9
# Thu, 16 Jul 2026 21:11:21 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 16 Jul 2026 21:11:54 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 16 Jul 2026 21:11:54 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 16 Jul 2026 21:11:54 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Thu, 16 Jul 2026 21:12:35 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 16 Jul 2026 21:12:35 GMT
VOLUME [/var/lib/mysql]
# Thu, 16 Jul 2026 21:12:35 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 21:12:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 21:12:35 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 16 Jul 2026 21:12:35 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c2fb254fc2f4b50f787676deb0f80a262903ec364284bad41e6b1a75f587d3c8`  
		Last Modified: Thu, 16 Jul 2026 20:48:16 GMT  
		Size: 47.9 MB (47928388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:392f62f0c6a55ed557572067e9ca53850d5fb317ef7570deb228044b610b8727`  
		Last Modified: Thu, 16 Jul 2026 21:13:07 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06a8291f1ecf5f94f5d9f947cc0109131bf39434cb4a0eb5373060e62bb7e307`  
		Last Modified: Thu, 16 Jul 2026 21:13:07 GMT  
		Size: 783.6 KB (783556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c0beac24bd0d00afb7ddd58fe7ed9b2f97bb738278e96abe4f651aff81bb141`  
		Last Modified: Thu, 16 Jul 2026 21:13:07 GMT  
		Size: 9.1 MB (9149977 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ec1fc2c51e25c30bf1a1fc9f0f93c5b1a05b057af9bbbc76b888e3ab18e002b`  
		Last Modified: Thu, 16 Jul 2026 21:13:07 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6396417485a7b4a2c5b45b709d6ce19d2c9b15d18e61452734ea6fe39677e377`  
		Last Modified: Thu, 16 Jul 2026 21:13:08 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f3f9542983a03a8d867b773aa5bf1d78231b27dd6e370487242c079ff06f36e`  
		Last Modified: Thu, 16 Jul 2026 21:13:10 GMT  
		Size: 51.6 MB (51616583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f89150c047c1d457e6655d6917fd3f114354a88efd16d208871708a6acf42479`  
		Last Modified: Thu, 16 Jul 2026 21:13:08 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38f0fce665360bcca7cd2d302dcb0bcc026bb55b183fef40fe96dcd1df8dd4f5`  
		Last Modified: Thu, 16 Jul 2026 21:13:12 GMT  
		Size: 132.4 MB (132429222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e86fa202d2cb7c01afddc2182f8726c3cd2b13f90bbb6485e8d7cbc1ec603e72`  
		Last Modified: Thu, 16 Jul 2026 21:13:09 GMT  
		Size: 5.2 KB (5224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4.10` - unknown; unknown

```console
$ docker pull mysql@sha256:adac33e1d01ca7ddd87da9d2e8b006c619669dc5b06dadcbbd5f1a2d9d741892
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15745146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd7a551246fd3b7a32cee17d334b585000f82728379c6743776f82c9d7c26971`

```dockerfile
```

-	Layers:
	-	`sha256:6c08bc249044d3f6549f348b8a8f3645f4b58b732c439c9febe9a786972a8d95`  
		Last Modified: Thu, 16 Jul 2026 21:13:07 GMT  
		Size: 15.7 MB (15711833 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:36521ae54d4a1db9e5a73277b4dce27c1c38d1a94167af0acf77301cb68ee431`  
		Last Modified: Thu, 16 Jul 2026 21:13:07 GMT  
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
$ docker pull mysql@sha256:c592c15aaf4a1961e15d82eb31ea5987dda862d1c4b1e93424438c0e91dc1f8d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8.4.10-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:6ec1dc148edc412cce3ae27dd5b78dcd4e026976648424b3d31d9a8c6204db4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.9 MB (241917096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:083c8ddb1fa10c35fc618f43b45b403f7b12408e5b14b1d06ec523557904c2cf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 16 Jul 2026 20:48:05 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 16 Jul 2026 20:48:05 GMT
CMD ["/bin/bash"]
# Thu, 16 Jul 2026 21:10:48 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 16 Jul 2026 21:10:50 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 21:10:50 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 21:11:20 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 16 Jul 2026 21:11:21 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 16 Jul 2026 21:11:21 GMT
ENV MYSQL_MAJOR=8.4
# Thu, 16 Jul 2026 21:11:21 GMT
ENV MYSQL_VERSION=8.4.10-1.el9
# Thu, 16 Jul 2026 21:11:21 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 16 Jul 2026 21:11:54 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 16 Jul 2026 21:11:54 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 16 Jul 2026 21:11:54 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Thu, 16 Jul 2026 21:12:35 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 16 Jul 2026 21:12:35 GMT
VOLUME [/var/lib/mysql]
# Thu, 16 Jul 2026 21:12:35 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 21:12:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 21:12:35 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 16 Jul 2026 21:12:35 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c2fb254fc2f4b50f787676deb0f80a262903ec364284bad41e6b1a75f587d3c8`  
		Last Modified: Thu, 16 Jul 2026 20:48:16 GMT  
		Size: 47.9 MB (47928388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:392f62f0c6a55ed557572067e9ca53850d5fb317ef7570deb228044b610b8727`  
		Last Modified: Thu, 16 Jul 2026 21:13:07 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06a8291f1ecf5f94f5d9f947cc0109131bf39434cb4a0eb5373060e62bb7e307`  
		Last Modified: Thu, 16 Jul 2026 21:13:07 GMT  
		Size: 783.6 KB (783556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c0beac24bd0d00afb7ddd58fe7ed9b2f97bb738278e96abe4f651aff81bb141`  
		Last Modified: Thu, 16 Jul 2026 21:13:07 GMT  
		Size: 9.1 MB (9149977 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ec1fc2c51e25c30bf1a1fc9f0f93c5b1a05b057af9bbbc76b888e3ab18e002b`  
		Last Modified: Thu, 16 Jul 2026 21:13:07 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6396417485a7b4a2c5b45b709d6ce19d2c9b15d18e61452734ea6fe39677e377`  
		Last Modified: Thu, 16 Jul 2026 21:13:08 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f3f9542983a03a8d867b773aa5bf1d78231b27dd6e370487242c079ff06f36e`  
		Last Modified: Thu, 16 Jul 2026 21:13:10 GMT  
		Size: 51.6 MB (51616583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f89150c047c1d457e6655d6917fd3f114354a88efd16d208871708a6acf42479`  
		Last Modified: Thu, 16 Jul 2026 21:13:08 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38f0fce665360bcca7cd2d302dcb0bcc026bb55b183fef40fe96dcd1df8dd4f5`  
		Last Modified: Thu, 16 Jul 2026 21:13:12 GMT  
		Size: 132.4 MB (132429222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e86fa202d2cb7c01afddc2182f8726c3cd2b13f90bbb6485e8d7cbc1ec603e72`  
		Last Modified: Thu, 16 Jul 2026 21:13:09 GMT  
		Size: 5.2 KB (5224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4.10-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:adac33e1d01ca7ddd87da9d2e8b006c619669dc5b06dadcbbd5f1a2d9d741892
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15745146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd7a551246fd3b7a32cee17d334b585000f82728379c6743776f82c9d7c26971`

```dockerfile
```

-	Layers:
	-	`sha256:6c08bc249044d3f6549f348b8a8f3645f4b58b732c439c9febe9a786972a8d95`  
		Last Modified: Thu, 16 Jul 2026 21:13:07 GMT  
		Size: 15.7 MB (15711833 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:36521ae54d4a1db9e5a73277b4dce27c1c38d1a94167af0acf77301cb68ee431`  
		Last Modified: Thu, 16 Jul 2026 21:13:07 GMT  
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
$ docker pull mysql@sha256:c592c15aaf4a1961e15d82eb31ea5987dda862d1c4b1e93424438c0e91dc1f8d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8.4.10-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:6ec1dc148edc412cce3ae27dd5b78dcd4e026976648424b3d31d9a8c6204db4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.9 MB (241917096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:083c8ddb1fa10c35fc618f43b45b403f7b12408e5b14b1d06ec523557904c2cf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 16 Jul 2026 20:48:05 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 16 Jul 2026 20:48:05 GMT
CMD ["/bin/bash"]
# Thu, 16 Jul 2026 21:10:48 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 16 Jul 2026 21:10:50 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 21:10:50 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 21:11:20 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 16 Jul 2026 21:11:21 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 16 Jul 2026 21:11:21 GMT
ENV MYSQL_MAJOR=8.4
# Thu, 16 Jul 2026 21:11:21 GMT
ENV MYSQL_VERSION=8.4.10-1.el9
# Thu, 16 Jul 2026 21:11:21 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 16 Jul 2026 21:11:54 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 16 Jul 2026 21:11:54 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 16 Jul 2026 21:11:54 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Thu, 16 Jul 2026 21:12:35 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 16 Jul 2026 21:12:35 GMT
VOLUME [/var/lib/mysql]
# Thu, 16 Jul 2026 21:12:35 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 21:12:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 21:12:35 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 16 Jul 2026 21:12:35 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c2fb254fc2f4b50f787676deb0f80a262903ec364284bad41e6b1a75f587d3c8`  
		Last Modified: Thu, 16 Jul 2026 20:48:16 GMT  
		Size: 47.9 MB (47928388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:392f62f0c6a55ed557572067e9ca53850d5fb317ef7570deb228044b610b8727`  
		Last Modified: Thu, 16 Jul 2026 21:13:07 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06a8291f1ecf5f94f5d9f947cc0109131bf39434cb4a0eb5373060e62bb7e307`  
		Last Modified: Thu, 16 Jul 2026 21:13:07 GMT  
		Size: 783.6 KB (783556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c0beac24bd0d00afb7ddd58fe7ed9b2f97bb738278e96abe4f651aff81bb141`  
		Last Modified: Thu, 16 Jul 2026 21:13:07 GMT  
		Size: 9.1 MB (9149977 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ec1fc2c51e25c30bf1a1fc9f0f93c5b1a05b057af9bbbc76b888e3ab18e002b`  
		Last Modified: Thu, 16 Jul 2026 21:13:07 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6396417485a7b4a2c5b45b709d6ce19d2c9b15d18e61452734ea6fe39677e377`  
		Last Modified: Thu, 16 Jul 2026 21:13:08 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f3f9542983a03a8d867b773aa5bf1d78231b27dd6e370487242c079ff06f36e`  
		Last Modified: Thu, 16 Jul 2026 21:13:10 GMT  
		Size: 51.6 MB (51616583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f89150c047c1d457e6655d6917fd3f114354a88efd16d208871708a6acf42479`  
		Last Modified: Thu, 16 Jul 2026 21:13:08 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38f0fce665360bcca7cd2d302dcb0bcc026bb55b183fef40fe96dcd1df8dd4f5`  
		Last Modified: Thu, 16 Jul 2026 21:13:12 GMT  
		Size: 132.4 MB (132429222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e86fa202d2cb7c01afddc2182f8726c3cd2b13f90bbb6485e8d7cbc1ec603e72`  
		Last Modified: Thu, 16 Jul 2026 21:13:09 GMT  
		Size: 5.2 KB (5224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4.10-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:adac33e1d01ca7ddd87da9d2e8b006c619669dc5b06dadcbbd5f1a2d9d741892
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15745146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd7a551246fd3b7a32cee17d334b585000f82728379c6743776f82c9d7c26971`

```dockerfile
```

-	Layers:
	-	`sha256:6c08bc249044d3f6549f348b8a8f3645f4b58b732c439c9febe9a786972a8d95`  
		Last Modified: Thu, 16 Jul 2026 21:13:07 GMT  
		Size: 15.7 MB (15711833 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:36521ae54d4a1db9e5a73277b4dce27c1c38d1a94167af0acf77301cb68ee431`  
		Last Modified: Thu, 16 Jul 2026 21:13:07 GMT  
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
$ docker pull mysql@sha256:8fdf311514c91fa5014e93e98e19d7f5d9eb162a462c13100c956dacc278ee21
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9` - linux; amd64

```console
$ docker pull mysql@sha256:51eb6cabec24e43f1bd4c41b3f1e458bf0bf1be22b0ef148d5b837dbf7527d12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.8 MB (273821031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4babd5755458dab35968fb9d44f9a309ceb4d8a49327695a52763242153ddf5c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 16 Jul 2026 20:48:05 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 16 Jul 2026 20:48:05 GMT
CMD ["/bin/bash"]
# Thu, 16 Jul 2026 21:10:04 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 16 Jul 2026 21:10:06 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 21:10:06 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 21:10:33 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 16 Jul 2026 21:10:34 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 16 Jul 2026 21:10:34 GMT
ENV MYSQL_MAJOR=9.7
# Thu, 16 Jul 2026 21:10:34 GMT
ENV MYSQL_VERSION=9.7.1-1.el9
# Thu, 16 Jul 2026 21:10:34 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 16 Jul 2026 21:11:04 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 16 Jul 2026 21:11:04 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 16 Jul 2026 21:11:04 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Thu, 16 Jul 2026 21:11:44 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 16 Jul 2026 21:11:44 GMT
VOLUME [/var/lib/mysql]
# Thu, 16 Jul 2026 21:11:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 21:11:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 21:11:44 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 16 Jul 2026 21:11:44 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c2fb254fc2f4b50f787676deb0f80a262903ec364284bad41e6b1a75f587d3c8`  
		Last Modified: Thu, 16 Jul 2026 20:48:16 GMT  
		Size: 47.9 MB (47928388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e21df1635f12b5f0e835a229cb44d2f33f844617333e5300f5208642fbd1a246`  
		Last Modified: Thu, 16 Jul 2026 21:12:17 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88745f4755f0377bd2f1dbc7ae716ebd84d60ea26721e42ff2d2b1d1cf4cb84b`  
		Last Modified: Thu, 16 Jul 2026 21:12:18 GMT  
		Size: 783.6 KB (783557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08b808cb6d403ea62bf0ca55d80b02e4f48b00df4deedb4ede9fb5bdf0b4ce92`  
		Last Modified: Thu, 16 Jul 2026 21:12:18 GMT  
		Size: 9.1 MB (9149962 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0607e52657021d2ba23f686bf4ac3682959a5010f595d8b7ecb3834a7133b6c`  
		Last Modified: Thu, 16 Jul 2026 21:12:17 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61d49498d3daf7939de632d1ebfd183d7e62098868a88aeccf8a27c682adaf8d`  
		Last Modified: Thu, 16 Jul 2026 21:12:19 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ac73e0e3f6af7266188673d6322c5d6b9ec4f7e81e3b99edff839cf87b95f34`  
		Last Modified: Thu, 16 Jul 2026 21:12:21 GMT  
		Size: 57.0 MB (57001581 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb49c3208fe7e52b84e5365de9dba710b6e161300d2b3e482de49fdf073e91f2`  
		Last Modified: Thu, 16 Jul 2026 21:12:19 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1576763b528a9188d8bc57c350a0dc4b700fa81327a894ce22d223cb64aa30f6`  
		Last Modified: Thu, 16 Jul 2026 21:12:23 GMT  
		Size: 158.9 MB (158948170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81b3a6a3bce827069e4e0adbd8698c7d269aad8800c47c0d7bc3e9dccc006d45`  
		Last Modified: Thu, 16 Jul 2026 21:12:20 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9` - unknown; unknown

```console
$ docker pull mysql@sha256:62fb28aab81dd19c561cd3c7c417aa4e232ca88cd48a039b89a148503fb21a36
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16834315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99e0b3d47a221f14e8ec125766f21aaa5d7ef5d71fc7ffe894d5675c4ac86ceb`

```dockerfile
```

-	Layers:
	-	`sha256:1f9f19898688d14e171c172ac3a1ffed298397301becd2442b5b01330902e2bf`  
		Last Modified: Thu, 16 Jul 2026 21:12:18 GMT  
		Size: 16.8 MB (16799207 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a701ef10ab4613d6e4e58c934ae9af8c7bc7988fafd1d73d7aadf8b344c33a37`  
		Last Modified: Thu, 16 Jul 2026 21:12:17 GMT  
		Size: 35.1 KB (35108 bytes)  
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
$ docker pull mysql@sha256:8fdf311514c91fa5014e93e98e19d7f5d9eb162a462c13100c956dacc278ee21
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:51eb6cabec24e43f1bd4c41b3f1e458bf0bf1be22b0ef148d5b837dbf7527d12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.8 MB (273821031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4babd5755458dab35968fb9d44f9a309ceb4d8a49327695a52763242153ddf5c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 16 Jul 2026 20:48:05 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 16 Jul 2026 20:48:05 GMT
CMD ["/bin/bash"]
# Thu, 16 Jul 2026 21:10:04 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 16 Jul 2026 21:10:06 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 21:10:06 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 21:10:33 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 16 Jul 2026 21:10:34 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 16 Jul 2026 21:10:34 GMT
ENV MYSQL_MAJOR=9.7
# Thu, 16 Jul 2026 21:10:34 GMT
ENV MYSQL_VERSION=9.7.1-1.el9
# Thu, 16 Jul 2026 21:10:34 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 16 Jul 2026 21:11:04 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 16 Jul 2026 21:11:04 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 16 Jul 2026 21:11:04 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Thu, 16 Jul 2026 21:11:44 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 16 Jul 2026 21:11:44 GMT
VOLUME [/var/lib/mysql]
# Thu, 16 Jul 2026 21:11:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 21:11:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 21:11:44 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 16 Jul 2026 21:11:44 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c2fb254fc2f4b50f787676deb0f80a262903ec364284bad41e6b1a75f587d3c8`  
		Last Modified: Thu, 16 Jul 2026 20:48:16 GMT  
		Size: 47.9 MB (47928388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e21df1635f12b5f0e835a229cb44d2f33f844617333e5300f5208642fbd1a246`  
		Last Modified: Thu, 16 Jul 2026 21:12:17 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88745f4755f0377bd2f1dbc7ae716ebd84d60ea26721e42ff2d2b1d1cf4cb84b`  
		Last Modified: Thu, 16 Jul 2026 21:12:18 GMT  
		Size: 783.6 KB (783557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08b808cb6d403ea62bf0ca55d80b02e4f48b00df4deedb4ede9fb5bdf0b4ce92`  
		Last Modified: Thu, 16 Jul 2026 21:12:18 GMT  
		Size: 9.1 MB (9149962 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0607e52657021d2ba23f686bf4ac3682959a5010f595d8b7ecb3834a7133b6c`  
		Last Modified: Thu, 16 Jul 2026 21:12:17 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61d49498d3daf7939de632d1ebfd183d7e62098868a88aeccf8a27c682adaf8d`  
		Last Modified: Thu, 16 Jul 2026 21:12:19 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ac73e0e3f6af7266188673d6322c5d6b9ec4f7e81e3b99edff839cf87b95f34`  
		Last Modified: Thu, 16 Jul 2026 21:12:21 GMT  
		Size: 57.0 MB (57001581 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb49c3208fe7e52b84e5365de9dba710b6e161300d2b3e482de49fdf073e91f2`  
		Last Modified: Thu, 16 Jul 2026 21:12:19 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1576763b528a9188d8bc57c350a0dc4b700fa81327a894ce22d223cb64aa30f6`  
		Last Modified: Thu, 16 Jul 2026 21:12:23 GMT  
		Size: 158.9 MB (158948170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81b3a6a3bce827069e4e0adbd8698c7d269aad8800c47c0d7bc3e9dccc006d45`  
		Last Modified: Thu, 16 Jul 2026 21:12:20 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:62fb28aab81dd19c561cd3c7c417aa4e232ca88cd48a039b89a148503fb21a36
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16834315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99e0b3d47a221f14e8ec125766f21aaa5d7ef5d71fc7ffe894d5675c4ac86ceb`

```dockerfile
```

-	Layers:
	-	`sha256:1f9f19898688d14e171c172ac3a1ffed298397301becd2442b5b01330902e2bf`  
		Last Modified: Thu, 16 Jul 2026 21:12:18 GMT  
		Size: 16.8 MB (16799207 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a701ef10ab4613d6e4e58c934ae9af8c7bc7988fafd1d73d7aadf8b344c33a37`  
		Last Modified: Thu, 16 Jul 2026 21:12:17 GMT  
		Size: 35.1 KB (35108 bytes)  
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
$ docker pull mysql@sha256:8fdf311514c91fa5014e93e98e19d7f5d9eb162a462c13100c956dacc278ee21
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:51eb6cabec24e43f1bd4c41b3f1e458bf0bf1be22b0ef148d5b837dbf7527d12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.8 MB (273821031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4babd5755458dab35968fb9d44f9a309ceb4d8a49327695a52763242153ddf5c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 16 Jul 2026 20:48:05 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 16 Jul 2026 20:48:05 GMT
CMD ["/bin/bash"]
# Thu, 16 Jul 2026 21:10:04 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 16 Jul 2026 21:10:06 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 21:10:06 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 21:10:33 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 16 Jul 2026 21:10:34 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 16 Jul 2026 21:10:34 GMT
ENV MYSQL_MAJOR=9.7
# Thu, 16 Jul 2026 21:10:34 GMT
ENV MYSQL_VERSION=9.7.1-1.el9
# Thu, 16 Jul 2026 21:10:34 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 16 Jul 2026 21:11:04 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 16 Jul 2026 21:11:04 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 16 Jul 2026 21:11:04 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Thu, 16 Jul 2026 21:11:44 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 16 Jul 2026 21:11:44 GMT
VOLUME [/var/lib/mysql]
# Thu, 16 Jul 2026 21:11:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 21:11:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 21:11:44 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 16 Jul 2026 21:11:44 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c2fb254fc2f4b50f787676deb0f80a262903ec364284bad41e6b1a75f587d3c8`  
		Last Modified: Thu, 16 Jul 2026 20:48:16 GMT  
		Size: 47.9 MB (47928388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e21df1635f12b5f0e835a229cb44d2f33f844617333e5300f5208642fbd1a246`  
		Last Modified: Thu, 16 Jul 2026 21:12:17 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88745f4755f0377bd2f1dbc7ae716ebd84d60ea26721e42ff2d2b1d1cf4cb84b`  
		Last Modified: Thu, 16 Jul 2026 21:12:18 GMT  
		Size: 783.6 KB (783557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08b808cb6d403ea62bf0ca55d80b02e4f48b00df4deedb4ede9fb5bdf0b4ce92`  
		Last Modified: Thu, 16 Jul 2026 21:12:18 GMT  
		Size: 9.1 MB (9149962 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0607e52657021d2ba23f686bf4ac3682959a5010f595d8b7ecb3834a7133b6c`  
		Last Modified: Thu, 16 Jul 2026 21:12:17 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61d49498d3daf7939de632d1ebfd183d7e62098868a88aeccf8a27c682adaf8d`  
		Last Modified: Thu, 16 Jul 2026 21:12:19 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ac73e0e3f6af7266188673d6322c5d6b9ec4f7e81e3b99edff839cf87b95f34`  
		Last Modified: Thu, 16 Jul 2026 21:12:21 GMT  
		Size: 57.0 MB (57001581 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb49c3208fe7e52b84e5365de9dba710b6e161300d2b3e482de49fdf073e91f2`  
		Last Modified: Thu, 16 Jul 2026 21:12:19 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1576763b528a9188d8bc57c350a0dc4b700fa81327a894ce22d223cb64aa30f6`  
		Last Modified: Thu, 16 Jul 2026 21:12:23 GMT  
		Size: 158.9 MB (158948170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81b3a6a3bce827069e4e0adbd8698c7d269aad8800c47c0d7bc3e9dccc006d45`  
		Last Modified: Thu, 16 Jul 2026 21:12:20 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:62fb28aab81dd19c561cd3c7c417aa4e232ca88cd48a039b89a148503fb21a36
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16834315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99e0b3d47a221f14e8ec125766f21aaa5d7ef5d71fc7ffe894d5675c4ac86ceb`

```dockerfile
```

-	Layers:
	-	`sha256:1f9f19898688d14e171c172ac3a1ffed298397301becd2442b5b01330902e2bf`  
		Last Modified: Thu, 16 Jul 2026 21:12:18 GMT  
		Size: 16.8 MB (16799207 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a701ef10ab4613d6e4e58c934ae9af8c7bc7988fafd1d73d7aadf8b344c33a37`  
		Last Modified: Thu, 16 Jul 2026 21:12:17 GMT  
		Size: 35.1 KB (35108 bytes)  
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
$ docker pull mysql@sha256:8fdf311514c91fa5014e93e98e19d7f5d9eb162a462c13100c956dacc278ee21
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9.7` - linux; amd64

```console
$ docker pull mysql@sha256:51eb6cabec24e43f1bd4c41b3f1e458bf0bf1be22b0ef148d5b837dbf7527d12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.8 MB (273821031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4babd5755458dab35968fb9d44f9a309ceb4d8a49327695a52763242153ddf5c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 16 Jul 2026 20:48:05 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 16 Jul 2026 20:48:05 GMT
CMD ["/bin/bash"]
# Thu, 16 Jul 2026 21:10:04 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 16 Jul 2026 21:10:06 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 21:10:06 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 21:10:33 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 16 Jul 2026 21:10:34 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 16 Jul 2026 21:10:34 GMT
ENV MYSQL_MAJOR=9.7
# Thu, 16 Jul 2026 21:10:34 GMT
ENV MYSQL_VERSION=9.7.1-1.el9
# Thu, 16 Jul 2026 21:10:34 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 16 Jul 2026 21:11:04 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 16 Jul 2026 21:11:04 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 16 Jul 2026 21:11:04 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Thu, 16 Jul 2026 21:11:44 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 16 Jul 2026 21:11:44 GMT
VOLUME [/var/lib/mysql]
# Thu, 16 Jul 2026 21:11:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 21:11:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 21:11:44 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 16 Jul 2026 21:11:44 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c2fb254fc2f4b50f787676deb0f80a262903ec364284bad41e6b1a75f587d3c8`  
		Last Modified: Thu, 16 Jul 2026 20:48:16 GMT  
		Size: 47.9 MB (47928388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e21df1635f12b5f0e835a229cb44d2f33f844617333e5300f5208642fbd1a246`  
		Last Modified: Thu, 16 Jul 2026 21:12:17 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88745f4755f0377bd2f1dbc7ae716ebd84d60ea26721e42ff2d2b1d1cf4cb84b`  
		Last Modified: Thu, 16 Jul 2026 21:12:18 GMT  
		Size: 783.6 KB (783557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08b808cb6d403ea62bf0ca55d80b02e4f48b00df4deedb4ede9fb5bdf0b4ce92`  
		Last Modified: Thu, 16 Jul 2026 21:12:18 GMT  
		Size: 9.1 MB (9149962 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0607e52657021d2ba23f686bf4ac3682959a5010f595d8b7ecb3834a7133b6c`  
		Last Modified: Thu, 16 Jul 2026 21:12:17 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61d49498d3daf7939de632d1ebfd183d7e62098868a88aeccf8a27c682adaf8d`  
		Last Modified: Thu, 16 Jul 2026 21:12:19 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ac73e0e3f6af7266188673d6322c5d6b9ec4f7e81e3b99edff839cf87b95f34`  
		Last Modified: Thu, 16 Jul 2026 21:12:21 GMT  
		Size: 57.0 MB (57001581 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb49c3208fe7e52b84e5365de9dba710b6e161300d2b3e482de49fdf073e91f2`  
		Last Modified: Thu, 16 Jul 2026 21:12:19 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1576763b528a9188d8bc57c350a0dc4b700fa81327a894ce22d223cb64aa30f6`  
		Last Modified: Thu, 16 Jul 2026 21:12:23 GMT  
		Size: 158.9 MB (158948170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81b3a6a3bce827069e4e0adbd8698c7d269aad8800c47c0d7bc3e9dccc006d45`  
		Last Modified: Thu, 16 Jul 2026 21:12:20 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7` - unknown; unknown

```console
$ docker pull mysql@sha256:62fb28aab81dd19c561cd3c7c417aa4e232ca88cd48a039b89a148503fb21a36
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16834315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99e0b3d47a221f14e8ec125766f21aaa5d7ef5d71fc7ffe894d5675c4ac86ceb`

```dockerfile
```

-	Layers:
	-	`sha256:1f9f19898688d14e171c172ac3a1ffed298397301becd2442b5b01330902e2bf`  
		Last Modified: Thu, 16 Jul 2026 21:12:18 GMT  
		Size: 16.8 MB (16799207 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a701ef10ab4613d6e4e58c934ae9af8c7bc7988fafd1d73d7aadf8b344c33a37`  
		Last Modified: Thu, 16 Jul 2026 21:12:17 GMT  
		Size: 35.1 KB (35108 bytes)  
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
$ docker pull mysql@sha256:8fdf311514c91fa5014e93e98e19d7f5d9eb162a462c13100c956dacc278ee21
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9.7-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:51eb6cabec24e43f1bd4c41b3f1e458bf0bf1be22b0ef148d5b837dbf7527d12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.8 MB (273821031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4babd5755458dab35968fb9d44f9a309ceb4d8a49327695a52763242153ddf5c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 16 Jul 2026 20:48:05 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 16 Jul 2026 20:48:05 GMT
CMD ["/bin/bash"]
# Thu, 16 Jul 2026 21:10:04 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 16 Jul 2026 21:10:06 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 21:10:06 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 21:10:33 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 16 Jul 2026 21:10:34 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 16 Jul 2026 21:10:34 GMT
ENV MYSQL_MAJOR=9.7
# Thu, 16 Jul 2026 21:10:34 GMT
ENV MYSQL_VERSION=9.7.1-1.el9
# Thu, 16 Jul 2026 21:10:34 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 16 Jul 2026 21:11:04 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 16 Jul 2026 21:11:04 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 16 Jul 2026 21:11:04 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Thu, 16 Jul 2026 21:11:44 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 16 Jul 2026 21:11:44 GMT
VOLUME [/var/lib/mysql]
# Thu, 16 Jul 2026 21:11:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 21:11:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 21:11:44 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 16 Jul 2026 21:11:44 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c2fb254fc2f4b50f787676deb0f80a262903ec364284bad41e6b1a75f587d3c8`  
		Last Modified: Thu, 16 Jul 2026 20:48:16 GMT  
		Size: 47.9 MB (47928388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e21df1635f12b5f0e835a229cb44d2f33f844617333e5300f5208642fbd1a246`  
		Last Modified: Thu, 16 Jul 2026 21:12:17 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88745f4755f0377bd2f1dbc7ae716ebd84d60ea26721e42ff2d2b1d1cf4cb84b`  
		Last Modified: Thu, 16 Jul 2026 21:12:18 GMT  
		Size: 783.6 KB (783557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08b808cb6d403ea62bf0ca55d80b02e4f48b00df4deedb4ede9fb5bdf0b4ce92`  
		Last Modified: Thu, 16 Jul 2026 21:12:18 GMT  
		Size: 9.1 MB (9149962 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0607e52657021d2ba23f686bf4ac3682959a5010f595d8b7ecb3834a7133b6c`  
		Last Modified: Thu, 16 Jul 2026 21:12:17 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61d49498d3daf7939de632d1ebfd183d7e62098868a88aeccf8a27c682adaf8d`  
		Last Modified: Thu, 16 Jul 2026 21:12:19 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ac73e0e3f6af7266188673d6322c5d6b9ec4f7e81e3b99edff839cf87b95f34`  
		Last Modified: Thu, 16 Jul 2026 21:12:21 GMT  
		Size: 57.0 MB (57001581 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb49c3208fe7e52b84e5365de9dba710b6e161300d2b3e482de49fdf073e91f2`  
		Last Modified: Thu, 16 Jul 2026 21:12:19 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1576763b528a9188d8bc57c350a0dc4b700fa81327a894ce22d223cb64aa30f6`  
		Last Modified: Thu, 16 Jul 2026 21:12:23 GMT  
		Size: 158.9 MB (158948170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81b3a6a3bce827069e4e0adbd8698c7d269aad8800c47c0d7bc3e9dccc006d45`  
		Last Modified: Thu, 16 Jul 2026 21:12:20 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:62fb28aab81dd19c561cd3c7c417aa4e232ca88cd48a039b89a148503fb21a36
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16834315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99e0b3d47a221f14e8ec125766f21aaa5d7ef5d71fc7ffe894d5675c4ac86ceb`

```dockerfile
```

-	Layers:
	-	`sha256:1f9f19898688d14e171c172ac3a1ffed298397301becd2442b5b01330902e2bf`  
		Last Modified: Thu, 16 Jul 2026 21:12:18 GMT  
		Size: 16.8 MB (16799207 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a701ef10ab4613d6e4e58c934ae9af8c7bc7988fafd1d73d7aadf8b344c33a37`  
		Last Modified: Thu, 16 Jul 2026 21:12:17 GMT  
		Size: 35.1 KB (35108 bytes)  
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
$ docker pull mysql@sha256:8fdf311514c91fa5014e93e98e19d7f5d9eb162a462c13100c956dacc278ee21
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9.7-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:51eb6cabec24e43f1bd4c41b3f1e458bf0bf1be22b0ef148d5b837dbf7527d12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.8 MB (273821031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4babd5755458dab35968fb9d44f9a309ceb4d8a49327695a52763242153ddf5c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 16 Jul 2026 20:48:05 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 16 Jul 2026 20:48:05 GMT
CMD ["/bin/bash"]
# Thu, 16 Jul 2026 21:10:04 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 16 Jul 2026 21:10:06 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 21:10:06 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 21:10:33 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 16 Jul 2026 21:10:34 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 16 Jul 2026 21:10:34 GMT
ENV MYSQL_MAJOR=9.7
# Thu, 16 Jul 2026 21:10:34 GMT
ENV MYSQL_VERSION=9.7.1-1.el9
# Thu, 16 Jul 2026 21:10:34 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 16 Jul 2026 21:11:04 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 16 Jul 2026 21:11:04 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 16 Jul 2026 21:11:04 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Thu, 16 Jul 2026 21:11:44 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 16 Jul 2026 21:11:44 GMT
VOLUME [/var/lib/mysql]
# Thu, 16 Jul 2026 21:11:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 21:11:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 21:11:44 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 16 Jul 2026 21:11:44 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c2fb254fc2f4b50f787676deb0f80a262903ec364284bad41e6b1a75f587d3c8`  
		Last Modified: Thu, 16 Jul 2026 20:48:16 GMT  
		Size: 47.9 MB (47928388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e21df1635f12b5f0e835a229cb44d2f33f844617333e5300f5208642fbd1a246`  
		Last Modified: Thu, 16 Jul 2026 21:12:17 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88745f4755f0377bd2f1dbc7ae716ebd84d60ea26721e42ff2d2b1d1cf4cb84b`  
		Last Modified: Thu, 16 Jul 2026 21:12:18 GMT  
		Size: 783.6 KB (783557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08b808cb6d403ea62bf0ca55d80b02e4f48b00df4deedb4ede9fb5bdf0b4ce92`  
		Last Modified: Thu, 16 Jul 2026 21:12:18 GMT  
		Size: 9.1 MB (9149962 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0607e52657021d2ba23f686bf4ac3682959a5010f595d8b7ecb3834a7133b6c`  
		Last Modified: Thu, 16 Jul 2026 21:12:17 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61d49498d3daf7939de632d1ebfd183d7e62098868a88aeccf8a27c682adaf8d`  
		Last Modified: Thu, 16 Jul 2026 21:12:19 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ac73e0e3f6af7266188673d6322c5d6b9ec4f7e81e3b99edff839cf87b95f34`  
		Last Modified: Thu, 16 Jul 2026 21:12:21 GMT  
		Size: 57.0 MB (57001581 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb49c3208fe7e52b84e5365de9dba710b6e161300d2b3e482de49fdf073e91f2`  
		Last Modified: Thu, 16 Jul 2026 21:12:19 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1576763b528a9188d8bc57c350a0dc4b700fa81327a894ce22d223cb64aa30f6`  
		Last Modified: Thu, 16 Jul 2026 21:12:23 GMT  
		Size: 158.9 MB (158948170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81b3a6a3bce827069e4e0adbd8698c7d269aad8800c47c0d7bc3e9dccc006d45`  
		Last Modified: Thu, 16 Jul 2026 21:12:20 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:62fb28aab81dd19c561cd3c7c417aa4e232ca88cd48a039b89a148503fb21a36
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16834315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99e0b3d47a221f14e8ec125766f21aaa5d7ef5d71fc7ffe894d5675c4ac86ceb`

```dockerfile
```

-	Layers:
	-	`sha256:1f9f19898688d14e171c172ac3a1ffed298397301becd2442b5b01330902e2bf`  
		Last Modified: Thu, 16 Jul 2026 21:12:18 GMT  
		Size: 16.8 MB (16799207 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a701ef10ab4613d6e4e58c934ae9af8c7bc7988fafd1d73d7aadf8b344c33a37`  
		Last Modified: Thu, 16 Jul 2026 21:12:17 GMT  
		Size: 35.1 KB (35108 bytes)  
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
$ docker pull mysql@sha256:8fdf311514c91fa5014e93e98e19d7f5d9eb162a462c13100c956dacc278ee21
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9.7.1` - linux; amd64

```console
$ docker pull mysql@sha256:51eb6cabec24e43f1bd4c41b3f1e458bf0bf1be22b0ef148d5b837dbf7527d12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.8 MB (273821031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4babd5755458dab35968fb9d44f9a309ceb4d8a49327695a52763242153ddf5c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 16 Jul 2026 20:48:05 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 16 Jul 2026 20:48:05 GMT
CMD ["/bin/bash"]
# Thu, 16 Jul 2026 21:10:04 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 16 Jul 2026 21:10:06 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 21:10:06 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 21:10:33 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 16 Jul 2026 21:10:34 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 16 Jul 2026 21:10:34 GMT
ENV MYSQL_MAJOR=9.7
# Thu, 16 Jul 2026 21:10:34 GMT
ENV MYSQL_VERSION=9.7.1-1.el9
# Thu, 16 Jul 2026 21:10:34 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 16 Jul 2026 21:11:04 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 16 Jul 2026 21:11:04 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 16 Jul 2026 21:11:04 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Thu, 16 Jul 2026 21:11:44 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 16 Jul 2026 21:11:44 GMT
VOLUME [/var/lib/mysql]
# Thu, 16 Jul 2026 21:11:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 21:11:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 21:11:44 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 16 Jul 2026 21:11:44 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c2fb254fc2f4b50f787676deb0f80a262903ec364284bad41e6b1a75f587d3c8`  
		Last Modified: Thu, 16 Jul 2026 20:48:16 GMT  
		Size: 47.9 MB (47928388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e21df1635f12b5f0e835a229cb44d2f33f844617333e5300f5208642fbd1a246`  
		Last Modified: Thu, 16 Jul 2026 21:12:17 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88745f4755f0377bd2f1dbc7ae716ebd84d60ea26721e42ff2d2b1d1cf4cb84b`  
		Last Modified: Thu, 16 Jul 2026 21:12:18 GMT  
		Size: 783.6 KB (783557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08b808cb6d403ea62bf0ca55d80b02e4f48b00df4deedb4ede9fb5bdf0b4ce92`  
		Last Modified: Thu, 16 Jul 2026 21:12:18 GMT  
		Size: 9.1 MB (9149962 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0607e52657021d2ba23f686bf4ac3682959a5010f595d8b7ecb3834a7133b6c`  
		Last Modified: Thu, 16 Jul 2026 21:12:17 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61d49498d3daf7939de632d1ebfd183d7e62098868a88aeccf8a27c682adaf8d`  
		Last Modified: Thu, 16 Jul 2026 21:12:19 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ac73e0e3f6af7266188673d6322c5d6b9ec4f7e81e3b99edff839cf87b95f34`  
		Last Modified: Thu, 16 Jul 2026 21:12:21 GMT  
		Size: 57.0 MB (57001581 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb49c3208fe7e52b84e5365de9dba710b6e161300d2b3e482de49fdf073e91f2`  
		Last Modified: Thu, 16 Jul 2026 21:12:19 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1576763b528a9188d8bc57c350a0dc4b700fa81327a894ce22d223cb64aa30f6`  
		Last Modified: Thu, 16 Jul 2026 21:12:23 GMT  
		Size: 158.9 MB (158948170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81b3a6a3bce827069e4e0adbd8698c7d269aad8800c47c0d7bc3e9dccc006d45`  
		Last Modified: Thu, 16 Jul 2026 21:12:20 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7.1` - unknown; unknown

```console
$ docker pull mysql@sha256:62fb28aab81dd19c561cd3c7c417aa4e232ca88cd48a039b89a148503fb21a36
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16834315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99e0b3d47a221f14e8ec125766f21aaa5d7ef5d71fc7ffe894d5675c4ac86ceb`

```dockerfile
```

-	Layers:
	-	`sha256:1f9f19898688d14e171c172ac3a1ffed298397301becd2442b5b01330902e2bf`  
		Last Modified: Thu, 16 Jul 2026 21:12:18 GMT  
		Size: 16.8 MB (16799207 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a701ef10ab4613d6e4e58c934ae9af8c7bc7988fafd1d73d7aadf8b344c33a37`  
		Last Modified: Thu, 16 Jul 2026 21:12:17 GMT  
		Size: 35.1 KB (35108 bytes)  
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
$ docker pull mysql@sha256:8fdf311514c91fa5014e93e98e19d7f5d9eb162a462c13100c956dacc278ee21
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9.7.1-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:51eb6cabec24e43f1bd4c41b3f1e458bf0bf1be22b0ef148d5b837dbf7527d12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.8 MB (273821031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4babd5755458dab35968fb9d44f9a309ceb4d8a49327695a52763242153ddf5c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 16 Jul 2026 20:48:05 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 16 Jul 2026 20:48:05 GMT
CMD ["/bin/bash"]
# Thu, 16 Jul 2026 21:10:04 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 16 Jul 2026 21:10:06 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 21:10:06 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 21:10:33 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 16 Jul 2026 21:10:34 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 16 Jul 2026 21:10:34 GMT
ENV MYSQL_MAJOR=9.7
# Thu, 16 Jul 2026 21:10:34 GMT
ENV MYSQL_VERSION=9.7.1-1.el9
# Thu, 16 Jul 2026 21:10:34 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 16 Jul 2026 21:11:04 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 16 Jul 2026 21:11:04 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 16 Jul 2026 21:11:04 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Thu, 16 Jul 2026 21:11:44 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 16 Jul 2026 21:11:44 GMT
VOLUME [/var/lib/mysql]
# Thu, 16 Jul 2026 21:11:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 21:11:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 21:11:44 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 16 Jul 2026 21:11:44 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c2fb254fc2f4b50f787676deb0f80a262903ec364284bad41e6b1a75f587d3c8`  
		Last Modified: Thu, 16 Jul 2026 20:48:16 GMT  
		Size: 47.9 MB (47928388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e21df1635f12b5f0e835a229cb44d2f33f844617333e5300f5208642fbd1a246`  
		Last Modified: Thu, 16 Jul 2026 21:12:17 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88745f4755f0377bd2f1dbc7ae716ebd84d60ea26721e42ff2d2b1d1cf4cb84b`  
		Last Modified: Thu, 16 Jul 2026 21:12:18 GMT  
		Size: 783.6 KB (783557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08b808cb6d403ea62bf0ca55d80b02e4f48b00df4deedb4ede9fb5bdf0b4ce92`  
		Last Modified: Thu, 16 Jul 2026 21:12:18 GMT  
		Size: 9.1 MB (9149962 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0607e52657021d2ba23f686bf4ac3682959a5010f595d8b7ecb3834a7133b6c`  
		Last Modified: Thu, 16 Jul 2026 21:12:17 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61d49498d3daf7939de632d1ebfd183d7e62098868a88aeccf8a27c682adaf8d`  
		Last Modified: Thu, 16 Jul 2026 21:12:19 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ac73e0e3f6af7266188673d6322c5d6b9ec4f7e81e3b99edff839cf87b95f34`  
		Last Modified: Thu, 16 Jul 2026 21:12:21 GMT  
		Size: 57.0 MB (57001581 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb49c3208fe7e52b84e5365de9dba710b6e161300d2b3e482de49fdf073e91f2`  
		Last Modified: Thu, 16 Jul 2026 21:12:19 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1576763b528a9188d8bc57c350a0dc4b700fa81327a894ce22d223cb64aa30f6`  
		Last Modified: Thu, 16 Jul 2026 21:12:23 GMT  
		Size: 158.9 MB (158948170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81b3a6a3bce827069e4e0adbd8698c7d269aad8800c47c0d7bc3e9dccc006d45`  
		Last Modified: Thu, 16 Jul 2026 21:12:20 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7.1-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:62fb28aab81dd19c561cd3c7c417aa4e232ca88cd48a039b89a148503fb21a36
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16834315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99e0b3d47a221f14e8ec125766f21aaa5d7ef5d71fc7ffe894d5675c4ac86ceb`

```dockerfile
```

-	Layers:
	-	`sha256:1f9f19898688d14e171c172ac3a1ffed298397301becd2442b5b01330902e2bf`  
		Last Modified: Thu, 16 Jul 2026 21:12:18 GMT  
		Size: 16.8 MB (16799207 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a701ef10ab4613d6e4e58c934ae9af8c7bc7988fafd1d73d7aadf8b344c33a37`  
		Last Modified: Thu, 16 Jul 2026 21:12:17 GMT  
		Size: 35.1 KB (35108 bytes)  
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
$ docker pull mysql@sha256:8fdf311514c91fa5014e93e98e19d7f5d9eb162a462c13100c956dacc278ee21
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9.7.1-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:51eb6cabec24e43f1bd4c41b3f1e458bf0bf1be22b0ef148d5b837dbf7527d12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.8 MB (273821031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4babd5755458dab35968fb9d44f9a309ceb4d8a49327695a52763242153ddf5c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 16 Jul 2026 20:48:05 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 16 Jul 2026 20:48:05 GMT
CMD ["/bin/bash"]
# Thu, 16 Jul 2026 21:10:04 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 16 Jul 2026 21:10:06 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 21:10:06 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 21:10:33 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 16 Jul 2026 21:10:34 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 16 Jul 2026 21:10:34 GMT
ENV MYSQL_MAJOR=9.7
# Thu, 16 Jul 2026 21:10:34 GMT
ENV MYSQL_VERSION=9.7.1-1.el9
# Thu, 16 Jul 2026 21:10:34 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 16 Jul 2026 21:11:04 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 16 Jul 2026 21:11:04 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 16 Jul 2026 21:11:04 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Thu, 16 Jul 2026 21:11:44 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 16 Jul 2026 21:11:44 GMT
VOLUME [/var/lib/mysql]
# Thu, 16 Jul 2026 21:11:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 21:11:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 21:11:44 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 16 Jul 2026 21:11:44 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c2fb254fc2f4b50f787676deb0f80a262903ec364284bad41e6b1a75f587d3c8`  
		Last Modified: Thu, 16 Jul 2026 20:48:16 GMT  
		Size: 47.9 MB (47928388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e21df1635f12b5f0e835a229cb44d2f33f844617333e5300f5208642fbd1a246`  
		Last Modified: Thu, 16 Jul 2026 21:12:17 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88745f4755f0377bd2f1dbc7ae716ebd84d60ea26721e42ff2d2b1d1cf4cb84b`  
		Last Modified: Thu, 16 Jul 2026 21:12:18 GMT  
		Size: 783.6 KB (783557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08b808cb6d403ea62bf0ca55d80b02e4f48b00df4deedb4ede9fb5bdf0b4ce92`  
		Last Modified: Thu, 16 Jul 2026 21:12:18 GMT  
		Size: 9.1 MB (9149962 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0607e52657021d2ba23f686bf4ac3682959a5010f595d8b7ecb3834a7133b6c`  
		Last Modified: Thu, 16 Jul 2026 21:12:17 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61d49498d3daf7939de632d1ebfd183d7e62098868a88aeccf8a27c682adaf8d`  
		Last Modified: Thu, 16 Jul 2026 21:12:19 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ac73e0e3f6af7266188673d6322c5d6b9ec4f7e81e3b99edff839cf87b95f34`  
		Last Modified: Thu, 16 Jul 2026 21:12:21 GMT  
		Size: 57.0 MB (57001581 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb49c3208fe7e52b84e5365de9dba710b6e161300d2b3e482de49fdf073e91f2`  
		Last Modified: Thu, 16 Jul 2026 21:12:19 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1576763b528a9188d8bc57c350a0dc4b700fa81327a894ce22d223cb64aa30f6`  
		Last Modified: Thu, 16 Jul 2026 21:12:23 GMT  
		Size: 158.9 MB (158948170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81b3a6a3bce827069e4e0adbd8698c7d269aad8800c47c0d7bc3e9dccc006d45`  
		Last Modified: Thu, 16 Jul 2026 21:12:20 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7.1-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:62fb28aab81dd19c561cd3c7c417aa4e232ca88cd48a039b89a148503fb21a36
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16834315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99e0b3d47a221f14e8ec125766f21aaa5d7ef5d71fc7ffe894d5675c4ac86ceb`

```dockerfile
```

-	Layers:
	-	`sha256:1f9f19898688d14e171c172ac3a1ffed298397301becd2442b5b01330902e2bf`  
		Last Modified: Thu, 16 Jul 2026 21:12:18 GMT  
		Size: 16.8 MB (16799207 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a701ef10ab4613d6e4e58c934ae9af8c7bc7988fafd1d73d7aadf8b344c33a37`  
		Last Modified: Thu, 16 Jul 2026 21:12:17 GMT  
		Size: 35.1 KB (35108 bytes)  
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
$ docker pull mysql@sha256:8fdf311514c91fa5014e93e98e19d7f5d9eb162a462c13100c956dacc278ee21
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:latest` - linux; amd64

```console
$ docker pull mysql@sha256:51eb6cabec24e43f1bd4c41b3f1e458bf0bf1be22b0ef148d5b837dbf7527d12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.8 MB (273821031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4babd5755458dab35968fb9d44f9a309ceb4d8a49327695a52763242153ddf5c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 16 Jul 2026 20:48:05 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 16 Jul 2026 20:48:05 GMT
CMD ["/bin/bash"]
# Thu, 16 Jul 2026 21:10:04 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 16 Jul 2026 21:10:06 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 21:10:06 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 21:10:33 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 16 Jul 2026 21:10:34 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 16 Jul 2026 21:10:34 GMT
ENV MYSQL_MAJOR=9.7
# Thu, 16 Jul 2026 21:10:34 GMT
ENV MYSQL_VERSION=9.7.1-1.el9
# Thu, 16 Jul 2026 21:10:34 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 16 Jul 2026 21:11:04 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 16 Jul 2026 21:11:04 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 16 Jul 2026 21:11:04 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Thu, 16 Jul 2026 21:11:44 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 16 Jul 2026 21:11:44 GMT
VOLUME [/var/lib/mysql]
# Thu, 16 Jul 2026 21:11:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 21:11:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 21:11:44 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 16 Jul 2026 21:11:44 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c2fb254fc2f4b50f787676deb0f80a262903ec364284bad41e6b1a75f587d3c8`  
		Last Modified: Thu, 16 Jul 2026 20:48:16 GMT  
		Size: 47.9 MB (47928388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e21df1635f12b5f0e835a229cb44d2f33f844617333e5300f5208642fbd1a246`  
		Last Modified: Thu, 16 Jul 2026 21:12:17 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88745f4755f0377bd2f1dbc7ae716ebd84d60ea26721e42ff2d2b1d1cf4cb84b`  
		Last Modified: Thu, 16 Jul 2026 21:12:18 GMT  
		Size: 783.6 KB (783557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08b808cb6d403ea62bf0ca55d80b02e4f48b00df4deedb4ede9fb5bdf0b4ce92`  
		Last Modified: Thu, 16 Jul 2026 21:12:18 GMT  
		Size: 9.1 MB (9149962 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0607e52657021d2ba23f686bf4ac3682959a5010f595d8b7ecb3834a7133b6c`  
		Last Modified: Thu, 16 Jul 2026 21:12:17 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61d49498d3daf7939de632d1ebfd183d7e62098868a88aeccf8a27c682adaf8d`  
		Last Modified: Thu, 16 Jul 2026 21:12:19 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ac73e0e3f6af7266188673d6322c5d6b9ec4f7e81e3b99edff839cf87b95f34`  
		Last Modified: Thu, 16 Jul 2026 21:12:21 GMT  
		Size: 57.0 MB (57001581 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb49c3208fe7e52b84e5365de9dba710b6e161300d2b3e482de49fdf073e91f2`  
		Last Modified: Thu, 16 Jul 2026 21:12:19 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1576763b528a9188d8bc57c350a0dc4b700fa81327a894ce22d223cb64aa30f6`  
		Last Modified: Thu, 16 Jul 2026 21:12:23 GMT  
		Size: 158.9 MB (158948170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81b3a6a3bce827069e4e0adbd8698c7d269aad8800c47c0d7bc3e9dccc006d45`  
		Last Modified: Thu, 16 Jul 2026 21:12:20 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:latest` - unknown; unknown

```console
$ docker pull mysql@sha256:62fb28aab81dd19c561cd3c7c417aa4e232ca88cd48a039b89a148503fb21a36
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16834315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99e0b3d47a221f14e8ec125766f21aaa5d7ef5d71fc7ffe894d5675c4ac86ceb`

```dockerfile
```

-	Layers:
	-	`sha256:1f9f19898688d14e171c172ac3a1ffed298397301becd2442b5b01330902e2bf`  
		Last Modified: Thu, 16 Jul 2026 21:12:18 GMT  
		Size: 16.8 MB (16799207 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a701ef10ab4613d6e4e58c934ae9af8c7bc7988fafd1d73d7aadf8b344c33a37`  
		Last Modified: Thu, 16 Jul 2026 21:12:17 GMT  
		Size: 35.1 KB (35108 bytes)  
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
$ docker pull mysql@sha256:8fdf311514c91fa5014e93e98e19d7f5d9eb162a462c13100c956dacc278ee21
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:lts` - linux; amd64

```console
$ docker pull mysql@sha256:51eb6cabec24e43f1bd4c41b3f1e458bf0bf1be22b0ef148d5b837dbf7527d12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.8 MB (273821031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4babd5755458dab35968fb9d44f9a309ceb4d8a49327695a52763242153ddf5c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 16 Jul 2026 20:48:05 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 16 Jul 2026 20:48:05 GMT
CMD ["/bin/bash"]
# Thu, 16 Jul 2026 21:10:04 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 16 Jul 2026 21:10:06 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 21:10:06 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 21:10:33 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 16 Jul 2026 21:10:34 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 16 Jul 2026 21:10:34 GMT
ENV MYSQL_MAJOR=9.7
# Thu, 16 Jul 2026 21:10:34 GMT
ENV MYSQL_VERSION=9.7.1-1.el9
# Thu, 16 Jul 2026 21:10:34 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 16 Jul 2026 21:11:04 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 16 Jul 2026 21:11:04 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 16 Jul 2026 21:11:04 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Thu, 16 Jul 2026 21:11:44 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 16 Jul 2026 21:11:44 GMT
VOLUME [/var/lib/mysql]
# Thu, 16 Jul 2026 21:11:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 21:11:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 21:11:44 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 16 Jul 2026 21:11:44 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c2fb254fc2f4b50f787676deb0f80a262903ec364284bad41e6b1a75f587d3c8`  
		Last Modified: Thu, 16 Jul 2026 20:48:16 GMT  
		Size: 47.9 MB (47928388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e21df1635f12b5f0e835a229cb44d2f33f844617333e5300f5208642fbd1a246`  
		Last Modified: Thu, 16 Jul 2026 21:12:17 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88745f4755f0377bd2f1dbc7ae716ebd84d60ea26721e42ff2d2b1d1cf4cb84b`  
		Last Modified: Thu, 16 Jul 2026 21:12:18 GMT  
		Size: 783.6 KB (783557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08b808cb6d403ea62bf0ca55d80b02e4f48b00df4deedb4ede9fb5bdf0b4ce92`  
		Last Modified: Thu, 16 Jul 2026 21:12:18 GMT  
		Size: 9.1 MB (9149962 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0607e52657021d2ba23f686bf4ac3682959a5010f595d8b7ecb3834a7133b6c`  
		Last Modified: Thu, 16 Jul 2026 21:12:17 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61d49498d3daf7939de632d1ebfd183d7e62098868a88aeccf8a27c682adaf8d`  
		Last Modified: Thu, 16 Jul 2026 21:12:19 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ac73e0e3f6af7266188673d6322c5d6b9ec4f7e81e3b99edff839cf87b95f34`  
		Last Modified: Thu, 16 Jul 2026 21:12:21 GMT  
		Size: 57.0 MB (57001581 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb49c3208fe7e52b84e5365de9dba710b6e161300d2b3e482de49fdf073e91f2`  
		Last Modified: Thu, 16 Jul 2026 21:12:19 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1576763b528a9188d8bc57c350a0dc4b700fa81327a894ce22d223cb64aa30f6`  
		Last Modified: Thu, 16 Jul 2026 21:12:23 GMT  
		Size: 158.9 MB (158948170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81b3a6a3bce827069e4e0adbd8698c7d269aad8800c47c0d7bc3e9dccc006d45`  
		Last Modified: Thu, 16 Jul 2026 21:12:20 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:lts` - unknown; unknown

```console
$ docker pull mysql@sha256:62fb28aab81dd19c561cd3c7c417aa4e232ca88cd48a039b89a148503fb21a36
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16834315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99e0b3d47a221f14e8ec125766f21aaa5d7ef5d71fc7ffe894d5675c4ac86ceb`

```dockerfile
```

-	Layers:
	-	`sha256:1f9f19898688d14e171c172ac3a1ffed298397301becd2442b5b01330902e2bf`  
		Last Modified: Thu, 16 Jul 2026 21:12:18 GMT  
		Size: 16.8 MB (16799207 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a701ef10ab4613d6e4e58c934ae9af8c7bc7988fafd1d73d7aadf8b344c33a37`  
		Last Modified: Thu, 16 Jul 2026 21:12:17 GMT  
		Size: 35.1 KB (35108 bytes)  
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
$ docker pull mysql@sha256:8fdf311514c91fa5014e93e98e19d7f5d9eb162a462c13100c956dacc278ee21
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:lts-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:51eb6cabec24e43f1bd4c41b3f1e458bf0bf1be22b0ef148d5b837dbf7527d12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.8 MB (273821031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4babd5755458dab35968fb9d44f9a309ceb4d8a49327695a52763242153ddf5c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 16 Jul 2026 20:48:05 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 16 Jul 2026 20:48:05 GMT
CMD ["/bin/bash"]
# Thu, 16 Jul 2026 21:10:04 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 16 Jul 2026 21:10:06 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 21:10:06 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 21:10:33 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 16 Jul 2026 21:10:34 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 16 Jul 2026 21:10:34 GMT
ENV MYSQL_MAJOR=9.7
# Thu, 16 Jul 2026 21:10:34 GMT
ENV MYSQL_VERSION=9.7.1-1.el9
# Thu, 16 Jul 2026 21:10:34 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 16 Jul 2026 21:11:04 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 16 Jul 2026 21:11:04 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 16 Jul 2026 21:11:04 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Thu, 16 Jul 2026 21:11:44 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 16 Jul 2026 21:11:44 GMT
VOLUME [/var/lib/mysql]
# Thu, 16 Jul 2026 21:11:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 21:11:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 21:11:44 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 16 Jul 2026 21:11:44 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c2fb254fc2f4b50f787676deb0f80a262903ec364284bad41e6b1a75f587d3c8`  
		Last Modified: Thu, 16 Jul 2026 20:48:16 GMT  
		Size: 47.9 MB (47928388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e21df1635f12b5f0e835a229cb44d2f33f844617333e5300f5208642fbd1a246`  
		Last Modified: Thu, 16 Jul 2026 21:12:17 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88745f4755f0377bd2f1dbc7ae716ebd84d60ea26721e42ff2d2b1d1cf4cb84b`  
		Last Modified: Thu, 16 Jul 2026 21:12:18 GMT  
		Size: 783.6 KB (783557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08b808cb6d403ea62bf0ca55d80b02e4f48b00df4deedb4ede9fb5bdf0b4ce92`  
		Last Modified: Thu, 16 Jul 2026 21:12:18 GMT  
		Size: 9.1 MB (9149962 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0607e52657021d2ba23f686bf4ac3682959a5010f595d8b7ecb3834a7133b6c`  
		Last Modified: Thu, 16 Jul 2026 21:12:17 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61d49498d3daf7939de632d1ebfd183d7e62098868a88aeccf8a27c682adaf8d`  
		Last Modified: Thu, 16 Jul 2026 21:12:19 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ac73e0e3f6af7266188673d6322c5d6b9ec4f7e81e3b99edff839cf87b95f34`  
		Last Modified: Thu, 16 Jul 2026 21:12:21 GMT  
		Size: 57.0 MB (57001581 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb49c3208fe7e52b84e5365de9dba710b6e161300d2b3e482de49fdf073e91f2`  
		Last Modified: Thu, 16 Jul 2026 21:12:19 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1576763b528a9188d8bc57c350a0dc4b700fa81327a894ce22d223cb64aa30f6`  
		Last Modified: Thu, 16 Jul 2026 21:12:23 GMT  
		Size: 158.9 MB (158948170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81b3a6a3bce827069e4e0adbd8698c7d269aad8800c47c0d7bc3e9dccc006d45`  
		Last Modified: Thu, 16 Jul 2026 21:12:20 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:lts-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:62fb28aab81dd19c561cd3c7c417aa4e232ca88cd48a039b89a148503fb21a36
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16834315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99e0b3d47a221f14e8ec125766f21aaa5d7ef5d71fc7ffe894d5675c4ac86ceb`

```dockerfile
```

-	Layers:
	-	`sha256:1f9f19898688d14e171c172ac3a1ffed298397301becd2442b5b01330902e2bf`  
		Last Modified: Thu, 16 Jul 2026 21:12:18 GMT  
		Size: 16.8 MB (16799207 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a701ef10ab4613d6e4e58c934ae9af8c7bc7988fafd1d73d7aadf8b344c33a37`  
		Last Modified: Thu, 16 Jul 2026 21:12:17 GMT  
		Size: 35.1 KB (35108 bytes)  
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
$ docker pull mysql@sha256:8fdf311514c91fa5014e93e98e19d7f5d9eb162a462c13100c956dacc278ee21
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:lts-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:51eb6cabec24e43f1bd4c41b3f1e458bf0bf1be22b0ef148d5b837dbf7527d12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.8 MB (273821031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4babd5755458dab35968fb9d44f9a309ceb4d8a49327695a52763242153ddf5c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 16 Jul 2026 20:48:05 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 16 Jul 2026 20:48:05 GMT
CMD ["/bin/bash"]
# Thu, 16 Jul 2026 21:10:04 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 16 Jul 2026 21:10:06 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 21:10:06 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 21:10:33 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 16 Jul 2026 21:10:34 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 16 Jul 2026 21:10:34 GMT
ENV MYSQL_MAJOR=9.7
# Thu, 16 Jul 2026 21:10:34 GMT
ENV MYSQL_VERSION=9.7.1-1.el9
# Thu, 16 Jul 2026 21:10:34 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 16 Jul 2026 21:11:04 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 16 Jul 2026 21:11:04 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 16 Jul 2026 21:11:04 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Thu, 16 Jul 2026 21:11:44 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 16 Jul 2026 21:11:44 GMT
VOLUME [/var/lib/mysql]
# Thu, 16 Jul 2026 21:11:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 21:11:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 21:11:44 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 16 Jul 2026 21:11:44 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c2fb254fc2f4b50f787676deb0f80a262903ec364284bad41e6b1a75f587d3c8`  
		Last Modified: Thu, 16 Jul 2026 20:48:16 GMT  
		Size: 47.9 MB (47928388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e21df1635f12b5f0e835a229cb44d2f33f844617333e5300f5208642fbd1a246`  
		Last Modified: Thu, 16 Jul 2026 21:12:17 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88745f4755f0377bd2f1dbc7ae716ebd84d60ea26721e42ff2d2b1d1cf4cb84b`  
		Last Modified: Thu, 16 Jul 2026 21:12:18 GMT  
		Size: 783.6 KB (783557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08b808cb6d403ea62bf0ca55d80b02e4f48b00df4deedb4ede9fb5bdf0b4ce92`  
		Last Modified: Thu, 16 Jul 2026 21:12:18 GMT  
		Size: 9.1 MB (9149962 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0607e52657021d2ba23f686bf4ac3682959a5010f595d8b7ecb3834a7133b6c`  
		Last Modified: Thu, 16 Jul 2026 21:12:17 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61d49498d3daf7939de632d1ebfd183d7e62098868a88aeccf8a27c682adaf8d`  
		Last Modified: Thu, 16 Jul 2026 21:12:19 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ac73e0e3f6af7266188673d6322c5d6b9ec4f7e81e3b99edff839cf87b95f34`  
		Last Modified: Thu, 16 Jul 2026 21:12:21 GMT  
		Size: 57.0 MB (57001581 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb49c3208fe7e52b84e5365de9dba710b6e161300d2b3e482de49fdf073e91f2`  
		Last Modified: Thu, 16 Jul 2026 21:12:19 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1576763b528a9188d8bc57c350a0dc4b700fa81327a894ce22d223cb64aa30f6`  
		Last Modified: Thu, 16 Jul 2026 21:12:23 GMT  
		Size: 158.9 MB (158948170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81b3a6a3bce827069e4e0adbd8698c7d269aad8800c47c0d7bc3e9dccc006d45`  
		Last Modified: Thu, 16 Jul 2026 21:12:20 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:lts-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:62fb28aab81dd19c561cd3c7c417aa4e232ca88cd48a039b89a148503fb21a36
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16834315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99e0b3d47a221f14e8ec125766f21aaa5d7ef5d71fc7ffe894d5675c4ac86ceb`

```dockerfile
```

-	Layers:
	-	`sha256:1f9f19898688d14e171c172ac3a1ffed298397301becd2442b5b01330902e2bf`  
		Last Modified: Thu, 16 Jul 2026 21:12:18 GMT  
		Size: 16.8 MB (16799207 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a701ef10ab4613d6e4e58c934ae9af8c7bc7988fafd1d73d7aadf8b344c33a37`  
		Last Modified: Thu, 16 Jul 2026 21:12:17 GMT  
		Size: 35.1 KB (35108 bytes)  
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
$ docker pull mysql@sha256:8fdf311514c91fa5014e93e98e19d7f5d9eb162a462c13100c956dacc278ee21
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:oracle` - linux; amd64

```console
$ docker pull mysql@sha256:51eb6cabec24e43f1bd4c41b3f1e458bf0bf1be22b0ef148d5b837dbf7527d12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.8 MB (273821031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4babd5755458dab35968fb9d44f9a309ceb4d8a49327695a52763242153ddf5c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 16 Jul 2026 20:48:05 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 16 Jul 2026 20:48:05 GMT
CMD ["/bin/bash"]
# Thu, 16 Jul 2026 21:10:04 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 16 Jul 2026 21:10:06 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 21:10:06 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 21:10:33 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 16 Jul 2026 21:10:34 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 16 Jul 2026 21:10:34 GMT
ENV MYSQL_MAJOR=9.7
# Thu, 16 Jul 2026 21:10:34 GMT
ENV MYSQL_VERSION=9.7.1-1.el9
# Thu, 16 Jul 2026 21:10:34 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 16 Jul 2026 21:11:04 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 16 Jul 2026 21:11:04 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 16 Jul 2026 21:11:04 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Thu, 16 Jul 2026 21:11:44 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 16 Jul 2026 21:11:44 GMT
VOLUME [/var/lib/mysql]
# Thu, 16 Jul 2026 21:11:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 21:11:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 21:11:44 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 16 Jul 2026 21:11:44 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c2fb254fc2f4b50f787676deb0f80a262903ec364284bad41e6b1a75f587d3c8`  
		Last Modified: Thu, 16 Jul 2026 20:48:16 GMT  
		Size: 47.9 MB (47928388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e21df1635f12b5f0e835a229cb44d2f33f844617333e5300f5208642fbd1a246`  
		Last Modified: Thu, 16 Jul 2026 21:12:17 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88745f4755f0377bd2f1dbc7ae716ebd84d60ea26721e42ff2d2b1d1cf4cb84b`  
		Last Modified: Thu, 16 Jul 2026 21:12:18 GMT  
		Size: 783.6 KB (783557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08b808cb6d403ea62bf0ca55d80b02e4f48b00df4deedb4ede9fb5bdf0b4ce92`  
		Last Modified: Thu, 16 Jul 2026 21:12:18 GMT  
		Size: 9.1 MB (9149962 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0607e52657021d2ba23f686bf4ac3682959a5010f595d8b7ecb3834a7133b6c`  
		Last Modified: Thu, 16 Jul 2026 21:12:17 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61d49498d3daf7939de632d1ebfd183d7e62098868a88aeccf8a27c682adaf8d`  
		Last Modified: Thu, 16 Jul 2026 21:12:19 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ac73e0e3f6af7266188673d6322c5d6b9ec4f7e81e3b99edff839cf87b95f34`  
		Last Modified: Thu, 16 Jul 2026 21:12:21 GMT  
		Size: 57.0 MB (57001581 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb49c3208fe7e52b84e5365de9dba710b6e161300d2b3e482de49fdf073e91f2`  
		Last Modified: Thu, 16 Jul 2026 21:12:19 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1576763b528a9188d8bc57c350a0dc4b700fa81327a894ce22d223cb64aa30f6`  
		Last Modified: Thu, 16 Jul 2026 21:12:23 GMT  
		Size: 158.9 MB (158948170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81b3a6a3bce827069e4e0adbd8698c7d269aad8800c47c0d7bc3e9dccc006d45`  
		Last Modified: Thu, 16 Jul 2026 21:12:20 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:62fb28aab81dd19c561cd3c7c417aa4e232ca88cd48a039b89a148503fb21a36
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16834315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99e0b3d47a221f14e8ec125766f21aaa5d7ef5d71fc7ffe894d5675c4ac86ceb`

```dockerfile
```

-	Layers:
	-	`sha256:1f9f19898688d14e171c172ac3a1ffed298397301becd2442b5b01330902e2bf`  
		Last Modified: Thu, 16 Jul 2026 21:12:18 GMT  
		Size: 16.8 MB (16799207 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a701ef10ab4613d6e4e58c934ae9af8c7bc7988fafd1d73d7aadf8b344c33a37`  
		Last Modified: Thu, 16 Jul 2026 21:12:17 GMT  
		Size: 35.1 KB (35108 bytes)  
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
$ docker pull mysql@sha256:8fdf311514c91fa5014e93e98e19d7f5d9eb162a462c13100c956dacc278ee21
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:51eb6cabec24e43f1bd4c41b3f1e458bf0bf1be22b0ef148d5b837dbf7527d12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.8 MB (273821031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4babd5755458dab35968fb9d44f9a309ceb4d8a49327695a52763242153ddf5c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 16 Jul 2026 20:48:05 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 16 Jul 2026 20:48:05 GMT
CMD ["/bin/bash"]
# Thu, 16 Jul 2026 21:10:04 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 16 Jul 2026 21:10:06 GMT
ENV GOSU_VERSION=1.19
# Thu, 16 Jul 2026 21:10:06 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 16 Jul 2026 21:10:33 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 16 Jul 2026 21:10:34 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 16 Jul 2026 21:10:34 GMT
ENV MYSQL_MAJOR=9.7
# Thu, 16 Jul 2026 21:10:34 GMT
ENV MYSQL_VERSION=9.7.1-1.el9
# Thu, 16 Jul 2026 21:10:34 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 16 Jul 2026 21:11:04 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 16 Jul 2026 21:11:04 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 16 Jul 2026 21:11:04 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Thu, 16 Jul 2026 21:11:44 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 16 Jul 2026 21:11:44 GMT
VOLUME [/var/lib/mysql]
# Thu, 16 Jul 2026 21:11:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 21:11:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 21:11:44 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 16 Jul 2026 21:11:44 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c2fb254fc2f4b50f787676deb0f80a262903ec364284bad41e6b1a75f587d3c8`  
		Last Modified: Thu, 16 Jul 2026 20:48:16 GMT  
		Size: 47.9 MB (47928388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e21df1635f12b5f0e835a229cb44d2f33f844617333e5300f5208642fbd1a246`  
		Last Modified: Thu, 16 Jul 2026 21:12:17 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88745f4755f0377bd2f1dbc7ae716ebd84d60ea26721e42ff2d2b1d1cf4cb84b`  
		Last Modified: Thu, 16 Jul 2026 21:12:18 GMT  
		Size: 783.6 KB (783557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08b808cb6d403ea62bf0ca55d80b02e4f48b00df4deedb4ede9fb5bdf0b4ce92`  
		Last Modified: Thu, 16 Jul 2026 21:12:18 GMT  
		Size: 9.1 MB (9149962 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0607e52657021d2ba23f686bf4ac3682959a5010f595d8b7ecb3834a7133b6c`  
		Last Modified: Thu, 16 Jul 2026 21:12:17 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61d49498d3daf7939de632d1ebfd183d7e62098868a88aeccf8a27c682adaf8d`  
		Last Modified: Thu, 16 Jul 2026 21:12:19 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ac73e0e3f6af7266188673d6322c5d6b9ec4f7e81e3b99edff839cf87b95f34`  
		Last Modified: Thu, 16 Jul 2026 21:12:21 GMT  
		Size: 57.0 MB (57001581 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb49c3208fe7e52b84e5365de9dba710b6e161300d2b3e482de49fdf073e91f2`  
		Last Modified: Thu, 16 Jul 2026 21:12:19 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1576763b528a9188d8bc57c350a0dc4b700fa81327a894ce22d223cb64aa30f6`  
		Last Modified: Thu, 16 Jul 2026 21:12:23 GMT  
		Size: 158.9 MB (158948170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81b3a6a3bce827069e4e0adbd8698c7d269aad8800c47c0d7bc3e9dccc006d45`  
		Last Modified: Thu, 16 Jul 2026 21:12:20 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:62fb28aab81dd19c561cd3c7c417aa4e232ca88cd48a039b89a148503fb21a36
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16834315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99e0b3d47a221f14e8ec125766f21aaa5d7ef5d71fc7ffe894d5675c4ac86ceb`

```dockerfile
```

-	Layers:
	-	`sha256:1f9f19898688d14e171c172ac3a1ffed298397301becd2442b5b01330902e2bf`  
		Last Modified: Thu, 16 Jul 2026 21:12:18 GMT  
		Size: 16.8 MB (16799207 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a701ef10ab4613d6e4e58c934ae9af8c7bc7988fafd1d73d7aadf8b344c33a37`  
		Last Modified: Thu, 16 Jul 2026 21:12:17 GMT  
		Size: 35.1 KB (35108 bytes)  
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
