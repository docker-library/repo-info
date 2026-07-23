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
$ docker pull mysql@sha256:5700b0892591a760c4caef7a0024c887afd46317d73dd420801706e661c4db56
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8` - linux; amd64

```console
$ docker pull mysql@sha256:2b5c8d915a29ea484f9a120d843b86940a252583b7ce810769a928bf5666924b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.0 MB (238955081 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:456ff6c49a9faf3ca44210bd61f815ca7234150e82b98db4c6ed4f99a1af2d2b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 00:08:20 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 00:08:20 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 01:11:20 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 23 Jul 2026 01:11:22 GMT
ENV GOSU_VERSION=1.19
# Thu, 23 Jul 2026 01:11:22 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 23 Jul 2026 01:11:54 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 23 Jul 2026 01:11:55 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 23 Jul 2026 01:11:55 GMT
ENV MYSQL_MAJOR=8.4
# Thu, 23 Jul 2026 01:11:55 GMT
ENV MYSQL_VERSION=8.4.10-1.el9
# Thu, 23 Jul 2026 01:11:55 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 23 Jul 2026 01:12:30 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 23 Jul 2026 01:12:30 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 23 Jul 2026 01:12:30 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Thu, 23 Jul 2026 01:13:12 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 23 Jul 2026 01:13:12 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Jul 2026 01:13:12 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 23 Jul 2026 01:13:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Jul 2026 01:13:12 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 23 Jul 2026 01:13:12 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:9d94d9416e53c5cff08e1d846b220ef65ad225d72c44da5e6cabc702154a6c52`  
		Last Modified: Thu, 23 Jul 2026 00:08:32 GMT  
		Size: 47.9 MB (47927355 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a62d9c1f1cb77a364d919f8b2332c2d45ae5d72ff73a5761ac546b083baa4eeb`  
		Last Modified: Thu, 23 Jul 2026 01:13:44 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd1c9eaf5ab5d0c6d805df461339f8c761568d9b40774152df27fcf663cf9501`  
		Last Modified: Thu, 23 Jul 2026 01:13:44 GMT  
		Size: 783.6 KB (783555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:603b6b088d86996ad73c42a0ebafc0d05bb5ebae4490dae26b6b8da3dc9f04a8`  
		Last Modified: Thu, 23 Jul 2026 01:13:44 GMT  
		Size: 6.2 MB (6194640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc748833c697b51639f52b1a1c8e8ba70cb74399dbafc5403489a6502ac3573d`  
		Last Modified: Thu, 23 Jul 2026 01:13:44 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4591f8d690f018c0787d27b8c33bccbea3b9ed18dbb1460cf56492c2e3c4a3c5`  
		Last Modified: Thu, 23 Jul 2026 01:13:45 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6db658f0caa90474f28503652b028f47680b9711240e75ad19ff482f3e646af2`  
		Last Modified: Thu, 23 Jul 2026 01:13:47 GMT  
		Size: 51.6 MB (51611066 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cd1b31319d9fd0efa6a76dd8d4568a22596e8b5ab48a27f0b2748672d838767`  
		Last Modified: Thu, 23 Jul 2026 01:13:46 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89a3b9eed08cbbfe389dcc09e647b9c7c0a264c2159adb89550855d180beca6a`  
		Last Modified: Thu, 23 Jul 2026 01:13:49 GMT  
		Size: 132.4 MB (132429095 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87f78a05757c8be5234ae6e8f7159b121887b75cec2f901f94d2b618305cac21`  
		Last Modified: Thu, 23 Jul 2026 01:13:46 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8` - unknown; unknown

```console
$ docker pull mysql@sha256:2a7ee55e561c8ab9ab4f03008f0c6e0a16617ddec09f205839cc4664a7b4b6eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15745154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:183fb9fcd9d1ffe36561d7fb58c9e4c282505d8eeadc02826ca12a8cc8a601e5`

```dockerfile
```

-	Layers:
	-	`sha256:777de9b94c15e46def5773cd5177aa96d4a58bb1078a9b69c154b9e5f9fdb68f`  
		Last Modified: Thu, 23 Jul 2026 01:13:45 GMT  
		Size: 15.7 MB (15711841 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e432b71da99683c401fbf9f4ba2662d2c68a651d12c57678fc32cd92be62931d`  
		Last Modified: Thu, 23 Jul 2026 01:13:44 GMT  
		Size: 33.3 KB (33313 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:b3e29947e27c4cd2ddfa8689b11d0615a7fb3fbb16564c706f8eff428a9e4737
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.7 MB (233679214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03793c2f4900c83c24a4c4a74e7250ce5762089c8937bcb3fc665d50c882bce9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 00:07:52 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 00:07:52 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 01:11:04 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 23 Jul 2026 01:11:06 GMT
ENV GOSU_VERSION=1.19
# Thu, 23 Jul 2026 01:11:06 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 23 Jul 2026 01:11:42 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 23 Jul 2026 01:11:43 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 23 Jul 2026 01:11:43 GMT
ENV MYSQL_MAJOR=8.4
# Thu, 23 Jul 2026 01:11:43 GMT
ENV MYSQL_VERSION=8.4.10-1.el9
# Thu, 23 Jul 2026 01:11:43 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 23 Jul 2026 01:12:21 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 23 Jul 2026 01:12:21 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 23 Jul 2026 01:12:21 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Thu, 23 Jul 2026 01:13:09 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 23 Jul 2026 01:13:09 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Jul 2026 01:13:09 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 23 Jul 2026 01:13:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Jul 2026 01:13:09 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 23 Jul 2026 01:13:09 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b31b097f727a2c22897a0b842f2ed2d61f747e4a77d76f77ad13cae7aa1de1e5`  
		Last Modified: Thu, 23 Jul 2026 00:08:04 GMT  
		Size: 46.5 MB (46478083 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c329ef3e094f6bc5210b8d34967a735ad78e07b0790f406c80165ed6b838e3ad`  
		Last Modified: Thu, 23 Jul 2026 01:13:40 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f90882fa4335434dbee7faf15995ce5ec913fbb48372d8d564ebe5eda6ee720a`  
		Last Modified: Thu, 23 Jul 2026 01:13:41 GMT  
		Size: 737.5 KB (737522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6af8812142b58bfc8177da92f45816ebf4c2d664736bb221d7ab00ea6407fbaa`  
		Last Modified: Thu, 23 Jul 2026 01:13:41 GMT  
		Size: 5.8 MB (5816807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a785bdcec2750f192ad5c552cef21a683a78f8ae5aec7d06169ce58b25825a69`  
		Last Modified: Thu, 23 Jul 2026 01:13:40 GMT  
		Size: 2.6 KB (2606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d86d80c372ac2011a0573f6f108e92474e155f9f647a6c6f0508da492d92831`  
		Last Modified: Thu, 23 Jul 2026 01:13:42 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51f3677d8dcdef3a5b5d055b2d1cf86712928d7651345f2ca454386890579a8b`  
		Last Modified: Thu, 23 Jul 2026 01:13:43 GMT  
		Size: 49.8 MB (49844499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3938836134d616b335b34cab8525465e5d0babf51421f51c0558179fdf926514`  
		Last Modified: Thu, 23 Jul 2026 01:13:42 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d6aa63f86b2091039557e593f18f9d42005ce3632ac8b6f020e81d6c290ed3b`  
		Last Modified: Thu, 23 Jul 2026 01:13:45 GMT  
		Size: 130.8 MB (130792937 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:369e20a098cfad25794bfd04dfe8aaa5727af34f7667a280bdc5c2cf897dff41`  
		Last Modified: Thu, 23 Jul 2026 01:13:43 GMT  
		Size: 5.2 KB (5222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8` - unknown; unknown

```console
$ docker pull mysql@sha256:eec6a0e5a020e488ed72909fe0be67e68c359fff346b3582293c315983bdd4d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15743822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e097c98eb73159305613c4d691e878a8a5bb2266e431118b0d4dd6a987b20a55`

```dockerfile
```

-	Layers:
	-	`sha256:d5225ccaf1ca90dbdf1481b7e9612a0f3a2c70a0e9cf43e21013b5af395096f0`  
		Last Modified: Thu, 23 Jul 2026 01:13:41 GMT  
		Size: 15.7 MB (15710241 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:084563e8c0e25bb495b2b1c213a68652090a986693510cae9ebe88f5a24a972a`  
		Last Modified: Thu, 23 Jul 2026 01:13:41 GMT  
		Size: 33.6 KB (33581 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:8-oracle`

```console
$ docker pull mysql@sha256:5700b0892591a760c4caef7a0024c887afd46317d73dd420801706e661c4db56
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:2b5c8d915a29ea484f9a120d843b86940a252583b7ce810769a928bf5666924b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.0 MB (238955081 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:456ff6c49a9faf3ca44210bd61f815ca7234150e82b98db4c6ed4f99a1af2d2b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 00:08:20 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 00:08:20 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 01:11:20 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 23 Jul 2026 01:11:22 GMT
ENV GOSU_VERSION=1.19
# Thu, 23 Jul 2026 01:11:22 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 23 Jul 2026 01:11:54 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 23 Jul 2026 01:11:55 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 23 Jul 2026 01:11:55 GMT
ENV MYSQL_MAJOR=8.4
# Thu, 23 Jul 2026 01:11:55 GMT
ENV MYSQL_VERSION=8.4.10-1.el9
# Thu, 23 Jul 2026 01:11:55 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 23 Jul 2026 01:12:30 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 23 Jul 2026 01:12:30 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 23 Jul 2026 01:12:30 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Thu, 23 Jul 2026 01:13:12 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 23 Jul 2026 01:13:12 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Jul 2026 01:13:12 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 23 Jul 2026 01:13:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Jul 2026 01:13:12 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 23 Jul 2026 01:13:12 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:9d94d9416e53c5cff08e1d846b220ef65ad225d72c44da5e6cabc702154a6c52`  
		Last Modified: Thu, 23 Jul 2026 00:08:32 GMT  
		Size: 47.9 MB (47927355 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a62d9c1f1cb77a364d919f8b2332c2d45ae5d72ff73a5761ac546b083baa4eeb`  
		Last Modified: Thu, 23 Jul 2026 01:13:44 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd1c9eaf5ab5d0c6d805df461339f8c761568d9b40774152df27fcf663cf9501`  
		Last Modified: Thu, 23 Jul 2026 01:13:44 GMT  
		Size: 783.6 KB (783555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:603b6b088d86996ad73c42a0ebafc0d05bb5ebae4490dae26b6b8da3dc9f04a8`  
		Last Modified: Thu, 23 Jul 2026 01:13:44 GMT  
		Size: 6.2 MB (6194640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc748833c697b51639f52b1a1c8e8ba70cb74399dbafc5403489a6502ac3573d`  
		Last Modified: Thu, 23 Jul 2026 01:13:44 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4591f8d690f018c0787d27b8c33bccbea3b9ed18dbb1460cf56492c2e3c4a3c5`  
		Last Modified: Thu, 23 Jul 2026 01:13:45 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6db658f0caa90474f28503652b028f47680b9711240e75ad19ff482f3e646af2`  
		Last Modified: Thu, 23 Jul 2026 01:13:47 GMT  
		Size: 51.6 MB (51611066 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cd1b31319d9fd0efa6a76dd8d4568a22596e8b5ab48a27f0b2748672d838767`  
		Last Modified: Thu, 23 Jul 2026 01:13:46 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89a3b9eed08cbbfe389dcc09e647b9c7c0a264c2159adb89550855d180beca6a`  
		Last Modified: Thu, 23 Jul 2026 01:13:49 GMT  
		Size: 132.4 MB (132429095 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87f78a05757c8be5234ae6e8f7159b121887b75cec2f901f94d2b618305cac21`  
		Last Modified: Thu, 23 Jul 2026 01:13:46 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:2a7ee55e561c8ab9ab4f03008f0c6e0a16617ddec09f205839cc4664a7b4b6eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15745154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:183fb9fcd9d1ffe36561d7fb58c9e4c282505d8eeadc02826ca12a8cc8a601e5`

```dockerfile
```

-	Layers:
	-	`sha256:777de9b94c15e46def5773cd5177aa96d4a58bb1078a9b69c154b9e5f9fdb68f`  
		Last Modified: Thu, 23 Jul 2026 01:13:45 GMT  
		Size: 15.7 MB (15711841 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e432b71da99683c401fbf9f4ba2662d2c68a651d12c57678fc32cd92be62931d`  
		Last Modified: Thu, 23 Jul 2026 01:13:44 GMT  
		Size: 33.3 KB (33313 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:b3e29947e27c4cd2ddfa8689b11d0615a7fb3fbb16564c706f8eff428a9e4737
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.7 MB (233679214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03793c2f4900c83c24a4c4a74e7250ce5762089c8937bcb3fc665d50c882bce9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 00:07:52 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 00:07:52 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 01:11:04 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 23 Jul 2026 01:11:06 GMT
ENV GOSU_VERSION=1.19
# Thu, 23 Jul 2026 01:11:06 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 23 Jul 2026 01:11:42 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 23 Jul 2026 01:11:43 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 23 Jul 2026 01:11:43 GMT
ENV MYSQL_MAJOR=8.4
# Thu, 23 Jul 2026 01:11:43 GMT
ENV MYSQL_VERSION=8.4.10-1.el9
# Thu, 23 Jul 2026 01:11:43 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 23 Jul 2026 01:12:21 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 23 Jul 2026 01:12:21 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 23 Jul 2026 01:12:21 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Thu, 23 Jul 2026 01:13:09 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 23 Jul 2026 01:13:09 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Jul 2026 01:13:09 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 23 Jul 2026 01:13:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Jul 2026 01:13:09 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 23 Jul 2026 01:13:09 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b31b097f727a2c22897a0b842f2ed2d61f747e4a77d76f77ad13cae7aa1de1e5`  
		Last Modified: Thu, 23 Jul 2026 00:08:04 GMT  
		Size: 46.5 MB (46478083 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c329ef3e094f6bc5210b8d34967a735ad78e07b0790f406c80165ed6b838e3ad`  
		Last Modified: Thu, 23 Jul 2026 01:13:40 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f90882fa4335434dbee7faf15995ce5ec913fbb48372d8d564ebe5eda6ee720a`  
		Last Modified: Thu, 23 Jul 2026 01:13:41 GMT  
		Size: 737.5 KB (737522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6af8812142b58bfc8177da92f45816ebf4c2d664736bb221d7ab00ea6407fbaa`  
		Last Modified: Thu, 23 Jul 2026 01:13:41 GMT  
		Size: 5.8 MB (5816807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a785bdcec2750f192ad5c552cef21a683a78f8ae5aec7d06169ce58b25825a69`  
		Last Modified: Thu, 23 Jul 2026 01:13:40 GMT  
		Size: 2.6 KB (2606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d86d80c372ac2011a0573f6f108e92474e155f9f647a6c6f0508da492d92831`  
		Last Modified: Thu, 23 Jul 2026 01:13:42 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51f3677d8dcdef3a5b5d055b2d1cf86712928d7651345f2ca454386890579a8b`  
		Last Modified: Thu, 23 Jul 2026 01:13:43 GMT  
		Size: 49.8 MB (49844499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3938836134d616b335b34cab8525465e5d0babf51421f51c0558179fdf926514`  
		Last Modified: Thu, 23 Jul 2026 01:13:42 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d6aa63f86b2091039557e593f18f9d42005ce3632ac8b6f020e81d6c290ed3b`  
		Last Modified: Thu, 23 Jul 2026 01:13:45 GMT  
		Size: 130.8 MB (130792937 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:369e20a098cfad25794bfd04dfe8aaa5727af34f7667a280bdc5c2cf897dff41`  
		Last Modified: Thu, 23 Jul 2026 01:13:43 GMT  
		Size: 5.2 KB (5222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:eec6a0e5a020e488ed72909fe0be67e68c359fff346b3582293c315983bdd4d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15743822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e097c98eb73159305613c4d691e878a8a5bb2266e431118b0d4dd6a987b20a55`

```dockerfile
```

-	Layers:
	-	`sha256:d5225ccaf1ca90dbdf1481b7e9612a0f3a2c70a0e9cf43e21013b5af395096f0`  
		Last Modified: Thu, 23 Jul 2026 01:13:41 GMT  
		Size: 15.7 MB (15710241 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:084563e8c0e25bb495b2b1c213a68652090a986693510cae9ebe88f5a24a972a`  
		Last Modified: Thu, 23 Jul 2026 01:13:41 GMT  
		Size: 33.6 KB (33581 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:8-oraclelinux9`

```console
$ docker pull mysql@sha256:5700b0892591a760c4caef7a0024c887afd46317d73dd420801706e661c4db56
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:2b5c8d915a29ea484f9a120d843b86940a252583b7ce810769a928bf5666924b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.0 MB (238955081 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:456ff6c49a9faf3ca44210bd61f815ca7234150e82b98db4c6ed4f99a1af2d2b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 00:08:20 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 00:08:20 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 01:11:20 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 23 Jul 2026 01:11:22 GMT
ENV GOSU_VERSION=1.19
# Thu, 23 Jul 2026 01:11:22 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 23 Jul 2026 01:11:54 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 23 Jul 2026 01:11:55 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 23 Jul 2026 01:11:55 GMT
ENV MYSQL_MAJOR=8.4
# Thu, 23 Jul 2026 01:11:55 GMT
ENV MYSQL_VERSION=8.4.10-1.el9
# Thu, 23 Jul 2026 01:11:55 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 23 Jul 2026 01:12:30 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 23 Jul 2026 01:12:30 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 23 Jul 2026 01:12:30 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Thu, 23 Jul 2026 01:13:12 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 23 Jul 2026 01:13:12 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Jul 2026 01:13:12 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 23 Jul 2026 01:13:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Jul 2026 01:13:12 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 23 Jul 2026 01:13:12 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:9d94d9416e53c5cff08e1d846b220ef65ad225d72c44da5e6cabc702154a6c52`  
		Last Modified: Thu, 23 Jul 2026 00:08:32 GMT  
		Size: 47.9 MB (47927355 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a62d9c1f1cb77a364d919f8b2332c2d45ae5d72ff73a5761ac546b083baa4eeb`  
		Last Modified: Thu, 23 Jul 2026 01:13:44 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd1c9eaf5ab5d0c6d805df461339f8c761568d9b40774152df27fcf663cf9501`  
		Last Modified: Thu, 23 Jul 2026 01:13:44 GMT  
		Size: 783.6 KB (783555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:603b6b088d86996ad73c42a0ebafc0d05bb5ebae4490dae26b6b8da3dc9f04a8`  
		Last Modified: Thu, 23 Jul 2026 01:13:44 GMT  
		Size: 6.2 MB (6194640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc748833c697b51639f52b1a1c8e8ba70cb74399dbafc5403489a6502ac3573d`  
		Last Modified: Thu, 23 Jul 2026 01:13:44 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4591f8d690f018c0787d27b8c33bccbea3b9ed18dbb1460cf56492c2e3c4a3c5`  
		Last Modified: Thu, 23 Jul 2026 01:13:45 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6db658f0caa90474f28503652b028f47680b9711240e75ad19ff482f3e646af2`  
		Last Modified: Thu, 23 Jul 2026 01:13:47 GMT  
		Size: 51.6 MB (51611066 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cd1b31319d9fd0efa6a76dd8d4568a22596e8b5ab48a27f0b2748672d838767`  
		Last Modified: Thu, 23 Jul 2026 01:13:46 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89a3b9eed08cbbfe389dcc09e647b9c7c0a264c2159adb89550855d180beca6a`  
		Last Modified: Thu, 23 Jul 2026 01:13:49 GMT  
		Size: 132.4 MB (132429095 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87f78a05757c8be5234ae6e8f7159b121887b75cec2f901f94d2b618305cac21`  
		Last Modified: Thu, 23 Jul 2026 01:13:46 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:2a7ee55e561c8ab9ab4f03008f0c6e0a16617ddec09f205839cc4664a7b4b6eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15745154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:183fb9fcd9d1ffe36561d7fb58c9e4c282505d8eeadc02826ca12a8cc8a601e5`

```dockerfile
```

-	Layers:
	-	`sha256:777de9b94c15e46def5773cd5177aa96d4a58bb1078a9b69c154b9e5f9fdb68f`  
		Last Modified: Thu, 23 Jul 2026 01:13:45 GMT  
		Size: 15.7 MB (15711841 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e432b71da99683c401fbf9f4ba2662d2c68a651d12c57678fc32cd92be62931d`  
		Last Modified: Thu, 23 Jul 2026 01:13:44 GMT  
		Size: 33.3 KB (33313 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:b3e29947e27c4cd2ddfa8689b11d0615a7fb3fbb16564c706f8eff428a9e4737
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.7 MB (233679214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03793c2f4900c83c24a4c4a74e7250ce5762089c8937bcb3fc665d50c882bce9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 00:07:52 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 00:07:52 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 01:11:04 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 23 Jul 2026 01:11:06 GMT
ENV GOSU_VERSION=1.19
# Thu, 23 Jul 2026 01:11:06 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 23 Jul 2026 01:11:42 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 23 Jul 2026 01:11:43 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 23 Jul 2026 01:11:43 GMT
ENV MYSQL_MAJOR=8.4
# Thu, 23 Jul 2026 01:11:43 GMT
ENV MYSQL_VERSION=8.4.10-1.el9
# Thu, 23 Jul 2026 01:11:43 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 23 Jul 2026 01:12:21 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 23 Jul 2026 01:12:21 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 23 Jul 2026 01:12:21 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Thu, 23 Jul 2026 01:13:09 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 23 Jul 2026 01:13:09 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Jul 2026 01:13:09 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 23 Jul 2026 01:13:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Jul 2026 01:13:09 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 23 Jul 2026 01:13:09 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b31b097f727a2c22897a0b842f2ed2d61f747e4a77d76f77ad13cae7aa1de1e5`  
		Last Modified: Thu, 23 Jul 2026 00:08:04 GMT  
		Size: 46.5 MB (46478083 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c329ef3e094f6bc5210b8d34967a735ad78e07b0790f406c80165ed6b838e3ad`  
		Last Modified: Thu, 23 Jul 2026 01:13:40 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f90882fa4335434dbee7faf15995ce5ec913fbb48372d8d564ebe5eda6ee720a`  
		Last Modified: Thu, 23 Jul 2026 01:13:41 GMT  
		Size: 737.5 KB (737522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6af8812142b58bfc8177da92f45816ebf4c2d664736bb221d7ab00ea6407fbaa`  
		Last Modified: Thu, 23 Jul 2026 01:13:41 GMT  
		Size: 5.8 MB (5816807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a785bdcec2750f192ad5c552cef21a683a78f8ae5aec7d06169ce58b25825a69`  
		Last Modified: Thu, 23 Jul 2026 01:13:40 GMT  
		Size: 2.6 KB (2606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d86d80c372ac2011a0573f6f108e92474e155f9f647a6c6f0508da492d92831`  
		Last Modified: Thu, 23 Jul 2026 01:13:42 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51f3677d8dcdef3a5b5d055b2d1cf86712928d7651345f2ca454386890579a8b`  
		Last Modified: Thu, 23 Jul 2026 01:13:43 GMT  
		Size: 49.8 MB (49844499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3938836134d616b335b34cab8525465e5d0babf51421f51c0558179fdf926514`  
		Last Modified: Thu, 23 Jul 2026 01:13:42 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d6aa63f86b2091039557e593f18f9d42005ce3632ac8b6f020e81d6c290ed3b`  
		Last Modified: Thu, 23 Jul 2026 01:13:45 GMT  
		Size: 130.8 MB (130792937 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:369e20a098cfad25794bfd04dfe8aaa5727af34f7667a280bdc5c2cf897dff41`  
		Last Modified: Thu, 23 Jul 2026 01:13:43 GMT  
		Size: 5.2 KB (5222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:eec6a0e5a020e488ed72909fe0be67e68c359fff346b3582293c315983bdd4d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15743822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e097c98eb73159305613c4d691e878a8a5bb2266e431118b0d4dd6a987b20a55`

```dockerfile
```

-	Layers:
	-	`sha256:d5225ccaf1ca90dbdf1481b7e9612a0f3a2c70a0e9cf43e21013b5af395096f0`  
		Last Modified: Thu, 23 Jul 2026 01:13:41 GMT  
		Size: 15.7 MB (15710241 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:084563e8c0e25bb495b2b1c213a68652090a986693510cae9ebe88f5a24a972a`  
		Last Modified: Thu, 23 Jul 2026 01:13:41 GMT  
		Size: 33.6 KB (33581 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:8.4`

```console
$ docker pull mysql@sha256:5700b0892591a760c4caef7a0024c887afd46317d73dd420801706e661c4db56
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8.4` - linux; amd64

```console
$ docker pull mysql@sha256:2b5c8d915a29ea484f9a120d843b86940a252583b7ce810769a928bf5666924b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.0 MB (238955081 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:456ff6c49a9faf3ca44210bd61f815ca7234150e82b98db4c6ed4f99a1af2d2b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 00:08:20 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 00:08:20 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 01:11:20 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 23 Jul 2026 01:11:22 GMT
ENV GOSU_VERSION=1.19
# Thu, 23 Jul 2026 01:11:22 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 23 Jul 2026 01:11:54 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 23 Jul 2026 01:11:55 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 23 Jul 2026 01:11:55 GMT
ENV MYSQL_MAJOR=8.4
# Thu, 23 Jul 2026 01:11:55 GMT
ENV MYSQL_VERSION=8.4.10-1.el9
# Thu, 23 Jul 2026 01:11:55 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 23 Jul 2026 01:12:30 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 23 Jul 2026 01:12:30 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 23 Jul 2026 01:12:30 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Thu, 23 Jul 2026 01:13:12 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 23 Jul 2026 01:13:12 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Jul 2026 01:13:12 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 23 Jul 2026 01:13:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Jul 2026 01:13:12 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 23 Jul 2026 01:13:12 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:9d94d9416e53c5cff08e1d846b220ef65ad225d72c44da5e6cabc702154a6c52`  
		Last Modified: Thu, 23 Jul 2026 00:08:32 GMT  
		Size: 47.9 MB (47927355 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a62d9c1f1cb77a364d919f8b2332c2d45ae5d72ff73a5761ac546b083baa4eeb`  
		Last Modified: Thu, 23 Jul 2026 01:13:44 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd1c9eaf5ab5d0c6d805df461339f8c761568d9b40774152df27fcf663cf9501`  
		Last Modified: Thu, 23 Jul 2026 01:13:44 GMT  
		Size: 783.6 KB (783555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:603b6b088d86996ad73c42a0ebafc0d05bb5ebae4490dae26b6b8da3dc9f04a8`  
		Last Modified: Thu, 23 Jul 2026 01:13:44 GMT  
		Size: 6.2 MB (6194640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc748833c697b51639f52b1a1c8e8ba70cb74399dbafc5403489a6502ac3573d`  
		Last Modified: Thu, 23 Jul 2026 01:13:44 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4591f8d690f018c0787d27b8c33bccbea3b9ed18dbb1460cf56492c2e3c4a3c5`  
		Last Modified: Thu, 23 Jul 2026 01:13:45 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6db658f0caa90474f28503652b028f47680b9711240e75ad19ff482f3e646af2`  
		Last Modified: Thu, 23 Jul 2026 01:13:47 GMT  
		Size: 51.6 MB (51611066 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cd1b31319d9fd0efa6a76dd8d4568a22596e8b5ab48a27f0b2748672d838767`  
		Last Modified: Thu, 23 Jul 2026 01:13:46 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89a3b9eed08cbbfe389dcc09e647b9c7c0a264c2159adb89550855d180beca6a`  
		Last Modified: Thu, 23 Jul 2026 01:13:49 GMT  
		Size: 132.4 MB (132429095 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87f78a05757c8be5234ae6e8f7159b121887b75cec2f901f94d2b618305cac21`  
		Last Modified: Thu, 23 Jul 2026 01:13:46 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4` - unknown; unknown

```console
$ docker pull mysql@sha256:2a7ee55e561c8ab9ab4f03008f0c6e0a16617ddec09f205839cc4664a7b4b6eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15745154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:183fb9fcd9d1ffe36561d7fb58c9e4c282505d8eeadc02826ca12a8cc8a601e5`

```dockerfile
```

-	Layers:
	-	`sha256:777de9b94c15e46def5773cd5177aa96d4a58bb1078a9b69c154b9e5f9fdb68f`  
		Last Modified: Thu, 23 Jul 2026 01:13:45 GMT  
		Size: 15.7 MB (15711841 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e432b71da99683c401fbf9f4ba2662d2c68a651d12c57678fc32cd92be62931d`  
		Last Modified: Thu, 23 Jul 2026 01:13:44 GMT  
		Size: 33.3 KB (33313 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8.4` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:b3e29947e27c4cd2ddfa8689b11d0615a7fb3fbb16564c706f8eff428a9e4737
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.7 MB (233679214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03793c2f4900c83c24a4c4a74e7250ce5762089c8937bcb3fc665d50c882bce9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 00:07:52 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 00:07:52 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 01:11:04 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 23 Jul 2026 01:11:06 GMT
ENV GOSU_VERSION=1.19
# Thu, 23 Jul 2026 01:11:06 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 23 Jul 2026 01:11:42 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 23 Jul 2026 01:11:43 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 23 Jul 2026 01:11:43 GMT
ENV MYSQL_MAJOR=8.4
# Thu, 23 Jul 2026 01:11:43 GMT
ENV MYSQL_VERSION=8.4.10-1.el9
# Thu, 23 Jul 2026 01:11:43 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 23 Jul 2026 01:12:21 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 23 Jul 2026 01:12:21 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 23 Jul 2026 01:12:21 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Thu, 23 Jul 2026 01:13:09 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 23 Jul 2026 01:13:09 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Jul 2026 01:13:09 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 23 Jul 2026 01:13:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Jul 2026 01:13:09 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 23 Jul 2026 01:13:09 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b31b097f727a2c22897a0b842f2ed2d61f747e4a77d76f77ad13cae7aa1de1e5`  
		Last Modified: Thu, 23 Jul 2026 00:08:04 GMT  
		Size: 46.5 MB (46478083 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c329ef3e094f6bc5210b8d34967a735ad78e07b0790f406c80165ed6b838e3ad`  
		Last Modified: Thu, 23 Jul 2026 01:13:40 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f90882fa4335434dbee7faf15995ce5ec913fbb48372d8d564ebe5eda6ee720a`  
		Last Modified: Thu, 23 Jul 2026 01:13:41 GMT  
		Size: 737.5 KB (737522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6af8812142b58bfc8177da92f45816ebf4c2d664736bb221d7ab00ea6407fbaa`  
		Last Modified: Thu, 23 Jul 2026 01:13:41 GMT  
		Size: 5.8 MB (5816807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a785bdcec2750f192ad5c552cef21a683a78f8ae5aec7d06169ce58b25825a69`  
		Last Modified: Thu, 23 Jul 2026 01:13:40 GMT  
		Size: 2.6 KB (2606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d86d80c372ac2011a0573f6f108e92474e155f9f647a6c6f0508da492d92831`  
		Last Modified: Thu, 23 Jul 2026 01:13:42 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51f3677d8dcdef3a5b5d055b2d1cf86712928d7651345f2ca454386890579a8b`  
		Last Modified: Thu, 23 Jul 2026 01:13:43 GMT  
		Size: 49.8 MB (49844499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3938836134d616b335b34cab8525465e5d0babf51421f51c0558179fdf926514`  
		Last Modified: Thu, 23 Jul 2026 01:13:42 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d6aa63f86b2091039557e593f18f9d42005ce3632ac8b6f020e81d6c290ed3b`  
		Last Modified: Thu, 23 Jul 2026 01:13:45 GMT  
		Size: 130.8 MB (130792937 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:369e20a098cfad25794bfd04dfe8aaa5727af34f7667a280bdc5c2cf897dff41`  
		Last Modified: Thu, 23 Jul 2026 01:13:43 GMT  
		Size: 5.2 KB (5222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4` - unknown; unknown

```console
$ docker pull mysql@sha256:eec6a0e5a020e488ed72909fe0be67e68c359fff346b3582293c315983bdd4d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15743822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e097c98eb73159305613c4d691e878a8a5bb2266e431118b0d4dd6a987b20a55`

```dockerfile
```

-	Layers:
	-	`sha256:d5225ccaf1ca90dbdf1481b7e9612a0f3a2c70a0e9cf43e21013b5af395096f0`  
		Last Modified: Thu, 23 Jul 2026 01:13:41 GMT  
		Size: 15.7 MB (15710241 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:084563e8c0e25bb495b2b1c213a68652090a986693510cae9ebe88f5a24a972a`  
		Last Modified: Thu, 23 Jul 2026 01:13:41 GMT  
		Size: 33.6 KB (33581 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:8.4-oracle`

```console
$ docker pull mysql@sha256:5700b0892591a760c4caef7a0024c887afd46317d73dd420801706e661c4db56
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8.4-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:2b5c8d915a29ea484f9a120d843b86940a252583b7ce810769a928bf5666924b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.0 MB (238955081 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:456ff6c49a9faf3ca44210bd61f815ca7234150e82b98db4c6ed4f99a1af2d2b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 00:08:20 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 00:08:20 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 01:11:20 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 23 Jul 2026 01:11:22 GMT
ENV GOSU_VERSION=1.19
# Thu, 23 Jul 2026 01:11:22 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 23 Jul 2026 01:11:54 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 23 Jul 2026 01:11:55 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 23 Jul 2026 01:11:55 GMT
ENV MYSQL_MAJOR=8.4
# Thu, 23 Jul 2026 01:11:55 GMT
ENV MYSQL_VERSION=8.4.10-1.el9
# Thu, 23 Jul 2026 01:11:55 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 23 Jul 2026 01:12:30 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 23 Jul 2026 01:12:30 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 23 Jul 2026 01:12:30 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Thu, 23 Jul 2026 01:13:12 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 23 Jul 2026 01:13:12 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Jul 2026 01:13:12 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 23 Jul 2026 01:13:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Jul 2026 01:13:12 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 23 Jul 2026 01:13:12 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:9d94d9416e53c5cff08e1d846b220ef65ad225d72c44da5e6cabc702154a6c52`  
		Last Modified: Thu, 23 Jul 2026 00:08:32 GMT  
		Size: 47.9 MB (47927355 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a62d9c1f1cb77a364d919f8b2332c2d45ae5d72ff73a5761ac546b083baa4eeb`  
		Last Modified: Thu, 23 Jul 2026 01:13:44 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd1c9eaf5ab5d0c6d805df461339f8c761568d9b40774152df27fcf663cf9501`  
		Last Modified: Thu, 23 Jul 2026 01:13:44 GMT  
		Size: 783.6 KB (783555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:603b6b088d86996ad73c42a0ebafc0d05bb5ebae4490dae26b6b8da3dc9f04a8`  
		Last Modified: Thu, 23 Jul 2026 01:13:44 GMT  
		Size: 6.2 MB (6194640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc748833c697b51639f52b1a1c8e8ba70cb74399dbafc5403489a6502ac3573d`  
		Last Modified: Thu, 23 Jul 2026 01:13:44 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4591f8d690f018c0787d27b8c33bccbea3b9ed18dbb1460cf56492c2e3c4a3c5`  
		Last Modified: Thu, 23 Jul 2026 01:13:45 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6db658f0caa90474f28503652b028f47680b9711240e75ad19ff482f3e646af2`  
		Last Modified: Thu, 23 Jul 2026 01:13:47 GMT  
		Size: 51.6 MB (51611066 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cd1b31319d9fd0efa6a76dd8d4568a22596e8b5ab48a27f0b2748672d838767`  
		Last Modified: Thu, 23 Jul 2026 01:13:46 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89a3b9eed08cbbfe389dcc09e647b9c7c0a264c2159adb89550855d180beca6a`  
		Last Modified: Thu, 23 Jul 2026 01:13:49 GMT  
		Size: 132.4 MB (132429095 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87f78a05757c8be5234ae6e8f7159b121887b75cec2f901f94d2b618305cac21`  
		Last Modified: Thu, 23 Jul 2026 01:13:46 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:2a7ee55e561c8ab9ab4f03008f0c6e0a16617ddec09f205839cc4664a7b4b6eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15745154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:183fb9fcd9d1ffe36561d7fb58c9e4c282505d8eeadc02826ca12a8cc8a601e5`

```dockerfile
```

-	Layers:
	-	`sha256:777de9b94c15e46def5773cd5177aa96d4a58bb1078a9b69c154b9e5f9fdb68f`  
		Last Modified: Thu, 23 Jul 2026 01:13:45 GMT  
		Size: 15.7 MB (15711841 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e432b71da99683c401fbf9f4ba2662d2c68a651d12c57678fc32cd92be62931d`  
		Last Modified: Thu, 23 Jul 2026 01:13:44 GMT  
		Size: 33.3 KB (33313 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8.4-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:b3e29947e27c4cd2ddfa8689b11d0615a7fb3fbb16564c706f8eff428a9e4737
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.7 MB (233679214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03793c2f4900c83c24a4c4a74e7250ce5762089c8937bcb3fc665d50c882bce9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 00:07:52 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 00:07:52 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 01:11:04 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 23 Jul 2026 01:11:06 GMT
ENV GOSU_VERSION=1.19
# Thu, 23 Jul 2026 01:11:06 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 23 Jul 2026 01:11:42 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 23 Jul 2026 01:11:43 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 23 Jul 2026 01:11:43 GMT
ENV MYSQL_MAJOR=8.4
# Thu, 23 Jul 2026 01:11:43 GMT
ENV MYSQL_VERSION=8.4.10-1.el9
# Thu, 23 Jul 2026 01:11:43 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 23 Jul 2026 01:12:21 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 23 Jul 2026 01:12:21 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 23 Jul 2026 01:12:21 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Thu, 23 Jul 2026 01:13:09 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 23 Jul 2026 01:13:09 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Jul 2026 01:13:09 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 23 Jul 2026 01:13:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Jul 2026 01:13:09 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 23 Jul 2026 01:13:09 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b31b097f727a2c22897a0b842f2ed2d61f747e4a77d76f77ad13cae7aa1de1e5`  
		Last Modified: Thu, 23 Jul 2026 00:08:04 GMT  
		Size: 46.5 MB (46478083 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c329ef3e094f6bc5210b8d34967a735ad78e07b0790f406c80165ed6b838e3ad`  
		Last Modified: Thu, 23 Jul 2026 01:13:40 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f90882fa4335434dbee7faf15995ce5ec913fbb48372d8d564ebe5eda6ee720a`  
		Last Modified: Thu, 23 Jul 2026 01:13:41 GMT  
		Size: 737.5 KB (737522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6af8812142b58bfc8177da92f45816ebf4c2d664736bb221d7ab00ea6407fbaa`  
		Last Modified: Thu, 23 Jul 2026 01:13:41 GMT  
		Size: 5.8 MB (5816807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a785bdcec2750f192ad5c552cef21a683a78f8ae5aec7d06169ce58b25825a69`  
		Last Modified: Thu, 23 Jul 2026 01:13:40 GMT  
		Size: 2.6 KB (2606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d86d80c372ac2011a0573f6f108e92474e155f9f647a6c6f0508da492d92831`  
		Last Modified: Thu, 23 Jul 2026 01:13:42 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51f3677d8dcdef3a5b5d055b2d1cf86712928d7651345f2ca454386890579a8b`  
		Last Modified: Thu, 23 Jul 2026 01:13:43 GMT  
		Size: 49.8 MB (49844499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3938836134d616b335b34cab8525465e5d0babf51421f51c0558179fdf926514`  
		Last Modified: Thu, 23 Jul 2026 01:13:42 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d6aa63f86b2091039557e593f18f9d42005ce3632ac8b6f020e81d6c290ed3b`  
		Last Modified: Thu, 23 Jul 2026 01:13:45 GMT  
		Size: 130.8 MB (130792937 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:369e20a098cfad25794bfd04dfe8aaa5727af34f7667a280bdc5c2cf897dff41`  
		Last Modified: Thu, 23 Jul 2026 01:13:43 GMT  
		Size: 5.2 KB (5222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:eec6a0e5a020e488ed72909fe0be67e68c359fff346b3582293c315983bdd4d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15743822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e097c98eb73159305613c4d691e878a8a5bb2266e431118b0d4dd6a987b20a55`

```dockerfile
```

-	Layers:
	-	`sha256:d5225ccaf1ca90dbdf1481b7e9612a0f3a2c70a0e9cf43e21013b5af395096f0`  
		Last Modified: Thu, 23 Jul 2026 01:13:41 GMT  
		Size: 15.7 MB (15710241 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:084563e8c0e25bb495b2b1c213a68652090a986693510cae9ebe88f5a24a972a`  
		Last Modified: Thu, 23 Jul 2026 01:13:41 GMT  
		Size: 33.6 KB (33581 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:8.4-oraclelinux9`

```console
$ docker pull mysql@sha256:5700b0892591a760c4caef7a0024c887afd46317d73dd420801706e661c4db56
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8.4-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:2b5c8d915a29ea484f9a120d843b86940a252583b7ce810769a928bf5666924b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.0 MB (238955081 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:456ff6c49a9faf3ca44210bd61f815ca7234150e82b98db4c6ed4f99a1af2d2b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 00:08:20 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 00:08:20 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 01:11:20 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 23 Jul 2026 01:11:22 GMT
ENV GOSU_VERSION=1.19
# Thu, 23 Jul 2026 01:11:22 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 23 Jul 2026 01:11:54 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 23 Jul 2026 01:11:55 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 23 Jul 2026 01:11:55 GMT
ENV MYSQL_MAJOR=8.4
# Thu, 23 Jul 2026 01:11:55 GMT
ENV MYSQL_VERSION=8.4.10-1.el9
# Thu, 23 Jul 2026 01:11:55 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 23 Jul 2026 01:12:30 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 23 Jul 2026 01:12:30 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 23 Jul 2026 01:12:30 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Thu, 23 Jul 2026 01:13:12 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 23 Jul 2026 01:13:12 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Jul 2026 01:13:12 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 23 Jul 2026 01:13:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Jul 2026 01:13:12 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 23 Jul 2026 01:13:12 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:9d94d9416e53c5cff08e1d846b220ef65ad225d72c44da5e6cabc702154a6c52`  
		Last Modified: Thu, 23 Jul 2026 00:08:32 GMT  
		Size: 47.9 MB (47927355 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a62d9c1f1cb77a364d919f8b2332c2d45ae5d72ff73a5761ac546b083baa4eeb`  
		Last Modified: Thu, 23 Jul 2026 01:13:44 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd1c9eaf5ab5d0c6d805df461339f8c761568d9b40774152df27fcf663cf9501`  
		Last Modified: Thu, 23 Jul 2026 01:13:44 GMT  
		Size: 783.6 KB (783555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:603b6b088d86996ad73c42a0ebafc0d05bb5ebae4490dae26b6b8da3dc9f04a8`  
		Last Modified: Thu, 23 Jul 2026 01:13:44 GMT  
		Size: 6.2 MB (6194640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc748833c697b51639f52b1a1c8e8ba70cb74399dbafc5403489a6502ac3573d`  
		Last Modified: Thu, 23 Jul 2026 01:13:44 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4591f8d690f018c0787d27b8c33bccbea3b9ed18dbb1460cf56492c2e3c4a3c5`  
		Last Modified: Thu, 23 Jul 2026 01:13:45 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6db658f0caa90474f28503652b028f47680b9711240e75ad19ff482f3e646af2`  
		Last Modified: Thu, 23 Jul 2026 01:13:47 GMT  
		Size: 51.6 MB (51611066 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cd1b31319d9fd0efa6a76dd8d4568a22596e8b5ab48a27f0b2748672d838767`  
		Last Modified: Thu, 23 Jul 2026 01:13:46 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89a3b9eed08cbbfe389dcc09e647b9c7c0a264c2159adb89550855d180beca6a`  
		Last Modified: Thu, 23 Jul 2026 01:13:49 GMT  
		Size: 132.4 MB (132429095 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87f78a05757c8be5234ae6e8f7159b121887b75cec2f901f94d2b618305cac21`  
		Last Modified: Thu, 23 Jul 2026 01:13:46 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:2a7ee55e561c8ab9ab4f03008f0c6e0a16617ddec09f205839cc4664a7b4b6eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15745154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:183fb9fcd9d1ffe36561d7fb58c9e4c282505d8eeadc02826ca12a8cc8a601e5`

```dockerfile
```

-	Layers:
	-	`sha256:777de9b94c15e46def5773cd5177aa96d4a58bb1078a9b69c154b9e5f9fdb68f`  
		Last Modified: Thu, 23 Jul 2026 01:13:45 GMT  
		Size: 15.7 MB (15711841 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e432b71da99683c401fbf9f4ba2662d2c68a651d12c57678fc32cd92be62931d`  
		Last Modified: Thu, 23 Jul 2026 01:13:44 GMT  
		Size: 33.3 KB (33313 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8.4-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:b3e29947e27c4cd2ddfa8689b11d0615a7fb3fbb16564c706f8eff428a9e4737
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.7 MB (233679214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03793c2f4900c83c24a4c4a74e7250ce5762089c8937bcb3fc665d50c882bce9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 00:07:52 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 00:07:52 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 01:11:04 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 23 Jul 2026 01:11:06 GMT
ENV GOSU_VERSION=1.19
# Thu, 23 Jul 2026 01:11:06 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 23 Jul 2026 01:11:42 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 23 Jul 2026 01:11:43 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 23 Jul 2026 01:11:43 GMT
ENV MYSQL_MAJOR=8.4
# Thu, 23 Jul 2026 01:11:43 GMT
ENV MYSQL_VERSION=8.4.10-1.el9
# Thu, 23 Jul 2026 01:11:43 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 23 Jul 2026 01:12:21 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 23 Jul 2026 01:12:21 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 23 Jul 2026 01:12:21 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Thu, 23 Jul 2026 01:13:09 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 23 Jul 2026 01:13:09 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Jul 2026 01:13:09 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 23 Jul 2026 01:13:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Jul 2026 01:13:09 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 23 Jul 2026 01:13:09 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b31b097f727a2c22897a0b842f2ed2d61f747e4a77d76f77ad13cae7aa1de1e5`  
		Last Modified: Thu, 23 Jul 2026 00:08:04 GMT  
		Size: 46.5 MB (46478083 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c329ef3e094f6bc5210b8d34967a735ad78e07b0790f406c80165ed6b838e3ad`  
		Last Modified: Thu, 23 Jul 2026 01:13:40 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f90882fa4335434dbee7faf15995ce5ec913fbb48372d8d564ebe5eda6ee720a`  
		Last Modified: Thu, 23 Jul 2026 01:13:41 GMT  
		Size: 737.5 KB (737522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6af8812142b58bfc8177da92f45816ebf4c2d664736bb221d7ab00ea6407fbaa`  
		Last Modified: Thu, 23 Jul 2026 01:13:41 GMT  
		Size: 5.8 MB (5816807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a785bdcec2750f192ad5c552cef21a683a78f8ae5aec7d06169ce58b25825a69`  
		Last Modified: Thu, 23 Jul 2026 01:13:40 GMT  
		Size: 2.6 KB (2606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d86d80c372ac2011a0573f6f108e92474e155f9f647a6c6f0508da492d92831`  
		Last Modified: Thu, 23 Jul 2026 01:13:42 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51f3677d8dcdef3a5b5d055b2d1cf86712928d7651345f2ca454386890579a8b`  
		Last Modified: Thu, 23 Jul 2026 01:13:43 GMT  
		Size: 49.8 MB (49844499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3938836134d616b335b34cab8525465e5d0babf51421f51c0558179fdf926514`  
		Last Modified: Thu, 23 Jul 2026 01:13:42 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d6aa63f86b2091039557e593f18f9d42005ce3632ac8b6f020e81d6c290ed3b`  
		Last Modified: Thu, 23 Jul 2026 01:13:45 GMT  
		Size: 130.8 MB (130792937 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:369e20a098cfad25794bfd04dfe8aaa5727af34f7667a280bdc5c2cf897dff41`  
		Last Modified: Thu, 23 Jul 2026 01:13:43 GMT  
		Size: 5.2 KB (5222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:eec6a0e5a020e488ed72909fe0be67e68c359fff346b3582293c315983bdd4d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15743822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e097c98eb73159305613c4d691e878a8a5bb2266e431118b0d4dd6a987b20a55`

```dockerfile
```

-	Layers:
	-	`sha256:d5225ccaf1ca90dbdf1481b7e9612a0f3a2c70a0e9cf43e21013b5af395096f0`  
		Last Modified: Thu, 23 Jul 2026 01:13:41 GMT  
		Size: 15.7 MB (15710241 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:084563e8c0e25bb495b2b1c213a68652090a986693510cae9ebe88f5a24a972a`  
		Last Modified: Thu, 23 Jul 2026 01:13:41 GMT  
		Size: 33.6 KB (33581 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:8.4.10`

```console
$ docker pull mysql@sha256:5700b0892591a760c4caef7a0024c887afd46317d73dd420801706e661c4db56
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8.4.10` - linux; amd64

```console
$ docker pull mysql@sha256:2b5c8d915a29ea484f9a120d843b86940a252583b7ce810769a928bf5666924b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.0 MB (238955081 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:456ff6c49a9faf3ca44210bd61f815ca7234150e82b98db4c6ed4f99a1af2d2b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 00:08:20 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 00:08:20 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 01:11:20 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 23 Jul 2026 01:11:22 GMT
ENV GOSU_VERSION=1.19
# Thu, 23 Jul 2026 01:11:22 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 23 Jul 2026 01:11:54 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 23 Jul 2026 01:11:55 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 23 Jul 2026 01:11:55 GMT
ENV MYSQL_MAJOR=8.4
# Thu, 23 Jul 2026 01:11:55 GMT
ENV MYSQL_VERSION=8.4.10-1.el9
# Thu, 23 Jul 2026 01:11:55 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 23 Jul 2026 01:12:30 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 23 Jul 2026 01:12:30 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 23 Jul 2026 01:12:30 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Thu, 23 Jul 2026 01:13:12 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 23 Jul 2026 01:13:12 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Jul 2026 01:13:12 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 23 Jul 2026 01:13:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Jul 2026 01:13:12 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 23 Jul 2026 01:13:12 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:9d94d9416e53c5cff08e1d846b220ef65ad225d72c44da5e6cabc702154a6c52`  
		Last Modified: Thu, 23 Jul 2026 00:08:32 GMT  
		Size: 47.9 MB (47927355 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a62d9c1f1cb77a364d919f8b2332c2d45ae5d72ff73a5761ac546b083baa4eeb`  
		Last Modified: Thu, 23 Jul 2026 01:13:44 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd1c9eaf5ab5d0c6d805df461339f8c761568d9b40774152df27fcf663cf9501`  
		Last Modified: Thu, 23 Jul 2026 01:13:44 GMT  
		Size: 783.6 KB (783555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:603b6b088d86996ad73c42a0ebafc0d05bb5ebae4490dae26b6b8da3dc9f04a8`  
		Last Modified: Thu, 23 Jul 2026 01:13:44 GMT  
		Size: 6.2 MB (6194640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc748833c697b51639f52b1a1c8e8ba70cb74399dbafc5403489a6502ac3573d`  
		Last Modified: Thu, 23 Jul 2026 01:13:44 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4591f8d690f018c0787d27b8c33bccbea3b9ed18dbb1460cf56492c2e3c4a3c5`  
		Last Modified: Thu, 23 Jul 2026 01:13:45 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6db658f0caa90474f28503652b028f47680b9711240e75ad19ff482f3e646af2`  
		Last Modified: Thu, 23 Jul 2026 01:13:47 GMT  
		Size: 51.6 MB (51611066 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cd1b31319d9fd0efa6a76dd8d4568a22596e8b5ab48a27f0b2748672d838767`  
		Last Modified: Thu, 23 Jul 2026 01:13:46 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89a3b9eed08cbbfe389dcc09e647b9c7c0a264c2159adb89550855d180beca6a`  
		Last Modified: Thu, 23 Jul 2026 01:13:49 GMT  
		Size: 132.4 MB (132429095 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87f78a05757c8be5234ae6e8f7159b121887b75cec2f901f94d2b618305cac21`  
		Last Modified: Thu, 23 Jul 2026 01:13:46 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4.10` - unknown; unknown

```console
$ docker pull mysql@sha256:2a7ee55e561c8ab9ab4f03008f0c6e0a16617ddec09f205839cc4664a7b4b6eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15745154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:183fb9fcd9d1ffe36561d7fb58c9e4c282505d8eeadc02826ca12a8cc8a601e5`

```dockerfile
```

-	Layers:
	-	`sha256:777de9b94c15e46def5773cd5177aa96d4a58bb1078a9b69c154b9e5f9fdb68f`  
		Last Modified: Thu, 23 Jul 2026 01:13:45 GMT  
		Size: 15.7 MB (15711841 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e432b71da99683c401fbf9f4ba2662d2c68a651d12c57678fc32cd92be62931d`  
		Last Modified: Thu, 23 Jul 2026 01:13:44 GMT  
		Size: 33.3 KB (33313 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8.4.10` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:b3e29947e27c4cd2ddfa8689b11d0615a7fb3fbb16564c706f8eff428a9e4737
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.7 MB (233679214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03793c2f4900c83c24a4c4a74e7250ce5762089c8937bcb3fc665d50c882bce9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 00:07:52 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 00:07:52 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 01:11:04 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 23 Jul 2026 01:11:06 GMT
ENV GOSU_VERSION=1.19
# Thu, 23 Jul 2026 01:11:06 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 23 Jul 2026 01:11:42 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 23 Jul 2026 01:11:43 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 23 Jul 2026 01:11:43 GMT
ENV MYSQL_MAJOR=8.4
# Thu, 23 Jul 2026 01:11:43 GMT
ENV MYSQL_VERSION=8.4.10-1.el9
# Thu, 23 Jul 2026 01:11:43 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 23 Jul 2026 01:12:21 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 23 Jul 2026 01:12:21 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 23 Jul 2026 01:12:21 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Thu, 23 Jul 2026 01:13:09 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 23 Jul 2026 01:13:09 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Jul 2026 01:13:09 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 23 Jul 2026 01:13:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Jul 2026 01:13:09 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 23 Jul 2026 01:13:09 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b31b097f727a2c22897a0b842f2ed2d61f747e4a77d76f77ad13cae7aa1de1e5`  
		Last Modified: Thu, 23 Jul 2026 00:08:04 GMT  
		Size: 46.5 MB (46478083 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c329ef3e094f6bc5210b8d34967a735ad78e07b0790f406c80165ed6b838e3ad`  
		Last Modified: Thu, 23 Jul 2026 01:13:40 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f90882fa4335434dbee7faf15995ce5ec913fbb48372d8d564ebe5eda6ee720a`  
		Last Modified: Thu, 23 Jul 2026 01:13:41 GMT  
		Size: 737.5 KB (737522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6af8812142b58bfc8177da92f45816ebf4c2d664736bb221d7ab00ea6407fbaa`  
		Last Modified: Thu, 23 Jul 2026 01:13:41 GMT  
		Size: 5.8 MB (5816807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a785bdcec2750f192ad5c552cef21a683a78f8ae5aec7d06169ce58b25825a69`  
		Last Modified: Thu, 23 Jul 2026 01:13:40 GMT  
		Size: 2.6 KB (2606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d86d80c372ac2011a0573f6f108e92474e155f9f647a6c6f0508da492d92831`  
		Last Modified: Thu, 23 Jul 2026 01:13:42 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51f3677d8dcdef3a5b5d055b2d1cf86712928d7651345f2ca454386890579a8b`  
		Last Modified: Thu, 23 Jul 2026 01:13:43 GMT  
		Size: 49.8 MB (49844499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3938836134d616b335b34cab8525465e5d0babf51421f51c0558179fdf926514`  
		Last Modified: Thu, 23 Jul 2026 01:13:42 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d6aa63f86b2091039557e593f18f9d42005ce3632ac8b6f020e81d6c290ed3b`  
		Last Modified: Thu, 23 Jul 2026 01:13:45 GMT  
		Size: 130.8 MB (130792937 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:369e20a098cfad25794bfd04dfe8aaa5727af34f7667a280bdc5c2cf897dff41`  
		Last Modified: Thu, 23 Jul 2026 01:13:43 GMT  
		Size: 5.2 KB (5222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4.10` - unknown; unknown

```console
$ docker pull mysql@sha256:eec6a0e5a020e488ed72909fe0be67e68c359fff346b3582293c315983bdd4d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15743822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e097c98eb73159305613c4d691e878a8a5bb2266e431118b0d4dd6a987b20a55`

```dockerfile
```

-	Layers:
	-	`sha256:d5225ccaf1ca90dbdf1481b7e9612a0f3a2c70a0e9cf43e21013b5af395096f0`  
		Last Modified: Thu, 23 Jul 2026 01:13:41 GMT  
		Size: 15.7 MB (15710241 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:084563e8c0e25bb495b2b1c213a68652090a986693510cae9ebe88f5a24a972a`  
		Last Modified: Thu, 23 Jul 2026 01:13:41 GMT  
		Size: 33.6 KB (33581 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:8.4.10-oracle`

```console
$ docker pull mysql@sha256:5700b0892591a760c4caef7a0024c887afd46317d73dd420801706e661c4db56
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8.4.10-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:2b5c8d915a29ea484f9a120d843b86940a252583b7ce810769a928bf5666924b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.0 MB (238955081 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:456ff6c49a9faf3ca44210bd61f815ca7234150e82b98db4c6ed4f99a1af2d2b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 00:08:20 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 00:08:20 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 01:11:20 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 23 Jul 2026 01:11:22 GMT
ENV GOSU_VERSION=1.19
# Thu, 23 Jul 2026 01:11:22 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 23 Jul 2026 01:11:54 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 23 Jul 2026 01:11:55 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 23 Jul 2026 01:11:55 GMT
ENV MYSQL_MAJOR=8.4
# Thu, 23 Jul 2026 01:11:55 GMT
ENV MYSQL_VERSION=8.4.10-1.el9
# Thu, 23 Jul 2026 01:11:55 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 23 Jul 2026 01:12:30 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 23 Jul 2026 01:12:30 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 23 Jul 2026 01:12:30 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Thu, 23 Jul 2026 01:13:12 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 23 Jul 2026 01:13:12 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Jul 2026 01:13:12 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 23 Jul 2026 01:13:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Jul 2026 01:13:12 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 23 Jul 2026 01:13:12 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:9d94d9416e53c5cff08e1d846b220ef65ad225d72c44da5e6cabc702154a6c52`  
		Last Modified: Thu, 23 Jul 2026 00:08:32 GMT  
		Size: 47.9 MB (47927355 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a62d9c1f1cb77a364d919f8b2332c2d45ae5d72ff73a5761ac546b083baa4eeb`  
		Last Modified: Thu, 23 Jul 2026 01:13:44 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd1c9eaf5ab5d0c6d805df461339f8c761568d9b40774152df27fcf663cf9501`  
		Last Modified: Thu, 23 Jul 2026 01:13:44 GMT  
		Size: 783.6 KB (783555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:603b6b088d86996ad73c42a0ebafc0d05bb5ebae4490dae26b6b8da3dc9f04a8`  
		Last Modified: Thu, 23 Jul 2026 01:13:44 GMT  
		Size: 6.2 MB (6194640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc748833c697b51639f52b1a1c8e8ba70cb74399dbafc5403489a6502ac3573d`  
		Last Modified: Thu, 23 Jul 2026 01:13:44 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4591f8d690f018c0787d27b8c33bccbea3b9ed18dbb1460cf56492c2e3c4a3c5`  
		Last Modified: Thu, 23 Jul 2026 01:13:45 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6db658f0caa90474f28503652b028f47680b9711240e75ad19ff482f3e646af2`  
		Last Modified: Thu, 23 Jul 2026 01:13:47 GMT  
		Size: 51.6 MB (51611066 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cd1b31319d9fd0efa6a76dd8d4568a22596e8b5ab48a27f0b2748672d838767`  
		Last Modified: Thu, 23 Jul 2026 01:13:46 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89a3b9eed08cbbfe389dcc09e647b9c7c0a264c2159adb89550855d180beca6a`  
		Last Modified: Thu, 23 Jul 2026 01:13:49 GMT  
		Size: 132.4 MB (132429095 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87f78a05757c8be5234ae6e8f7159b121887b75cec2f901f94d2b618305cac21`  
		Last Modified: Thu, 23 Jul 2026 01:13:46 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4.10-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:2a7ee55e561c8ab9ab4f03008f0c6e0a16617ddec09f205839cc4664a7b4b6eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15745154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:183fb9fcd9d1ffe36561d7fb58c9e4c282505d8eeadc02826ca12a8cc8a601e5`

```dockerfile
```

-	Layers:
	-	`sha256:777de9b94c15e46def5773cd5177aa96d4a58bb1078a9b69c154b9e5f9fdb68f`  
		Last Modified: Thu, 23 Jul 2026 01:13:45 GMT  
		Size: 15.7 MB (15711841 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e432b71da99683c401fbf9f4ba2662d2c68a651d12c57678fc32cd92be62931d`  
		Last Modified: Thu, 23 Jul 2026 01:13:44 GMT  
		Size: 33.3 KB (33313 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8.4.10-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:b3e29947e27c4cd2ddfa8689b11d0615a7fb3fbb16564c706f8eff428a9e4737
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.7 MB (233679214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03793c2f4900c83c24a4c4a74e7250ce5762089c8937bcb3fc665d50c882bce9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 00:07:52 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 00:07:52 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 01:11:04 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 23 Jul 2026 01:11:06 GMT
ENV GOSU_VERSION=1.19
# Thu, 23 Jul 2026 01:11:06 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 23 Jul 2026 01:11:42 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 23 Jul 2026 01:11:43 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 23 Jul 2026 01:11:43 GMT
ENV MYSQL_MAJOR=8.4
# Thu, 23 Jul 2026 01:11:43 GMT
ENV MYSQL_VERSION=8.4.10-1.el9
# Thu, 23 Jul 2026 01:11:43 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 23 Jul 2026 01:12:21 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 23 Jul 2026 01:12:21 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 23 Jul 2026 01:12:21 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Thu, 23 Jul 2026 01:13:09 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 23 Jul 2026 01:13:09 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Jul 2026 01:13:09 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 23 Jul 2026 01:13:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Jul 2026 01:13:09 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 23 Jul 2026 01:13:09 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b31b097f727a2c22897a0b842f2ed2d61f747e4a77d76f77ad13cae7aa1de1e5`  
		Last Modified: Thu, 23 Jul 2026 00:08:04 GMT  
		Size: 46.5 MB (46478083 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c329ef3e094f6bc5210b8d34967a735ad78e07b0790f406c80165ed6b838e3ad`  
		Last Modified: Thu, 23 Jul 2026 01:13:40 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f90882fa4335434dbee7faf15995ce5ec913fbb48372d8d564ebe5eda6ee720a`  
		Last Modified: Thu, 23 Jul 2026 01:13:41 GMT  
		Size: 737.5 KB (737522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6af8812142b58bfc8177da92f45816ebf4c2d664736bb221d7ab00ea6407fbaa`  
		Last Modified: Thu, 23 Jul 2026 01:13:41 GMT  
		Size: 5.8 MB (5816807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a785bdcec2750f192ad5c552cef21a683a78f8ae5aec7d06169ce58b25825a69`  
		Last Modified: Thu, 23 Jul 2026 01:13:40 GMT  
		Size: 2.6 KB (2606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d86d80c372ac2011a0573f6f108e92474e155f9f647a6c6f0508da492d92831`  
		Last Modified: Thu, 23 Jul 2026 01:13:42 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51f3677d8dcdef3a5b5d055b2d1cf86712928d7651345f2ca454386890579a8b`  
		Last Modified: Thu, 23 Jul 2026 01:13:43 GMT  
		Size: 49.8 MB (49844499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3938836134d616b335b34cab8525465e5d0babf51421f51c0558179fdf926514`  
		Last Modified: Thu, 23 Jul 2026 01:13:42 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d6aa63f86b2091039557e593f18f9d42005ce3632ac8b6f020e81d6c290ed3b`  
		Last Modified: Thu, 23 Jul 2026 01:13:45 GMT  
		Size: 130.8 MB (130792937 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:369e20a098cfad25794bfd04dfe8aaa5727af34f7667a280bdc5c2cf897dff41`  
		Last Modified: Thu, 23 Jul 2026 01:13:43 GMT  
		Size: 5.2 KB (5222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4.10-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:eec6a0e5a020e488ed72909fe0be67e68c359fff346b3582293c315983bdd4d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15743822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e097c98eb73159305613c4d691e878a8a5bb2266e431118b0d4dd6a987b20a55`

```dockerfile
```

-	Layers:
	-	`sha256:d5225ccaf1ca90dbdf1481b7e9612a0f3a2c70a0e9cf43e21013b5af395096f0`  
		Last Modified: Thu, 23 Jul 2026 01:13:41 GMT  
		Size: 15.7 MB (15710241 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:084563e8c0e25bb495b2b1c213a68652090a986693510cae9ebe88f5a24a972a`  
		Last Modified: Thu, 23 Jul 2026 01:13:41 GMT  
		Size: 33.6 KB (33581 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:8.4.10-oraclelinux9`

```console
$ docker pull mysql@sha256:5700b0892591a760c4caef7a0024c887afd46317d73dd420801706e661c4db56
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8.4.10-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:2b5c8d915a29ea484f9a120d843b86940a252583b7ce810769a928bf5666924b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.0 MB (238955081 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:456ff6c49a9faf3ca44210bd61f815ca7234150e82b98db4c6ed4f99a1af2d2b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 00:08:20 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 00:08:20 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 01:11:20 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 23 Jul 2026 01:11:22 GMT
ENV GOSU_VERSION=1.19
# Thu, 23 Jul 2026 01:11:22 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 23 Jul 2026 01:11:54 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 23 Jul 2026 01:11:55 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 23 Jul 2026 01:11:55 GMT
ENV MYSQL_MAJOR=8.4
# Thu, 23 Jul 2026 01:11:55 GMT
ENV MYSQL_VERSION=8.4.10-1.el9
# Thu, 23 Jul 2026 01:11:55 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 23 Jul 2026 01:12:30 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 23 Jul 2026 01:12:30 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 23 Jul 2026 01:12:30 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Thu, 23 Jul 2026 01:13:12 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 23 Jul 2026 01:13:12 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Jul 2026 01:13:12 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 23 Jul 2026 01:13:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Jul 2026 01:13:12 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 23 Jul 2026 01:13:12 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:9d94d9416e53c5cff08e1d846b220ef65ad225d72c44da5e6cabc702154a6c52`  
		Last Modified: Thu, 23 Jul 2026 00:08:32 GMT  
		Size: 47.9 MB (47927355 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a62d9c1f1cb77a364d919f8b2332c2d45ae5d72ff73a5761ac546b083baa4eeb`  
		Last Modified: Thu, 23 Jul 2026 01:13:44 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd1c9eaf5ab5d0c6d805df461339f8c761568d9b40774152df27fcf663cf9501`  
		Last Modified: Thu, 23 Jul 2026 01:13:44 GMT  
		Size: 783.6 KB (783555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:603b6b088d86996ad73c42a0ebafc0d05bb5ebae4490dae26b6b8da3dc9f04a8`  
		Last Modified: Thu, 23 Jul 2026 01:13:44 GMT  
		Size: 6.2 MB (6194640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc748833c697b51639f52b1a1c8e8ba70cb74399dbafc5403489a6502ac3573d`  
		Last Modified: Thu, 23 Jul 2026 01:13:44 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4591f8d690f018c0787d27b8c33bccbea3b9ed18dbb1460cf56492c2e3c4a3c5`  
		Last Modified: Thu, 23 Jul 2026 01:13:45 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6db658f0caa90474f28503652b028f47680b9711240e75ad19ff482f3e646af2`  
		Last Modified: Thu, 23 Jul 2026 01:13:47 GMT  
		Size: 51.6 MB (51611066 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cd1b31319d9fd0efa6a76dd8d4568a22596e8b5ab48a27f0b2748672d838767`  
		Last Modified: Thu, 23 Jul 2026 01:13:46 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89a3b9eed08cbbfe389dcc09e647b9c7c0a264c2159adb89550855d180beca6a`  
		Last Modified: Thu, 23 Jul 2026 01:13:49 GMT  
		Size: 132.4 MB (132429095 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87f78a05757c8be5234ae6e8f7159b121887b75cec2f901f94d2b618305cac21`  
		Last Modified: Thu, 23 Jul 2026 01:13:46 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4.10-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:2a7ee55e561c8ab9ab4f03008f0c6e0a16617ddec09f205839cc4664a7b4b6eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15745154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:183fb9fcd9d1ffe36561d7fb58c9e4c282505d8eeadc02826ca12a8cc8a601e5`

```dockerfile
```

-	Layers:
	-	`sha256:777de9b94c15e46def5773cd5177aa96d4a58bb1078a9b69c154b9e5f9fdb68f`  
		Last Modified: Thu, 23 Jul 2026 01:13:45 GMT  
		Size: 15.7 MB (15711841 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e432b71da99683c401fbf9f4ba2662d2c68a651d12c57678fc32cd92be62931d`  
		Last Modified: Thu, 23 Jul 2026 01:13:44 GMT  
		Size: 33.3 KB (33313 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8.4.10-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:b3e29947e27c4cd2ddfa8689b11d0615a7fb3fbb16564c706f8eff428a9e4737
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.7 MB (233679214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03793c2f4900c83c24a4c4a74e7250ce5762089c8937bcb3fc665d50c882bce9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 00:07:52 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 00:07:52 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 01:11:04 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 23 Jul 2026 01:11:06 GMT
ENV GOSU_VERSION=1.19
# Thu, 23 Jul 2026 01:11:06 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 23 Jul 2026 01:11:42 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 23 Jul 2026 01:11:43 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 23 Jul 2026 01:11:43 GMT
ENV MYSQL_MAJOR=8.4
# Thu, 23 Jul 2026 01:11:43 GMT
ENV MYSQL_VERSION=8.4.10-1.el9
# Thu, 23 Jul 2026 01:11:43 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 23 Jul 2026 01:12:21 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 23 Jul 2026 01:12:21 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 23 Jul 2026 01:12:21 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Thu, 23 Jul 2026 01:13:09 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 23 Jul 2026 01:13:09 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Jul 2026 01:13:09 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 23 Jul 2026 01:13:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Jul 2026 01:13:09 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 23 Jul 2026 01:13:09 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b31b097f727a2c22897a0b842f2ed2d61f747e4a77d76f77ad13cae7aa1de1e5`  
		Last Modified: Thu, 23 Jul 2026 00:08:04 GMT  
		Size: 46.5 MB (46478083 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c329ef3e094f6bc5210b8d34967a735ad78e07b0790f406c80165ed6b838e3ad`  
		Last Modified: Thu, 23 Jul 2026 01:13:40 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f90882fa4335434dbee7faf15995ce5ec913fbb48372d8d564ebe5eda6ee720a`  
		Last Modified: Thu, 23 Jul 2026 01:13:41 GMT  
		Size: 737.5 KB (737522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6af8812142b58bfc8177da92f45816ebf4c2d664736bb221d7ab00ea6407fbaa`  
		Last Modified: Thu, 23 Jul 2026 01:13:41 GMT  
		Size: 5.8 MB (5816807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a785bdcec2750f192ad5c552cef21a683a78f8ae5aec7d06169ce58b25825a69`  
		Last Modified: Thu, 23 Jul 2026 01:13:40 GMT  
		Size: 2.6 KB (2606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d86d80c372ac2011a0573f6f108e92474e155f9f647a6c6f0508da492d92831`  
		Last Modified: Thu, 23 Jul 2026 01:13:42 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51f3677d8dcdef3a5b5d055b2d1cf86712928d7651345f2ca454386890579a8b`  
		Last Modified: Thu, 23 Jul 2026 01:13:43 GMT  
		Size: 49.8 MB (49844499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3938836134d616b335b34cab8525465e5d0babf51421f51c0558179fdf926514`  
		Last Modified: Thu, 23 Jul 2026 01:13:42 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d6aa63f86b2091039557e593f18f9d42005ce3632ac8b6f020e81d6c290ed3b`  
		Last Modified: Thu, 23 Jul 2026 01:13:45 GMT  
		Size: 130.8 MB (130792937 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:369e20a098cfad25794bfd04dfe8aaa5727af34f7667a280bdc5c2cf897dff41`  
		Last Modified: Thu, 23 Jul 2026 01:13:43 GMT  
		Size: 5.2 KB (5222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4.10-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:eec6a0e5a020e488ed72909fe0be67e68c359fff346b3582293c315983bdd4d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15743822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e097c98eb73159305613c4d691e878a8a5bb2266e431118b0d4dd6a987b20a55`

```dockerfile
```

-	Layers:
	-	`sha256:d5225ccaf1ca90dbdf1481b7e9612a0f3a2c70a0e9cf43e21013b5af395096f0`  
		Last Modified: Thu, 23 Jul 2026 01:13:41 GMT  
		Size: 15.7 MB (15710241 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:084563e8c0e25bb495b2b1c213a68652090a986693510cae9ebe88f5a24a972a`  
		Last Modified: Thu, 23 Jul 2026 01:13:41 GMT  
		Size: 33.6 KB (33581 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9`

```console
$ docker pull mysql@sha256:c109c421c81637a50209b57ec6af7dc0685e8b1ce7efdca0c0902a3d95df6574
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9` - linux; amd64

```console
$ docker pull mysql@sha256:6018c10552553830b8999eea03fce524ddd7a6babda7c20b5abf10fe78f1f5f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.8 MB (270843480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79a428f9725d635e88516bd04132de92319761ca0916141c1c5c5ae764fd8ed4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 00:08:20 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 00:08:20 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 01:10:17 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 23 Jul 2026 01:10:19 GMT
ENV GOSU_VERSION=1.19
# Thu, 23 Jul 2026 01:10:19 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 23 Jul 2026 01:10:51 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 23 Jul 2026 01:10:52 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 23 Jul 2026 01:10:52 GMT
ENV MYSQL_MAJOR=9.7
# Thu, 23 Jul 2026 01:10:52 GMT
ENV MYSQL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 01:10:52 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 23 Jul 2026 01:11:28 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 23 Jul 2026 01:11:28 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 23 Jul 2026 01:11:28 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 01:12:13 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 23 Jul 2026 01:12:13 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Jul 2026 01:12:13 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 23 Jul 2026 01:12:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Jul 2026 01:12:13 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 23 Jul 2026 01:12:13 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:9d94d9416e53c5cff08e1d846b220ef65ad225d72c44da5e6cabc702154a6c52`  
		Last Modified: Thu, 23 Jul 2026 00:08:32 GMT  
		Size: 47.9 MB (47927355 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7ea8a15135bd03e9e32e5305d1f9a44f04280fa90d41ca9482b7097abf4ecd0`  
		Last Modified: Thu, 23 Jul 2026 01:12:48 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e191671750a9cf6aff66451a5adbbbe8506913a2461f954df6f5ed34e80c5eb`  
		Last Modified: Thu, 23 Jul 2026 01:12:48 GMT  
		Size: 783.6 KB (783557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ffb4b65fe3874b0cb45548abfe1fc45072259dbb409d3e5c7a3ac7d6ccdfc10`  
		Last Modified: Thu, 23 Jul 2026 01:12:48 GMT  
		Size: 6.2 MB (6194632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa5f6746fd02514999e82f0c797012603a605fcdfd908dcf244a672b39e95612`  
		Last Modified: Thu, 23 Jul 2026 01:12:48 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16fa714a61b76d1765c540a3e7441ab8414d09304be2f7c0131cbae7c6724a07`  
		Last Modified: Thu, 23 Jul 2026 01:12:49 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bfd71befad5300943eaed2ae0a9f104c2e4936d276caea9876c63c36ac01215`  
		Last Modified: Thu, 23 Jul 2026 01:12:51 GMT  
		Size: 57.0 MB (56992141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:397f759b7395ff7cc6da35ce3d0440f0ef751c95ec57bb92160f167e1d52d1ce`  
		Last Modified: Thu, 23 Jul 2026 01:12:49 GMT  
		Size: 319.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0d340612ca29cb600d3a3ca4a3c14e9031c941787c007717cb3016aa7c282c1`  
		Last Modified: Thu, 23 Jul 2026 01:12:54 GMT  
		Size: 158.9 MB (158936427 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a559a349f4403b67d58feca4289fb9169b26d038b9779c11df16cf35b4ed8d28`  
		Last Modified: Thu, 23 Jul 2026 01:12:51 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9` - unknown; unknown

```console
$ docker pull mysql@sha256:9d2b621fb3a667f539b2740df37b0f560d6c7723cbea6f31bce3dbc36f130c7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16834322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e94746989e8cce97254e0e497baf6ba1bf9425f594a4f6f6d493a59ae5f5122a`

```dockerfile
```

-	Layers:
	-	`sha256:9911754ad54256c2f367a77febdf74aaccf7bc779aafb1f7ed77ea6ccde59cee`  
		Last Modified: Thu, 23 Jul 2026 01:12:49 GMT  
		Size: 16.8 MB (16799215 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4658c75fd939ccee41cb089bfabca4b36cade56bf15085898cebd8536c439904`  
		Last Modified: Thu, 23 Jul 2026 01:12:48 GMT  
		Size: 35.1 KB (35107 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:393f964965900cd646f285283faab66476699baa0cefde38d5785217eaeb0a4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.3 MB (267252061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9845754612b74ee0baeef95d5cfaa8dd105f10e4d29bb8db1551fe901f0cfdc2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 00:07:52 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 00:07:52 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 01:10:02 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 23 Jul 2026 01:10:04 GMT
ENV GOSU_VERSION=1.19
# Thu, 23 Jul 2026 01:10:04 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 23 Jul 2026 01:10:40 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 23 Jul 2026 01:10:41 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 23 Jul 2026 01:10:41 GMT
ENV MYSQL_MAJOR=9.7
# Thu, 23 Jul 2026 01:10:41 GMT
ENV MYSQL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 01:10:41 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 23 Jul 2026 01:11:20 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 23 Jul 2026 01:11:20 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 23 Jul 2026 01:11:20 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 01:12:10 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 23 Jul 2026 01:12:10 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Jul 2026 01:12:10 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 23 Jul 2026 01:12:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Jul 2026 01:12:10 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 23 Jul 2026 01:12:10 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b31b097f727a2c22897a0b842f2ed2d61f747e4a77d76f77ad13cae7aa1de1e5`  
		Last Modified: Thu, 23 Jul 2026 00:08:04 GMT  
		Size: 46.5 MB (46478083 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e05519de84b9db2fde8a205ba5dc0dbda75c6c167686590ab0b3b1e966868f33`  
		Last Modified: Thu, 23 Jul 2026 01:12:46 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:362cfc7be4bd1728db6f4655f0a38a535abbf280f88d80e95b6c7aa1ce45418c`  
		Last Modified: Thu, 23 Jul 2026 01:12:47 GMT  
		Size: 737.5 KB (737521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e14620977ce7ed4c68c85117d3e74bcacf63b951c8395dc70de58448984c5c58`  
		Last Modified: Thu, 23 Jul 2026 01:12:47 GMT  
		Size: 5.8 MB (5816835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dc6a5471d70903fe9996f685d24607eab7d4907a11f68e5e5808833a476705d`  
		Last Modified: Thu, 23 Jul 2026 01:12:47 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ceacdcec509d41269aa5ac5ae92afad539bc9144abddf0f44cf86b6e96b202c5`  
		Last Modified: Thu, 23 Jul 2026 01:12:48 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d46baa4a9b9221f08c7c97b2b4c2f2385878357833ae3a8b0c55fb9be5094048`  
		Last Modified: Thu, 23 Jul 2026 01:12:50 GMT  
		Size: 57.0 MB (56998155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3fbfe263117419280986240090a94410288cc996de3548ce01dae2cd520ec27`  
		Last Modified: Thu, 23 Jul 2026 01:12:48 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7edbb8539efeec77b3e4fd360a9f66fe6b10be619e6544fd42340641fd5bc9c1`  
		Last Modified: Thu, 23 Jul 2026 01:12:53 GMT  
		Size: 157.2 MB (157212100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40eaffb234d93d7464ccffb5e22df793a85bf5f69e3b03723ecbf3f648594220`  
		Last Modified: Thu, 23 Jul 2026 01:12:49 GMT  
		Size: 5.2 KB (5221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9` - unknown; unknown

```console
$ docker pull mysql@sha256:67f4b9fdb9d79038d7fb19ce794451cb959dcaea1c47924f9231e07b3b685732
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84e9b79e428b1972eda55c6a7d1fd4267c48bb00f3984872f9fffb848940f0c2`

```dockerfile
```

-	Layers:
	-	`sha256:2e59dbec0673cb8596109213d25face06bb5431494226dc15a5d989a199dac55`  
		Last Modified: Thu, 23 Jul 2026 01:12:47 GMT  
		Size: 16.8 MB (16797687 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f0ce3986da185696c707ee9051edceb3c98c714b18eea41115b22b919540e67d`  
		Last Modified: Thu, 23 Jul 2026 01:12:46 GMT  
		Size: 35.4 KB (35449 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9-oracle`

```console
$ docker pull mysql@sha256:c109c421c81637a50209b57ec6af7dc0685e8b1ce7efdca0c0902a3d95df6574
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:6018c10552553830b8999eea03fce524ddd7a6babda7c20b5abf10fe78f1f5f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.8 MB (270843480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79a428f9725d635e88516bd04132de92319761ca0916141c1c5c5ae764fd8ed4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 00:08:20 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 00:08:20 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 01:10:17 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 23 Jul 2026 01:10:19 GMT
ENV GOSU_VERSION=1.19
# Thu, 23 Jul 2026 01:10:19 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 23 Jul 2026 01:10:51 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 23 Jul 2026 01:10:52 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 23 Jul 2026 01:10:52 GMT
ENV MYSQL_MAJOR=9.7
# Thu, 23 Jul 2026 01:10:52 GMT
ENV MYSQL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 01:10:52 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 23 Jul 2026 01:11:28 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 23 Jul 2026 01:11:28 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 23 Jul 2026 01:11:28 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 01:12:13 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 23 Jul 2026 01:12:13 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Jul 2026 01:12:13 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 23 Jul 2026 01:12:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Jul 2026 01:12:13 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 23 Jul 2026 01:12:13 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:9d94d9416e53c5cff08e1d846b220ef65ad225d72c44da5e6cabc702154a6c52`  
		Last Modified: Thu, 23 Jul 2026 00:08:32 GMT  
		Size: 47.9 MB (47927355 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7ea8a15135bd03e9e32e5305d1f9a44f04280fa90d41ca9482b7097abf4ecd0`  
		Last Modified: Thu, 23 Jul 2026 01:12:48 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e191671750a9cf6aff66451a5adbbbe8506913a2461f954df6f5ed34e80c5eb`  
		Last Modified: Thu, 23 Jul 2026 01:12:48 GMT  
		Size: 783.6 KB (783557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ffb4b65fe3874b0cb45548abfe1fc45072259dbb409d3e5c7a3ac7d6ccdfc10`  
		Last Modified: Thu, 23 Jul 2026 01:12:48 GMT  
		Size: 6.2 MB (6194632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa5f6746fd02514999e82f0c797012603a605fcdfd908dcf244a672b39e95612`  
		Last Modified: Thu, 23 Jul 2026 01:12:48 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16fa714a61b76d1765c540a3e7441ab8414d09304be2f7c0131cbae7c6724a07`  
		Last Modified: Thu, 23 Jul 2026 01:12:49 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bfd71befad5300943eaed2ae0a9f104c2e4936d276caea9876c63c36ac01215`  
		Last Modified: Thu, 23 Jul 2026 01:12:51 GMT  
		Size: 57.0 MB (56992141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:397f759b7395ff7cc6da35ce3d0440f0ef751c95ec57bb92160f167e1d52d1ce`  
		Last Modified: Thu, 23 Jul 2026 01:12:49 GMT  
		Size: 319.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0d340612ca29cb600d3a3ca4a3c14e9031c941787c007717cb3016aa7c282c1`  
		Last Modified: Thu, 23 Jul 2026 01:12:54 GMT  
		Size: 158.9 MB (158936427 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a559a349f4403b67d58feca4289fb9169b26d038b9779c11df16cf35b4ed8d28`  
		Last Modified: Thu, 23 Jul 2026 01:12:51 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:9d2b621fb3a667f539b2740df37b0f560d6c7723cbea6f31bce3dbc36f130c7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16834322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e94746989e8cce97254e0e497baf6ba1bf9425f594a4f6f6d493a59ae5f5122a`

```dockerfile
```

-	Layers:
	-	`sha256:9911754ad54256c2f367a77febdf74aaccf7bc779aafb1f7ed77ea6ccde59cee`  
		Last Modified: Thu, 23 Jul 2026 01:12:49 GMT  
		Size: 16.8 MB (16799215 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4658c75fd939ccee41cb089bfabca4b36cade56bf15085898cebd8536c439904`  
		Last Modified: Thu, 23 Jul 2026 01:12:48 GMT  
		Size: 35.1 KB (35107 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:393f964965900cd646f285283faab66476699baa0cefde38d5785217eaeb0a4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.3 MB (267252061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9845754612b74ee0baeef95d5cfaa8dd105f10e4d29bb8db1551fe901f0cfdc2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 00:07:52 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 00:07:52 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 01:10:02 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 23 Jul 2026 01:10:04 GMT
ENV GOSU_VERSION=1.19
# Thu, 23 Jul 2026 01:10:04 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 23 Jul 2026 01:10:40 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 23 Jul 2026 01:10:41 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 23 Jul 2026 01:10:41 GMT
ENV MYSQL_MAJOR=9.7
# Thu, 23 Jul 2026 01:10:41 GMT
ENV MYSQL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 01:10:41 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 23 Jul 2026 01:11:20 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 23 Jul 2026 01:11:20 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 23 Jul 2026 01:11:20 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 01:12:10 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 23 Jul 2026 01:12:10 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Jul 2026 01:12:10 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 23 Jul 2026 01:12:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Jul 2026 01:12:10 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 23 Jul 2026 01:12:10 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b31b097f727a2c22897a0b842f2ed2d61f747e4a77d76f77ad13cae7aa1de1e5`  
		Last Modified: Thu, 23 Jul 2026 00:08:04 GMT  
		Size: 46.5 MB (46478083 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e05519de84b9db2fde8a205ba5dc0dbda75c6c167686590ab0b3b1e966868f33`  
		Last Modified: Thu, 23 Jul 2026 01:12:46 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:362cfc7be4bd1728db6f4655f0a38a535abbf280f88d80e95b6c7aa1ce45418c`  
		Last Modified: Thu, 23 Jul 2026 01:12:47 GMT  
		Size: 737.5 KB (737521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e14620977ce7ed4c68c85117d3e74bcacf63b951c8395dc70de58448984c5c58`  
		Last Modified: Thu, 23 Jul 2026 01:12:47 GMT  
		Size: 5.8 MB (5816835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dc6a5471d70903fe9996f685d24607eab7d4907a11f68e5e5808833a476705d`  
		Last Modified: Thu, 23 Jul 2026 01:12:47 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ceacdcec509d41269aa5ac5ae92afad539bc9144abddf0f44cf86b6e96b202c5`  
		Last Modified: Thu, 23 Jul 2026 01:12:48 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d46baa4a9b9221f08c7c97b2b4c2f2385878357833ae3a8b0c55fb9be5094048`  
		Last Modified: Thu, 23 Jul 2026 01:12:50 GMT  
		Size: 57.0 MB (56998155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3fbfe263117419280986240090a94410288cc996de3548ce01dae2cd520ec27`  
		Last Modified: Thu, 23 Jul 2026 01:12:48 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7edbb8539efeec77b3e4fd360a9f66fe6b10be619e6544fd42340641fd5bc9c1`  
		Last Modified: Thu, 23 Jul 2026 01:12:53 GMT  
		Size: 157.2 MB (157212100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40eaffb234d93d7464ccffb5e22df793a85bf5f69e3b03723ecbf3f648594220`  
		Last Modified: Thu, 23 Jul 2026 01:12:49 GMT  
		Size: 5.2 KB (5221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:67f4b9fdb9d79038d7fb19ce794451cb959dcaea1c47924f9231e07b3b685732
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84e9b79e428b1972eda55c6a7d1fd4267c48bb00f3984872f9fffb848940f0c2`

```dockerfile
```

-	Layers:
	-	`sha256:2e59dbec0673cb8596109213d25face06bb5431494226dc15a5d989a199dac55`  
		Last Modified: Thu, 23 Jul 2026 01:12:47 GMT  
		Size: 16.8 MB (16797687 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f0ce3986da185696c707ee9051edceb3c98c714b18eea41115b22b919540e67d`  
		Last Modified: Thu, 23 Jul 2026 01:12:46 GMT  
		Size: 35.4 KB (35449 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9-oraclelinux9`

```console
$ docker pull mysql@sha256:c109c421c81637a50209b57ec6af7dc0685e8b1ce7efdca0c0902a3d95df6574
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:6018c10552553830b8999eea03fce524ddd7a6babda7c20b5abf10fe78f1f5f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.8 MB (270843480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79a428f9725d635e88516bd04132de92319761ca0916141c1c5c5ae764fd8ed4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 00:08:20 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 00:08:20 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 01:10:17 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 23 Jul 2026 01:10:19 GMT
ENV GOSU_VERSION=1.19
# Thu, 23 Jul 2026 01:10:19 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 23 Jul 2026 01:10:51 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 23 Jul 2026 01:10:52 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 23 Jul 2026 01:10:52 GMT
ENV MYSQL_MAJOR=9.7
# Thu, 23 Jul 2026 01:10:52 GMT
ENV MYSQL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 01:10:52 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 23 Jul 2026 01:11:28 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 23 Jul 2026 01:11:28 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 23 Jul 2026 01:11:28 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 01:12:13 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 23 Jul 2026 01:12:13 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Jul 2026 01:12:13 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 23 Jul 2026 01:12:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Jul 2026 01:12:13 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 23 Jul 2026 01:12:13 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:9d94d9416e53c5cff08e1d846b220ef65ad225d72c44da5e6cabc702154a6c52`  
		Last Modified: Thu, 23 Jul 2026 00:08:32 GMT  
		Size: 47.9 MB (47927355 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7ea8a15135bd03e9e32e5305d1f9a44f04280fa90d41ca9482b7097abf4ecd0`  
		Last Modified: Thu, 23 Jul 2026 01:12:48 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e191671750a9cf6aff66451a5adbbbe8506913a2461f954df6f5ed34e80c5eb`  
		Last Modified: Thu, 23 Jul 2026 01:12:48 GMT  
		Size: 783.6 KB (783557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ffb4b65fe3874b0cb45548abfe1fc45072259dbb409d3e5c7a3ac7d6ccdfc10`  
		Last Modified: Thu, 23 Jul 2026 01:12:48 GMT  
		Size: 6.2 MB (6194632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa5f6746fd02514999e82f0c797012603a605fcdfd908dcf244a672b39e95612`  
		Last Modified: Thu, 23 Jul 2026 01:12:48 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16fa714a61b76d1765c540a3e7441ab8414d09304be2f7c0131cbae7c6724a07`  
		Last Modified: Thu, 23 Jul 2026 01:12:49 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bfd71befad5300943eaed2ae0a9f104c2e4936d276caea9876c63c36ac01215`  
		Last Modified: Thu, 23 Jul 2026 01:12:51 GMT  
		Size: 57.0 MB (56992141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:397f759b7395ff7cc6da35ce3d0440f0ef751c95ec57bb92160f167e1d52d1ce`  
		Last Modified: Thu, 23 Jul 2026 01:12:49 GMT  
		Size: 319.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0d340612ca29cb600d3a3ca4a3c14e9031c941787c007717cb3016aa7c282c1`  
		Last Modified: Thu, 23 Jul 2026 01:12:54 GMT  
		Size: 158.9 MB (158936427 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a559a349f4403b67d58feca4289fb9169b26d038b9779c11df16cf35b4ed8d28`  
		Last Modified: Thu, 23 Jul 2026 01:12:51 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:9d2b621fb3a667f539b2740df37b0f560d6c7723cbea6f31bce3dbc36f130c7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16834322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e94746989e8cce97254e0e497baf6ba1bf9425f594a4f6f6d493a59ae5f5122a`

```dockerfile
```

-	Layers:
	-	`sha256:9911754ad54256c2f367a77febdf74aaccf7bc779aafb1f7ed77ea6ccde59cee`  
		Last Modified: Thu, 23 Jul 2026 01:12:49 GMT  
		Size: 16.8 MB (16799215 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4658c75fd939ccee41cb089bfabca4b36cade56bf15085898cebd8536c439904`  
		Last Modified: Thu, 23 Jul 2026 01:12:48 GMT  
		Size: 35.1 KB (35107 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:393f964965900cd646f285283faab66476699baa0cefde38d5785217eaeb0a4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.3 MB (267252061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9845754612b74ee0baeef95d5cfaa8dd105f10e4d29bb8db1551fe901f0cfdc2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 00:07:52 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 00:07:52 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 01:10:02 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 23 Jul 2026 01:10:04 GMT
ENV GOSU_VERSION=1.19
# Thu, 23 Jul 2026 01:10:04 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 23 Jul 2026 01:10:40 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 23 Jul 2026 01:10:41 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 23 Jul 2026 01:10:41 GMT
ENV MYSQL_MAJOR=9.7
# Thu, 23 Jul 2026 01:10:41 GMT
ENV MYSQL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 01:10:41 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 23 Jul 2026 01:11:20 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 23 Jul 2026 01:11:20 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 23 Jul 2026 01:11:20 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 01:12:10 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 23 Jul 2026 01:12:10 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Jul 2026 01:12:10 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 23 Jul 2026 01:12:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Jul 2026 01:12:10 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 23 Jul 2026 01:12:10 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b31b097f727a2c22897a0b842f2ed2d61f747e4a77d76f77ad13cae7aa1de1e5`  
		Last Modified: Thu, 23 Jul 2026 00:08:04 GMT  
		Size: 46.5 MB (46478083 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e05519de84b9db2fde8a205ba5dc0dbda75c6c167686590ab0b3b1e966868f33`  
		Last Modified: Thu, 23 Jul 2026 01:12:46 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:362cfc7be4bd1728db6f4655f0a38a535abbf280f88d80e95b6c7aa1ce45418c`  
		Last Modified: Thu, 23 Jul 2026 01:12:47 GMT  
		Size: 737.5 KB (737521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e14620977ce7ed4c68c85117d3e74bcacf63b951c8395dc70de58448984c5c58`  
		Last Modified: Thu, 23 Jul 2026 01:12:47 GMT  
		Size: 5.8 MB (5816835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dc6a5471d70903fe9996f685d24607eab7d4907a11f68e5e5808833a476705d`  
		Last Modified: Thu, 23 Jul 2026 01:12:47 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ceacdcec509d41269aa5ac5ae92afad539bc9144abddf0f44cf86b6e96b202c5`  
		Last Modified: Thu, 23 Jul 2026 01:12:48 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d46baa4a9b9221f08c7c97b2b4c2f2385878357833ae3a8b0c55fb9be5094048`  
		Last Modified: Thu, 23 Jul 2026 01:12:50 GMT  
		Size: 57.0 MB (56998155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3fbfe263117419280986240090a94410288cc996de3548ce01dae2cd520ec27`  
		Last Modified: Thu, 23 Jul 2026 01:12:48 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7edbb8539efeec77b3e4fd360a9f66fe6b10be619e6544fd42340641fd5bc9c1`  
		Last Modified: Thu, 23 Jul 2026 01:12:53 GMT  
		Size: 157.2 MB (157212100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40eaffb234d93d7464ccffb5e22df793a85bf5f69e3b03723ecbf3f648594220`  
		Last Modified: Thu, 23 Jul 2026 01:12:49 GMT  
		Size: 5.2 KB (5221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:67f4b9fdb9d79038d7fb19ce794451cb959dcaea1c47924f9231e07b3b685732
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84e9b79e428b1972eda55c6a7d1fd4267c48bb00f3984872f9fffb848940f0c2`

```dockerfile
```

-	Layers:
	-	`sha256:2e59dbec0673cb8596109213d25face06bb5431494226dc15a5d989a199dac55`  
		Last Modified: Thu, 23 Jul 2026 01:12:47 GMT  
		Size: 16.8 MB (16797687 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f0ce3986da185696c707ee9051edceb3c98c714b18eea41115b22b919540e67d`  
		Last Modified: Thu, 23 Jul 2026 01:12:46 GMT  
		Size: 35.4 KB (35449 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9.7`

```console
$ docker pull mysql@sha256:c109c421c81637a50209b57ec6af7dc0685e8b1ce7efdca0c0902a3d95df6574
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9.7` - linux; amd64

```console
$ docker pull mysql@sha256:6018c10552553830b8999eea03fce524ddd7a6babda7c20b5abf10fe78f1f5f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.8 MB (270843480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79a428f9725d635e88516bd04132de92319761ca0916141c1c5c5ae764fd8ed4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 00:08:20 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 00:08:20 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 01:10:17 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 23 Jul 2026 01:10:19 GMT
ENV GOSU_VERSION=1.19
# Thu, 23 Jul 2026 01:10:19 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 23 Jul 2026 01:10:51 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 23 Jul 2026 01:10:52 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 23 Jul 2026 01:10:52 GMT
ENV MYSQL_MAJOR=9.7
# Thu, 23 Jul 2026 01:10:52 GMT
ENV MYSQL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 01:10:52 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 23 Jul 2026 01:11:28 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 23 Jul 2026 01:11:28 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 23 Jul 2026 01:11:28 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 01:12:13 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 23 Jul 2026 01:12:13 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Jul 2026 01:12:13 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 23 Jul 2026 01:12:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Jul 2026 01:12:13 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 23 Jul 2026 01:12:13 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:9d94d9416e53c5cff08e1d846b220ef65ad225d72c44da5e6cabc702154a6c52`  
		Last Modified: Thu, 23 Jul 2026 00:08:32 GMT  
		Size: 47.9 MB (47927355 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7ea8a15135bd03e9e32e5305d1f9a44f04280fa90d41ca9482b7097abf4ecd0`  
		Last Modified: Thu, 23 Jul 2026 01:12:48 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e191671750a9cf6aff66451a5adbbbe8506913a2461f954df6f5ed34e80c5eb`  
		Last Modified: Thu, 23 Jul 2026 01:12:48 GMT  
		Size: 783.6 KB (783557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ffb4b65fe3874b0cb45548abfe1fc45072259dbb409d3e5c7a3ac7d6ccdfc10`  
		Last Modified: Thu, 23 Jul 2026 01:12:48 GMT  
		Size: 6.2 MB (6194632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa5f6746fd02514999e82f0c797012603a605fcdfd908dcf244a672b39e95612`  
		Last Modified: Thu, 23 Jul 2026 01:12:48 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16fa714a61b76d1765c540a3e7441ab8414d09304be2f7c0131cbae7c6724a07`  
		Last Modified: Thu, 23 Jul 2026 01:12:49 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bfd71befad5300943eaed2ae0a9f104c2e4936d276caea9876c63c36ac01215`  
		Last Modified: Thu, 23 Jul 2026 01:12:51 GMT  
		Size: 57.0 MB (56992141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:397f759b7395ff7cc6da35ce3d0440f0ef751c95ec57bb92160f167e1d52d1ce`  
		Last Modified: Thu, 23 Jul 2026 01:12:49 GMT  
		Size: 319.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0d340612ca29cb600d3a3ca4a3c14e9031c941787c007717cb3016aa7c282c1`  
		Last Modified: Thu, 23 Jul 2026 01:12:54 GMT  
		Size: 158.9 MB (158936427 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a559a349f4403b67d58feca4289fb9169b26d038b9779c11df16cf35b4ed8d28`  
		Last Modified: Thu, 23 Jul 2026 01:12:51 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7` - unknown; unknown

```console
$ docker pull mysql@sha256:9d2b621fb3a667f539b2740df37b0f560d6c7723cbea6f31bce3dbc36f130c7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16834322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e94746989e8cce97254e0e497baf6ba1bf9425f594a4f6f6d493a59ae5f5122a`

```dockerfile
```

-	Layers:
	-	`sha256:9911754ad54256c2f367a77febdf74aaccf7bc779aafb1f7ed77ea6ccde59cee`  
		Last Modified: Thu, 23 Jul 2026 01:12:49 GMT  
		Size: 16.8 MB (16799215 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4658c75fd939ccee41cb089bfabca4b36cade56bf15085898cebd8536c439904`  
		Last Modified: Thu, 23 Jul 2026 01:12:48 GMT  
		Size: 35.1 KB (35107 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9.7` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:393f964965900cd646f285283faab66476699baa0cefde38d5785217eaeb0a4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.3 MB (267252061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9845754612b74ee0baeef95d5cfaa8dd105f10e4d29bb8db1551fe901f0cfdc2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 00:07:52 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 00:07:52 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 01:10:02 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 23 Jul 2026 01:10:04 GMT
ENV GOSU_VERSION=1.19
# Thu, 23 Jul 2026 01:10:04 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 23 Jul 2026 01:10:40 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 23 Jul 2026 01:10:41 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 23 Jul 2026 01:10:41 GMT
ENV MYSQL_MAJOR=9.7
# Thu, 23 Jul 2026 01:10:41 GMT
ENV MYSQL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 01:10:41 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 23 Jul 2026 01:11:20 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 23 Jul 2026 01:11:20 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 23 Jul 2026 01:11:20 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 01:12:10 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 23 Jul 2026 01:12:10 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Jul 2026 01:12:10 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 23 Jul 2026 01:12:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Jul 2026 01:12:10 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 23 Jul 2026 01:12:10 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b31b097f727a2c22897a0b842f2ed2d61f747e4a77d76f77ad13cae7aa1de1e5`  
		Last Modified: Thu, 23 Jul 2026 00:08:04 GMT  
		Size: 46.5 MB (46478083 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e05519de84b9db2fde8a205ba5dc0dbda75c6c167686590ab0b3b1e966868f33`  
		Last Modified: Thu, 23 Jul 2026 01:12:46 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:362cfc7be4bd1728db6f4655f0a38a535abbf280f88d80e95b6c7aa1ce45418c`  
		Last Modified: Thu, 23 Jul 2026 01:12:47 GMT  
		Size: 737.5 KB (737521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e14620977ce7ed4c68c85117d3e74bcacf63b951c8395dc70de58448984c5c58`  
		Last Modified: Thu, 23 Jul 2026 01:12:47 GMT  
		Size: 5.8 MB (5816835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dc6a5471d70903fe9996f685d24607eab7d4907a11f68e5e5808833a476705d`  
		Last Modified: Thu, 23 Jul 2026 01:12:47 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ceacdcec509d41269aa5ac5ae92afad539bc9144abddf0f44cf86b6e96b202c5`  
		Last Modified: Thu, 23 Jul 2026 01:12:48 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d46baa4a9b9221f08c7c97b2b4c2f2385878357833ae3a8b0c55fb9be5094048`  
		Last Modified: Thu, 23 Jul 2026 01:12:50 GMT  
		Size: 57.0 MB (56998155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3fbfe263117419280986240090a94410288cc996de3548ce01dae2cd520ec27`  
		Last Modified: Thu, 23 Jul 2026 01:12:48 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7edbb8539efeec77b3e4fd360a9f66fe6b10be619e6544fd42340641fd5bc9c1`  
		Last Modified: Thu, 23 Jul 2026 01:12:53 GMT  
		Size: 157.2 MB (157212100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40eaffb234d93d7464ccffb5e22df793a85bf5f69e3b03723ecbf3f648594220`  
		Last Modified: Thu, 23 Jul 2026 01:12:49 GMT  
		Size: 5.2 KB (5221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7` - unknown; unknown

```console
$ docker pull mysql@sha256:67f4b9fdb9d79038d7fb19ce794451cb959dcaea1c47924f9231e07b3b685732
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84e9b79e428b1972eda55c6a7d1fd4267c48bb00f3984872f9fffb848940f0c2`

```dockerfile
```

-	Layers:
	-	`sha256:2e59dbec0673cb8596109213d25face06bb5431494226dc15a5d989a199dac55`  
		Last Modified: Thu, 23 Jul 2026 01:12:47 GMT  
		Size: 16.8 MB (16797687 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f0ce3986da185696c707ee9051edceb3c98c714b18eea41115b22b919540e67d`  
		Last Modified: Thu, 23 Jul 2026 01:12:46 GMT  
		Size: 35.4 KB (35449 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9.7-oracle`

```console
$ docker pull mysql@sha256:c109c421c81637a50209b57ec6af7dc0685e8b1ce7efdca0c0902a3d95df6574
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9.7-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:6018c10552553830b8999eea03fce524ddd7a6babda7c20b5abf10fe78f1f5f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.8 MB (270843480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79a428f9725d635e88516bd04132de92319761ca0916141c1c5c5ae764fd8ed4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 00:08:20 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 00:08:20 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 01:10:17 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 23 Jul 2026 01:10:19 GMT
ENV GOSU_VERSION=1.19
# Thu, 23 Jul 2026 01:10:19 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 23 Jul 2026 01:10:51 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 23 Jul 2026 01:10:52 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 23 Jul 2026 01:10:52 GMT
ENV MYSQL_MAJOR=9.7
# Thu, 23 Jul 2026 01:10:52 GMT
ENV MYSQL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 01:10:52 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 23 Jul 2026 01:11:28 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 23 Jul 2026 01:11:28 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 23 Jul 2026 01:11:28 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 01:12:13 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 23 Jul 2026 01:12:13 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Jul 2026 01:12:13 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 23 Jul 2026 01:12:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Jul 2026 01:12:13 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 23 Jul 2026 01:12:13 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:9d94d9416e53c5cff08e1d846b220ef65ad225d72c44da5e6cabc702154a6c52`  
		Last Modified: Thu, 23 Jul 2026 00:08:32 GMT  
		Size: 47.9 MB (47927355 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7ea8a15135bd03e9e32e5305d1f9a44f04280fa90d41ca9482b7097abf4ecd0`  
		Last Modified: Thu, 23 Jul 2026 01:12:48 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e191671750a9cf6aff66451a5adbbbe8506913a2461f954df6f5ed34e80c5eb`  
		Last Modified: Thu, 23 Jul 2026 01:12:48 GMT  
		Size: 783.6 KB (783557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ffb4b65fe3874b0cb45548abfe1fc45072259dbb409d3e5c7a3ac7d6ccdfc10`  
		Last Modified: Thu, 23 Jul 2026 01:12:48 GMT  
		Size: 6.2 MB (6194632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa5f6746fd02514999e82f0c797012603a605fcdfd908dcf244a672b39e95612`  
		Last Modified: Thu, 23 Jul 2026 01:12:48 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16fa714a61b76d1765c540a3e7441ab8414d09304be2f7c0131cbae7c6724a07`  
		Last Modified: Thu, 23 Jul 2026 01:12:49 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bfd71befad5300943eaed2ae0a9f104c2e4936d276caea9876c63c36ac01215`  
		Last Modified: Thu, 23 Jul 2026 01:12:51 GMT  
		Size: 57.0 MB (56992141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:397f759b7395ff7cc6da35ce3d0440f0ef751c95ec57bb92160f167e1d52d1ce`  
		Last Modified: Thu, 23 Jul 2026 01:12:49 GMT  
		Size: 319.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0d340612ca29cb600d3a3ca4a3c14e9031c941787c007717cb3016aa7c282c1`  
		Last Modified: Thu, 23 Jul 2026 01:12:54 GMT  
		Size: 158.9 MB (158936427 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a559a349f4403b67d58feca4289fb9169b26d038b9779c11df16cf35b4ed8d28`  
		Last Modified: Thu, 23 Jul 2026 01:12:51 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:9d2b621fb3a667f539b2740df37b0f560d6c7723cbea6f31bce3dbc36f130c7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16834322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e94746989e8cce97254e0e497baf6ba1bf9425f594a4f6f6d493a59ae5f5122a`

```dockerfile
```

-	Layers:
	-	`sha256:9911754ad54256c2f367a77febdf74aaccf7bc779aafb1f7ed77ea6ccde59cee`  
		Last Modified: Thu, 23 Jul 2026 01:12:49 GMT  
		Size: 16.8 MB (16799215 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4658c75fd939ccee41cb089bfabca4b36cade56bf15085898cebd8536c439904`  
		Last Modified: Thu, 23 Jul 2026 01:12:48 GMT  
		Size: 35.1 KB (35107 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9.7-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:393f964965900cd646f285283faab66476699baa0cefde38d5785217eaeb0a4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.3 MB (267252061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9845754612b74ee0baeef95d5cfaa8dd105f10e4d29bb8db1551fe901f0cfdc2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 00:07:52 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 00:07:52 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 01:10:02 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 23 Jul 2026 01:10:04 GMT
ENV GOSU_VERSION=1.19
# Thu, 23 Jul 2026 01:10:04 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 23 Jul 2026 01:10:40 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 23 Jul 2026 01:10:41 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 23 Jul 2026 01:10:41 GMT
ENV MYSQL_MAJOR=9.7
# Thu, 23 Jul 2026 01:10:41 GMT
ENV MYSQL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 01:10:41 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 23 Jul 2026 01:11:20 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 23 Jul 2026 01:11:20 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 23 Jul 2026 01:11:20 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 01:12:10 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 23 Jul 2026 01:12:10 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Jul 2026 01:12:10 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 23 Jul 2026 01:12:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Jul 2026 01:12:10 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 23 Jul 2026 01:12:10 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b31b097f727a2c22897a0b842f2ed2d61f747e4a77d76f77ad13cae7aa1de1e5`  
		Last Modified: Thu, 23 Jul 2026 00:08:04 GMT  
		Size: 46.5 MB (46478083 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e05519de84b9db2fde8a205ba5dc0dbda75c6c167686590ab0b3b1e966868f33`  
		Last Modified: Thu, 23 Jul 2026 01:12:46 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:362cfc7be4bd1728db6f4655f0a38a535abbf280f88d80e95b6c7aa1ce45418c`  
		Last Modified: Thu, 23 Jul 2026 01:12:47 GMT  
		Size: 737.5 KB (737521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e14620977ce7ed4c68c85117d3e74bcacf63b951c8395dc70de58448984c5c58`  
		Last Modified: Thu, 23 Jul 2026 01:12:47 GMT  
		Size: 5.8 MB (5816835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dc6a5471d70903fe9996f685d24607eab7d4907a11f68e5e5808833a476705d`  
		Last Modified: Thu, 23 Jul 2026 01:12:47 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ceacdcec509d41269aa5ac5ae92afad539bc9144abddf0f44cf86b6e96b202c5`  
		Last Modified: Thu, 23 Jul 2026 01:12:48 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d46baa4a9b9221f08c7c97b2b4c2f2385878357833ae3a8b0c55fb9be5094048`  
		Last Modified: Thu, 23 Jul 2026 01:12:50 GMT  
		Size: 57.0 MB (56998155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3fbfe263117419280986240090a94410288cc996de3548ce01dae2cd520ec27`  
		Last Modified: Thu, 23 Jul 2026 01:12:48 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7edbb8539efeec77b3e4fd360a9f66fe6b10be619e6544fd42340641fd5bc9c1`  
		Last Modified: Thu, 23 Jul 2026 01:12:53 GMT  
		Size: 157.2 MB (157212100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40eaffb234d93d7464ccffb5e22df793a85bf5f69e3b03723ecbf3f648594220`  
		Last Modified: Thu, 23 Jul 2026 01:12:49 GMT  
		Size: 5.2 KB (5221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:67f4b9fdb9d79038d7fb19ce794451cb959dcaea1c47924f9231e07b3b685732
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84e9b79e428b1972eda55c6a7d1fd4267c48bb00f3984872f9fffb848940f0c2`

```dockerfile
```

-	Layers:
	-	`sha256:2e59dbec0673cb8596109213d25face06bb5431494226dc15a5d989a199dac55`  
		Last Modified: Thu, 23 Jul 2026 01:12:47 GMT  
		Size: 16.8 MB (16797687 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f0ce3986da185696c707ee9051edceb3c98c714b18eea41115b22b919540e67d`  
		Last Modified: Thu, 23 Jul 2026 01:12:46 GMT  
		Size: 35.4 KB (35449 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9.7-oraclelinux9`

```console
$ docker pull mysql@sha256:c109c421c81637a50209b57ec6af7dc0685e8b1ce7efdca0c0902a3d95df6574
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9.7-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:6018c10552553830b8999eea03fce524ddd7a6babda7c20b5abf10fe78f1f5f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.8 MB (270843480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79a428f9725d635e88516bd04132de92319761ca0916141c1c5c5ae764fd8ed4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 00:08:20 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 00:08:20 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 01:10:17 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 23 Jul 2026 01:10:19 GMT
ENV GOSU_VERSION=1.19
# Thu, 23 Jul 2026 01:10:19 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 23 Jul 2026 01:10:51 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 23 Jul 2026 01:10:52 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 23 Jul 2026 01:10:52 GMT
ENV MYSQL_MAJOR=9.7
# Thu, 23 Jul 2026 01:10:52 GMT
ENV MYSQL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 01:10:52 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 23 Jul 2026 01:11:28 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 23 Jul 2026 01:11:28 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 23 Jul 2026 01:11:28 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 01:12:13 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 23 Jul 2026 01:12:13 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Jul 2026 01:12:13 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 23 Jul 2026 01:12:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Jul 2026 01:12:13 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 23 Jul 2026 01:12:13 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:9d94d9416e53c5cff08e1d846b220ef65ad225d72c44da5e6cabc702154a6c52`  
		Last Modified: Thu, 23 Jul 2026 00:08:32 GMT  
		Size: 47.9 MB (47927355 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7ea8a15135bd03e9e32e5305d1f9a44f04280fa90d41ca9482b7097abf4ecd0`  
		Last Modified: Thu, 23 Jul 2026 01:12:48 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e191671750a9cf6aff66451a5adbbbe8506913a2461f954df6f5ed34e80c5eb`  
		Last Modified: Thu, 23 Jul 2026 01:12:48 GMT  
		Size: 783.6 KB (783557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ffb4b65fe3874b0cb45548abfe1fc45072259dbb409d3e5c7a3ac7d6ccdfc10`  
		Last Modified: Thu, 23 Jul 2026 01:12:48 GMT  
		Size: 6.2 MB (6194632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa5f6746fd02514999e82f0c797012603a605fcdfd908dcf244a672b39e95612`  
		Last Modified: Thu, 23 Jul 2026 01:12:48 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16fa714a61b76d1765c540a3e7441ab8414d09304be2f7c0131cbae7c6724a07`  
		Last Modified: Thu, 23 Jul 2026 01:12:49 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bfd71befad5300943eaed2ae0a9f104c2e4936d276caea9876c63c36ac01215`  
		Last Modified: Thu, 23 Jul 2026 01:12:51 GMT  
		Size: 57.0 MB (56992141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:397f759b7395ff7cc6da35ce3d0440f0ef751c95ec57bb92160f167e1d52d1ce`  
		Last Modified: Thu, 23 Jul 2026 01:12:49 GMT  
		Size: 319.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0d340612ca29cb600d3a3ca4a3c14e9031c941787c007717cb3016aa7c282c1`  
		Last Modified: Thu, 23 Jul 2026 01:12:54 GMT  
		Size: 158.9 MB (158936427 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a559a349f4403b67d58feca4289fb9169b26d038b9779c11df16cf35b4ed8d28`  
		Last Modified: Thu, 23 Jul 2026 01:12:51 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:9d2b621fb3a667f539b2740df37b0f560d6c7723cbea6f31bce3dbc36f130c7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16834322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e94746989e8cce97254e0e497baf6ba1bf9425f594a4f6f6d493a59ae5f5122a`

```dockerfile
```

-	Layers:
	-	`sha256:9911754ad54256c2f367a77febdf74aaccf7bc779aafb1f7ed77ea6ccde59cee`  
		Last Modified: Thu, 23 Jul 2026 01:12:49 GMT  
		Size: 16.8 MB (16799215 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4658c75fd939ccee41cb089bfabca4b36cade56bf15085898cebd8536c439904`  
		Last Modified: Thu, 23 Jul 2026 01:12:48 GMT  
		Size: 35.1 KB (35107 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9.7-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:393f964965900cd646f285283faab66476699baa0cefde38d5785217eaeb0a4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.3 MB (267252061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9845754612b74ee0baeef95d5cfaa8dd105f10e4d29bb8db1551fe901f0cfdc2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 00:07:52 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 00:07:52 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 01:10:02 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 23 Jul 2026 01:10:04 GMT
ENV GOSU_VERSION=1.19
# Thu, 23 Jul 2026 01:10:04 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 23 Jul 2026 01:10:40 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 23 Jul 2026 01:10:41 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 23 Jul 2026 01:10:41 GMT
ENV MYSQL_MAJOR=9.7
# Thu, 23 Jul 2026 01:10:41 GMT
ENV MYSQL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 01:10:41 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 23 Jul 2026 01:11:20 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 23 Jul 2026 01:11:20 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 23 Jul 2026 01:11:20 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 01:12:10 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 23 Jul 2026 01:12:10 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Jul 2026 01:12:10 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 23 Jul 2026 01:12:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Jul 2026 01:12:10 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 23 Jul 2026 01:12:10 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b31b097f727a2c22897a0b842f2ed2d61f747e4a77d76f77ad13cae7aa1de1e5`  
		Last Modified: Thu, 23 Jul 2026 00:08:04 GMT  
		Size: 46.5 MB (46478083 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e05519de84b9db2fde8a205ba5dc0dbda75c6c167686590ab0b3b1e966868f33`  
		Last Modified: Thu, 23 Jul 2026 01:12:46 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:362cfc7be4bd1728db6f4655f0a38a535abbf280f88d80e95b6c7aa1ce45418c`  
		Last Modified: Thu, 23 Jul 2026 01:12:47 GMT  
		Size: 737.5 KB (737521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e14620977ce7ed4c68c85117d3e74bcacf63b951c8395dc70de58448984c5c58`  
		Last Modified: Thu, 23 Jul 2026 01:12:47 GMT  
		Size: 5.8 MB (5816835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dc6a5471d70903fe9996f685d24607eab7d4907a11f68e5e5808833a476705d`  
		Last Modified: Thu, 23 Jul 2026 01:12:47 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ceacdcec509d41269aa5ac5ae92afad539bc9144abddf0f44cf86b6e96b202c5`  
		Last Modified: Thu, 23 Jul 2026 01:12:48 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d46baa4a9b9221f08c7c97b2b4c2f2385878357833ae3a8b0c55fb9be5094048`  
		Last Modified: Thu, 23 Jul 2026 01:12:50 GMT  
		Size: 57.0 MB (56998155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3fbfe263117419280986240090a94410288cc996de3548ce01dae2cd520ec27`  
		Last Modified: Thu, 23 Jul 2026 01:12:48 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7edbb8539efeec77b3e4fd360a9f66fe6b10be619e6544fd42340641fd5bc9c1`  
		Last Modified: Thu, 23 Jul 2026 01:12:53 GMT  
		Size: 157.2 MB (157212100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40eaffb234d93d7464ccffb5e22df793a85bf5f69e3b03723ecbf3f648594220`  
		Last Modified: Thu, 23 Jul 2026 01:12:49 GMT  
		Size: 5.2 KB (5221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:67f4b9fdb9d79038d7fb19ce794451cb959dcaea1c47924f9231e07b3b685732
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84e9b79e428b1972eda55c6a7d1fd4267c48bb00f3984872f9fffb848940f0c2`

```dockerfile
```

-	Layers:
	-	`sha256:2e59dbec0673cb8596109213d25face06bb5431494226dc15a5d989a199dac55`  
		Last Modified: Thu, 23 Jul 2026 01:12:47 GMT  
		Size: 16.8 MB (16797687 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f0ce3986da185696c707ee9051edceb3c98c714b18eea41115b22b919540e67d`  
		Last Modified: Thu, 23 Jul 2026 01:12:46 GMT  
		Size: 35.4 KB (35449 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9.7.1`

```console
$ docker pull mysql@sha256:c109c421c81637a50209b57ec6af7dc0685e8b1ce7efdca0c0902a3d95df6574
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9.7.1` - linux; amd64

```console
$ docker pull mysql@sha256:6018c10552553830b8999eea03fce524ddd7a6babda7c20b5abf10fe78f1f5f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.8 MB (270843480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79a428f9725d635e88516bd04132de92319761ca0916141c1c5c5ae764fd8ed4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 00:08:20 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 00:08:20 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 01:10:17 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 23 Jul 2026 01:10:19 GMT
ENV GOSU_VERSION=1.19
# Thu, 23 Jul 2026 01:10:19 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 23 Jul 2026 01:10:51 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 23 Jul 2026 01:10:52 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 23 Jul 2026 01:10:52 GMT
ENV MYSQL_MAJOR=9.7
# Thu, 23 Jul 2026 01:10:52 GMT
ENV MYSQL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 01:10:52 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 23 Jul 2026 01:11:28 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 23 Jul 2026 01:11:28 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 23 Jul 2026 01:11:28 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 01:12:13 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 23 Jul 2026 01:12:13 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Jul 2026 01:12:13 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 23 Jul 2026 01:12:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Jul 2026 01:12:13 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 23 Jul 2026 01:12:13 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:9d94d9416e53c5cff08e1d846b220ef65ad225d72c44da5e6cabc702154a6c52`  
		Last Modified: Thu, 23 Jul 2026 00:08:32 GMT  
		Size: 47.9 MB (47927355 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7ea8a15135bd03e9e32e5305d1f9a44f04280fa90d41ca9482b7097abf4ecd0`  
		Last Modified: Thu, 23 Jul 2026 01:12:48 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e191671750a9cf6aff66451a5adbbbe8506913a2461f954df6f5ed34e80c5eb`  
		Last Modified: Thu, 23 Jul 2026 01:12:48 GMT  
		Size: 783.6 KB (783557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ffb4b65fe3874b0cb45548abfe1fc45072259dbb409d3e5c7a3ac7d6ccdfc10`  
		Last Modified: Thu, 23 Jul 2026 01:12:48 GMT  
		Size: 6.2 MB (6194632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa5f6746fd02514999e82f0c797012603a605fcdfd908dcf244a672b39e95612`  
		Last Modified: Thu, 23 Jul 2026 01:12:48 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16fa714a61b76d1765c540a3e7441ab8414d09304be2f7c0131cbae7c6724a07`  
		Last Modified: Thu, 23 Jul 2026 01:12:49 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bfd71befad5300943eaed2ae0a9f104c2e4936d276caea9876c63c36ac01215`  
		Last Modified: Thu, 23 Jul 2026 01:12:51 GMT  
		Size: 57.0 MB (56992141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:397f759b7395ff7cc6da35ce3d0440f0ef751c95ec57bb92160f167e1d52d1ce`  
		Last Modified: Thu, 23 Jul 2026 01:12:49 GMT  
		Size: 319.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0d340612ca29cb600d3a3ca4a3c14e9031c941787c007717cb3016aa7c282c1`  
		Last Modified: Thu, 23 Jul 2026 01:12:54 GMT  
		Size: 158.9 MB (158936427 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a559a349f4403b67d58feca4289fb9169b26d038b9779c11df16cf35b4ed8d28`  
		Last Modified: Thu, 23 Jul 2026 01:12:51 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7.1` - unknown; unknown

```console
$ docker pull mysql@sha256:9d2b621fb3a667f539b2740df37b0f560d6c7723cbea6f31bce3dbc36f130c7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16834322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e94746989e8cce97254e0e497baf6ba1bf9425f594a4f6f6d493a59ae5f5122a`

```dockerfile
```

-	Layers:
	-	`sha256:9911754ad54256c2f367a77febdf74aaccf7bc779aafb1f7ed77ea6ccde59cee`  
		Last Modified: Thu, 23 Jul 2026 01:12:49 GMT  
		Size: 16.8 MB (16799215 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4658c75fd939ccee41cb089bfabca4b36cade56bf15085898cebd8536c439904`  
		Last Modified: Thu, 23 Jul 2026 01:12:48 GMT  
		Size: 35.1 KB (35107 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9.7.1` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:393f964965900cd646f285283faab66476699baa0cefde38d5785217eaeb0a4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.3 MB (267252061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9845754612b74ee0baeef95d5cfaa8dd105f10e4d29bb8db1551fe901f0cfdc2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 00:07:52 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 00:07:52 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 01:10:02 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 23 Jul 2026 01:10:04 GMT
ENV GOSU_VERSION=1.19
# Thu, 23 Jul 2026 01:10:04 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 23 Jul 2026 01:10:40 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 23 Jul 2026 01:10:41 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 23 Jul 2026 01:10:41 GMT
ENV MYSQL_MAJOR=9.7
# Thu, 23 Jul 2026 01:10:41 GMT
ENV MYSQL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 01:10:41 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 23 Jul 2026 01:11:20 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 23 Jul 2026 01:11:20 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 23 Jul 2026 01:11:20 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 01:12:10 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 23 Jul 2026 01:12:10 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Jul 2026 01:12:10 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 23 Jul 2026 01:12:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Jul 2026 01:12:10 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 23 Jul 2026 01:12:10 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b31b097f727a2c22897a0b842f2ed2d61f747e4a77d76f77ad13cae7aa1de1e5`  
		Last Modified: Thu, 23 Jul 2026 00:08:04 GMT  
		Size: 46.5 MB (46478083 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e05519de84b9db2fde8a205ba5dc0dbda75c6c167686590ab0b3b1e966868f33`  
		Last Modified: Thu, 23 Jul 2026 01:12:46 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:362cfc7be4bd1728db6f4655f0a38a535abbf280f88d80e95b6c7aa1ce45418c`  
		Last Modified: Thu, 23 Jul 2026 01:12:47 GMT  
		Size: 737.5 KB (737521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e14620977ce7ed4c68c85117d3e74bcacf63b951c8395dc70de58448984c5c58`  
		Last Modified: Thu, 23 Jul 2026 01:12:47 GMT  
		Size: 5.8 MB (5816835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dc6a5471d70903fe9996f685d24607eab7d4907a11f68e5e5808833a476705d`  
		Last Modified: Thu, 23 Jul 2026 01:12:47 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ceacdcec509d41269aa5ac5ae92afad539bc9144abddf0f44cf86b6e96b202c5`  
		Last Modified: Thu, 23 Jul 2026 01:12:48 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d46baa4a9b9221f08c7c97b2b4c2f2385878357833ae3a8b0c55fb9be5094048`  
		Last Modified: Thu, 23 Jul 2026 01:12:50 GMT  
		Size: 57.0 MB (56998155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3fbfe263117419280986240090a94410288cc996de3548ce01dae2cd520ec27`  
		Last Modified: Thu, 23 Jul 2026 01:12:48 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7edbb8539efeec77b3e4fd360a9f66fe6b10be619e6544fd42340641fd5bc9c1`  
		Last Modified: Thu, 23 Jul 2026 01:12:53 GMT  
		Size: 157.2 MB (157212100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40eaffb234d93d7464ccffb5e22df793a85bf5f69e3b03723ecbf3f648594220`  
		Last Modified: Thu, 23 Jul 2026 01:12:49 GMT  
		Size: 5.2 KB (5221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7.1` - unknown; unknown

```console
$ docker pull mysql@sha256:67f4b9fdb9d79038d7fb19ce794451cb959dcaea1c47924f9231e07b3b685732
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84e9b79e428b1972eda55c6a7d1fd4267c48bb00f3984872f9fffb848940f0c2`

```dockerfile
```

-	Layers:
	-	`sha256:2e59dbec0673cb8596109213d25face06bb5431494226dc15a5d989a199dac55`  
		Last Modified: Thu, 23 Jul 2026 01:12:47 GMT  
		Size: 16.8 MB (16797687 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f0ce3986da185696c707ee9051edceb3c98c714b18eea41115b22b919540e67d`  
		Last Modified: Thu, 23 Jul 2026 01:12:46 GMT  
		Size: 35.4 KB (35449 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9.7.1-oracle`

```console
$ docker pull mysql@sha256:c109c421c81637a50209b57ec6af7dc0685e8b1ce7efdca0c0902a3d95df6574
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9.7.1-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:6018c10552553830b8999eea03fce524ddd7a6babda7c20b5abf10fe78f1f5f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.8 MB (270843480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79a428f9725d635e88516bd04132de92319761ca0916141c1c5c5ae764fd8ed4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 00:08:20 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 00:08:20 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 01:10:17 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 23 Jul 2026 01:10:19 GMT
ENV GOSU_VERSION=1.19
# Thu, 23 Jul 2026 01:10:19 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 23 Jul 2026 01:10:51 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 23 Jul 2026 01:10:52 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 23 Jul 2026 01:10:52 GMT
ENV MYSQL_MAJOR=9.7
# Thu, 23 Jul 2026 01:10:52 GMT
ENV MYSQL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 01:10:52 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 23 Jul 2026 01:11:28 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 23 Jul 2026 01:11:28 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 23 Jul 2026 01:11:28 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 01:12:13 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 23 Jul 2026 01:12:13 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Jul 2026 01:12:13 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 23 Jul 2026 01:12:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Jul 2026 01:12:13 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 23 Jul 2026 01:12:13 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:9d94d9416e53c5cff08e1d846b220ef65ad225d72c44da5e6cabc702154a6c52`  
		Last Modified: Thu, 23 Jul 2026 00:08:32 GMT  
		Size: 47.9 MB (47927355 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7ea8a15135bd03e9e32e5305d1f9a44f04280fa90d41ca9482b7097abf4ecd0`  
		Last Modified: Thu, 23 Jul 2026 01:12:48 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e191671750a9cf6aff66451a5adbbbe8506913a2461f954df6f5ed34e80c5eb`  
		Last Modified: Thu, 23 Jul 2026 01:12:48 GMT  
		Size: 783.6 KB (783557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ffb4b65fe3874b0cb45548abfe1fc45072259dbb409d3e5c7a3ac7d6ccdfc10`  
		Last Modified: Thu, 23 Jul 2026 01:12:48 GMT  
		Size: 6.2 MB (6194632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa5f6746fd02514999e82f0c797012603a605fcdfd908dcf244a672b39e95612`  
		Last Modified: Thu, 23 Jul 2026 01:12:48 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16fa714a61b76d1765c540a3e7441ab8414d09304be2f7c0131cbae7c6724a07`  
		Last Modified: Thu, 23 Jul 2026 01:12:49 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bfd71befad5300943eaed2ae0a9f104c2e4936d276caea9876c63c36ac01215`  
		Last Modified: Thu, 23 Jul 2026 01:12:51 GMT  
		Size: 57.0 MB (56992141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:397f759b7395ff7cc6da35ce3d0440f0ef751c95ec57bb92160f167e1d52d1ce`  
		Last Modified: Thu, 23 Jul 2026 01:12:49 GMT  
		Size: 319.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0d340612ca29cb600d3a3ca4a3c14e9031c941787c007717cb3016aa7c282c1`  
		Last Modified: Thu, 23 Jul 2026 01:12:54 GMT  
		Size: 158.9 MB (158936427 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a559a349f4403b67d58feca4289fb9169b26d038b9779c11df16cf35b4ed8d28`  
		Last Modified: Thu, 23 Jul 2026 01:12:51 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7.1-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:9d2b621fb3a667f539b2740df37b0f560d6c7723cbea6f31bce3dbc36f130c7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16834322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e94746989e8cce97254e0e497baf6ba1bf9425f594a4f6f6d493a59ae5f5122a`

```dockerfile
```

-	Layers:
	-	`sha256:9911754ad54256c2f367a77febdf74aaccf7bc779aafb1f7ed77ea6ccde59cee`  
		Last Modified: Thu, 23 Jul 2026 01:12:49 GMT  
		Size: 16.8 MB (16799215 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4658c75fd939ccee41cb089bfabca4b36cade56bf15085898cebd8536c439904`  
		Last Modified: Thu, 23 Jul 2026 01:12:48 GMT  
		Size: 35.1 KB (35107 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9.7.1-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:393f964965900cd646f285283faab66476699baa0cefde38d5785217eaeb0a4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.3 MB (267252061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9845754612b74ee0baeef95d5cfaa8dd105f10e4d29bb8db1551fe901f0cfdc2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 00:07:52 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 00:07:52 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 01:10:02 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 23 Jul 2026 01:10:04 GMT
ENV GOSU_VERSION=1.19
# Thu, 23 Jul 2026 01:10:04 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 23 Jul 2026 01:10:40 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 23 Jul 2026 01:10:41 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 23 Jul 2026 01:10:41 GMT
ENV MYSQL_MAJOR=9.7
# Thu, 23 Jul 2026 01:10:41 GMT
ENV MYSQL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 01:10:41 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 23 Jul 2026 01:11:20 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 23 Jul 2026 01:11:20 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 23 Jul 2026 01:11:20 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 01:12:10 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 23 Jul 2026 01:12:10 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Jul 2026 01:12:10 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 23 Jul 2026 01:12:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Jul 2026 01:12:10 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 23 Jul 2026 01:12:10 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b31b097f727a2c22897a0b842f2ed2d61f747e4a77d76f77ad13cae7aa1de1e5`  
		Last Modified: Thu, 23 Jul 2026 00:08:04 GMT  
		Size: 46.5 MB (46478083 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e05519de84b9db2fde8a205ba5dc0dbda75c6c167686590ab0b3b1e966868f33`  
		Last Modified: Thu, 23 Jul 2026 01:12:46 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:362cfc7be4bd1728db6f4655f0a38a535abbf280f88d80e95b6c7aa1ce45418c`  
		Last Modified: Thu, 23 Jul 2026 01:12:47 GMT  
		Size: 737.5 KB (737521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e14620977ce7ed4c68c85117d3e74bcacf63b951c8395dc70de58448984c5c58`  
		Last Modified: Thu, 23 Jul 2026 01:12:47 GMT  
		Size: 5.8 MB (5816835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dc6a5471d70903fe9996f685d24607eab7d4907a11f68e5e5808833a476705d`  
		Last Modified: Thu, 23 Jul 2026 01:12:47 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ceacdcec509d41269aa5ac5ae92afad539bc9144abddf0f44cf86b6e96b202c5`  
		Last Modified: Thu, 23 Jul 2026 01:12:48 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d46baa4a9b9221f08c7c97b2b4c2f2385878357833ae3a8b0c55fb9be5094048`  
		Last Modified: Thu, 23 Jul 2026 01:12:50 GMT  
		Size: 57.0 MB (56998155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3fbfe263117419280986240090a94410288cc996de3548ce01dae2cd520ec27`  
		Last Modified: Thu, 23 Jul 2026 01:12:48 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7edbb8539efeec77b3e4fd360a9f66fe6b10be619e6544fd42340641fd5bc9c1`  
		Last Modified: Thu, 23 Jul 2026 01:12:53 GMT  
		Size: 157.2 MB (157212100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40eaffb234d93d7464ccffb5e22df793a85bf5f69e3b03723ecbf3f648594220`  
		Last Modified: Thu, 23 Jul 2026 01:12:49 GMT  
		Size: 5.2 KB (5221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7.1-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:67f4b9fdb9d79038d7fb19ce794451cb959dcaea1c47924f9231e07b3b685732
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84e9b79e428b1972eda55c6a7d1fd4267c48bb00f3984872f9fffb848940f0c2`

```dockerfile
```

-	Layers:
	-	`sha256:2e59dbec0673cb8596109213d25face06bb5431494226dc15a5d989a199dac55`  
		Last Modified: Thu, 23 Jul 2026 01:12:47 GMT  
		Size: 16.8 MB (16797687 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f0ce3986da185696c707ee9051edceb3c98c714b18eea41115b22b919540e67d`  
		Last Modified: Thu, 23 Jul 2026 01:12:46 GMT  
		Size: 35.4 KB (35449 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9.7.1-oraclelinux9`

```console
$ docker pull mysql@sha256:c109c421c81637a50209b57ec6af7dc0685e8b1ce7efdca0c0902a3d95df6574
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9.7.1-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:6018c10552553830b8999eea03fce524ddd7a6babda7c20b5abf10fe78f1f5f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.8 MB (270843480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79a428f9725d635e88516bd04132de92319761ca0916141c1c5c5ae764fd8ed4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 00:08:20 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 00:08:20 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 01:10:17 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 23 Jul 2026 01:10:19 GMT
ENV GOSU_VERSION=1.19
# Thu, 23 Jul 2026 01:10:19 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 23 Jul 2026 01:10:51 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 23 Jul 2026 01:10:52 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 23 Jul 2026 01:10:52 GMT
ENV MYSQL_MAJOR=9.7
# Thu, 23 Jul 2026 01:10:52 GMT
ENV MYSQL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 01:10:52 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 23 Jul 2026 01:11:28 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 23 Jul 2026 01:11:28 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 23 Jul 2026 01:11:28 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 01:12:13 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 23 Jul 2026 01:12:13 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Jul 2026 01:12:13 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 23 Jul 2026 01:12:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Jul 2026 01:12:13 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 23 Jul 2026 01:12:13 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:9d94d9416e53c5cff08e1d846b220ef65ad225d72c44da5e6cabc702154a6c52`  
		Last Modified: Thu, 23 Jul 2026 00:08:32 GMT  
		Size: 47.9 MB (47927355 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7ea8a15135bd03e9e32e5305d1f9a44f04280fa90d41ca9482b7097abf4ecd0`  
		Last Modified: Thu, 23 Jul 2026 01:12:48 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e191671750a9cf6aff66451a5adbbbe8506913a2461f954df6f5ed34e80c5eb`  
		Last Modified: Thu, 23 Jul 2026 01:12:48 GMT  
		Size: 783.6 KB (783557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ffb4b65fe3874b0cb45548abfe1fc45072259dbb409d3e5c7a3ac7d6ccdfc10`  
		Last Modified: Thu, 23 Jul 2026 01:12:48 GMT  
		Size: 6.2 MB (6194632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa5f6746fd02514999e82f0c797012603a605fcdfd908dcf244a672b39e95612`  
		Last Modified: Thu, 23 Jul 2026 01:12:48 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16fa714a61b76d1765c540a3e7441ab8414d09304be2f7c0131cbae7c6724a07`  
		Last Modified: Thu, 23 Jul 2026 01:12:49 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bfd71befad5300943eaed2ae0a9f104c2e4936d276caea9876c63c36ac01215`  
		Last Modified: Thu, 23 Jul 2026 01:12:51 GMT  
		Size: 57.0 MB (56992141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:397f759b7395ff7cc6da35ce3d0440f0ef751c95ec57bb92160f167e1d52d1ce`  
		Last Modified: Thu, 23 Jul 2026 01:12:49 GMT  
		Size: 319.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0d340612ca29cb600d3a3ca4a3c14e9031c941787c007717cb3016aa7c282c1`  
		Last Modified: Thu, 23 Jul 2026 01:12:54 GMT  
		Size: 158.9 MB (158936427 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a559a349f4403b67d58feca4289fb9169b26d038b9779c11df16cf35b4ed8d28`  
		Last Modified: Thu, 23 Jul 2026 01:12:51 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7.1-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:9d2b621fb3a667f539b2740df37b0f560d6c7723cbea6f31bce3dbc36f130c7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16834322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e94746989e8cce97254e0e497baf6ba1bf9425f594a4f6f6d493a59ae5f5122a`

```dockerfile
```

-	Layers:
	-	`sha256:9911754ad54256c2f367a77febdf74aaccf7bc779aafb1f7ed77ea6ccde59cee`  
		Last Modified: Thu, 23 Jul 2026 01:12:49 GMT  
		Size: 16.8 MB (16799215 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4658c75fd939ccee41cb089bfabca4b36cade56bf15085898cebd8536c439904`  
		Last Modified: Thu, 23 Jul 2026 01:12:48 GMT  
		Size: 35.1 KB (35107 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9.7.1-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:393f964965900cd646f285283faab66476699baa0cefde38d5785217eaeb0a4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.3 MB (267252061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9845754612b74ee0baeef95d5cfaa8dd105f10e4d29bb8db1551fe901f0cfdc2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 00:07:52 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 00:07:52 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 01:10:02 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 23 Jul 2026 01:10:04 GMT
ENV GOSU_VERSION=1.19
# Thu, 23 Jul 2026 01:10:04 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 23 Jul 2026 01:10:40 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 23 Jul 2026 01:10:41 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 23 Jul 2026 01:10:41 GMT
ENV MYSQL_MAJOR=9.7
# Thu, 23 Jul 2026 01:10:41 GMT
ENV MYSQL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 01:10:41 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 23 Jul 2026 01:11:20 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 23 Jul 2026 01:11:20 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 23 Jul 2026 01:11:20 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 01:12:10 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 23 Jul 2026 01:12:10 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Jul 2026 01:12:10 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 23 Jul 2026 01:12:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Jul 2026 01:12:10 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 23 Jul 2026 01:12:10 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b31b097f727a2c22897a0b842f2ed2d61f747e4a77d76f77ad13cae7aa1de1e5`  
		Last Modified: Thu, 23 Jul 2026 00:08:04 GMT  
		Size: 46.5 MB (46478083 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e05519de84b9db2fde8a205ba5dc0dbda75c6c167686590ab0b3b1e966868f33`  
		Last Modified: Thu, 23 Jul 2026 01:12:46 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:362cfc7be4bd1728db6f4655f0a38a535abbf280f88d80e95b6c7aa1ce45418c`  
		Last Modified: Thu, 23 Jul 2026 01:12:47 GMT  
		Size: 737.5 KB (737521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e14620977ce7ed4c68c85117d3e74bcacf63b951c8395dc70de58448984c5c58`  
		Last Modified: Thu, 23 Jul 2026 01:12:47 GMT  
		Size: 5.8 MB (5816835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dc6a5471d70903fe9996f685d24607eab7d4907a11f68e5e5808833a476705d`  
		Last Modified: Thu, 23 Jul 2026 01:12:47 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ceacdcec509d41269aa5ac5ae92afad539bc9144abddf0f44cf86b6e96b202c5`  
		Last Modified: Thu, 23 Jul 2026 01:12:48 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d46baa4a9b9221f08c7c97b2b4c2f2385878357833ae3a8b0c55fb9be5094048`  
		Last Modified: Thu, 23 Jul 2026 01:12:50 GMT  
		Size: 57.0 MB (56998155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3fbfe263117419280986240090a94410288cc996de3548ce01dae2cd520ec27`  
		Last Modified: Thu, 23 Jul 2026 01:12:48 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7edbb8539efeec77b3e4fd360a9f66fe6b10be619e6544fd42340641fd5bc9c1`  
		Last Modified: Thu, 23 Jul 2026 01:12:53 GMT  
		Size: 157.2 MB (157212100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40eaffb234d93d7464ccffb5e22df793a85bf5f69e3b03723ecbf3f648594220`  
		Last Modified: Thu, 23 Jul 2026 01:12:49 GMT  
		Size: 5.2 KB (5221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7.1-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:67f4b9fdb9d79038d7fb19ce794451cb959dcaea1c47924f9231e07b3b685732
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84e9b79e428b1972eda55c6a7d1fd4267c48bb00f3984872f9fffb848940f0c2`

```dockerfile
```

-	Layers:
	-	`sha256:2e59dbec0673cb8596109213d25face06bb5431494226dc15a5d989a199dac55`  
		Last Modified: Thu, 23 Jul 2026 01:12:47 GMT  
		Size: 16.8 MB (16797687 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f0ce3986da185696c707ee9051edceb3c98c714b18eea41115b22b919540e67d`  
		Last Modified: Thu, 23 Jul 2026 01:12:46 GMT  
		Size: 35.4 KB (35449 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:latest`

```console
$ docker pull mysql@sha256:c109c421c81637a50209b57ec6af7dc0685e8b1ce7efdca0c0902a3d95df6574
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:latest` - linux; amd64

```console
$ docker pull mysql@sha256:6018c10552553830b8999eea03fce524ddd7a6babda7c20b5abf10fe78f1f5f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.8 MB (270843480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79a428f9725d635e88516bd04132de92319761ca0916141c1c5c5ae764fd8ed4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 00:08:20 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 00:08:20 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 01:10:17 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 23 Jul 2026 01:10:19 GMT
ENV GOSU_VERSION=1.19
# Thu, 23 Jul 2026 01:10:19 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 23 Jul 2026 01:10:51 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 23 Jul 2026 01:10:52 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 23 Jul 2026 01:10:52 GMT
ENV MYSQL_MAJOR=9.7
# Thu, 23 Jul 2026 01:10:52 GMT
ENV MYSQL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 01:10:52 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 23 Jul 2026 01:11:28 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 23 Jul 2026 01:11:28 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 23 Jul 2026 01:11:28 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 01:12:13 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 23 Jul 2026 01:12:13 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Jul 2026 01:12:13 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 23 Jul 2026 01:12:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Jul 2026 01:12:13 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 23 Jul 2026 01:12:13 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:9d94d9416e53c5cff08e1d846b220ef65ad225d72c44da5e6cabc702154a6c52`  
		Last Modified: Thu, 23 Jul 2026 00:08:32 GMT  
		Size: 47.9 MB (47927355 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7ea8a15135bd03e9e32e5305d1f9a44f04280fa90d41ca9482b7097abf4ecd0`  
		Last Modified: Thu, 23 Jul 2026 01:12:48 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e191671750a9cf6aff66451a5adbbbe8506913a2461f954df6f5ed34e80c5eb`  
		Last Modified: Thu, 23 Jul 2026 01:12:48 GMT  
		Size: 783.6 KB (783557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ffb4b65fe3874b0cb45548abfe1fc45072259dbb409d3e5c7a3ac7d6ccdfc10`  
		Last Modified: Thu, 23 Jul 2026 01:12:48 GMT  
		Size: 6.2 MB (6194632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa5f6746fd02514999e82f0c797012603a605fcdfd908dcf244a672b39e95612`  
		Last Modified: Thu, 23 Jul 2026 01:12:48 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16fa714a61b76d1765c540a3e7441ab8414d09304be2f7c0131cbae7c6724a07`  
		Last Modified: Thu, 23 Jul 2026 01:12:49 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bfd71befad5300943eaed2ae0a9f104c2e4936d276caea9876c63c36ac01215`  
		Last Modified: Thu, 23 Jul 2026 01:12:51 GMT  
		Size: 57.0 MB (56992141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:397f759b7395ff7cc6da35ce3d0440f0ef751c95ec57bb92160f167e1d52d1ce`  
		Last Modified: Thu, 23 Jul 2026 01:12:49 GMT  
		Size: 319.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0d340612ca29cb600d3a3ca4a3c14e9031c941787c007717cb3016aa7c282c1`  
		Last Modified: Thu, 23 Jul 2026 01:12:54 GMT  
		Size: 158.9 MB (158936427 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a559a349f4403b67d58feca4289fb9169b26d038b9779c11df16cf35b4ed8d28`  
		Last Modified: Thu, 23 Jul 2026 01:12:51 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:latest` - unknown; unknown

```console
$ docker pull mysql@sha256:9d2b621fb3a667f539b2740df37b0f560d6c7723cbea6f31bce3dbc36f130c7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16834322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e94746989e8cce97254e0e497baf6ba1bf9425f594a4f6f6d493a59ae5f5122a`

```dockerfile
```

-	Layers:
	-	`sha256:9911754ad54256c2f367a77febdf74aaccf7bc779aafb1f7ed77ea6ccde59cee`  
		Last Modified: Thu, 23 Jul 2026 01:12:49 GMT  
		Size: 16.8 MB (16799215 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4658c75fd939ccee41cb089bfabca4b36cade56bf15085898cebd8536c439904`  
		Last Modified: Thu, 23 Jul 2026 01:12:48 GMT  
		Size: 35.1 KB (35107 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:latest` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:393f964965900cd646f285283faab66476699baa0cefde38d5785217eaeb0a4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.3 MB (267252061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9845754612b74ee0baeef95d5cfaa8dd105f10e4d29bb8db1551fe901f0cfdc2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 00:07:52 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 00:07:52 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 01:10:02 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 23 Jul 2026 01:10:04 GMT
ENV GOSU_VERSION=1.19
# Thu, 23 Jul 2026 01:10:04 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 23 Jul 2026 01:10:40 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 23 Jul 2026 01:10:41 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 23 Jul 2026 01:10:41 GMT
ENV MYSQL_MAJOR=9.7
# Thu, 23 Jul 2026 01:10:41 GMT
ENV MYSQL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 01:10:41 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 23 Jul 2026 01:11:20 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 23 Jul 2026 01:11:20 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 23 Jul 2026 01:11:20 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 01:12:10 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 23 Jul 2026 01:12:10 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Jul 2026 01:12:10 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 23 Jul 2026 01:12:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Jul 2026 01:12:10 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 23 Jul 2026 01:12:10 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b31b097f727a2c22897a0b842f2ed2d61f747e4a77d76f77ad13cae7aa1de1e5`  
		Last Modified: Thu, 23 Jul 2026 00:08:04 GMT  
		Size: 46.5 MB (46478083 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e05519de84b9db2fde8a205ba5dc0dbda75c6c167686590ab0b3b1e966868f33`  
		Last Modified: Thu, 23 Jul 2026 01:12:46 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:362cfc7be4bd1728db6f4655f0a38a535abbf280f88d80e95b6c7aa1ce45418c`  
		Last Modified: Thu, 23 Jul 2026 01:12:47 GMT  
		Size: 737.5 KB (737521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e14620977ce7ed4c68c85117d3e74bcacf63b951c8395dc70de58448984c5c58`  
		Last Modified: Thu, 23 Jul 2026 01:12:47 GMT  
		Size: 5.8 MB (5816835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dc6a5471d70903fe9996f685d24607eab7d4907a11f68e5e5808833a476705d`  
		Last Modified: Thu, 23 Jul 2026 01:12:47 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ceacdcec509d41269aa5ac5ae92afad539bc9144abddf0f44cf86b6e96b202c5`  
		Last Modified: Thu, 23 Jul 2026 01:12:48 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d46baa4a9b9221f08c7c97b2b4c2f2385878357833ae3a8b0c55fb9be5094048`  
		Last Modified: Thu, 23 Jul 2026 01:12:50 GMT  
		Size: 57.0 MB (56998155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3fbfe263117419280986240090a94410288cc996de3548ce01dae2cd520ec27`  
		Last Modified: Thu, 23 Jul 2026 01:12:48 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7edbb8539efeec77b3e4fd360a9f66fe6b10be619e6544fd42340641fd5bc9c1`  
		Last Modified: Thu, 23 Jul 2026 01:12:53 GMT  
		Size: 157.2 MB (157212100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40eaffb234d93d7464ccffb5e22df793a85bf5f69e3b03723ecbf3f648594220`  
		Last Modified: Thu, 23 Jul 2026 01:12:49 GMT  
		Size: 5.2 KB (5221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:latest` - unknown; unknown

```console
$ docker pull mysql@sha256:67f4b9fdb9d79038d7fb19ce794451cb959dcaea1c47924f9231e07b3b685732
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84e9b79e428b1972eda55c6a7d1fd4267c48bb00f3984872f9fffb848940f0c2`

```dockerfile
```

-	Layers:
	-	`sha256:2e59dbec0673cb8596109213d25face06bb5431494226dc15a5d989a199dac55`  
		Last Modified: Thu, 23 Jul 2026 01:12:47 GMT  
		Size: 16.8 MB (16797687 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f0ce3986da185696c707ee9051edceb3c98c714b18eea41115b22b919540e67d`  
		Last Modified: Thu, 23 Jul 2026 01:12:46 GMT  
		Size: 35.4 KB (35449 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:lts`

```console
$ docker pull mysql@sha256:c109c421c81637a50209b57ec6af7dc0685e8b1ce7efdca0c0902a3d95df6574
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:lts` - linux; amd64

```console
$ docker pull mysql@sha256:6018c10552553830b8999eea03fce524ddd7a6babda7c20b5abf10fe78f1f5f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.8 MB (270843480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79a428f9725d635e88516bd04132de92319761ca0916141c1c5c5ae764fd8ed4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 00:08:20 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 00:08:20 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 01:10:17 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 23 Jul 2026 01:10:19 GMT
ENV GOSU_VERSION=1.19
# Thu, 23 Jul 2026 01:10:19 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 23 Jul 2026 01:10:51 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 23 Jul 2026 01:10:52 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 23 Jul 2026 01:10:52 GMT
ENV MYSQL_MAJOR=9.7
# Thu, 23 Jul 2026 01:10:52 GMT
ENV MYSQL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 01:10:52 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 23 Jul 2026 01:11:28 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 23 Jul 2026 01:11:28 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 23 Jul 2026 01:11:28 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 01:12:13 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 23 Jul 2026 01:12:13 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Jul 2026 01:12:13 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 23 Jul 2026 01:12:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Jul 2026 01:12:13 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 23 Jul 2026 01:12:13 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:9d94d9416e53c5cff08e1d846b220ef65ad225d72c44da5e6cabc702154a6c52`  
		Last Modified: Thu, 23 Jul 2026 00:08:32 GMT  
		Size: 47.9 MB (47927355 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7ea8a15135bd03e9e32e5305d1f9a44f04280fa90d41ca9482b7097abf4ecd0`  
		Last Modified: Thu, 23 Jul 2026 01:12:48 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e191671750a9cf6aff66451a5adbbbe8506913a2461f954df6f5ed34e80c5eb`  
		Last Modified: Thu, 23 Jul 2026 01:12:48 GMT  
		Size: 783.6 KB (783557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ffb4b65fe3874b0cb45548abfe1fc45072259dbb409d3e5c7a3ac7d6ccdfc10`  
		Last Modified: Thu, 23 Jul 2026 01:12:48 GMT  
		Size: 6.2 MB (6194632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa5f6746fd02514999e82f0c797012603a605fcdfd908dcf244a672b39e95612`  
		Last Modified: Thu, 23 Jul 2026 01:12:48 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16fa714a61b76d1765c540a3e7441ab8414d09304be2f7c0131cbae7c6724a07`  
		Last Modified: Thu, 23 Jul 2026 01:12:49 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bfd71befad5300943eaed2ae0a9f104c2e4936d276caea9876c63c36ac01215`  
		Last Modified: Thu, 23 Jul 2026 01:12:51 GMT  
		Size: 57.0 MB (56992141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:397f759b7395ff7cc6da35ce3d0440f0ef751c95ec57bb92160f167e1d52d1ce`  
		Last Modified: Thu, 23 Jul 2026 01:12:49 GMT  
		Size: 319.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0d340612ca29cb600d3a3ca4a3c14e9031c941787c007717cb3016aa7c282c1`  
		Last Modified: Thu, 23 Jul 2026 01:12:54 GMT  
		Size: 158.9 MB (158936427 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a559a349f4403b67d58feca4289fb9169b26d038b9779c11df16cf35b4ed8d28`  
		Last Modified: Thu, 23 Jul 2026 01:12:51 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:lts` - unknown; unknown

```console
$ docker pull mysql@sha256:9d2b621fb3a667f539b2740df37b0f560d6c7723cbea6f31bce3dbc36f130c7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16834322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e94746989e8cce97254e0e497baf6ba1bf9425f594a4f6f6d493a59ae5f5122a`

```dockerfile
```

-	Layers:
	-	`sha256:9911754ad54256c2f367a77febdf74aaccf7bc779aafb1f7ed77ea6ccde59cee`  
		Last Modified: Thu, 23 Jul 2026 01:12:49 GMT  
		Size: 16.8 MB (16799215 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4658c75fd939ccee41cb089bfabca4b36cade56bf15085898cebd8536c439904`  
		Last Modified: Thu, 23 Jul 2026 01:12:48 GMT  
		Size: 35.1 KB (35107 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:lts` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:393f964965900cd646f285283faab66476699baa0cefde38d5785217eaeb0a4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.3 MB (267252061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9845754612b74ee0baeef95d5cfaa8dd105f10e4d29bb8db1551fe901f0cfdc2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 00:07:52 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 00:07:52 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 01:10:02 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 23 Jul 2026 01:10:04 GMT
ENV GOSU_VERSION=1.19
# Thu, 23 Jul 2026 01:10:04 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 23 Jul 2026 01:10:40 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 23 Jul 2026 01:10:41 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 23 Jul 2026 01:10:41 GMT
ENV MYSQL_MAJOR=9.7
# Thu, 23 Jul 2026 01:10:41 GMT
ENV MYSQL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 01:10:41 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 23 Jul 2026 01:11:20 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 23 Jul 2026 01:11:20 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 23 Jul 2026 01:11:20 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 01:12:10 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 23 Jul 2026 01:12:10 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Jul 2026 01:12:10 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 23 Jul 2026 01:12:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Jul 2026 01:12:10 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 23 Jul 2026 01:12:10 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b31b097f727a2c22897a0b842f2ed2d61f747e4a77d76f77ad13cae7aa1de1e5`  
		Last Modified: Thu, 23 Jul 2026 00:08:04 GMT  
		Size: 46.5 MB (46478083 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e05519de84b9db2fde8a205ba5dc0dbda75c6c167686590ab0b3b1e966868f33`  
		Last Modified: Thu, 23 Jul 2026 01:12:46 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:362cfc7be4bd1728db6f4655f0a38a535abbf280f88d80e95b6c7aa1ce45418c`  
		Last Modified: Thu, 23 Jul 2026 01:12:47 GMT  
		Size: 737.5 KB (737521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e14620977ce7ed4c68c85117d3e74bcacf63b951c8395dc70de58448984c5c58`  
		Last Modified: Thu, 23 Jul 2026 01:12:47 GMT  
		Size: 5.8 MB (5816835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dc6a5471d70903fe9996f685d24607eab7d4907a11f68e5e5808833a476705d`  
		Last Modified: Thu, 23 Jul 2026 01:12:47 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ceacdcec509d41269aa5ac5ae92afad539bc9144abddf0f44cf86b6e96b202c5`  
		Last Modified: Thu, 23 Jul 2026 01:12:48 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d46baa4a9b9221f08c7c97b2b4c2f2385878357833ae3a8b0c55fb9be5094048`  
		Last Modified: Thu, 23 Jul 2026 01:12:50 GMT  
		Size: 57.0 MB (56998155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3fbfe263117419280986240090a94410288cc996de3548ce01dae2cd520ec27`  
		Last Modified: Thu, 23 Jul 2026 01:12:48 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7edbb8539efeec77b3e4fd360a9f66fe6b10be619e6544fd42340641fd5bc9c1`  
		Last Modified: Thu, 23 Jul 2026 01:12:53 GMT  
		Size: 157.2 MB (157212100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40eaffb234d93d7464ccffb5e22df793a85bf5f69e3b03723ecbf3f648594220`  
		Last Modified: Thu, 23 Jul 2026 01:12:49 GMT  
		Size: 5.2 KB (5221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:lts` - unknown; unknown

```console
$ docker pull mysql@sha256:67f4b9fdb9d79038d7fb19ce794451cb959dcaea1c47924f9231e07b3b685732
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84e9b79e428b1972eda55c6a7d1fd4267c48bb00f3984872f9fffb848940f0c2`

```dockerfile
```

-	Layers:
	-	`sha256:2e59dbec0673cb8596109213d25face06bb5431494226dc15a5d989a199dac55`  
		Last Modified: Thu, 23 Jul 2026 01:12:47 GMT  
		Size: 16.8 MB (16797687 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f0ce3986da185696c707ee9051edceb3c98c714b18eea41115b22b919540e67d`  
		Last Modified: Thu, 23 Jul 2026 01:12:46 GMT  
		Size: 35.4 KB (35449 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:lts-oracle`

```console
$ docker pull mysql@sha256:c109c421c81637a50209b57ec6af7dc0685e8b1ce7efdca0c0902a3d95df6574
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:lts-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:6018c10552553830b8999eea03fce524ddd7a6babda7c20b5abf10fe78f1f5f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.8 MB (270843480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79a428f9725d635e88516bd04132de92319761ca0916141c1c5c5ae764fd8ed4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 00:08:20 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 00:08:20 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 01:10:17 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 23 Jul 2026 01:10:19 GMT
ENV GOSU_VERSION=1.19
# Thu, 23 Jul 2026 01:10:19 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 23 Jul 2026 01:10:51 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 23 Jul 2026 01:10:52 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 23 Jul 2026 01:10:52 GMT
ENV MYSQL_MAJOR=9.7
# Thu, 23 Jul 2026 01:10:52 GMT
ENV MYSQL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 01:10:52 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 23 Jul 2026 01:11:28 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 23 Jul 2026 01:11:28 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 23 Jul 2026 01:11:28 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 01:12:13 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 23 Jul 2026 01:12:13 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Jul 2026 01:12:13 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 23 Jul 2026 01:12:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Jul 2026 01:12:13 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 23 Jul 2026 01:12:13 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:9d94d9416e53c5cff08e1d846b220ef65ad225d72c44da5e6cabc702154a6c52`  
		Last Modified: Thu, 23 Jul 2026 00:08:32 GMT  
		Size: 47.9 MB (47927355 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7ea8a15135bd03e9e32e5305d1f9a44f04280fa90d41ca9482b7097abf4ecd0`  
		Last Modified: Thu, 23 Jul 2026 01:12:48 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e191671750a9cf6aff66451a5adbbbe8506913a2461f954df6f5ed34e80c5eb`  
		Last Modified: Thu, 23 Jul 2026 01:12:48 GMT  
		Size: 783.6 KB (783557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ffb4b65fe3874b0cb45548abfe1fc45072259dbb409d3e5c7a3ac7d6ccdfc10`  
		Last Modified: Thu, 23 Jul 2026 01:12:48 GMT  
		Size: 6.2 MB (6194632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa5f6746fd02514999e82f0c797012603a605fcdfd908dcf244a672b39e95612`  
		Last Modified: Thu, 23 Jul 2026 01:12:48 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16fa714a61b76d1765c540a3e7441ab8414d09304be2f7c0131cbae7c6724a07`  
		Last Modified: Thu, 23 Jul 2026 01:12:49 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bfd71befad5300943eaed2ae0a9f104c2e4936d276caea9876c63c36ac01215`  
		Last Modified: Thu, 23 Jul 2026 01:12:51 GMT  
		Size: 57.0 MB (56992141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:397f759b7395ff7cc6da35ce3d0440f0ef751c95ec57bb92160f167e1d52d1ce`  
		Last Modified: Thu, 23 Jul 2026 01:12:49 GMT  
		Size: 319.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0d340612ca29cb600d3a3ca4a3c14e9031c941787c007717cb3016aa7c282c1`  
		Last Modified: Thu, 23 Jul 2026 01:12:54 GMT  
		Size: 158.9 MB (158936427 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a559a349f4403b67d58feca4289fb9169b26d038b9779c11df16cf35b4ed8d28`  
		Last Modified: Thu, 23 Jul 2026 01:12:51 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:lts-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:9d2b621fb3a667f539b2740df37b0f560d6c7723cbea6f31bce3dbc36f130c7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16834322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e94746989e8cce97254e0e497baf6ba1bf9425f594a4f6f6d493a59ae5f5122a`

```dockerfile
```

-	Layers:
	-	`sha256:9911754ad54256c2f367a77febdf74aaccf7bc779aafb1f7ed77ea6ccde59cee`  
		Last Modified: Thu, 23 Jul 2026 01:12:49 GMT  
		Size: 16.8 MB (16799215 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4658c75fd939ccee41cb089bfabca4b36cade56bf15085898cebd8536c439904`  
		Last Modified: Thu, 23 Jul 2026 01:12:48 GMT  
		Size: 35.1 KB (35107 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:lts-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:393f964965900cd646f285283faab66476699baa0cefde38d5785217eaeb0a4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.3 MB (267252061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9845754612b74ee0baeef95d5cfaa8dd105f10e4d29bb8db1551fe901f0cfdc2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 00:07:52 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 00:07:52 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 01:10:02 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 23 Jul 2026 01:10:04 GMT
ENV GOSU_VERSION=1.19
# Thu, 23 Jul 2026 01:10:04 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 23 Jul 2026 01:10:40 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 23 Jul 2026 01:10:41 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 23 Jul 2026 01:10:41 GMT
ENV MYSQL_MAJOR=9.7
# Thu, 23 Jul 2026 01:10:41 GMT
ENV MYSQL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 01:10:41 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 23 Jul 2026 01:11:20 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 23 Jul 2026 01:11:20 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 23 Jul 2026 01:11:20 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 01:12:10 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 23 Jul 2026 01:12:10 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Jul 2026 01:12:10 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 23 Jul 2026 01:12:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Jul 2026 01:12:10 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 23 Jul 2026 01:12:10 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b31b097f727a2c22897a0b842f2ed2d61f747e4a77d76f77ad13cae7aa1de1e5`  
		Last Modified: Thu, 23 Jul 2026 00:08:04 GMT  
		Size: 46.5 MB (46478083 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e05519de84b9db2fde8a205ba5dc0dbda75c6c167686590ab0b3b1e966868f33`  
		Last Modified: Thu, 23 Jul 2026 01:12:46 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:362cfc7be4bd1728db6f4655f0a38a535abbf280f88d80e95b6c7aa1ce45418c`  
		Last Modified: Thu, 23 Jul 2026 01:12:47 GMT  
		Size: 737.5 KB (737521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e14620977ce7ed4c68c85117d3e74bcacf63b951c8395dc70de58448984c5c58`  
		Last Modified: Thu, 23 Jul 2026 01:12:47 GMT  
		Size: 5.8 MB (5816835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dc6a5471d70903fe9996f685d24607eab7d4907a11f68e5e5808833a476705d`  
		Last Modified: Thu, 23 Jul 2026 01:12:47 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ceacdcec509d41269aa5ac5ae92afad539bc9144abddf0f44cf86b6e96b202c5`  
		Last Modified: Thu, 23 Jul 2026 01:12:48 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d46baa4a9b9221f08c7c97b2b4c2f2385878357833ae3a8b0c55fb9be5094048`  
		Last Modified: Thu, 23 Jul 2026 01:12:50 GMT  
		Size: 57.0 MB (56998155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3fbfe263117419280986240090a94410288cc996de3548ce01dae2cd520ec27`  
		Last Modified: Thu, 23 Jul 2026 01:12:48 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7edbb8539efeec77b3e4fd360a9f66fe6b10be619e6544fd42340641fd5bc9c1`  
		Last Modified: Thu, 23 Jul 2026 01:12:53 GMT  
		Size: 157.2 MB (157212100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40eaffb234d93d7464ccffb5e22df793a85bf5f69e3b03723ecbf3f648594220`  
		Last Modified: Thu, 23 Jul 2026 01:12:49 GMT  
		Size: 5.2 KB (5221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:lts-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:67f4b9fdb9d79038d7fb19ce794451cb959dcaea1c47924f9231e07b3b685732
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84e9b79e428b1972eda55c6a7d1fd4267c48bb00f3984872f9fffb848940f0c2`

```dockerfile
```

-	Layers:
	-	`sha256:2e59dbec0673cb8596109213d25face06bb5431494226dc15a5d989a199dac55`  
		Last Modified: Thu, 23 Jul 2026 01:12:47 GMT  
		Size: 16.8 MB (16797687 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f0ce3986da185696c707ee9051edceb3c98c714b18eea41115b22b919540e67d`  
		Last Modified: Thu, 23 Jul 2026 01:12:46 GMT  
		Size: 35.4 KB (35449 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:lts-oraclelinux9`

```console
$ docker pull mysql@sha256:c109c421c81637a50209b57ec6af7dc0685e8b1ce7efdca0c0902a3d95df6574
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:lts-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:6018c10552553830b8999eea03fce524ddd7a6babda7c20b5abf10fe78f1f5f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.8 MB (270843480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79a428f9725d635e88516bd04132de92319761ca0916141c1c5c5ae764fd8ed4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 00:08:20 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 00:08:20 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 01:10:17 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 23 Jul 2026 01:10:19 GMT
ENV GOSU_VERSION=1.19
# Thu, 23 Jul 2026 01:10:19 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 23 Jul 2026 01:10:51 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 23 Jul 2026 01:10:52 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 23 Jul 2026 01:10:52 GMT
ENV MYSQL_MAJOR=9.7
# Thu, 23 Jul 2026 01:10:52 GMT
ENV MYSQL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 01:10:52 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 23 Jul 2026 01:11:28 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 23 Jul 2026 01:11:28 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 23 Jul 2026 01:11:28 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 01:12:13 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 23 Jul 2026 01:12:13 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Jul 2026 01:12:13 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 23 Jul 2026 01:12:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Jul 2026 01:12:13 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 23 Jul 2026 01:12:13 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:9d94d9416e53c5cff08e1d846b220ef65ad225d72c44da5e6cabc702154a6c52`  
		Last Modified: Thu, 23 Jul 2026 00:08:32 GMT  
		Size: 47.9 MB (47927355 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7ea8a15135bd03e9e32e5305d1f9a44f04280fa90d41ca9482b7097abf4ecd0`  
		Last Modified: Thu, 23 Jul 2026 01:12:48 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e191671750a9cf6aff66451a5adbbbe8506913a2461f954df6f5ed34e80c5eb`  
		Last Modified: Thu, 23 Jul 2026 01:12:48 GMT  
		Size: 783.6 KB (783557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ffb4b65fe3874b0cb45548abfe1fc45072259dbb409d3e5c7a3ac7d6ccdfc10`  
		Last Modified: Thu, 23 Jul 2026 01:12:48 GMT  
		Size: 6.2 MB (6194632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa5f6746fd02514999e82f0c797012603a605fcdfd908dcf244a672b39e95612`  
		Last Modified: Thu, 23 Jul 2026 01:12:48 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16fa714a61b76d1765c540a3e7441ab8414d09304be2f7c0131cbae7c6724a07`  
		Last Modified: Thu, 23 Jul 2026 01:12:49 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bfd71befad5300943eaed2ae0a9f104c2e4936d276caea9876c63c36ac01215`  
		Last Modified: Thu, 23 Jul 2026 01:12:51 GMT  
		Size: 57.0 MB (56992141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:397f759b7395ff7cc6da35ce3d0440f0ef751c95ec57bb92160f167e1d52d1ce`  
		Last Modified: Thu, 23 Jul 2026 01:12:49 GMT  
		Size: 319.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0d340612ca29cb600d3a3ca4a3c14e9031c941787c007717cb3016aa7c282c1`  
		Last Modified: Thu, 23 Jul 2026 01:12:54 GMT  
		Size: 158.9 MB (158936427 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a559a349f4403b67d58feca4289fb9169b26d038b9779c11df16cf35b4ed8d28`  
		Last Modified: Thu, 23 Jul 2026 01:12:51 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:lts-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:9d2b621fb3a667f539b2740df37b0f560d6c7723cbea6f31bce3dbc36f130c7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16834322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e94746989e8cce97254e0e497baf6ba1bf9425f594a4f6f6d493a59ae5f5122a`

```dockerfile
```

-	Layers:
	-	`sha256:9911754ad54256c2f367a77febdf74aaccf7bc779aafb1f7ed77ea6ccde59cee`  
		Last Modified: Thu, 23 Jul 2026 01:12:49 GMT  
		Size: 16.8 MB (16799215 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4658c75fd939ccee41cb089bfabca4b36cade56bf15085898cebd8536c439904`  
		Last Modified: Thu, 23 Jul 2026 01:12:48 GMT  
		Size: 35.1 KB (35107 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:lts-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:393f964965900cd646f285283faab66476699baa0cefde38d5785217eaeb0a4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.3 MB (267252061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9845754612b74ee0baeef95d5cfaa8dd105f10e4d29bb8db1551fe901f0cfdc2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 00:07:52 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 00:07:52 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 01:10:02 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 23 Jul 2026 01:10:04 GMT
ENV GOSU_VERSION=1.19
# Thu, 23 Jul 2026 01:10:04 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 23 Jul 2026 01:10:40 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 23 Jul 2026 01:10:41 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 23 Jul 2026 01:10:41 GMT
ENV MYSQL_MAJOR=9.7
# Thu, 23 Jul 2026 01:10:41 GMT
ENV MYSQL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 01:10:41 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 23 Jul 2026 01:11:20 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 23 Jul 2026 01:11:20 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 23 Jul 2026 01:11:20 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 01:12:10 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 23 Jul 2026 01:12:10 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Jul 2026 01:12:10 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 23 Jul 2026 01:12:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Jul 2026 01:12:10 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 23 Jul 2026 01:12:10 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b31b097f727a2c22897a0b842f2ed2d61f747e4a77d76f77ad13cae7aa1de1e5`  
		Last Modified: Thu, 23 Jul 2026 00:08:04 GMT  
		Size: 46.5 MB (46478083 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e05519de84b9db2fde8a205ba5dc0dbda75c6c167686590ab0b3b1e966868f33`  
		Last Modified: Thu, 23 Jul 2026 01:12:46 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:362cfc7be4bd1728db6f4655f0a38a535abbf280f88d80e95b6c7aa1ce45418c`  
		Last Modified: Thu, 23 Jul 2026 01:12:47 GMT  
		Size: 737.5 KB (737521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e14620977ce7ed4c68c85117d3e74bcacf63b951c8395dc70de58448984c5c58`  
		Last Modified: Thu, 23 Jul 2026 01:12:47 GMT  
		Size: 5.8 MB (5816835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dc6a5471d70903fe9996f685d24607eab7d4907a11f68e5e5808833a476705d`  
		Last Modified: Thu, 23 Jul 2026 01:12:47 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ceacdcec509d41269aa5ac5ae92afad539bc9144abddf0f44cf86b6e96b202c5`  
		Last Modified: Thu, 23 Jul 2026 01:12:48 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d46baa4a9b9221f08c7c97b2b4c2f2385878357833ae3a8b0c55fb9be5094048`  
		Last Modified: Thu, 23 Jul 2026 01:12:50 GMT  
		Size: 57.0 MB (56998155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3fbfe263117419280986240090a94410288cc996de3548ce01dae2cd520ec27`  
		Last Modified: Thu, 23 Jul 2026 01:12:48 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7edbb8539efeec77b3e4fd360a9f66fe6b10be619e6544fd42340641fd5bc9c1`  
		Last Modified: Thu, 23 Jul 2026 01:12:53 GMT  
		Size: 157.2 MB (157212100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40eaffb234d93d7464ccffb5e22df793a85bf5f69e3b03723ecbf3f648594220`  
		Last Modified: Thu, 23 Jul 2026 01:12:49 GMT  
		Size: 5.2 KB (5221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:lts-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:67f4b9fdb9d79038d7fb19ce794451cb959dcaea1c47924f9231e07b3b685732
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84e9b79e428b1972eda55c6a7d1fd4267c48bb00f3984872f9fffb848940f0c2`

```dockerfile
```

-	Layers:
	-	`sha256:2e59dbec0673cb8596109213d25face06bb5431494226dc15a5d989a199dac55`  
		Last Modified: Thu, 23 Jul 2026 01:12:47 GMT  
		Size: 16.8 MB (16797687 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f0ce3986da185696c707ee9051edceb3c98c714b18eea41115b22b919540e67d`  
		Last Modified: Thu, 23 Jul 2026 01:12:46 GMT  
		Size: 35.4 KB (35449 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:oracle`

```console
$ docker pull mysql@sha256:c109c421c81637a50209b57ec6af7dc0685e8b1ce7efdca0c0902a3d95df6574
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:oracle` - linux; amd64

```console
$ docker pull mysql@sha256:6018c10552553830b8999eea03fce524ddd7a6babda7c20b5abf10fe78f1f5f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.8 MB (270843480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79a428f9725d635e88516bd04132de92319761ca0916141c1c5c5ae764fd8ed4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 00:08:20 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 00:08:20 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 01:10:17 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 23 Jul 2026 01:10:19 GMT
ENV GOSU_VERSION=1.19
# Thu, 23 Jul 2026 01:10:19 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 23 Jul 2026 01:10:51 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 23 Jul 2026 01:10:52 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 23 Jul 2026 01:10:52 GMT
ENV MYSQL_MAJOR=9.7
# Thu, 23 Jul 2026 01:10:52 GMT
ENV MYSQL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 01:10:52 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 23 Jul 2026 01:11:28 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 23 Jul 2026 01:11:28 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 23 Jul 2026 01:11:28 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 01:12:13 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 23 Jul 2026 01:12:13 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Jul 2026 01:12:13 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 23 Jul 2026 01:12:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Jul 2026 01:12:13 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 23 Jul 2026 01:12:13 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:9d94d9416e53c5cff08e1d846b220ef65ad225d72c44da5e6cabc702154a6c52`  
		Last Modified: Thu, 23 Jul 2026 00:08:32 GMT  
		Size: 47.9 MB (47927355 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7ea8a15135bd03e9e32e5305d1f9a44f04280fa90d41ca9482b7097abf4ecd0`  
		Last Modified: Thu, 23 Jul 2026 01:12:48 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e191671750a9cf6aff66451a5adbbbe8506913a2461f954df6f5ed34e80c5eb`  
		Last Modified: Thu, 23 Jul 2026 01:12:48 GMT  
		Size: 783.6 KB (783557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ffb4b65fe3874b0cb45548abfe1fc45072259dbb409d3e5c7a3ac7d6ccdfc10`  
		Last Modified: Thu, 23 Jul 2026 01:12:48 GMT  
		Size: 6.2 MB (6194632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa5f6746fd02514999e82f0c797012603a605fcdfd908dcf244a672b39e95612`  
		Last Modified: Thu, 23 Jul 2026 01:12:48 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16fa714a61b76d1765c540a3e7441ab8414d09304be2f7c0131cbae7c6724a07`  
		Last Modified: Thu, 23 Jul 2026 01:12:49 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bfd71befad5300943eaed2ae0a9f104c2e4936d276caea9876c63c36ac01215`  
		Last Modified: Thu, 23 Jul 2026 01:12:51 GMT  
		Size: 57.0 MB (56992141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:397f759b7395ff7cc6da35ce3d0440f0ef751c95ec57bb92160f167e1d52d1ce`  
		Last Modified: Thu, 23 Jul 2026 01:12:49 GMT  
		Size: 319.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0d340612ca29cb600d3a3ca4a3c14e9031c941787c007717cb3016aa7c282c1`  
		Last Modified: Thu, 23 Jul 2026 01:12:54 GMT  
		Size: 158.9 MB (158936427 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a559a349f4403b67d58feca4289fb9169b26d038b9779c11df16cf35b4ed8d28`  
		Last Modified: Thu, 23 Jul 2026 01:12:51 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:9d2b621fb3a667f539b2740df37b0f560d6c7723cbea6f31bce3dbc36f130c7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16834322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e94746989e8cce97254e0e497baf6ba1bf9425f594a4f6f6d493a59ae5f5122a`

```dockerfile
```

-	Layers:
	-	`sha256:9911754ad54256c2f367a77febdf74aaccf7bc779aafb1f7ed77ea6ccde59cee`  
		Last Modified: Thu, 23 Jul 2026 01:12:49 GMT  
		Size: 16.8 MB (16799215 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4658c75fd939ccee41cb089bfabca4b36cade56bf15085898cebd8536c439904`  
		Last Modified: Thu, 23 Jul 2026 01:12:48 GMT  
		Size: 35.1 KB (35107 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:393f964965900cd646f285283faab66476699baa0cefde38d5785217eaeb0a4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.3 MB (267252061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9845754612b74ee0baeef95d5cfaa8dd105f10e4d29bb8db1551fe901f0cfdc2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 00:07:52 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 00:07:52 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 01:10:02 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 23 Jul 2026 01:10:04 GMT
ENV GOSU_VERSION=1.19
# Thu, 23 Jul 2026 01:10:04 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 23 Jul 2026 01:10:40 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 23 Jul 2026 01:10:41 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 23 Jul 2026 01:10:41 GMT
ENV MYSQL_MAJOR=9.7
# Thu, 23 Jul 2026 01:10:41 GMT
ENV MYSQL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 01:10:41 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 23 Jul 2026 01:11:20 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 23 Jul 2026 01:11:20 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 23 Jul 2026 01:11:20 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 01:12:10 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 23 Jul 2026 01:12:10 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Jul 2026 01:12:10 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 23 Jul 2026 01:12:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Jul 2026 01:12:10 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 23 Jul 2026 01:12:10 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b31b097f727a2c22897a0b842f2ed2d61f747e4a77d76f77ad13cae7aa1de1e5`  
		Last Modified: Thu, 23 Jul 2026 00:08:04 GMT  
		Size: 46.5 MB (46478083 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e05519de84b9db2fde8a205ba5dc0dbda75c6c167686590ab0b3b1e966868f33`  
		Last Modified: Thu, 23 Jul 2026 01:12:46 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:362cfc7be4bd1728db6f4655f0a38a535abbf280f88d80e95b6c7aa1ce45418c`  
		Last Modified: Thu, 23 Jul 2026 01:12:47 GMT  
		Size: 737.5 KB (737521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e14620977ce7ed4c68c85117d3e74bcacf63b951c8395dc70de58448984c5c58`  
		Last Modified: Thu, 23 Jul 2026 01:12:47 GMT  
		Size: 5.8 MB (5816835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dc6a5471d70903fe9996f685d24607eab7d4907a11f68e5e5808833a476705d`  
		Last Modified: Thu, 23 Jul 2026 01:12:47 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ceacdcec509d41269aa5ac5ae92afad539bc9144abddf0f44cf86b6e96b202c5`  
		Last Modified: Thu, 23 Jul 2026 01:12:48 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d46baa4a9b9221f08c7c97b2b4c2f2385878357833ae3a8b0c55fb9be5094048`  
		Last Modified: Thu, 23 Jul 2026 01:12:50 GMT  
		Size: 57.0 MB (56998155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3fbfe263117419280986240090a94410288cc996de3548ce01dae2cd520ec27`  
		Last Modified: Thu, 23 Jul 2026 01:12:48 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7edbb8539efeec77b3e4fd360a9f66fe6b10be619e6544fd42340641fd5bc9c1`  
		Last Modified: Thu, 23 Jul 2026 01:12:53 GMT  
		Size: 157.2 MB (157212100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40eaffb234d93d7464ccffb5e22df793a85bf5f69e3b03723ecbf3f648594220`  
		Last Modified: Thu, 23 Jul 2026 01:12:49 GMT  
		Size: 5.2 KB (5221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:67f4b9fdb9d79038d7fb19ce794451cb959dcaea1c47924f9231e07b3b685732
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84e9b79e428b1972eda55c6a7d1fd4267c48bb00f3984872f9fffb848940f0c2`

```dockerfile
```

-	Layers:
	-	`sha256:2e59dbec0673cb8596109213d25face06bb5431494226dc15a5d989a199dac55`  
		Last Modified: Thu, 23 Jul 2026 01:12:47 GMT  
		Size: 16.8 MB (16797687 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f0ce3986da185696c707ee9051edceb3c98c714b18eea41115b22b919540e67d`  
		Last Modified: Thu, 23 Jul 2026 01:12:46 GMT  
		Size: 35.4 KB (35449 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:oraclelinux9`

```console
$ docker pull mysql@sha256:c109c421c81637a50209b57ec6af7dc0685e8b1ce7efdca0c0902a3d95df6574
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:6018c10552553830b8999eea03fce524ddd7a6babda7c20b5abf10fe78f1f5f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.8 MB (270843480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79a428f9725d635e88516bd04132de92319761ca0916141c1c5c5ae764fd8ed4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 00:08:20 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 00:08:20 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 01:10:17 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 23 Jul 2026 01:10:19 GMT
ENV GOSU_VERSION=1.19
# Thu, 23 Jul 2026 01:10:19 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 23 Jul 2026 01:10:51 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 23 Jul 2026 01:10:52 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 23 Jul 2026 01:10:52 GMT
ENV MYSQL_MAJOR=9.7
# Thu, 23 Jul 2026 01:10:52 GMT
ENV MYSQL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 01:10:52 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 23 Jul 2026 01:11:28 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 23 Jul 2026 01:11:28 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 23 Jul 2026 01:11:28 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 01:12:13 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 23 Jul 2026 01:12:13 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Jul 2026 01:12:13 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 23 Jul 2026 01:12:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Jul 2026 01:12:13 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 23 Jul 2026 01:12:13 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:9d94d9416e53c5cff08e1d846b220ef65ad225d72c44da5e6cabc702154a6c52`  
		Last Modified: Thu, 23 Jul 2026 00:08:32 GMT  
		Size: 47.9 MB (47927355 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7ea8a15135bd03e9e32e5305d1f9a44f04280fa90d41ca9482b7097abf4ecd0`  
		Last Modified: Thu, 23 Jul 2026 01:12:48 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e191671750a9cf6aff66451a5adbbbe8506913a2461f954df6f5ed34e80c5eb`  
		Last Modified: Thu, 23 Jul 2026 01:12:48 GMT  
		Size: 783.6 KB (783557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ffb4b65fe3874b0cb45548abfe1fc45072259dbb409d3e5c7a3ac7d6ccdfc10`  
		Last Modified: Thu, 23 Jul 2026 01:12:48 GMT  
		Size: 6.2 MB (6194632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa5f6746fd02514999e82f0c797012603a605fcdfd908dcf244a672b39e95612`  
		Last Modified: Thu, 23 Jul 2026 01:12:48 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16fa714a61b76d1765c540a3e7441ab8414d09304be2f7c0131cbae7c6724a07`  
		Last Modified: Thu, 23 Jul 2026 01:12:49 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bfd71befad5300943eaed2ae0a9f104c2e4936d276caea9876c63c36ac01215`  
		Last Modified: Thu, 23 Jul 2026 01:12:51 GMT  
		Size: 57.0 MB (56992141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:397f759b7395ff7cc6da35ce3d0440f0ef751c95ec57bb92160f167e1d52d1ce`  
		Last Modified: Thu, 23 Jul 2026 01:12:49 GMT  
		Size: 319.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0d340612ca29cb600d3a3ca4a3c14e9031c941787c007717cb3016aa7c282c1`  
		Last Modified: Thu, 23 Jul 2026 01:12:54 GMT  
		Size: 158.9 MB (158936427 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a559a349f4403b67d58feca4289fb9169b26d038b9779c11df16cf35b4ed8d28`  
		Last Modified: Thu, 23 Jul 2026 01:12:51 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:9d2b621fb3a667f539b2740df37b0f560d6c7723cbea6f31bce3dbc36f130c7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16834322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e94746989e8cce97254e0e497baf6ba1bf9425f594a4f6f6d493a59ae5f5122a`

```dockerfile
```

-	Layers:
	-	`sha256:9911754ad54256c2f367a77febdf74aaccf7bc779aafb1f7ed77ea6ccde59cee`  
		Last Modified: Thu, 23 Jul 2026 01:12:49 GMT  
		Size: 16.8 MB (16799215 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4658c75fd939ccee41cb089bfabca4b36cade56bf15085898cebd8536c439904`  
		Last Modified: Thu, 23 Jul 2026 01:12:48 GMT  
		Size: 35.1 KB (35107 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:393f964965900cd646f285283faab66476699baa0cefde38d5785217eaeb0a4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.3 MB (267252061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9845754612b74ee0baeef95d5cfaa8dd105f10e4d29bb8db1551fe901f0cfdc2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 23 Jul 2026 00:07:52 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 00:07:52 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 01:10:02 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Thu, 23 Jul 2026 01:10:04 GMT
ENV GOSU_VERSION=1.19
# Thu, 23 Jul 2026 01:10:04 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 23 Jul 2026 01:10:40 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Thu, 23 Jul 2026 01:10:41 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 23 Jul 2026 01:10:41 GMT
ENV MYSQL_MAJOR=9.7
# Thu, 23 Jul 2026 01:10:41 GMT
ENV MYSQL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 01:10:41 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Thu, 23 Jul 2026 01:11:20 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Thu, 23 Jul 2026 01:11:20 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Thu, 23 Jul 2026 01:11:20 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Thu, 23 Jul 2026 01:12:10 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Thu, 23 Jul 2026 01:12:10 GMT
VOLUME [/var/lib/mysql]
# Thu, 23 Jul 2026 01:12:10 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 23 Jul 2026 01:12:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Jul 2026 01:12:10 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 23 Jul 2026 01:12:10 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b31b097f727a2c22897a0b842f2ed2d61f747e4a77d76f77ad13cae7aa1de1e5`  
		Last Modified: Thu, 23 Jul 2026 00:08:04 GMT  
		Size: 46.5 MB (46478083 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e05519de84b9db2fde8a205ba5dc0dbda75c6c167686590ab0b3b1e966868f33`  
		Last Modified: Thu, 23 Jul 2026 01:12:46 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:362cfc7be4bd1728db6f4655f0a38a535abbf280f88d80e95b6c7aa1ce45418c`  
		Last Modified: Thu, 23 Jul 2026 01:12:47 GMT  
		Size: 737.5 KB (737521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e14620977ce7ed4c68c85117d3e74bcacf63b951c8395dc70de58448984c5c58`  
		Last Modified: Thu, 23 Jul 2026 01:12:47 GMT  
		Size: 5.8 MB (5816835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dc6a5471d70903fe9996f685d24607eab7d4907a11f68e5e5808833a476705d`  
		Last Modified: Thu, 23 Jul 2026 01:12:47 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ceacdcec509d41269aa5ac5ae92afad539bc9144abddf0f44cf86b6e96b202c5`  
		Last Modified: Thu, 23 Jul 2026 01:12:48 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d46baa4a9b9221f08c7c97b2b4c2f2385878357833ae3a8b0c55fb9be5094048`  
		Last Modified: Thu, 23 Jul 2026 01:12:50 GMT  
		Size: 57.0 MB (56998155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3fbfe263117419280986240090a94410288cc996de3548ce01dae2cd520ec27`  
		Last Modified: Thu, 23 Jul 2026 01:12:48 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7edbb8539efeec77b3e4fd360a9f66fe6b10be619e6544fd42340641fd5bc9c1`  
		Last Modified: Thu, 23 Jul 2026 01:12:53 GMT  
		Size: 157.2 MB (157212100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40eaffb234d93d7464ccffb5e22df793a85bf5f69e3b03723ecbf3f648594220`  
		Last Modified: Thu, 23 Jul 2026 01:12:49 GMT  
		Size: 5.2 KB (5221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:67f4b9fdb9d79038d7fb19ce794451cb959dcaea1c47924f9231e07b3b685732
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84e9b79e428b1972eda55c6a7d1fd4267c48bb00f3984872f9fffb848940f0c2`

```dockerfile
```

-	Layers:
	-	`sha256:2e59dbec0673cb8596109213d25face06bb5431494226dc15a5d989a199dac55`  
		Last Modified: Thu, 23 Jul 2026 01:12:47 GMT  
		Size: 16.8 MB (16797687 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f0ce3986da185696c707ee9051edceb3c98c714b18eea41115b22b919540e67d`  
		Last Modified: Thu, 23 Jul 2026 01:12:46 GMT  
		Size: 35.4 KB (35449 bytes)  
		MIME: application/vnd.in-toto+json
