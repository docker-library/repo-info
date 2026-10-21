<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `mysql`

-	[`mysql:26`](#mysql26)
-	[`mysql:26-oracle`](#mysql26-oracle)
-	[`mysql:26-oraclelinux9`](#mysql26-oraclelinux9)
-	[`mysql:26.10`](#mysql2610)
-	[`mysql:26.10-oracle`](#mysql2610-oracle)
-	[`mysql:26.10-oraclelinux9`](#mysql2610-oraclelinux9)
-	[`mysql:26.10.0`](#mysql26100)
-	[`mysql:26.10.0-oracle`](#mysql26100-oracle)
-	[`mysql:26.10.0-oraclelinux9`](#mysql26100-oraclelinux9)
-	[`mysql:8`](#mysql8)
-	[`mysql:8-oracle`](#mysql8-oracle)
-	[`mysql:8-oraclelinux9`](#mysql8-oraclelinux9)
-	[`mysql:8.4`](#mysql84)
-	[`mysql:8.4-oracle`](#mysql84-oracle)
-	[`mysql:8.4-oraclelinux9`](#mysql84-oraclelinux9)
-	[`mysql:8.4.13`](#mysql8413)
-	[`mysql:8.4.13-oracle`](#mysql8413-oracle)
-	[`mysql:8.4.13-oraclelinux9`](#mysql8413-oraclelinux9)
-	[`mysql:9`](#mysql9)
-	[`mysql:9-oracle`](#mysql9-oracle)
-	[`mysql:9-oraclelinux9`](#mysql9-oraclelinux9)
-	[`mysql:9.7`](#mysql97)
-	[`mysql:9.7-oracle`](#mysql97-oracle)
-	[`mysql:9.7-oraclelinux9`](#mysql97-oraclelinux9)
-	[`mysql:9.7.4`](#mysql974)
-	[`mysql:9.7.4-oracle`](#mysql974-oracle)
-	[`mysql:9.7.4-oraclelinux9`](#mysql974-oraclelinux9)
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
$ docker pull mysql@sha256:625f74ddf93652d9d0f8d4ea7d741b9189554a5e96d27bb770abd0902d89c6e3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:26` - linux; amd64

```console
$ docker pull mysql@sha256:67e8e370d4aa4b6103bb3bbcc2a1c96ed367dd34dfc2c88aa7f1a37d3c8cf44a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.6 MB (271627594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:420f00813dd560a6ffd6a8c8adeb6c7266c7b80d3c3f17c2d64e9b9dfaf1358c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:48 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:48 GMT
CMD ["/bin/bash"]
# Mon, 19 Oct 2026 22:09:53 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 19 Oct 2026 22:09:55 GMT
ENV GOSU_VERSION=1.19
# Mon, 19 Oct 2026 22:09:55 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 19 Oct 2026 22:10:28 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 19 Oct 2026 22:10:28 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 19 Oct 2026 22:10:28 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 19 Oct 2026 22:10:28 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Mon, 19 Oct 2026 22:10:28 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 19 Oct 2026 22:11:05 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 19 Oct 2026 22:11:05 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 19 Oct 2026 22:11:05 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Mon, 19 Oct 2026 22:11:51 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 19 Oct 2026 22:11:51 GMT
VOLUME [/var/lib/mysql]
# Mon, 19 Oct 2026 22:11:51 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 19 Oct 2026 22:11:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Oct 2026 22:11:51 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 19 Oct 2026 22:11:51 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:97347cf073b19c00bee840fa47d2cd0537dbf5eb581be49840c203f71c0a5c75`  
		Last Modified: Mon, 19 Oct 2026 21:33:00 GMT  
		Size: 47.2 MB (47249168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f196ecbd4d03904b7f898d0a71b22b8cbfdcac9238452b9f73490108d7e37f7f`  
		Last Modified: Mon, 19 Oct 2026 22:12:25 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6a54fa3bc08abd9bf407ca52683d2095dd0a30ebe9acb780d4c1358d77ba596`  
		Last Modified: Mon, 19 Oct 2026 22:12:25 GMT  
		Size: 783.6 KB (783561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac0ac319b025e2bfce6fa355ba821125b4a5ab6d7898bc47393b76a2043ff9f8`  
		Last Modified: Mon, 19 Oct 2026 22:12:26 GMT  
		Size: 6.2 MB (6191938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f199b44b4a456f30f4bf83718bc6f30e4e26af07d14ba61bff1893b23faa5ac9`  
		Last Modified: Mon, 19 Oct 2026 22:12:25 GMT  
		Size: 2.6 KB (2604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:060b79e73b8f1830d4d25cf2d57b410c8a8640a94b0b329973d833b752f7c035`  
		Last Modified: Mon, 19 Oct 2026 22:12:26 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d9f3d1a8deffb2e7f2b648500cb5aece1fdd988446c3a360c03a97a9d06cdd6`  
		Last Modified: Mon, 19 Oct 2026 22:12:30 GMT  
		Size: 57.4 MB (57437897 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1fabc4a3637fdd55b86b8f7a2548c3b193a3569e1137928dcde6d4a42a46be9`  
		Last Modified: Mon, 19 Oct 2026 22:12:27 GMT  
		Size: 326.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7db1bb89cbc4d23152d624c7f7c57a98c75a7565560b529548bdbc6cb486513c`  
		Last Modified: Mon, 19 Oct 2026 22:12:33 GMT  
		Size: 160.0 MB (159955649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb74f524e49e3968e580145179382494e7a0e31255dac62d26c194b8ec0ad1ef`  
		Last Modified: Mon, 19 Oct 2026 22:12:28 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26` - unknown; unknown

```console
$ docker pull mysql@sha256:94ff462a7b39f7a903f4f8d59445d01f3bd7c3642f682e492da5971fb206c250
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17452728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ed6463046ddfe770add4ea46c22c3909fdee240dc241c3a135e452e2296d176`

```dockerfile
```

-	Layers:
	-	`sha256:51049565ee073ca022cb8f6795c32cd6051ad27236c27b99b329963d1adf6421`  
		Last Modified: Mon, 19 Oct 2026 22:12:26 GMT  
		Size: 17.4 MB (17417431 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e9ba03e279680810d38a4e92aaf18ca0f0091d6187e1c4a6cc798733ccfb76c7`  
		Last Modified: Mon, 19 Oct 2026 22:12:25 GMT  
		Size: 35.3 KB (35297 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:26` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:3142cfba35bd09e111cc37917bd69b0c647a8ed5b05882bf39150a50d3ace5d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.0 MB (267991662 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87491a2172fe6cf721c0c6257e084ffddf67de9dc4dd5d1bdfd5a58a7c84d9d1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:44 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:44 GMT
CMD ["/bin/bash"]
# Mon, 19 Oct 2026 22:09:48 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 19 Oct 2026 22:09:50 GMT
ENV GOSU_VERSION=1.19
# Mon, 19 Oct 2026 22:09:50 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 19 Oct 2026 22:10:28 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 19 Oct 2026 22:10:29 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 19 Oct 2026 22:10:29 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 19 Oct 2026 22:10:29 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Mon, 19 Oct 2026 22:10:30 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 19 Oct 2026 22:11:12 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 19 Oct 2026 22:11:12 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 19 Oct 2026 22:11:12 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Mon, 19 Oct 2026 22:12:04 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 19 Oct 2026 22:12:04 GMT
VOLUME [/var/lib/mysql]
# Mon, 19 Oct 2026 22:12:04 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 19 Oct 2026 22:12:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Oct 2026 22:12:04 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 19 Oct 2026 22:12:04 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ec733952651fc70d299ac3951cabb9fafd032cc96e2ff71bdfd675ac20ca9c93`  
		Last Modified: Mon, 19 Oct 2026 21:32:56 GMT  
		Size: 45.8 MB (45800185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06985fa0a8e5b713efdeea0dd47174f98536b59365e86b2b98a6496c2f524e28`  
		Last Modified: Mon, 19 Oct 2026 22:12:40 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:922be94786f7a52ce0063916103f24ed3e79029d417e7f8eebb4ab583bb8b10f`  
		Last Modified: Mon, 19 Oct 2026 22:12:40 GMT  
		Size: 737.5 KB (737531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2612d51357fc7ea0bbe1cc5a28a82f735fefc5873cc8bf8207e8f2a18c03f38`  
		Last Modified: Mon, 19 Oct 2026 22:12:40 GMT  
		Size: 5.8 MB (5810113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd0d65a74e9a9cab1d5bcc2cffdc9234856199bfbbb67fbeeafac63ecf0e6013`  
		Last Modified: Mon, 19 Oct 2026 22:12:40 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:156f454d96dcd3a24cf535063603efe151d943fe56c3d099c6d74aaed039f7c2`  
		Last Modified: Mon, 19 Oct 2026 22:12:41 GMT  
		Size: 341.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:538d2383f2ee9345637666c09b4b4f5fa11edb755f5b80738e6dd94b368aacd0`  
		Last Modified: Mon, 19 Oct 2026 22:12:43 GMT  
		Size: 57.4 MB (57410064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ed94f8c2c34213ad370d8819b4d44de3c51c248247d3a252e02424f68532c9e`  
		Last Modified: Mon, 19 Oct 2026 22:12:41 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ff85ff20790fb64ffea819d45ae93376076f1a34fcb9fd165c502a4174755b3`  
		Last Modified: Mon, 19 Oct 2026 22:12:45 GMT  
		Size: 158.2 MB (158224389 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:896de949514283536a3d329e9f2741dab327d5126714d0c9c95e796f003cac2e`  
		Last Modified: Mon, 19 Oct 2026 22:12:42 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26` - unknown; unknown

```console
$ docker pull mysql@sha256:e596e7724b70f73d353b8ef2fb5d92f14f91a6164fcd7992f7d2ef30d7b17e8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17451543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e9a8b60dee04dc5f1dec5aadf1d54374bb31bf407f5f8e1011b487c659c48be`

```dockerfile
```

-	Layers:
	-	`sha256:67d4b6cf13f509bee2e27cda4b68342cb80857f578bdc7b3a297a8fc9aba3f0e`  
		Last Modified: Mon, 19 Oct 2026 22:12:41 GMT  
		Size: 17.4 MB (17415904 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d95cfeeb1a93b6549f21afb762846a7aabc5fd73117791164b1c3e550f27a37d`  
		Last Modified: Mon, 19 Oct 2026 22:12:40 GMT  
		Size: 35.6 KB (35639 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:26-oracle`

```console
$ docker pull mysql@sha256:625f74ddf93652d9d0f8d4ea7d741b9189554a5e96d27bb770abd0902d89c6e3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:26-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:67e8e370d4aa4b6103bb3bbcc2a1c96ed367dd34dfc2c88aa7f1a37d3c8cf44a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.6 MB (271627594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:420f00813dd560a6ffd6a8c8adeb6c7266c7b80d3c3f17c2d64e9b9dfaf1358c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:48 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:48 GMT
CMD ["/bin/bash"]
# Mon, 19 Oct 2026 22:09:53 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 19 Oct 2026 22:09:55 GMT
ENV GOSU_VERSION=1.19
# Mon, 19 Oct 2026 22:09:55 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 19 Oct 2026 22:10:28 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 19 Oct 2026 22:10:28 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 19 Oct 2026 22:10:28 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 19 Oct 2026 22:10:28 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Mon, 19 Oct 2026 22:10:28 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 19 Oct 2026 22:11:05 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 19 Oct 2026 22:11:05 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 19 Oct 2026 22:11:05 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Mon, 19 Oct 2026 22:11:51 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 19 Oct 2026 22:11:51 GMT
VOLUME [/var/lib/mysql]
# Mon, 19 Oct 2026 22:11:51 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 19 Oct 2026 22:11:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Oct 2026 22:11:51 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 19 Oct 2026 22:11:51 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:97347cf073b19c00bee840fa47d2cd0537dbf5eb581be49840c203f71c0a5c75`  
		Last Modified: Mon, 19 Oct 2026 21:33:00 GMT  
		Size: 47.2 MB (47249168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f196ecbd4d03904b7f898d0a71b22b8cbfdcac9238452b9f73490108d7e37f7f`  
		Last Modified: Mon, 19 Oct 2026 22:12:25 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6a54fa3bc08abd9bf407ca52683d2095dd0a30ebe9acb780d4c1358d77ba596`  
		Last Modified: Mon, 19 Oct 2026 22:12:25 GMT  
		Size: 783.6 KB (783561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac0ac319b025e2bfce6fa355ba821125b4a5ab6d7898bc47393b76a2043ff9f8`  
		Last Modified: Mon, 19 Oct 2026 22:12:26 GMT  
		Size: 6.2 MB (6191938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f199b44b4a456f30f4bf83718bc6f30e4e26af07d14ba61bff1893b23faa5ac9`  
		Last Modified: Mon, 19 Oct 2026 22:12:25 GMT  
		Size: 2.6 KB (2604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:060b79e73b8f1830d4d25cf2d57b410c8a8640a94b0b329973d833b752f7c035`  
		Last Modified: Mon, 19 Oct 2026 22:12:26 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d9f3d1a8deffb2e7f2b648500cb5aece1fdd988446c3a360c03a97a9d06cdd6`  
		Last Modified: Mon, 19 Oct 2026 22:12:30 GMT  
		Size: 57.4 MB (57437897 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1fabc4a3637fdd55b86b8f7a2548c3b193a3569e1137928dcde6d4a42a46be9`  
		Last Modified: Mon, 19 Oct 2026 22:12:27 GMT  
		Size: 326.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7db1bb89cbc4d23152d624c7f7c57a98c75a7565560b529548bdbc6cb486513c`  
		Last Modified: Mon, 19 Oct 2026 22:12:33 GMT  
		Size: 160.0 MB (159955649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb74f524e49e3968e580145179382494e7a0e31255dac62d26c194b8ec0ad1ef`  
		Last Modified: Mon, 19 Oct 2026 22:12:28 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:94ff462a7b39f7a903f4f8d59445d01f3bd7c3642f682e492da5971fb206c250
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17452728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ed6463046ddfe770add4ea46c22c3909fdee240dc241c3a135e452e2296d176`

```dockerfile
```

-	Layers:
	-	`sha256:51049565ee073ca022cb8f6795c32cd6051ad27236c27b99b329963d1adf6421`  
		Last Modified: Mon, 19 Oct 2026 22:12:26 GMT  
		Size: 17.4 MB (17417431 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e9ba03e279680810d38a4e92aaf18ca0f0091d6187e1c4a6cc798733ccfb76c7`  
		Last Modified: Mon, 19 Oct 2026 22:12:25 GMT  
		Size: 35.3 KB (35297 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:26-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:3142cfba35bd09e111cc37917bd69b0c647a8ed5b05882bf39150a50d3ace5d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.0 MB (267991662 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87491a2172fe6cf721c0c6257e084ffddf67de9dc4dd5d1bdfd5a58a7c84d9d1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:44 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:44 GMT
CMD ["/bin/bash"]
# Mon, 19 Oct 2026 22:09:48 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 19 Oct 2026 22:09:50 GMT
ENV GOSU_VERSION=1.19
# Mon, 19 Oct 2026 22:09:50 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 19 Oct 2026 22:10:28 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 19 Oct 2026 22:10:29 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 19 Oct 2026 22:10:29 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 19 Oct 2026 22:10:29 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Mon, 19 Oct 2026 22:10:30 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 19 Oct 2026 22:11:12 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 19 Oct 2026 22:11:12 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 19 Oct 2026 22:11:12 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Mon, 19 Oct 2026 22:12:04 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 19 Oct 2026 22:12:04 GMT
VOLUME [/var/lib/mysql]
# Mon, 19 Oct 2026 22:12:04 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 19 Oct 2026 22:12:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Oct 2026 22:12:04 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 19 Oct 2026 22:12:04 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ec733952651fc70d299ac3951cabb9fafd032cc96e2ff71bdfd675ac20ca9c93`  
		Last Modified: Mon, 19 Oct 2026 21:32:56 GMT  
		Size: 45.8 MB (45800185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06985fa0a8e5b713efdeea0dd47174f98536b59365e86b2b98a6496c2f524e28`  
		Last Modified: Mon, 19 Oct 2026 22:12:40 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:922be94786f7a52ce0063916103f24ed3e79029d417e7f8eebb4ab583bb8b10f`  
		Last Modified: Mon, 19 Oct 2026 22:12:40 GMT  
		Size: 737.5 KB (737531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2612d51357fc7ea0bbe1cc5a28a82f735fefc5873cc8bf8207e8f2a18c03f38`  
		Last Modified: Mon, 19 Oct 2026 22:12:40 GMT  
		Size: 5.8 MB (5810113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd0d65a74e9a9cab1d5bcc2cffdc9234856199bfbbb67fbeeafac63ecf0e6013`  
		Last Modified: Mon, 19 Oct 2026 22:12:40 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:156f454d96dcd3a24cf535063603efe151d943fe56c3d099c6d74aaed039f7c2`  
		Last Modified: Mon, 19 Oct 2026 22:12:41 GMT  
		Size: 341.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:538d2383f2ee9345637666c09b4b4f5fa11edb755f5b80738e6dd94b368aacd0`  
		Last Modified: Mon, 19 Oct 2026 22:12:43 GMT  
		Size: 57.4 MB (57410064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ed94f8c2c34213ad370d8819b4d44de3c51c248247d3a252e02424f68532c9e`  
		Last Modified: Mon, 19 Oct 2026 22:12:41 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ff85ff20790fb64ffea819d45ae93376076f1a34fcb9fd165c502a4174755b3`  
		Last Modified: Mon, 19 Oct 2026 22:12:45 GMT  
		Size: 158.2 MB (158224389 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:896de949514283536a3d329e9f2741dab327d5126714d0c9c95e796f003cac2e`  
		Last Modified: Mon, 19 Oct 2026 22:12:42 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:e596e7724b70f73d353b8ef2fb5d92f14f91a6164fcd7992f7d2ef30d7b17e8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17451543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e9a8b60dee04dc5f1dec5aadf1d54374bb31bf407f5f8e1011b487c659c48be`

```dockerfile
```

-	Layers:
	-	`sha256:67d4b6cf13f509bee2e27cda4b68342cb80857f578bdc7b3a297a8fc9aba3f0e`  
		Last Modified: Mon, 19 Oct 2026 22:12:41 GMT  
		Size: 17.4 MB (17415904 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d95cfeeb1a93b6549f21afb762846a7aabc5fd73117791164b1c3e550f27a37d`  
		Last Modified: Mon, 19 Oct 2026 22:12:40 GMT  
		Size: 35.6 KB (35639 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:26-oraclelinux9`

```console
$ docker pull mysql@sha256:625f74ddf93652d9d0f8d4ea7d741b9189554a5e96d27bb770abd0902d89c6e3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:26-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:67e8e370d4aa4b6103bb3bbcc2a1c96ed367dd34dfc2c88aa7f1a37d3c8cf44a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.6 MB (271627594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:420f00813dd560a6ffd6a8c8adeb6c7266c7b80d3c3f17c2d64e9b9dfaf1358c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:48 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:48 GMT
CMD ["/bin/bash"]
# Mon, 19 Oct 2026 22:09:53 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 19 Oct 2026 22:09:55 GMT
ENV GOSU_VERSION=1.19
# Mon, 19 Oct 2026 22:09:55 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 19 Oct 2026 22:10:28 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 19 Oct 2026 22:10:28 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 19 Oct 2026 22:10:28 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 19 Oct 2026 22:10:28 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Mon, 19 Oct 2026 22:10:28 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 19 Oct 2026 22:11:05 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 19 Oct 2026 22:11:05 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 19 Oct 2026 22:11:05 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Mon, 19 Oct 2026 22:11:51 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 19 Oct 2026 22:11:51 GMT
VOLUME [/var/lib/mysql]
# Mon, 19 Oct 2026 22:11:51 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 19 Oct 2026 22:11:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Oct 2026 22:11:51 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 19 Oct 2026 22:11:51 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:97347cf073b19c00bee840fa47d2cd0537dbf5eb581be49840c203f71c0a5c75`  
		Last Modified: Mon, 19 Oct 2026 21:33:00 GMT  
		Size: 47.2 MB (47249168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f196ecbd4d03904b7f898d0a71b22b8cbfdcac9238452b9f73490108d7e37f7f`  
		Last Modified: Mon, 19 Oct 2026 22:12:25 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6a54fa3bc08abd9bf407ca52683d2095dd0a30ebe9acb780d4c1358d77ba596`  
		Last Modified: Mon, 19 Oct 2026 22:12:25 GMT  
		Size: 783.6 KB (783561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac0ac319b025e2bfce6fa355ba821125b4a5ab6d7898bc47393b76a2043ff9f8`  
		Last Modified: Mon, 19 Oct 2026 22:12:26 GMT  
		Size: 6.2 MB (6191938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f199b44b4a456f30f4bf83718bc6f30e4e26af07d14ba61bff1893b23faa5ac9`  
		Last Modified: Mon, 19 Oct 2026 22:12:25 GMT  
		Size: 2.6 KB (2604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:060b79e73b8f1830d4d25cf2d57b410c8a8640a94b0b329973d833b752f7c035`  
		Last Modified: Mon, 19 Oct 2026 22:12:26 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d9f3d1a8deffb2e7f2b648500cb5aece1fdd988446c3a360c03a97a9d06cdd6`  
		Last Modified: Mon, 19 Oct 2026 22:12:30 GMT  
		Size: 57.4 MB (57437897 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1fabc4a3637fdd55b86b8f7a2548c3b193a3569e1137928dcde6d4a42a46be9`  
		Last Modified: Mon, 19 Oct 2026 22:12:27 GMT  
		Size: 326.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7db1bb89cbc4d23152d624c7f7c57a98c75a7565560b529548bdbc6cb486513c`  
		Last Modified: Mon, 19 Oct 2026 22:12:33 GMT  
		Size: 160.0 MB (159955649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb74f524e49e3968e580145179382494e7a0e31255dac62d26c194b8ec0ad1ef`  
		Last Modified: Mon, 19 Oct 2026 22:12:28 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:94ff462a7b39f7a903f4f8d59445d01f3bd7c3642f682e492da5971fb206c250
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17452728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ed6463046ddfe770add4ea46c22c3909fdee240dc241c3a135e452e2296d176`

```dockerfile
```

-	Layers:
	-	`sha256:51049565ee073ca022cb8f6795c32cd6051ad27236c27b99b329963d1adf6421`  
		Last Modified: Mon, 19 Oct 2026 22:12:26 GMT  
		Size: 17.4 MB (17417431 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e9ba03e279680810d38a4e92aaf18ca0f0091d6187e1c4a6cc798733ccfb76c7`  
		Last Modified: Mon, 19 Oct 2026 22:12:25 GMT  
		Size: 35.3 KB (35297 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:26-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:3142cfba35bd09e111cc37917bd69b0c647a8ed5b05882bf39150a50d3ace5d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.0 MB (267991662 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87491a2172fe6cf721c0c6257e084ffddf67de9dc4dd5d1bdfd5a58a7c84d9d1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:44 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:44 GMT
CMD ["/bin/bash"]
# Mon, 19 Oct 2026 22:09:48 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 19 Oct 2026 22:09:50 GMT
ENV GOSU_VERSION=1.19
# Mon, 19 Oct 2026 22:09:50 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 19 Oct 2026 22:10:28 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 19 Oct 2026 22:10:29 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 19 Oct 2026 22:10:29 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 19 Oct 2026 22:10:29 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Mon, 19 Oct 2026 22:10:30 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 19 Oct 2026 22:11:12 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 19 Oct 2026 22:11:12 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 19 Oct 2026 22:11:12 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Mon, 19 Oct 2026 22:12:04 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 19 Oct 2026 22:12:04 GMT
VOLUME [/var/lib/mysql]
# Mon, 19 Oct 2026 22:12:04 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 19 Oct 2026 22:12:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Oct 2026 22:12:04 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 19 Oct 2026 22:12:04 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ec733952651fc70d299ac3951cabb9fafd032cc96e2ff71bdfd675ac20ca9c93`  
		Last Modified: Mon, 19 Oct 2026 21:32:56 GMT  
		Size: 45.8 MB (45800185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06985fa0a8e5b713efdeea0dd47174f98536b59365e86b2b98a6496c2f524e28`  
		Last Modified: Mon, 19 Oct 2026 22:12:40 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:922be94786f7a52ce0063916103f24ed3e79029d417e7f8eebb4ab583bb8b10f`  
		Last Modified: Mon, 19 Oct 2026 22:12:40 GMT  
		Size: 737.5 KB (737531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2612d51357fc7ea0bbe1cc5a28a82f735fefc5873cc8bf8207e8f2a18c03f38`  
		Last Modified: Mon, 19 Oct 2026 22:12:40 GMT  
		Size: 5.8 MB (5810113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd0d65a74e9a9cab1d5bcc2cffdc9234856199bfbbb67fbeeafac63ecf0e6013`  
		Last Modified: Mon, 19 Oct 2026 22:12:40 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:156f454d96dcd3a24cf535063603efe151d943fe56c3d099c6d74aaed039f7c2`  
		Last Modified: Mon, 19 Oct 2026 22:12:41 GMT  
		Size: 341.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:538d2383f2ee9345637666c09b4b4f5fa11edb755f5b80738e6dd94b368aacd0`  
		Last Modified: Mon, 19 Oct 2026 22:12:43 GMT  
		Size: 57.4 MB (57410064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ed94f8c2c34213ad370d8819b4d44de3c51c248247d3a252e02424f68532c9e`  
		Last Modified: Mon, 19 Oct 2026 22:12:41 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ff85ff20790fb64ffea819d45ae93376076f1a34fcb9fd165c502a4174755b3`  
		Last Modified: Mon, 19 Oct 2026 22:12:45 GMT  
		Size: 158.2 MB (158224389 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:896de949514283536a3d329e9f2741dab327d5126714d0c9c95e796f003cac2e`  
		Last Modified: Mon, 19 Oct 2026 22:12:42 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:e596e7724b70f73d353b8ef2fb5d92f14f91a6164fcd7992f7d2ef30d7b17e8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17451543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e9a8b60dee04dc5f1dec5aadf1d54374bb31bf407f5f8e1011b487c659c48be`

```dockerfile
```

-	Layers:
	-	`sha256:67d4b6cf13f509bee2e27cda4b68342cb80857f578bdc7b3a297a8fc9aba3f0e`  
		Last Modified: Mon, 19 Oct 2026 22:12:41 GMT  
		Size: 17.4 MB (17415904 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d95cfeeb1a93b6549f21afb762846a7aabc5fd73117791164b1c3e550f27a37d`  
		Last Modified: Mon, 19 Oct 2026 22:12:40 GMT  
		Size: 35.6 KB (35639 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:26.10`

**does not exist** (yet?)

## `mysql:26.10-oracle`

**does not exist** (yet?)

## `mysql:26.10-oraclelinux9`

**does not exist** (yet?)

## `mysql:26.10.0`

**does not exist** (yet?)

## `mysql:26.10.0-oracle`

**does not exist** (yet?)

## `mysql:26.10.0-oraclelinux9`

**does not exist** (yet?)

## `mysql:8`

```console
$ docker pull mysql@sha256:0f51e63e537a1f176423fa03ef559aabe6fa4372a53160a44bc7e75da7d15364
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8` - linux; amd64

```console
$ docker pull mysql@sha256:6f3a50835c54d61ffdcf78d71381ba268c27804cd96755231d2fd6f180f822f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.3 MB (238271081 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4aae07a2c195abb9b3e92449443b39b51212f555a35ff8f93da0e82683f45de8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:48 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:48 GMT
CMD ["/bin/bash"]
# Mon, 19 Oct 2026 22:10:54 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 19 Oct 2026 22:10:56 GMT
ENV GOSU_VERSION=1.19
# Mon, 19 Oct 2026 22:10:56 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 19 Oct 2026 22:11:31 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 19 Oct 2026 22:11:32 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 19 Oct 2026 22:11:32 GMT
ENV MYSQL_MAJOR=8.4
# Mon, 19 Oct 2026 22:11:32 GMT
ENV MYSQL_VERSION=8.4.11-1.el9
# Mon, 19 Oct 2026 22:11:32 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 19 Oct 2026 22:12:10 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 19 Oct 2026 22:12:10 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 19 Oct 2026 22:12:10 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Mon, 19 Oct 2026 22:12:55 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 19 Oct 2026 22:12:55 GMT
VOLUME [/var/lib/mysql]
# Mon, 19 Oct 2026 22:12:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 19 Oct 2026 22:12:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Oct 2026 22:12:55 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 19 Oct 2026 22:12:55 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:97347cf073b19c00bee840fa47d2cd0537dbf5eb581be49840c203f71c0a5c75`  
		Last Modified: Mon, 19 Oct 2026 21:33:00 GMT  
		Size: 47.2 MB (47249168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14bd63617e6b7e2a470e74cf8a833a76479be824d86790766915ab13235e2823`  
		Last Modified: Mon, 19 Oct 2026 22:13:27 GMT  
		Size: 882.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b52f53ddec845aef1b0b67ed54f7e21132ef20aea6d7893e08b735f91483455`  
		Last Modified: Mon, 19 Oct 2026 22:13:27 GMT  
		Size: 783.6 KB (783561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6ce9cfb6944d8ca40ae5d5ecd743bece8d884c09ae108f1d7d27938417b8d55`  
		Last Modified: Mon, 19 Oct 2026 22:13:27 GMT  
		Size: 6.2 MB (6192037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0655aa7539dd0a77a76c3f2dae12ce67da8f2c31731e077b2ef84c83f0b3fd4`  
		Last Modified: Mon, 19 Oct 2026 22:13:27 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b110fcfe52b10bf7a3877a40342fc13e6790b3ce0020d1f5021cf75e378c2633`  
		Last Modified: Mon, 19 Oct 2026 22:13:28 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:030f700852e55716adcdfd01e6c7ad6e7195a709184f92e4b004298e09a8f0a9`  
		Last Modified: Mon, 19 Oct 2026 22:13:30 GMT  
		Size: 51.6 MB (51618580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f46a6a1ad729d3c697f6ec4714fdabd652b5ddd40c755e64df0cadd761fc3650`  
		Last Modified: Mon, 19 Oct 2026 22:13:29 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13f4feb2e08a65e15f6e51c0af3cf52ea2c89ad1e81cde1e9002d044cc17cec3`  
		Last Modified: Mon, 19 Oct 2026 22:13:32 GMT  
		Size: 132.4 MB (132418363 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20c0ff10f322bb1373a36d2e32f9c2a9b257742c75c6301c374f0de56cf9ddcf`  
		Last Modified: Mon, 19 Oct 2026 22:13:30 GMT  
		Size: 5.2 KB (5229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8` - unknown; unknown

```console
$ docker pull mysql@sha256:8ec1027552b88b4d8f861929c4c74c3d47de3ec1e0467c08a4a576eb86aa31c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15745255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d899fe3319b9598d359d03782a48b703169b8723b7ceb078b7fd84359cc92199`

```dockerfile
```

-	Layers:
	-	`sha256:776e9ec3533d5fb7fd9c73b298495581b31eb51cbaea38c694e8e5fc3d82c921`  
		Last Modified: Mon, 19 Oct 2026 22:13:28 GMT  
		Size: 15.7 MB (15711942 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:564cc934d6dedf7d915f568e69271a2fb3ed34d9c96974c42470bb512789f7ee`  
		Last Modified: Mon, 19 Oct 2026 22:13:27 GMT  
		Size: 33.3 KB (33313 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:4452d4257b94692c09df0f6011a3275744746001150f3cdbdc9278bacfa385bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.0 MB (232973493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b568b36c40dcaf1c2967403fa404be8d5f5ce7df967dd305153facee1a34cb87`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:44 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:44 GMT
CMD ["/bin/bash"]
# Mon, 19 Oct 2026 22:10:46 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 19 Oct 2026 22:10:48 GMT
ENV GOSU_VERSION=1.19
# Mon, 19 Oct 2026 22:10:48 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 19 Oct 2026 22:11:26 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 19 Oct 2026 22:11:27 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 19 Oct 2026 22:11:27 GMT
ENV MYSQL_MAJOR=8.4
# Mon, 19 Oct 2026 22:11:27 GMT
ENV MYSQL_VERSION=8.4.11-1.el9
# Mon, 19 Oct 2026 22:11:27 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 19 Oct 2026 22:12:07 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 19 Oct 2026 22:12:07 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 19 Oct 2026 22:12:07 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Mon, 19 Oct 2026 22:12:55 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 19 Oct 2026 22:12:55 GMT
VOLUME [/var/lib/mysql]
# Mon, 19 Oct 2026 22:12:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 19 Oct 2026 22:12:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Oct 2026 22:12:55 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 19 Oct 2026 22:12:55 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ec733952651fc70d299ac3951cabb9fafd032cc96e2ff71bdfd675ac20ca9c93`  
		Last Modified: Mon, 19 Oct 2026 21:32:56 GMT  
		Size: 45.8 MB (45800185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3dfc41670a2a7f0cc760d8a4a590e9e5c32d60af711c9c77c092cda1a485deb`  
		Last Modified: Mon, 19 Oct 2026 22:13:27 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10a1cd2e422b04d17db9f99cc1ccb5ec51b95aaf21c86a3091e1035e27e4bd64`  
		Last Modified: Mon, 19 Oct 2026 22:13:27 GMT  
		Size: 737.5 KB (737530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fa82ceabe812bb67fa77d975bcfe7780b9c3c5cd9397fbda5363d05452dd607`  
		Last Modified: Mon, 19 Oct 2026 22:13:27 GMT  
		Size: 5.8 MB (5810187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48ef652cafa7abedd0249c3fa44e3f4bb744f568afc19a55677d2868f043eb49`  
		Last Modified: Mon, 19 Oct 2026 22:13:27 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44ab836a3ad83270a41a98a75b70ddfad3368a624f7acd8bc0026fa209db3e5a`  
		Last Modified: Mon, 19 Oct 2026 22:13:28 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59127694f60866ee82c7621f18a4a27e296a3eda17e79b738298650f7e5ff539`  
		Last Modified: Mon, 19 Oct 2026 22:13:30 GMT  
		Size: 49.8 MB (49840967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:780c7d0ff78d44486983b10b0fbb88e392d9f502391386751469c7883eb18012`  
		Last Modified: Mon, 19 Oct 2026 22:13:28 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c151122fa550bbf3f42db31126f21c341bf28a8e0fcd79066623d6ea319d2f1`  
		Last Modified: Mon, 19 Oct 2026 22:13:31 GMT  
		Size: 130.8 MB (130775250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9011adb8cb8b6e58488209fe416f9aa0dcbec5129cea7f6cc8a2a6c50653dcae`  
		Last Modified: Mon, 19 Oct 2026 22:13:29 GMT  
		Size: 5.2 KB (5228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8` - unknown; unknown

```console
$ docker pull mysql@sha256:60e6667c26513621f2c4d9e31a4580344a8b8102c419b1afe07ce3f158cf6ad4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15743924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28ae9ede68750d9123e1a14d552bf1fa56039c4952420b392b392a17b8618c3c`

```dockerfile
```

-	Layers:
	-	`sha256:10c9b0fcc5618c5603f943472826d472b70c6f0a9ae3f2fb8417c044796d5362`  
		Last Modified: Mon, 19 Oct 2026 22:13:27 GMT  
		Size: 15.7 MB (15710342 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bc313439dd6b19b2ee56953ec8b4025f43ef39cc6b0f4aea10f3d487ae0a3fd9`  
		Last Modified: Mon, 19 Oct 2026 22:13:26 GMT  
		Size: 33.6 KB (33582 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:8-oracle`

```console
$ docker pull mysql@sha256:0f51e63e537a1f176423fa03ef559aabe6fa4372a53160a44bc7e75da7d15364
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:6f3a50835c54d61ffdcf78d71381ba268c27804cd96755231d2fd6f180f822f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.3 MB (238271081 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4aae07a2c195abb9b3e92449443b39b51212f555a35ff8f93da0e82683f45de8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:48 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:48 GMT
CMD ["/bin/bash"]
# Mon, 19 Oct 2026 22:10:54 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 19 Oct 2026 22:10:56 GMT
ENV GOSU_VERSION=1.19
# Mon, 19 Oct 2026 22:10:56 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 19 Oct 2026 22:11:31 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 19 Oct 2026 22:11:32 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 19 Oct 2026 22:11:32 GMT
ENV MYSQL_MAJOR=8.4
# Mon, 19 Oct 2026 22:11:32 GMT
ENV MYSQL_VERSION=8.4.11-1.el9
# Mon, 19 Oct 2026 22:11:32 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 19 Oct 2026 22:12:10 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 19 Oct 2026 22:12:10 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 19 Oct 2026 22:12:10 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Mon, 19 Oct 2026 22:12:55 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 19 Oct 2026 22:12:55 GMT
VOLUME [/var/lib/mysql]
# Mon, 19 Oct 2026 22:12:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 19 Oct 2026 22:12:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Oct 2026 22:12:55 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 19 Oct 2026 22:12:55 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:97347cf073b19c00bee840fa47d2cd0537dbf5eb581be49840c203f71c0a5c75`  
		Last Modified: Mon, 19 Oct 2026 21:33:00 GMT  
		Size: 47.2 MB (47249168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14bd63617e6b7e2a470e74cf8a833a76479be824d86790766915ab13235e2823`  
		Last Modified: Mon, 19 Oct 2026 22:13:27 GMT  
		Size: 882.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b52f53ddec845aef1b0b67ed54f7e21132ef20aea6d7893e08b735f91483455`  
		Last Modified: Mon, 19 Oct 2026 22:13:27 GMT  
		Size: 783.6 KB (783561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6ce9cfb6944d8ca40ae5d5ecd743bece8d884c09ae108f1d7d27938417b8d55`  
		Last Modified: Mon, 19 Oct 2026 22:13:27 GMT  
		Size: 6.2 MB (6192037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0655aa7539dd0a77a76c3f2dae12ce67da8f2c31731e077b2ef84c83f0b3fd4`  
		Last Modified: Mon, 19 Oct 2026 22:13:27 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b110fcfe52b10bf7a3877a40342fc13e6790b3ce0020d1f5021cf75e378c2633`  
		Last Modified: Mon, 19 Oct 2026 22:13:28 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:030f700852e55716adcdfd01e6c7ad6e7195a709184f92e4b004298e09a8f0a9`  
		Last Modified: Mon, 19 Oct 2026 22:13:30 GMT  
		Size: 51.6 MB (51618580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f46a6a1ad729d3c697f6ec4714fdabd652b5ddd40c755e64df0cadd761fc3650`  
		Last Modified: Mon, 19 Oct 2026 22:13:29 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13f4feb2e08a65e15f6e51c0af3cf52ea2c89ad1e81cde1e9002d044cc17cec3`  
		Last Modified: Mon, 19 Oct 2026 22:13:32 GMT  
		Size: 132.4 MB (132418363 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20c0ff10f322bb1373a36d2e32f9c2a9b257742c75c6301c374f0de56cf9ddcf`  
		Last Modified: Mon, 19 Oct 2026 22:13:30 GMT  
		Size: 5.2 KB (5229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:8ec1027552b88b4d8f861929c4c74c3d47de3ec1e0467c08a4a576eb86aa31c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15745255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d899fe3319b9598d359d03782a48b703169b8723b7ceb078b7fd84359cc92199`

```dockerfile
```

-	Layers:
	-	`sha256:776e9ec3533d5fb7fd9c73b298495581b31eb51cbaea38c694e8e5fc3d82c921`  
		Last Modified: Mon, 19 Oct 2026 22:13:28 GMT  
		Size: 15.7 MB (15711942 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:564cc934d6dedf7d915f568e69271a2fb3ed34d9c96974c42470bb512789f7ee`  
		Last Modified: Mon, 19 Oct 2026 22:13:27 GMT  
		Size: 33.3 KB (33313 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:4452d4257b94692c09df0f6011a3275744746001150f3cdbdc9278bacfa385bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.0 MB (232973493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b568b36c40dcaf1c2967403fa404be8d5f5ce7df967dd305153facee1a34cb87`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:44 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:44 GMT
CMD ["/bin/bash"]
# Mon, 19 Oct 2026 22:10:46 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 19 Oct 2026 22:10:48 GMT
ENV GOSU_VERSION=1.19
# Mon, 19 Oct 2026 22:10:48 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 19 Oct 2026 22:11:26 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 19 Oct 2026 22:11:27 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 19 Oct 2026 22:11:27 GMT
ENV MYSQL_MAJOR=8.4
# Mon, 19 Oct 2026 22:11:27 GMT
ENV MYSQL_VERSION=8.4.11-1.el9
# Mon, 19 Oct 2026 22:11:27 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 19 Oct 2026 22:12:07 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 19 Oct 2026 22:12:07 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 19 Oct 2026 22:12:07 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Mon, 19 Oct 2026 22:12:55 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 19 Oct 2026 22:12:55 GMT
VOLUME [/var/lib/mysql]
# Mon, 19 Oct 2026 22:12:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 19 Oct 2026 22:12:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Oct 2026 22:12:55 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 19 Oct 2026 22:12:55 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ec733952651fc70d299ac3951cabb9fafd032cc96e2ff71bdfd675ac20ca9c93`  
		Last Modified: Mon, 19 Oct 2026 21:32:56 GMT  
		Size: 45.8 MB (45800185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3dfc41670a2a7f0cc760d8a4a590e9e5c32d60af711c9c77c092cda1a485deb`  
		Last Modified: Mon, 19 Oct 2026 22:13:27 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10a1cd2e422b04d17db9f99cc1ccb5ec51b95aaf21c86a3091e1035e27e4bd64`  
		Last Modified: Mon, 19 Oct 2026 22:13:27 GMT  
		Size: 737.5 KB (737530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fa82ceabe812bb67fa77d975bcfe7780b9c3c5cd9397fbda5363d05452dd607`  
		Last Modified: Mon, 19 Oct 2026 22:13:27 GMT  
		Size: 5.8 MB (5810187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48ef652cafa7abedd0249c3fa44e3f4bb744f568afc19a55677d2868f043eb49`  
		Last Modified: Mon, 19 Oct 2026 22:13:27 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44ab836a3ad83270a41a98a75b70ddfad3368a624f7acd8bc0026fa209db3e5a`  
		Last Modified: Mon, 19 Oct 2026 22:13:28 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59127694f60866ee82c7621f18a4a27e296a3eda17e79b738298650f7e5ff539`  
		Last Modified: Mon, 19 Oct 2026 22:13:30 GMT  
		Size: 49.8 MB (49840967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:780c7d0ff78d44486983b10b0fbb88e392d9f502391386751469c7883eb18012`  
		Last Modified: Mon, 19 Oct 2026 22:13:28 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c151122fa550bbf3f42db31126f21c341bf28a8e0fcd79066623d6ea319d2f1`  
		Last Modified: Mon, 19 Oct 2026 22:13:31 GMT  
		Size: 130.8 MB (130775250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9011adb8cb8b6e58488209fe416f9aa0dcbec5129cea7f6cc8a2a6c50653dcae`  
		Last Modified: Mon, 19 Oct 2026 22:13:29 GMT  
		Size: 5.2 KB (5228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:60e6667c26513621f2c4d9e31a4580344a8b8102c419b1afe07ce3f158cf6ad4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15743924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28ae9ede68750d9123e1a14d552bf1fa56039c4952420b392b392a17b8618c3c`

```dockerfile
```

-	Layers:
	-	`sha256:10c9b0fcc5618c5603f943472826d472b70c6f0a9ae3f2fb8417c044796d5362`  
		Last Modified: Mon, 19 Oct 2026 22:13:27 GMT  
		Size: 15.7 MB (15710342 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bc313439dd6b19b2ee56953ec8b4025f43ef39cc6b0f4aea10f3d487ae0a3fd9`  
		Last Modified: Mon, 19 Oct 2026 22:13:26 GMT  
		Size: 33.6 KB (33582 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:8-oraclelinux9`

```console
$ docker pull mysql@sha256:0f51e63e537a1f176423fa03ef559aabe6fa4372a53160a44bc7e75da7d15364
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:6f3a50835c54d61ffdcf78d71381ba268c27804cd96755231d2fd6f180f822f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.3 MB (238271081 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4aae07a2c195abb9b3e92449443b39b51212f555a35ff8f93da0e82683f45de8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:48 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:48 GMT
CMD ["/bin/bash"]
# Mon, 19 Oct 2026 22:10:54 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 19 Oct 2026 22:10:56 GMT
ENV GOSU_VERSION=1.19
# Mon, 19 Oct 2026 22:10:56 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 19 Oct 2026 22:11:31 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 19 Oct 2026 22:11:32 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 19 Oct 2026 22:11:32 GMT
ENV MYSQL_MAJOR=8.4
# Mon, 19 Oct 2026 22:11:32 GMT
ENV MYSQL_VERSION=8.4.11-1.el9
# Mon, 19 Oct 2026 22:11:32 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 19 Oct 2026 22:12:10 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 19 Oct 2026 22:12:10 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 19 Oct 2026 22:12:10 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Mon, 19 Oct 2026 22:12:55 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 19 Oct 2026 22:12:55 GMT
VOLUME [/var/lib/mysql]
# Mon, 19 Oct 2026 22:12:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 19 Oct 2026 22:12:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Oct 2026 22:12:55 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 19 Oct 2026 22:12:55 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:97347cf073b19c00bee840fa47d2cd0537dbf5eb581be49840c203f71c0a5c75`  
		Last Modified: Mon, 19 Oct 2026 21:33:00 GMT  
		Size: 47.2 MB (47249168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14bd63617e6b7e2a470e74cf8a833a76479be824d86790766915ab13235e2823`  
		Last Modified: Mon, 19 Oct 2026 22:13:27 GMT  
		Size: 882.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b52f53ddec845aef1b0b67ed54f7e21132ef20aea6d7893e08b735f91483455`  
		Last Modified: Mon, 19 Oct 2026 22:13:27 GMT  
		Size: 783.6 KB (783561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6ce9cfb6944d8ca40ae5d5ecd743bece8d884c09ae108f1d7d27938417b8d55`  
		Last Modified: Mon, 19 Oct 2026 22:13:27 GMT  
		Size: 6.2 MB (6192037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0655aa7539dd0a77a76c3f2dae12ce67da8f2c31731e077b2ef84c83f0b3fd4`  
		Last Modified: Mon, 19 Oct 2026 22:13:27 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b110fcfe52b10bf7a3877a40342fc13e6790b3ce0020d1f5021cf75e378c2633`  
		Last Modified: Mon, 19 Oct 2026 22:13:28 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:030f700852e55716adcdfd01e6c7ad6e7195a709184f92e4b004298e09a8f0a9`  
		Last Modified: Mon, 19 Oct 2026 22:13:30 GMT  
		Size: 51.6 MB (51618580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f46a6a1ad729d3c697f6ec4714fdabd652b5ddd40c755e64df0cadd761fc3650`  
		Last Modified: Mon, 19 Oct 2026 22:13:29 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13f4feb2e08a65e15f6e51c0af3cf52ea2c89ad1e81cde1e9002d044cc17cec3`  
		Last Modified: Mon, 19 Oct 2026 22:13:32 GMT  
		Size: 132.4 MB (132418363 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20c0ff10f322bb1373a36d2e32f9c2a9b257742c75c6301c374f0de56cf9ddcf`  
		Last Modified: Mon, 19 Oct 2026 22:13:30 GMT  
		Size: 5.2 KB (5229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:8ec1027552b88b4d8f861929c4c74c3d47de3ec1e0467c08a4a576eb86aa31c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15745255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d899fe3319b9598d359d03782a48b703169b8723b7ceb078b7fd84359cc92199`

```dockerfile
```

-	Layers:
	-	`sha256:776e9ec3533d5fb7fd9c73b298495581b31eb51cbaea38c694e8e5fc3d82c921`  
		Last Modified: Mon, 19 Oct 2026 22:13:28 GMT  
		Size: 15.7 MB (15711942 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:564cc934d6dedf7d915f568e69271a2fb3ed34d9c96974c42470bb512789f7ee`  
		Last Modified: Mon, 19 Oct 2026 22:13:27 GMT  
		Size: 33.3 KB (33313 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:4452d4257b94692c09df0f6011a3275744746001150f3cdbdc9278bacfa385bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.0 MB (232973493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b568b36c40dcaf1c2967403fa404be8d5f5ce7df967dd305153facee1a34cb87`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:44 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:44 GMT
CMD ["/bin/bash"]
# Mon, 19 Oct 2026 22:10:46 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 19 Oct 2026 22:10:48 GMT
ENV GOSU_VERSION=1.19
# Mon, 19 Oct 2026 22:10:48 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 19 Oct 2026 22:11:26 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 19 Oct 2026 22:11:27 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 19 Oct 2026 22:11:27 GMT
ENV MYSQL_MAJOR=8.4
# Mon, 19 Oct 2026 22:11:27 GMT
ENV MYSQL_VERSION=8.4.11-1.el9
# Mon, 19 Oct 2026 22:11:27 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 19 Oct 2026 22:12:07 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 19 Oct 2026 22:12:07 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 19 Oct 2026 22:12:07 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Mon, 19 Oct 2026 22:12:55 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 19 Oct 2026 22:12:55 GMT
VOLUME [/var/lib/mysql]
# Mon, 19 Oct 2026 22:12:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 19 Oct 2026 22:12:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Oct 2026 22:12:55 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 19 Oct 2026 22:12:55 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ec733952651fc70d299ac3951cabb9fafd032cc96e2ff71bdfd675ac20ca9c93`  
		Last Modified: Mon, 19 Oct 2026 21:32:56 GMT  
		Size: 45.8 MB (45800185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3dfc41670a2a7f0cc760d8a4a590e9e5c32d60af711c9c77c092cda1a485deb`  
		Last Modified: Mon, 19 Oct 2026 22:13:27 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10a1cd2e422b04d17db9f99cc1ccb5ec51b95aaf21c86a3091e1035e27e4bd64`  
		Last Modified: Mon, 19 Oct 2026 22:13:27 GMT  
		Size: 737.5 KB (737530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fa82ceabe812bb67fa77d975bcfe7780b9c3c5cd9397fbda5363d05452dd607`  
		Last Modified: Mon, 19 Oct 2026 22:13:27 GMT  
		Size: 5.8 MB (5810187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48ef652cafa7abedd0249c3fa44e3f4bb744f568afc19a55677d2868f043eb49`  
		Last Modified: Mon, 19 Oct 2026 22:13:27 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44ab836a3ad83270a41a98a75b70ddfad3368a624f7acd8bc0026fa209db3e5a`  
		Last Modified: Mon, 19 Oct 2026 22:13:28 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59127694f60866ee82c7621f18a4a27e296a3eda17e79b738298650f7e5ff539`  
		Last Modified: Mon, 19 Oct 2026 22:13:30 GMT  
		Size: 49.8 MB (49840967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:780c7d0ff78d44486983b10b0fbb88e392d9f502391386751469c7883eb18012`  
		Last Modified: Mon, 19 Oct 2026 22:13:28 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c151122fa550bbf3f42db31126f21c341bf28a8e0fcd79066623d6ea319d2f1`  
		Last Modified: Mon, 19 Oct 2026 22:13:31 GMT  
		Size: 130.8 MB (130775250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9011adb8cb8b6e58488209fe416f9aa0dcbec5129cea7f6cc8a2a6c50653dcae`  
		Last Modified: Mon, 19 Oct 2026 22:13:29 GMT  
		Size: 5.2 KB (5228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:60e6667c26513621f2c4d9e31a4580344a8b8102c419b1afe07ce3f158cf6ad4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15743924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28ae9ede68750d9123e1a14d552bf1fa56039c4952420b392b392a17b8618c3c`

```dockerfile
```

-	Layers:
	-	`sha256:10c9b0fcc5618c5603f943472826d472b70c6f0a9ae3f2fb8417c044796d5362`  
		Last Modified: Mon, 19 Oct 2026 22:13:27 GMT  
		Size: 15.7 MB (15710342 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bc313439dd6b19b2ee56953ec8b4025f43ef39cc6b0f4aea10f3d487ae0a3fd9`  
		Last Modified: Mon, 19 Oct 2026 22:13:26 GMT  
		Size: 33.6 KB (33582 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:8.4`

```console
$ docker pull mysql@sha256:0f51e63e537a1f176423fa03ef559aabe6fa4372a53160a44bc7e75da7d15364
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8.4` - linux; amd64

```console
$ docker pull mysql@sha256:6f3a50835c54d61ffdcf78d71381ba268c27804cd96755231d2fd6f180f822f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.3 MB (238271081 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4aae07a2c195abb9b3e92449443b39b51212f555a35ff8f93da0e82683f45de8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:48 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:48 GMT
CMD ["/bin/bash"]
# Mon, 19 Oct 2026 22:10:54 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 19 Oct 2026 22:10:56 GMT
ENV GOSU_VERSION=1.19
# Mon, 19 Oct 2026 22:10:56 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 19 Oct 2026 22:11:31 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 19 Oct 2026 22:11:32 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 19 Oct 2026 22:11:32 GMT
ENV MYSQL_MAJOR=8.4
# Mon, 19 Oct 2026 22:11:32 GMT
ENV MYSQL_VERSION=8.4.11-1.el9
# Mon, 19 Oct 2026 22:11:32 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 19 Oct 2026 22:12:10 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 19 Oct 2026 22:12:10 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 19 Oct 2026 22:12:10 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Mon, 19 Oct 2026 22:12:55 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 19 Oct 2026 22:12:55 GMT
VOLUME [/var/lib/mysql]
# Mon, 19 Oct 2026 22:12:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 19 Oct 2026 22:12:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Oct 2026 22:12:55 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 19 Oct 2026 22:12:55 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:97347cf073b19c00bee840fa47d2cd0537dbf5eb581be49840c203f71c0a5c75`  
		Last Modified: Mon, 19 Oct 2026 21:33:00 GMT  
		Size: 47.2 MB (47249168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14bd63617e6b7e2a470e74cf8a833a76479be824d86790766915ab13235e2823`  
		Last Modified: Mon, 19 Oct 2026 22:13:27 GMT  
		Size: 882.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b52f53ddec845aef1b0b67ed54f7e21132ef20aea6d7893e08b735f91483455`  
		Last Modified: Mon, 19 Oct 2026 22:13:27 GMT  
		Size: 783.6 KB (783561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6ce9cfb6944d8ca40ae5d5ecd743bece8d884c09ae108f1d7d27938417b8d55`  
		Last Modified: Mon, 19 Oct 2026 22:13:27 GMT  
		Size: 6.2 MB (6192037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0655aa7539dd0a77a76c3f2dae12ce67da8f2c31731e077b2ef84c83f0b3fd4`  
		Last Modified: Mon, 19 Oct 2026 22:13:27 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b110fcfe52b10bf7a3877a40342fc13e6790b3ce0020d1f5021cf75e378c2633`  
		Last Modified: Mon, 19 Oct 2026 22:13:28 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:030f700852e55716adcdfd01e6c7ad6e7195a709184f92e4b004298e09a8f0a9`  
		Last Modified: Mon, 19 Oct 2026 22:13:30 GMT  
		Size: 51.6 MB (51618580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f46a6a1ad729d3c697f6ec4714fdabd652b5ddd40c755e64df0cadd761fc3650`  
		Last Modified: Mon, 19 Oct 2026 22:13:29 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13f4feb2e08a65e15f6e51c0af3cf52ea2c89ad1e81cde1e9002d044cc17cec3`  
		Last Modified: Mon, 19 Oct 2026 22:13:32 GMT  
		Size: 132.4 MB (132418363 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20c0ff10f322bb1373a36d2e32f9c2a9b257742c75c6301c374f0de56cf9ddcf`  
		Last Modified: Mon, 19 Oct 2026 22:13:30 GMT  
		Size: 5.2 KB (5229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4` - unknown; unknown

```console
$ docker pull mysql@sha256:8ec1027552b88b4d8f861929c4c74c3d47de3ec1e0467c08a4a576eb86aa31c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15745255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d899fe3319b9598d359d03782a48b703169b8723b7ceb078b7fd84359cc92199`

```dockerfile
```

-	Layers:
	-	`sha256:776e9ec3533d5fb7fd9c73b298495581b31eb51cbaea38c694e8e5fc3d82c921`  
		Last Modified: Mon, 19 Oct 2026 22:13:28 GMT  
		Size: 15.7 MB (15711942 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:564cc934d6dedf7d915f568e69271a2fb3ed34d9c96974c42470bb512789f7ee`  
		Last Modified: Mon, 19 Oct 2026 22:13:27 GMT  
		Size: 33.3 KB (33313 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8.4` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:4452d4257b94692c09df0f6011a3275744746001150f3cdbdc9278bacfa385bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.0 MB (232973493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b568b36c40dcaf1c2967403fa404be8d5f5ce7df967dd305153facee1a34cb87`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:44 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:44 GMT
CMD ["/bin/bash"]
# Mon, 19 Oct 2026 22:10:46 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 19 Oct 2026 22:10:48 GMT
ENV GOSU_VERSION=1.19
# Mon, 19 Oct 2026 22:10:48 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 19 Oct 2026 22:11:26 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 19 Oct 2026 22:11:27 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 19 Oct 2026 22:11:27 GMT
ENV MYSQL_MAJOR=8.4
# Mon, 19 Oct 2026 22:11:27 GMT
ENV MYSQL_VERSION=8.4.11-1.el9
# Mon, 19 Oct 2026 22:11:27 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 19 Oct 2026 22:12:07 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 19 Oct 2026 22:12:07 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 19 Oct 2026 22:12:07 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Mon, 19 Oct 2026 22:12:55 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 19 Oct 2026 22:12:55 GMT
VOLUME [/var/lib/mysql]
# Mon, 19 Oct 2026 22:12:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 19 Oct 2026 22:12:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Oct 2026 22:12:55 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 19 Oct 2026 22:12:55 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ec733952651fc70d299ac3951cabb9fafd032cc96e2ff71bdfd675ac20ca9c93`  
		Last Modified: Mon, 19 Oct 2026 21:32:56 GMT  
		Size: 45.8 MB (45800185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3dfc41670a2a7f0cc760d8a4a590e9e5c32d60af711c9c77c092cda1a485deb`  
		Last Modified: Mon, 19 Oct 2026 22:13:27 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10a1cd2e422b04d17db9f99cc1ccb5ec51b95aaf21c86a3091e1035e27e4bd64`  
		Last Modified: Mon, 19 Oct 2026 22:13:27 GMT  
		Size: 737.5 KB (737530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fa82ceabe812bb67fa77d975bcfe7780b9c3c5cd9397fbda5363d05452dd607`  
		Last Modified: Mon, 19 Oct 2026 22:13:27 GMT  
		Size: 5.8 MB (5810187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48ef652cafa7abedd0249c3fa44e3f4bb744f568afc19a55677d2868f043eb49`  
		Last Modified: Mon, 19 Oct 2026 22:13:27 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44ab836a3ad83270a41a98a75b70ddfad3368a624f7acd8bc0026fa209db3e5a`  
		Last Modified: Mon, 19 Oct 2026 22:13:28 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59127694f60866ee82c7621f18a4a27e296a3eda17e79b738298650f7e5ff539`  
		Last Modified: Mon, 19 Oct 2026 22:13:30 GMT  
		Size: 49.8 MB (49840967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:780c7d0ff78d44486983b10b0fbb88e392d9f502391386751469c7883eb18012`  
		Last Modified: Mon, 19 Oct 2026 22:13:28 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c151122fa550bbf3f42db31126f21c341bf28a8e0fcd79066623d6ea319d2f1`  
		Last Modified: Mon, 19 Oct 2026 22:13:31 GMT  
		Size: 130.8 MB (130775250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9011adb8cb8b6e58488209fe416f9aa0dcbec5129cea7f6cc8a2a6c50653dcae`  
		Last Modified: Mon, 19 Oct 2026 22:13:29 GMT  
		Size: 5.2 KB (5228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4` - unknown; unknown

```console
$ docker pull mysql@sha256:60e6667c26513621f2c4d9e31a4580344a8b8102c419b1afe07ce3f158cf6ad4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15743924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28ae9ede68750d9123e1a14d552bf1fa56039c4952420b392b392a17b8618c3c`

```dockerfile
```

-	Layers:
	-	`sha256:10c9b0fcc5618c5603f943472826d472b70c6f0a9ae3f2fb8417c044796d5362`  
		Last Modified: Mon, 19 Oct 2026 22:13:27 GMT  
		Size: 15.7 MB (15710342 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bc313439dd6b19b2ee56953ec8b4025f43ef39cc6b0f4aea10f3d487ae0a3fd9`  
		Last Modified: Mon, 19 Oct 2026 22:13:26 GMT  
		Size: 33.6 KB (33582 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:8.4-oracle`

```console
$ docker pull mysql@sha256:0f51e63e537a1f176423fa03ef559aabe6fa4372a53160a44bc7e75da7d15364
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8.4-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:6f3a50835c54d61ffdcf78d71381ba268c27804cd96755231d2fd6f180f822f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.3 MB (238271081 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4aae07a2c195abb9b3e92449443b39b51212f555a35ff8f93da0e82683f45de8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:48 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:48 GMT
CMD ["/bin/bash"]
# Mon, 19 Oct 2026 22:10:54 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 19 Oct 2026 22:10:56 GMT
ENV GOSU_VERSION=1.19
# Mon, 19 Oct 2026 22:10:56 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 19 Oct 2026 22:11:31 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 19 Oct 2026 22:11:32 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 19 Oct 2026 22:11:32 GMT
ENV MYSQL_MAJOR=8.4
# Mon, 19 Oct 2026 22:11:32 GMT
ENV MYSQL_VERSION=8.4.11-1.el9
# Mon, 19 Oct 2026 22:11:32 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 19 Oct 2026 22:12:10 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 19 Oct 2026 22:12:10 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 19 Oct 2026 22:12:10 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Mon, 19 Oct 2026 22:12:55 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 19 Oct 2026 22:12:55 GMT
VOLUME [/var/lib/mysql]
# Mon, 19 Oct 2026 22:12:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 19 Oct 2026 22:12:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Oct 2026 22:12:55 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 19 Oct 2026 22:12:55 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:97347cf073b19c00bee840fa47d2cd0537dbf5eb581be49840c203f71c0a5c75`  
		Last Modified: Mon, 19 Oct 2026 21:33:00 GMT  
		Size: 47.2 MB (47249168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14bd63617e6b7e2a470e74cf8a833a76479be824d86790766915ab13235e2823`  
		Last Modified: Mon, 19 Oct 2026 22:13:27 GMT  
		Size: 882.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b52f53ddec845aef1b0b67ed54f7e21132ef20aea6d7893e08b735f91483455`  
		Last Modified: Mon, 19 Oct 2026 22:13:27 GMT  
		Size: 783.6 KB (783561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6ce9cfb6944d8ca40ae5d5ecd743bece8d884c09ae108f1d7d27938417b8d55`  
		Last Modified: Mon, 19 Oct 2026 22:13:27 GMT  
		Size: 6.2 MB (6192037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0655aa7539dd0a77a76c3f2dae12ce67da8f2c31731e077b2ef84c83f0b3fd4`  
		Last Modified: Mon, 19 Oct 2026 22:13:27 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b110fcfe52b10bf7a3877a40342fc13e6790b3ce0020d1f5021cf75e378c2633`  
		Last Modified: Mon, 19 Oct 2026 22:13:28 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:030f700852e55716adcdfd01e6c7ad6e7195a709184f92e4b004298e09a8f0a9`  
		Last Modified: Mon, 19 Oct 2026 22:13:30 GMT  
		Size: 51.6 MB (51618580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f46a6a1ad729d3c697f6ec4714fdabd652b5ddd40c755e64df0cadd761fc3650`  
		Last Modified: Mon, 19 Oct 2026 22:13:29 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13f4feb2e08a65e15f6e51c0af3cf52ea2c89ad1e81cde1e9002d044cc17cec3`  
		Last Modified: Mon, 19 Oct 2026 22:13:32 GMT  
		Size: 132.4 MB (132418363 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20c0ff10f322bb1373a36d2e32f9c2a9b257742c75c6301c374f0de56cf9ddcf`  
		Last Modified: Mon, 19 Oct 2026 22:13:30 GMT  
		Size: 5.2 KB (5229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:8ec1027552b88b4d8f861929c4c74c3d47de3ec1e0467c08a4a576eb86aa31c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15745255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d899fe3319b9598d359d03782a48b703169b8723b7ceb078b7fd84359cc92199`

```dockerfile
```

-	Layers:
	-	`sha256:776e9ec3533d5fb7fd9c73b298495581b31eb51cbaea38c694e8e5fc3d82c921`  
		Last Modified: Mon, 19 Oct 2026 22:13:28 GMT  
		Size: 15.7 MB (15711942 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:564cc934d6dedf7d915f568e69271a2fb3ed34d9c96974c42470bb512789f7ee`  
		Last Modified: Mon, 19 Oct 2026 22:13:27 GMT  
		Size: 33.3 KB (33313 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8.4-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:4452d4257b94692c09df0f6011a3275744746001150f3cdbdc9278bacfa385bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.0 MB (232973493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b568b36c40dcaf1c2967403fa404be8d5f5ce7df967dd305153facee1a34cb87`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:44 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:44 GMT
CMD ["/bin/bash"]
# Mon, 19 Oct 2026 22:10:46 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 19 Oct 2026 22:10:48 GMT
ENV GOSU_VERSION=1.19
# Mon, 19 Oct 2026 22:10:48 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 19 Oct 2026 22:11:26 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 19 Oct 2026 22:11:27 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 19 Oct 2026 22:11:27 GMT
ENV MYSQL_MAJOR=8.4
# Mon, 19 Oct 2026 22:11:27 GMT
ENV MYSQL_VERSION=8.4.11-1.el9
# Mon, 19 Oct 2026 22:11:27 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 19 Oct 2026 22:12:07 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 19 Oct 2026 22:12:07 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 19 Oct 2026 22:12:07 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Mon, 19 Oct 2026 22:12:55 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 19 Oct 2026 22:12:55 GMT
VOLUME [/var/lib/mysql]
# Mon, 19 Oct 2026 22:12:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 19 Oct 2026 22:12:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Oct 2026 22:12:55 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 19 Oct 2026 22:12:55 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ec733952651fc70d299ac3951cabb9fafd032cc96e2ff71bdfd675ac20ca9c93`  
		Last Modified: Mon, 19 Oct 2026 21:32:56 GMT  
		Size: 45.8 MB (45800185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3dfc41670a2a7f0cc760d8a4a590e9e5c32d60af711c9c77c092cda1a485deb`  
		Last Modified: Mon, 19 Oct 2026 22:13:27 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10a1cd2e422b04d17db9f99cc1ccb5ec51b95aaf21c86a3091e1035e27e4bd64`  
		Last Modified: Mon, 19 Oct 2026 22:13:27 GMT  
		Size: 737.5 KB (737530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fa82ceabe812bb67fa77d975bcfe7780b9c3c5cd9397fbda5363d05452dd607`  
		Last Modified: Mon, 19 Oct 2026 22:13:27 GMT  
		Size: 5.8 MB (5810187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48ef652cafa7abedd0249c3fa44e3f4bb744f568afc19a55677d2868f043eb49`  
		Last Modified: Mon, 19 Oct 2026 22:13:27 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44ab836a3ad83270a41a98a75b70ddfad3368a624f7acd8bc0026fa209db3e5a`  
		Last Modified: Mon, 19 Oct 2026 22:13:28 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59127694f60866ee82c7621f18a4a27e296a3eda17e79b738298650f7e5ff539`  
		Last Modified: Mon, 19 Oct 2026 22:13:30 GMT  
		Size: 49.8 MB (49840967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:780c7d0ff78d44486983b10b0fbb88e392d9f502391386751469c7883eb18012`  
		Last Modified: Mon, 19 Oct 2026 22:13:28 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c151122fa550bbf3f42db31126f21c341bf28a8e0fcd79066623d6ea319d2f1`  
		Last Modified: Mon, 19 Oct 2026 22:13:31 GMT  
		Size: 130.8 MB (130775250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9011adb8cb8b6e58488209fe416f9aa0dcbec5129cea7f6cc8a2a6c50653dcae`  
		Last Modified: Mon, 19 Oct 2026 22:13:29 GMT  
		Size: 5.2 KB (5228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:60e6667c26513621f2c4d9e31a4580344a8b8102c419b1afe07ce3f158cf6ad4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15743924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28ae9ede68750d9123e1a14d552bf1fa56039c4952420b392b392a17b8618c3c`

```dockerfile
```

-	Layers:
	-	`sha256:10c9b0fcc5618c5603f943472826d472b70c6f0a9ae3f2fb8417c044796d5362`  
		Last Modified: Mon, 19 Oct 2026 22:13:27 GMT  
		Size: 15.7 MB (15710342 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bc313439dd6b19b2ee56953ec8b4025f43ef39cc6b0f4aea10f3d487ae0a3fd9`  
		Last Modified: Mon, 19 Oct 2026 22:13:26 GMT  
		Size: 33.6 KB (33582 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:8.4-oraclelinux9`

```console
$ docker pull mysql@sha256:0f51e63e537a1f176423fa03ef559aabe6fa4372a53160a44bc7e75da7d15364
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8.4-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:6f3a50835c54d61ffdcf78d71381ba268c27804cd96755231d2fd6f180f822f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.3 MB (238271081 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4aae07a2c195abb9b3e92449443b39b51212f555a35ff8f93da0e82683f45de8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:48 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:48 GMT
CMD ["/bin/bash"]
# Mon, 19 Oct 2026 22:10:54 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 19 Oct 2026 22:10:56 GMT
ENV GOSU_VERSION=1.19
# Mon, 19 Oct 2026 22:10:56 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 19 Oct 2026 22:11:31 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 19 Oct 2026 22:11:32 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 19 Oct 2026 22:11:32 GMT
ENV MYSQL_MAJOR=8.4
# Mon, 19 Oct 2026 22:11:32 GMT
ENV MYSQL_VERSION=8.4.11-1.el9
# Mon, 19 Oct 2026 22:11:32 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 19 Oct 2026 22:12:10 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 19 Oct 2026 22:12:10 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 19 Oct 2026 22:12:10 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Mon, 19 Oct 2026 22:12:55 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 19 Oct 2026 22:12:55 GMT
VOLUME [/var/lib/mysql]
# Mon, 19 Oct 2026 22:12:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 19 Oct 2026 22:12:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Oct 2026 22:12:55 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 19 Oct 2026 22:12:55 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:97347cf073b19c00bee840fa47d2cd0537dbf5eb581be49840c203f71c0a5c75`  
		Last Modified: Mon, 19 Oct 2026 21:33:00 GMT  
		Size: 47.2 MB (47249168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14bd63617e6b7e2a470e74cf8a833a76479be824d86790766915ab13235e2823`  
		Last Modified: Mon, 19 Oct 2026 22:13:27 GMT  
		Size: 882.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b52f53ddec845aef1b0b67ed54f7e21132ef20aea6d7893e08b735f91483455`  
		Last Modified: Mon, 19 Oct 2026 22:13:27 GMT  
		Size: 783.6 KB (783561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6ce9cfb6944d8ca40ae5d5ecd743bece8d884c09ae108f1d7d27938417b8d55`  
		Last Modified: Mon, 19 Oct 2026 22:13:27 GMT  
		Size: 6.2 MB (6192037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0655aa7539dd0a77a76c3f2dae12ce67da8f2c31731e077b2ef84c83f0b3fd4`  
		Last Modified: Mon, 19 Oct 2026 22:13:27 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b110fcfe52b10bf7a3877a40342fc13e6790b3ce0020d1f5021cf75e378c2633`  
		Last Modified: Mon, 19 Oct 2026 22:13:28 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:030f700852e55716adcdfd01e6c7ad6e7195a709184f92e4b004298e09a8f0a9`  
		Last Modified: Mon, 19 Oct 2026 22:13:30 GMT  
		Size: 51.6 MB (51618580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f46a6a1ad729d3c697f6ec4714fdabd652b5ddd40c755e64df0cadd761fc3650`  
		Last Modified: Mon, 19 Oct 2026 22:13:29 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13f4feb2e08a65e15f6e51c0af3cf52ea2c89ad1e81cde1e9002d044cc17cec3`  
		Last Modified: Mon, 19 Oct 2026 22:13:32 GMT  
		Size: 132.4 MB (132418363 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20c0ff10f322bb1373a36d2e32f9c2a9b257742c75c6301c374f0de56cf9ddcf`  
		Last Modified: Mon, 19 Oct 2026 22:13:30 GMT  
		Size: 5.2 KB (5229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:8ec1027552b88b4d8f861929c4c74c3d47de3ec1e0467c08a4a576eb86aa31c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15745255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d899fe3319b9598d359d03782a48b703169b8723b7ceb078b7fd84359cc92199`

```dockerfile
```

-	Layers:
	-	`sha256:776e9ec3533d5fb7fd9c73b298495581b31eb51cbaea38c694e8e5fc3d82c921`  
		Last Modified: Mon, 19 Oct 2026 22:13:28 GMT  
		Size: 15.7 MB (15711942 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:564cc934d6dedf7d915f568e69271a2fb3ed34d9c96974c42470bb512789f7ee`  
		Last Modified: Mon, 19 Oct 2026 22:13:27 GMT  
		Size: 33.3 KB (33313 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8.4-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:4452d4257b94692c09df0f6011a3275744746001150f3cdbdc9278bacfa385bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.0 MB (232973493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b568b36c40dcaf1c2967403fa404be8d5f5ce7df967dd305153facee1a34cb87`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:44 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:44 GMT
CMD ["/bin/bash"]
# Mon, 19 Oct 2026 22:10:46 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 19 Oct 2026 22:10:48 GMT
ENV GOSU_VERSION=1.19
# Mon, 19 Oct 2026 22:10:48 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 19 Oct 2026 22:11:26 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 19 Oct 2026 22:11:27 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 19 Oct 2026 22:11:27 GMT
ENV MYSQL_MAJOR=8.4
# Mon, 19 Oct 2026 22:11:27 GMT
ENV MYSQL_VERSION=8.4.11-1.el9
# Mon, 19 Oct 2026 22:11:27 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 19 Oct 2026 22:12:07 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 19 Oct 2026 22:12:07 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 19 Oct 2026 22:12:07 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Mon, 19 Oct 2026 22:12:55 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 19 Oct 2026 22:12:55 GMT
VOLUME [/var/lib/mysql]
# Mon, 19 Oct 2026 22:12:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 19 Oct 2026 22:12:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Oct 2026 22:12:55 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 19 Oct 2026 22:12:55 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ec733952651fc70d299ac3951cabb9fafd032cc96e2ff71bdfd675ac20ca9c93`  
		Last Modified: Mon, 19 Oct 2026 21:32:56 GMT  
		Size: 45.8 MB (45800185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3dfc41670a2a7f0cc760d8a4a590e9e5c32d60af711c9c77c092cda1a485deb`  
		Last Modified: Mon, 19 Oct 2026 22:13:27 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10a1cd2e422b04d17db9f99cc1ccb5ec51b95aaf21c86a3091e1035e27e4bd64`  
		Last Modified: Mon, 19 Oct 2026 22:13:27 GMT  
		Size: 737.5 KB (737530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fa82ceabe812bb67fa77d975bcfe7780b9c3c5cd9397fbda5363d05452dd607`  
		Last Modified: Mon, 19 Oct 2026 22:13:27 GMT  
		Size: 5.8 MB (5810187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48ef652cafa7abedd0249c3fa44e3f4bb744f568afc19a55677d2868f043eb49`  
		Last Modified: Mon, 19 Oct 2026 22:13:27 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44ab836a3ad83270a41a98a75b70ddfad3368a624f7acd8bc0026fa209db3e5a`  
		Last Modified: Mon, 19 Oct 2026 22:13:28 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59127694f60866ee82c7621f18a4a27e296a3eda17e79b738298650f7e5ff539`  
		Last Modified: Mon, 19 Oct 2026 22:13:30 GMT  
		Size: 49.8 MB (49840967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:780c7d0ff78d44486983b10b0fbb88e392d9f502391386751469c7883eb18012`  
		Last Modified: Mon, 19 Oct 2026 22:13:28 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c151122fa550bbf3f42db31126f21c341bf28a8e0fcd79066623d6ea319d2f1`  
		Last Modified: Mon, 19 Oct 2026 22:13:31 GMT  
		Size: 130.8 MB (130775250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9011adb8cb8b6e58488209fe416f9aa0dcbec5129cea7f6cc8a2a6c50653dcae`  
		Last Modified: Mon, 19 Oct 2026 22:13:29 GMT  
		Size: 5.2 KB (5228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:60e6667c26513621f2c4d9e31a4580344a8b8102c419b1afe07ce3f158cf6ad4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15743924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28ae9ede68750d9123e1a14d552bf1fa56039c4952420b392b392a17b8618c3c`

```dockerfile
```

-	Layers:
	-	`sha256:10c9b0fcc5618c5603f943472826d472b70c6f0a9ae3f2fb8417c044796d5362`  
		Last Modified: Mon, 19 Oct 2026 22:13:27 GMT  
		Size: 15.7 MB (15710342 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bc313439dd6b19b2ee56953ec8b4025f43ef39cc6b0f4aea10f3d487ae0a3fd9`  
		Last Modified: Mon, 19 Oct 2026 22:13:26 GMT  
		Size: 33.6 KB (33582 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:8.4.13`

**does not exist** (yet?)

## `mysql:8.4.13-oracle`

**does not exist** (yet?)

## `mysql:8.4.13-oraclelinux9`

**does not exist** (yet?)

## `mysql:9`

```console
$ docker pull mysql@sha256:e2fa358a74ac81148e7e27d9433e4c0ab62133de8ea4428b4f39a51a4ba7d07f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9` - linux; amd64

```console
$ docker pull mysql@sha256:79b171dd2361300260ebceb30bb1c669fa8f70183ae250773b56b62d9031338b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.2 MB (270190292 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3121b912b942b8b46646b1f64c955958b8353e8902693ba962a2e37d2d3224bd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:48 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:48 GMT
CMD ["/bin/bash"]
# Mon, 19 Oct 2026 22:10:24 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 19 Oct 2026 22:10:26 GMT
ENV GOSU_VERSION=1.19
# Mon, 19 Oct 2026 22:10:26 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 19 Oct 2026 22:10:56 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 19 Oct 2026 22:10:57 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 19 Oct 2026 22:10:57 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 19 Oct 2026 22:10:57 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Mon, 19 Oct 2026 22:10:57 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 19 Oct 2026 22:11:31 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 19 Oct 2026 22:11:31 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 19 Oct 2026 22:11:31 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 19 Oct 2026 22:12:13 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 19 Oct 2026 22:12:13 GMT
VOLUME [/var/lib/mysql]
# Mon, 19 Oct 2026 22:12:14 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 19 Oct 2026 22:12:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Oct 2026 22:12:14 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 19 Oct 2026 22:12:14 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:97347cf073b19c00bee840fa47d2cd0537dbf5eb581be49840c203f71c0a5c75`  
		Last Modified: Mon, 19 Oct 2026 21:33:00 GMT  
		Size: 47.2 MB (47249168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cadb9833f9640be6821819be271a015e09c7f9e69897c48da5191a1d3426002c`  
		Last Modified: Mon, 19 Oct 2026 22:12:46 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d138ac7b7131445cb7c46672c31907d332093b370bd9e5025bf405a4ec1f23cf`  
		Last Modified: Mon, 19 Oct 2026 22:12:46 GMT  
		Size: 783.6 KB (783563 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5aa7cdeecab35ba178b132ca460f872efc08bdfd767acf7126bc29defdff4af`  
		Last Modified: Mon, 19 Oct 2026 22:12:46 GMT  
		Size: 6.2 MB (6191942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d251a15b2e9be349e400f5404a5ba0c90101dc2e0e46513fa25d3c44c72fd1bd`  
		Last Modified: Mon, 19 Oct 2026 22:12:46 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b826c189499aa1eebb2aec3b4c7389fe2cb3c7da68040153c5a96af013f8e9f8`  
		Last Modified: Mon, 19 Oct 2026 22:12:47 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c99317820bef5f3376a0d497a979f10f4edaadf740cdaa9644861aa78d9ea3f`  
		Last Modified: Mon, 19 Oct 2026 22:12:50 GMT  
		Size: 57.0 MB (57036595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29ba63aea84e725979e0cf1d7da93a37d8472794dfe8250a6349a585aa3924ee`  
		Last Modified: Mon, 19 Oct 2026 22:12:47 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa1523a9660469b441ceb99060ecfa4f23dd1b16f0af8d03e48e420e351aa845`  
		Last Modified: Mon, 19 Oct 2026 22:12:52 GMT  
		Size: 158.9 MB (158919647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecddbf050025c388de325ced04024f9405d90eeea1401d5ecb12fc3559460024`  
		Last Modified: Mon, 19 Oct 2026 22:12:49 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9` - unknown; unknown

```console
$ docker pull mysql@sha256:fc1f2eb720d2b7d4918028136a90d05eecc15ffb27d2499ad886d17294ed36ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e7588e9af8d236fc33a7761755ca15ea2b59124123e290a0c3ea812bdae952b`

```dockerfile
```

-	Layers:
	-	`sha256:f72747e0555d585ceab9cf10e1fcab429406a8abe353f816b78268a1ca1b36d1`  
		Last Modified: Mon, 19 Oct 2026 22:12:46 GMT  
		Size: 16.8 MB (16799207 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b1c8d034eb9480b6bac53c334ae80023c49e6c487f6c1f6c864ac6f3d482cb6c`  
		Last Modified: Mon, 19 Oct 2026 22:12:46 GMT  
		Size: 34.2 KB (34208 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:ebaa6b336278200e9c5530e16e4949f548fa4a36ac34f9ce286027fe8427a395
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.7 MB (266650052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d89b57f81f2883b7c159aabb4484a5b84874968dfb85b45889183877b571fd3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:44 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:44 GMT
CMD ["/bin/bash"]
# Mon, 19 Oct 2026 22:10:15 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 19 Oct 2026 22:10:17 GMT
ENV GOSU_VERSION=1.19
# Mon, 19 Oct 2026 22:10:17 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 19 Oct 2026 22:10:57 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 19 Oct 2026 22:10:58 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 19 Oct 2026 22:10:58 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 19 Oct 2026 22:10:58 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Mon, 19 Oct 2026 22:10:58 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 19 Oct 2026 22:11:41 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 19 Oct 2026 22:11:41 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 19 Oct 2026 22:11:41 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 19 Oct 2026 22:12:32 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 19 Oct 2026 22:12:32 GMT
VOLUME [/var/lib/mysql]
# Mon, 19 Oct 2026 22:12:32 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 19 Oct 2026 22:12:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Oct 2026 22:12:32 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 19 Oct 2026 22:12:32 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ec733952651fc70d299ac3951cabb9fafd032cc96e2ff71bdfd675ac20ca9c93`  
		Last Modified: Mon, 19 Oct 2026 21:32:56 GMT  
		Size: 45.8 MB (45800185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebc1495f726d32f6282c2756c6bb1998a3a0f7634c09d40bdf33d22b32cda624`  
		Last Modified: Mon, 19 Oct 2026 22:13:08 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37f823b0d0b9d9857956662204b1e016ddf30c0c8f0d9f9337ee08c40029baf4`  
		Last Modified: Mon, 19 Oct 2026 22:13:08 GMT  
		Size: 737.5 KB (737529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6aa547218551ddc4cccdea4f5d46f8f1b7874936754bc0e3504a95d35458d68`  
		Last Modified: Mon, 19 Oct 2026 22:13:09 GMT  
		Size: 5.8 MB (5810212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:592f1c9ce727db0667133c9b3a69634130e63ff558c059c208ca0ebcb1422a95`  
		Last Modified: Mon, 19 Oct 2026 22:13:08 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c417b1929de890d00560012c3acda3aac8a444087b18bee5c332c8ba5345c04e`  
		Last Modified: Mon, 19 Oct 2026 22:13:09 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4405368330ddbe36b2c9d426ddb0a0cfe9113372d08f0ca3ba0604992980e4f1`  
		Last Modified: Mon, 19 Oct 2026 22:13:12 GMT  
		Size: 57.1 MB (57100634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ead69b000fe6633648f64c4a5664b99b8c9de769748805ca842b1d727cc4e59`  
		Last Modified: Mon, 19 Oct 2026 22:13:10 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc960e1344d9ecc38c892f700a74186e8e6db956dc9d2efe20f359c6e5e2b9d5`  
		Last Modified: Mon, 19 Oct 2026 22:13:14 GMT  
		Size: 157.2 MB (157192116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d6fe93b02fd5cc7019ff8962eb0ea03fd4cc334d261030d27eb16d4a13db5ed`  
		Last Modified: Mon, 19 Oct 2026 22:13:11 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9` - unknown; unknown

```console
$ docker pull mysql@sha256:9db506aac879a04bd0f8657b10d9e04a2d158fdd5543d665367b6340a23f77f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16832155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f33def755137bbf4d7f42c92a84a0251e16e8b09704b6b9f385e01ccfdb5e52f`

```dockerfile
```

-	Layers:
	-	`sha256:1d4b38242995eb4ca51dba710e82b095a5eb6184c908582023f93f4e9e012123`  
		Last Modified: Mon, 19 Oct 2026 22:13:09 GMT  
		Size: 16.8 MB (16797643 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1ef468392047577812af03c88930ecba944e2eaaf6935087911adcd4a149f9e8`  
		Last Modified: Mon, 19 Oct 2026 22:13:08 GMT  
		Size: 34.5 KB (34512 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9-oracle`

```console
$ docker pull mysql@sha256:e2fa358a74ac81148e7e27d9433e4c0ab62133de8ea4428b4f39a51a4ba7d07f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:79b171dd2361300260ebceb30bb1c669fa8f70183ae250773b56b62d9031338b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.2 MB (270190292 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3121b912b942b8b46646b1f64c955958b8353e8902693ba962a2e37d2d3224bd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:48 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:48 GMT
CMD ["/bin/bash"]
# Mon, 19 Oct 2026 22:10:24 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 19 Oct 2026 22:10:26 GMT
ENV GOSU_VERSION=1.19
# Mon, 19 Oct 2026 22:10:26 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 19 Oct 2026 22:10:56 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 19 Oct 2026 22:10:57 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 19 Oct 2026 22:10:57 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 19 Oct 2026 22:10:57 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Mon, 19 Oct 2026 22:10:57 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 19 Oct 2026 22:11:31 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 19 Oct 2026 22:11:31 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 19 Oct 2026 22:11:31 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 19 Oct 2026 22:12:13 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 19 Oct 2026 22:12:13 GMT
VOLUME [/var/lib/mysql]
# Mon, 19 Oct 2026 22:12:14 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 19 Oct 2026 22:12:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Oct 2026 22:12:14 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 19 Oct 2026 22:12:14 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:97347cf073b19c00bee840fa47d2cd0537dbf5eb581be49840c203f71c0a5c75`  
		Last Modified: Mon, 19 Oct 2026 21:33:00 GMT  
		Size: 47.2 MB (47249168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cadb9833f9640be6821819be271a015e09c7f9e69897c48da5191a1d3426002c`  
		Last Modified: Mon, 19 Oct 2026 22:12:46 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d138ac7b7131445cb7c46672c31907d332093b370bd9e5025bf405a4ec1f23cf`  
		Last Modified: Mon, 19 Oct 2026 22:12:46 GMT  
		Size: 783.6 KB (783563 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5aa7cdeecab35ba178b132ca460f872efc08bdfd767acf7126bc29defdff4af`  
		Last Modified: Mon, 19 Oct 2026 22:12:46 GMT  
		Size: 6.2 MB (6191942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d251a15b2e9be349e400f5404a5ba0c90101dc2e0e46513fa25d3c44c72fd1bd`  
		Last Modified: Mon, 19 Oct 2026 22:12:46 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b826c189499aa1eebb2aec3b4c7389fe2cb3c7da68040153c5a96af013f8e9f8`  
		Last Modified: Mon, 19 Oct 2026 22:12:47 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c99317820bef5f3376a0d497a979f10f4edaadf740cdaa9644861aa78d9ea3f`  
		Last Modified: Mon, 19 Oct 2026 22:12:50 GMT  
		Size: 57.0 MB (57036595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29ba63aea84e725979e0cf1d7da93a37d8472794dfe8250a6349a585aa3924ee`  
		Last Modified: Mon, 19 Oct 2026 22:12:47 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa1523a9660469b441ceb99060ecfa4f23dd1b16f0af8d03e48e420e351aa845`  
		Last Modified: Mon, 19 Oct 2026 22:12:52 GMT  
		Size: 158.9 MB (158919647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecddbf050025c388de325ced04024f9405d90eeea1401d5ecb12fc3559460024`  
		Last Modified: Mon, 19 Oct 2026 22:12:49 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:fc1f2eb720d2b7d4918028136a90d05eecc15ffb27d2499ad886d17294ed36ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e7588e9af8d236fc33a7761755ca15ea2b59124123e290a0c3ea812bdae952b`

```dockerfile
```

-	Layers:
	-	`sha256:f72747e0555d585ceab9cf10e1fcab429406a8abe353f816b78268a1ca1b36d1`  
		Last Modified: Mon, 19 Oct 2026 22:12:46 GMT  
		Size: 16.8 MB (16799207 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b1c8d034eb9480b6bac53c334ae80023c49e6c487f6c1f6c864ac6f3d482cb6c`  
		Last Modified: Mon, 19 Oct 2026 22:12:46 GMT  
		Size: 34.2 KB (34208 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:ebaa6b336278200e9c5530e16e4949f548fa4a36ac34f9ce286027fe8427a395
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.7 MB (266650052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d89b57f81f2883b7c159aabb4484a5b84874968dfb85b45889183877b571fd3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:44 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:44 GMT
CMD ["/bin/bash"]
# Mon, 19 Oct 2026 22:10:15 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 19 Oct 2026 22:10:17 GMT
ENV GOSU_VERSION=1.19
# Mon, 19 Oct 2026 22:10:17 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 19 Oct 2026 22:10:57 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 19 Oct 2026 22:10:58 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 19 Oct 2026 22:10:58 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 19 Oct 2026 22:10:58 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Mon, 19 Oct 2026 22:10:58 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 19 Oct 2026 22:11:41 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 19 Oct 2026 22:11:41 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 19 Oct 2026 22:11:41 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 19 Oct 2026 22:12:32 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 19 Oct 2026 22:12:32 GMT
VOLUME [/var/lib/mysql]
# Mon, 19 Oct 2026 22:12:32 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 19 Oct 2026 22:12:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Oct 2026 22:12:32 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 19 Oct 2026 22:12:32 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ec733952651fc70d299ac3951cabb9fafd032cc96e2ff71bdfd675ac20ca9c93`  
		Last Modified: Mon, 19 Oct 2026 21:32:56 GMT  
		Size: 45.8 MB (45800185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebc1495f726d32f6282c2756c6bb1998a3a0f7634c09d40bdf33d22b32cda624`  
		Last Modified: Mon, 19 Oct 2026 22:13:08 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37f823b0d0b9d9857956662204b1e016ddf30c0c8f0d9f9337ee08c40029baf4`  
		Last Modified: Mon, 19 Oct 2026 22:13:08 GMT  
		Size: 737.5 KB (737529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6aa547218551ddc4cccdea4f5d46f8f1b7874936754bc0e3504a95d35458d68`  
		Last Modified: Mon, 19 Oct 2026 22:13:09 GMT  
		Size: 5.8 MB (5810212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:592f1c9ce727db0667133c9b3a69634130e63ff558c059c208ca0ebcb1422a95`  
		Last Modified: Mon, 19 Oct 2026 22:13:08 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c417b1929de890d00560012c3acda3aac8a444087b18bee5c332c8ba5345c04e`  
		Last Modified: Mon, 19 Oct 2026 22:13:09 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4405368330ddbe36b2c9d426ddb0a0cfe9113372d08f0ca3ba0604992980e4f1`  
		Last Modified: Mon, 19 Oct 2026 22:13:12 GMT  
		Size: 57.1 MB (57100634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ead69b000fe6633648f64c4a5664b99b8c9de769748805ca842b1d727cc4e59`  
		Last Modified: Mon, 19 Oct 2026 22:13:10 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc960e1344d9ecc38c892f700a74186e8e6db956dc9d2efe20f359c6e5e2b9d5`  
		Last Modified: Mon, 19 Oct 2026 22:13:14 GMT  
		Size: 157.2 MB (157192116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d6fe93b02fd5cc7019ff8962eb0ea03fd4cc334d261030d27eb16d4a13db5ed`  
		Last Modified: Mon, 19 Oct 2026 22:13:11 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:9db506aac879a04bd0f8657b10d9e04a2d158fdd5543d665367b6340a23f77f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16832155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f33def755137bbf4d7f42c92a84a0251e16e8b09704b6b9f385e01ccfdb5e52f`

```dockerfile
```

-	Layers:
	-	`sha256:1d4b38242995eb4ca51dba710e82b095a5eb6184c908582023f93f4e9e012123`  
		Last Modified: Mon, 19 Oct 2026 22:13:09 GMT  
		Size: 16.8 MB (16797643 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1ef468392047577812af03c88930ecba944e2eaaf6935087911adcd4a149f9e8`  
		Last Modified: Mon, 19 Oct 2026 22:13:08 GMT  
		Size: 34.5 KB (34512 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9-oraclelinux9`

```console
$ docker pull mysql@sha256:e2fa358a74ac81148e7e27d9433e4c0ab62133de8ea4428b4f39a51a4ba7d07f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:79b171dd2361300260ebceb30bb1c669fa8f70183ae250773b56b62d9031338b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.2 MB (270190292 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3121b912b942b8b46646b1f64c955958b8353e8902693ba962a2e37d2d3224bd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:48 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:48 GMT
CMD ["/bin/bash"]
# Mon, 19 Oct 2026 22:10:24 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 19 Oct 2026 22:10:26 GMT
ENV GOSU_VERSION=1.19
# Mon, 19 Oct 2026 22:10:26 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 19 Oct 2026 22:10:56 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 19 Oct 2026 22:10:57 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 19 Oct 2026 22:10:57 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 19 Oct 2026 22:10:57 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Mon, 19 Oct 2026 22:10:57 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 19 Oct 2026 22:11:31 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 19 Oct 2026 22:11:31 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 19 Oct 2026 22:11:31 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 19 Oct 2026 22:12:13 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 19 Oct 2026 22:12:13 GMT
VOLUME [/var/lib/mysql]
# Mon, 19 Oct 2026 22:12:14 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 19 Oct 2026 22:12:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Oct 2026 22:12:14 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 19 Oct 2026 22:12:14 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:97347cf073b19c00bee840fa47d2cd0537dbf5eb581be49840c203f71c0a5c75`  
		Last Modified: Mon, 19 Oct 2026 21:33:00 GMT  
		Size: 47.2 MB (47249168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cadb9833f9640be6821819be271a015e09c7f9e69897c48da5191a1d3426002c`  
		Last Modified: Mon, 19 Oct 2026 22:12:46 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d138ac7b7131445cb7c46672c31907d332093b370bd9e5025bf405a4ec1f23cf`  
		Last Modified: Mon, 19 Oct 2026 22:12:46 GMT  
		Size: 783.6 KB (783563 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5aa7cdeecab35ba178b132ca460f872efc08bdfd767acf7126bc29defdff4af`  
		Last Modified: Mon, 19 Oct 2026 22:12:46 GMT  
		Size: 6.2 MB (6191942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d251a15b2e9be349e400f5404a5ba0c90101dc2e0e46513fa25d3c44c72fd1bd`  
		Last Modified: Mon, 19 Oct 2026 22:12:46 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b826c189499aa1eebb2aec3b4c7389fe2cb3c7da68040153c5a96af013f8e9f8`  
		Last Modified: Mon, 19 Oct 2026 22:12:47 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c99317820bef5f3376a0d497a979f10f4edaadf740cdaa9644861aa78d9ea3f`  
		Last Modified: Mon, 19 Oct 2026 22:12:50 GMT  
		Size: 57.0 MB (57036595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29ba63aea84e725979e0cf1d7da93a37d8472794dfe8250a6349a585aa3924ee`  
		Last Modified: Mon, 19 Oct 2026 22:12:47 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa1523a9660469b441ceb99060ecfa4f23dd1b16f0af8d03e48e420e351aa845`  
		Last Modified: Mon, 19 Oct 2026 22:12:52 GMT  
		Size: 158.9 MB (158919647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecddbf050025c388de325ced04024f9405d90eeea1401d5ecb12fc3559460024`  
		Last Modified: Mon, 19 Oct 2026 22:12:49 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:fc1f2eb720d2b7d4918028136a90d05eecc15ffb27d2499ad886d17294ed36ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e7588e9af8d236fc33a7761755ca15ea2b59124123e290a0c3ea812bdae952b`

```dockerfile
```

-	Layers:
	-	`sha256:f72747e0555d585ceab9cf10e1fcab429406a8abe353f816b78268a1ca1b36d1`  
		Last Modified: Mon, 19 Oct 2026 22:12:46 GMT  
		Size: 16.8 MB (16799207 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b1c8d034eb9480b6bac53c334ae80023c49e6c487f6c1f6c864ac6f3d482cb6c`  
		Last Modified: Mon, 19 Oct 2026 22:12:46 GMT  
		Size: 34.2 KB (34208 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:ebaa6b336278200e9c5530e16e4949f548fa4a36ac34f9ce286027fe8427a395
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.7 MB (266650052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d89b57f81f2883b7c159aabb4484a5b84874968dfb85b45889183877b571fd3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:44 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:44 GMT
CMD ["/bin/bash"]
# Mon, 19 Oct 2026 22:10:15 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 19 Oct 2026 22:10:17 GMT
ENV GOSU_VERSION=1.19
# Mon, 19 Oct 2026 22:10:17 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 19 Oct 2026 22:10:57 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 19 Oct 2026 22:10:58 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 19 Oct 2026 22:10:58 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 19 Oct 2026 22:10:58 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Mon, 19 Oct 2026 22:10:58 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 19 Oct 2026 22:11:41 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 19 Oct 2026 22:11:41 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 19 Oct 2026 22:11:41 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 19 Oct 2026 22:12:32 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 19 Oct 2026 22:12:32 GMT
VOLUME [/var/lib/mysql]
# Mon, 19 Oct 2026 22:12:32 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 19 Oct 2026 22:12:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Oct 2026 22:12:32 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 19 Oct 2026 22:12:32 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ec733952651fc70d299ac3951cabb9fafd032cc96e2ff71bdfd675ac20ca9c93`  
		Last Modified: Mon, 19 Oct 2026 21:32:56 GMT  
		Size: 45.8 MB (45800185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebc1495f726d32f6282c2756c6bb1998a3a0f7634c09d40bdf33d22b32cda624`  
		Last Modified: Mon, 19 Oct 2026 22:13:08 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37f823b0d0b9d9857956662204b1e016ddf30c0c8f0d9f9337ee08c40029baf4`  
		Last Modified: Mon, 19 Oct 2026 22:13:08 GMT  
		Size: 737.5 KB (737529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6aa547218551ddc4cccdea4f5d46f8f1b7874936754bc0e3504a95d35458d68`  
		Last Modified: Mon, 19 Oct 2026 22:13:09 GMT  
		Size: 5.8 MB (5810212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:592f1c9ce727db0667133c9b3a69634130e63ff558c059c208ca0ebcb1422a95`  
		Last Modified: Mon, 19 Oct 2026 22:13:08 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c417b1929de890d00560012c3acda3aac8a444087b18bee5c332c8ba5345c04e`  
		Last Modified: Mon, 19 Oct 2026 22:13:09 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4405368330ddbe36b2c9d426ddb0a0cfe9113372d08f0ca3ba0604992980e4f1`  
		Last Modified: Mon, 19 Oct 2026 22:13:12 GMT  
		Size: 57.1 MB (57100634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ead69b000fe6633648f64c4a5664b99b8c9de769748805ca842b1d727cc4e59`  
		Last Modified: Mon, 19 Oct 2026 22:13:10 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc960e1344d9ecc38c892f700a74186e8e6db956dc9d2efe20f359c6e5e2b9d5`  
		Last Modified: Mon, 19 Oct 2026 22:13:14 GMT  
		Size: 157.2 MB (157192116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d6fe93b02fd5cc7019ff8962eb0ea03fd4cc334d261030d27eb16d4a13db5ed`  
		Last Modified: Mon, 19 Oct 2026 22:13:11 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:9db506aac879a04bd0f8657b10d9e04a2d158fdd5543d665367b6340a23f77f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16832155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f33def755137bbf4d7f42c92a84a0251e16e8b09704b6b9f385e01ccfdb5e52f`

```dockerfile
```

-	Layers:
	-	`sha256:1d4b38242995eb4ca51dba710e82b095a5eb6184c908582023f93f4e9e012123`  
		Last Modified: Mon, 19 Oct 2026 22:13:09 GMT  
		Size: 16.8 MB (16797643 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1ef468392047577812af03c88930ecba944e2eaaf6935087911adcd4a149f9e8`  
		Last Modified: Mon, 19 Oct 2026 22:13:08 GMT  
		Size: 34.5 KB (34512 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9.7`

```console
$ docker pull mysql@sha256:e2fa358a74ac81148e7e27d9433e4c0ab62133de8ea4428b4f39a51a4ba7d07f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9.7` - linux; amd64

```console
$ docker pull mysql@sha256:79b171dd2361300260ebceb30bb1c669fa8f70183ae250773b56b62d9031338b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.2 MB (270190292 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3121b912b942b8b46646b1f64c955958b8353e8902693ba962a2e37d2d3224bd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:48 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:48 GMT
CMD ["/bin/bash"]
# Mon, 19 Oct 2026 22:10:24 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 19 Oct 2026 22:10:26 GMT
ENV GOSU_VERSION=1.19
# Mon, 19 Oct 2026 22:10:26 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 19 Oct 2026 22:10:56 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 19 Oct 2026 22:10:57 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 19 Oct 2026 22:10:57 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 19 Oct 2026 22:10:57 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Mon, 19 Oct 2026 22:10:57 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 19 Oct 2026 22:11:31 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 19 Oct 2026 22:11:31 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 19 Oct 2026 22:11:31 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 19 Oct 2026 22:12:13 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 19 Oct 2026 22:12:13 GMT
VOLUME [/var/lib/mysql]
# Mon, 19 Oct 2026 22:12:14 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 19 Oct 2026 22:12:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Oct 2026 22:12:14 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 19 Oct 2026 22:12:14 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:97347cf073b19c00bee840fa47d2cd0537dbf5eb581be49840c203f71c0a5c75`  
		Last Modified: Mon, 19 Oct 2026 21:33:00 GMT  
		Size: 47.2 MB (47249168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cadb9833f9640be6821819be271a015e09c7f9e69897c48da5191a1d3426002c`  
		Last Modified: Mon, 19 Oct 2026 22:12:46 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d138ac7b7131445cb7c46672c31907d332093b370bd9e5025bf405a4ec1f23cf`  
		Last Modified: Mon, 19 Oct 2026 22:12:46 GMT  
		Size: 783.6 KB (783563 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5aa7cdeecab35ba178b132ca460f872efc08bdfd767acf7126bc29defdff4af`  
		Last Modified: Mon, 19 Oct 2026 22:12:46 GMT  
		Size: 6.2 MB (6191942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d251a15b2e9be349e400f5404a5ba0c90101dc2e0e46513fa25d3c44c72fd1bd`  
		Last Modified: Mon, 19 Oct 2026 22:12:46 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b826c189499aa1eebb2aec3b4c7389fe2cb3c7da68040153c5a96af013f8e9f8`  
		Last Modified: Mon, 19 Oct 2026 22:12:47 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c99317820bef5f3376a0d497a979f10f4edaadf740cdaa9644861aa78d9ea3f`  
		Last Modified: Mon, 19 Oct 2026 22:12:50 GMT  
		Size: 57.0 MB (57036595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29ba63aea84e725979e0cf1d7da93a37d8472794dfe8250a6349a585aa3924ee`  
		Last Modified: Mon, 19 Oct 2026 22:12:47 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa1523a9660469b441ceb99060ecfa4f23dd1b16f0af8d03e48e420e351aa845`  
		Last Modified: Mon, 19 Oct 2026 22:12:52 GMT  
		Size: 158.9 MB (158919647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecddbf050025c388de325ced04024f9405d90eeea1401d5ecb12fc3559460024`  
		Last Modified: Mon, 19 Oct 2026 22:12:49 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7` - unknown; unknown

```console
$ docker pull mysql@sha256:fc1f2eb720d2b7d4918028136a90d05eecc15ffb27d2499ad886d17294ed36ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e7588e9af8d236fc33a7761755ca15ea2b59124123e290a0c3ea812bdae952b`

```dockerfile
```

-	Layers:
	-	`sha256:f72747e0555d585ceab9cf10e1fcab429406a8abe353f816b78268a1ca1b36d1`  
		Last Modified: Mon, 19 Oct 2026 22:12:46 GMT  
		Size: 16.8 MB (16799207 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b1c8d034eb9480b6bac53c334ae80023c49e6c487f6c1f6c864ac6f3d482cb6c`  
		Last Modified: Mon, 19 Oct 2026 22:12:46 GMT  
		Size: 34.2 KB (34208 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9.7` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:ebaa6b336278200e9c5530e16e4949f548fa4a36ac34f9ce286027fe8427a395
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.7 MB (266650052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d89b57f81f2883b7c159aabb4484a5b84874968dfb85b45889183877b571fd3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:44 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:44 GMT
CMD ["/bin/bash"]
# Mon, 19 Oct 2026 22:10:15 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 19 Oct 2026 22:10:17 GMT
ENV GOSU_VERSION=1.19
# Mon, 19 Oct 2026 22:10:17 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 19 Oct 2026 22:10:57 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 19 Oct 2026 22:10:58 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 19 Oct 2026 22:10:58 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 19 Oct 2026 22:10:58 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Mon, 19 Oct 2026 22:10:58 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 19 Oct 2026 22:11:41 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 19 Oct 2026 22:11:41 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 19 Oct 2026 22:11:41 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 19 Oct 2026 22:12:32 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 19 Oct 2026 22:12:32 GMT
VOLUME [/var/lib/mysql]
# Mon, 19 Oct 2026 22:12:32 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 19 Oct 2026 22:12:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Oct 2026 22:12:32 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 19 Oct 2026 22:12:32 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ec733952651fc70d299ac3951cabb9fafd032cc96e2ff71bdfd675ac20ca9c93`  
		Last Modified: Mon, 19 Oct 2026 21:32:56 GMT  
		Size: 45.8 MB (45800185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebc1495f726d32f6282c2756c6bb1998a3a0f7634c09d40bdf33d22b32cda624`  
		Last Modified: Mon, 19 Oct 2026 22:13:08 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37f823b0d0b9d9857956662204b1e016ddf30c0c8f0d9f9337ee08c40029baf4`  
		Last Modified: Mon, 19 Oct 2026 22:13:08 GMT  
		Size: 737.5 KB (737529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6aa547218551ddc4cccdea4f5d46f8f1b7874936754bc0e3504a95d35458d68`  
		Last Modified: Mon, 19 Oct 2026 22:13:09 GMT  
		Size: 5.8 MB (5810212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:592f1c9ce727db0667133c9b3a69634130e63ff558c059c208ca0ebcb1422a95`  
		Last Modified: Mon, 19 Oct 2026 22:13:08 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c417b1929de890d00560012c3acda3aac8a444087b18bee5c332c8ba5345c04e`  
		Last Modified: Mon, 19 Oct 2026 22:13:09 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4405368330ddbe36b2c9d426ddb0a0cfe9113372d08f0ca3ba0604992980e4f1`  
		Last Modified: Mon, 19 Oct 2026 22:13:12 GMT  
		Size: 57.1 MB (57100634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ead69b000fe6633648f64c4a5664b99b8c9de769748805ca842b1d727cc4e59`  
		Last Modified: Mon, 19 Oct 2026 22:13:10 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc960e1344d9ecc38c892f700a74186e8e6db956dc9d2efe20f359c6e5e2b9d5`  
		Last Modified: Mon, 19 Oct 2026 22:13:14 GMT  
		Size: 157.2 MB (157192116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d6fe93b02fd5cc7019ff8962eb0ea03fd4cc334d261030d27eb16d4a13db5ed`  
		Last Modified: Mon, 19 Oct 2026 22:13:11 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7` - unknown; unknown

```console
$ docker pull mysql@sha256:9db506aac879a04bd0f8657b10d9e04a2d158fdd5543d665367b6340a23f77f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16832155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f33def755137bbf4d7f42c92a84a0251e16e8b09704b6b9f385e01ccfdb5e52f`

```dockerfile
```

-	Layers:
	-	`sha256:1d4b38242995eb4ca51dba710e82b095a5eb6184c908582023f93f4e9e012123`  
		Last Modified: Mon, 19 Oct 2026 22:13:09 GMT  
		Size: 16.8 MB (16797643 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1ef468392047577812af03c88930ecba944e2eaaf6935087911adcd4a149f9e8`  
		Last Modified: Mon, 19 Oct 2026 22:13:08 GMT  
		Size: 34.5 KB (34512 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9.7-oracle`

```console
$ docker pull mysql@sha256:e2fa358a74ac81148e7e27d9433e4c0ab62133de8ea4428b4f39a51a4ba7d07f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9.7-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:79b171dd2361300260ebceb30bb1c669fa8f70183ae250773b56b62d9031338b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.2 MB (270190292 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3121b912b942b8b46646b1f64c955958b8353e8902693ba962a2e37d2d3224bd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:48 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:48 GMT
CMD ["/bin/bash"]
# Mon, 19 Oct 2026 22:10:24 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 19 Oct 2026 22:10:26 GMT
ENV GOSU_VERSION=1.19
# Mon, 19 Oct 2026 22:10:26 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 19 Oct 2026 22:10:56 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 19 Oct 2026 22:10:57 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 19 Oct 2026 22:10:57 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 19 Oct 2026 22:10:57 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Mon, 19 Oct 2026 22:10:57 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 19 Oct 2026 22:11:31 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 19 Oct 2026 22:11:31 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 19 Oct 2026 22:11:31 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 19 Oct 2026 22:12:13 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 19 Oct 2026 22:12:13 GMT
VOLUME [/var/lib/mysql]
# Mon, 19 Oct 2026 22:12:14 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 19 Oct 2026 22:12:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Oct 2026 22:12:14 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 19 Oct 2026 22:12:14 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:97347cf073b19c00bee840fa47d2cd0537dbf5eb581be49840c203f71c0a5c75`  
		Last Modified: Mon, 19 Oct 2026 21:33:00 GMT  
		Size: 47.2 MB (47249168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cadb9833f9640be6821819be271a015e09c7f9e69897c48da5191a1d3426002c`  
		Last Modified: Mon, 19 Oct 2026 22:12:46 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d138ac7b7131445cb7c46672c31907d332093b370bd9e5025bf405a4ec1f23cf`  
		Last Modified: Mon, 19 Oct 2026 22:12:46 GMT  
		Size: 783.6 KB (783563 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5aa7cdeecab35ba178b132ca460f872efc08bdfd767acf7126bc29defdff4af`  
		Last Modified: Mon, 19 Oct 2026 22:12:46 GMT  
		Size: 6.2 MB (6191942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d251a15b2e9be349e400f5404a5ba0c90101dc2e0e46513fa25d3c44c72fd1bd`  
		Last Modified: Mon, 19 Oct 2026 22:12:46 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b826c189499aa1eebb2aec3b4c7389fe2cb3c7da68040153c5a96af013f8e9f8`  
		Last Modified: Mon, 19 Oct 2026 22:12:47 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c99317820bef5f3376a0d497a979f10f4edaadf740cdaa9644861aa78d9ea3f`  
		Last Modified: Mon, 19 Oct 2026 22:12:50 GMT  
		Size: 57.0 MB (57036595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29ba63aea84e725979e0cf1d7da93a37d8472794dfe8250a6349a585aa3924ee`  
		Last Modified: Mon, 19 Oct 2026 22:12:47 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa1523a9660469b441ceb99060ecfa4f23dd1b16f0af8d03e48e420e351aa845`  
		Last Modified: Mon, 19 Oct 2026 22:12:52 GMT  
		Size: 158.9 MB (158919647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecddbf050025c388de325ced04024f9405d90eeea1401d5ecb12fc3559460024`  
		Last Modified: Mon, 19 Oct 2026 22:12:49 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:fc1f2eb720d2b7d4918028136a90d05eecc15ffb27d2499ad886d17294ed36ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e7588e9af8d236fc33a7761755ca15ea2b59124123e290a0c3ea812bdae952b`

```dockerfile
```

-	Layers:
	-	`sha256:f72747e0555d585ceab9cf10e1fcab429406a8abe353f816b78268a1ca1b36d1`  
		Last Modified: Mon, 19 Oct 2026 22:12:46 GMT  
		Size: 16.8 MB (16799207 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b1c8d034eb9480b6bac53c334ae80023c49e6c487f6c1f6c864ac6f3d482cb6c`  
		Last Modified: Mon, 19 Oct 2026 22:12:46 GMT  
		Size: 34.2 KB (34208 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9.7-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:ebaa6b336278200e9c5530e16e4949f548fa4a36ac34f9ce286027fe8427a395
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.7 MB (266650052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d89b57f81f2883b7c159aabb4484a5b84874968dfb85b45889183877b571fd3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:44 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:44 GMT
CMD ["/bin/bash"]
# Mon, 19 Oct 2026 22:10:15 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 19 Oct 2026 22:10:17 GMT
ENV GOSU_VERSION=1.19
# Mon, 19 Oct 2026 22:10:17 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 19 Oct 2026 22:10:57 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 19 Oct 2026 22:10:58 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 19 Oct 2026 22:10:58 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 19 Oct 2026 22:10:58 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Mon, 19 Oct 2026 22:10:58 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 19 Oct 2026 22:11:41 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 19 Oct 2026 22:11:41 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 19 Oct 2026 22:11:41 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 19 Oct 2026 22:12:32 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 19 Oct 2026 22:12:32 GMT
VOLUME [/var/lib/mysql]
# Mon, 19 Oct 2026 22:12:32 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 19 Oct 2026 22:12:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Oct 2026 22:12:32 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 19 Oct 2026 22:12:32 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ec733952651fc70d299ac3951cabb9fafd032cc96e2ff71bdfd675ac20ca9c93`  
		Last Modified: Mon, 19 Oct 2026 21:32:56 GMT  
		Size: 45.8 MB (45800185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebc1495f726d32f6282c2756c6bb1998a3a0f7634c09d40bdf33d22b32cda624`  
		Last Modified: Mon, 19 Oct 2026 22:13:08 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37f823b0d0b9d9857956662204b1e016ddf30c0c8f0d9f9337ee08c40029baf4`  
		Last Modified: Mon, 19 Oct 2026 22:13:08 GMT  
		Size: 737.5 KB (737529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6aa547218551ddc4cccdea4f5d46f8f1b7874936754bc0e3504a95d35458d68`  
		Last Modified: Mon, 19 Oct 2026 22:13:09 GMT  
		Size: 5.8 MB (5810212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:592f1c9ce727db0667133c9b3a69634130e63ff558c059c208ca0ebcb1422a95`  
		Last Modified: Mon, 19 Oct 2026 22:13:08 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c417b1929de890d00560012c3acda3aac8a444087b18bee5c332c8ba5345c04e`  
		Last Modified: Mon, 19 Oct 2026 22:13:09 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4405368330ddbe36b2c9d426ddb0a0cfe9113372d08f0ca3ba0604992980e4f1`  
		Last Modified: Mon, 19 Oct 2026 22:13:12 GMT  
		Size: 57.1 MB (57100634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ead69b000fe6633648f64c4a5664b99b8c9de769748805ca842b1d727cc4e59`  
		Last Modified: Mon, 19 Oct 2026 22:13:10 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc960e1344d9ecc38c892f700a74186e8e6db956dc9d2efe20f359c6e5e2b9d5`  
		Last Modified: Mon, 19 Oct 2026 22:13:14 GMT  
		Size: 157.2 MB (157192116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d6fe93b02fd5cc7019ff8962eb0ea03fd4cc334d261030d27eb16d4a13db5ed`  
		Last Modified: Mon, 19 Oct 2026 22:13:11 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:9db506aac879a04bd0f8657b10d9e04a2d158fdd5543d665367b6340a23f77f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16832155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f33def755137bbf4d7f42c92a84a0251e16e8b09704b6b9f385e01ccfdb5e52f`

```dockerfile
```

-	Layers:
	-	`sha256:1d4b38242995eb4ca51dba710e82b095a5eb6184c908582023f93f4e9e012123`  
		Last Modified: Mon, 19 Oct 2026 22:13:09 GMT  
		Size: 16.8 MB (16797643 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1ef468392047577812af03c88930ecba944e2eaaf6935087911adcd4a149f9e8`  
		Last Modified: Mon, 19 Oct 2026 22:13:08 GMT  
		Size: 34.5 KB (34512 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9.7-oraclelinux9`

```console
$ docker pull mysql@sha256:e2fa358a74ac81148e7e27d9433e4c0ab62133de8ea4428b4f39a51a4ba7d07f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9.7-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:79b171dd2361300260ebceb30bb1c669fa8f70183ae250773b56b62d9031338b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.2 MB (270190292 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3121b912b942b8b46646b1f64c955958b8353e8902693ba962a2e37d2d3224bd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:48 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:48 GMT
CMD ["/bin/bash"]
# Mon, 19 Oct 2026 22:10:24 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 19 Oct 2026 22:10:26 GMT
ENV GOSU_VERSION=1.19
# Mon, 19 Oct 2026 22:10:26 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 19 Oct 2026 22:10:56 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 19 Oct 2026 22:10:57 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 19 Oct 2026 22:10:57 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 19 Oct 2026 22:10:57 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Mon, 19 Oct 2026 22:10:57 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 19 Oct 2026 22:11:31 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 19 Oct 2026 22:11:31 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 19 Oct 2026 22:11:31 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 19 Oct 2026 22:12:13 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 19 Oct 2026 22:12:13 GMT
VOLUME [/var/lib/mysql]
# Mon, 19 Oct 2026 22:12:14 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 19 Oct 2026 22:12:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Oct 2026 22:12:14 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 19 Oct 2026 22:12:14 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:97347cf073b19c00bee840fa47d2cd0537dbf5eb581be49840c203f71c0a5c75`  
		Last Modified: Mon, 19 Oct 2026 21:33:00 GMT  
		Size: 47.2 MB (47249168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cadb9833f9640be6821819be271a015e09c7f9e69897c48da5191a1d3426002c`  
		Last Modified: Mon, 19 Oct 2026 22:12:46 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d138ac7b7131445cb7c46672c31907d332093b370bd9e5025bf405a4ec1f23cf`  
		Last Modified: Mon, 19 Oct 2026 22:12:46 GMT  
		Size: 783.6 KB (783563 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5aa7cdeecab35ba178b132ca460f872efc08bdfd767acf7126bc29defdff4af`  
		Last Modified: Mon, 19 Oct 2026 22:12:46 GMT  
		Size: 6.2 MB (6191942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d251a15b2e9be349e400f5404a5ba0c90101dc2e0e46513fa25d3c44c72fd1bd`  
		Last Modified: Mon, 19 Oct 2026 22:12:46 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b826c189499aa1eebb2aec3b4c7389fe2cb3c7da68040153c5a96af013f8e9f8`  
		Last Modified: Mon, 19 Oct 2026 22:12:47 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c99317820bef5f3376a0d497a979f10f4edaadf740cdaa9644861aa78d9ea3f`  
		Last Modified: Mon, 19 Oct 2026 22:12:50 GMT  
		Size: 57.0 MB (57036595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29ba63aea84e725979e0cf1d7da93a37d8472794dfe8250a6349a585aa3924ee`  
		Last Modified: Mon, 19 Oct 2026 22:12:47 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa1523a9660469b441ceb99060ecfa4f23dd1b16f0af8d03e48e420e351aa845`  
		Last Modified: Mon, 19 Oct 2026 22:12:52 GMT  
		Size: 158.9 MB (158919647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecddbf050025c388de325ced04024f9405d90eeea1401d5ecb12fc3559460024`  
		Last Modified: Mon, 19 Oct 2026 22:12:49 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:fc1f2eb720d2b7d4918028136a90d05eecc15ffb27d2499ad886d17294ed36ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e7588e9af8d236fc33a7761755ca15ea2b59124123e290a0c3ea812bdae952b`

```dockerfile
```

-	Layers:
	-	`sha256:f72747e0555d585ceab9cf10e1fcab429406a8abe353f816b78268a1ca1b36d1`  
		Last Modified: Mon, 19 Oct 2026 22:12:46 GMT  
		Size: 16.8 MB (16799207 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b1c8d034eb9480b6bac53c334ae80023c49e6c487f6c1f6c864ac6f3d482cb6c`  
		Last Modified: Mon, 19 Oct 2026 22:12:46 GMT  
		Size: 34.2 KB (34208 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9.7-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:ebaa6b336278200e9c5530e16e4949f548fa4a36ac34f9ce286027fe8427a395
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.7 MB (266650052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d89b57f81f2883b7c159aabb4484a5b84874968dfb85b45889183877b571fd3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:44 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:44 GMT
CMD ["/bin/bash"]
# Mon, 19 Oct 2026 22:10:15 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 19 Oct 2026 22:10:17 GMT
ENV GOSU_VERSION=1.19
# Mon, 19 Oct 2026 22:10:17 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 19 Oct 2026 22:10:57 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 19 Oct 2026 22:10:58 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 19 Oct 2026 22:10:58 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 19 Oct 2026 22:10:58 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Mon, 19 Oct 2026 22:10:58 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 19 Oct 2026 22:11:41 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 19 Oct 2026 22:11:41 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 19 Oct 2026 22:11:41 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 19 Oct 2026 22:12:32 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 19 Oct 2026 22:12:32 GMT
VOLUME [/var/lib/mysql]
# Mon, 19 Oct 2026 22:12:32 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 19 Oct 2026 22:12:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Oct 2026 22:12:32 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 19 Oct 2026 22:12:32 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ec733952651fc70d299ac3951cabb9fafd032cc96e2ff71bdfd675ac20ca9c93`  
		Last Modified: Mon, 19 Oct 2026 21:32:56 GMT  
		Size: 45.8 MB (45800185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebc1495f726d32f6282c2756c6bb1998a3a0f7634c09d40bdf33d22b32cda624`  
		Last Modified: Mon, 19 Oct 2026 22:13:08 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37f823b0d0b9d9857956662204b1e016ddf30c0c8f0d9f9337ee08c40029baf4`  
		Last Modified: Mon, 19 Oct 2026 22:13:08 GMT  
		Size: 737.5 KB (737529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6aa547218551ddc4cccdea4f5d46f8f1b7874936754bc0e3504a95d35458d68`  
		Last Modified: Mon, 19 Oct 2026 22:13:09 GMT  
		Size: 5.8 MB (5810212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:592f1c9ce727db0667133c9b3a69634130e63ff558c059c208ca0ebcb1422a95`  
		Last Modified: Mon, 19 Oct 2026 22:13:08 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c417b1929de890d00560012c3acda3aac8a444087b18bee5c332c8ba5345c04e`  
		Last Modified: Mon, 19 Oct 2026 22:13:09 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4405368330ddbe36b2c9d426ddb0a0cfe9113372d08f0ca3ba0604992980e4f1`  
		Last Modified: Mon, 19 Oct 2026 22:13:12 GMT  
		Size: 57.1 MB (57100634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ead69b000fe6633648f64c4a5664b99b8c9de769748805ca842b1d727cc4e59`  
		Last Modified: Mon, 19 Oct 2026 22:13:10 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc960e1344d9ecc38c892f700a74186e8e6db956dc9d2efe20f359c6e5e2b9d5`  
		Last Modified: Mon, 19 Oct 2026 22:13:14 GMT  
		Size: 157.2 MB (157192116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d6fe93b02fd5cc7019ff8962eb0ea03fd4cc334d261030d27eb16d4a13db5ed`  
		Last Modified: Mon, 19 Oct 2026 22:13:11 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:9db506aac879a04bd0f8657b10d9e04a2d158fdd5543d665367b6340a23f77f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16832155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f33def755137bbf4d7f42c92a84a0251e16e8b09704b6b9f385e01ccfdb5e52f`

```dockerfile
```

-	Layers:
	-	`sha256:1d4b38242995eb4ca51dba710e82b095a5eb6184c908582023f93f4e9e012123`  
		Last Modified: Mon, 19 Oct 2026 22:13:09 GMT  
		Size: 16.8 MB (16797643 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1ef468392047577812af03c88930ecba944e2eaaf6935087911adcd4a149f9e8`  
		Last Modified: Mon, 19 Oct 2026 22:13:08 GMT  
		Size: 34.5 KB (34512 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9.7.4`

**does not exist** (yet?)

## `mysql:9.7.4-oracle`

**does not exist** (yet?)

## `mysql:9.7.4-oraclelinux9`

**does not exist** (yet?)

## `mysql:innovation`

```console
$ docker pull mysql@sha256:625f74ddf93652d9d0f8d4ea7d741b9189554a5e96d27bb770abd0902d89c6e3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:innovation` - linux; amd64

```console
$ docker pull mysql@sha256:67e8e370d4aa4b6103bb3bbcc2a1c96ed367dd34dfc2c88aa7f1a37d3c8cf44a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.6 MB (271627594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:420f00813dd560a6ffd6a8c8adeb6c7266c7b80d3c3f17c2d64e9b9dfaf1358c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:48 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:48 GMT
CMD ["/bin/bash"]
# Mon, 19 Oct 2026 22:09:53 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 19 Oct 2026 22:09:55 GMT
ENV GOSU_VERSION=1.19
# Mon, 19 Oct 2026 22:09:55 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 19 Oct 2026 22:10:28 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 19 Oct 2026 22:10:28 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 19 Oct 2026 22:10:28 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 19 Oct 2026 22:10:28 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Mon, 19 Oct 2026 22:10:28 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 19 Oct 2026 22:11:05 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 19 Oct 2026 22:11:05 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 19 Oct 2026 22:11:05 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Mon, 19 Oct 2026 22:11:51 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 19 Oct 2026 22:11:51 GMT
VOLUME [/var/lib/mysql]
# Mon, 19 Oct 2026 22:11:51 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 19 Oct 2026 22:11:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Oct 2026 22:11:51 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 19 Oct 2026 22:11:51 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:97347cf073b19c00bee840fa47d2cd0537dbf5eb581be49840c203f71c0a5c75`  
		Last Modified: Mon, 19 Oct 2026 21:33:00 GMT  
		Size: 47.2 MB (47249168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f196ecbd4d03904b7f898d0a71b22b8cbfdcac9238452b9f73490108d7e37f7f`  
		Last Modified: Mon, 19 Oct 2026 22:12:25 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6a54fa3bc08abd9bf407ca52683d2095dd0a30ebe9acb780d4c1358d77ba596`  
		Last Modified: Mon, 19 Oct 2026 22:12:25 GMT  
		Size: 783.6 KB (783561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac0ac319b025e2bfce6fa355ba821125b4a5ab6d7898bc47393b76a2043ff9f8`  
		Last Modified: Mon, 19 Oct 2026 22:12:26 GMT  
		Size: 6.2 MB (6191938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f199b44b4a456f30f4bf83718bc6f30e4e26af07d14ba61bff1893b23faa5ac9`  
		Last Modified: Mon, 19 Oct 2026 22:12:25 GMT  
		Size: 2.6 KB (2604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:060b79e73b8f1830d4d25cf2d57b410c8a8640a94b0b329973d833b752f7c035`  
		Last Modified: Mon, 19 Oct 2026 22:12:26 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d9f3d1a8deffb2e7f2b648500cb5aece1fdd988446c3a360c03a97a9d06cdd6`  
		Last Modified: Mon, 19 Oct 2026 22:12:30 GMT  
		Size: 57.4 MB (57437897 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1fabc4a3637fdd55b86b8f7a2548c3b193a3569e1137928dcde6d4a42a46be9`  
		Last Modified: Mon, 19 Oct 2026 22:12:27 GMT  
		Size: 326.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7db1bb89cbc4d23152d624c7f7c57a98c75a7565560b529548bdbc6cb486513c`  
		Last Modified: Mon, 19 Oct 2026 22:12:33 GMT  
		Size: 160.0 MB (159955649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb74f524e49e3968e580145179382494e7a0e31255dac62d26c194b8ec0ad1ef`  
		Last Modified: Mon, 19 Oct 2026 22:12:28 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:innovation` - unknown; unknown

```console
$ docker pull mysql@sha256:94ff462a7b39f7a903f4f8d59445d01f3bd7c3642f682e492da5971fb206c250
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17452728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ed6463046ddfe770add4ea46c22c3909fdee240dc241c3a135e452e2296d176`

```dockerfile
```

-	Layers:
	-	`sha256:51049565ee073ca022cb8f6795c32cd6051ad27236c27b99b329963d1adf6421`  
		Last Modified: Mon, 19 Oct 2026 22:12:26 GMT  
		Size: 17.4 MB (17417431 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e9ba03e279680810d38a4e92aaf18ca0f0091d6187e1c4a6cc798733ccfb76c7`  
		Last Modified: Mon, 19 Oct 2026 22:12:25 GMT  
		Size: 35.3 KB (35297 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:innovation` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:3142cfba35bd09e111cc37917bd69b0c647a8ed5b05882bf39150a50d3ace5d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.0 MB (267991662 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87491a2172fe6cf721c0c6257e084ffddf67de9dc4dd5d1bdfd5a58a7c84d9d1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:44 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:44 GMT
CMD ["/bin/bash"]
# Mon, 19 Oct 2026 22:09:48 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 19 Oct 2026 22:09:50 GMT
ENV GOSU_VERSION=1.19
# Mon, 19 Oct 2026 22:09:50 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 19 Oct 2026 22:10:28 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 19 Oct 2026 22:10:29 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 19 Oct 2026 22:10:29 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 19 Oct 2026 22:10:29 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Mon, 19 Oct 2026 22:10:30 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 19 Oct 2026 22:11:12 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 19 Oct 2026 22:11:12 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 19 Oct 2026 22:11:12 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Mon, 19 Oct 2026 22:12:04 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 19 Oct 2026 22:12:04 GMT
VOLUME [/var/lib/mysql]
# Mon, 19 Oct 2026 22:12:04 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 19 Oct 2026 22:12:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Oct 2026 22:12:04 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 19 Oct 2026 22:12:04 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ec733952651fc70d299ac3951cabb9fafd032cc96e2ff71bdfd675ac20ca9c93`  
		Last Modified: Mon, 19 Oct 2026 21:32:56 GMT  
		Size: 45.8 MB (45800185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06985fa0a8e5b713efdeea0dd47174f98536b59365e86b2b98a6496c2f524e28`  
		Last Modified: Mon, 19 Oct 2026 22:12:40 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:922be94786f7a52ce0063916103f24ed3e79029d417e7f8eebb4ab583bb8b10f`  
		Last Modified: Mon, 19 Oct 2026 22:12:40 GMT  
		Size: 737.5 KB (737531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2612d51357fc7ea0bbe1cc5a28a82f735fefc5873cc8bf8207e8f2a18c03f38`  
		Last Modified: Mon, 19 Oct 2026 22:12:40 GMT  
		Size: 5.8 MB (5810113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd0d65a74e9a9cab1d5bcc2cffdc9234856199bfbbb67fbeeafac63ecf0e6013`  
		Last Modified: Mon, 19 Oct 2026 22:12:40 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:156f454d96dcd3a24cf535063603efe151d943fe56c3d099c6d74aaed039f7c2`  
		Last Modified: Mon, 19 Oct 2026 22:12:41 GMT  
		Size: 341.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:538d2383f2ee9345637666c09b4b4f5fa11edb755f5b80738e6dd94b368aacd0`  
		Last Modified: Mon, 19 Oct 2026 22:12:43 GMT  
		Size: 57.4 MB (57410064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ed94f8c2c34213ad370d8819b4d44de3c51c248247d3a252e02424f68532c9e`  
		Last Modified: Mon, 19 Oct 2026 22:12:41 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ff85ff20790fb64ffea819d45ae93376076f1a34fcb9fd165c502a4174755b3`  
		Last Modified: Mon, 19 Oct 2026 22:12:45 GMT  
		Size: 158.2 MB (158224389 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:896de949514283536a3d329e9f2741dab327d5126714d0c9c95e796f003cac2e`  
		Last Modified: Mon, 19 Oct 2026 22:12:42 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:innovation` - unknown; unknown

```console
$ docker pull mysql@sha256:e596e7724b70f73d353b8ef2fb5d92f14f91a6164fcd7992f7d2ef30d7b17e8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17451543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e9a8b60dee04dc5f1dec5aadf1d54374bb31bf407f5f8e1011b487c659c48be`

```dockerfile
```

-	Layers:
	-	`sha256:67d4b6cf13f509bee2e27cda4b68342cb80857f578bdc7b3a297a8fc9aba3f0e`  
		Last Modified: Mon, 19 Oct 2026 22:12:41 GMT  
		Size: 17.4 MB (17415904 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d95cfeeb1a93b6549f21afb762846a7aabc5fd73117791164b1c3e550f27a37d`  
		Last Modified: Mon, 19 Oct 2026 22:12:40 GMT  
		Size: 35.6 KB (35639 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:innovation-oracle`

```console
$ docker pull mysql@sha256:625f74ddf93652d9d0f8d4ea7d741b9189554a5e96d27bb770abd0902d89c6e3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:innovation-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:67e8e370d4aa4b6103bb3bbcc2a1c96ed367dd34dfc2c88aa7f1a37d3c8cf44a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.6 MB (271627594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:420f00813dd560a6ffd6a8c8adeb6c7266c7b80d3c3f17c2d64e9b9dfaf1358c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:48 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:48 GMT
CMD ["/bin/bash"]
# Mon, 19 Oct 2026 22:09:53 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 19 Oct 2026 22:09:55 GMT
ENV GOSU_VERSION=1.19
# Mon, 19 Oct 2026 22:09:55 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 19 Oct 2026 22:10:28 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 19 Oct 2026 22:10:28 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 19 Oct 2026 22:10:28 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 19 Oct 2026 22:10:28 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Mon, 19 Oct 2026 22:10:28 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 19 Oct 2026 22:11:05 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 19 Oct 2026 22:11:05 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 19 Oct 2026 22:11:05 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Mon, 19 Oct 2026 22:11:51 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 19 Oct 2026 22:11:51 GMT
VOLUME [/var/lib/mysql]
# Mon, 19 Oct 2026 22:11:51 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 19 Oct 2026 22:11:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Oct 2026 22:11:51 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 19 Oct 2026 22:11:51 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:97347cf073b19c00bee840fa47d2cd0537dbf5eb581be49840c203f71c0a5c75`  
		Last Modified: Mon, 19 Oct 2026 21:33:00 GMT  
		Size: 47.2 MB (47249168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f196ecbd4d03904b7f898d0a71b22b8cbfdcac9238452b9f73490108d7e37f7f`  
		Last Modified: Mon, 19 Oct 2026 22:12:25 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6a54fa3bc08abd9bf407ca52683d2095dd0a30ebe9acb780d4c1358d77ba596`  
		Last Modified: Mon, 19 Oct 2026 22:12:25 GMT  
		Size: 783.6 KB (783561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac0ac319b025e2bfce6fa355ba821125b4a5ab6d7898bc47393b76a2043ff9f8`  
		Last Modified: Mon, 19 Oct 2026 22:12:26 GMT  
		Size: 6.2 MB (6191938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f199b44b4a456f30f4bf83718bc6f30e4e26af07d14ba61bff1893b23faa5ac9`  
		Last Modified: Mon, 19 Oct 2026 22:12:25 GMT  
		Size: 2.6 KB (2604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:060b79e73b8f1830d4d25cf2d57b410c8a8640a94b0b329973d833b752f7c035`  
		Last Modified: Mon, 19 Oct 2026 22:12:26 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d9f3d1a8deffb2e7f2b648500cb5aece1fdd988446c3a360c03a97a9d06cdd6`  
		Last Modified: Mon, 19 Oct 2026 22:12:30 GMT  
		Size: 57.4 MB (57437897 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1fabc4a3637fdd55b86b8f7a2548c3b193a3569e1137928dcde6d4a42a46be9`  
		Last Modified: Mon, 19 Oct 2026 22:12:27 GMT  
		Size: 326.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7db1bb89cbc4d23152d624c7f7c57a98c75a7565560b529548bdbc6cb486513c`  
		Last Modified: Mon, 19 Oct 2026 22:12:33 GMT  
		Size: 160.0 MB (159955649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb74f524e49e3968e580145179382494e7a0e31255dac62d26c194b8ec0ad1ef`  
		Last Modified: Mon, 19 Oct 2026 22:12:28 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:innovation-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:94ff462a7b39f7a903f4f8d59445d01f3bd7c3642f682e492da5971fb206c250
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17452728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ed6463046ddfe770add4ea46c22c3909fdee240dc241c3a135e452e2296d176`

```dockerfile
```

-	Layers:
	-	`sha256:51049565ee073ca022cb8f6795c32cd6051ad27236c27b99b329963d1adf6421`  
		Last Modified: Mon, 19 Oct 2026 22:12:26 GMT  
		Size: 17.4 MB (17417431 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e9ba03e279680810d38a4e92aaf18ca0f0091d6187e1c4a6cc798733ccfb76c7`  
		Last Modified: Mon, 19 Oct 2026 22:12:25 GMT  
		Size: 35.3 KB (35297 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:innovation-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:3142cfba35bd09e111cc37917bd69b0c647a8ed5b05882bf39150a50d3ace5d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.0 MB (267991662 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87491a2172fe6cf721c0c6257e084ffddf67de9dc4dd5d1bdfd5a58a7c84d9d1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:44 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:44 GMT
CMD ["/bin/bash"]
# Mon, 19 Oct 2026 22:09:48 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 19 Oct 2026 22:09:50 GMT
ENV GOSU_VERSION=1.19
# Mon, 19 Oct 2026 22:09:50 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 19 Oct 2026 22:10:28 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 19 Oct 2026 22:10:29 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 19 Oct 2026 22:10:29 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 19 Oct 2026 22:10:29 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Mon, 19 Oct 2026 22:10:30 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 19 Oct 2026 22:11:12 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 19 Oct 2026 22:11:12 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 19 Oct 2026 22:11:12 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Mon, 19 Oct 2026 22:12:04 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 19 Oct 2026 22:12:04 GMT
VOLUME [/var/lib/mysql]
# Mon, 19 Oct 2026 22:12:04 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 19 Oct 2026 22:12:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Oct 2026 22:12:04 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 19 Oct 2026 22:12:04 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ec733952651fc70d299ac3951cabb9fafd032cc96e2ff71bdfd675ac20ca9c93`  
		Last Modified: Mon, 19 Oct 2026 21:32:56 GMT  
		Size: 45.8 MB (45800185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06985fa0a8e5b713efdeea0dd47174f98536b59365e86b2b98a6496c2f524e28`  
		Last Modified: Mon, 19 Oct 2026 22:12:40 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:922be94786f7a52ce0063916103f24ed3e79029d417e7f8eebb4ab583bb8b10f`  
		Last Modified: Mon, 19 Oct 2026 22:12:40 GMT  
		Size: 737.5 KB (737531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2612d51357fc7ea0bbe1cc5a28a82f735fefc5873cc8bf8207e8f2a18c03f38`  
		Last Modified: Mon, 19 Oct 2026 22:12:40 GMT  
		Size: 5.8 MB (5810113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd0d65a74e9a9cab1d5bcc2cffdc9234856199bfbbb67fbeeafac63ecf0e6013`  
		Last Modified: Mon, 19 Oct 2026 22:12:40 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:156f454d96dcd3a24cf535063603efe151d943fe56c3d099c6d74aaed039f7c2`  
		Last Modified: Mon, 19 Oct 2026 22:12:41 GMT  
		Size: 341.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:538d2383f2ee9345637666c09b4b4f5fa11edb755f5b80738e6dd94b368aacd0`  
		Last Modified: Mon, 19 Oct 2026 22:12:43 GMT  
		Size: 57.4 MB (57410064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ed94f8c2c34213ad370d8819b4d44de3c51c248247d3a252e02424f68532c9e`  
		Last Modified: Mon, 19 Oct 2026 22:12:41 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ff85ff20790fb64ffea819d45ae93376076f1a34fcb9fd165c502a4174755b3`  
		Last Modified: Mon, 19 Oct 2026 22:12:45 GMT  
		Size: 158.2 MB (158224389 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:896de949514283536a3d329e9f2741dab327d5126714d0c9c95e796f003cac2e`  
		Last Modified: Mon, 19 Oct 2026 22:12:42 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:innovation-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:e596e7724b70f73d353b8ef2fb5d92f14f91a6164fcd7992f7d2ef30d7b17e8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17451543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e9a8b60dee04dc5f1dec5aadf1d54374bb31bf407f5f8e1011b487c659c48be`

```dockerfile
```

-	Layers:
	-	`sha256:67d4b6cf13f509bee2e27cda4b68342cb80857f578bdc7b3a297a8fc9aba3f0e`  
		Last Modified: Mon, 19 Oct 2026 22:12:41 GMT  
		Size: 17.4 MB (17415904 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d95cfeeb1a93b6549f21afb762846a7aabc5fd73117791164b1c3e550f27a37d`  
		Last Modified: Mon, 19 Oct 2026 22:12:40 GMT  
		Size: 35.6 KB (35639 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:innovation-oraclelinux9`

```console
$ docker pull mysql@sha256:625f74ddf93652d9d0f8d4ea7d741b9189554a5e96d27bb770abd0902d89c6e3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:innovation-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:67e8e370d4aa4b6103bb3bbcc2a1c96ed367dd34dfc2c88aa7f1a37d3c8cf44a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.6 MB (271627594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:420f00813dd560a6ffd6a8c8adeb6c7266c7b80d3c3f17c2d64e9b9dfaf1358c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:48 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:48 GMT
CMD ["/bin/bash"]
# Mon, 19 Oct 2026 22:09:53 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 19 Oct 2026 22:09:55 GMT
ENV GOSU_VERSION=1.19
# Mon, 19 Oct 2026 22:09:55 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 19 Oct 2026 22:10:28 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 19 Oct 2026 22:10:28 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 19 Oct 2026 22:10:28 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 19 Oct 2026 22:10:28 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Mon, 19 Oct 2026 22:10:28 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 19 Oct 2026 22:11:05 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 19 Oct 2026 22:11:05 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 19 Oct 2026 22:11:05 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Mon, 19 Oct 2026 22:11:51 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 19 Oct 2026 22:11:51 GMT
VOLUME [/var/lib/mysql]
# Mon, 19 Oct 2026 22:11:51 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 19 Oct 2026 22:11:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Oct 2026 22:11:51 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 19 Oct 2026 22:11:51 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:97347cf073b19c00bee840fa47d2cd0537dbf5eb581be49840c203f71c0a5c75`  
		Last Modified: Mon, 19 Oct 2026 21:33:00 GMT  
		Size: 47.2 MB (47249168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f196ecbd4d03904b7f898d0a71b22b8cbfdcac9238452b9f73490108d7e37f7f`  
		Last Modified: Mon, 19 Oct 2026 22:12:25 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6a54fa3bc08abd9bf407ca52683d2095dd0a30ebe9acb780d4c1358d77ba596`  
		Last Modified: Mon, 19 Oct 2026 22:12:25 GMT  
		Size: 783.6 KB (783561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac0ac319b025e2bfce6fa355ba821125b4a5ab6d7898bc47393b76a2043ff9f8`  
		Last Modified: Mon, 19 Oct 2026 22:12:26 GMT  
		Size: 6.2 MB (6191938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f199b44b4a456f30f4bf83718bc6f30e4e26af07d14ba61bff1893b23faa5ac9`  
		Last Modified: Mon, 19 Oct 2026 22:12:25 GMT  
		Size: 2.6 KB (2604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:060b79e73b8f1830d4d25cf2d57b410c8a8640a94b0b329973d833b752f7c035`  
		Last Modified: Mon, 19 Oct 2026 22:12:26 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d9f3d1a8deffb2e7f2b648500cb5aece1fdd988446c3a360c03a97a9d06cdd6`  
		Last Modified: Mon, 19 Oct 2026 22:12:30 GMT  
		Size: 57.4 MB (57437897 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1fabc4a3637fdd55b86b8f7a2548c3b193a3569e1137928dcde6d4a42a46be9`  
		Last Modified: Mon, 19 Oct 2026 22:12:27 GMT  
		Size: 326.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7db1bb89cbc4d23152d624c7f7c57a98c75a7565560b529548bdbc6cb486513c`  
		Last Modified: Mon, 19 Oct 2026 22:12:33 GMT  
		Size: 160.0 MB (159955649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb74f524e49e3968e580145179382494e7a0e31255dac62d26c194b8ec0ad1ef`  
		Last Modified: Mon, 19 Oct 2026 22:12:28 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:innovation-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:94ff462a7b39f7a903f4f8d59445d01f3bd7c3642f682e492da5971fb206c250
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17452728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ed6463046ddfe770add4ea46c22c3909fdee240dc241c3a135e452e2296d176`

```dockerfile
```

-	Layers:
	-	`sha256:51049565ee073ca022cb8f6795c32cd6051ad27236c27b99b329963d1adf6421`  
		Last Modified: Mon, 19 Oct 2026 22:12:26 GMT  
		Size: 17.4 MB (17417431 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e9ba03e279680810d38a4e92aaf18ca0f0091d6187e1c4a6cc798733ccfb76c7`  
		Last Modified: Mon, 19 Oct 2026 22:12:25 GMT  
		Size: 35.3 KB (35297 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:innovation-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:3142cfba35bd09e111cc37917bd69b0c647a8ed5b05882bf39150a50d3ace5d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.0 MB (267991662 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87491a2172fe6cf721c0c6257e084ffddf67de9dc4dd5d1bdfd5a58a7c84d9d1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:44 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:44 GMT
CMD ["/bin/bash"]
# Mon, 19 Oct 2026 22:09:48 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 19 Oct 2026 22:09:50 GMT
ENV GOSU_VERSION=1.19
# Mon, 19 Oct 2026 22:09:50 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 19 Oct 2026 22:10:28 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 19 Oct 2026 22:10:29 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 19 Oct 2026 22:10:29 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 19 Oct 2026 22:10:29 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Mon, 19 Oct 2026 22:10:30 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 19 Oct 2026 22:11:12 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 19 Oct 2026 22:11:12 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 19 Oct 2026 22:11:12 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Mon, 19 Oct 2026 22:12:04 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 19 Oct 2026 22:12:04 GMT
VOLUME [/var/lib/mysql]
# Mon, 19 Oct 2026 22:12:04 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 19 Oct 2026 22:12:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Oct 2026 22:12:04 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 19 Oct 2026 22:12:04 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ec733952651fc70d299ac3951cabb9fafd032cc96e2ff71bdfd675ac20ca9c93`  
		Last Modified: Mon, 19 Oct 2026 21:32:56 GMT  
		Size: 45.8 MB (45800185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06985fa0a8e5b713efdeea0dd47174f98536b59365e86b2b98a6496c2f524e28`  
		Last Modified: Mon, 19 Oct 2026 22:12:40 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:922be94786f7a52ce0063916103f24ed3e79029d417e7f8eebb4ab583bb8b10f`  
		Last Modified: Mon, 19 Oct 2026 22:12:40 GMT  
		Size: 737.5 KB (737531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2612d51357fc7ea0bbe1cc5a28a82f735fefc5873cc8bf8207e8f2a18c03f38`  
		Last Modified: Mon, 19 Oct 2026 22:12:40 GMT  
		Size: 5.8 MB (5810113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd0d65a74e9a9cab1d5bcc2cffdc9234856199bfbbb67fbeeafac63ecf0e6013`  
		Last Modified: Mon, 19 Oct 2026 22:12:40 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:156f454d96dcd3a24cf535063603efe151d943fe56c3d099c6d74aaed039f7c2`  
		Last Modified: Mon, 19 Oct 2026 22:12:41 GMT  
		Size: 341.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:538d2383f2ee9345637666c09b4b4f5fa11edb755f5b80738e6dd94b368aacd0`  
		Last Modified: Mon, 19 Oct 2026 22:12:43 GMT  
		Size: 57.4 MB (57410064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ed94f8c2c34213ad370d8819b4d44de3c51c248247d3a252e02424f68532c9e`  
		Last Modified: Mon, 19 Oct 2026 22:12:41 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ff85ff20790fb64ffea819d45ae93376076f1a34fcb9fd165c502a4174755b3`  
		Last Modified: Mon, 19 Oct 2026 22:12:45 GMT  
		Size: 158.2 MB (158224389 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:896de949514283536a3d329e9f2741dab327d5126714d0c9c95e796f003cac2e`  
		Last Modified: Mon, 19 Oct 2026 22:12:42 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:innovation-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:e596e7724b70f73d353b8ef2fb5d92f14f91a6164fcd7992f7d2ef30d7b17e8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17451543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e9a8b60dee04dc5f1dec5aadf1d54374bb31bf407f5f8e1011b487c659c48be`

```dockerfile
```

-	Layers:
	-	`sha256:67d4b6cf13f509bee2e27cda4b68342cb80857f578bdc7b3a297a8fc9aba3f0e`  
		Last Modified: Mon, 19 Oct 2026 22:12:41 GMT  
		Size: 17.4 MB (17415904 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d95cfeeb1a93b6549f21afb762846a7aabc5fd73117791164b1c3e550f27a37d`  
		Last Modified: Mon, 19 Oct 2026 22:12:40 GMT  
		Size: 35.6 KB (35639 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:latest`

```console
$ docker pull mysql@sha256:625f74ddf93652d9d0f8d4ea7d741b9189554a5e96d27bb770abd0902d89c6e3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:latest` - linux; amd64

```console
$ docker pull mysql@sha256:67e8e370d4aa4b6103bb3bbcc2a1c96ed367dd34dfc2c88aa7f1a37d3c8cf44a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.6 MB (271627594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:420f00813dd560a6ffd6a8c8adeb6c7266c7b80d3c3f17c2d64e9b9dfaf1358c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:48 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:48 GMT
CMD ["/bin/bash"]
# Mon, 19 Oct 2026 22:09:53 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 19 Oct 2026 22:09:55 GMT
ENV GOSU_VERSION=1.19
# Mon, 19 Oct 2026 22:09:55 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 19 Oct 2026 22:10:28 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 19 Oct 2026 22:10:28 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 19 Oct 2026 22:10:28 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 19 Oct 2026 22:10:28 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Mon, 19 Oct 2026 22:10:28 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 19 Oct 2026 22:11:05 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 19 Oct 2026 22:11:05 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 19 Oct 2026 22:11:05 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Mon, 19 Oct 2026 22:11:51 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 19 Oct 2026 22:11:51 GMT
VOLUME [/var/lib/mysql]
# Mon, 19 Oct 2026 22:11:51 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 19 Oct 2026 22:11:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Oct 2026 22:11:51 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 19 Oct 2026 22:11:51 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:97347cf073b19c00bee840fa47d2cd0537dbf5eb581be49840c203f71c0a5c75`  
		Last Modified: Mon, 19 Oct 2026 21:33:00 GMT  
		Size: 47.2 MB (47249168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f196ecbd4d03904b7f898d0a71b22b8cbfdcac9238452b9f73490108d7e37f7f`  
		Last Modified: Mon, 19 Oct 2026 22:12:25 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6a54fa3bc08abd9bf407ca52683d2095dd0a30ebe9acb780d4c1358d77ba596`  
		Last Modified: Mon, 19 Oct 2026 22:12:25 GMT  
		Size: 783.6 KB (783561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac0ac319b025e2bfce6fa355ba821125b4a5ab6d7898bc47393b76a2043ff9f8`  
		Last Modified: Mon, 19 Oct 2026 22:12:26 GMT  
		Size: 6.2 MB (6191938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f199b44b4a456f30f4bf83718bc6f30e4e26af07d14ba61bff1893b23faa5ac9`  
		Last Modified: Mon, 19 Oct 2026 22:12:25 GMT  
		Size: 2.6 KB (2604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:060b79e73b8f1830d4d25cf2d57b410c8a8640a94b0b329973d833b752f7c035`  
		Last Modified: Mon, 19 Oct 2026 22:12:26 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d9f3d1a8deffb2e7f2b648500cb5aece1fdd988446c3a360c03a97a9d06cdd6`  
		Last Modified: Mon, 19 Oct 2026 22:12:30 GMT  
		Size: 57.4 MB (57437897 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1fabc4a3637fdd55b86b8f7a2548c3b193a3569e1137928dcde6d4a42a46be9`  
		Last Modified: Mon, 19 Oct 2026 22:12:27 GMT  
		Size: 326.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7db1bb89cbc4d23152d624c7f7c57a98c75a7565560b529548bdbc6cb486513c`  
		Last Modified: Mon, 19 Oct 2026 22:12:33 GMT  
		Size: 160.0 MB (159955649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb74f524e49e3968e580145179382494e7a0e31255dac62d26c194b8ec0ad1ef`  
		Last Modified: Mon, 19 Oct 2026 22:12:28 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:latest` - unknown; unknown

```console
$ docker pull mysql@sha256:94ff462a7b39f7a903f4f8d59445d01f3bd7c3642f682e492da5971fb206c250
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17452728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ed6463046ddfe770add4ea46c22c3909fdee240dc241c3a135e452e2296d176`

```dockerfile
```

-	Layers:
	-	`sha256:51049565ee073ca022cb8f6795c32cd6051ad27236c27b99b329963d1adf6421`  
		Last Modified: Mon, 19 Oct 2026 22:12:26 GMT  
		Size: 17.4 MB (17417431 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e9ba03e279680810d38a4e92aaf18ca0f0091d6187e1c4a6cc798733ccfb76c7`  
		Last Modified: Mon, 19 Oct 2026 22:12:25 GMT  
		Size: 35.3 KB (35297 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:latest` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:3142cfba35bd09e111cc37917bd69b0c647a8ed5b05882bf39150a50d3ace5d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.0 MB (267991662 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87491a2172fe6cf721c0c6257e084ffddf67de9dc4dd5d1bdfd5a58a7c84d9d1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:44 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:44 GMT
CMD ["/bin/bash"]
# Mon, 19 Oct 2026 22:09:48 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 19 Oct 2026 22:09:50 GMT
ENV GOSU_VERSION=1.19
# Mon, 19 Oct 2026 22:09:50 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 19 Oct 2026 22:10:28 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 19 Oct 2026 22:10:29 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 19 Oct 2026 22:10:29 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 19 Oct 2026 22:10:29 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Mon, 19 Oct 2026 22:10:30 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 19 Oct 2026 22:11:12 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 19 Oct 2026 22:11:12 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 19 Oct 2026 22:11:12 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Mon, 19 Oct 2026 22:12:04 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 19 Oct 2026 22:12:04 GMT
VOLUME [/var/lib/mysql]
# Mon, 19 Oct 2026 22:12:04 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 19 Oct 2026 22:12:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Oct 2026 22:12:04 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 19 Oct 2026 22:12:04 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ec733952651fc70d299ac3951cabb9fafd032cc96e2ff71bdfd675ac20ca9c93`  
		Last Modified: Mon, 19 Oct 2026 21:32:56 GMT  
		Size: 45.8 MB (45800185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06985fa0a8e5b713efdeea0dd47174f98536b59365e86b2b98a6496c2f524e28`  
		Last Modified: Mon, 19 Oct 2026 22:12:40 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:922be94786f7a52ce0063916103f24ed3e79029d417e7f8eebb4ab583bb8b10f`  
		Last Modified: Mon, 19 Oct 2026 22:12:40 GMT  
		Size: 737.5 KB (737531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2612d51357fc7ea0bbe1cc5a28a82f735fefc5873cc8bf8207e8f2a18c03f38`  
		Last Modified: Mon, 19 Oct 2026 22:12:40 GMT  
		Size: 5.8 MB (5810113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd0d65a74e9a9cab1d5bcc2cffdc9234856199bfbbb67fbeeafac63ecf0e6013`  
		Last Modified: Mon, 19 Oct 2026 22:12:40 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:156f454d96dcd3a24cf535063603efe151d943fe56c3d099c6d74aaed039f7c2`  
		Last Modified: Mon, 19 Oct 2026 22:12:41 GMT  
		Size: 341.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:538d2383f2ee9345637666c09b4b4f5fa11edb755f5b80738e6dd94b368aacd0`  
		Last Modified: Mon, 19 Oct 2026 22:12:43 GMT  
		Size: 57.4 MB (57410064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ed94f8c2c34213ad370d8819b4d44de3c51c248247d3a252e02424f68532c9e`  
		Last Modified: Mon, 19 Oct 2026 22:12:41 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ff85ff20790fb64ffea819d45ae93376076f1a34fcb9fd165c502a4174755b3`  
		Last Modified: Mon, 19 Oct 2026 22:12:45 GMT  
		Size: 158.2 MB (158224389 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:896de949514283536a3d329e9f2741dab327d5126714d0c9c95e796f003cac2e`  
		Last Modified: Mon, 19 Oct 2026 22:12:42 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:latest` - unknown; unknown

```console
$ docker pull mysql@sha256:e596e7724b70f73d353b8ef2fb5d92f14f91a6164fcd7992f7d2ef30d7b17e8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17451543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e9a8b60dee04dc5f1dec5aadf1d54374bb31bf407f5f8e1011b487c659c48be`

```dockerfile
```

-	Layers:
	-	`sha256:67d4b6cf13f509bee2e27cda4b68342cb80857f578bdc7b3a297a8fc9aba3f0e`  
		Last Modified: Mon, 19 Oct 2026 22:12:41 GMT  
		Size: 17.4 MB (17415904 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d95cfeeb1a93b6549f21afb762846a7aabc5fd73117791164b1c3e550f27a37d`  
		Last Modified: Mon, 19 Oct 2026 22:12:40 GMT  
		Size: 35.6 KB (35639 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:lts`

```console
$ docker pull mysql@sha256:e2fa358a74ac81148e7e27d9433e4c0ab62133de8ea4428b4f39a51a4ba7d07f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:lts` - linux; amd64

```console
$ docker pull mysql@sha256:79b171dd2361300260ebceb30bb1c669fa8f70183ae250773b56b62d9031338b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.2 MB (270190292 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3121b912b942b8b46646b1f64c955958b8353e8902693ba962a2e37d2d3224bd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:48 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:48 GMT
CMD ["/bin/bash"]
# Mon, 19 Oct 2026 22:10:24 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 19 Oct 2026 22:10:26 GMT
ENV GOSU_VERSION=1.19
# Mon, 19 Oct 2026 22:10:26 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 19 Oct 2026 22:10:56 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 19 Oct 2026 22:10:57 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 19 Oct 2026 22:10:57 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 19 Oct 2026 22:10:57 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Mon, 19 Oct 2026 22:10:57 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 19 Oct 2026 22:11:31 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 19 Oct 2026 22:11:31 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 19 Oct 2026 22:11:31 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 19 Oct 2026 22:12:13 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 19 Oct 2026 22:12:13 GMT
VOLUME [/var/lib/mysql]
# Mon, 19 Oct 2026 22:12:14 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 19 Oct 2026 22:12:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Oct 2026 22:12:14 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 19 Oct 2026 22:12:14 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:97347cf073b19c00bee840fa47d2cd0537dbf5eb581be49840c203f71c0a5c75`  
		Last Modified: Mon, 19 Oct 2026 21:33:00 GMT  
		Size: 47.2 MB (47249168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cadb9833f9640be6821819be271a015e09c7f9e69897c48da5191a1d3426002c`  
		Last Modified: Mon, 19 Oct 2026 22:12:46 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d138ac7b7131445cb7c46672c31907d332093b370bd9e5025bf405a4ec1f23cf`  
		Last Modified: Mon, 19 Oct 2026 22:12:46 GMT  
		Size: 783.6 KB (783563 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5aa7cdeecab35ba178b132ca460f872efc08bdfd767acf7126bc29defdff4af`  
		Last Modified: Mon, 19 Oct 2026 22:12:46 GMT  
		Size: 6.2 MB (6191942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d251a15b2e9be349e400f5404a5ba0c90101dc2e0e46513fa25d3c44c72fd1bd`  
		Last Modified: Mon, 19 Oct 2026 22:12:46 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b826c189499aa1eebb2aec3b4c7389fe2cb3c7da68040153c5a96af013f8e9f8`  
		Last Modified: Mon, 19 Oct 2026 22:12:47 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c99317820bef5f3376a0d497a979f10f4edaadf740cdaa9644861aa78d9ea3f`  
		Last Modified: Mon, 19 Oct 2026 22:12:50 GMT  
		Size: 57.0 MB (57036595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29ba63aea84e725979e0cf1d7da93a37d8472794dfe8250a6349a585aa3924ee`  
		Last Modified: Mon, 19 Oct 2026 22:12:47 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa1523a9660469b441ceb99060ecfa4f23dd1b16f0af8d03e48e420e351aa845`  
		Last Modified: Mon, 19 Oct 2026 22:12:52 GMT  
		Size: 158.9 MB (158919647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecddbf050025c388de325ced04024f9405d90eeea1401d5ecb12fc3559460024`  
		Last Modified: Mon, 19 Oct 2026 22:12:49 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:lts` - unknown; unknown

```console
$ docker pull mysql@sha256:fc1f2eb720d2b7d4918028136a90d05eecc15ffb27d2499ad886d17294ed36ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e7588e9af8d236fc33a7761755ca15ea2b59124123e290a0c3ea812bdae952b`

```dockerfile
```

-	Layers:
	-	`sha256:f72747e0555d585ceab9cf10e1fcab429406a8abe353f816b78268a1ca1b36d1`  
		Last Modified: Mon, 19 Oct 2026 22:12:46 GMT  
		Size: 16.8 MB (16799207 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b1c8d034eb9480b6bac53c334ae80023c49e6c487f6c1f6c864ac6f3d482cb6c`  
		Last Modified: Mon, 19 Oct 2026 22:12:46 GMT  
		Size: 34.2 KB (34208 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:lts` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:ebaa6b336278200e9c5530e16e4949f548fa4a36ac34f9ce286027fe8427a395
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.7 MB (266650052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d89b57f81f2883b7c159aabb4484a5b84874968dfb85b45889183877b571fd3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:44 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:44 GMT
CMD ["/bin/bash"]
# Mon, 19 Oct 2026 22:10:15 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 19 Oct 2026 22:10:17 GMT
ENV GOSU_VERSION=1.19
# Mon, 19 Oct 2026 22:10:17 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 19 Oct 2026 22:10:57 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 19 Oct 2026 22:10:58 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 19 Oct 2026 22:10:58 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 19 Oct 2026 22:10:58 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Mon, 19 Oct 2026 22:10:58 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 19 Oct 2026 22:11:41 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 19 Oct 2026 22:11:41 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 19 Oct 2026 22:11:41 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 19 Oct 2026 22:12:32 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 19 Oct 2026 22:12:32 GMT
VOLUME [/var/lib/mysql]
# Mon, 19 Oct 2026 22:12:32 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 19 Oct 2026 22:12:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Oct 2026 22:12:32 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 19 Oct 2026 22:12:32 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ec733952651fc70d299ac3951cabb9fafd032cc96e2ff71bdfd675ac20ca9c93`  
		Last Modified: Mon, 19 Oct 2026 21:32:56 GMT  
		Size: 45.8 MB (45800185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebc1495f726d32f6282c2756c6bb1998a3a0f7634c09d40bdf33d22b32cda624`  
		Last Modified: Mon, 19 Oct 2026 22:13:08 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37f823b0d0b9d9857956662204b1e016ddf30c0c8f0d9f9337ee08c40029baf4`  
		Last Modified: Mon, 19 Oct 2026 22:13:08 GMT  
		Size: 737.5 KB (737529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6aa547218551ddc4cccdea4f5d46f8f1b7874936754bc0e3504a95d35458d68`  
		Last Modified: Mon, 19 Oct 2026 22:13:09 GMT  
		Size: 5.8 MB (5810212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:592f1c9ce727db0667133c9b3a69634130e63ff558c059c208ca0ebcb1422a95`  
		Last Modified: Mon, 19 Oct 2026 22:13:08 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c417b1929de890d00560012c3acda3aac8a444087b18bee5c332c8ba5345c04e`  
		Last Modified: Mon, 19 Oct 2026 22:13:09 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4405368330ddbe36b2c9d426ddb0a0cfe9113372d08f0ca3ba0604992980e4f1`  
		Last Modified: Mon, 19 Oct 2026 22:13:12 GMT  
		Size: 57.1 MB (57100634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ead69b000fe6633648f64c4a5664b99b8c9de769748805ca842b1d727cc4e59`  
		Last Modified: Mon, 19 Oct 2026 22:13:10 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc960e1344d9ecc38c892f700a74186e8e6db956dc9d2efe20f359c6e5e2b9d5`  
		Last Modified: Mon, 19 Oct 2026 22:13:14 GMT  
		Size: 157.2 MB (157192116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d6fe93b02fd5cc7019ff8962eb0ea03fd4cc334d261030d27eb16d4a13db5ed`  
		Last Modified: Mon, 19 Oct 2026 22:13:11 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:lts` - unknown; unknown

```console
$ docker pull mysql@sha256:9db506aac879a04bd0f8657b10d9e04a2d158fdd5543d665367b6340a23f77f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16832155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f33def755137bbf4d7f42c92a84a0251e16e8b09704b6b9f385e01ccfdb5e52f`

```dockerfile
```

-	Layers:
	-	`sha256:1d4b38242995eb4ca51dba710e82b095a5eb6184c908582023f93f4e9e012123`  
		Last Modified: Mon, 19 Oct 2026 22:13:09 GMT  
		Size: 16.8 MB (16797643 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1ef468392047577812af03c88930ecba944e2eaaf6935087911adcd4a149f9e8`  
		Last Modified: Mon, 19 Oct 2026 22:13:08 GMT  
		Size: 34.5 KB (34512 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:lts-oracle`

```console
$ docker pull mysql@sha256:e2fa358a74ac81148e7e27d9433e4c0ab62133de8ea4428b4f39a51a4ba7d07f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:lts-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:79b171dd2361300260ebceb30bb1c669fa8f70183ae250773b56b62d9031338b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.2 MB (270190292 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3121b912b942b8b46646b1f64c955958b8353e8902693ba962a2e37d2d3224bd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:48 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:48 GMT
CMD ["/bin/bash"]
# Mon, 19 Oct 2026 22:10:24 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 19 Oct 2026 22:10:26 GMT
ENV GOSU_VERSION=1.19
# Mon, 19 Oct 2026 22:10:26 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 19 Oct 2026 22:10:56 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 19 Oct 2026 22:10:57 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 19 Oct 2026 22:10:57 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 19 Oct 2026 22:10:57 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Mon, 19 Oct 2026 22:10:57 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 19 Oct 2026 22:11:31 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 19 Oct 2026 22:11:31 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 19 Oct 2026 22:11:31 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 19 Oct 2026 22:12:13 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 19 Oct 2026 22:12:13 GMT
VOLUME [/var/lib/mysql]
# Mon, 19 Oct 2026 22:12:14 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 19 Oct 2026 22:12:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Oct 2026 22:12:14 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 19 Oct 2026 22:12:14 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:97347cf073b19c00bee840fa47d2cd0537dbf5eb581be49840c203f71c0a5c75`  
		Last Modified: Mon, 19 Oct 2026 21:33:00 GMT  
		Size: 47.2 MB (47249168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cadb9833f9640be6821819be271a015e09c7f9e69897c48da5191a1d3426002c`  
		Last Modified: Mon, 19 Oct 2026 22:12:46 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d138ac7b7131445cb7c46672c31907d332093b370bd9e5025bf405a4ec1f23cf`  
		Last Modified: Mon, 19 Oct 2026 22:12:46 GMT  
		Size: 783.6 KB (783563 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5aa7cdeecab35ba178b132ca460f872efc08bdfd767acf7126bc29defdff4af`  
		Last Modified: Mon, 19 Oct 2026 22:12:46 GMT  
		Size: 6.2 MB (6191942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d251a15b2e9be349e400f5404a5ba0c90101dc2e0e46513fa25d3c44c72fd1bd`  
		Last Modified: Mon, 19 Oct 2026 22:12:46 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b826c189499aa1eebb2aec3b4c7389fe2cb3c7da68040153c5a96af013f8e9f8`  
		Last Modified: Mon, 19 Oct 2026 22:12:47 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c99317820bef5f3376a0d497a979f10f4edaadf740cdaa9644861aa78d9ea3f`  
		Last Modified: Mon, 19 Oct 2026 22:12:50 GMT  
		Size: 57.0 MB (57036595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29ba63aea84e725979e0cf1d7da93a37d8472794dfe8250a6349a585aa3924ee`  
		Last Modified: Mon, 19 Oct 2026 22:12:47 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa1523a9660469b441ceb99060ecfa4f23dd1b16f0af8d03e48e420e351aa845`  
		Last Modified: Mon, 19 Oct 2026 22:12:52 GMT  
		Size: 158.9 MB (158919647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecddbf050025c388de325ced04024f9405d90eeea1401d5ecb12fc3559460024`  
		Last Modified: Mon, 19 Oct 2026 22:12:49 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:lts-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:fc1f2eb720d2b7d4918028136a90d05eecc15ffb27d2499ad886d17294ed36ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e7588e9af8d236fc33a7761755ca15ea2b59124123e290a0c3ea812bdae952b`

```dockerfile
```

-	Layers:
	-	`sha256:f72747e0555d585ceab9cf10e1fcab429406a8abe353f816b78268a1ca1b36d1`  
		Last Modified: Mon, 19 Oct 2026 22:12:46 GMT  
		Size: 16.8 MB (16799207 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b1c8d034eb9480b6bac53c334ae80023c49e6c487f6c1f6c864ac6f3d482cb6c`  
		Last Modified: Mon, 19 Oct 2026 22:12:46 GMT  
		Size: 34.2 KB (34208 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:lts-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:ebaa6b336278200e9c5530e16e4949f548fa4a36ac34f9ce286027fe8427a395
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.7 MB (266650052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d89b57f81f2883b7c159aabb4484a5b84874968dfb85b45889183877b571fd3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:44 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:44 GMT
CMD ["/bin/bash"]
# Mon, 19 Oct 2026 22:10:15 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 19 Oct 2026 22:10:17 GMT
ENV GOSU_VERSION=1.19
# Mon, 19 Oct 2026 22:10:17 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 19 Oct 2026 22:10:57 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 19 Oct 2026 22:10:58 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 19 Oct 2026 22:10:58 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 19 Oct 2026 22:10:58 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Mon, 19 Oct 2026 22:10:58 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 19 Oct 2026 22:11:41 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 19 Oct 2026 22:11:41 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 19 Oct 2026 22:11:41 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 19 Oct 2026 22:12:32 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 19 Oct 2026 22:12:32 GMT
VOLUME [/var/lib/mysql]
# Mon, 19 Oct 2026 22:12:32 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 19 Oct 2026 22:12:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Oct 2026 22:12:32 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 19 Oct 2026 22:12:32 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ec733952651fc70d299ac3951cabb9fafd032cc96e2ff71bdfd675ac20ca9c93`  
		Last Modified: Mon, 19 Oct 2026 21:32:56 GMT  
		Size: 45.8 MB (45800185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebc1495f726d32f6282c2756c6bb1998a3a0f7634c09d40bdf33d22b32cda624`  
		Last Modified: Mon, 19 Oct 2026 22:13:08 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37f823b0d0b9d9857956662204b1e016ddf30c0c8f0d9f9337ee08c40029baf4`  
		Last Modified: Mon, 19 Oct 2026 22:13:08 GMT  
		Size: 737.5 KB (737529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6aa547218551ddc4cccdea4f5d46f8f1b7874936754bc0e3504a95d35458d68`  
		Last Modified: Mon, 19 Oct 2026 22:13:09 GMT  
		Size: 5.8 MB (5810212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:592f1c9ce727db0667133c9b3a69634130e63ff558c059c208ca0ebcb1422a95`  
		Last Modified: Mon, 19 Oct 2026 22:13:08 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c417b1929de890d00560012c3acda3aac8a444087b18bee5c332c8ba5345c04e`  
		Last Modified: Mon, 19 Oct 2026 22:13:09 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4405368330ddbe36b2c9d426ddb0a0cfe9113372d08f0ca3ba0604992980e4f1`  
		Last Modified: Mon, 19 Oct 2026 22:13:12 GMT  
		Size: 57.1 MB (57100634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ead69b000fe6633648f64c4a5664b99b8c9de769748805ca842b1d727cc4e59`  
		Last Modified: Mon, 19 Oct 2026 22:13:10 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc960e1344d9ecc38c892f700a74186e8e6db956dc9d2efe20f359c6e5e2b9d5`  
		Last Modified: Mon, 19 Oct 2026 22:13:14 GMT  
		Size: 157.2 MB (157192116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d6fe93b02fd5cc7019ff8962eb0ea03fd4cc334d261030d27eb16d4a13db5ed`  
		Last Modified: Mon, 19 Oct 2026 22:13:11 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:lts-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:9db506aac879a04bd0f8657b10d9e04a2d158fdd5543d665367b6340a23f77f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16832155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f33def755137bbf4d7f42c92a84a0251e16e8b09704b6b9f385e01ccfdb5e52f`

```dockerfile
```

-	Layers:
	-	`sha256:1d4b38242995eb4ca51dba710e82b095a5eb6184c908582023f93f4e9e012123`  
		Last Modified: Mon, 19 Oct 2026 22:13:09 GMT  
		Size: 16.8 MB (16797643 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1ef468392047577812af03c88930ecba944e2eaaf6935087911adcd4a149f9e8`  
		Last Modified: Mon, 19 Oct 2026 22:13:08 GMT  
		Size: 34.5 KB (34512 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:lts-oraclelinux9`

```console
$ docker pull mysql@sha256:e2fa358a74ac81148e7e27d9433e4c0ab62133de8ea4428b4f39a51a4ba7d07f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:lts-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:79b171dd2361300260ebceb30bb1c669fa8f70183ae250773b56b62d9031338b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.2 MB (270190292 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3121b912b942b8b46646b1f64c955958b8353e8902693ba962a2e37d2d3224bd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:48 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:48 GMT
CMD ["/bin/bash"]
# Mon, 19 Oct 2026 22:10:24 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 19 Oct 2026 22:10:26 GMT
ENV GOSU_VERSION=1.19
# Mon, 19 Oct 2026 22:10:26 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 19 Oct 2026 22:10:56 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 19 Oct 2026 22:10:57 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 19 Oct 2026 22:10:57 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 19 Oct 2026 22:10:57 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Mon, 19 Oct 2026 22:10:57 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 19 Oct 2026 22:11:31 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 19 Oct 2026 22:11:31 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 19 Oct 2026 22:11:31 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 19 Oct 2026 22:12:13 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 19 Oct 2026 22:12:13 GMT
VOLUME [/var/lib/mysql]
# Mon, 19 Oct 2026 22:12:14 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 19 Oct 2026 22:12:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Oct 2026 22:12:14 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 19 Oct 2026 22:12:14 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:97347cf073b19c00bee840fa47d2cd0537dbf5eb581be49840c203f71c0a5c75`  
		Last Modified: Mon, 19 Oct 2026 21:33:00 GMT  
		Size: 47.2 MB (47249168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cadb9833f9640be6821819be271a015e09c7f9e69897c48da5191a1d3426002c`  
		Last Modified: Mon, 19 Oct 2026 22:12:46 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d138ac7b7131445cb7c46672c31907d332093b370bd9e5025bf405a4ec1f23cf`  
		Last Modified: Mon, 19 Oct 2026 22:12:46 GMT  
		Size: 783.6 KB (783563 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5aa7cdeecab35ba178b132ca460f872efc08bdfd767acf7126bc29defdff4af`  
		Last Modified: Mon, 19 Oct 2026 22:12:46 GMT  
		Size: 6.2 MB (6191942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d251a15b2e9be349e400f5404a5ba0c90101dc2e0e46513fa25d3c44c72fd1bd`  
		Last Modified: Mon, 19 Oct 2026 22:12:46 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b826c189499aa1eebb2aec3b4c7389fe2cb3c7da68040153c5a96af013f8e9f8`  
		Last Modified: Mon, 19 Oct 2026 22:12:47 GMT  
		Size: 335.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c99317820bef5f3376a0d497a979f10f4edaadf740cdaa9644861aa78d9ea3f`  
		Last Modified: Mon, 19 Oct 2026 22:12:50 GMT  
		Size: 57.0 MB (57036595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29ba63aea84e725979e0cf1d7da93a37d8472794dfe8250a6349a585aa3924ee`  
		Last Modified: Mon, 19 Oct 2026 22:12:47 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa1523a9660469b441ceb99060ecfa4f23dd1b16f0af8d03e48e420e351aa845`  
		Last Modified: Mon, 19 Oct 2026 22:12:52 GMT  
		Size: 158.9 MB (158919647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecddbf050025c388de325ced04024f9405d90eeea1401d5ecb12fc3559460024`  
		Last Modified: Mon, 19 Oct 2026 22:12:49 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:lts-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:fc1f2eb720d2b7d4918028136a90d05eecc15ffb27d2499ad886d17294ed36ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e7588e9af8d236fc33a7761755ca15ea2b59124123e290a0c3ea812bdae952b`

```dockerfile
```

-	Layers:
	-	`sha256:f72747e0555d585ceab9cf10e1fcab429406a8abe353f816b78268a1ca1b36d1`  
		Last Modified: Mon, 19 Oct 2026 22:12:46 GMT  
		Size: 16.8 MB (16799207 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b1c8d034eb9480b6bac53c334ae80023c49e6c487f6c1f6c864ac6f3d482cb6c`  
		Last Modified: Mon, 19 Oct 2026 22:12:46 GMT  
		Size: 34.2 KB (34208 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:lts-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:ebaa6b336278200e9c5530e16e4949f548fa4a36ac34f9ce286027fe8427a395
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.7 MB (266650052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d89b57f81f2883b7c159aabb4484a5b84874968dfb85b45889183877b571fd3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:44 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:44 GMT
CMD ["/bin/bash"]
# Mon, 19 Oct 2026 22:10:15 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 19 Oct 2026 22:10:17 GMT
ENV GOSU_VERSION=1.19
# Mon, 19 Oct 2026 22:10:17 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 19 Oct 2026 22:10:57 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 19 Oct 2026 22:10:58 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 19 Oct 2026 22:10:58 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 19 Oct 2026 22:10:58 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Mon, 19 Oct 2026 22:10:58 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 19 Oct 2026 22:11:41 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 19 Oct 2026 22:11:41 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 19 Oct 2026 22:11:41 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 19 Oct 2026 22:12:32 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 19 Oct 2026 22:12:32 GMT
VOLUME [/var/lib/mysql]
# Mon, 19 Oct 2026 22:12:32 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 19 Oct 2026 22:12:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Oct 2026 22:12:32 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 19 Oct 2026 22:12:32 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ec733952651fc70d299ac3951cabb9fafd032cc96e2ff71bdfd675ac20ca9c93`  
		Last Modified: Mon, 19 Oct 2026 21:32:56 GMT  
		Size: 45.8 MB (45800185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebc1495f726d32f6282c2756c6bb1998a3a0f7634c09d40bdf33d22b32cda624`  
		Last Modified: Mon, 19 Oct 2026 22:13:08 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37f823b0d0b9d9857956662204b1e016ddf30c0c8f0d9f9337ee08c40029baf4`  
		Last Modified: Mon, 19 Oct 2026 22:13:08 GMT  
		Size: 737.5 KB (737529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6aa547218551ddc4cccdea4f5d46f8f1b7874936754bc0e3504a95d35458d68`  
		Last Modified: Mon, 19 Oct 2026 22:13:09 GMT  
		Size: 5.8 MB (5810212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:592f1c9ce727db0667133c9b3a69634130e63ff558c059c208ca0ebcb1422a95`  
		Last Modified: Mon, 19 Oct 2026 22:13:08 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c417b1929de890d00560012c3acda3aac8a444087b18bee5c332c8ba5345c04e`  
		Last Modified: Mon, 19 Oct 2026 22:13:09 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4405368330ddbe36b2c9d426ddb0a0cfe9113372d08f0ca3ba0604992980e4f1`  
		Last Modified: Mon, 19 Oct 2026 22:13:12 GMT  
		Size: 57.1 MB (57100634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ead69b000fe6633648f64c4a5664b99b8c9de769748805ca842b1d727cc4e59`  
		Last Modified: Mon, 19 Oct 2026 22:13:10 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc960e1344d9ecc38c892f700a74186e8e6db956dc9d2efe20f359c6e5e2b9d5`  
		Last Modified: Mon, 19 Oct 2026 22:13:14 GMT  
		Size: 157.2 MB (157192116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d6fe93b02fd5cc7019ff8962eb0ea03fd4cc334d261030d27eb16d4a13db5ed`  
		Last Modified: Mon, 19 Oct 2026 22:13:11 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:lts-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:9db506aac879a04bd0f8657b10d9e04a2d158fdd5543d665367b6340a23f77f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16832155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f33def755137bbf4d7f42c92a84a0251e16e8b09704b6b9f385e01ccfdb5e52f`

```dockerfile
```

-	Layers:
	-	`sha256:1d4b38242995eb4ca51dba710e82b095a5eb6184c908582023f93f4e9e012123`  
		Last Modified: Mon, 19 Oct 2026 22:13:09 GMT  
		Size: 16.8 MB (16797643 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1ef468392047577812af03c88930ecba944e2eaaf6935087911adcd4a149f9e8`  
		Last Modified: Mon, 19 Oct 2026 22:13:08 GMT  
		Size: 34.5 KB (34512 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:oracle`

```console
$ docker pull mysql@sha256:625f74ddf93652d9d0f8d4ea7d741b9189554a5e96d27bb770abd0902d89c6e3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:oracle` - linux; amd64

```console
$ docker pull mysql@sha256:67e8e370d4aa4b6103bb3bbcc2a1c96ed367dd34dfc2c88aa7f1a37d3c8cf44a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.6 MB (271627594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:420f00813dd560a6ffd6a8c8adeb6c7266c7b80d3c3f17c2d64e9b9dfaf1358c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:48 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:48 GMT
CMD ["/bin/bash"]
# Mon, 19 Oct 2026 22:09:53 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 19 Oct 2026 22:09:55 GMT
ENV GOSU_VERSION=1.19
# Mon, 19 Oct 2026 22:09:55 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 19 Oct 2026 22:10:28 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 19 Oct 2026 22:10:28 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 19 Oct 2026 22:10:28 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 19 Oct 2026 22:10:28 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Mon, 19 Oct 2026 22:10:28 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 19 Oct 2026 22:11:05 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 19 Oct 2026 22:11:05 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 19 Oct 2026 22:11:05 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Mon, 19 Oct 2026 22:11:51 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 19 Oct 2026 22:11:51 GMT
VOLUME [/var/lib/mysql]
# Mon, 19 Oct 2026 22:11:51 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 19 Oct 2026 22:11:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Oct 2026 22:11:51 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 19 Oct 2026 22:11:51 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:97347cf073b19c00bee840fa47d2cd0537dbf5eb581be49840c203f71c0a5c75`  
		Last Modified: Mon, 19 Oct 2026 21:33:00 GMT  
		Size: 47.2 MB (47249168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f196ecbd4d03904b7f898d0a71b22b8cbfdcac9238452b9f73490108d7e37f7f`  
		Last Modified: Mon, 19 Oct 2026 22:12:25 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6a54fa3bc08abd9bf407ca52683d2095dd0a30ebe9acb780d4c1358d77ba596`  
		Last Modified: Mon, 19 Oct 2026 22:12:25 GMT  
		Size: 783.6 KB (783561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac0ac319b025e2bfce6fa355ba821125b4a5ab6d7898bc47393b76a2043ff9f8`  
		Last Modified: Mon, 19 Oct 2026 22:12:26 GMT  
		Size: 6.2 MB (6191938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f199b44b4a456f30f4bf83718bc6f30e4e26af07d14ba61bff1893b23faa5ac9`  
		Last Modified: Mon, 19 Oct 2026 22:12:25 GMT  
		Size: 2.6 KB (2604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:060b79e73b8f1830d4d25cf2d57b410c8a8640a94b0b329973d833b752f7c035`  
		Last Modified: Mon, 19 Oct 2026 22:12:26 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d9f3d1a8deffb2e7f2b648500cb5aece1fdd988446c3a360c03a97a9d06cdd6`  
		Last Modified: Mon, 19 Oct 2026 22:12:30 GMT  
		Size: 57.4 MB (57437897 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1fabc4a3637fdd55b86b8f7a2548c3b193a3569e1137928dcde6d4a42a46be9`  
		Last Modified: Mon, 19 Oct 2026 22:12:27 GMT  
		Size: 326.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7db1bb89cbc4d23152d624c7f7c57a98c75a7565560b529548bdbc6cb486513c`  
		Last Modified: Mon, 19 Oct 2026 22:12:33 GMT  
		Size: 160.0 MB (159955649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb74f524e49e3968e580145179382494e7a0e31255dac62d26c194b8ec0ad1ef`  
		Last Modified: Mon, 19 Oct 2026 22:12:28 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:94ff462a7b39f7a903f4f8d59445d01f3bd7c3642f682e492da5971fb206c250
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17452728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ed6463046ddfe770add4ea46c22c3909fdee240dc241c3a135e452e2296d176`

```dockerfile
```

-	Layers:
	-	`sha256:51049565ee073ca022cb8f6795c32cd6051ad27236c27b99b329963d1adf6421`  
		Last Modified: Mon, 19 Oct 2026 22:12:26 GMT  
		Size: 17.4 MB (17417431 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e9ba03e279680810d38a4e92aaf18ca0f0091d6187e1c4a6cc798733ccfb76c7`  
		Last Modified: Mon, 19 Oct 2026 22:12:25 GMT  
		Size: 35.3 KB (35297 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:3142cfba35bd09e111cc37917bd69b0c647a8ed5b05882bf39150a50d3ace5d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.0 MB (267991662 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87491a2172fe6cf721c0c6257e084ffddf67de9dc4dd5d1bdfd5a58a7c84d9d1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:44 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:44 GMT
CMD ["/bin/bash"]
# Mon, 19 Oct 2026 22:09:48 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 19 Oct 2026 22:09:50 GMT
ENV GOSU_VERSION=1.19
# Mon, 19 Oct 2026 22:09:50 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 19 Oct 2026 22:10:28 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 19 Oct 2026 22:10:29 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 19 Oct 2026 22:10:29 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 19 Oct 2026 22:10:29 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Mon, 19 Oct 2026 22:10:30 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 19 Oct 2026 22:11:12 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 19 Oct 2026 22:11:12 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 19 Oct 2026 22:11:12 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Mon, 19 Oct 2026 22:12:04 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 19 Oct 2026 22:12:04 GMT
VOLUME [/var/lib/mysql]
# Mon, 19 Oct 2026 22:12:04 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 19 Oct 2026 22:12:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Oct 2026 22:12:04 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 19 Oct 2026 22:12:04 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ec733952651fc70d299ac3951cabb9fafd032cc96e2ff71bdfd675ac20ca9c93`  
		Last Modified: Mon, 19 Oct 2026 21:32:56 GMT  
		Size: 45.8 MB (45800185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06985fa0a8e5b713efdeea0dd47174f98536b59365e86b2b98a6496c2f524e28`  
		Last Modified: Mon, 19 Oct 2026 22:12:40 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:922be94786f7a52ce0063916103f24ed3e79029d417e7f8eebb4ab583bb8b10f`  
		Last Modified: Mon, 19 Oct 2026 22:12:40 GMT  
		Size: 737.5 KB (737531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2612d51357fc7ea0bbe1cc5a28a82f735fefc5873cc8bf8207e8f2a18c03f38`  
		Last Modified: Mon, 19 Oct 2026 22:12:40 GMT  
		Size: 5.8 MB (5810113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd0d65a74e9a9cab1d5bcc2cffdc9234856199bfbbb67fbeeafac63ecf0e6013`  
		Last Modified: Mon, 19 Oct 2026 22:12:40 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:156f454d96dcd3a24cf535063603efe151d943fe56c3d099c6d74aaed039f7c2`  
		Last Modified: Mon, 19 Oct 2026 22:12:41 GMT  
		Size: 341.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:538d2383f2ee9345637666c09b4b4f5fa11edb755f5b80738e6dd94b368aacd0`  
		Last Modified: Mon, 19 Oct 2026 22:12:43 GMT  
		Size: 57.4 MB (57410064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ed94f8c2c34213ad370d8819b4d44de3c51c248247d3a252e02424f68532c9e`  
		Last Modified: Mon, 19 Oct 2026 22:12:41 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ff85ff20790fb64ffea819d45ae93376076f1a34fcb9fd165c502a4174755b3`  
		Last Modified: Mon, 19 Oct 2026 22:12:45 GMT  
		Size: 158.2 MB (158224389 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:896de949514283536a3d329e9f2741dab327d5126714d0c9c95e796f003cac2e`  
		Last Modified: Mon, 19 Oct 2026 22:12:42 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:e596e7724b70f73d353b8ef2fb5d92f14f91a6164fcd7992f7d2ef30d7b17e8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17451543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e9a8b60dee04dc5f1dec5aadf1d54374bb31bf407f5f8e1011b487c659c48be`

```dockerfile
```

-	Layers:
	-	`sha256:67d4b6cf13f509bee2e27cda4b68342cb80857f578bdc7b3a297a8fc9aba3f0e`  
		Last Modified: Mon, 19 Oct 2026 22:12:41 GMT  
		Size: 17.4 MB (17415904 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d95cfeeb1a93b6549f21afb762846a7aabc5fd73117791164b1c3e550f27a37d`  
		Last Modified: Mon, 19 Oct 2026 22:12:40 GMT  
		Size: 35.6 KB (35639 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:oraclelinux9`

```console
$ docker pull mysql@sha256:625f74ddf93652d9d0f8d4ea7d741b9189554a5e96d27bb770abd0902d89c6e3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:67e8e370d4aa4b6103bb3bbcc2a1c96ed367dd34dfc2c88aa7f1a37d3c8cf44a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.6 MB (271627594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:420f00813dd560a6ffd6a8c8adeb6c7266c7b80d3c3f17c2d64e9b9dfaf1358c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:48 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:48 GMT
CMD ["/bin/bash"]
# Mon, 19 Oct 2026 22:09:53 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 19 Oct 2026 22:09:55 GMT
ENV GOSU_VERSION=1.19
# Mon, 19 Oct 2026 22:09:55 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 19 Oct 2026 22:10:28 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 19 Oct 2026 22:10:28 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 19 Oct 2026 22:10:28 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 19 Oct 2026 22:10:28 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Mon, 19 Oct 2026 22:10:28 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 19 Oct 2026 22:11:05 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 19 Oct 2026 22:11:05 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 19 Oct 2026 22:11:05 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Mon, 19 Oct 2026 22:11:51 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 19 Oct 2026 22:11:51 GMT
VOLUME [/var/lib/mysql]
# Mon, 19 Oct 2026 22:11:51 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 19 Oct 2026 22:11:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Oct 2026 22:11:51 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 19 Oct 2026 22:11:51 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:97347cf073b19c00bee840fa47d2cd0537dbf5eb581be49840c203f71c0a5c75`  
		Last Modified: Mon, 19 Oct 2026 21:33:00 GMT  
		Size: 47.2 MB (47249168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f196ecbd4d03904b7f898d0a71b22b8cbfdcac9238452b9f73490108d7e37f7f`  
		Last Modified: Mon, 19 Oct 2026 22:12:25 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6a54fa3bc08abd9bf407ca52683d2095dd0a30ebe9acb780d4c1358d77ba596`  
		Last Modified: Mon, 19 Oct 2026 22:12:25 GMT  
		Size: 783.6 KB (783561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac0ac319b025e2bfce6fa355ba821125b4a5ab6d7898bc47393b76a2043ff9f8`  
		Last Modified: Mon, 19 Oct 2026 22:12:26 GMT  
		Size: 6.2 MB (6191938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f199b44b4a456f30f4bf83718bc6f30e4e26af07d14ba61bff1893b23faa5ac9`  
		Last Modified: Mon, 19 Oct 2026 22:12:25 GMT  
		Size: 2.6 KB (2604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:060b79e73b8f1830d4d25cf2d57b410c8a8640a94b0b329973d833b752f7c035`  
		Last Modified: Mon, 19 Oct 2026 22:12:26 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d9f3d1a8deffb2e7f2b648500cb5aece1fdd988446c3a360c03a97a9d06cdd6`  
		Last Modified: Mon, 19 Oct 2026 22:12:30 GMT  
		Size: 57.4 MB (57437897 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1fabc4a3637fdd55b86b8f7a2548c3b193a3569e1137928dcde6d4a42a46be9`  
		Last Modified: Mon, 19 Oct 2026 22:12:27 GMT  
		Size: 326.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7db1bb89cbc4d23152d624c7f7c57a98c75a7565560b529548bdbc6cb486513c`  
		Last Modified: Mon, 19 Oct 2026 22:12:33 GMT  
		Size: 160.0 MB (159955649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb74f524e49e3968e580145179382494e7a0e31255dac62d26c194b8ec0ad1ef`  
		Last Modified: Mon, 19 Oct 2026 22:12:28 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:94ff462a7b39f7a903f4f8d59445d01f3bd7c3642f682e492da5971fb206c250
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17452728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ed6463046ddfe770add4ea46c22c3909fdee240dc241c3a135e452e2296d176`

```dockerfile
```

-	Layers:
	-	`sha256:51049565ee073ca022cb8f6795c32cd6051ad27236c27b99b329963d1adf6421`  
		Last Modified: Mon, 19 Oct 2026 22:12:26 GMT  
		Size: 17.4 MB (17417431 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e9ba03e279680810d38a4e92aaf18ca0f0091d6187e1c4a6cc798733ccfb76c7`  
		Last Modified: Mon, 19 Oct 2026 22:12:25 GMT  
		Size: 35.3 KB (35297 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:3142cfba35bd09e111cc37917bd69b0c647a8ed5b05882bf39150a50d3ace5d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.0 MB (267991662 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87491a2172fe6cf721c0c6257e084ffddf67de9dc4dd5d1bdfd5a58a7c84d9d1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:44 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:44 GMT
CMD ["/bin/bash"]
# Mon, 19 Oct 2026 22:09:48 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 19 Oct 2026 22:09:50 GMT
ENV GOSU_VERSION=1.19
# Mon, 19 Oct 2026 22:09:50 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 19 Oct 2026 22:10:28 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 19 Oct 2026 22:10:29 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 19 Oct 2026 22:10:29 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 19 Oct 2026 22:10:29 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Mon, 19 Oct 2026 22:10:30 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 19 Oct 2026 22:11:12 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 19 Oct 2026 22:11:12 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 19 Oct 2026 22:11:12 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Mon, 19 Oct 2026 22:12:04 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 19 Oct 2026 22:12:04 GMT
VOLUME [/var/lib/mysql]
# Mon, 19 Oct 2026 22:12:04 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 19 Oct 2026 22:12:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Oct 2026 22:12:04 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 19 Oct 2026 22:12:04 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ec733952651fc70d299ac3951cabb9fafd032cc96e2ff71bdfd675ac20ca9c93`  
		Last Modified: Mon, 19 Oct 2026 21:32:56 GMT  
		Size: 45.8 MB (45800185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06985fa0a8e5b713efdeea0dd47174f98536b59365e86b2b98a6496c2f524e28`  
		Last Modified: Mon, 19 Oct 2026 22:12:40 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:922be94786f7a52ce0063916103f24ed3e79029d417e7f8eebb4ab583bb8b10f`  
		Last Modified: Mon, 19 Oct 2026 22:12:40 GMT  
		Size: 737.5 KB (737531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2612d51357fc7ea0bbe1cc5a28a82f735fefc5873cc8bf8207e8f2a18c03f38`  
		Last Modified: Mon, 19 Oct 2026 22:12:40 GMT  
		Size: 5.8 MB (5810113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd0d65a74e9a9cab1d5bcc2cffdc9234856199bfbbb67fbeeafac63ecf0e6013`  
		Last Modified: Mon, 19 Oct 2026 22:12:40 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:156f454d96dcd3a24cf535063603efe151d943fe56c3d099c6d74aaed039f7c2`  
		Last Modified: Mon, 19 Oct 2026 22:12:41 GMT  
		Size: 341.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:538d2383f2ee9345637666c09b4b4f5fa11edb755f5b80738e6dd94b368aacd0`  
		Last Modified: Mon, 19 Oct 2026 22:12:43 GMT  
		Size: 57.4 MB (57410064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ed94f8c2c34213ad370d8819b4d44de3c51c248247d3a252e02424f68532c9e`  
		Last Modified: Mon, 19 Oct 2026 22:12:41 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ff85ff20790fb64ffea819d45ae93376076f1a34fcb9fd165c502a4174755b3`  
		Last Modified: Mon, 19 Oct 2026 22:12:45 GMT  
		Size: 158.2 MB (158224389 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:896de949514283536a3d329e9f2741dab327d5126714d0c9c95e796f003cac2e`  
		Last Modified: Mon, 19 Oct 2026 22:12:42 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:e596e7724b70f73d353b8ef2fb5d92f14f91a6164fcd7992f7d2ef30d7b17e8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17451543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e9a8b60dee04dc5f1dec5aadf1d54374bb31bf407f5f8e1011b487c659c48be`

```dockerfile
```

-	Layers:
	-	`sha256:67d4b6cf13f509bee2e27cda4b68342cb80857f578bdc7b3a297a8fc9aba3f0e`  
		Last Modified: Mon, 19 Oct 2026 22:12:41 GMT  
		Size: 17.4 MB (17415904 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d95cfeeb1a93b6549f21afb762846a7aabc5fd73117791164b1c3e550f27a37d`  
		Last Modified: Mon, 19 Oct 2026 22:12:40 GMT  
		Size: 35.6 KB (35639 bytes)  
		MIME: application/vnd.in-toto+json
