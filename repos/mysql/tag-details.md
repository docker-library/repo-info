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
$ docker pull mysql@sha256:3819b2b23835c4a73c8b022fafc33c8095c0f81c929a8b7a84613d2fba6c52f5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:26` - linux; amd64

```console
$ docker pull mysql@sha256:b401608b19ffafbc6aa3d84523acf783078c8cf01e0f7ee1dc3ca75a5701a999
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.0 MB (299036505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88276261eddbb021ff76b1dfdc9c7ad37b9b053449e39f50f7d1aa594afe4db2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 03 Nov 2026 00:22:58 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 03 Nov 2026 00:22:58 GMT
CMD ["/bin/bash"]
# Tue, 03 Nov 2026 00:25:53 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 03 Nov 2026 00:25:54 GMT
ENV GOSU_VERSION=1.19
# Tue, 03 Nov 2026 00:25:54 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 03 Nov 2026 00:26:32 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 03 Nov 2026 00:26:33 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 03 Nov 2026 00:26:33 GMT
ENV MYSQL_MAJOR=innovation
# Tue, 03 Nov 2026 00:26:33 GMT
ENV MYSQL_VERSION=26.10.0-1.el9
# Tue, 03 Nov 2026 00:26:33 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 03 Nov 2026 00:27:14 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 03 Nov 2026 00:27:14 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 03 Nov 2026 00:27:14 GMT
ENV MYSQL_SHELL_VERSION=26.10.0-1.el9
# Tue, 03 Nov 2026 00:28:04 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 03 Nov 2026 00:28:04 GMT
VOLUME [/var/lib/mysql]
# Tue, 03 Nov 2026 00:28:04 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 00:28:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 00:28:04 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 03 Nov 2026 00:28:04 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c3e99775cc39154c5a4687d6aeb43d4162a1fec417e872075b1e50567e8aed20`  
		Last Modified: Tue, 03 Nov 2026 00:23:09 GMT  
		Size: 47.2 MB (47186609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3594eab1df5f3f34fecddcdf0c3b57323dbea7bf7696d49547df71dbbaa31ea9`  
		Last Modified: Tue, 03 Nov 2026 00:28:30 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37fa2793f15fbe8afa9ca05c1799457534e9c377ca7501db597c62de8e2ae1bd`  
		Last Modified: Tue, 03 Nov 2026 00:28:31 GMT  
		Size: 783.6 KB (783554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83d647c7d3d0c4c4e237e633333c4c4408acfc01909bde6215589b87992a92b2`  
		Last Modified: Tue, 03 Nov 2026 00:28:30 GMT  
		Size: 6.2 MB (6188738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:335c0ba6129f79d6d295e152c017595d93229b0993958b12a9a83898eafcd8ef`  
		Last Modified: Tue, 03 Nov 2026 00:28:30 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:781b429d34a1519677ef274fc0ece117d411a7b21f67415dfe9538b17766a72b`  
		Last Modified: Tue, 03 Nov 2026 00:28:32 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:811578fcdc4f6070e1ac5cec15297b4960ae6873b1a6b76888ee2b37b8d26db9`  
		Last Modified: Tue, 03 Nov 2026 00:28:34 GMT  
		Size: 63.8 MB (63786463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ba4d3770669dba1cb86645b0931ce4e83759c82fa5fca496acf8d04622ff8c0`  
		Last Modified: Tue, 03 Nov 2026 00:28:32 GMT  
		Size: 324.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:969334aca9fafa733eb549898737409a2db9694cd37a30b8ca72f4aade6c8aea`  
		Last Modified: Tue, 03 Nov 2026 00:28:36 GMT  
		Size: 181.1 MB (181081770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63751bcf6dadc3c3ca6ae50b6aeff9788a851cf21304ac0f8091c0e000260179`  
		Last Modified: Tue, 03 Nov 2026 00:28:33 GMT  
		Size: 5.2 KB (5217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26` - unknown; unknown

```console
$ docker pull mysql@sha256:007da30fd0dbc6ab8866362eb9165cf6e7b5cec6825faf468d598ffdf47dc154
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5334093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba0a7e5b39bb058c7786003668fae2dd36b9b34a97441ceabf3cb4d35f03200d`

```dockerfile
```

-	Layers:
	-	`sha256:891cff0835d57a9e95db5e8eb70df4bcd95b537443360684fad2abb9e8335a57`  
		Last Modified: Tue, 03 Nov 2026 00:28:30 GMT  
		Size: 5.3 MB (5298774 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:24df5f010ba63cf921150dc8c90e0de612b65c675e20fea6e106fffcb08b9596`  
		Last Modified: Tue, 03 Nov 2026 00:28:30 GMT  
		Size: 35.3 KB (35319 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:26` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:0f2cbd36da41403ddf93b08f7682f95501fd2e22fbd4b728a0e42962d271f529
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.5 MB (295462504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aba3131d9f74d1a8e505de86aa0697e3ff59e76d24580359723d29ea4990a507`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 03 Nov 2026 00:23:12 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 03 Nov 2026 00:23:12 GMT
CMD ["/bin/bash"]
# Tue, 03 Nov 2026 00:26:00 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 03 Nov 2026 00:26:02 GMT
ENV GOSU_VERSION=1.19
# Tue, 03 Nov 2026 00:26:02 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 03 Nov 2026 00:26:41 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 03 Nov 2026 00:26:42 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 03 Nov 2026 00:26:42 GMT
ENV MYSQL_MAJOR=innovation
# Tue, 03 Nov 2026 00:26:42 GMT
ENV MYSQL_VERSION=26.10.0-1.el9
# Tue, 03 Nov 2026 00:26:42 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 03 Nov 2026 00:27:24 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 03 Nov 2026 00:27:24 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 03 Nov 2026 00:27:24 GMT
ENV MYSQL_SHELL_VERSION=26.10.0-1.el9
# Tue, 03 Nov 2026 00:28:16 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 03 Nov 2026 00:28:16 GMT
VOLUME [/var/lib/mysql]
# Tue, 03 Nov 2026 00:28:16 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 00:28:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 00:28:16 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 03 Nov 2026 00:28:16 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:329828f10dd1b721024e28953696281394ad8b6f7621b47c0fb0d2d41e2838ab`  
		Last Modified: Tue, 03 Nov 2026 00:23:23 GMT  
		Size: 45.7 MB (45734040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abb8b963bc245ef2e7d160c6e5ef6e71bca1b0d20b36a48ba155dec212875b97`  
		Last Modified: Tue, 03 Nov 2026 00:28:44 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f360cfcd0c6859691383f9ccef43f51c983b9dbfe96263264b7c376a22ac8ca`  
		Last Modified: Tue, 03 Nov 2026 00:28:43 GMT  
		Size: 737.5 KB (737531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f589dac8ec1fcba3211e9da63231e0ddf87ae39921f10f12f31f24b27fa1473e`  
		Last Modified: Tue, 03 Nov 2026 00:28:44 GMT  
		Size: 5.8 MB (5809137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ac49b392b7845c771c3f701766cdb34b3b945439231c710d9996c7793897366`  
		Last Modified: Tue, 03 Nov 2026 00:28:44 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:111940a3af7aad0208eb3eca6716db74d7e12ad9325efcd8d97fd634c3a787c7`  
		Last Modified: Tue, 03 Nov 2026 00:28:45 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f66cb2d4f38de30497f688d95516e6c73624c74a91bbe718925a18ff2822f3dc`  
		Last Modified: Tue, 03 Nov 2026 00:28:47 GMT  
		Size: 63.8 MB (63823011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01ab56bed6cffb7b414a39f35c2447dcd55e5aaa04aeabc16e9b22e013d46760`  
		Last Modified: Tue, 03 Nov 2026 00:28:45 GMT  
		Size: 324.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b44aa14e230fbb918ff2d6a1c8131447dcdf242f29d1a24b6d153129f91ec328`  
		Last Modified: Tue, 03 Nov 2026 00:28:49 GMT  
		Size: 179.3 MB (179349404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59a4b8888e49d69b7ae0b9e4ba91161cfd4eb35a98c3a14e8f52085233448758`  
		Last Modified: Tue, 03 Nov 2026 00:28:46 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26` - unknown; unknown

```console
$ docker pull mysql@sha256:597a605bfb2209bb1ccad1707c70fb1a59fcb161120f781333646d05ae193467
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5332907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30601a021da51824f13c963dc30a9429f87d36c9fba4f1a6a8b944eb6894c0fd`

```dockerfile
```

-	Layers:
	-	`sha256:1b185e2dd51057c56062cd713e3df44f624e8a5d512a214dbc1ae42d0bc75646`  
		Last Modified: Tue, 03 Nov 2026 00:28:44 GMT  
		Size: 5.3 MB (5297247 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5e5100be39aea4a58c6988e15bffe2b269e64355ddca478523fa2969926694f5`  
		Last Modified: Tue, 03 Nov 2026 00:28:44 GMT  
		Size: 35.7 KB (35660 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:26-oracle`

```console
$ docker pull mysql@sha256:3819b2b23835c4a73c8b022fafc33c8095c0f81c929a8b7a84613d2fba6c52f5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:26-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:b401608b19ffafbc6aa3d84523acf783078c8cf01e0f7ee1dc3ca75a5701a999
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.0 MB (299036505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88276261eddbb021ff76b1dfdc9c7ad37b9b053449e39f50f7d1aa594afe4db2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 03 Nov 2026 00:22:58 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 03 Nov 2026 00:22:58 GMT
CMD ["/bin/bash"]
# Tue, 03 Nov 2026 00:25:53 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 03 Nov 2026 00:25:54 GMT
ENV GOSU_VERSION=1.19
# Tue, 03 Nov 2026 00:25:54 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 03 Nov 2026 00:26:32 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 03 Nov 2026 00:26:33 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 03 Nov 2026 00:26:33 GMT
ENV MYSQL_MAJOR=innovation
# Tue, 03 Nov 2026 00:26:33 GMT
ENV MYSQL_VERSION=26.10.0-1.el9
# Tue, 03 Nov 2026 00:26:33 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 03 Nov 2026 00:27:14 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 03 Nov 2026 00:27:14 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 03 Nov 2026 00:27:14 GMT
ENV MYSQL_SHELL_VERSION=26.10.0-1.el9
# Tue, 03 Nov 2026 00:28:04 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 03 Nov 2026 00:28:04 GMT
VOLUME [/var/lib/mysql]
# Tue, 03 Nov 2026 00:28:04 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 00:28:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 00:28:04 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 03 Nov 2026 00:28:04 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c3e99775cc39154c5a4687d6aeb43d4162a1fec417e872075b1e50567e8aed20`  
		Last Modified: Tue, 03 Nov 2026 00:23:09 GMT  
		Size: 47.2 MB (47186609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3594eab1df5f3f34fecddcdf0c3b57323dbea7bf7696d49547df71dbbaa31ea9`  
		Last Modified: Tue, 03 Nov 2026 00:28:30 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37fa2793f15fbe8afa9ca05c1799457534e9c377ca7501db597c62de8e2ae1bd`  
		Last Modified: Tue, 03 Nov 2026 00:28:31 GMT  
		Size: 783.6 KB (783554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83d647c7d3d0c4c4e237e633333c4c4408acfc01909bde6215589b87992a92b2`  
		Last Modified: Tue, 03 Nov 2026 00:28:30 GMT  
		Size: 6.2 MB (6188738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:335c0ba6129f79d6d295e152c017595d93229b0993958b12a9a83898eafcd8ef`  
		Last Modified: Tue, 03 Nov 2026 00:28:30 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:781b429d34a1519677ef274fc0ece117d411a7b21f67415dfe9538b17766a72b`  
		Last Modified: Tue, 03 Nov 2026 00:28:32 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:811578fcdc4f6070e1ac5cec15297b4960ae6873b1a6b76888ee2b37b8d26db9`  
		Last Modified: Tue, 03 Nov 2026 00:28:34 GMT  
		Size: 63.8 MB (63786463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ba4d3770669dba1cb86645b0931ce4e83759c82fa5fca496acf8d04622ff8c0`  
		Last Modified: Tue, 03 Nov 2026 00:28:32 GMT  
		Size: 324.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:969334aca9fafa733eb549898737409a2db9694cd37a30b8ca72f4aade6c8aea`  
		Last Modified: Tue, 03 Nov 2026 00:28:36 GMT  
		Size: 181.1 MB (181081770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63751bcf6dadc3c3ca6ae50b6aeff9788a851cf21304ac0f8091c0e000260179`  
		Last Modified: Tue, 03 Nov 2026 00:28:33 GMT  
		Size: 5.2 KB (5217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:007da30fd0dbc6ab8866362eb9165cf6e7b5cec6825faf468d598ffdf47dc154
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5334093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba0a7e5b39bb058c7786003668fae2dd36b9b34a97441ceabf3cb4d35f03200d`

```dockerfile
```

-	Layers:
	-	`sha256:891cff0835d57a9e95db5e8eb70df4bcd95b537443360684fad2abb9e8335a57`  
		Last Modified: Tue, 03 Nov 2026 00:28:30 GMT  
		Size: 5.3 MB (5298774 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:24df5f010ba63cf921150dc8c90e0de612b65c675e20fea6e106fffcb08b9596`  
		Last Modified: Tue, 03 Nov 2026 00:28:30 GMT  
		Size: 35.3 KB (35319 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:26-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:0f2cbd36da41403ddf93b08f7682f95501fd2e22fbd4b728a0e42962d271f529
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.5 MB (295462504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aba3131d9f74d1a8e505de86aa0697e3ff59e76d24580359723d29ea4990a507`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 03 Nov 2026 00:23:12 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 03 Nov 2026 00:23:12 GMT
CMD ["/bin/bash"]
# Tue, 03 Nov 2026 00:26:00 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 03 Nov 2026 00:26:02 GMT
ENV GOSU_VERSION=1.19
# Tue, 03 Nov 2026 00:26:02 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 03 Nov 2026 00:26:41 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 03 Nov 2026 00:26:42 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 03 Nov 2026 00:26:42 GMT
ENV MYSQL_MAJOR=innovation
# Tue, 03 Nov 2026 00:26:42 GMT
ENV MYSQL_VERSION=26.10.0-1.el9
# Tue, 03 Nov 2026 00:26:42 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 03 Nov 2026 00:27:24 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 03 Nov 2026 00:27:24 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 03 Nov 2026 00:27:24 GMT
ENV MYSQL_SHELL_VERSION=26.10.0-1.el9
# Tue, 03 Nov 2026 00:28:16 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 03 Nov 2026 00:28:16 GMT
VOLUME [/var/lib/mysql]
# Tue, 03 Nov 2026 00:28:16 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 00:28:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 00:28:16 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 03 Nov 2026 00:28:16 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:329828f10dd1b721024e28953696281394ad8b6f7621b47c0fb0d2d41e2838ab`  
		Last Modified: Tue, 03 Nov 2026 00:23:23 GMT  
		Size: 45.7 MB (45734040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abb8b963bc245ef2e7d160c6e5ef6e71bca1b0d20b36a48ba155dec212875b97`  
		Last Modified: Tue, 03 Nov 2026 00:28:44 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f360cfcd0c6859691383f9ccef43f51c983b9dbfe96263264b7c376a22ac8ca`  
		Last Modified: Tue, 03 Nov 2026 00:28:43 GMT  
		Size: 737.5 KB (737531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f589dac8ec1fcba3211e9da63231e0ddf87ae39921f10f12f31f24b27fa1473e`  
		Last Modified: Tue, 03 Nov 2026 00:28:44 GMT  
		Size: 5.8 MB (5809137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ac49b392b7845c771c3f701766cdb34b3b945439231c710d9996c7793897366`  
		Last Modified: Tue, 03 Nov 2026 00:28:44 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:111940a3af7aad0208eb3eca6716db74d7e12ad9325efcd8d97fd634c3a787c7`  
		Last Modified: Tue, 03 Nov 2026 00:28:45 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f66cb2d4f38de30497f688d95516e6c73624c74a91bbe718925a18ff2822f3dc`  
		Last Modified: Tue, 03 Nov 2026 00:28:47 GMT  
		Size: 63.8 MB (63823011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01ab56bed6cffb7b414a39f35c2447dcd55e5aaa04aeabc16e9b22e013d46760`  
		Last Modified: Tue, 03 Nov 2026 00:28:45 GMT  
		Size: 324.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b44aa14e230fbb918ff2d6a1c8131447dcdf242f29d1a24b6d153129f91ec328`  
		Last Modified: Tue, 03 Nov 2026 00:28:49 GMT  
		Size: 179.3 MB (179349404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59a4b8888e49d69b7ae0b9e4ba91161cfd4eb35a98c3a14e8f52085233448758`  
		Last Modified: Tue, 03 Nov 2026 00:28:46 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:597a605bfb2209bb1ccad1707c70fb1a59fcb161120f781333646d05ae193467
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5332907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30601a021da51824f13c963dc30a9429f87d36c9fba4f1a6a8b944eb6894c0fd`

```dockerfile
```

-	Layers:
	-	`sha256:1b185e2dd51057c56062cd713e3df44f624e8a5d512a214dbc1ae42d0bc75646`  
		Last Modified: Tue, 03 Nov 2026 00:28:44 GMT  
		Size: 5.3 MB (5297247 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5e5100be39aea4a58c6988e15bffe2b269e64355ddca478523fa2969926694f5`  
		Last Modified: Tue, 03 Nov 2026 00:28:44 GMT  
		Size: 35.7 KB (35660 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:26-oraclelinux9`

```console
$ docker pull mysql@sha256:3819b2b23835c4a73c8b022fafc33c8095c0f81c929a8b7a84613d2fba6c52f5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:26-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:b401608b19ffafbc6aa3d84523acf783078c8cf01e0f7ee1dc3ca75a5701a999
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.0 MB (299036505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88276261eddbb021ff76b1dfdc9c7ad37b9b053449e39f50f7d1aa594afe4db2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 03 Nov 2026 00:22:58 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 03 Nov 2026 00:22:58 GMT
CMD ["/bin/bash"]
# Tue, 03 Nov 2026 00:25:53 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 03 Nov 2026 00:25:54 GMT
ENV GOSU_VERSION=1.19
# Tue, 03 Nov 2026 00:25:54 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 03 Nov 2026 00:26:32 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 03 Nov 2026 00:26:33 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 03 Nov 2026 00:26:33 GMT
ENV MYSQL_MAJOR=innovation
# Tue, 03 Nov 2026 00:26:33 GMT
ENV MYSQL_VERSION=26.10.0-1.el9
# Tue, 03 Nov 2026 00:26:33 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 03 Nov 2026 00:27:14 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 03 Nov 2026 00:27:14 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 03 Nov 2026 00:27:14 GMT
ENV MYSQL_SHELL_VERSION=26.10.0-1.el9
# Tue, 03 Nov 2026 00:28:04 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 03 Nov 2026 00:28:04 GMT
VOLUME [/var/lib/mysql]
# Tue, 03 Nov 2026 00:28:04 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 00:28:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 00:28:04 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 03 Nov 2026 00:28:04 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c3e99775cc39154c5a4687d6aeb43d4162a1fec417e872075b1e50567e8aed20`  
		Last Modified: Tue, 03 Nov 2026 00:23:09 GMT  
		Size: 47.2 MB (47186609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3594eab1df5f3f34fecddcdf0c3b57323dbea7bf7696d49547df71dbbaa31ea9`  
		Last Modified: Tue, 03 Nov 2026 00:28:30 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37fa2793f15fbe8afa9ca05c1799457534e9c377ca7501db597c62de8e2ae1bd`  
		Last Modified: Tue, 03 Nov 2026 00:28:31 GMT  
		Size: 783.6 KB (783554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83d647c7d3d0c4c4e237e633333c4c4408acfc01909bde6215589b87992a92b2`  
		Last Modified: Tue, 03 Nov 2026 00:28:30 GMT  
		Size: 6.2 MB (6188738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:335c0ba6129f79d6d295e152c017595d93229b0993958b12a9a83898eafcd8ef`  
		Last Modified: Tue, 03 Nov 2026 00:28:30 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:781b429d34a1519677ef274fc0ece117d411a7b21f67415dfe9538b17766a72b`  
		Last Modified: Tue, 03 Nov 2026 00:28:32 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:811578fcdc4f6070e1ac5cec15297b4960ae6873b1a6b76888ee2b37b8d26db9`  
		Last Modified: Tue, 03 Nov 2026 00:28:34 GMT  
		Size: 63.8 MB (63786463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ba4d3770669dba1cb86645b0931ce4e83759c82fa5fca496acf8d04622ff8c0`  
		Last Modified: Tue, 03 Nov 2026 00:28:32 GMT  
		Size: 324.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:969334aca9fafa733eb549898737409a2db9694cd37a30b8ca72f4aade6c8aea`  
		Last Modified: Tue, 03 Nov 2026 00:28:36 GMT  
		Size: 181.1 MB (181081770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63751bcf6dadc3c3ca6ae50b6aeff9788a851cf21304ac0f8091c0e000260179`  
		Last Modified: Tue, 03 Nov 2026 00:28:33 GMT  
		Size: 5.2 KB (5217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:007da30fd0dbc6ab8866362eb9165cf6e7b5cec6825faf468d598ffdf47dc154
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5334093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba0a7e5b39bb058c7786003668fae2dd36b9b34a97441ceabf3cb4d35f03200d`

```dockerfile
```

-	Layers:
	-	`sha256:891cff0835d57a9e95db5e8eb70df4bcd95b537443360684fad2abb9e8335a57`  
		Last Modified: Tue, 03 Nov 2026 00:28:30 GMT  
		Size: 5.3 MB (5298774 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:24df5f010ba63cf921150dc8c90e0de612b65c675e20fea6e106fffcb08b9596`  
		Last Modified: Tue, 03 Nov 2026 00:28:30 GMT  
		Size: 35.3 KB (35319 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:26-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:0f2cbd36da41403ddf93b08f7682f95501fd2e22fbd4b728a0e42962d271f529
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.5 MB (295462504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aba3131d9f74d1a8e505de86aa0697e3ff59e76d24580359723d29ea4990a507`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 03 Nov 2026 00:23:12 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 03 Nov 2026 00:23:12 GMT
CMD ["/bin/bash"]
# Tue, 03 Nov 2026 00:26:00 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 03 Nov 2026 00:26:02 GMT
ENV GOSU_VERSION=1.19
# Tue, 03 Nov 2026 00:26:02 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 03 Nov 2026 00:26:41 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 03 Nov 2026 00:26:42 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 03 Nov 2026 00:26:42 GMT
ENV MYSQL_MAJOR=innovation
# Tue, 03 Nov 2026 00:26:42 GMT
ENV MYSQL_VERSION=26.10.0-1.el9
# Tue, 03 Nov 2026 00:26:42 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 03 Nov 2026 00:27:24 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 03 Nov 2026 00:27:24 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 03 Nov 2026 00:27:24 GMT
ENV MYSQL_SHELL_VERSION=26.10.0-1.el9
# Tue, 03 Nov 2026 00:28:16 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 03 Nov 2026 00:28:16 GMT
VOLUME [/var/lib/mysql]
# Tue, 03 Nov 2026 00:28:16 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 00:28:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 00:28:16 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 03 Nov 2026 00:28:16 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:329828f10dd1b721024e28953696281394ad8b6f7621b47c0fb0d2d41e2838ab`  
		Last Modified: Tue, 03 Nov 2026 00:23:23 GMT  
		Size: 45.7 MB (45734040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abb8b963bc245ef2e7d160c6e5ef6e71bca1b0d20b36a48ba155dec212875b97`  
		Last Modified: Tue, 03 Nov 2026 00:28:44 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f360cfcd0c6859691383f9ccef43f51c983b9dbfe96263264b7c376a22ac8ca`  
		Last Modified: Tue, 03 Nov 2026 00:28:43 GMT  
		Size: 737.5 KB (737531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f589dac8ec1fcba3211e9da63231e0ddf87ae39921f10f12f31f24b27fa1473e`  
		Last Modified: Tue, 03 Nov 2026 00:28:44 GMT  
		Size: 5.8 MB (5809137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ac49b392b7845c771c3f701766cdb34b3b945439231c710d9996c7793897366`  
		Last Modified: Tue, 03 Nov 2026 00:28:44 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:111940a3af7aad0208eb3eca6716db74d7e12ad9325efcd8d97fd634c3a787c7`  
		Last Modified: Tue, 03 Nov 2026 00:28:45 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f66cb2d4f38de30497f688d95516e6c73624c74a91bbe718925a18ff2822f3dc`  
		Last Modified: Tue, 03 Nov 2026 00:28:47 GMT  
		Size: 63.8 MB (63823011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01ab56bed6cffb7b414a39f35c2447dcd55e5aaa04aeabc16e9b22e013d46760`  
		Last Modified: Tue, 03 Nov 2026 00:28:45 GMT  
		Size: 324.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b44aa14e230fbb918ff2d6a1c8131447dcdf242f29d1a24b6d153129f91ec328`  
		Last Modified: Tue, 03 Nov 2026 00:28:49 GMT  
		Size: 179.3 MB (179349404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59a4b8888e49d69b7ae0b9e4ba91161cfd4eb35a98c3a14e8f52085233448758`  
		Last Modified: Tue, 03 Nov 2026 00:28:46 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:597a605bfb2209bb1ccad1707c70fb1a59fcb161120f781333646d05ae193467
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5332907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30601a021da51824f13c963dc30a9429f87d36c9fba4f1a6a8b944eb6894c0fd`

```dockerfile
```

-	Layers:
	-	`sha256:1b185e2dd51057c56062cd713e3df44f624e8a5d512a214dbc1ae42d0bc75646`  
		Last Modified: Tue, 03 Nov 2026 00:28:44 GMT  
		Size: 5.3 MB (5297247 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5e5100be39aea4a58c6988e15bffe2b269e64355ddca478523fa2969926694f5`  
		Last Modified: Tue, 03 Nov 2026 00:28:44 GMT  
		Size: 35.7 KB (35660 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:26.10`

```console
$ docker pull mysql@sha256:3819b2b23835c4a73c8b022fafc33c8095c0f81c929a8b7a84613d2fba6c52f5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:26.10` - linux; amd64

```console
$ docker pull mysql@sha256:b401608b19ffafbc6aa3d84523acf783078c8cf01e0f7ee1dc3ca75a5701a999
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.0 MB (299036505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88276261eddbb021ff76b1dfdc9c7ad37b9b053449e39f50f7d1aa594afe4db2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 03 Nov 2026 00:22:58 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 03 Nov 2026 00:22:58 GMT
CMD ["/bin/bash"]
# Tue, 03 Nov 2026 00:25:53 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 03 Nov 2026 00:25:54 GMT
ENV GOSU_VERSION=1.19
# Tue, 03 Nov 2026 00:25:54 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 03 Nov 2026 00:26:32 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 03 Nov 2026 00:26:33 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 03 Nov 2026 00:26:33 GMT
ENV MYSQL_MAJOR=innovation
# Tue, 03 Nov 2026 00:26:33 GMT
ENV MYSQL_VERSION=26.10.0-1.el9
# Tue, 03 Nov 2026 00:26:33 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 03 Nov 2026 00:27:14 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 03 Nov 2026 00:27:14 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 03 Nov 2026 00:27:14 GMT
ENV MYSQL_SHELL_VERSION=26.10.0-1.el9
# Tue, 03 Nov 2026 00:28:04 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 03 Nov 2026 00:28:04 GMT
VOLUME [/var/lib/mysql]
# Tue, 03 Nov 2026 00:28:04 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 00:28:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 00:28:04 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 03 Nov 2026 00:28:04 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c3e99775cc39154c5a4687d6aeb43d4162a1fec417e872075b1e50567e8aed20`  
		Last Modified: Tue, 03 Nov 2026 00:23:09 GMT  
		Size: 47.2 MB (47186609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3594eab1df5f3f34fecddcdf0c3b57323dbea7bf7696d49547df71dbbaa31ea9`  
		Last Modified: Tue, 03 Nov 2026 00:28:30 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37fa2793f15fbe8afa9ca05c1799457534e9c377ca7501db597c62de8e2ae1bd`  
		Last Modified: Tue, 03 Nov 2026 00:28:31 GMT  
		Size: 783.6 KB (783554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83d647c7d3d0c4c4e237e633333c4c4408acfc01909bde6215589b87992a92b2`  
		Last Modified: Tue, 03 Nov 2026 00:28:30 GMT  
		Size: 6.2 MB (6188738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:335c0ba6129f79d6d295e152c017595d93229b0993958b12a9a83898eafcd8ef`  
		Last Modified: Tue, 03 Nov 2026 00:28:30 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:781b429d34a1519677ef274fc0ece117d411a7b21f67415dfe9538b17766a72b`  
		Last Modified: Tue, 03 Nov 2026 00:28:32 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:811578fcdc4f6070e1ac5cec15297b4960ae6873b1a6b76888ee2b37b8d26db9`  
		Last Modified: Tue, 03 Nov 2026 00:28:34 GMT  
		Size: 63.8 MB (63786463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ba4d3770669dba1cb86645b0931ce4e83759c82fa5fca496acf8d04622ff8c0`  
		Last Modified: Tue, 03 Nov 2026 00:28:32 GMT  
		Size: 324.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:969334aca9fafa733eb549898737409a2db9694cd37a30b8ca72f4aade6c8aea`  
		Last Modified: Tue, 03 Nov 2026 00:28:36 GMT  
		Size: 181.1 MB (181081770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63751bcf6dadc3c3ca6ae50b6aeff9788a851cf21304ac0f8091c0e000260179`  
		Last Modified: Tue, 03 Nov 2026 00:28:33 GMT  
		Size: 5.2 KB (5217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26.10` - unknown; unknown

```console
$ docker pull mysql@sha256:007da30fd0dbc6ab8866362eb9165cf6e7b5cec6825faf468d598ffdf47dc154
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5334093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba0a7e5b39bb058c7786003668fae2dd36b9b34a97441ceabf3cb4d35f03200d`

```dockerfile
```

-	Layers:
	-	`sha256:891cff0835d57a9e95db5e8eb70df4bcd95b537443360684fad2abb9e8335a57`  
		Last Modified: Tue, 03 Nov 2026 00:28:30 GMT  
		Size: 5.3 MB (5298774 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:24df5f010ba63cf921150dc8c90e0de612b65c675e20fea6e106fffcb08b9596`  
		Last Modified: Tue, 03 Nov 2026 00:28:30 GMT  
		Size: 35.3 KB (35319 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:26.10` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:0f2cbd36da41403ddf93b08f7682f95501fd2e22fbd4b728a0e42962d271f529
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.5 MB (295462504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aba3131d9f74d1a8e505de86aa0697e3ff59e76d24580359723d29ea4990a507`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 03 Nov 2026 00:23:12 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 03 Nov 2026 00:23:12 GMT
CMD ["/bin/bash"]
# Tue, 03 Nov 2026 00:26:00 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 03 Nov 2026 00:26:02 GMT
ENV GOSU_VERSION=1.19
# Tue, 03 Nov 2026 00:26:02 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 03 Nov 2026 00:26:41 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 03 Nov 2026 00:26:42 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 03 Nov 2026 00:26:42 GMT
ENV MYSQL_MAJOR=innovation
# Tue, 03 Nov 2026 00:26:42 GMT
ENV MYSQL_VERSION=26.10.0-1.el9
# Tue, 03 Nov 2026 00:26:42 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 03 Nov 2026 00:27:24 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 03 Nov 2026 00:27:24 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 03 Nov 2026 00:27:24 GMT
ENV MYSQL_SHELL_VERSION=26.10.0-1.el9
# Tue, 03 Nov 2026 00:28:16 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 03 Nov 2026 00:28:16 GMT
VOLUME [/var/lib/mysql]
# Tue, 03 Nov 2026 00:28:16 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 00:28:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 00:28:16 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 03 Nov 2026 00:28:16 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:329828f10dd1b721024e28953696281394ad8b6f7621b47c0fb0d2d41e2838ab`  
		Last Modified: Tue, 03 Nov 2026 00:23:23 GMT  
		Size: 45.7 MB (45734040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abb8b963bc245ef2e7d160c6e5ef6e71bca1b0d20b36a48ba155dec212875b97`  
		Last Modified: Tue, 03 Nov 2026 00:28:44 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f360cfcd0c6859691383f9ccef43f51c983b9dbfe96263264b7c376a22ac8ca`  
		Last Modified: Tue, 03 Nov 2026 00:28:43 GMT  
		Size: 737.5 KB (737531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f589dac8ec1fcba3211e9da63231e0ddf87ae39921f10f12f31f24b27fa1473e`  
		Last Modified: Tue, 03 Nov 2026 00:28:44 GMT  
		Size: 5.8 MB (5809137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ac49b392b7845c771c3f701766cdb34b3b945439231c710d9996c7793897366`  
		Last Modified: Tue, 03 Nov 2026 00:28:44 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:111940a3af7aad0208eb3eca6716db74d7e12ad9325efcd8d97fd634c3a787c7`  
		Last Modified: Tue, 03 Nov 2026 00:28:45 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f66cb2d4f38de30497f688d95516e6c73624c74a91bbe718925a18ff2822f3dc`  
		Last Modified: Tue, 03 Nov 2026 00:28:47 GMT  
		Size: 63.8 MB (63823011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01ab56bed6cffb7b414a39f35c2447dcd55e5aaa04aeabc16e9b22e013d46760`  
		Last Modified: Tue, 03 Nov 2026 00:28:45 GMT  
		Size: 324.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b44aa14e230fbb918ff2d6a1c8131447dcdf242f29d1a24b6d153129f91ec328`  
		Last Modified: Tue, 03 Nov 2026 00:28:49 GMT  
		Size: 179.3 MB (179349404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59a4b8888e49d69b7ae0b9e4ba91161cfd4eb35a98c3a14e8f52085233448758`  
		Last Modified: Tue, 03 Nov 2026 00:28:46 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26.10` - unknown; unknown

```console
$ docker pull mysql@sha256:597a605bfb2209bb1ccad1707c70fb1a59fcb161120f781333646d05ae193467
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5332907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30601a021da51824f13c963dc30a9429f87d36c9fba4f1a6a8b944eb6894c0fd`

```dockerfile
```

-	Layers:
	-	`sha256:1b185e2dd51057c56062cd713e3df44f624e8a5d512a214dbc1ae42d0bc75646`  
		Last Modified: Tue, 03 Nov 2026 00:28:44 GMT  
		Size: 5.3 MB (5297247 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5e5100be39aea4a58c6988e15bffe2b269e64355ddca478523fa2969926694f5`  
		Last Modified: Tue, 03 Nov 2026 00:28:44 GMT  
		Size: 35.7 KB (35660 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:26.10-oracle`

```console
$ docker pull mysql@sha256:3819b2b23835c4a73c8b022fafc33c8095c0f81c929a8b7a84613d2fba6c52f5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:26.10-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:b401608b19ffafbc6aa3d84523acf783078c8cf01e0f7ee1dc3ca75a5701a999
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.0 MB (299036505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88276261eddbb021ff76b1dfdc9c7ad37b9b053449e39f50f7d1aa594afe4db2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 03 Nov 2026 00:22:58 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 03 Nov 2026 00:22:58 GMT
CMD ["/bin/bash"]
# Tue, 03 Nov 2026 00:25:53 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 03 Nov 2026 00:25:54 GMT
ENV GOSU_VERSION=1.19
# Tue, 03 Nov 2026 00:25:54 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 03 Nov 2026 00:26:32 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 03 Nov 2026 00:26:33 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 03 Nov 2026 00:26:33 GMT
ENV MYSQL_MAJOR=innovation
# Tue, 03 Nov 2026 00:26:33 GMT
ENV MYSQL_VERSION=26.10.0-1.el9
# Tue, 03 Nov 2026 00:26:33 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 03 Nov 2026 00:27:14 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 03 Nov 2026 00:27:14 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 03 Nov 2026 00:27:14 GMT
ENV MYSQL_SHELL_VERSION=26.10.0-1.el9
# Tue, 03 Nov 2026 00:28:04 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 03 Nov 2026 00:28:04 GMT
VOLUME [/var/lib/mysql]
# Tue, 03 Nov 2026 00:28:04 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 00:28:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 00:28:04 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 03 Nov 2026 00:28:04 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c3e99775cc39154c5a4687d6aeb43d4162a1fec417e872075b1e50567e8aed20`  
		Last Modified: Tue, 03 Nov 2026 00:23:09 GMT  
		Size: 47.2 MB (47186609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3594eab1df5f3f34fecddcdf0c3b57323dbea7bf7696d49547df71dbbaa31ea9`  
		Last Modified: Tue, 03 Nov 2026 00:28:30 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37fa2793f15fbe8afa9ca05c1799457534e9c377ca7501db597c62de8e2ae1bd`  
		Last Modified: Tue, 03 Nov 2026 00:28:31 GMT  
		Size: 783.6 KB (783554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83d647c7d3d0c4c4e237e633333c4c4408acfc01909bde6215589b87992a92b2`  
		Last Modified: Tue, 03 Nov 2026 00:28:30 GMT  
		Size: 6.2 MB (6188738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:335c0ba6129f79d6d295e152c017595d93229b0993958b12a9a83898eafcd8ef`  
		Last Modified: Tue, 03 Nov 2026 00:28:30 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:781b429d34a1519677ef274fc0ece117d411a7b21f67415dfe9538b17766a72b`  
		Last Modified: Tue, 03 Nov 2026 00:28:32 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:811578fcdc4f6070e1ac5cec15297b4960ae6873b1a6b76888ee2b37b8d26db9`  
		Last Modified: Tue, 03 Nov 2026 00:28:34 GMT  
		Size: 63.8 MB (63786463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ba4d3770669dba1cb86645b0931ce4e83759c82fa5fca496acf8d04622ff8c0`  
		Last Modified: Tue, 03 Nov 2026 00:28:32 GMT  
		Size: 324.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:969334aca9fafa733eb549898737409a2db9694cd37a30b8ca72f4aade6c8aea`  
		Last Modified: Tue, 03 Nov 2026 00:28:36 GMT  
		Size: 181.1 MB (181081770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63751bcf6dadc3c3ca6ae50b6aeff9788a851cf21304ac0f8091c0e000260179`  
		Last Modified: Tue, 03 Nov 2026 00:28:33 GMT  
		Size: 5.2 KB (5217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26.10-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:007da30fd0dbc6ab8866362eb9165cf6e7b5cec6825faf468d598ffdf47dc154
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5334093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba0a7e5b39bb058c7786003668fae2dd36b9b34a97441ceabf3cb4d35f03200d`

```dockerfile
```

-	Layers:
	-	`sha256:891cff0835d57a9e95db5e8eb70df4bcd95b537443360684fad2abb9e8335a57`  
		Last Modified: Tue, 03 Nov 2026 00:28:30 GMT  
		Size: 5.3 MB (5298774 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:24df5f010ba63cf921150dc8c90e0de612b65c675e20fea6e106fffcb08b9596`  
		Last Modified: Tue, 03 Nov 2026 00:28:30 GMT  
		Size: 35.3 KB (35319 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:26.10-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:0f2cbd36da41403ddf93b08f7682f95501fd2e22fbd4b728a0e42962d271f529
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.5 MB (295462504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aba3131d9f74d1a8e505de86aa0697e3ff59e76d24580359723d29ea4990a507`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 03 Nov 2026 00:23:12 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 03 Nov 2026 00:23:12 GMT
CMD ["/bin/bash"]
# Tue, 03 Nov 2026 00:26:00 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 03 Nov 2026 00:26:02 GMT
ENV GOSU_VERSION=1.19
# Tue, 03 Nov 2026 00:26:02 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 03 Nov 2026 00:26:41 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 03 Nov 2026 00:26:42 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 03 Nov 2026 00:26:42 GMT
ENV MYSQL_MAJOR=innovation
# Tue, 03 Nov 2026 00:26:42 GMT
ENV MYSQL_VERSION=26.10.0-1.el9
# Tue, 03 Nov 2026 00:26:42 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 03 Nov 2026 00:27:24 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 03 Nov 2026 00:27:24 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 03 Nov 2026 00:27:24 GMT
ENV MYSQL_SHELL_VERSION=26.10.0-1.el9
# Tue, 03 Nov 2026 00:28:16 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 03 Nov 2026 00:28:16 GMT
VOLUME [/var/lib/mysql]
# Tue, 03 Nov 2026 00:28:16 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 00:28:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 00:28:16 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 03 Nov 2026 00:28:16 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:329828f10dd1b721024e28953696281394ad8b6f7621b47c0fb0d2d41e2838ab`  
		Last Modified: Tue, 03 Nov 2026 00:23:23 GMT  
		Size: 45.7 MB (45734040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abb8b963bc245ef2e7d160c6e5ef6e71bca1b0d20b36a48ba155dec212875b97`  
		Last Modified: Tue, 03 Nov 2026 00:28:44 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f360cfcd0c6859691383f9ccef43f51c983b9dbfe96263264b7c376a22ac8ca`  
		Last Modified: Tue, 03 Nov 2026 00:28:43 GMT  
		Size: 737.5 KB (737531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f589dac8ec1fcba3211e9da63231e0ddf87ae39921f10f12f31f24b27fa1473e`  
		Last Modified: Tue, 03 Nov 2026 00:28:44 GMT  
		Size: 5.8 MB (5809137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ac49b392b7845c771c3f701766cdb34b3b945439231c710d9996c7793897366`  
		Last Modified: Tue, 03 Nov 2026 00:28:44 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:111940a3af7aad0208eb3eca6716db74d7e12ad9325efcd8d97fd634c3a787c7`  
		Last Modified: Tue, 03 Nov 2026 00:28:45 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f66cb2d4f38de30497f688d95516e6c73624c74a91bbe718925a18ff2822f3dc`  
		Last Modified: Tue, 03 Nov 2026 00:28:47 GMT  
		Size: 63.8 MB (63823011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01ab56bed6cffb7b414a39f35c2447dcd55e5aaa04aeabc16e9b22e013d46760`  
		Last Modified: Tue, 03 Nov 2026 00:28:45 GMT  
		Size: 324.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b44aa14e230fbb918ff2d6a1c8131447dcdf242f29d1a24b6d153129f91ec328`  
		Last Modified: Tue, 03 Nov 2026 00:28:49 GMT  
		Size: 179.3 MB (179349404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59a4b8888e49d69b7ae0b9e4ba91161cfd4eb35a98c3a14e8f52085233448758`  
		Last Modified: Tue, 03 Nov 2026 00:28:46 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26.10-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:597a605bfb2209bb1ccad1707c70fb1a59fcb161120f781333646d05ae193467
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5332907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30601a021da51824f13c963dc30a9429f87d36c9fba4f1a6a8b944eb6894c0fd`

```dockerfile
```

-	Layers:
	-	`sha256:1b185e2dd51057c56062cd713e3df44f624e8a5d512a214dbc1ae42d0bc75646`  
		Last Modified: Tue, 03 Nov 2026 00:28:44 GMT  
		Size: 5.3 MB (5297247 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5e5100be39aea4a58c6988e15bffe2b269e64355ddca478523fa2969926694f5`  
		Last Modified: Tue, 03 Nov 2026 00:28:44 GMT  
		Size: 35.7 KB (35660 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:26.10-oraclelinux9`

```console
$ docker pull mysql@sha256:3819b2b23835c4a73c8b022fafc33c8095c0f81c929a8b7a84613d2fba6c52f5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:26.10-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:b401608b19ffafbc6aa3d84523acf783078c8cf01e0f7ee1dc3ca75a5701a999
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.0 MB (299036505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88276261eddbb021ff76b1dfdc9c7ad37b9b053449e39f50f7d1aa594afe4db2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 03 Nov 2026 00:22:58 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 03 Nov 2026 00:22:58 GMT
CMD ["/bin/bash"]
# Tue, 03 Nov 2026 00:25:53 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 03 Nov 2026 00:25:54 GMT
ENV GOSU_VERSION=1.19
# Tue, 03 Nov 2026 00:25:54 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 03 Nov 2026 00:26:32 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 03 Nov 2026 00:26:33 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 03 Nov 2026 00:26:33 GMT
ENV MYSQL_MAJOR=innovation
# Tue, 03 Nov 2026 00:26:33 GMT
ENV MYSQL_VERSION=26.10.0-1.el9
# Tue, 03 Nov 2026 00:26:33 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 03 Nov 2026 00:27:14 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 03 Nov 2026 00:27:14 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 03 Nov 2026 00:27:14 GMT
ENV MYSQL_SHELL_VERSION=26.10.0-1.el9
# Tue, 03 Nov 2026 00:28:04 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 03 Nov 2026 00:28:04 GMT
VOLUME [/var/lib/mysql]
# Tue, 03 Nov 2026 00:28:04 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 00:28:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 00:28:04 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 03 Nov 2026 00:28:04 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c3e99775cc39154c5a4687d6aeb43d4162a1fec417e872075b1e50567e8aed20`  
		Last Modified: Tue, 03 Nov 2026 00:23:09 GMT  
		Size: 47.2 MB (47186609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3594eab1df5f3f34fecddcdf0c3b57323dbea7bf7696d49547df71dbbaa31ea9`  
		Last Modified: Tue, 03 Nov 2026 00:28:30 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37fa2793f15fbe8afa9ca05c1799457534e9c377ca7501db597c62de8e2ae1bd`  
		Last Modified: Tue, 03 Nov 2026 00:28:31 GMT  
		Size: 783.6 KB (783554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83d647c7d3d0c4c4e237e633333c4c4408acfc01909bde6215589b87992a92b2`  
		Last Modified: Tue, 03 Nov 2026 00:28:30 GMT  
		Size: 6.2 MB (6188738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:335c0ba6129f79d6d295e152c017595d93229b0993958b12a9a83898eafcd8ef`  
		Last Modified: Tue, 03 Nov 2026 00:28:30 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:781b429d34a1519677ef274fc0ece117d411a7b21f67415dfe9538b17766a72b`  
		Last Modified: Tue, 03 Nov 2026 00:28:32 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:811578fcdc4f6070e1ac5cec15297b4960ae6873b1a6b76888ee2b37b8d26db9`  
		Last Modified: Tue, 03 Nov 2026 00:28:34 GMT  
		Size: 63.8 MB (63786463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ba4d3770669dba1cb86645b0931ce4e83759c82fa5fca496acf8d04622ff8c0`  
		Last Modified: Tue, 03 Nov 2026 00:28:32 GMT  
		Size: 324.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:969334aca9fafa733eb549898737409a2db9694cd37a30b8ca72f4aade6c8aea`  
		Last Modified: Tue, 03 Nov 2026 00:28:36 GMT  
		Size: 181.1 MB (181081770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63751bcf6dadc3c3ca6ae50b6aeff9788a851cf21304ac0f8091c0e000260179`  
		Last Modified: Tue, 03 Nov 2026 00:28:33 GMT  
		Size: 5.2 KB (5217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26.10-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:007da30fd0dbc6ab8866362eb9165cf6e7b5cec6825faf468d598ffdf47dc154
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5334093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba0a7e5b39bb058c7786003668fae2dd36b9b34a97441ceabf3cb4d35f03200d`

```dockerfile
```

-	Layers:
	-	`sha256:891cff0835d57a9e95db5e8eb70df4bcd95b537443360684fad2abb9e8335a57`  
		Last Modified: Tue, 03 Nov 2026 00:28:30 GMT  
		Size: 5.3 MB (5298774 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:24df5f010ba63cf921150dc8c90e0de612b65c675e20fea6e106fffcb08b9596`  
		Last Modified: Tue, 03 Nov 2026 00:28:30 GMT  
		Size: 35.3 KB (35319 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:26.10-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:0f2cbd36da41403ddf93b08f7682f95501fd2e22fbd4b728a0e42962d271f529
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.5 MB (295462504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aba3131d9f74d1a8e505de86aa0697e3ff59e76d24580359723d29ea4990a507`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 03 Nov 2026 00:23:12 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 03 Nov 2026 00:23:12 GMT
CMD ["/bin/bash"]
# Tue, 03 Nov 2026 00:26:00 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 03 Nov 2026 00:26:02 GMT
ENV GOSU_VERSION=1.19
# Tue, 03 Nov 2026 00:26:02 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 03 Nov 2026 00:26:41 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 03 Nov 2026 00:26:42 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 03 Nov 2026 00:26:42 GMT
ENV MYSQL_MAJOR=innovation
# Tue, 03 Nov 2026 00:26:42 GMT
ENV MYSQL_VERSION=26.10.0-1.el9
# Tue, 03 Nov 2026 00:26:42 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 03 Nov 2026 00:27:24 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 03 Nov 2026 00:27:24 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 03 Nov 2026 00:27:24 GMT
ENV MYSQL_SHELL_VERSION=26.10.0-1.el9
# Tue, 03 Nov 2026 00:28:16 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 03 Nov 2026 00:28:16 GMT
VOLUME [/var/lib/mysql]
# Tue, 03 Nov 2026 00:28:16 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 00:28:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 00:28:16 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 03 Nov 2026 00:28:16 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:329828f10dd1b721024e28953696281394ad8b6f7621b47c0fb0d2d41e2838ab`  
		Last Modified: Tue, 03 Nov 2026 00:23:23 GMT  
		Size: 45.7 MB (45734040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abb8b963bc245ef2e7d160c6e5ef6e71bca1b0d20b36a48ba155dec212875b97`  
		Last Modified: Tue, 03 Nov 2026 00:28:44 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f360cfcd0c6859691383f9ccef43f51c983b9dbfe96263264b7c376a22ac8ca`  
		Last Modified: Tue, 03 Nov 2026 00:28:43 GMT  
		Size: 737.5 KB (737531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f589dac8ec1fcba3211e9da63231e0ddf87ae39921f10f12f31f24b27fa1473e`  
		Last Modified: Tue, 03 Nov 2026 00:28:44 GMT  
		Size: 5.8 MB (5809137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ac49b392b7845c771c3f701766cdb34b3b945439231c710d9996c7793897366`  
		Last Modified: Tue, 03 Nov 2026 00:28:44 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:111940a3af7aad0208eb3eca6716db74d7e12ad9325efcd8d97fd634c3a787c7`  
		Last Modified: Tue, 03 Nov 2026 00:28:45 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f66cb2d4f38de30497f688d95516e6c73624c74a91bbe718925a18ff2822f3dc`  
		Last Modified: Tue, 03 Nov 2026 00:28:47 GMT  
		Size: 63.8 MB (63823011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01ab56bed6cffb7b414a39f35c2447dcd55e5aaa04aeabc16e9b22e013d46760`  
		Last Modified: Tue, 03 Nov 2026 00:28:45 GMT  
		Size: 324.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b44aa14e230fbb918ff2d6a1c8131447dcdf242f29d1a24b6d153129f91ec328`  
		Last Modified: Tue, 03 Nov 2026 00:28:49 GMT  
		Size: 179.3 MB (179349404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59a4b8888e49d69b7ae0b9e4ba91161cfd4eb35a98c3a14e8f52085233448758`  
		Last Modified: Tue, 03 Nov 2026 00:28:46 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26.10-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:597a605bfb2209bb1ccad1707c70fb1a59fcb161120f781333646d05ae193467
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5332907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30601a021da51824f13c963dc30a9429f87d36c9fba4f1a6a8b944eb6894c0fd`

```dockerfile
```

-	Layers:
	-	`sha256:1b185e2dd51057c56062cd713e3df44f624e8a5d512a214dbc1ae42d0bc75646`  
		Last Modified: Tue, 03 Nov 2026 00:28:44 GMT  
		Size: 5.3 MB (5297247 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5e5100be39aea4a58c6988e15bffe2b269e64355ddca478523fa2969926694f5`  
		Last Modified: Tue, 03 Nov 2026 00:28:44 GMT  
		Size: 35.7 KB (35660 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:26.10.0`

```console
$ docker pull mysql@sha256:3819b2b23835c4a73c8b022fafc33c8095c0f81c929a8b7a84613d2fba6c52f5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:26.10.0` - linux; amd64

```console
$ docker pull mysql@sha256:b401608b19ffafbc6aa3d84523acf783078c8cf01e0f7ee1dc3ca75a5701a999
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.0 MB (299036505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88276261eddbb021ff76b1dfdc9c7ad37b9b053449e39f50f7d1aa594afe4db2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 03 Nov 2026 00:22:58 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 03 Nov 2026 00:22:58 GMT
CMD ["/bin/bash"]
# Tue, 03 Nov 2026 00:25:53 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 03 Nov 2026 00:25:54 GMT
ENV GOSU_VERSION=1.19
# Tue, 03 Nov 2026 00:25:54 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 03 Nov 2026 00:26:32 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 03 Nov 2026 00:26:33 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 03 Nov 2026 00:26:33 GMT
ENV MYSQL_MAJOR=innovation
# Tue, 03 Nov 2026 00:26:33 GMT
ENV MYSQL_VERSION=26.10.0-1.el9
# Tue, 03 Nov 2026 00:26:33 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 03 Nov 2026 00:27:14 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 03 Nov 2026 00:27:14 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 03 Nov 2026 00:27:14 GMT
ENV MYSQL_SHELL_VERSION=26.10.0-1.el9
# Tue, 03 Nov 2026 00:28:04 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 03 Nov 2026 00:28:04 GMT
VOLUME [/var/lib/mysql]
# Tue, 03 Nov 2026 00:28:04 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 00:28:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 00:28:04 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 03 Nov 2026 00:28:04 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c3e99775cc39154c5a4687d6aeb43d4162a1fec417e872075b1e50567e8aed20`  
		Last Modified: Tue, 03 Nov 2026 00:23:09 GMT  
		Size: 47.2 MB (47186609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3594eab1df5f3f34fecddcdf0c3b57323dbea7bf7696d49547df71dbbaa31ea9`  
		Last Modified: Tue, 03 Nov 2026 00:28:30 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37fa2793f15fbe8afa9ca05c1799457534e9c377ca7501db597c62de8e2ae1bd`  
		Last Modified: Tue, 03 Nov 2026 00:28:31 GMT  
		Size: 783.6 KB (783554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83d647c7d3d0c4c4e237e633333c4c4408acfc01909bde6215589b87992a92b2`  
		Last Modified: Tue, 03 Nov 2026 00:28:30 GMT  
		Size: 6.2 MB (6188738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:335c0ba6129f79d6d295e152c017595d93229b0993958b12a9a83898eafcd8ef`  
		Last Modified: Tue, 03 Nov 2026 00:28:30 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:781b429d34a1519677ef274fc0ece117d411a7b21f67415dfe9538b17766a72b`  
		Last Modified: Tue, 03 Nov 2026 00:28:32 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:811578fcdc4f6070e1ac5cec15297b4960ae6873b1a6b76888ee2b37b8d26db9`  
		Last Modified: Tue, 03 Nov 2026 00:28:34 GMT  
		Size: 63.8 MB (63786463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ba4d3770669dba1cb86645b0931ce4e83759c82fa5fca496acf8d04622ff8c0`  
		Last Modified: Tue, 03 Nov 2026 00:28:32 GMT  
		Size: 324.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:969334aca9fafa733eb549898737409a2db9694cd37a30b8ca72f4aade6c8aea`  
		Last Modified: Tue, 03 Nov 2026 00:28:36 GMT  
		Size: 181.1 MB (181081770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63751bcf6dadc3c3ca6ae50b6aeff9788a851cf21304ac0f8091c0e000260179`  
		Last Modified: Tue, 03 Nov 2026 00:28:33 GMT  
		Size: 5.2 KB (5217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26.10.0` - unknown; unknown

```console
$ docker pull mysql@sha256:007da30fd0dbc6ab8866362eb9165cf6e7b5cec6825faf468d598ffdf47dc154
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5334093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba0a7e5b39bb058c7786003668fae2dd36b9b34a97441ceabf3cb4d35f03200d`

```dockerfile
```

-	Layers:
	-	`sha256:891cff0835d57a9e95db5e8eb70df4bcd95b537443360684fad2abb9e8335a57`  
		Last Modified: Tue, 03 Nov 2026 00:28:30 GMT  
		Size: 5.3 MB (5298774 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:24df5f010ba63cf921150dc8c90e0de612b65c675e20fea6e106fffcb08b9596`  
		Last Modified: Tue, 03 Nov 2026 00:28:30 GMT  
		Size: 35.3 KB (35319 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:26.10.0` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:0f2cbd36da41403ddf93b08f7682f95501fd2e22fbd4b728a0e42962d271f529
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.5 MB (295462504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aba3131d9f74d1a8e505de86aa0697e3ff59e76d24580359723d29ea4990a507`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 03 Nov 2026 00:23:12 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 03 Nov 2026 00:23:12 GMT
CMD ["/bin/bash"]
# Tue, 03 Nov 2026 00:26:00 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 03 Nov 2026 00:26:02 GMT
ENV GOSU_VERSION=1.19
# Tue, 03 Nov 2026 00:26:02 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 03 Nov 2026 00:26:41 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 03 Nov 2026 00:26:42 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 03 Nov 2026 00:26:42 GMT
ENV MYSQL_MAJOR=innovation
# Tue, 03 Nov 2026 00:26:42 GMT
ENV MYSQL_VERSION=26.10.0-1.el9
# Tue, 03 Nov 2026 00:26:42 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 03 Nov 2026 00:27:24 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 03 Nov 2026 00:27:24 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 03 Nov 2026 00:27:24 GMT
ENV MYSQL_SHELL_VERSION=26.10.0-1.el9
# Tue, 03 Nov 2026 00:28:16 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 03 Nov 2026 00:28:16 GMT
VOLUME [/var/lib/mysql]
# Tue, 03 Nov 2026 00:28:16 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 00:28:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 00:28:16 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 03 Nov 2026 00:28:16 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:329828f10dd1b721024e28953696281394ad8b6f7621b47c0fb0d2d41e2838ab`  
		Last Modified: Tue, 03 Nov 2026 00:23:23 GMT  
		Size: 45.7 MB (45734040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abb8b963bc245ef2e7d160c6e5ef6e71bca1b0d20b36a48ba155dec212875b97`  
		Last Modified: Tue, 03 Nov 2026 00:28:44 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f360cfcd0c6859691383f9ccef43f51c983b9dbfe96263264b7c376a22ac8ca`  
		Last Modified: Tue, 03 Nov 2026 00:28:43 GMT  
		Size: 737.5 KB (737531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f589dac8ec1fcba3211e9da63231e0ddf87ae39921f10f12f31f24b27fa1473e`  
		Last Modified: Tue, 03 Nov 2026 00:28:44 GMT  
		Size: 5.8 MB (5809137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ac49b392b7845c771c3f701766cdb34b3b945439231c710d9996c7793897366`  
		Last Modified: Tue, 03 Nov 2026 00:28:44 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:111940a3af7aad0208eb3eca6716db74d7e12ad9325efcd8d97fd634c3a787c7`  
		Last Modified: Tue, 03 Nov 2026 00:28:45 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f66cb2d4f38de30497f688d95516e6c73624c74a91bbe718925a18ff2822f3dc`  
		Last Modified: Tue, 03 Nov 2026 00:28:47 GMT  
		Size: 63.8 MB (63823011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01ab56bed6cffb7b414a39f35c2447dcd55e5aaa04aeabc16e9b22e013d46760`  
		Last Modified: Tue, 03 Nov 2026 00:28:45 GMT  
		Size: 324.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b44aa14e230fbb918ff2d6a1c8131447dcdf242f29d1a24b6d153129f91ec328`  
		Last Modified: Tue, 03 Nov 2026 00:28:49 GMT  
		Size: 179.3 MB (179349404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59a4b8888e49d69b7ae0b9e4ba91161cfd4eb35a98c3a14e8f52085233448758`  
		Last Modified: Tue, 03 Nov 2026 00:28:46 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26.10.0` - unknown; unknown

```console
$ docker pull mysql@sha256:597a605bfb2209bb1ccad1707c70fb1a59fcb161120f781333646d05ae193467
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5332907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30601a021da51824f13c963dc30a9429f87d36c9fba4f1a6a8b944eb6894c0fd`

```dockerfile
```

-	Layers:
	-	`sha256:1b185e2dd51057c56062cd713e3df44f624e8a5d512a214dbc1ae42d0bc75646`  
		Last Modified: Tue, 03 Nov 2026 00:28:44 GMT  
		Size: 5.3 MB (5297247 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5e5100be39aea4a58c6988e15bffe2b269e64355ddca478523fa2969926694f5`  
		Last Modified: Tue, 03 Nov 2026 00:28:44 GMT  
		Size: 35.7 KB (35660 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:26.10.0-oracle`

```console
$ docker pull mysql@sha256:3819b2b23835c4a73c8b022fafc33c8095c0f81c929a8b7a84613d2fba6c52f5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:26.10.0-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:b401608b19ffafbc6aa3d84523acf783078c8cf01e0f7ee1dc3ca75a5701a999
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.0 MB (299036505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88276261eddbb021ff76b1dfdc9c7ad37b9b053449e39f50f7d1aa594afe4db2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 03 Nov 2026 00:22:58 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 03 Nov 2026 00:22:58 GMT
CMD ["/bin/bash"]
# Tue, 03 Nov 2026 00:25:53 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 03 Nov 2026 00:25:54 GMT
ENV GOSU_VERSION=1.19
# Tue, 03 Nov 2026 00:25:54 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 03 Nov 2026 00:26:32 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 03 Nov 2026 00:26:33 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 03 Nov 2026 00:26:33 GMT
ENV MYSQL_MAJOR=innovation
# Tue, 03 Nov 2026 00:26:33 GMT
ENV MYSQL_VERSION=26.10.0-1.el9
# Tue, 03 Nov 2026 00:26:33 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 03 Nov 2026 00:27:14 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 03 Nov 2026 00:27:14 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 03 Nov 2026 00:27:14 GMT
ENV MYSQL_SHELL_VERSION=26.10.0-1.el9
# Tue, 03 Nov 2026 00:28:04 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 03 Nov 2026 00:28:04 GMT
VOLUME [/var/lib/mysql]
# Tue, 03 Nov 2026 00:28:04 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 00:28:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 00:28:04 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 03 Nov 2026 00:28:04 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c3e99775cc39154c5a4687d6aeb43d4162a1fec417e872075b1e50567e8aed20`  
		Last Modified: Tue, 03 Nov 2026 00:23:09 GMT  
		Size: 47.2 MB (47186609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3594eab1df5f3f34fecddcdf0c3b57323dbea7bf7696d49547df71dbbaa31ea9`  
		Last Modified: Tue, 03 Nov 2026 00:28:30 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37fa2793f15fbe8afa9ca05c1799457534e9c377ca7501db597c62de8e2ae1bd`  
		Last Modified: Tue, 03 Nov 2026 00:28:31 GMT  
		Size: 783.6 KB (783554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83d647c7d3d0c4c4e237e633333c4c4408acfc01909bde6215589b87992a92b2`  
		Last Modified: Tue, 03 Nov 2026 00:28:30 GMT  
		Size: 6.2 MB (6188738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:335c0ba6129f79d6d295e152c017595d93229b0993958b12a9a83898eafcd8ef`  
		Last Modified: Tue, 03 Nov 2026 00:28:30 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:781b429d34a1519677ef274fc0ece117d411a7b21f67415dfe9538b17766a72b`  
		Last Modified: Tue, 03 Nov 2026 00:28:32 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:811578fcdc4f6070e1ac5cec15297b4960ae6873b1a6b76888ee2b37b8d26db9`  
		Last Modified: Tue, 03 Nov 2026 00:28:34 GMT  
		Size: 63.8 MB (63786463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ba4d3770669dba1cb86645b0931ce4e83759c82fa5fca496acf8d04622ff8c0`  
		Last Modified: Tue, 03 Nov 2026 00:28:32 GMT  
		Size: 324.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:969334aca9fafa733eb549898737409a2db9694cd37a30b8ca72f4aade6c8aea`  
		Last Modified: Tue, 03 Nov 2026 00:28:36 GMT  
		Size: 181.1 MB (181081770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63751bcf6dadc3c3ca6ae50b6aeff9788a851cf21304ac0f8091c0e000260179`  
		Last Modified: Tue, 03 Nov 2026 00:28:33 GMT  
		Size: 5.2 KB (5217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26.10.0-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:007da30fd0dbc6ab8866362eb9165cf6e7b5cec6825faf468d598ffdf47dc154
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5334093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba0a7e5b39bb058c7786003668fae2dd36b9b34a97441ceabf3cb4d35f03200d`

```dockerfile
```

-	Layers:
	-	`sha256:891cff0835d57a9e95db5e8eb70df4bcd95b537443360684fad2abb9e8335a57`  
		Last Modified: Tue, 03 Nov 2026 00:28:30 GMT  
		Size: 5.3 MB (5298774 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:24df5f010ba63cf921150dc8c90e0de612b65c675e20fea6e106fffcb08b9596`  
		Last Modified: Tue, 03 Nov 2026 00:28:30 GMT  
		Size: 35.3 KB (35319 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:26.10.0-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:0f2cbd36da41403ddf93b08f7682f95501fd2e22fbd4b728a0e42962d271f529
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.5 MB (295462504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aba3131d9f74d1a8e505de86aa0697e3ff59e76d24580359723d29ea4990a507`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 03 Nov 2026 00:23:12 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 03 Nov 2026 00:23:12 GMT
CMD ["/bin/bash"]
# Tue, 03 Nov 2026 00:26:00 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 03 Nov 2026 00:26:02 GMT
ENV GOSU_VERSION=1.19
# Tue, 03 Nov 2026 00:26:02 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 03 Nov 2026 00:26:41 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 03 Nov 2026 00:26:42 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 03 Nov 2026 00:26:42 GMT
ENV MYSQL_MAJOR=innovation
# Tue, 03 Nov 2026 00:26:42 GMT
ENV MYSQL_VERSION=26.10.0-1.el9
# Tue, 03 Nov 2026 00:26:42 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 03 Nov 2026 00:27:24 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 03 Nov 2026 00:27:24 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 03 Nov 2026 00:27:24 GMT
ENV MYSQL_SHELL_VERSION=26.10.0-1.el9
# Tue, 03 Nov 2026 00:28:16 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 03 Nov 2026 00:28:16 GMT
VOLUME [/var/lib/mysql]
# Tue, 03 Nov 2026 00:28:16 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 00:28:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 00:28:16 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 03 Nov 2026 00:28:16 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:329828f10dd1b721024e28953696281394ad8b6f7621b47c0fb0d2d41e2838ab`  
		Last Modified: Tue, 03 Nov 2026 00:23:23 GMT  
		Size: 45.7 MB (45734040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abb8b963bc245ef2e7d160c6e5ef6e71bca1b0d20b36a48ba155dec212875b97`  
		Last Modified: Tue, 03 Nov 2026 00:28:44 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f360cfcd0c6859691383f9ccef43f51c983b9dbfe96263264b7c376a22ac8ca`  
		Last Modified: Tue, 03 Nov 2026 00:28:43 GMT  
		Size: 737.5 KB (737531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f589dac8ec1fcba3211e9da63231e0ddf87ae39921f10f12f31f24b27fa1473e`  
		Last Modified: Tue, 03 Nov 2026 00:28:44 GMT  
		Size: 5.8 MB (5809137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ac49b392b7845c771c3f701766cdb34b3b945439231c710d9996c7793897366`  
		Last Modified: Tue, 03 Nov 2026 00:28:44 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:111940a3af7aad0208eb3eca6716db74d7e12ad9325efcd8d97fd634c3a787c7`  
		Last Modified: Tue, 03 Nov 2026 00:28:45 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f66cb2d4f38de30497f688d95516e6c73624c74a91bbe718925a18ff2822f3dc`  
		Last Modified: Tue, 03 Nov 2026 00:28:47 GMT  
		Size: 63.8 MB (63823011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01ab56bed6cffb7b414a39f35c2447dcd55e5aaa04aeabc16e9b22e013d46760`  
		Last Modified: Tue, 03 Nov 2026 00:28:45 GMT  
		Size: 324.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b44aa14e230fbb918ff2d6a1c8131447dcdf242f29d1a24b6d153129f91ec328`  
		Last Modified: Tue, 03 Nov 2026 00:28:49 GMT  
		Size: 179.3 MB (179349404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59a4b8888e49d69b7ae0b9e4ba91161cfd4eb35a98c3a14e8f52085233448758`  
		Last Modified: Tue, 03 Nov 2026 00:28:46 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26.10.0-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:597a605bfb2209bb1ccad1707c70fb1a59fcb161120f781333646d05ae193467
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5332907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30601a021da51824f13c963dc30a9429f87d36c9fba4f1a6a8b944eb6894c0fd`

```dockerfile
```

-	Layers:
	-	`sha256:1b185e2dd51057c56062cd713e3df44f624e8a5d512a214dbc1ae42d0bc75646`  
		Last Modified: Tue, 03 Nov 2026 00:28:44 GMT  
		Size: 5.3 MB (5297247 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5e5100be39aea4a58c6988e15bffe2b269e64355ddca478523fa2969926694f5`  
		Last Modified: Tue, 03 Nov 2026 00:28:44 GMT  
		Size: 35.7 KB (35660 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:26.10.0-oraclelinux9`

```console
$ docker pull mysql@sha256:3819b2b23835c4a73c8b022fafc33c8095c0f81c929a8b7a84613d2fba6c52f5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:26.10.0-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:b401608b19ffafbc6aa3d84523acf783078c8cf01e0f7ee1dc3ca75a5701a999
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.0 MB (299036505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88276261eddbb021ff76b1dfdc9c7ad37b9b053449e39f50f7d1aa594afe4db2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 03 Nov 2026 00:22:58 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 03 Nov 2026 00:22:58 GMT
CMD ["/bin/bash"]
# Tue, 03 Nov 2026 00:25:53 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 03 Nov 2026 00:25:54 GMT
ENV GOSU_VERSION=1.19
# Tue, 03 Nov 2026 00:25:54 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 03 Nov 2026 00:26:32 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 03 Nov 2026 00:26:33 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 03 Nov 2026 00:26:33 GMT
ENV MYSQL_MAJOR=innovation
# Tue, 03 Nov 2026 00:26:33 GMT
ENV MYSQL_VERSION=26.10.0-1.el9
# Tue, 03 Nov 2026 00:26:33 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 03 Nov 2026 00:27:14 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 03 Nov 2026 00:27:14 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 03 Nov 2026 00:27:14 GMT
ENV MYSQL_SHELL_VERSION=26.10.0-1.el9
# Tue, 03 Nov 2026 00:28:04 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 03 Nov 2026 00:28:04 GMT
VOLUME [/var/lib/mysql]
# Tue, 03 Nov 2026 00:28:04 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 00:28:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 00:28:04 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 03 Nov 2026 00:28:04 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c3e99775cc39154c5a4687d6aeb43d4162a1fec417e872075b1e50567e8aed20`  
		Last Modified: Tue, 03 Nov 2026 00:23:09 GMT  
		Size: 47.2 MB (47186609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3594eab1df5f3f34fecddcdf0c3b57323dbea7bf7696d49547df71dbbaa31ea9`  
		Last Modified: Tue, 03 Nov 2026 00:28:30 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37fa2793f15fbe8afa9ca05c1799457534e9c377ca7501db597c62de8e2ae1bd`  
		Last Modified: Tue, 03 Nov 2026 00:28:31 GMT  
		Size: 783.6 KB (783554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83d647c7d3d0c4c4e237e633333c4c4408acfc01909bde6215589b87992a92b2`  
		Last Modified: Tue, 03 Nov 2026 00:28:30 GMT  
		Size: 6.2 MB (6188738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:335c0ba6129f79d6d295e152c017595d93229b0993958b12a9a83898eafcd8ef`  
		Last Modified: Tue, 03 Nov 2026 00:28:30 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:781b429d34a1519677ef274fc0ece117d411a7b21f67415dfe9538b17766a72b`  
		Last Modified: Tue, 03 Nov 2026 00:28:32 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:811578fcdc4f6070e1ac5cec15297b4960ae6873b1a6b76888ee2b37b8d26db9`  
		Last Modified: Tue, 03 Nov 2026 00:28:34 GMT  
		Size: 63.8 MB (63786463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ba4d3770669dba1cb86645b0931ce4e83759c82fa5fca496acf8d04622ff8c0`  
		Last Modified: Tue, 03 Nov 2026 00:28:32 GMT  
		Size: 324.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:969334aca9fafa733eb549898737409a2db9694cd37a30b8ca72f4aade6c8aea`  
		Last Modified: Tue, 03 Nov 2026 00:28:36 GMT  
		Size: 181.1 MB (181081770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63751bcf6dadc3c3ca6ae50b6aeff9788a851cf21304ac0f8091c0e000260179`  
		Last Modified: Tue, 03 Nov 2026 00:28:33 GMT  
		Size: 5.2 KB (5217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26.10.0-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:007da30fd0dbc6ab8866362eb9165cf6e7b5cec6825faf468d598ffdf47dc154
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5334093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba0a7e5b39bb058c7786003668fae2dd36b9b34a97441ceabf3cb4d35f03200d`

```dockerfile
```

-	Layers:
	-	`sha256:891cff0835d57a9e95db5e8eb70df4bcd95b537443360684fad2abb9e8335a57`  
		Last Modified: Tue, 03 Nov 2026 00:28:30 GMT  
		Size: 5.3 MB (5298774 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:24df5f010ba63cf921150dc8c90e0de612b65c675e20fea6e106fffcb08b9596`  
		Last Modified: Tue, 03 Nov 2026 00:28:30 GMT  
		Size: 35.3 KB (35319 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:26.10.0-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:0f2cbd36da41403ddf93b08f7682f95501fd2e22fbd4b728a0e42962d271f529
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.5 MB (295462504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aba3131d9f74d1a8e505de86aa0697e3ff59e76d24580359723d29ea4990a507`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 03 Nov 2026 00:23:12 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 03 Nov 2026 00:23:12 GMT
CMD ["/bin/bash"]
# Tue, 03 Nov 2026 00:26:00 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 03 Nov 2026 00:26:02 GMT
ENV GOSU_VERSION=1.19
# Tue, 03 Nov 2026 00:26:02 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 03 Nov 2026 00:26:41 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 03 Nov 2026 00:26:42 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 03 Nov 2026 00:26:42 GMT
ENV MYSQL_MAJOR=innovation
# Tue, 03 Nov 2026 00:26:42 GMT
ENV MYSQL_VERSION=26.10.0-1.el9
# Tue, 03 Nov 2026 00:26:42 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 03 Nov 2026 00:27:24 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 03 Nov 2026 00:27:24 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 03 Nov 2026 00:27:24 GMT
ENV MYSQL_SHELL_VERSION=26.10.0-1.el9
# Tue, 03 Nov 2026 00:28:16 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 03 Nov 2026 00:28:16 GMT
VOLUME [/var/lib/mysql]
# Tue, 03 Nov 2026 00:28:16 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 00:28:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 00:28:16 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 03 Nov 2026 00:28:16 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:329828f10dd1b721024e28953696281394ad8b6f7621b47c0fb0d2d41e2838ab`  
		Last Modified: Tue, 03 Nov 2026 00:23:23 GMT  
		Size: 45.7 MB (45734040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abb8b963bc245ef2e7d160c6e5ef6e71bca1b0d20b36a48ba155dec212875b97`  
		Last Modified: Tue, 03 Nov 2026 00:28:44 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f360cfcd0c6859691383f9ccef43f51c983b9dbfe96263264b7c376a22ac8ca`  
		Last Modified: Tue, 03 Nov 2026 00:28:43 GMT  
		Size: 737.5 KB (737531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f589dac8ec1fcba3211e9da63231e0ddf87ae39921f10f12f31f24b27fa1473e`  
		Last Modified: Tue, 03 Nov 2026 00:28:44 GMT  
		Size: 5.8 MB (5809137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ac49b392b7845c771c3f701766cdb34b3b945439231c710d9996c7793897366`  
		Last Modified: Tue, 03 Nov 2026 00:28:44 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:111940a3af7aad0208eb3eca6716db74d7e12ad9325efcd8d97fd634c3a787c7`  
		Last Modified: Tue, 03 Nov 2026 00:28:45 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f66cb2d4f38de30497f688d95516e6c73624c74a91bbe718925a18ff2822f3dc`  
		Last Modified: Tue, 03 Nov 2026 00:28:47 GMT  
		Size: 63.8 MB (63823011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01ab56bed6cffb7b414a39f35c2447dcd55e5aaa04aeabc16e9b22e013d46760`  
		Last Modified: Tue, 03 Nov 2026 00:28:45 GMT  
		Size: 324.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b44aa14e230fbb918ff2d6a1c8131447dcdf242f29d1a24b6d153129f91ec328`  
		Last Modified: Tue, 03 Nov 2026 00:28:49 GMT  
		Size: 179.3 MB (179349404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59a4b8888e49d69b7ae0b9e4ba91161cfd4eb35a98c3a14e8f52085233448758`  
		Last Modified: Tue, 03 Nov 2026 00:28:46 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26.10.0-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:597a605bfb2209bb1ccad1707c70fb1a59fcb161120f781333646d05ae193467
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5332907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30601a021da51824f13c963dc30a9429f87d36c9fba4f1a6a8b944eb6894c0fd`

```dockerfile
```

-	Layers:
	-	`sha256:1b185e2dd51057c56062cd713e3df44f624e8a5d512a214dbc1ae42d0bc75646`  
		Last Modified: Tue, 03 Nov 2026 00:28:44 GMT  
		Size: 5.3 MB (5297247 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5e5100be39aea4a58c6988e15bffe2b269e64355ddca478523fa2969926694f5`  
		Last Modified: Tue, 03 Nov 2026 00:28:44 GMT  
		Size: 35.7 KB (35660 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:8`

```console
$ docker pull mysql@sha256:a81d043930e51745522bd5c430961cf8286f0a23f0a9a2a6e0108f7ea71b0902
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8` - linux; amd64

```console
$ docker pull mysql@sha256:72c368d898861f3b3a07af0e6d690400f44f048799ed46822783d9224cc2c86d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.3 MB (238256607 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f1a0ccadda3a1734d1db557e203ec58621d56fa248525016e85fe4f631311ec`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 03 Nov 2026 00:22:58 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 03 Nov 2026 00:22:58 GMT
CMD ["/bin/bash"]
# Tue, 03 Nov 2026 00:25:53 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 03 Nov 2026 00:25:55 GMT
ENV GOSU_VERSION=1.19
# Tue, 03 Nov 2026 00:25:55 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 03 Nov 2026 00:26:32 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 03 Nov 2026 00:26:33 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 03 Nov 2026 00:26:33 GMT
ENV MYSQL_MAJOR=8.4
# Tue, 03 Nov 2026 00:26:33 GMT
ENV MYSQL_VERSION=8.4.13-1.el9
# Tue, 03 Nov 2026 00:26:33 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 03 Nov 2026 00:27:12 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 03 Nov 2026 00:27:12 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 03 Nov 2026 00:27:12 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Tue, 03 Nov 2026 00:28:00 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 03 Nov 2026 00:28:00 GMT
VOLUME [/var/lib/mysql]
# Tue, 03 Nov 2026 00:28:00 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 00:28:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 00:28:00 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 03 Nov 2026 00:28:00 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c3e99775cc39154c5a4687d6aeb43d4162a1fec417e872075b1e50567e8aed20`  
		Last Modified: Tue, 03 Nov 2026 00:23:09 GMT  
		Size: 47.2 MB (47186609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:332288060cf8d2d286c35a3f5769b6047846bf282c035d37c66736d6a1e81eae`  
		Last Modified: Tue, 03 Nov 2026 00:28:31 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a7ab34260fdc9dba5aa25d4828a3f9878f3cdfb67c95b4598f91566ee12d8e5`  
		Last Modified: Tue, 03 Nov 2026 00:28:31 GMT  
		Size: 783.6 KB (783555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abda743cff12bf1c992d344c9f87ba6372178cdb3dfcf8166693f1d1ddd967c3`  
		Last Modified: Tue, 03 Nov 2026 00:28:31 GMT  
		Size: 6.2 MB (6188764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:335c0ba6129f79d6d295e152c017595d93229b0993958b12a9a83898eafcd8ef`  
		Last Modified: Tue, 03 Nov 2026 00:28:30 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:084e06fe4d96d3142f5eaacbfb8fb16890f4f6ac13d7a1ddc4bba55e2ad47878`  
		Last Modified: Tue, 03 Nov 2026 00:28:32 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8a79f346bc18123f663d4c8f054a61884e2d3d14914f4f43854406572f76725`  
		Last Modified: Tue, 03 Nov 2026 00:28:34 GMT  
		Size: 51.7 MB (51674269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16ff0dc0f366ede8d5ad91c81b445c27bd6e57be7c317734bde07b0671980214`  
		Last Modified: Tue, 03 Nov 2026 00:28:32 GMT  
		Size: 322.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b14917cf1885e73a7b3c81ed8e85a611d22681b83eca27b455c6758292e6bcc5`  
		Last Modified: Tue, 03 Nov 2026 00:28:36 GMT  
		Size: 132.4 MB (132414042 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b3d5697e82003b29842402d0cd1659c5078ede013135d4c84a066144161b74d`  
		Last Modified: Tue, 03 Nov 2026 00:28:33 GMT  
		Size: 5.2 KB (5221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8` - unknown; unknown

```console
$ docker pull mysql@sha256:ace4b59b2c91542796db12a5f7daa409c76f3184db09e9909a8d320696e2c088
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15726735 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e8a8f30e5157f205d84e24042b599814f45bbdd984eab62c8dba135dc835c21`

```dockerfile
```

-	Layers:
	-	`sha256:6f4c84f51b8c0d2b68f358de8f55f18c4b81b9f65c4f3874f7fb926cd702452f`  
		Last Modified: Tue, 03 Nov 2026 00:28:31 GMT  
		Size: 15.7 MB (15693423 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2047ca069dcd3fb4e98ec2d197bb5c46d39e6d898b49a476ae0090ef437d9146`  
		Last Modified: Tue, 03 Nov 2026 00:28:31 GMT  
		Size: 33.3 KB (33312 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:f4539b86c82f2c168fc95b439448bde3b9f48e8460344ce41e39081867d2b58e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.9 MB (232912945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae113cae2661960c4665a586812ae8150b2a133772a9f3ad63d1f1ae4f9e8ce7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 03 Nov 2026 00:23:12 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 03 Nov 2026 00:23:12 GMT
CMD ["/bin/bash"]
# Tue, 03 Nov 2026 00:25:56 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 03 Nov 2026 00:25:58 GMT
ENV GOSU_VERSION=1.19
# Tue, 03 Nov 2026 00:25:58 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 03 Nov 2026 00:26:37 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 03 Nov 2026 00:26:38 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 03 Nov 2026 00:26:38 GMT
ENV MYSQL_MAJOR=8.4
# Tue, 03 Nov 2026 00:26:38 GMT
ENV MYSQL_VERSION=8.4.13-1.el9
# Tue, 03 Nov 2026 00:26:38 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 03 Nov 2026 00:27:20 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 03 Nov 2026 00:27:20 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 03 Nov 2026 00:27:20 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Tue, 03 Nov 2026 00:28:11 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 03 Nov 2026 00:28:11 GMT
VOLUME [/var/lib/mysql]
# Tue, 03 Nov 2026 00:28:11 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 00:28:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 00:28:11 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 03 Nov 2026 00:28:11 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:329828f10dd1b721024e28953696281394ad8b6f7621b47c0fb0d2d41e2838ab`  
		Last Modified: Tue, 03 Nov 2026 00:23:23 GMT  
		Size: 45.7 MB (45734040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d4ededc3da6b0fd5ff84410f037360702c7a6b6b374711c6bd495b00917f344`  
		Last Modified: Tue, 03 Nov 2026 00:28:42 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39f554e49ab818d66c829fc7d591aad1527b7dfe669796ea1f9a4cbfa2bf338e`  
		Last Modified: Tue, 03 Nov 2026 00:28:42 GMT  
		Size: 737.5 KB (737531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:078187bddd16a736c37b3af38203ce3f81e72d1cecc72892d3162e2fdda92a9c`  
		Last Modified: Tue, 03 Nov 2026 00:28:43 GMT  
		Size: 5.8 MB (5809111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a3a0894b69f452dbaa4adf7e30dc40dcbeac60c887b58650815f73e125ebbbf`  
		Last Modified: Tue, 03 Nov 2026 00:28:42 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c94f276affdfa90b132c0281c742d9b04fc49cd05e2f916c2403babc2ab20d8`  
		Last Modified: Tue, 03 Nov 2026 00:28:43 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0237ba2e683714d1b2a34c00f7db3cf78a8dedbfe6db5ae228dccb666d3c7059`  
		Last Modified: Tue, 03 Nov 2026 00:28:46 GMT  
		Size: 49.9 MB (49858052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff8e54aab8e659375090dfd7b335aba5820fa78e0924411bf4e8b25e916a16a9`  
		Last Modified: Tue, 03 Nov 2026 00:28:44 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:213c73fcf04ab1151a1a2450bf01068429dd69eeed30ccdbdef05861dfff2b9c`  
		Last Modified: Tue, 03 Nov 2026 00:28:49 GMT  
		Size: 130.8 MB (130764837 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfaca62aae8cf766967103b1be084c1f02b3fddaac30550644b6e6ab5b8085e9`  
		Last Modified: Tue, 03 Nov 2026 00:28:45 GMT  
		Size: 5.2 KB (5228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8` - unknown; unknown

```console
$ docker pull mysql@sha256:9dddd73766bc201545a0f5f56f132cb858aa0961e1f709495dcb51c3386d6fe9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15725405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcf03eb4869864d756f31efd9bddda1c67ef7517bdbb8c29ef11430ab98ada3b`

```dockerfile
```

-	Layers:
	-	`sha256:8b2161a4249c74a1663b6f9f23cc48a9fbe836cfdae9bc8d4ee943f6b635907f`  
		Last Modified: Tue, 03 Nov 2026 00:28:43 GMT  
		Size: 15.7 MB (15691823 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:80a355bf326121e4cef34678b7a01515593ec84a717d633aed3c091662ca2601`  
		Last Modified: Tue, 03 Nov 2026 00:28:42 GMT  
		Size: 33.6 KB (33582 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:8-oracle`

```console
$ docker pull mysql@sha256:a81d043930e51745522bd5c430961cf8286f0a23f0a9a2a6e0108f7ea71b0902
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:72c368d898861f3b3a07af0e6d690400f44f048799ed46822783d9224cc2c86d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.3 MB (238256607 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f1a0ccadda3a1734d1db557e203ec58621d56fa248525016e85fe4f631311ec`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 03 Nov 2026 00:22:58 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 03 Nov 2026 00:22:58 GMT
CMD ["/bin/bash"]
# Tue, 03 Nov 2026 00:25:53 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 03 Nov 2026 00:25:55 GMT
ENV GOSU_VERSION=1.19
# Tue, 03 Nov 2026 00:25:55 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 03 Nov 2026 00:26:32 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 03 Nov 2026 00:26:33 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 03 Nov 2026 00:26:33 GMT
ENV MYSQL_MAJOR=8.4
# Tue, 03 Nov 2026 00:26:33 GMT
ENV MYSQL_VERSION=8.4.13-1.el9
# Tue, 03 Nov 2026 00:26:33 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 03 Nov 2026 00:27:12 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 03 Nov 2026 00:27:12 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 03 Nov 2026 00:27:12 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Tue, 03 Nov 2026 00:28:00 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 03 Nov 2026 00:28:00 GMT
VOLUME [/var/lib/mysql]
# Tue, 03 Nov 2026 00:28:00 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 00:28:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 00:28:00 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 03 Nov 2026 00:28:00 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c3e99775cc39154c5a4687d6aeb43d4162a1fec417e872075b1e50567e8aed20`  
		Last Modified: Tue, 03 Nov 2026 00:23:09 GMT  
		Size: 47.2 MB (47186609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:332288060cf8d2d286c35a3f5769b6047846bf282c035d37c66736d6a1e81eae`  
		Last Modified: Tue, 03 Nov 2026 00:28:31 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a7ab34260fdc9dba5aa25d4828a3f9878f3cdfb67c95b4598f91566ee12d8e5`  
		Last Modified: Tue, 03 Nov 2026 00:28:31 GMT  
		Size: 783.6 KB (783555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abda743cff12bf1c992d344c9f87ba6372178cdb3dfcf8166693f1d1ddd967c3`  
		Last Modified: Tue, 03 Nov 2026 00:28:31 GMT  
		Size: 6.2 MB (6188764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:335c0ba6129f79d6d295e152c017595d93229b0993958b12a9a83898eafcd8ef`  
		Last Modified: Tue, 03 Nov 2026 00:28:30 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:084e06fe4d96d3142f5eaacbfb8fb16890f4f6ac13d7a1ddc4bba55e2ad47878`  
		Last Modified: Tue, 03 Nov 2026 00:28:32 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8a79f346bc18123f663d4c8f054a61884e2d3d14914f4f43854406572f76725`  
		Last Modified: Tue, 03 Nov 2026 00:28:34 GMT  
		Size: 51.7 MB (51674269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16ff0dc0f366ede8d5ad91c81b445c27bd6e57be7c317734bde07b0671980214`  
		Last Modified: Tue, 03 Nov 2026 00:28:32 GMT  
		Size: 322.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b14917cf1885e73a7b3c81ed8e85a611d22681b83eca27b455c6758292e6bcc5`  
		Last Modified: Tue, 03 Nov 2026 00:28:36 GMT  
		Size: 132.4 MB (132414042 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b3d5697e82003b29842402d0cd1659c5078ede013135d4c84a066144161b74d`  
		Last Modified: Tue, 03 Nov 2026 00:28:33 GMT  
		Size: 5.2 KB (5221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:ace4b59b2c91542796db12a5f7daa409c76f3184db09e9909a8d320696e2c088
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15726735 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e8a8f30e5157f205d84e24042b599814f45bbdd984eab62c8dba135dc835c21`

```dockerfile
```

-	Layers:
	-	`sha256:6f4c84f51b8c0d2b68f358de8f55f18c4b81b9f65c4f3874f7fb926cd702452f`  
		Last Modified: Tue, 03 Nov 2026 00:28:31 GMT  
		Size: 15.7 MB (15693423 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2047ca069dcd3fb4e98ec2d197bb5c46d39e6d898b49a476ae0090ef437d9146`  
		Last Modified: Tue, 03 Nov 2026 00:28:31 GMT  
		Size: 33.3 KB (33312 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:f4539b86c82f2c168fc95b439448bde3b9f48e8460344ce41e39081867d2b58e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.9 MB (232912945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae113cae2661960c4665a586812ae8150b2a133772a9f3ad63d1f1ae4f9e8ce7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 03 Nov 2026 00:23:12 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 03 Nov 2026 00:23:12 GMT
CMD ["/bin/bash"]
# Tue, 03 Nov 2026 00:25:56 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 03 Nov 2026 00:25:58 GMT
ENV GOSU_VERSION=1.19
# Tue, 03 Nov 2026 00:25:58 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 03 Nov 2026 00:26:37 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 03 Nov 2026 00:26:38 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 03 Nov 2026 00:26:38 GMT
ENV MYSQL_MAJOR=8.4
# Tue, 03 Nov 2026 00:26:38 GMT
ENV MYSQL_VERSION=8.4.13-1.el9
# Tue, 03 Nov 2026 00:26:38 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 03 Nov 2026 00:27:20 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 03 Nov 2026 00:27:20 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 03 Nov 2026 00:27:20 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Tue, 03 Nov 2026 00:28:11 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 03 Nov 2026 00:28:11 GMT
VOLUME [/var/lib/mysql]
# Tue, 03 Nov 2026 00:28:11 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 00:28:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 00:28:11 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 03 Nov 2026 00:28:11 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:329828f10dd1b721024e28953696281394ad8b6f7621b47c0fb0d2d41e2838ab`  
		Last Modified: Tue, 03 Nov 2026 00:23:23 GMT  
		Size: 45.7 MB (45734040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d4ededc3da6b0fd5ff84410f037360702c7a6b6b374711c6bd495b00917f344`  
		Last Modified: Tue, 03 Nov 2026 00:28:42 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39f554e49ab818d66c829fc7d591aad1527b7dfe669796ea1f9a4cbfa2bf338e`  
		Last Modified: Tue, 03 Nov 2026 00:28:42 GMT  
		Size: 737.5 KB (737531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:078187bddd16a736c37b3af38203ce3f81e72d1cecc72892d3162e2fdda92a9c`  
		Last Modified: Tue, 03 Nov 2026 00:28:43 GMT  
		Size: 5.8 MB (5809111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a3a0894b69f452dbaa4adf7e30dc40dcbeac60c887b58650815f73e125ebbbf`  
		Last Modified: Tue, 03 Nov 2026 00:28:42 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c94f276affdfa90b132c0281c742d9b04fc49cd05e2f916c2403babc2ab20d8`  
		Last Modified: Tue, 03 Nov 2026 00:28:43 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0237ba2e683714d1b2a34c00f7db3cf78a8dedbfe6db5ae228dccb666d3c7059`  
		Last Modified: Tue, 03 Nov 2026 00:28:46 GMT  
		Size: 49.9 MB (49858052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff8e54aab8e659375090dfd7b335aba5820fa78e0924411bf4e8b25e916a16a9`  
		Last Modified: Tue, 03 Nov 2026 00:28:44 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:213c73fcf04ab1151a1a2450bf01068429dd69eeed30ccdbdef05861dfff2b9c`  
		Last Modified: Tue, 03 Nov 2026 00:28:49 GMT  
		Size: 130.8 MB (130764837 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfaca62aae8cf766967103b1be084c1f02b3fddaac30550644b6e6ab5b8085e9`  
		Last Modified: Tue, 03 Nov 2026 00:28:45 GMT  
		Size: 5.2 KB (5228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:9dddd73766bc201545a0f5f56f132cb858aa0961e1f709495dcb51c3386d6fe9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15725405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcf03eb4869864d756f31efd9bddda1c67ef7517bdbb8c29ef11430ab98ada3b`

```dockerfile
```

-	Layers:
	-	`sha256:8b2161a4249c74a1663b6f9f23cc48a9fbe836cfdae9bc8d4ee943f6b635907f`  
		Last Modified: Tue, 03 Nov 2026 00:28:43 GMT  
		Size: 15.7 MB (15691823 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:80a355bf326121e4cef34678b7a01515593ec84a717d633aed3c091662ca2601`  
		Last Modified: Tue, 03 Nov 2026 00:28:42 GMT  
		Size: 33.6 KB (33582 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:8-oraclelinux9`

```console
$ docker pull mysql@sha256:a81d043930e51745522bd5c430961cf8286f0a23f0a9a2a6e0108f7ea71b0902
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:72c368d898861f3b3a07af0e6d690400f44f048799ed46822783d9224cc2c86d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.3 MB (238256607 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f1a0ccadda3a1734d1db557e203ec58621d56fa248525016e85fe4f631311ec`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 03 Nov 2026 00:22:58 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 03 Nov 2026 00:22:58 GMT
CMD ["/bin/bash"]
# Tue, 03 Nov 2026 00:25:53 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 03 Nov 2026 00:25:55 GMT
ENV GOSU_VERSION=1.19
# Tue, 03 Nov 2026 00:25:55 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 03 Nov 2026 00:26:32 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 03 Nov 2026 00:26:33 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 03 Nov 2026 00:26:33 GMT
ENV MYSQL_MAJOR=8.4
# Tue, 03 Nov 2026 00:26:33 GMT
ENV MYSQL_VERSION=8.4.13-1.el9
# Tue, 03 Nov 2026 00:26:33 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 03 Nov 2026 00:27:12 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 03 Nov 2026 00:27:12 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 03 Nov 2026 00:27:12 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Tue, 03 Nov 2026 00:28:00 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 03 Nov 2026 00:28:00 GMT
VOLUME [/var/lib/mysql]
# Tue, 03 Nov 2026 00:28:00 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 00:28:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 00:28:00 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 03 Nov 2026 00:28:00 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c3e99775cc39154c5a4687d6aeb43d4162a1fec417e872075b1e50567e8aed20`  
		Last Modified: Tue, 03 Nov 2026 00:23:09 GMT  
		Size: 47.2 MB (47186609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:332288060cf8d2d286c35a3f5769b6047846bf282c035d37c66736d6a1e81eae`  
		Last Modified: Tue, 03 Nov 2026 00:28:31 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a7ab34260fdc9dba5aa25d4828a3f9878f3cdfb67c95b4598f91566ee12d8e5`  
		Last Modified: Tue, 03 Nov 2026 00:28:31 GMT  
		Size: 783.6 KB (783555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abda743cff12bf1c992d344c9f87ba6372178cdb3dfcf8166693f1d1ddd967c3`  
		Last Modified: Tue, 03 Nov 2026 00:28:31 GMT  
		Size: 6.2 MB (6188764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:335c0ba6129f79d6d295e152c017595d93229b0993958b12a9a83898eafcd8ef`  
		Last Modified: Tue, 03 Nov 2026 00:28:30 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:084e06fe4d96d3142f5eaacbfb8fb16890f4f6ac13d7a1ddc4bba55e2ad47878`  
		Last Modified: Tue, 03 Nov 2026 00:28:32 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8a79f346bc18123f663d4c8f054a61884e2d3d14914f4f43854406572f76725`  
		Last Modified: Tue, 03 Nov 2026 00:28:34 GMT  
		Size: 51.7 MB (51674269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16ff0dc0f366ede8d5ad91c81b445c27bd6e57be7c317734bde07b0671980214`  
		Last Modified: Tue, 03 Nov 2026 00:28:32 GMT  
		Size: 322.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b14917cf1885e73a7b3c81ed8e85a611d22681b83eca27b455c6758292e6bcc5`  
		Last Modified: Tue, 03 Nov 2026 00:28:36 GMT  
		Size: 132.4 MB (132414042 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b3d5697e82003b29842402d0cd1659c5078ede013135d4c84a066144161b74d`  
		Last Modified: Tue, 03 Nov 2026 00:28:33 GMT  
		Size: 5.2 KB (5221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:ace4b59b2c91542796db12a5f7daa409c76f3184db09e9909a8d320696e2c088
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15726735 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e8a8f30e5157f205d84e24042b599814f45bbdd984eab62c8dba135dc835c21`

```dockerfile
```

-	Layers:
	-	`sha256:6f4c84f51b8c0d2b68f358de8f55f18c4b81b9f65c4f3874f7fb926cd702452f`  
		Last Modified: Tue, 03 Nov 2026 00:28:31 GMT  
		Size: 15.7 MB (15693423 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2047ca069dcd3fb4e98ec2d197bb5c46d39e6d898b49a476ae0090ef437d9146`  
		Last Modified: Tue, 03 Nov 2026 00:28:31 GMT  
		Size: 33.3 KB (33312 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:f4539b86c82f2c168fc95b439448bde3b9f48e8460344ce41e39081867d2b58e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.9 MB (232912945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae113cae2661960c4665a586812ae8150b2a133772a9f3ad63d1f1ae4f9e8ce7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 03 Nov 2026 00:23:12 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 03 Nov 2026 00:23:12 GMT
CMD ["/bin/bash"]
# Tue, 03 Nov 2026 00:25:56 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 03 Nov 2026 00:25:58 GMT
ENV GOSU_VERSION=1.19
# Tue, 03 Nov 2026 00:25:58 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 03 Nov 2026 00:26:37 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 03 Nov 2026 00:26:38 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 03 Nov 2026 00:26:38 GMT
ENV MYSQL_MAJOR=8.4
# Tue, 03 Nov 2026 00:26:38 GMT
ENV MYSQL_VERSION=8.4.13-1.el9
# Tue, 03 Nov 2026 00:26:38 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 03 Nov 2026 00:27:20 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 03 Nov 2026 00:27:20 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 03 Nov 2026 00:27:20 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Tue, 03 Nov 2026 00:28:11 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 03 Nov 2026 00:28:11 GMT
VOLUME [/var/lib/mysql]
# Tue, 03 Nov 2026 00:28:11 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 00:28:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 00:28:11 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 03 Nov 2026 00:28:11 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:329828f10dd1b721024e28953696281394ad8b6f7621b47c0fb0d2d41e2838ab`  
		Last Modified: Tue, 03 Nov 2026 00:23:23 GMT  
		Size: 45.7 MB (45734040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d4ededc3da6b0fd5ff84410f037360702c7a6b6b374711c6bd495b00917f344`  
		Last Modified: Tue, 03 Nov 2026 00:28:42 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39f554e49ab818d66c829fc7d591aad1527b7dfe669796ea1f9a4cbfa2bf338e`  
		Last Modified: Tue, 03 Nov 2026 00:28:42 GMT  
		Size: 737.5 KB (737531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:078187bddd16a736c37b3af38203ce3f81e72d1cecc72892d3162e2fdda92a9c`  
		Last Modified: Tue, 03 Nov 2026 00:28:43 GMT  
		Size: 5.8 MB (5809111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a3a0894b69f452dbaa4adf7e30dc40dcbeac60c887b58650815f73e125ebbbf`  
		Last Modified: Tue, 03 Nov 2026 00:28:42 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c94f276affdfa90b132c0281c742d9b04fc49cd05e2f916c2403babc2ab20d8`  
		Last Modified: Tue, 03 Nov 2026 00:28:43 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0237ba2e683714d1b2a34c00f7db3cf78a8dedbfe6db5ae228dccb666d3c7059`  
		Last Modified: Tue, 03 Nov 2026 00:28:46 GMT  
		Size: 49.9 MB (49858052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff8e54aab8e659375090dfd7b335aba5820fa78e0924411bf4e8b25e916a16a9`  
		Last Modified: Tue, 03 Nov 2026 00:28:44 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:213c73fcf04ab1151a1a2450bf01068429dd69eeed30ccdbdef05861dfff2b9c`  
		Last Modified: Tue, 03 Nov 2026 00:28:49 GMT  
		Size: 130.8 MB (130764837 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfaca62aae8cf766967103b1be084c1f02b3fddaac30550644b6e6ab5b8085e9`  
		Last Modified: Tue, 03 Nov 2026 00:28:45 GMT  
		Size: 5.2 KB (5228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:9dddd73766bc201545a0f5f56f132cb858aa0961e1f709495dcb51c3386d6fe9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15725405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcf03eb4869864d756f31efd9bddda1c67ef7517bdbb8c29ef11430ab98ada3b`

```dockerfile
```

-	Layers:
	-	`sha256:8b2161a4249c74a1663b6f9f23cc48a9fbe836cfdae9bc8d4ee943f6b635907f`  
		Last Modified: Tue, 03 Nov 2026 00:28:43 GMT  
		Size: 15.7 MB (15691823 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:80a355bf326121e4cef34678b7a01515593ec84a717d633aed3c091662ca2601`  
		Last Modified: Tue, 03 Nov 2026 00:28:42 GMT  
		Size: 33.6 KB (33582 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:8.4`

```console
$ docker pull mysql@sha256:a81d043930e51745522bd5c430961cf8286f0a23f0a9a2a6e0108f7ea71b0902
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8.4` - linux; amd64

```console
$ docker pull mysql@sha256:72c368d898861f3b3a07af0e6d690400f44f048799ed46822783d9224cc2c86d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.3 MB (238256607 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f1a0ccadda3a1734d1db557e203ec58621d56fa248525016e85fe4f631311ec`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 03 Nov 2026 00:22:58 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 03 Nov 2026 00:22:58 GMT
CMD ["/bin/bash"]
# Tue, 03 Nov 2026 00:25:53 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 03 Nov 2026 00:25:55 GMT
ENV GOSU_VERSION=1.19
# Tue, 03 Nov 2026 00:25:55 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 03 Nov 2026 00:26:32 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 03 Nov 2026 00:26:33 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 03 Nov 2026 00:26:33 GMT
ENV MYSQL_MAJOR=8.4
# Tue, 03 Nov 2026 00:26:33 GMT
ENV MYSQL_VERSION=8.4.13-1.el9
# Tue, 03 Nov 2026 00:26:33 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 03 Nov 2026 00:27:12 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 03 Nov 2026 00:27:12 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 03 Nov 2026 00:27:12 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Tue, 03 Nov 2026 00:28:00 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 03 Nov 2026 00:28:00 GMT
VOLUME [/var/lib/mysql]
# Tue, 03 Nov 2026 00:28:00 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 00:28:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 00:28:00 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 03 Nov 2026 00:28:00 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c3e99775cc39154c5a4687d6aeb43d4162a1fec417e872075b1e50567e8aed20`  
		Last Modified: Tue, 03 Nov 2026 00:23:09 GMT  
		Size: 47.2 MB (47186609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:332288060cf8d2d286c35a3f5769b6047846bf282c035d37c66736d6a1e81eae`  
		Last Modified: Tue, 03 Nov 2026 00:28:31 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a7ab34260fdc9dba5aa25d4828a3f9878f3cdfb67c95b4598f91566ee12d8e5`  
		Last Modified: Tue, 03 Nov 2026 00:28:31 GMT  
		Size: 783.6 KB (783555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abda743cff12bf1c992d344c9f87ba6372178cdb3dfcf8166693f1d1ddd967c3`  
		Last Modified: Tue, 03 Nov 2026 00:28:31 GMT  
		Size: 6.2 MB (6188764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:335c0ba6129f79d6d295e152c017595d93229b0993958b12a9a83898eafcd8ef`  
		Last Modified: Tue, 03 Nov 2026 00:28:30 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:084e06fe4d96d3142f5eaacbfb8fb16890f4f6ac13d7a1ddc4bba55e2ad47878`  
		Last Modified: Tue, 03 Nov 2026 00:28:32 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8a79f346bc18123f663d4c8f054a61884e2d3d14914f4f43854406572f76725`  
		Last Modified: Tue, 03 Nov 2026 00:28:34 GMT  
		Size: 51.7 MB (51674269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16ff0dc0f366ede8d5ad91c81b445c27bd6e57be7c317734bde07b0671980214`  
		Last Modified: Tue, 03 Nov 2026 00:28:32 GMT  
		Size: 322.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b14917cf1885e73a7b3c81ed8e85a611d22681b83eca27b455c6758292e6bcc5`  
		Last Modified: Tue, 03 Nov 2026 00:28:36 GMT  
		Size: 132.4 MB (132414042 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b3d5697e82003b29842402d0cd1659c5078ede013135d4c84a066144161b74d`  
		Last Modified: Tue, 03 Nov 2026 00:28:33 GMT  
		Size: 5.2 KB (5221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4` - unknown; unknown

```console
$ docker pull mysql@sha256:ace4b59b2c91542796db12a5f7daa409c76f3184db09e9909a8d320696e2c088
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15726735 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e8a8f30e5157f205d84e24042b599814f45bbdd984eab62c8dba135dc835c21`

```dockerfile
```

-	Layers:
	-	`sha256:6f4c84f51b8c0d2b68f358de8f55f18c4b81b9f65c4f3874f7fb926cd702452f`  
		Last Modified: Tue, 03 Nov 2026 00:28:31 GMT  
		Size: 15.7 MB (15693423 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2047ca069dcd3fb4e98ec2d197bb5c46d39e6d898b49a476ae0090ef437d9146`  
		Last Modified: Tue, 03 Nov 2026 00:28:31 GMT  
		Size: 33.3 KB (33312 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8.4` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:f4539b86c82f2c168fc95b439448bde3b9f48e8460344ce41e39081867d2b58e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.9 MB (232912945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae113cae2661960c4665a586812ae8150b2a133772a9f3ad63d1f1ae4f9e8ce7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 03 Nov 2026 00:23:12 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 03 Nov 2026 00:23:12 GMT
CMD ["/bin/bash"]
# Tue, 03 Nov 2026 00:25:56 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 03 Nov 2026 00:25:58 GMT
ENV GOSU_VERSION=1.19
# Tue, 03 Nov 2026 00:25:58 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 03 Nov 2026 00:26:37 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 03 Nov 2026 00:26:38 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 03 Nov 2026 00:26:38 GMT
ENV MYSQL_MAJOR=8.4
# Tue, 03 Nov 2026 00:26:38 GMT
ENV MYSQL_VERSION=8.4.13-1.el9
# Tue, 03 Nov 2026 00:26:38 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 03 Nov 2026 00:27:20 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 03 Nov 2026 00:27:20 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 03 Nov 2026 00:27:20 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Tue, 03 Nov 2026 00:28:11 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 03 Nov 2026 00:28:11 GMT
VOLUME [/var/lib/mysql]
# Tue, 03 Nov 2026 00:28:11 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 00:28:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 00:28:11 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 03 Nov 2026 00:28:11 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:329828f10dd1b721024e28953696281394ad8b6f7621b47c0fb0d2d41e2838ab`  
		Last Modified: Tue, 03 Nov 2026 00:23:23 GMT  
		Size: 45.7 MB (45734040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d4ededc3da6b0fd5ff84410f037360702c7a6b6b374711c6bd495b00917f344`  
		Last Modified: Tue, 03 Nov 2026 00:28:42 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39f554e49ab818d66c829fc7d591aad1527b7dfe669796ea1f9a4cbfa2bf338e`  
		Last Modified: Tue, 03 Nov 2026 00:28:42 GMT  
		Size: 737.5 KB (737531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:078187bddd16a736c37b3af38203ce3f81e72d1cecc72892d3162e2fdda92a9c`  
		Last Modified: Tue, 03 Nov 2026 00:28:43 GMT  
		Size: 5.8 MB (5809111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a3a0894b69f452dbaa4adf7e30dc40dcbeac60c887b58650815f73e125ebbbf`  
		Last Modified: Tue, 03 Nov 2026 00:28:42 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c94f276affdfa90b132c0281c742d9b04fc49cd05e2f916c2403babc2ab20d8`  
		Last Modified: Tue, 03 Nov 2026 00:28:43 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0237ba2e683714d1b2a34c00f7db3cf78a8dedbfe6db5ae228dccb666d3c7059`  
		Last Modified: Tue, 03 Nov 2026 00:28:46 GMT  
		Size: 49.9 MB (49858052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff8e54aab8e659375090dfd7b335aba5820fa78e0924411bf4e8b25e916a16a9`  
		Last Modified: Tue, 03 Nov 2026 00:28:44 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:213c73fcf04ab1151a1a2450bf01068429dd69eeed30ccdbdef05861dfff2b9c`  
		Last Modified: Tue, 03 Nov 2026 00:28:49 GMT  
		Size: 130.8 MB (130764837 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfaca62aae8cf766967103b1be084c1f02b3fddaac30550644b6e6ab5b8085e9`  
		Last Modified: Tue, 03 Nov 2026 00:28:45 GMT  
		Size: 5.2 KB (5228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4` - unknown; unknown

```console
$ docker pull mysql@sha256:9dddd73766bc201545a0f5f56f132cb858aa0961e1f709495dcb51c3386d6fe9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15725405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcf03eb4869864d756f31efd9bddda1c67ef7517bdbb8c29ef11430ab98ada3b`

```dockerfile
```

-	Layers:
	-	`sha256:8b2161a4249c74a1663b6f9f23cc48a9fbe836cfdae9bc8d4ee943f6b635907f`  
		Last Modified: Tue, 03 Nov 2026 00:28:43 GMT  
		Size: 15.7 MB (15691823 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:80a355bf326121e4cef34678b7a01515593ec84a717d633aed3c091662ca2601`  
		Last Modified: Tue, 03 Nov 2026 00:28:42 GMT  
		Size: 33.6 KB (33582 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:8.4-oracle`

```console
$ docker pull mysql@sha256:a81d043930e51745522bd5c430961cf8286f0a23f0a9a2a6e0108f7ea71b0902
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8.4-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:72c368d898861f3b3a07af0e6d690400f44f048799ed46822783d9224cc2c86d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.3 MB (238256607 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f1a0ccadda3a1734d1db557e203ec58621d56fa248525016e85fe4f631311ec`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 03 Nov 2026 00:22:58 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 03 Nov 2026 00:22:58 GMT
CMD ["/bin/bash"]
# Tue, 03 Nov 2026 00:25:53 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 03 Nov 2026 00:25:55 GMT
ENV GOSU_VERSION=1.19
# Tue, 03 Nov 2026 00:25:55 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 03 Nov 2026 00:26:32 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 03 Nov 2026 00:26:33 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 03 Nov 2026 00:26:33 GMT
ENV MYSQL_MAJOR=8.4
# Tue, 03 Nov 2026 00:26:33 GMT
ENV MYSQL_VERSION=8.4.13-1.el9
# Tue, 03 Nov 2026 00:26:33 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 03 Nov 2026 00:27:12 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 03 Nov 2026 00:27:12 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 03 Nov 2026 00:27:12 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Tue, 03 Nov 2026 00:28:00 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 03 Nov 2026 00:28:00 GMT
VOLUME [/var/lib/mysql]
# Tue, 03 Nov 2026 00:28:00 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 00:28:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 00:28:00 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 03 Nov 2026 00:28:00 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c3e99775cc39154c5a4687d6aeb43d4162a1fec417e872075b1e50567e8aed20`  
		Last Modified: Tue, 03 Nov 2026 00:23:09 GMT  
		Size: 47.2 MB (47186609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:332288060cf8d2d286c35a3f5769b6047846bf282c035d37c66736d6a1e81eae`  
		Last Modified: Tue, 03 Nov 2026 00:28:31 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a7ab34260fdc9dba5aa25d4828a3f9878f3cdfb67c95b4598f91566ee12d8e5`  
		Last Modified: Tue, 03 Nov 2026 00:28:31 GMT  
		Size: 783.6 KB (783555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abda743cff12bf1c992d344c9f87ba6372178cdb3dfcf8166693f1d1ddd967c3`  
		Last Modified: Tue, 03 Nov 2026 00:28:31 GMT  
		Size: 6.2 MB (6188764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:335c0ba6129f79d6d295e152c017595d93229b0993958b12a9a83898eafcd8ef`  
		Last Modified: Tue, 03 Nov 2026 00:28:30 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:084e06fe4d96d3142f5eaacbfb8fb16890f4f6ac13d7a1ddc4bba55e2ad47878`  
		Last Modified: Tue, 03 Nov 2026 00:28:32 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8a79f346bc18123f663d4c8f054a61884e2d3d14914f4f43854406572f76725`  
		Last Modified: Tue, 03 Nov 2026 00:28:34 GMT  
		Size: 51.7 MB (51674269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16ff0dc0f366ede8d5ad91c81b445c27bd6e57be7c317734bde07b0671980214`  
		Last Modified: Tue, 03 Nov 2026 00:28:32 GMT  
		Size: 322.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b14917cf1885e73a7b3c81ed8e85a611d22681b83eca27b455c6758292e6bcc5`  
		Last Modified: Tue, 03 Nov 2026 00:28:36 GMT  
		Size: 132.4 MB (132414042 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b3d5697e82003b29842402d0cd1659c5078ede013135d4c84a066144161b74d`  
		Last Modified: Tue, 03 Nov 2026 00:28:33 GMT  
		Size: 5.2 KB (5221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:ace4b59b2c91542796db12a5f7daa409c76f3184db09e9909a8d320696e2c088
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15726735 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e8a8f30e5157f205d84e24042b599814f45bbdd984eab62c8dba135dc835c21`

```dockerfile
```

-	Layers:
	-	`sha256:6f4c84f51b8c0d2b68f358de8f55f18c4b81b9f65c4f3874f7fb926cd702452f`  
		Last Modified: Tue, 03 Nov 2026 00:28:31 GMT  
		Size: 15.7 MB (15693423 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2047ca069dcd3fb4e98ec2d197bb5c46d39e6d898b49a476ae0090ef437d9146`  
		Last Modified: Tue, 03 Nov 2026 00:28:31 GMT  
		Size: 33.3 KB (33312 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8.4-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:f4539b86c82f2c168fc95b439448bde3b9f48e8460344ce41e39081867d2b58e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.9 MB (232912945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae113cae2661960c4665a586812ae8150b2a133772a9f3ad63d1f1ae4f9e8ce7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 03 Nov 2026 00:23:12 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 03 Nov 2026 00:23:12 GMT
CMD ["/bin/bash"]
# Tue, 03 Nov 2026 00:25:56 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 03 Nov 2026 00:25:58 GMT
ENV GOSU_VERSION=1.19
# Tue, 03 Nov 2026 00:25:58 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 03 Nov 2026 00:26:37 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 03 Nov 2026 00:26:38 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 03 Nov 2026 00:26:38 GMT
ENV MYSQL_MAJOR=8.4
# Tue, 03 Nov 2026 00:26:38 GMT
ENV MYSQL_VERSION=8.4.13-1.el9
# Tue, 03 Nov 2026 00:26:38 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 03 Nov 2026 00:27:20 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 03 Nov 2026 00:27:20 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 03 Nov 2026 00:27:20 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Tue, 03 Nov 2026 00:28:11 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 03 Nov 2026 00:28:11 GMT
VOLUME [/var/lib/mysql]
# Tue, 03 Nov 2026 00:28:11 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 00:28:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 00:28:11 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 03 Nov 2026 00:28:11 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:329828f10dd1b721024e28953696281394ad8b6f7621b47c0fb0d2d41e2838ab`  
		Last Modified: Tue, 03 Nov 2026 00:23:23 GMT  
		Size: 45.7 MB (45734040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d4ededc3da6b0fd5ff84410f037360702c7a6b6b374711c6bd495b00917f344`  
		Last Modified: Tue, 03 Nov 2026 00:28:42 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39f554e49ab818d66c829fc7d591aad1527b7dfe669796ea1f9a4cbfa2bf338e`  
		Last Modified: Tue, 03 Nov 2026 00:28:42 GMT  
		Size: 737.5 KB (737531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:078187bddd16a736c37b3af38203ce3f81e72d1cecc72892d3162e2fdda92a9c`  
		Last Modified: Tue, 03 Nov 2026 00:28:43 GMT  
		Size: 5.8 MB (5809111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a3a0894b69f452dbaa4adf7e30dc40dcbeac60c887b58650815f73e125ebbbf`  
		Last Modified: Tue, 03 Nov 2026 00:28:42 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c94f276affdfa90b132c0281c742d9b04fc49cd05e2f916c2403babc2ab20d8`  
		Last Modified: Tue, 03 Nov 2026 00:28:43 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0237ba2e683714d1b2a34c00f7db3cf78a8dedbfe6db5ae228dccb666d3c7059`  
		Last Modified: Tue, 03 Nov 2026 00:28:46 GMT  
		Size: 49.9 MB (49858052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff8e54aab8e659375090dfd7b335aba5820fa78e0924411bf4e8b25e916a16a9`  
		Last Modified: Tue, 03 Nov 2026 00:28:44 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:213c73fcf04ab1151a1a2450bf01068429dd69eeed30ccdbdef05861dfff2b9c`  
		Last Modified: Tue, 03 Nov 2026 00:28:49 GMT  
		Size: 130.8 MB (130764837 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfaca62aae8cf766967103b1be084c1f02b3fddaac30550644b6e6ab5b8085e9`  
		Last Modified: Tue, 03 Nov 2026 00:28:45 GMT  
		Size: 5.2 KB (5228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:9dddd73766bc201545a0f5f56f132cb858aa0961e1f709495dcb51c3386d6fe9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15725405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcf03eb4869864d756f31efd9bddda1c67ef7517bdbb8c29ef11430ab98ada3b`

```dockerfile
```

-	Layers:
	-	`sha256:8b2161a4249c74a1663b6f9f23cc48a9fbe836cfdae9bc8d4ee943f6b635907f`  
		Last Modified: Tue, 03 Nov 2026 00:28:43 GMT  
		Size: 15.7 MB (15691823 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:80a355bf326121e4cef34678b7a01515593ec84a717d633aed3c091662ca2601`  
		Last Modified: Tue, 03 Nov 2026 00:28:42 GMT  
		Size: 33.6 KB (33582 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:8.4-oraclelinux9`

```console
$ docker pull mysql@sha256:a81d043930e51745522bd5c430961cf8286f0a23f0a9a2a6e0108f7ea71b0902
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8.4-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:72c368d898861f3b3a07af0e6d690400f44f048799ed46822783d9224cc2c86d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.3 MB (238256607 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f1a0ccadda3a1734d1db557e203ec58621d56fa248525016e85fe4f631311ec`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 03 Nov 2026 00:22:58 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 03 Nov 2026 00:22:58 GMT
CMD ["/bin/bash"]
# Tue, 03 Nov 2026 00:25:53 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 03 Nov 2026 00:25:55 GMT
ENV GOSU_VERSION=1.19
# Tue, 03 Nov 2026 00:25:55 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 03 Nov 2026 00:26:32 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 03 Nov 2026 00:26:33 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 03 Nov 2026 00:26:33 GMT
ENV MYSQL_MAJOR=8.4
# Tue, 03 Nov 2026 00:26:33 GMT
ENV MYSQL_VERSION=8.4.13-1.el9
# Tue, 03 Nov 2026 00:26:33 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 03 Nov 2026 00:27:12 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 03 Nov 2026 00:27:12 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 03 Nov 2026 00:27:12 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Tue, 03 Nov 2026 00:28:00 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 03 Nov 2026 00:28:00 GMT
VOLUME [/var/lib/mysql]
# Tue, 03 Nov 2026 00:28:00 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 00:28:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 00:28:00 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 03 Nov 2026 00:28:00 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c3e99775cc39154c5a4687d6aeb43d4162a1fec417e872075b1e50567e8aed20`  
		Last Modified: Tue, 03 Nov 2026 00:23:09 GMT  
		Size: 47.2 MB (47186609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:332288060cf8d2d286c35a3f5769b6047846bf282c035d37c66736d6a1e81eae`  
		Last Modified: Tue, 03 Nov 2026 00:28:31 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a7ab34260fdc9dba5aa25d4828a3f9878f3cdfb67c95b4598f91566ee12d8e5`  
		Last Modified: Tue, 03 Nov 2026 00:28:31 GMT  
		Size: 783.6 KB (783555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abda743cff12bf1c992d344c9f87ba6372178cdb3dfcf8166693f1d1ddd967c3`  
		Last Modified: Tue, 03 Nov 2026 00:28:31 GMT  
		Size: 6.2 MB (6188764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:335c0ba6129f79d6d295e152c017595d93229b0993958b12a9a83898eafcd8ef`  
		Last Modified: Tue, 03 Nov 2026 00:28:30 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:084e06fe4d96d3142f5eaacbfb8fb16890f4f6ac13d7a1ddc4bba55e2ad47878`  
		Last Modified: Tue, 03 Nov 2026 00:28:32 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8a79f346bc18123f663d4c8f054a61884e2d3d14914f4f43854406572f76725`  
		Last Modified: Tue, 03 Nov 2026 00:28:34 GMT  
		Size: 51.7 MB (51674269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16ff0dc0f366ede8d5ad91c81b445c27bd6e57be7c317734bde07b0671980214`  
		Last Modified: Tue, 03 Nov 2026 00:28:32 GMT  
		Size: 322.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b14917cf1885e73a7b3c81ed8e85a611d22681b83eca27b455c6758292e6bcc5`  
		Last Modified: Tue, 03 Nov 2026 00:28:36 GMT  
		Size: 132.4 MB (132414042 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b3d5697e82003b29842402d0cd1659c5078ede013135d4c84a066144161b74d`  
		Last Modified: Tue, 03 Nov 2026 00:28:33 GMT  
		Size: 5.2 KB (5221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:ace4b59b2c91542796db12a5f7daa409c76f3184db09e9909a8d320696e2c088
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15726735 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e8a8f30e5157f205d84e24042b599814f45bbdd984eab62c8dba135dc835c21`

```dockerfile
```

-	Layers:
	-	`sha256:6f4c84f51b8c0d2b68f358de8f55f18c4b81b9f65c4f3874f7fb926cd702452f`  
		Last Modified: Tue, 03 Nov 2026 00:28:31 GMT  
		Size: 15.7 MB (15693423 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2047ca069dcd3fb4e98ec2d197bb5c46d39e6d898b49a476ae0090ef437d9146`  
		Last Modified: Tue, 03 Nov 2026 00:28:31 GMT  
		Size: 33.3 KB (33312 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8.4-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:f4539b86c82f2c168fc95b439448bde3b9f48e8460344ce41e39081867d2b58e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.9 MB (232912945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae113cae2661960c4665a586812ae8150b2a133772a9f3ad63d1f1ae4f9e8ce7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 03 Nov 2026 00:23:12 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 03 Nov 2026 00:23:12 GMT
CMD ["/bin/bash"]
# Tue, 03 Nov 2026 00:25:56 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 03 Nov 2026 00:25:58 GMT
ENV GOSU_VERSION=1.19
# Tue, 03 Nov 2026 00:25:58 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 03 Nov 2026 00:26:37 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 03 Nov 2026 00:26:38 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 03 Nov 2026 00:26:38 GMT
ENV MYSQL_MAJOR=8.4
# Tue, 03 Nov 2026 00:26:38 GMT
ENV MYSQL_VERSION=8.4.13-1.el9
# Tue, 03 Nov 2026 00:26:38 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 03 Nov 2026 00:27:20 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 03 Nov 2026 00:27:20 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 03 Nov 2026 00:27:20 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Tue, 03 Nov 2026 00:28:11 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 03 Nov 2026 00:28:11 GMT
VOLUME [/var/lib/mysql]
# Tue, 03 Nov 2026 00:28:11 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 00:28:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 00:28:11 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 03 Nov 2026 00:28:11 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:329828f10dd1b721024e28953696281394ad8b6f7621b47c0fb0d2d41e2838ab`  
		Last Modified: Tue, 03 Nov 2026 00:23:23 GMT  
		Size: 45.7 MB (45734040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d4ededc3da6b0fd5ff84410f037360702c7a6b6b374711c6bd495b00917f344`  
		Last Modified: Tue, 03 Nov 2026 00:28:42 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39f554e49ab818d66c829fc7d591aad1527b7dfe669796ea1f9a4cbfa2bf338e`  
		Last Modified: Tue, 03 Nov 2026 00:28:42 GMT  
		Size: 737.5 KB (737531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:078187bddd16a736c37b3af38203ce3f81e72d1cecc72892d3162e2fdda92a9c`  
		Last Modified: Tue, 03 Nov 2026 00:28:43 GMT  
		Size: 5.8 MB (5809111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a3a0894b69f452dbaa4adf7e30dc40dcbeac60c887b58650815f73e125ebbbf`  
		Last Modified: Tue, 03 Nov 2026 00:28:42 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c94f276affdfa90b132c0281c742d9b04fc49cd05e2f916c2403babc2ab20d8`  
		Last Modified: Tue, 03 Nov 2026 00:28:43 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0237ba2e683714d1b2a34c00f7db3cf78a8dedbfe6db5ae228dccb666d3c7059`  
		Last Modified: Tue, 03 Nov 2026 00:28:46 GMT  
		Size: 49.9 MB (49858052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff8e54aab8e659375090dfd7b335aba5820fa78e0924411bf4e8b25e916a16a9`  
		Last Modified: Tue, 03 Nov 2026 00:28:44 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:213c73fcf04ab1151a1a2450bf01068429dd69eeed30ccdbdef05861dfff2b9c`  
		Last Modified: Tue, 03 Nov 2026 00:28:49 GMT  
		Size: 130.8 MB (130764837 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfaca62aae8cf766967103b1be084c1f02b3fddaac30550644b6e6ab5b8085e9`  
		Last Modified: Tue, 03 Nov 2026 00:28:45 GMT  
		Size: 5.2 KB (5228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:9dddd73766bc201545a0f5f56f132cb858aa0961e1f709495dcb51c3386d6fe9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15725405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcf03eb4869864d756f31efd9bddda1c67ef7517bdbb8c29ef11430ab98ada3b`

```dockerfile
```

-	Layers:
	-	`sha256:8b2161a4249c74a1663b6f9f23cc48a9fbe836cfdae9bc8d4ee943f6b635907f`  
		Last Modified: Tue, 03 Nov 2026 00:28:43 GMT  
		Size: 15.7 MB (15691823 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:80a355bf326121e4cef34678b7a01515593ec84a717d633aed3c091662ca2601`  
		Last Modified: Tue, 03 Nov 2026 00:28:42 GMT  
		Size: 33.6 KB (33582 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:8.4.13`

```console
$ docker pull mysql@sha256:a81d043930e51745522bd5c430961cf8286f0a23f0a9a2a6e0108f7ea71b0902
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8.4.13` - linux; amd64

```console
$ docker pull mysql@sha256:72c368d898861f3b3a07af0e6d690400f44f048799ed46822783d9224cc2c86d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.3 MB (238256607 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f1a0ccadda3a1734d1db557e203ec58621d56fa248525016e85fe4f631311ec`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 03 Nov 2026 00:22:58 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 03 Nov 2026 00:22:58 GMT
CMD ["/bin/bash"]
# Tue, 03 Nov 2026 00:25:53 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 03 Nov 2026 00:25:55 GMT
ENV GOSU_VERSION=1.19
# Tue, 03 Nov 2026 00:25:55 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 03 Nov 2026 00:26:32 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 03 Nov 2026 00:26:33 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 03 Nov 2026 00:26:33 GMT
ENV MYSQL_MAJOR=8.4
# Tue, 03 Nov 2026 00:26:33 GMT
ENV MYSQL_VERSION=8.4.13-1.el9
# Tue, 03 Nov 2026 00:26:33 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 03 Nov 2026 00:27:12 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 03 Nov 2026 00:27:12 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 03 Nov 2026 00:27:12 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Tue, 03 Nov 2026 00:28:00 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 03 Nov 2026 00:28:00 GMT
VOLUME [/var/lib/mysql]
# Tue, 03 Nov 2026 00:28:00 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 00:28:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 00:28:00 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 03 Nov 2026 00:28:00 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c3e99775cc39154c5a4687d6aeb43d4162a1fec417e872075b1e50567e8aed20`  
		Last Modified: Tue, 03 Nov 2026 00:23:09 GMT  
		Size: 47.2 MB (47186609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:332288060cf8d2d286c35a3f5769b6047846bf282c035d37c66736d6a1e81eae`  
		Last Modified: Tue, 03 Nov 2026 00:28:31 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a7ab34260fdc9dba5aa25d4828a3f9878f3cdfb67c95b4598f91566ee12d8e5`  
		Last Modified: Tue, 03 Nov 2026 00:28:31 GMT  
		Size: 783.6 KB (783555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abda743cff12bf1c992d344c9f87ba6372178cdb3dfcf8166693f1d1ddd967c3`  
		Last Modified: Tue, 03 Nov 2026 00:28:31 GMT  
		Size: 6.2 MB (6188764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:335c0ba6129f79d6d295e152c017595d93229b0993958b12a9a83898eafcd8ef`  
		Last Modified: Tue, 03 Nov 2026 00:28:30 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:084e06fe4d96d3142f5eaacbfb8fb16890f4f6ac13d7a1ddc4bba55e2ad47878`  
		Last Modified: Tue, 03 Nov 2026 00:28:32 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8a79f346bc18123f663d4c8f054a61884e2d3d14914f4f43854406572f76725`  
		Last Modified: Tue, 03 Nov 2026 00:28:34 GMT  
		Size: 51.7 MB (51674269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16ff0dc0f366ede8d5ad91c81b445c27bd6e57be7c317734bde07b0671980214`  
		Last Modified: Tue, 03 Nov 2026 00:28:32 GMT  
		Size: 322.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b14917cf1885e73a7b3c81ed8e85a611d22681b83eca27b455c6758292e6bcc5`  
		Last Modified: Tue, 03 Nov 2026 00:28:36 GMT  
		Size: 132.4 MB (132414042 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b3d5697e82003b29842402d0cd1659c5078ede013135d4c84a066144161b74d`  
		Last Modified: Tue, 03 Nov 2026 00:28:33 GMT  
		Size: 5.2 KB (5221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4.13` - unknown; unknown

```console
$ docker pull mysql@sha256:ace4b59b2c91542796db12a5f7daa409c76f3184db09e9909a8d320696e2c088
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15726735 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e8a8f30e5157f205d84e24042b599814f45bbdd984eab62c8dba135dc835c21`

```dockerfile
```

-	Layers:
	-	`sha256:6f4c84f51b8c0d2b68f358de8f55f18c4b81b9f65c4f3874f7fb926cd702452f`  
		Last Modified: Tue, 03 Nov 2026 00:28:31 GMT  
		Size: 15.7 MB (15693423 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2047ca069dcd3fb4e98ec2d197bb5c46d39e6d898b49a476ae0090ef437d9146`  
		Last Modified: Tue, 03 Nov 2026 00:28:31 GMT  
		Size: 33.3 KB (33312 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8.4.13` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:f4539b86c82f2c168fc95b439448bde3b9f48e8460344ce41e39081867d2b58e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.9 MB (232912945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae113cae2661960c4665a586812ae8150b2a133772a9f3ad63d1f1ae4f9e8ce7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 03 Nov 2026 00:23:12 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 03 Nov 2026 00:23:12 GMT
CMD ["/bin/bash"]
# Tue, 03 Nov 2026 00:25:56 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 03 Nov 2026 00:25:58 GMT
ENV GOSU_VERSION=1.19
# Tue, 03 Nov 2026 00:25:58 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 03 Nov 2026 00:26:37 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 03 Nov 2026 00:26:38 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 03 Nov 2026 00:26:38 GMT
ENV MYSQL_MAJOR=8.4
# Tue, 03 Nov 2026 00:26:38 GMT
ENV MYSQL_VERSION=8.4.13-1.el9
# Tue, 03 Nov 2026 00:26:38 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 03 Nov 2026 00:27:20 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 03 Nov 2026 00:27:20 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 03 Nov 2026 00:27:20 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Tue, 03 Nov 2026 00:28:11 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 03 Nov 2026 00:28:11 GMT
VOLUME [/var/lib/mysql]
# Tue, 03 Nov 2026 00:28:11 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 00:28:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 00:28:11 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 03 Nov 2026 00:28:11 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:329828f10dd1b721024e28953696281394ad8b6f7621b47c0fb0d2d41e2838ab`  
		Last Modified: Tue, 03 Nov 2026 00:23:23 GMT  
		Size: 45.7 MB (45734040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d4ededc3da6b0fd5ff84410f037360702c7a6b6b374711c6bd495b00917f344`  
		Last Modified: Tue, 03 Nov 2026 00:28:42 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39f554e49ab818d66c829fc7d591aad1527b7dfe669796ea1f9a4cbfa2bf338e`  
		Last Modified: Tue, 03 Nov 2026 00:28:42 GMT  
		Size: 737.5 KB (737531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:078187bddd16a736c37b3af38203ce3f81e72d1cecc72892d3162e2fdda92a9c`  
		Last Modified: Tue, 03 Nov 2026 00:28:43 GMT  
		Size: 5.8 MB (5809111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a3a0894b69f452dbaa4adf7e30dc40dcbeac60c887b58650815f73e125ebbbf`  
		Last Modified: Tue, 03 Nov 2026 00:28:42 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c94f276affdfa90b132c0281c742d9b04fc49cd05e2f916c2403babc2ab20d8`  
		Last Modified: Tue, 03 Nov 2026 00:28:43 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0237ba2e683714d1b2a34c00f7db3cf78a8dedbfe6db5ae228dccb666d3c7059`  
		Last Modified: Tue, 03 Nov 2026 00:28:46 GMT  
		Size: 49.9 MB (49858052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff8e54aab8e659375090dfd7b335aba5820fa78e0924411bf4e8b25e916a16a9`  
		Last Modified: Tue, 03 Nov 2026 00:28:44 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:213c73fcf04ab1151a1a2450bf01068429dd69eeed30ccdbdef05861dfff2b9c`  
		Last Modified: Tue, 03 Nov 2026 00:28:49 GMT  
		Size: 130.8 MB (130764837 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfaca62aae8cf766967103b1be084c1f02b3fddaac30550644b6e6ab5b8085e9`  
		Last Modified: Tue, 03 Nov 2026 00:28:45 GMT  
		Size: 5.2 KB (5228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4.13` - unknown; unknown

```console
$ docker pull mysql@sha256:9dddd73766bc201545a0f5f56f132cb858aa0961e1f709495dcb51c3386d6fe9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15725405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcf03eb4869864d756f31efd9bddda1c67ef7517bdbb8c29ef11430ab98ada3b`

```dockerfile
```

-	Layers:
	-	`sha256:8b2161a4249c74a1663b6f9f23cc48a9fbe836cfdae9bc8d4ee943f6b635907f`  
		Last Modified: Tue, 03 Nov 2026 00:28:43 GMT  
		Size: 15.7 MB (15691823 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:80a355bf326121e4cef34678b7a01515593ec84a717d633aed3c091662ca2601`  
		Last Modified: Tue, 03 Nov 2026 00:28:42 GMT  
		Size: 33.6 KB (33582 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:8.4.13-oracle`

```console
$ docker pull mysql@sha256:a81d043930e51745522bd5c430961cf8286f0a23f0a9a2a6e0108f7ea71b0902
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8.4.13-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:72c368d898861f3b3a07af0e6d690400f44f048799ed46822783d9224cc2c86d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.3 MB (238256607 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f1a0ccadda3a1734d1db557e203ec58621d56fa248525016e85fe4f631311ec`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 03 Nov 2026 00:22:58 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 03 Nov 2026 00:22:58 GMT
CMD ["/bin/bash"]
# Tue, 03 Nov 2026 00:25:53 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 03 Nov 2026 00:25:55 GMT
ENV GOSU_VERSION=1.19
# Tue, 03 Nov 2026 00:25:55 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 03 Nov 2026 00:26:32 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 03 Nov 2026 00:26:33 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 03 Nov 2026 00:26:33 GMT
ENV MYSQL_MAJOR=8.4
# Tue, 03 Nov 2026 00:26:33 GMT
ENV MYSQL_VERSION=8.4.13-1.el9
# Tue, 03 Nov 2026 00:26:33 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 03 Nov 2026 00:27:12 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 03 Nov 2026 00:27:12 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 03 Nov 2026 00:27:12 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Tue, 03 Nov 2026 00:28:00 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 03 Nov 2026 00:28:00 GMT
VOLUME [/var/lib/mysql]
# Tue, 03 Nov 2026 00:28:00 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 00:28:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 00:28:00 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 03 Nov 2026 00:28:00 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c3e99775cc39154c5a4687d6aeb43d4162a1fec417e872075b1e50567e8aed20`  
		Last Modified: Tue, 03 Nov 2026 00:23:09 GMT  
		Size: 47.2 MB (47186609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:332288060cf8d2d286c35a3f5769b6047846bf282c035d37c66736d6a1e81eae`  
		Last Modified: Tue, 03 Nov 2026 00:28:31 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a7ab34260fdc9dba5aa25d4828a3f9878f3cdfb67c95b4598f91566ee12d8e5`  
		Last Modified: Tue, 03 Nov 2026 00:28:31 GMT  
		Size: 783.6 KB (783555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abda743cff12bf1c992d344c9f87ba6372178cdb3dfcf8166693f1d1ddd967c3`  
		Last Modified: Tue, 03 Nov 2026 00:28:31 GMT  
		Size: 6.2 MB (6188764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:335c0ba6129f79d6d295e152c017595d93229b0993958b12a9a83898eafcd8ef`  
		Last Modified: Tue, 03 Nov 2026 00:28:30 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:084e06fe4d96d3142f5eaacbfb8fb16890f4f6ac13d7a1ddc4bba55e2ad47878`  
		Last Modified: Tue, 03 Nov 2026 00:28:32 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8a79f346bc18123f663d4c8f054a61884e2d3d14914f4f43854406572f76725`  
		Last Modified: Tue, 03 Nov 2026 00:28:34 GMT  
		Size: 51.7 MB (51674269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16ff0dc0f366ede8d5ad91c81b445c27bd6e57be7c317734bde07b0671980214`  
		Last Modified: Tue, 03 Nov 2026 00:28:32 GMT  
		Size: 322.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b14917cf1885e73a7b3c81ed8e85a611d22681b83eca27b455c6758292e6bcc5`  
		Last Modified: Tue, 03 Nov 2026 00:28:36 GMT  
		Size: 132.4 MB (132414042 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b3d5697e82003b29842402d0cd1659c5078ede013135d4c84a066144161b74d`  
		Last Modified: Tue, 03 Nov 2026 00:28:33 GMT  
		Size: 5.2 KB (5221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4.13-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:ace4b59b2c91542796db12a5f7daa409c76f3184db09e9909a8d320696e2c088
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15726735 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e8a8f30e5157f205d84e24042b599814f45bbdd984eab62c8dba135dc835c21`

```dockerfile
```

-	Layers:
	-	`sha256:6f4c84f51b8c0d2b68f358de8f55f18c4b81b9f65c4f3874f7fb926cd702452f`  
		Last Modified: Tue, 03 Nov 2026 00:28:31 GMT  
		Size: 15.7 MB (15693423 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2047ca069dcd3fb4e98ec2d197bb5c46d39e6d898b49a476ae0090ef437d9146`  
		Last Modified: Tue, 03 Nov 2026 00:28:31 GMT  
		Size: 33.3 KB (33312 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8.4.13-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:f4539b86c82f2c168fc95b439448bde3b9f48e8460344ce41e39081867d2b58e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.9 MB (232912945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae113cae2661960c4665a586812ae8150b2a133772a9f3ad63d1f1ae4f9e8ce7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 03 Nov 2026 00:23:12 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 03 Nov 2026 00:23:12 GMT
CMD ["/bin/bash"]
# Tue, 03 Nov 2026 00:25:56 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 03 Nov 2026 00:25:58 GMT
ENV GOSU_VERSION=1.19
# Tue, 03 Nov 2026 00:25:58 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 03 Nov 2026 00:26:37 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 03 Nov 2026 00:26:38 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 03 Nov 2026 00:26:38 GMT
ENV MYSQL_MAJOR=8.4
# Tue, 03 Nov 2026 00:26:38 GMT
ENV MYSQL_VERSION=8.4.13-1.el9
# Tue, 03 Nov 2026 00:26:38 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 03 Nov 2026 00:27:20 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 03 Nov 2026 00:27:20 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 03 Nov 2026 00:27:20 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Tue, 03 Nov 2026 00:28:11 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 03 Nov 2026 00:28:11 GMT
VOLUME [/var/lib/mysql]
# Tue, 03 Nov 2026 00:28:11 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 00:28:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 00:28:11 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 03 Nov 2026 00:28:11 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:329828f10dd1b721024e28953696281394ad8b6f7621b47c0fb0d2d41e2838ab`  
		Last Modified: Tue, 03 Nov 2026 00:23:23 GMT  
		Size: 45.7 MB (45734040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d4ededc3da6b0fd5ff84410f037360702c7a6b6b374711c6bd495b00917f344`  
		Last Modified: Tue, 03 Nov 2026 00:28:42 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39f554e49ab818d66c829fc7d591aad1527b7dfe669796ea1f9a4cbfa2bf338e`  
		Last Modified: Tue, 03 Nov 2026 00:28:42 GMT  
		Size: 737.5 KB (737531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:078187bddd16a736c37b3af38203ce3f81e72d1cecc72892d3162e2fdda92a9c`  
		Last Modified: Tue, 03 Nov 2026 00:28:43 GMT  
		Size: 5.8 MB (5809111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a3a0894b69f452dbaa4adf7e30dc40dcbeac60c887b58650815f73e125ebbbf`  
		Last Modified: Tue, 03 Nov 2026 00:28:42 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c94f276affdfa90b132c0281c742d9b04fc49cd05e2f916c2403babc2ab20d8`  
		Last Modified: Tue, 03 Nov 2026 00:28:43 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0237ba2e683714d1b2a34c00f7db3cf78a8dedbfe6db5ae228dccb666d3c7059`  
		Last Modified: Tue, 03 Nov 2026 00:28:46 GMT  
		Size: 49.9 MB (49858052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff8e54aab8e659375090dfd7b335aba5820fa78e0924411bf4e8b25e916a16a9`  
		Last Modified: Tue, 03 Nov 2026 00:28:44 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:213c73fcf04ab1151a1a2450bf01068429dd69eeed30ccdbdef05861dfff2b9c`  
		Last Modified: Tue, 03 Nov 2026 00:28:49 GMT  
		Size: 130.8 MB (130764837 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfaca62aae8cf766967103b1be084c1f02b3fddaac30550644b6e6ab5b8085e9`  
		Last Modified: Tue, 03 Nov 2026 00:28:45 GMT  
		Size: 5.2 KB (5228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4.13-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:9dddd73766bc201545a0f5f56f132cb858aa0961e1f709495dcb51c3386d6fe9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15725405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcf03eb4869864d756f31efd9bddda1c67ef7517bdbb8c29ef11430ab98ada3b`

```dockerfile
```

-	Layers:
	-	`sha256:8b2161a4249c74a1663b6f9f23cc48a9fbe836cfdae9bc8d4ee943f6b635907f`  
		Last Modified: Tue, 03 Nov 2026 00:28:43 GMT  
		Size: 15.7 MB (15691823 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:80a355bf326121e4cef34678b7a01515593ec84a717d633aed3c091662ca2601`  
		Last Modified: Tue, 03 Nov 2026 00:28:42 GMT  
		Size: 33.6 KB (33582 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:8.4.13-oraclelinux9`

```console
$ docker pull mysql@sha256:a81d043930e51745522bd5c430961cf8286f0a23f0a9a2a6e0108f7ea71b0902
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8.4.13-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:72c368d898861f3b3a07af0e6d690400f44f048799ed46822783d9224cc2c86d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.3 MB (238256607 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f1a0ccadda3a1734d1db557e203ec58621d56fa248525016e85fe4f631311ec`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 03 Nov 2026 00:22:58 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 03 Nov 2026 00:22:58 GMT
CMD ["/bin/bash"]
# Tue, 03 Nov 2026 00:25:53 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 03 Nov 2026 00:25:55 GMT
ENV GOSU_VERSION=1.19
# Tue, 03 Nov 2026 00:25:55 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 03 Nov 2026 00:26:32 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 03 Nov 2026 00:26:33 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 03 Nov 2026 00:26:33 GMT
ENV MYSQL_MAJOR=8.4
# Tue, 03 Nov 2026 00:26:33 GMT
ENV MYSQL_VERSION=8.4.13-1.el9
# Tue, 03 Nov 2026 00:26:33 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 03 Nov 2026 00:27:12 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 03 Nov 2026 00:27:12 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 03 Nov 2026 00:27:12 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Tue, 03 Nov 2026 00:28:00 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 03 Nov 2026 00:28:00 GMT
VOLUME [/var/lib/mysql]
# Tue, 03 Nov 2026 00:28:00 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 00:28:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 00:28:00 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 03 Nov 2026 00:28:00 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c3e99775cc39154c5a4687d6aeb43d4162a1fec417e872075b1e50567e8aed20`  
		Last Modified: Tue, 03 Nov 2026 00:23:09 GMT  
		Size: 47.2 MB (47186609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:332288060cf8d2d286c35a3f5769b6047846bf282c035d37c66736d6a1e81eae`  
		Last Modified: Tue, 03 Nov 2026 00:28:31 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a7ab34260fdc9dba5aa25d4828a3f9878f3cdfb67c95b4598f91566ee12d8e5`  
		Last Modified: Tue, 03 Nov 2026 00:28:31 GMT  
		Size: 783.6 KB (783555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abda743cff12bf1c992d344c9f87ba6372178cdb3dfcf8166693f1d1ddd967c3`  
		Last Modified: Tue, 03 Nov 2026 00:28:31 GMT  
		Size: 6.2 MB (6188764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:335c0ba6129f79d6d295e152c017595d93229b0993958b12a9a83898eafcd8ef`  
		Last Modified: Tue, 03 Nov 2026 00:28:30 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:084e06fe4d96d3142f5eaacbfb8fb16890f4f6ac13d7a1ddc4bba55e2ad47878`  
		Last Modified: Tue, 03 Nov 2026 00:28:32 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8a79f346bc18123f663d4c8f054a61884e2d3d14914f4f43854406572f76725`  
		Last Modified: Tue, 03 Nov 2026 00:28:34 GMT  
		Size: 51.7 MB (51674269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16ff0dc0f366ede8d5ad91c81b445c27bd6e57be7c317734bde07b0671980214`  
		Last Modified: Tue, 03 Nov 2026 00:28:32 GMT  
		Size: 322.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b14917cf1885e73a7b3c81ed8e85a611d22681b83eca27b455c6758292e6bcc5`  
		Last Modified: Tue, 03 Nov 2026 00:28:36 GMT  
		Size: 132.4 MB (132414042 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b3d5697e82003b29842402d0cd1659c5078ede013135d4c84a066144161b74d`  
		Last Modified: Tue, 03 Nov 2026 00:28:33 GMT  
		Size: 5.2 KB (5221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4.13-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:ace4b59b2c91542796db12a5f7daa409c76f3184db09e9909a8d320696e2c088
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15726735 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e8a8f30e5157f205d84e24042b599814f45bbdd984eab62c8dba135dc835c21`

```dockerfile
```

-	Layers:
	-	`sha256:6f4c84f51b8c0d2b68f358de8f55f18c4b81b9f65c4f3874f7fb926cd702452f`  
		Last Modified: Tue, 03 Nov 2026 00:28:31 GMT  
		Size: 15.7 MB (15693423 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2047ca069dcd3fb4e98ec2d197bb5c46d39e6d898b49a476ae0090ef437d9146`  
		Last Modified: Tue, 03 Nov 2026 00:28:31 GMT  
		Size: 33.3 KB (33312 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8.4.13-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:f4539b86c82f2c168fc95b439448bde3b9f48e8460344ce41e39081867d2b58e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.9 MB (232912945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae113cae2661960c4665a586812ae8150b2a133772a9f3ad63d1f1ae4f9e8ce7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 03 Nov 2026 00:23:12 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 03 Nov 2026 00:23:12 GMT
CMD ["/bin/bash"]
# Tue, 03 Nov 2026 00:25:56 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 03 Nov 2026 00:25:58 GMT
ENV GOSU_VERSION=1.19
# Tue, 03 Nov 2026 00:25:58 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 03 Nov 2026 00:26:37 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 03 Nov 2026 00:26:38 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 03 Nov 2026 00:26:38 GMT
ENV MYSQL_MAJOR=8.4
# Tue, 03 Nov 2026 00:26:38 GMT
ENV MYSQL_VERSION=8.4.13-1.el9
# Tue, 03 Nov 2026 00:26:38 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 03 Nov 2026 00:27:20 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 03 Nov 2026 00:27:20 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 03 Nov 2026 00:27:20 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Tue, 03 Nov 2026 00:28:11 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 03 Nov 2026 00:28:11 GMT
VOLUME [/var/lib/mysql]
# Tue, 03 Nov 2026 00:28:11 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 00:28:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 00:28:11 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 03 Nov 2026 00:28:11 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:329828f10dd1b721024e28953696281394ad8b6f7621b47c0fb0d2d41e2838ab`  
		Last Modified: Tue, 03 Nov 2026 00:23:23 GMT  
		Size: 45.7 MB (45734040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d4ededc3da6b0fd5ff84410f037360702c7a6b6b374711c6bd495b00917f344`  
		Last Modified: Tue, 03 Nov 2026 00:28:42 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39f554e49ab818d66c829fc7d591aad1527b7dfe669796ea1f9a4cbfa2bf338e`  
		Last Modified: Tue, 03 Nov 2026 00:28:42 GMT  
		Size: 737.5 KB (737531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:078187bddd16a736c37b3af38203ce3f81e72d1cecc72892d3162e2fdda92a9c`  
		Last Modified: Tue, 03 Nov 2026 00:28:43 GMT  
		Size: 5.8 MB (5809111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a3a0894b69f452dbaa4adf7e30dc40dcbeac60c887b58650815f73e125ebbbf`  
		Last Modified: Tue, 03 Nov 2026 00:28:42 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c94f276affdfa90b132c0281c742d9b04fc49cd05e2f916c2403babc2ab20d8`  
		Last Modified: Tue, 03 Nov 2026 00:28:43 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0237ba2e683714d1b2a34c00f7db3cf78a8dedbfe6db5ae228dccb666d3c7059`  
		Last Modified: Tue, 03 Nov 2026 00:28:46 GMT  
		Size: 49.9 MB (49858052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff8e54aab8e659375090dfd7b335aba5820fa78e0924411bf4e8b25e916a16a9`  
		Last Modified: Tue, 03 Nov 2026 00:28:44 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:213c73fcf04ab1151a1a2450bf01068429dd69eeed30ccdbdef05861dfff2b9c`  
		Last Modified: Tue, 03 Nov 2026 00:28:49 GMT  
		Size: 130.8 MB (130764837 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfaca62aae8cf766967103b1be084c1f02b3fddaac30550644b6e6ab5b8085e9`  
		Last Modified: Tue, 03 Nov 2026 00:28:45 GMT  
		Size: 5.2 KB (5228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4.13-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:9dddd73766bc201545a0f5f56f132cb858aa0961e1f709495dcb51c3386d6fe9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15725405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcf03eb4869864d756f31efd9bddda1c67ef7517bdbb8c29ef11430ab98ada3b`

```dockerfile
```

-	Layers:
	-	`sha256:8b2161a4249c74a1663b6f9f23cc48a9fbe836cfdae9bc8d4ee943f6b635907f`  
		Last Modified: Tue, 03 Nov 2026 00:28:43 GMT  
		Size: 15.7 MB (15691823 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:80a355bf326121e4cef34678b7a01515593ec84a717d633aed3c091662ca2601`  
		Last Modified: Tue, 03 Nov 2026 00:28:42 GMT  
		Size: 33.6 KB (33582 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9`

```console
$ docker pull mysql@sha256:df90258da46f6e7ff8574ff84f17618aba0765cac749928299c69fd4e7cb8ad8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9` - linux; amd64

```console
$ docker pull mysql@sha256:1954314de304d70fe85c67204d4676891ffa11dcd7caedaf5e9bc50b5f6be446
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.3 MB (270272026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e76f0f197fa13fca853e3541ba0d9e4be3b8665c477232a8820422a30c1be7a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 03 Nov 2026 00:22:58 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 03 Nov 2026 00:22:58 GMT
CMD ["/bin/bash"]
# Tue, 03 Nov 2026 00:25:50 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 03 Nov 2026 00:25:52 GMT
ENV GOSU_VERSION=1.19
# Tue, 03 Nov 2026 00:25:52 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 03 Nov 2026 00:26:28 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 03 Nov 2026 00:26:28 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 03 Nov 2026 00:26:28 GMT
ENV MYSQL_MAJOR=9.7
# Tue, 03 Nov 2026 00:26:28 GMT
ENV MYSQL_VERSION=9.7.4-1.el9
# Tue, 03 Nov 2026 00:26:28 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 03 Nov 2026 00:27:06 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 03 Nov 2026 00:27:07 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 03 Nov 2026 00:27:07 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Tue, 03 Nov 2026 00:27:55 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 03 Nov 2026 00:27:55 GMT
VOLUME [/var/lib/mysql]
# Tue, 03 Nov 2026 00:27:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 00:27:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 00:27:55 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 03 Nov 2026 00:27:55 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c3e99775cc39154c5a4687d6aeb43d4162a1fec417e872075b1e50567e8aed20`  
		Last Modified: Tue, 03 Nov 2026 00:23:09 GMT  
		Size: 47.2 MB (47186609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31f887fe53edc896755027291370c8d4292fa36a76ab381cb4a8dbedd285760b`  
		Last Modified: Tue, 03 Nov 2026 00:28:28 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3754af017f56acaa6d9f52ba0c3732a51849e67899cf54b0c484e57f9d33e534`  
		Last Modified: Tue, 03 Nov 2026 00:28:28 GMT  
		Size: 783.6 KB (783556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df33232b969ae6266d904f378a405485f0981cfcb2c1f5747ca97aaa574184ba`  
		Last Modified: Tue, 03 Nov 2026 00:28:29 GMT  
		Size: 6.2 MB (6188755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae3d2b29e16c7814e94bdc7cab48ae7db3bc9165001e4696487aee88931af3a6`  
		Last Modified: Tue, 03 Nov 2026 00:28:28 GMT  
		Size: 2.6 KB (2602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99b0f13fee4e4992d1ab6a39fc364e0066e72a49f9a5c1cf12c4c2950b50b1a0`  
		Last Modified: Tue, 03 Nov 2026 00:28:30 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb0ce55aac792358516b5786f52d10f4ec66d581d9f76b3a10dd9f019d215453`  
		Last Modified: Tue, 03 Nov 2026 00:28:32 GMT  
		Size: 57.2 MB (57180406 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:068a758fe1a8628cb213d1859870d044f9df9feb9d2793164413b2face986f1a`  
		Last Modified: Tue, 03 Nov 2026 00:28:30 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8a442f747a1b5934bdec12be13ac571d0f5e224d85c945b8fd9c76c7761dec0`  
		Last Modified: Tue, 03 Nov 2026 00:28:34 GMT  
		Size: 158.9 MB (158923340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e809fbffc5fed48386379275a0e7942464e9e07ab3f6d632c73b9b1fa8476f0`  
		Last Modified: Tue, 03 Nov 2026 00:28:31 GMT  
		Size: 5.2 KB (5221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9` - unknown; unknown

```console
$ docker pull mysql@sha256:eebfb1cf458be8570bcc6bf3ebc79438f9b8e61328acd63a60e6e4d8ed93a2e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16815699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7d7dac4c2c3cca28ba86e52d6b8b4a8bbe05a92299a3f7d178f0c23192d1420`

```dockerfile
```

-	Layers:
	-	`sha256:81510890552abb4f4058f7451c431347368cd918b661f825a5fbe0fb977ca92c`  
		Last Modified: Tue, 03 Nov 2026 00:28:29 GMT  
		Size: 16.8 MB (16781491 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0e0302ee39c42374ab0007a558010e1e7941a526df70138d12b412c5b55926b3`  
		Last Modified: Tue, 03 Nov 2026 00:28:28 GMT  
		Size: 34.2 KB (34208 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:290970fdd7f34b74bbc9a627a7a1fdd307de27b79a01acc08e3676ebb5ca7054
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.7 MB (266655628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c58957ab847e69d222cbc0c2667d48452388950f0a93fd63dcc1aa2e153f8eeb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 03 Nov 2026 00:23:12 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 03 Nov 2026 00:23:12 GMT
CMD ["/bin/bash"]
# Tue, 03 Nov 2026 00:25:53 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 03 Nov 2026 00:25:55 GMT
ENV GOSU_VERSION=1.19
# Tue, 03 Nov 2026 00:25:55 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 03 Nov 2026 00:26:34 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 03 Nov 2026 00:26:36 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 03 Nov 2026 00:26:36 GMT
ENV MYSQL_MAJOR=9.7
# Tue, 03 Nov 2026 00:26:36 GMT
ENV MYSQL_VERSION=9.7.4-1.el9
# Tue, 03 Nov 2026 00:26:36 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 03 Nov 2026 00:27:19 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 03 Nov 2026 00:27:19 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 03 Nov 2026 00:27:19 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Tue, 03 Nov 2026 00:28:11 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 03 Nov 2026 00:28:11 GMT
VOLUME [/var/lib/mysql]
# Tue, 03 Nov 2026 00:28:11 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 00:28:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 00:28:11 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 03 Nov 2026 00:28:11 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:329828f10dd1b721024e28953696281394ad8b6f7621b47c0fb0d2d41e2838ab`  
		Last Modified: Tue, 03 Nov 2026 00:23:23 GMT  
		Size: 45.7 MB (45734040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:332288060cf8d2d286c35a3f5769b6047846bf282c035d37c66736d6a1e81eae`  
		Last Modified: Tue, 03 Nov 2026 00:28:31 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0faccbb0370077fce1f989b75cad45c0e51b05a29cff15bfe6898df4f9b6b790`  
		Last Modified: Tue, 03 Nov 2026 00:28:46 GMT  
		Size: 737.5 KB (737529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84d41246540728c61ef3be8edd4017e4003fe4c82b28ca2b6ba5b74b8cae29ab`  
		Last Modified: Tue, 03 Nov 2026 00:28:47 GMT  
		Size: 5.8 MB (5809051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee15add962978dfaf0409211c1099c20eb639bcb4054d2eb726810c140fb8e50`  
		Last Modified: Tue, 03 Nov 2026 00:28:47 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:053fec689bfc5ae452338d9173842d6dc3537ab25e860ed7aa32e5262669ec88`  
		Last Modified: Tue, 03 Nov 2026 00:28:48 GMT  
		Size: 331.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1eb2512f0309788c4a1f48a7161ec1b3ec0a852ff5b4774b161f6f469bad3455`  
		Last Modified: Tue, 03 Nov 2026 00:28:50 GMT  
		Size: 57.2 MB (57172471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cea84603e8902580fb1129da0e3d01583d7d6bbc6e81894b41c85d5cdcfa7539`  
		Last Modified: Tue, 03 Nov 2026 00:28:48 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d0bdba5eb82e4040cb0f6616be612c350fac55c01006af9511d74ddf6462888`  
		Last Modified: Tue, 03 Nov 2026 00:28:52 GMT  
		Size: 157.2 MB (157193166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b76013fbb918767d790431ba3d8849aaf945bad41678c49bed2e21ef28b10a97`  
		Last Modified: Tue, 03 Nov 2026 00:28:49 GMT  
		Size: 5.2 KB (5228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9` - unknown; unknown

```console
$ docker pull mysql@sha256:bc6ad7398aef25511b59466d9c2220fd018096b50749f61b1facf546c7cf0493
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16814440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad164e0054a8ba159836060d678a00a79d89a56a8070bf4016b86402095ec7bb`

```dockerfile
```

-	Layers:
	-	`sha256:71b7f8695596b20e275f5462aaae4e8fcdddf17237be4b62b78869faf96fce55`  
		Last Modified: Tue, 03 Nov 2026 00:28:47 GMT  
		Size: 16.8 MB (16779927 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:db5edd9c75b0b6a7c079b234f1802788ff516d2293a95d243ca43938450f7484`  
		Last Modified: Tue, 03 Nov 2026 00:28:46 GMT  
		Size: 34.5 KB (34513 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9-oracle`

```console
$ docker pull mysql@sha256:df90258da46f6e7ff8574ff84f17618aba0765cac749928299c69fd4e7cb8ad8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:1954314de304d70fe85c67204d4676891ffa11dcd7caedaf5e9bc50b5f6be446
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.3 MB (270272026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e76f0f197fa13fca853e3541ba0d9e4be3b8665c477232a8820422a30c1be7a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 03 Nov 2026 00:22:58 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 03 Nov 2026 00:22:58 GMT
CMD ["/bin/bash"]
# Tue, 03 Nov 2026 00:25:50 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 03 Nov 2026 00:25:52 GMT
ENV GOSU_VERSION=1.19
# Tue, 03 Nov 2026 00:25:52 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 03 Nov 2026 00:26:28 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 03 Nov 2026 00:26:28 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 03 Nov 2026 00:26:28 GMT
ENV MYSQL_MAJOR=9.7
# Tue, 03 Nov 2026 00:26:28 GMT
ENV MYSQL_VERSION=9.7.4-1.el9
# Tue, 03 Nov 2026 00:26:28 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 03 Nov 2026 00:27:06 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 03 Nov 2026 00:27:07 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 03 Nov 2026 00:27:07 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Tue, 03 Nov 2026 00:27:55 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 03 Nov 2026 00:27:55 GMT
VOLUME [/var/lib/mysql]
# Tue, 03 Nov 2026 00:27:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 00:27:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 00:27:55 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 03 Nov 2026 00:27:55 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c3e99775cc39154c5a4687d6aeb43d4162a1fec417e872075b1e50567e8aed20`  
		Last Modified: Tue, 03 Nov 2026 00:23:09 GMT  
		Size: 47.2 MB (47186609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31f887fe53edc896755027291370c8d4292fa36a76ab381cb4a8dbedd285760b`  
		Last Modified: Tue, 03 Nov 2026 00:28:28 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3754af017f56acaa6d9f52ba0c3732a51849e67899cf54b0c484e57f9d33e534`  
		Last Modified: Tue, 03 Nov 2026 00:28:28 GMT  
		Size: 783.6 KB (783556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df33232b969ae6266d904f378a405485f0981cfcb2c1f5747ca97aaa574184ba`  
		Last Modified: Tue, 03 Nov 2026 00:28:29 GMT  
		Size: 6.2 MB (6188755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae3d2b29e16c7814e94bdc7cab48ae7db3bc9165001e4696487aee88931af3a6`  
		Last Modified: Tue, 03 Nov 2026 00:28:28 GMT  
		Size: 2.6 KB (2602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99b0f13fee4e4992d1ab6a39fc364e0066e72a49f9a5c1cf12c4c2950b50b1a0`  
		Last Modified: Tue, 03 Nov 2026 00:28:30 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb0ce55aac792358516b5786f52d10f4ec66d581d9f76b3a10dd9f019d215453`  
		Last Modified: Tue, 03 Nov 2026 00:28:32 GMT  
		Size: 57.2 MB (57180406 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:068a758fe1a8628cb213d1859870d044f9df9feb9d2793164413b2face986f1a`  
		Last Modified: Tue, 03 Nov 2026 00:28:30 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8a442f747a1b5934bdec12be13ac571d0f5e224d85c945b8fd9c76c7761dec0`  
		Last Modified: Tue, 03 Nov 2026 00:28:34 GMT  
		Size: 158.9 MB (158923340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e809fbffc5fed48386379275a0e7942464e9e07ab3f6d632c73b9b1fa8476f0`  
		Last Modified: Tue, 03 Nov 2026 00:28:31 GMT  
		Size: 5.2 KB (5221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:eebfb1cf458be8570bcc6bf3ebc79438f9b8e61328acd63a60e6e4d8ed93a2e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16815699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7d7dac4c2c3cca28ba86e52d6b8b4a8bbe05a92299a3f7d178f0c23192d1420`

```dockerfile
```

-	Layers:
	-	`sha256:81510890552abb4f4058f7451c431347368cd918b661f825a5fbe0fb977ca92c`  
		Last Modified: Tue, 03 Nov 2026 00:28:29 GMT  
		Size: 16.8 MB (16781491 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0e0302ee39c42374ab0007a558010e1e7941a526df70138d12b412c5b55926b3`  
		Last Modified: Tue, 03 Nov 2026 00:28:28 GMT  
		Size: 34.2 KB (34208 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:290970fdd7f34b74bbc9a627a7a1fdd307de27b79a01acc08e3676ebb5ca7054
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.7 MB (266655628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c58957ab847e69d222cbc0c2667d48452388950f0a93fd63dcc1aa2e153f8eeb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 03 Nov 2026 00:23:12 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 03 Nov 2026 00:23:12 GMT
CMD ["/bin/bash"]
# Tue, 03 Nov 2026 00:25:53 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 03 Nov 2026 00:25:55 GMT
ENV GOSU_VERSION=1.19
# Tue, 03 Nov 2026 00:25:55 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 03 Nov 2026 00:26:34 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 03 Nov 2026 00:26:36 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 03 Nov 2026 00:26:36 GMT
ENV MYSQL_MAJOR=9.7
# Tue, 03 Nov 2026 00:26:36 GMT
ENV MYSQL_VERSION=9.7.4-1.el9
# Tue, 03 Nov 2026 00:26:36 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 03 Nov 2026 00:27:19 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 03 Nov 2026 00:27:19 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 03 Nov 2026 00:27:19 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Tue, 03 Nov 2026 00:28:11 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 03 Nov 2026 00:28:11 GMT
VOLUME [/var/lib/mysql]
# Tue, 03 Nov 2026 00:28:11 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 00:28:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 00:28:11 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 03 Nov 2026 00:28:11 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:329828f10dd1b721024e28953696281394ad8b6f7621b47c0fb0d2d41e2838ab`  
		Last Modified: Tue, 03 Nov 2026 00:23:23 GMT  
		Size: 45.7 MB (45734040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:332288060cf8d2d286c35a3f5769b6047846bf282c035d37c66736d6a1e81eae`  
		Last Modified: Tue, 03 Nov 2026 00:28:31 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0faccbb0370077fce1f989b75cad45c0e51b05a29cff15bfe6898df4f9b6b790`  
		Last Modified: Tue, 03 Nov 2026 00:28:46 GMT  
		Size: 737.5 KB (737529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84d41246540728c61ef3be8edd4017e4003fe4c82b28ca2b6ba5b74b8cae29ab`  
		Last Modified: Tue, 03 Nov 2026 00:28:47 GMT  
		Size: 5.8 MB (5809051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee15add962978dfaf0409211c1099c20eb639bcb4054d2eb726810c140fb8e50`  
		Last Modified: Tue, 03 Nov 2026 00:28:47 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:053fec689bfc5ae452338d9173842d6dc3537ab25e860ed7aa32e5262669ec88`  
		Last Modified: Tue, 03 Nov 2026 00:28:48 GMT  
		Size: 331.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1eb2512f0309788c4a1f48a7161ec1b3ec0a852ff5b4774b161f6f469bad3455`  
		Last Modified: Tue, 03 Nov 2026 00:28:50 GMT  
		Size: 57.2 MB (57172471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cea84603e8902580fb1129da0e3d01583d7d6bbc6e81894b41c85d5cdcfa7539`  
		Last Modified: Tue, 03 Nov 2026 00:28:48 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d0bdba5eb82e4040cb0f6616be612c350fac55c01006af9511d74ddf6462888`  
		Last Modified: Tue, 03 Nov 2026 00:28:52 GMT  
		Size: 157.2 MB (157193166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b76013fbb918767d790431ba3d8849aaf945bad41678c49bed2e21ef28b10a97`  
		Last Modified: Tue, 03 Nov 2026 00:28:49 GMT  
		Size: 5.2 KB (5228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:bc6ad7398aef25511b59466d9c2220fd018096b50749f61b1facf546c7cf0493
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16814440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad164e0054a8ba159836060d678a00a79d89a56a8070bf4016b86402095ec7bb`

```dockerfile
```

-	Layers:
	-	`sha256:71b7f8695596b20e275f5462aaae4e8fcdddf17237be4b62b78869faf96fce55`  
		Last Modified: Tue, 03 Nov 2026 00:28:47 GMT  
		Size: 16.8 MB (16779927 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:db5edd9c75b0b6a7c079b234f1802788ff516d2293a95d243ca43938450f7484`  
		Last Modified: Tue, 03 Nov 2026 00:28:46 GMT  
		Size: 34.5 KB (34513 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9-oraclelinux9`

```console
$ docker pull mysql@sha256:df90258da46f6e7ff8574ff84f17618aba0765cac749928299c69fd4e7cb8ad8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:1954314de304d70fe85c67204d4676891ffa11dcd7caedaf5e9bc50b5f6be446
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.3 MB (270272026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e76f0f197fa13fca853e3541ba0d9e4be3b8665c477232a8820422a30c1be7a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 03 Nov 2026 00:22:58 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 03 Nov 2026 00:22:58 GMT
CMD ["/bin/bash"]
# Tue, 03 Nov 2026 00:25:50 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 03 Nov 2026 00:25:52 GMT
ENV GOSU_VERSION=1.19
# Tue, 03 Nov 2026 00:25:52 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 03 Nov 2026 00:26:28 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 03 Nov 2026 00:26:28 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 03 Nov 2026 00:26:28 GMT
ENV MYSQL_MAJOR=9.7
# Tue, 03 Nov 2026 00:26:28 GMT
ENV MYSQL_VERSION=9.7.4-1.el9
# Tue, 03 Nov 2026 00:26:28 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 03 Nov 2026 00:27:06 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 03 Nov 2026 00:27:07 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 03 Nov 2026 00:27:07 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Tue, 03 Nov 2026 00:27:55 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 03 Nov 2026 00:27:55 GMT
VOLUME [/var/lib/mysql]
# Tue, 03 Nov 2026 00:27:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 00:27:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 00:27:55 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 03 Nov 2026 00:27:55 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c3e99775cc39154c5a4687d6aeb43d4162a1fec417e872075b1e50567e8aed20`  
		Last Modified: Tue, 03 Nov 2026 00:23:09 GMT  
		Size: 47.2 MB (47186609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31f887fe53edc896755027291370c8d4292fa36a76ab381cb4a8dbedd285760b`  
		Last Modified: Tue, 03 Nov 2026 00:28:28 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3754af017f56acaa6d9f52ba0c3732a51849e67899cf54b0c484e57f9d33e534`  
		Last Modified: Tue, 03 Nov 2026 00:28:28 GMT  
		Size: 783.6 KB (783556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df33232b969ae6266d904f378a405485f0981cfcb2c1f5747ca97aaa574184ba`  
		Last Modified: Tue, 03 Nov 2026 00:28:29 GMT  
		Size: 6.2 MB (6188755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae3d2b29e16c7814e94bdc7cab48ae7db3bc9165001e4696487aee88931af3a6`  
		Last Modified: Tue, 03 Nov 2026 00:28:28 GMT  
		Size: 2.6 KB (2602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99b0f13fee4e4992d1ab6a39fc364e0066e72a49f9a5c1cf12c4c2950b50b1a0`  
		Last Modified: Tue, 03 Nov 2026 00:28:30 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb0ce55aac792358516b5786f52d10f4ec66d581d9f76b3a10dd9f019d215453`  
		Last Modified: Tue, 03 Nov 2026 00:28:32 GMT  
		Size: 57.2 MB (57180406 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:068a758fe1a8628cb213d1859870d044f9df9feb9d2793164413b2face986f1a`  
		Last Modified: Tue, 03 Nov 2026 00:28:30 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8a442f747a1b5934bdec12be13ac571d0f5e224d85c945b8fd9c76c7761dec0`  
		Last Modified: Tue, 03 Nov 2026 00:28:34 GMT  
		Size: 158.9 MB (158923340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e809fbffc5fed48386379275a0e7942464e9e07ab3f6d632c73b9b1fa8476f0`  
		Last Modified: Tue, 03 Nov 2026 00:28:31 GMT  
		Size: 5.2 KB (5221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:eebfb1cf458be8570bcc6bf3ebc79438f9b8e61328acd63a60e6e4d8ed93a2e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16815699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7d7dac4c2c3cca28ba86e52d6b8b4a8bbe05a92299a3f7d178f0c23192d1420`

```dockerfile
```

-	Layers:
	-	`sha256:81510890552abb4f4058f7451c431347368cd918b661f825a5fbe0fb977ca92c`  
		Last Modified: Tue, 03 Nov 2026 00:28:29 GMT  
		Size: 16.8 MB (16781491 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0e0302ee39c42374ab0007a558010e1e7941a526df70138d12b412c5b55926b3`  
		Last Modified: Tue, 03 Nov 2026 00:28:28 GMT  
		Size: 34.2 KB (34208 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:290970fdd7f34b74bbc9a627a7a1fdd307de27b79a01acc08e3676ebb5ca7054
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.7 MB (266655628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c58957ab847e69d222cbc0c2667d48452388950f0a93fd63dcc1aa2e153f8eeb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 03 Nov 2026 00:23:12 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 03 Nov 2026 00:23:12 GMT
CMD ["/bin/bash"]
# Tue, 03 Nov 2026 00:25:53 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 03 Nov 2026 00:25:55 GMT
ENV GOSU_VERSION=1.19
# Tue, 03 Nov 2026 00:25:55 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 03 Nov 2026 00:26:34 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 03 Nov 2026 00:26:36 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 03 Nov 2026 00:26:36 GMT
ENV MYSQL_MAJOR=9.7
# Tue, 03 Nov 2026 00:26:36 GMT
ENV MYSQL_VERSION=9.7.4-1.el9
# Tue, 03 Nov 2026 00:26:36 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 03 Nov 2026 00:27:19 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 03 Nov 2026 00:27:19 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 03 Nov 2026 00:27:19 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Tue, 03 Nov 2026 00:28:11 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 03 Nov 2026 00:28:11 GMT
VOLUME [/var/lib/mysql]
# Tue, 03 Nov 2026 00:28:11 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 00:28:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 00:28:11 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 03 Nov 2026 00:28:11 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:329828f10dd1b721024e28953696281394ad8b6f7621b47c0fb0d2d41e2838ab`  
		Last Modified: Tue, 03 Nov 2026 00:23:23 GMT  
		Size: 45.7 MB (45734040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:332288060cf8d2d286c35a3f5769b6047846bf282c035d37c66736d6a1e81eae`  
		Last Modified: Tue, 03 Nov 2026 00:28:31 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0faccbb0370077fce1f989b75cad45c0e51b05a29cff15bfe6898df4f9b6b790`  
		Last Modified: Tue, 03 Nov 2026 00:28:46 GMT  
		Size: 737.5 KB (737529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84d41246540728c61ef3be8edd4017e4003fe4c82b28ca2b6ba5b74b8cae29ab`  
		Last Modified: Tue, 03 Nov 2026 00:28:47 GMT  
		Size: 5.8 MB (5809051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee15add962978dfaf0409211c1099c20eb639bcb4054d2eb726810c140fb8e50`  
		Last Modified: Tue, 03 Nov 2026 00:28:47 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:053fec689bfc5ae452338d9173842d6dc3537ab25e860ed7aa32e5262669ec88`  
		Last Modified: Tue, 03 Nov 2026 00:28:48 GMT  
		Size: 331.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1eb2512f0309788c4a1f48a7161ec1b3ec0a852ff5b4774b161f6f469bad3455`  
		Last Modified: Tue, 03 Nov 2026 00:28:50 GMT  
		Size: 57.2 MB (57172471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cea84603e8902580fb1129da0e3d01583d7d6bbc6e81894b41c85d5cdcfa7539`  
		Last Modified: Tue, 03 Nov 2026 00:28:48 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d0bdba5eb82e4040cb0f6616be612c350fac55c01006af9511d74ddf6462888`  
		Last Modified: Tue, 03 Nov 2026 00:28:52 GMT  
		Size: 157.2 MB (157193166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b76013fbb918767d790431ba3d8849aaf945bad41678c49bed2e21ef28b10a97`  
		Last Modified: Tue, 03 Nov 2026 00:28:49 GMT  
		Size: 5.2 KB (5228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:bc6ad7398aef25511b59466d9c2220fd018096b50749f61b1facf546c7cf0493
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16814440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad164e0054a8ba159836060d678a00a79d89a56a8070bf4016b86402095ec7bb`

```dockerfile
```

-	Layers:
	-	`sha256:71b7f8695596b20e275f5462aaae4e8fcdddf17237be4b62b78869faf96fce55`  
		Last Modified: Tue, 03 Nov 2026 00:28:47 GMT  
		Size: 16.8 MB (16779927 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:db5edd9c75b0b6a7c079b234f1802788ff516d2293a95d243ca43938450f7484`  
		Last Modified: Tue, 03 Nov 2026 00:28:46 GMT  
		Size: 34.5 KB (34513 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9.7`

```console
$ docker pull mysql@sha256:df90258da46f6e7ff8574ff84f17618aba0765cac749928299c69fd4e7cb8ad8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9.7` - linux; amd64

```console
$ docker pull mysql@sha256:1954314de304d70fe85c67204d4676891ffa11dcd7caedaf5e9bc50b5f6be446
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.3 MB (270272026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e76f0f197fa13fca853e3541ba0d9e4be3b8665c477232a8820422a30c1be7a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 03 Nov 2026 00:22:58 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 03 Nov 2026 00:22:58 GMT
CMD ["/bin/bash"]
# Tue, 03 Nov 2026 00:25:50 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 03 Nov 2026 00:25:52 GMT
ENV GOSU_VERSION=1.19
# Tue, 03 Nov 2026 00:25:52 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 03 Nov 2026 00:26:28 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 03 Nov 2026 00:26:28 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 03 Nov 2026 00:26:28 GMT
ENV MYSQL_MAJOR=9.7
# Tue, 03 Nov 2026 00:26:28 GMT
ENV MYSQL_VERSION=9.7.4-1.el9
# Tue, 03 Nov 2026 00:26:28 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 03 Nov 2026 00:27:06 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 03 Nov 2026 00:27:07 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 03 Nov 2026 00:27:07 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Tue, 03 Nov 2026 00:27:55 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 03 Nov 2026 00:27:55 GMT
VOLUME [/var/lib/mysql]
# Tue, 03 Nov 2026 00:27:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 00:27:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 00:27:55 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 03 Nov 2026 00:27:55 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c3e99775cc39154c5a4687d6aeb43d4162a1fec417e872075b1e50567e8aed20`  
		Last Modified: Tue, 03 Nov 2026 00:23:09 GMT  
		Size: 47.2 MB (47186609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31f887fe53edc896755027291370c8d4292fa36a76ab381cb4a8dbedd285760b`  
		Last Modified: Tue, 03 Nov 2026 00:28:28 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3754af017f56acaa6d9f52ba0c3732a51849e67899cf54b0c484e57f9d33e534`  
		Last Modified: Tue, 03 Nov 2026 00:28:28 GMT  
		Size: 783.6 KB (783556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df33232b969ae6266d904f378a405485f0981cfcb2c1f5747ca97aaa574184ba`  
		Last Modified: Tue, 03 Nov 2026 00:28:29 GMT  
		Size: 6.2 MB (6188755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae3d2b29e16c7814e94bdc7cab48ae7db3bc9165001e4696487aee88931af3a6`  
		Last Modified: Tue, 03 Nov 2026 00:28:28 GMT  
		Size: 2.6 KB (2602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99b0f13fee4e4992d1ab6a39fc364e0066e72a49f9a5c1cf12c4c2950b50b1a0`  
		Last Modified: Tue, 03 Nov 2026 00:28:30 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb0ce55aac792358516b5786f52d10f4ec66d581d9f76b3a10dd9f019d215453`  
		Last Modified: Tue, 03 Nov 2026 00:28:32 GMT  
		Size: 57.2 MB (57180406 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:068a758fe1a8628cb213d1859870d044f9df9feb9d2793164413b2face986f1a`  
		Last Modified: Tue, 03 Nov 2026 00:28:30 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8a442f747a1b5934bdec12be13ac571d0f5e224d85c945b8fd9c76c7761dec0`  
		Last Modified: Tue, 03 Nov 2026 00:28:34 GMT  
		Size: 158.9 MB (158923340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e809fbffc5fed48386379275a0e7942464e9e07ab3f6d632c73b9b1fa8476f0`  
		Last Modified: Tue, 03 Nov 2026 00:28:31 GMT  
		Size: 5.2 KB (5221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7` - unknown; unknown

```console
$ docker pull mysql@sha256:eebfb1cf458be8570bcc6bf3ebc79438f9b8e61328acd63a60e6e4d8ed93a2e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16815699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7d7dac4c2c3cca28ba86e52d6b8b4a8bbe05a92299a3f7d178f0c23192d1420`

```dockerfile
```

-	Layers:
	-	`sha256:81510890552abb4f4058f7451c431347368cd918b661f825a5fbe0fb977ca92c`  
		Last Modified: Tue, 03 Nov 2026 00:28:29 GMT  
		Size: 16.8 MB (16781491 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0e0302ee39c42374ab0007a558010e1e7941a526df70138d12b412c5b55926b3`  
		Last Modified: Tue, 03 Nov 2026 00:28:28 GMT  
		Size: 34.2 KB (34208 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9.7` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:290970fdd7f34b74bbc9a627a7a1fdd307de27b79a01acc08e3676ebb5ca7054
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.7 MB (266655628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c58957ab847e69d222cbc0c2667d48452388950f0a93fd63dcc1aa2e153f8eeb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 03 Nov 2026 00:23:12 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 03 Nov 2026 00:23:12 GMT
CMD ["/bin/bash"]
# Tue, 03 Nov 2026 00:25:53 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 03 Nov 2026 00:25:55 GMT
ENV GOSU_VERSION=1.19
# Tue, 03 Nov 2026 00:25:55 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 03 Nov 2026 00:26:34 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 03 Nov 2026 00:26:36 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 03 Nov 2026 00:26:36 GMT
ENV MYSQL_MAJOR=9.7
# Tue, 03 Nov 2026 00:26:36 GMT
ENV MYSQL_VERSION=9.7.4-1.el9
# Tue, 03 Nov 2026 00:26:36 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 03 Nov 2026 00:27:19 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 03 Nov 2026 00:27:19 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 03 Nov 2026 00:27:19 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Tue, 03 Nov 2026 00:28:11 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 03 Nov 2026 00:28:11 GMT
VOLUME [/var/lib/mysql]
# Tue, 03 Nov 2026 00:28:11 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 00:28:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 00:28:11 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 03 Nov 2026 00:28:11 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:329828f10dd1b721024e28953696281394ad8b6f7621b47c0fb0d2d41e2838ab`  
		Last Modified: Tue, 03 Nov 2026 00:23:23 GMT  
		Size: 45.7 MB (45734040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:332288060cf8d2d286c35a3f5769b6047846bf282c035d37c66736d6a1e81eae`  
		Last Modified: Tue, 03 Nov 2026 00:28:31 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0faccbb0370077fce1f989b75cad45c0e51b05a29cff15bfe6898df4f9b6b790`  
		Last Modified: Tue, 03 Nov 2026 00:28:46 GMT  
		Size: 737.5 KB (737529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84d41246540728c61ef3be8edd4017e4003fe4c82b28ca2b6ba5b74b8cae29ab`  
		Last Modified: Tue, 03 Nov 2026 00:28:47 GMT  
		Size: 5.8 MB (5809051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee15add962978dfaf0409211c1099c20eb639bcb4054d2eb726810c140fb8e50`  
		Last Modified: Tue, 03 Nov 2026 00:28:47 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:053fec689bfc5ae452338d9173842d6dc3537ab25e860ed7aa32e5262669ec88`  
		Last Modified: Tue, 03 Nov 2026 00:28:48 GMT  
		Size: 331.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1eb2512f0309788c4a1f48a7161ec1b3ec0a852ff5b4774b161f6f469bad3455`  
		Last Modified: Tue, 03 Nov 2026 00:28:50 GMT  
		Size: 57.2 MB (57172471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cea84603e8902580fb1129da0e3d01583d7d6bbc6e81894b41c85d5cdcfa7539`  
		Last Modified: Tue, 03 Nov 2026 00:28:48 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d0bdba5eb82e4040cb0f6616be612c350fac55c01006af9511d74ddf6462888`  
		Last Modified: Tue, 03 Nov 2026 00:28:52 GMT  
		Size: 157.2 MB (157193166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b76013fbb918767d790431ba3d8849aaf945bad41678c49bed2e21ef28b10a97`  
		Last Modified: Tue, 03 Nov 2026 00:28:49 GMT  
		Size: 5.2 KB (5228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7` - unknown; unknown

```console
$ docker pull mysql@sha256:bc6ad7398aef25511b59466d9c2220fd018096b50749f61b1facf546c7cf0493
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16814440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad164e0054a8ba159836060d678a00a79d89a56a8070bf4016b86402095ec7bb`

```dockerfile
```

-	Layers:
	-	`sha256:71b7f8695596b20e275f5462aaae4e8fcdddf17237be4b62b78869faf96fce55`  
		Last Modified: Tue, 03 Nov 2026 00:28:47 GMT  
		Size: 16.8 MB (16779927 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:db5edd9c75b0b6a7c079b234f1802788ff516d2293a95d243ca43938450f7484`  
		Last Modified: Tue, 03 Nov 2026 00:28:46 GMT  
		Size: 34.5 KB (34513 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9.7-oracle`

```console
$ docker pull mysql@sha256:df90258da46f6e7ff8574ff84f17618aba0765cac749928299c69fd4e7cb8ad8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9.7-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:1954314de304d70fe85c67204d4676891ffa11dcd7caedaf5e9bc50b5f6be446
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.3 MB (270272026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e76f0f197fa13fca853e3541ba0d9e4be3b8665c477232a8820422a30c1be7a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 03 Nov 2026 00:22:58 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 03 Nov 2026 00:22:58 GMT
CMD ["/bin/bash"]
# Tue, 03 Nov 2026 00:25:50 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 03 Nov 2026 00:25:52 GMT
ENV GOSU_VERSION=1.19
# Tue, 03 Nov 2026 00:25:52 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 03 Nov 2026 00:26:28 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 03 Nov 2026 00:26:28 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 03 Nov 2026 00:26:28 GMT
ENV MYSQL_MAJOR=9.7
# Tue, 03 Nov 2026 00:26:28 GMT
ENV MYSQL_VERSION=9.7.4-1.el9
# Tue, 03 Nov 2026 00:26:28 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 03 Nov 2026 00:27:06 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 03 Nov 2026 00:27:07 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 03 Nov 2026 00:27:07 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Tue, 03 Nov 2026 00:27:55 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 03 Nov 2026 00:27:55 GMT
VOLUME [/var/lib/mysql]
# Tue, 03 Nov 2026 00:27:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 00:27:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 00:27:55 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 03 Nov 2026 00:27:55 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c3e99775cc39154c5a4687d6aeb43d4162a1fec417e872075b1e50567e8aed20`  
		Last Modified: Tue, 03 Nov 2026 00:23:09 GMT  
		Size: 47.2 MB (47186609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31f887fe53edc896755027291370c8d4292fa36a76ab381cb4a8dbedd285760b`  
		Last Modified: Tue, 03 Nov 2026 00:28:28 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3754af017f56acaa6d9f52ba0c3732a51849e67899cf54b0c484e57f9d33e534`  
		Last Modified: Tue, 03 Nov 2026 00:28:28 GMT  
		Size: 783.6 KB (783556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df33232b969ae6266d904f378a405485f0981cfcb2c1f5747ca97aaa574184ba`  
		Last Modified: Tue, 03 Nov 2026 00:28:29 GMT  
		Size: 6.2 MB (6188755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae3d2b29e16c7814e94bdc7cab48ae7db3bc9165001e4696487aee88931af3a6`  
		Last Modified: Tue, 03 Nov 2026 00:28:28 GMT  
		Size: 2.6 KB (2602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99b0f13fee4e4992d1ab6a39fc364e0066e72a49f9a5c1cf12c4c2950b50b1a0`  
		Last Modified: Tue, 03 Nov 2026 00:28:30 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb0ce55aac792358516b5786f52d10f4ec66d581d9f76b3a10dd9f019d215453`  
		Last Modified: Tue, 03 Nov 2026 00:28:32 GMT  
		Size: 57.2 MB (57180406 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:068a758fe1a8628cb213d1859870d044f9df9feb9d2793164413b2face986f1a`  
		Last Modified: Tue, 03 Nov 2026 00:28:30 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8a442f747a1b5934bdec12be13ac571d0f5e224d85c945b8fd9c76c7761dec0`  
		Last Modified: Tue, 03 Nov 2026 00:28:34 GMT  
		Size: 158.9 MB (158923340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e809fbffc5fed48386379275a0e7942464e9e07ab3f6d632c73b9b1fa8476f0`  
		Last Modified: Tue, 03 Nov 2026 00:28:31 GMT  
		Size: 5.2 KB (5221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:eebfb1cf458be8570bcc6bf3ebc79438f9b8e61328acd63a60e6e4d8ed93a2e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16815699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7d7dac4c2c3cca28ba86e52d6b8b4a8bbe05a92299a3f7d178f0c23192d1420`

```dockerfile
```

-	Layers:
	-	`sha256:81510890552abb4f4058f7451c431347368cd918b661f825a5fbe0fb977ca92c`  
		Last Modified: Tue, 03 Nov 2026 00:28:29 GMT  
		Size: 16.8 MB (16781491 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0e0302ee39c42374ab0007a558010e1e7941a526df70138d12b412c5b55926b3`  
		Last Modified: Tue, 03 Nov 2026 00:28:28 GMT  
		Size: 34.2 KB (34208 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9.7-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:290970fdd7f34b74bbc9a627a7a1fdd307de27b79a01acc08e3676ebb5ca7054
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.7 MB (266655628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c58957ab847e69d222cbc0c2667d48452388950f0a93fd63dcc1aa2e153f8eeb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 03 Nov 2026 00:23:12 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 03 Nov 2026 00:23:12 GMT
CMD ["/bin/bash"]
# Tue, 03 Nov 2026 00:25:53 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 03 Nov 2026 00:25:55 GMT
ENV GOSU_VERSION=1.19
# Tue, 03 Nov 2026 00:25:55 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 03 Nov 2026 00:26:34 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 03 Nov 2026 00:26:36 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 03 Nov 2026 00:26:36 GMT
ENV MYSQL_MAJOR=9.7
# Tue, 03 Nov 2026 00:26:36 GMT
ENV MYSQL_VERSION=9.7.4-1.el9
# Tue, 03 Nov 2026 00:26:36 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 03 Nov 2026 00:27:19 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 03 Nov 2026 00:27:19 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 03 Nov 2026 00:27:19 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Tue, 03 Nov 2026 00:28:11 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 03 Nov 2026 00:28:11 GMT
VOLUME [/var/lib/mysql]
# Tue, 03 Nov 2026 00:28:11 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 00:28:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 00:28:11 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 03 Nov 2026 00:28:11 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:329828f10dd1b721024e28953696281394ad8b6f7621b47c0fb0d2d41e2838ab`  
		Last Modified: Tue, 03 Nov 2026 00:23:23 GMT  
		Size: 45.7 MB (45734040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:332288060cf8d2d286c35a3f5769b6047846bf282c035d37c66736d6a1e81eae`  
		Last Modified: Tue, 03 Nov 2026 00:28:31 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0faccbb0370077fce1f989b75cad45c0e51b05a29cff15bfe6898df4f9b6b790`  
		Last Modified: Tue, 03 Nov 2026 00:28:46 GMT  
		Size: 737.5 KB (737529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84d41246540728c61ef3be8edd4017e4003fe4c82b28ca2b6ba5b74b8cae29ab`  
		Last Modified: Tue, 03 Nov 2026 00:28:47 GMT  
		Size: 5.8 MB (5809051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee15add962978dfaf0409211c1099c20eb639bcb4054d2eb726810c140fb8e50`  
		Last Modified: Tue, 03 Nov 2026 00:28:47 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:053fec689bfc5ae452338d9173842d6dc3537ab25e860ed7aa32e5262669ec88`  
		Last Modified: Tue, 03 Nov 2026 00:28:48 GMT  
		Size: 331.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1eb2512f0309788c4a1f48a7161ec1b3ec0a852ff5b4774b161f6f469bad3455`  
		Last Modified: Tue, 03 Nov 2026 00:28:50 GMT  
		Size: 57.2 MB (57172471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cea84603e8902580fb1129da0e3d01583d7d6bbc6e81894b41c85d5cdcfa7539`  
		Last Modified: Tue, 03 Nov 2026 00:28:48 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d0bdba5eb82e4040cb0f6616be612c350fac55c01006af9511d74ddf6462888`  
		Last Modified: Tue, 03 Nov 2026 00:28:52 GMT  
		Size: 157.2 MB (157193166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b76013fbb918767d790431ba3d8849aaf945bad41678c49bed2e21ef28b10a97`  
		Last Modified: Tue, 03 Nov 2026 00:28:49 GMT  
		Size: 5.2 KB (5228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:bc6ad7398aef25511b59466d9c2220fd018096b50749f61b1facf546c7cf0493
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16814440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad164e0054a8ba159836060d678a00a79d89a56a8070bf4016b86402095ec7bb`

```dockerfile
```

-	Layers:
	-	`sha256:71b7f8695596b20e275f5462aaae4e8fcdddf17237be4b62b78869faf96fce55`  
		Last Modified: Tue, 03 Nov 2026 00:28:47 GMT  
		Size: 16.8 MB (16779927 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:db5edd9c75b0b6a7c079b234f1802788ff516d2293a95d243ca43938450f7484`  
		Last Modified: Tue, 03 Nov 2026 00:28:46 GMT  
		Size: 34.5 KB (34513 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9.7-oraclelinux9`

```console
$ docker pull mysql@sha256:df90258da46f6e7ff8574ff84f17618aba0765cac749928299c69fd4e7cb8ad8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9.7-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:1954314de304d70fe85c67204d4676891ffa11dcd7caedaf5e9bc50b5f6be446
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.3 MB (270272026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e76f0f197fa13fca853e3541ba0d9e4be3b8665c477232a8820422a30c1be7a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 03 Nov 2026 00:22:58 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 03 Nov 2026 00:22:58 GMT
CMD ["/bin/bash"]
# Tue, 03 Nov 2026 00:25:50 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 03 Nov 2026 00:25:52 GMT
ENV GOSU_VERSION=1.19
# Tue, 03 Nov 2026 00:25:52 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 03 Nov 2026 00:26:28 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 03 Nov 2026 00:26:28 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 03 Nov 2026 00:26:28 GMT
ENV MYSQL_MAJOR=9.7
# Tue, 03 Nov 2026 00:26:28 GMT
ENV MYSQL_VERSION=9.7.4-1.el9
# Tue, 03 Nov 2026 00:26:28 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 03 Nov 2026 00:27:06 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 03 Nov 2026 00:27:07 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 03 Nov 2026 00:27:07 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Tue, 03 Nov 2026 00:27:55 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 03 Nov 2026 00:27:55 GMT
VOLUME [/var/lib/mysql]
# Tue, 03 Nov 2026 00:27:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 00:27:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 00:27:55 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 03 Nov 2026 00:27:55 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c3e99775cc39154c5a4687d6aeb43d4162a1fec417e872075b1e50567e8aed20`  
		Last Modified: Tue, 03 Nov 2026 00:23:09 GMT  
		Size: 47.2 MB (47186609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31f887fe53edc896755027291370c8d4292fa36a76ab381cb4a8dbedd285760b`  
		Last Modified: Tue, 03 Nov 2026 00:28:28 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3754af017f56acaa6d9f52ba0c3732a51849e67899cf54b0c484e57f9d33e534`  
		Last Modified: Tue, 03 Nov 2026 00:28:28 GMT  
		Size: 783.6 KB (783556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df33232b969ae6266d904f378a405485f0981cfcb2c1f5747ca97aaa574184ba`  
		Last Modified: Tue, 03 Nov 2026 00:28:29 GMT  
		Size: 6.2 MB (6188755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae3d2b29e16c7814e94bdc7cab48ae7db3bc9165001e4696487aee88931af3a6`  
		Last Modified: Tue, 03 Nov 2026 00:28:28 GMT  
		Size: 2.6 KB (2602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99b0f13fee4e4992d1ab6a39fc364e0066e72a49f9a5c1cf12c4c2950b50b1a0`  
		Last Modified: Tue, 03 Nov 2026 00:28:30 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb0ce55aac792358516b5786f52d10f4ec66d581d9f76b3a10dd9f019d215453`  
		Last Modified: Tue, 03 Nov 2026 00:28:32 GMT  
		Size: 57.2 MB (57180406 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:068a758fe1a8628cb213d1859870d044f9df9feb9d2793164413b2face986f1a`  
		Last Modified: Tue, 03 Nov 2026 00:28:30 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8a442f747a1b5934bdec12be13ac571d0f5e224d85c945b8fd9c76c7761dec0`  
		Last Modified: Tue, 03 Nov 2026 00:28:34 GMT  
		Size: 158.9 MB (158923340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e809fbffc5fed48386379275a0e7942464e9e07ab3f6d632c73b9b1fa8476f0`  
		Last Modified: Tue, 03 Nov 2026 00:28:31 GMT  
		Size: 5.2 KB (5221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:eebfb1cf458be8570bcc6bf3ebc79438f9b8e61328acd63a60e6e4d8ed93a2e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16815699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7d7dac4c2c3cca28ba86e52d6b8b4a8bbe05a92299a3f7d178f0c23192d1420`

```dockerfile
```

-	Layers:
	-	`sha256:81510890552abb4f4058f7451c431347368cd918b661f825a5fbe0fb977ca92c`  
		Last Modified: Tue, 03 Nov 2026 00:28:29 GMT  
		Size: 16.8 MB (16781491 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0e0302ee39c42374ab0007a558010e1e7941a526df70138d12b412c5b55926b3`  
		Last Modified: Tue, 03 Nov 2026 00:28:28 GMT  
		Size: 34.2 KB (34208 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9.7-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:290970fdd7f34b74bbc9a627a7a1fdd307de27b79a01acc08e3676ebb5ca7054
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.7 MB (266655628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c58957ab847e69d222cbc0c2667d48452388950f0a93fd63dcc1aa2e153f8eeb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 03 Nov 2026 00:23:12 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 03 Nov 2026 00:23:12 GMT
CMD ["/bin/bash"]
# Tue, 03 Nov 2026 00:25:53 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 03 Nov 2026 00:25:55 GMT
ENV GOSU_VERSION=1.19
# Tue, 03 Nov 2026 00:25:55 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 03 Nov 2026 00:26:34 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 03 Nov 2026 00:26:36 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 03 Nov 2026 00:26:36 GMT
ENV MYSQL_MAJOR=9.7
# Tue, 03 Nov 2026 00:26:36 GMT
ENV MYSQL_VERSION=9.7.4-1.el9
# Tue, 03 Nov 2026 00:26:36 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 03 Nov 2026 00:27:19 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 03 Nov 2026 00:27:19 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 03 Nov 2026 00:27:19 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Tue, 03 Nov 2026 00:28:11 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 03 Nov 2026 00:28:11 GMT
VOLUME [/var/lib/mysql]
# Tue, 03 Nov 2026 00:28:11 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 00:28:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 00:28:11 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 03 Nov 2026 00:28:11 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:329828f10dd1b721024e28953696281394ad8b6f7621b47c0fb0d2d41e2838ab`  
		Last Modified: Tue, 03 Nov 2026 00:23:23 GMT  
		Size: 45.7 MB (45734040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:332288060cf8d2d286c35a3f5769b6047846bf282c035d37c66736d6a1e81eae`  
		Last Modified: Tue, 03 Nov 2026 00:28:31 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0faccbb0370077fce1f989b75cad45c0e51b05a29cff15bfe6898df4f9b6b790`  
		Last Modified: Tue, 03 Nov 2026 00:28:46 GMT  
		Size: 737.5 KB (737529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84d41246540728c61ef3be8edd4017e4003fe4c82b28ca2b6ba5b74b8cae29ab`  
		Last Modified: Tue, 03 Nov 2026 00:28:47 GMT  
		Size: 5.8 MB (5809051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee15add962978dfaf0409211c1099c20eb639bcb4054d2eb726810c140fb8e50`  
		Last Modified: Tue, 03 Nov 2026 00:28:47 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:053fec689bfc5ae452338d9173842d6dc3537ab25e860ed7aa32e5262669ec88`  
		Last Modified: Tue, 03 Nov 2026 00:28:48 GMT  
		Size: 331.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1eb2512f0309788c4a1f48a7161ec1b3ec0a852ff5b4774b161f6f469bad3455`  
		Last Modified: Tue, 03 Nov 2026 00:28:50 GMT  
		Size: 57.2 MB (57172471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cea84603e8902580fb1129da0e3d01583d7d6bbc6e81894b41c85d5cdcfa7539`  
		Last Modified: Tue, 03 Nov 2026 00:28:48 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d0bdba5eb82e4040cb0f6616be612c350fac55c01006af9511d74ddf6462888`  
		Last Modified: Tue, 03 Nov 2026 00:28:52 GMT  
		Size: 157.2 MB (157193166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b76013fbb918767d790431ba3d8849aaf945bad41678c49bed2e21ef28b10a97`  
		Last Modified: Tue, 03 Nov 2026 00:28:49 GMT  
		Size: 5.2 KB (5228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:bc6ad7398aef25511b59466d9c2220fd018096b50749f61b1facf546c7cf0493
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16814440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad164e0054a8ba159836060d678a00a79d89a56a8070bf4016b86402095ec7bb`

```dockerfile
```

-	Layers:
	-	`sha256:71b7f8695596b20e275f5462aaae4e8fcdddf17237be4b62b78869faf96fce55`  
		Last Modified: Tue, 03 Nov 2026 00:28:47 GMT  
		Size: 16.8 MB (16779927 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:db5edd9c75b0b6a7c079b234f1802788ff516d2293a95d243ca43938450f7484`  
		Last Modified: Tue, 03 Nov 2026 00:28:46 GMT  
		Size: 34.5 KB (34513 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9.7.4`

```console
$ docker pull mysql@sha256:df90258da46f6e7ff8574ff84f17618aba0765cac749928299c69fd4e7cb8ad8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9.7.4` - linux; amd64

```console
$ docker pull mysql@sha256:1954314de304d70fe85c67204d4676891ffa11dcd7caedaf5e9bc50b5f6be446
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.3 MB (270272026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e76f0f197fa13fca853e3541ba0d9e4be3b8665c477232a8820422a30c1be7a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 03 Nov 2026 00:22:58 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 03 Nov 2026 00:22:58 GMT
CMD ["/bin/bash"]
# Tue, 03 Nov 2026 00:25:50 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 03 Nov 2026 00:25:52 GMT
ENV GOSU_VERSION=1.19
# Tue, 03 Nov 2026 00:25:52 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 03 Nov 2026 00:26:28 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 03 Nov 2026 00:26:28 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 03 Nov 2026 00:26:28 GMT
ENV MYSQL_MAJOR=9.7
# Tue, 03 Nov 2026 00:26:28 GMT
ENV MYSQL_VERSION=9.7.4-1.el9
# Tue, 03 Nov 2026 00:26:28 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 03 Nov 2026 00:27:06 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 03 Nov 2026 00:27:07 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 03 Nov 2026 00:27:07 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Tue, 03 Nov 2026 00:27:55 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 03 Nov 2026 00:27:55 GMT
VOLUME [/var/lib/mysql]
# Tue, 03 Nov 2026 00:27:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 00:27:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 00:27:55 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 03 Nov 2026 00:27:55 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c3e99775cc39154c5a4687d6aeb43d4162a1fec417e872075b1e50567e8aed20`  
		Last Modified: Tue, 03 Nov 2026 00:23:09 GMT  
		Size: 47.2 MB (47186609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31f887fe53edc896755027291370c8d4292fa36a76ab381cb4a8dbedd285760b`  
		Last Modified: Tue, 03 Nov 2026 00:28:28 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3754af017f56acaa6d9f52ba0c3732a51849e67899cf54b0c484e57f9d33e534`  
		Last Modified: Tue, 03 Nov 2026 00:28:28 GMT  
		Size: 783.6 KB (783556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df33232b969ae6266d904f378a405485f0981cfcb2c1f5747ca97aaa574184ba`  
		Last Modified: Tue, 03 Nov 2026 00:28:29 GMT  
		Size: 6.2 MB (6188755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae3d2b29e16c7814e94bdc7cab48ae7db3bc9165001e4696487aee88931af3a6`  
		Last Modified: Tue, 03 Nov 2026 00:28:28 GMT  
		Size: 2.6 KB (2602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99b0f13fee4e4992d1ab6a39fc364e0066e72a49f9a5c1cf12c4c2950b50b1a0`  
		Last Modified: Tue, 03 Nov 2026 00:28:30 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb0ce55aac792358516b5786f52d10f4ec66d581d9f76b3a10dd9f019d215453`  
		Last Modified: Tue, 03 Nov 2026 00:28:32 GMT  
		Size: 57.2 MB (57180406 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:068a758fe1a8628cb213d1859870d044f9df9feb9d2793164413b2face986f1a`  
		Last Modified: Tue, 03 Nov 2026 00:28:30 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8a442f747a1b5934bdec12be13ac571d0f5e224d85c945b8fd9c76c7761dec0`  
		Last Modified: Tue, 03 Nov 2026 00:28:34 GMT  
		Size: 158.9 MB (158923340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e809fbffc5fed48386379275a0e7942464e9e07ab3f6d632c73b9b1fa8476f0`  
		Last Modified: Tue, 03 Nov 2026 00:28:31 GMT  
		Size: 5.2 KB (5221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7.4` - unknown; unknown

```console
$ docker pull mysql@sha256:eebfb1cf458be8570bcc6bf3ebc79438f9b8e61328acd63a60e6e4d8ed93a2e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16815699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7d7dac4c2c3cca28ba86e52d6b8b4a8bbe05a92299a3f7d178f0c23192d1420`

```dockerfile
```

-	Layers:
	-	`sha256:81510890552abb4f4058f7451c431347368cd918b661f825a5fbe0fb977ca92c`  
		Last Modified: Tue, 03 Nov 2026 00:28:29 GMT  
		Size: 16.8 MB (16781491 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0e0302ee39c42374ab0007a558010e1e7941a526df70138d12b412c5b55926b3`  
		Last Modified: Tue, 03 Nov 2026 00:28:28 GMT  
		Size: 34.2 KB (34208 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9.7.4` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:290970fdd7f34b74bbc9a627a7a1fdd307de27b79a01acc08e3676ebb5ca7054
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.7 MB (266655628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c58957ab847e69d222cbc0c2667d48452388950f0a93fd63dcc1aa2e153f8eeb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 03 Nov 2026 00:23:12 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 03 Nov 2026 00:23:12 GMT
CMD ["/bin/bash"]
# Tue, 03 Nov 2026 00:25:53 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 03 Nov 2026 00:25:55 GMT
ENV GOSU_VERSION=1.19
# Tue, 03 Nov 2026 00:25:55 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 03 Nov 2026 00:26:34 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 03 Nov 2026 00:26:36 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 03 Nov 2026 00:26:36 GMT
ENV MYSQL_MAJOR=9.7
# Tue, 03 Nov 2026 00:26:36 GMT
ENV MYSQL_VERSION=9.7.4-1.el9
# Tue, 03 Nov 2026 00:26:36 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 03 Nov 2026 00:27:19 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 03 Nov 2026 00:27:19 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 03 Nov 2026 00:27:19 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Tue, 03 Nov 2026 00:28:11 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 03 Nov 2026 00:28:11 GMT
VOLUME [/var/lib/mysql]
# Tue, 03 Nov 2026 00:28:11 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 00:28:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 00:28:11 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 03 Nov 2026 00:28:11 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:329828f10dd1b721024e28953696281394ad8b6f7621b47c0fb0d2d41e2838ab`  
		Last Modified: Tue, 03 Nov 2026 00:23:23 GMT  
		Size: 45.7 MB (45734040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:332288060cf8d2d286c35a3f5769b6047846bf282c035d37c66736d6a1e81eae`  
		Last Modified: Tue, 03 Nov 2026 00:28:31 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0faccbb0370077fce1f989b75cad45c0e51b05a29cff15bfe6898df4f9b6b790`  
		Last Modified: Tue, 03 Nov 2026 00:28:46 GMT  
		Size: 737.5 KB (737529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84d41246540728c61ef3be8edd4017e4003fe4c82b28ca2b6ba5b74b8cae29ab`  
		Last Modified: Tue, 03 Nov 2026 00:28:47 GMT  
		Size: 5.8 MB (5809051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee15add962978dfaf0409211c1099c20eb639bcb4054d2eb726810c140fb8e50`  
		Last Modified: Tue, 03 Nov 2026 00:28:47 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:053fec689bfc5ae452338d9173842d6dc3537ab25e860ed7aa32e5262669ec88`  
		Last Modified: Tue, 03 Nov 2026 00:28:48 GMT  
		Size: 331.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1eb2512f0309788c4a1f48a7161ec1b3ec0a852ff5b4774b161f6f469bad3455`  
		Last Modified: Tue, 03 Nov 2026 00:28:50 GMT  
		Size: 57.2 MB (57172471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cea84603e8902580fb1129da0e3d01583d7d6bbc6e81894b41c85d5cdcfa7539`  
		Last Modified: Tue, 03 Nov 2026 00:28:48 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d0bdba5eb82e4040cb0f6616be612c350fac55c01006af9511d74ddf6462888`  
		Last Modified: Tue, 03 Nov 2026 00:28:52 GMT  
		Size: 157.2 MB (157193166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b76013fbb918767d790431ba3d8849aaf945bad41678c49bed2e21ef28b10a97`  
		Last Modified: Tue, 03 Nov 2026 00:28:49 GMT  
		Size: 5.2 KB (5228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7.4` - unknown; unknown

```console
$ docker pull mysql@sha256:bc6ad7398aef25511b59466d9c2220fd018096b50749f61b1facf546c7cf0493
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16814440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad164e0054a8ba159836060d678a00a79d89a56a8070bf4016b86402095ec7bb`

```dockerfile
```

-	Layers:
	-	`sha256:71b7f8695596b20e275f5462aaae4e8fcdddf17237be4b62b78869faf96fce55`  
		Last Modified: Tue, 03 Nov 2026 00:28:47 GMT  
		Size: 16.8 MB (16779927 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:db5edd9c75b0b6a7c079b234f1802788ff516d2293a95d243ca43938450f7484`  
		Last Modified: Tue, 03 Nov 2026 00:28:46 GMT  
		Size: 34.5 KB (34513 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9.7.4-oracle`

```console
$ docker pull mysql@sha256:df90258da46f6e7ff8574ff84f17618aba0765cac749928299c69fd4e7cb8ad8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9.7.4-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:1954314de304d70fe85c67204d4676891ffa11dcd7caedaf5e9bc50b5f6be446
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.3 MB (270272026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e76f0f197fa13fca853e3541ba0d9e4be3b8665c477232a8820422a30c1be7a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 03 Nov 2026 00:22:58 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 03 Nov 2026 00:22:58 GMT
CMD ["/bin/bash"]
# Tue, 03 Nov 2026 00:25:50 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 03 Nov 2026 00:25:52 GMT
ENV GOSU_VERSION=1.19
# Tue, 03 Nov 2026 00:25:52 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 03 Nov 2026 00:26:28 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 03 Nov 2026 00:26:28 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 03 Nov 2026 00:26:28 GMT
ENV MYSQL_MAJOR=9.7
# Tue, 03 Nov 2026 00:26:28 GMT
ENV MYSQL_VERSION=9.7.4-1.el9
# Tue, 03 Nov 2026 00:26:28 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 03 Nov 2026 00:27:06 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 03 Nov 2026 00:27:07 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 03 Nov 2026 00:27:07 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Tue, 03 Nov 2026 00:27:55 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 03 Nov 2026 00:27:55 GMT
VOLUME [/var/lib/mysql]
# Tue, 03 Nov 2026 00:27:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 00:27:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 00:27:55 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 03 Nov 2026 00:27:55 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c3e99775cc39154c5a4687d6aeb43d4162a1fec417e872075b1e50567e8aed20`  
		Last Modified: Tue, 03 Nov 2026 00:23:09 GMT  
		Size: 47.2 MB (47186609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31f887fe53edc896755027291370c8d4292fa36a76ab381cb4a8dbedd285760b`  
		Last Modified: Tue, 03 Nov 2026 00:28:28 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3754af017f56acaa6d9f52ba0c3732a51849e67899cf54b0c484e57f9d33e534`  
		Last Modified: Tue, 03 Nov 2026 00:28:28 GMT  
		Size: 783.6 KB (783556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df33232b969ae6266d904f378a405485f0981cfcb2c1f5747ca97aaa574184ba`  
		Last Modified: Tue, 03 Nov 2026 00:28:29 GMT  
		Size: 6.2 MB (6188755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae3d2b29e16c7814e94bdc7cab48ae7db3bc9165001e4696487aee88931af3a6`  
		Last Modified: Tue, 03 Nov 2026 00:28:28 GMT  
		Size: 2.6 KB (2602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99b0f13fee4e4992d1ab6a39fc364e0066e72a49f9a5c1cf12c4c2950b50b1a0`  
		Last Modified: Tue, 03 Nov 2026 00:28:30 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb0ce55aac792358516b5786f52d10f4ec66d581d9f76b3a10dd9f019d215453`  
		Last Modified: Tue, 03 Nov 2026 00:28:32 GMT  
		Size: 57.2 MB (57180406 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:068a758fe1a8628cb213d1859870d044f9df9feb9d2793164413b2face986f1a`  
		Last Modified: Tue, 03 Nov 2026 00:28:30 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8a442f747a1b5934bdec12be13ac571d0f5e224d85c945b8fd9c76c7761dec0`  
		Last Modified: Tue, 03 Nov 2026 00:28:34 GMT  
		Size: 158.9 MB (158923340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e809fbffc5fed48386379275a0e7942464e9e07ab3f6d632c73b9b1fa8476f0`  
		Last Modified: Tue, 03 Nov 2026 00:28:31 GMT  
		Size: 5.2 KB (5221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7.4-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:eebfb1cf458be8570bcc6bf3ebc79438f9b8e61328acd63a60e6e4d8ed93a2e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16815699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7d7dac4c2c3cca28ba86e52d6b8b4a8bbe05a92299a3f7d178f0c23192d1420`

```dockerfile
```

-	Layers:
	-	`sha256:81510890552abb4f4058f7451c431347368cd918b661f825a5fbe0fb977ca92c`  
		Last Modified: Tue, 03 Nov 2026 00:28:29 GMT  
		Size: 16.8 MB (16781491 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0e0302ee39c42374ab0007a558010e1e7941a526df70138d12b412c5b55926b3`  
		Last Modified: Tue, 03 Nov 2026 00:28:28 GMT  
		Size: 34.2 KB (34208 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9.7.4-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:290970fdd7f34b74bbc9a627a7a1fdd307de27b79a01acc08e3676ebb5ca7054
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.7 MB (266655628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c58957ab847e69d222cbc0c2667d48452388950f0a93fd63dcc1aa2e153f8eeb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 03 Nov 2026 00:23:12 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 03 Nov 2026 00:23:12 GMT
CMD ["/bin/bash"]
# Tue, 03 Nov 2026 00:25:53 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 03 Nov 2026 00:25:55 GMT
ENV GOSU_VERSION=1.19
# Tue, 03 Nov 2026 00:25:55 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 03 Nov 2026 00:26:34 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 03 Nov 2026 00:26:36 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 03 Nov 2026 00:26:36 GMT
ENV MYSQL_MAJOR=9.7
# Tue, 03 Nov 2026 00:26:36 GMT
ENV MYSQL_VERSION=9.7.4-1.el9
# Tue, 03 Nov 2026 00:26:36 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 03 Nov 2026 00:27:19 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 03 Nov 2026 00:27:19 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 03 Nov 2026 00:27:19 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Tue, 03 Nov 2026 00:28:11 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 03 Nov 2026 00:28:11 GMT
VOLUME [/var/lib/mysql]
# Tue, 03 Nov 2026 00:28:11 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 00:28:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 00:28:11 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 03 Nov 2026 00:28:11 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:329828f10dd1b721024e28953696281394ad8b6f7621b47c0fb0d2d41e2838ab`  
		Last Modified: Tue, 03 Nov 2026 00:23:23 GMT  
		Size: 45.7 MB (45734040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:332288060cf8d2d286c35a3f5769b6047846bf282c035d37c66736d6a1e81eae`  
		Last Modified: Tue, 03 Nov 2026 00:28:31 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0faccbb0370077fce1f989b75cad45c0e51b05a29cff15bfe6898df4f9b6b790`  
		Last Modified: Tue, 03 Nov 2026 00:28:46 GMT  
		Size: 737.5 KB (737529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84d41246540728c61ef3be8edd4017e4003fe4c82b28ca2b6ba5b74b8cae29ab`  
		Last Modified: Tue, 03 Nov 2026 00:28:47 GMT  
		Size: 5.8 MB (5809051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee15add962978dfaf0409211c1099c20eb639bcb4054d2eb726810c140fb8e50`  
		Last Modified: Tue, 03 Nov 2026 00:28:47 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:053fec689bfc5ae452338d9173842d6dc3537ab25e860ed7aa32e5262669ec88`  
		Last Modified: Tue, 03 Nov 2026 00:28:48 GMT  
		Size: 331.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1eb2512f0309788c4a1f48a7161ec1b3ec0a852ff5b4774b161f6f469bad3455`  
		Last Modified: Tue, 03 Nov 2026 00:28:50 GMT  
		Size: 57.2 MB (57172471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cea84603e8902580fb1129da0e3d01583d7d6bbc6e81894b41c85d5cdcfa7539`  
		Last Modified: Tue, 03 Nov 2026 00:28:48 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d0bdba5eb82e4040cb0f6616be612c350fac55c01006af9511d74ddf6462888`  
		Last Modified: Tue, 03 Nov 2026 00:28:52 GMT  
		Size: 157.2 MB (157193166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b76013fbb918767d790431ba3d8849aaf945bad41678c49bed2e21ef28b10a97`  
		Last Modified: Tue, 03 Nov 2026 00:28:49 GMT  
		Size: 5.2 KB (5228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7.4-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:bc6ad7398aef25511b59466d9c2220fd018096b50749f61b1facf546c7cf0493
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16814440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad164e0054a8ba159836060d678a00a79d89a56a8070bf4016b86402095ec7bb`

```dockerfile
```

-	Layers:
	-	`sha256:71b7f8695596b20e275f5462aaae4e8fcdddf17237be4b62b78869faf96fce55`  
		Last Modified: Tue, 03 Nov 2026 00:28:47 GMT  
		Size: 16.8 MB (16779927 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:db5edd9c75b0b6a7c079b234f1802788ff516d2293a95d243ca43938450f7484`  
		Last Modified: Tue, 03 Nov 2026 00:28:46 GMT  
		Size: 34.5 KB (34513 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9.7.4-oraclelinux9`

```console
$ docker pull mysql@sha256:df90258da46f6e7ff8574ff84f17618aba0765cac749928299c69fd4e7cb8ad8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9.7.4-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:1954314de304d70fe85c67204d4676891ffa11dcd7caedaf5e9bc50b5f6be446
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.3 MB (270272026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e76f0f197fa13fca853e3541ba0d9e4be3b8665c477232a8820422a30c1be7a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 03 Nov 2026 00:22:58 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 03 Nov 2026 00:22:58 GMT
CMD ["/bin/bash"]
# Tue, 03 Nov 2026 00:25:50 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 03 Nov 2026 00:25:52 GMT
ENV GOSU_VERSION=1.19
# Tue, 03 Nov 2026 00:25:52 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 03 Nov 2026 00:26:28 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 03 Nov 2026 00:26:28 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 03 Nov 2026 00:26:28 GMT
ENV MYSQL_MAJOR=9.7
# Tue, 03 Nov 2026 00:26:28 GMT
ENV MYSQL_VERSION=9.7.4-1.el9
# Tue, 03 Nov 2026 00:26:28 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 03 Nov 2026 00:27:06 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 03 Nov 2026 00:27:07 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 03 Nov 2026 00:27:07 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Tue, 03 Nov 2026 00:27:55 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 03 Nov 2026 00:27:55 GMT
VOLUME [/var/lib/mysql]
# Tue, 03 Nov 2026 00:27:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 00:27:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 00:27:55 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 03 Nov 2026 00:27:55 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c3e99775cc39154c5a4687d6aeb43d4162a1fec417e872075b1e50567e8aed20`  
		Last Modified: Tue, 03 Nov 2026 00:23:09 GMT  
		Size: 47.2 MB (47186609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31f887fe53edc896755027291370c8d4292fa36a76ab381cb4a8dbedd285760b`  
		Last Modified: Tue, 03 Nov 2026 00:28:28 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3754af017f56acaa6d9f52ba0c3732a51849e67899cf54b0c484e57f9d33e534`  
		Last Modified: Tue, 03 Nov 2026 00:28:28 GMT  
		Size: 783.6 KB (783556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df33232b969ae6266d904f378a405485f0981cfcb2c1f5747ca97aaa574184ba`  
		Last Modified: Tue, 03 Nov 2026 00:28:29 GMT  
		Size: 6.2 MB (6188755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae3d2b29e16c7814e94bdc7cab48ae7db3bc9165001e4696487aee88931af3a6`  
		Last Modified: Tue, 03 Nov 2026 00:28:28 GMT  
		Size: 2.6 KB (2602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99b0f13fee4e4992d1ab6a39fc364e0066e72a49f9a5c1cf12c4c2950b50b1a0`  
		Last Modified: Tue, 03 Nov 2026 00:28:30 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb0ce55aac792358516b5786f52d10f4ec66d581d9f76b3a10dd9f019d215453`  
		Last Modified: Tue, 03 Nov 2026 00:28:32 GMT  
		Size: 57.2 MB (57180406 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:068a758fe1a8628cb213d1859870d044f9df9feb9d2793164413b2face986f1a`  
		Last Modified: Tue, 03 Nov 2026 00:28:30 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8a442f747a1b5934bdec12be13ac571d0f5e224d85c945b8fd9c76c7761dec0`  
		Last Modified: Tue, 03 Nov 2026 00:28:34 GMT  
		Size: 158.9 MB (158923340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e809fbffc5fed48386379275a0e7942464e9e07ab3f6d632c73b9b1fa8476f0`  
		Last Modified: Tue, 03 Nov 2026 00:28:31 GMT  
		Size: 5.2 KB (5221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7.4-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:eebfb1cf458be8570bcc6bf3ebc79438f9b8e61328acd63a60e6e4d8ed93a2e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16815699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7d7dac4c2c3cca28ba86e52d6b8b4a8bbe05a92299a3f7d178f0c23192d1420`

```dockerfile
```

-	Layers:
	-	`sha256:81510890552abb4f4058f7451c431347368cd918b661f825a5fbe0fb977ca92c`  
		Last Modified: Tue, 03 Nov 2026 00:28:29 GMT  
		Size: 16.8 MB (16781491 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0e0302ee39c42374ab0007a558010e1e7941a526df70138d12b412c5b55926b3`  
		Last Modified: Tue, 03 Nov 2026 00:28:28 GMT  
		Size: 34.2 KB (34208 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9.7.4-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:290970fdd7f34b74bbc9a627a7a1fdd307de27b79a01acc08e3676ebb5ca7054
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.7 MB (266655628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c58957ab847e69d222cbc0c2667d48452388950f0a93fd63dcc1aa2e153f8eeb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 03 Nov 2026 00:23:12 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 03 Nov 2026 00:23:12 GMT
CMD ["/bin/bash"]
# Tue, 03 Nov 2026 00:25:53 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 03 Nov 2026 00:25:55 GMT
ENV GOSU_VERSION=1.19
# Tue, 03 Nov 2026 00:25:55 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 03 Nov 2026 00:26:34 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 03 Nov 2026 00:26:36 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 03 Nov 2026 00:26:36 GMT
ENV MYSQL_MAJOR=9.7
# Tue, 03 Nov 2026 00:26:36 GMT
ENV MYSQL_VERSION=9.7.4-1.el9
# Tue, 03 Nov 2026 00:26:36 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 03 Nov 2026 00:27:19 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 03 Nov 2026 00:27:19 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 03 Nov 2026 00:27:19 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Tue, 03 Nov 2026 00:28:11 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 03 Nov 2026 00:28:11 GMT
VOLUME [/var/lib/mysql]
# Tue, 03 Nov 2026 00:28:11 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 00:28:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 00:28:11 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 03 Nov 2026 00:28:11 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:329828f10dd1b721024e28953696281394ad8b6f7621b47c0fb0d2d41e2838ab`  
		Last Modified: Tue, 03 Nov 2026 00:23:23 GMT  
		Size: 45.7 MB (45734040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:332288060cf8d2d286c35a3f5769b6047846bf282c035d37c66736d6a1e81eae`  
		Last Modified: Tue, 03 Nov 2026 00:28:31 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0faccbb0370077fce1f989b75cad45c0e51b05a29cff15bfe6898df4f9b6b790`  
		Last Modified: Tue, 03 Nov 2026 00:28:46 GMT  
		Size: 737.5 KB (737529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84d41246540728c61ef3be8edd4017e4003fe4c82b28ca2b6ba5b74b8cae29ab`  
		Last Modified: Tue, 03 Nov 2026 00:28:47 GMT  
		Size: 5.8 MB (5809051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee15add962978dfaf0409211c1099c20eb639bcb4054d2eb726810c140fb8e50`  
		Last Modified: Tue, 03 Nov 2026 00:28:47 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:053fec689bfc5ae452338d9173842d6dc3537ab25e860ed7aa32e5262669ec88`  
		Last Modified: Tue, 03 Nov 2026 00:28:48 GMT  
		Size: 331.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1eb2512f0309788c4a1f48a7161ec1b3ec0a852ff5b4774b161f6f469bad3455`  
		Last Modified: Tue, 03 Nov 2026 00:28:50 GMT  
		Size: 57.2 MB (57172471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cea84603e8902580fb1129da0e3d01583d7d6bbc6e81894b41c85d5cdcfa7539`  
		Last Modified: Tue, 03 Nov 2026 00:28:48 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d0bdba5eb82e4040cb0f6616be612c350fac55c01006af9511d74ddf6462888`  
		Last Modified: Tue, 03 Nov 2026 00:28:52 GMT  
		Size: 157.2 MB (157193166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b76013fbb918767d790431ba3d8849aaf945bad41678c49bed2e21ef28b10a97`  
		Last Modified: Tue, 03 Nov 2026 00:28:49 GMT  
		Size: 5.2 KB (5228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7.4-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:bc6ad7398aef25511b59466d9c2220fd018096b50749f61b1facf546c7cf0493
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16814440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad164e0054a8ba159836060d678a00a79d89a56a8070bf4016b86402095ec7bb`

```dockerfile
```

-	Layers:
	-	`sha256:71b7f8695596b20e275f5462aaae4e8fcdddf17237be4b62b78869faf96fce55`  
		Last Modified: Tue, 03 Nov 2026 00:28:47 GMT  
		Size: 16.8 MB (16779927 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:db5edd9c75b0b6a7c079b234f1802788ff516d2293a95d243ca43938450f7484`  
		Last Modified: Tue, 03 Nov 2026 00:28:46 GMT  
		Size: 34.5 KB (34513 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:innovation`

```console
$ docker pull mysql@sha256:3819b2b23835c4a73c8b022fafc33c8095c0f81c929a8b7a84613d2fba6c52f5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:innovation` - linux; amd64

```console
$ docker pull mysql@sha256:b401608b19ffafbc6aa3d84523acf783078c8cf01e0f7ee1dc3ca75a5701a999
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.0 MB (299036505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88276261eddbb021ff76b1dfdc9c7ad37b9b053449e39f50f7d1aa594afe4db2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 03 Nov 2026 00:22:58 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 03 Nov 2026 00:22:58 GMT
CMD ["/bin/bash"]
# Tue, 03 Nov 2026 00:25:53 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 03 Nov 2026 00:25:54 GMT
ENV GOSU_VERSION=1.19
# Tue, 03 Nov 2026 00:25:54 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 03 Nov 2026 00:26:32 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 03 Nov 2026 00:26:33 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 03 Nov 2026 00:26:33 GMT
ENV MYSQL_MAJOR=innovation
# Tue, 03 Nov 2026 00:26:33 GMT
ENV MYSQL_VERSION=26.10.0-1.el9
# Tue, 03 Nov 2026 00:26:33 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 03 Nov 2026 00:27:14 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 03 Nov 2026 00:27:14 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 03 Nov 2026 00:27:14 GMT
ENV MYSQL_SHELL_VERSION=26.10.0-1.el9
# Tue, 03 Nov 2026 00:28:04 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 03 Nov 2026 00:28:04 GMT
VOLUME [/var/lib/mysql]
# Tue, 03 Nov 2026 00:28:04 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 00:28:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 00:28:04 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 03 Nov 2026 00:28:04 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c3e99775cc39154c5a4687d6aeb43d4162a1fec417e872075b1e50567e8aed20`  
		Last Modified: Tue, 03 Nov 2026 00:23:09 GMT  
		Size: 47.2 MB (47186609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3594eab1df5f3f34fecddcdf0c3b57323dbea7bf7696d49547df71dbbaa31ea9`  
		Last Modified: Tue, 03 Nov 2026 00:28:30 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37fa2793f15fbe8afa9ca05c1799457534e9c377ca7501db597c62de8e2ae1bd`  
		Last Modified: Tue, 03 Nov 2026 00:28:31 GMT  
		Size: 783.6 KB (783554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83d647c7d3d0c4c4e237e633333c4c4408acfc01909bde6215589b87992a92b2`  
		Last Modified: Tue, 03 Nov 2026 00:28:30 GMT  
		Size: 6.2 MB (6188738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:335c0ba6129f79d6d295e152c017595d93229b0993958b12a9a83898eafcd8ef`  
		Last Modified: Tue, 03 Nov 2026 00:28:30 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:781b429d34a1519677ef274fc0ece117d411a7b21f67415dfe9538b17766a72b`  
		Last Modified: Tue, 03 Nov 2026 00:28:32 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:811578fcdc4f6070e1ac5cec15297b4960ae6873b1a6b76888ee2b37b8d26db9`  
		Last Modified: Tue, 03 Nov 2026 00:28:34 GMT  
		Size: 63.8 MB (63786463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ba4d3770669dba1cb86645b0931ce4e83759c82fa5fca496acf8d04622ff8c0`  
		Last Modified: Tue, 03 Nov 2026 00:28:32 GMT  
		Size: 324.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:969334aca9fafa733eb549898737409a2db9694cd37a30b8ca72f4aade6c8aea`  
		Last Modified: Tue, 03 Nov 2026 00:28:36 GMT  
		Size: 181.1 MB (181081770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63751bcf6dadc3c3ca6ae50b6aeff9788a851cf21304ac0f8091c0e000260179`  
		Last Modified: Tue, 03 Nov 2026 00:28:33 GMT  
		Size: 5.2 KB (5217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:innovation` - unknown; unknown

```console
$ docker pull mysql@sha256:007da30fd0dbc6ab8866362eb9165cf6e7b5cec6825faf468d598ffdf47dc154
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5334093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba0a7e5b39bb058c7786003668fae2dd36b9b34a97441ceabf3cb4d35f03200d`

```dockerfile
```

-	Layers:
	-	`sha256:891cff0835d57a9e95db5e8eb70df4bcd95b537443360684fad2abb9e8335a57`  
		Last Modified: Tue, 03 Nov 2026 00:28:30 GMT  
		Size: 5.3 MB (5298774 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:24df5f010ba63cf921150dc8c90e0de612b65c675e20fea6e106fffcb08b9596`  
		Last Modified: Tue, 03 Nov 2026 00:28:30 GMT  
		Size: 35.3 KB (35319 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:innovation` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:0f2cbd36da41403ddf93b08f7682f95501fd2e22fbd4b728a0e42962d271f529
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.5 MB (295462504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aba3131d9f74d1a8e505de86aa0697e3ff59e76d24580359723d29ea4990a507`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 03 Nov 2026 00:23:12 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 03 Nov 2026 00:23:12 GMT
CMD ["/bin/bash"]
# Tue, 03 Nov 2026 00:26:00 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 03 Nov 2026 00:26:02 GMT
ENV GOSU_VERSION=1.19
# Tue, 03 Nov 2026 00:26:02 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 03 Nov 2026 00:26:41 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 03 Nov 2026 00:26:42 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 03 Nov 2026 00:26:42 GMT
ENV MYSQL_MAJOR=innovation
# Tue, 03 Nov 2026 00:26:42 GMT
ENV MYSQL_VERSION=26.10.0-1.el9
# Tue, 03 Nov 2026 00:26:42 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 03 Nov 2026 00:27:24 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 03 Nov 2026 00:27:24 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 03 Nov 2026 00:27:24 GMT
ENV MYSQL_SHELL_VERSION=26.10.0-1.el9
# Tue, 03 Nov 2026 00:28:16 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 03 Nov 2026 00:28:16 GMT
VOLUME [/var/lib/mysql]
# Tue, 03 Nov 2026 00:28:16 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 00:28:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 00:28:16 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 03 Nov 2026 00:28:16 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:329828f10dd1b721024e28953696281394ad8b6f7621b47c0fb0d2d41e2838ab`  
		Last Modified: Tue, 03 Nov 2026 00:23:23 GMT  
		Size: 45.7 MB (45734040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abb8b963bc245ef2e7d160c6e5ef6e71bca1b0d20b36a48ba155dec212875b97`  
		Last Modified: Tue, 03 Nov 2026 00:28:44 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f360cfcd0c6859691383f9ccef43f51c983b9dbfe96263264b7c376a22ac8ca`  
		Last Modified: Tue, 03 Nov 2026 00:28:43 GMT  
		Size: 737.5 KB (737531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f589dac8ec1fcba3211e9da63231e0ddf87ae39921f10f12f31f24b27fa1473e`  
		Last Modified: Tue, 03 Nov 2026 00:28:44 GMT  
		Size: 5.8 MB (5809137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ac49b392b7845c771c3f701766cdb34b3b945439231c710d9996c7793897366`  
		Last Modified: Tue, 03 Nov 2026 00:28:44 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:111940a3af7aad0208eb3eca6716db74d7e12ad9325efcd8d97fd634c3a787c7`  
		Last Modified: Tue, 03 Nov 2026 00:28:45 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f66cb2d4f38de30497f688d95516e6c73624c74a91bbe718925a18ff2822f3dc`  
		Last Modified: Tue, 03 Nov 2026 00:28:47 GMT  
		Size: 63.8 MB (63823011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01ab56bed6cffb7b414a39f35c2447dcd55e5aaa04aeabc16e9b22e013d46760`  
		Last Modified: Tue, 03 Nov 2026 00:28:45 GMT  
		Size: 324.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b44aa14e230fbb918ff2d6a1c8131447dcdf242f29d1a24b6d153129f91ec328`  
		Last Modified: Tue, 03 Nov 2026 00:28:49 GMT  
		Size: 179.3 MB (179349404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59a4b8888e49d69b7ae0b9e4ba91161cfd4eb35a98c3a14e8f52085233448758`  
		Last Modified: Tue, 03 Nov 2026 00:28:46 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:innovation` - unknown; unknown

```console
$ docker pull mysql@sha256:597a605bfb2209bb1ccad1707c70fb1a59fcb161120f781333646d05ae193467
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5332907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30601a021da51824f13c963dc30a9429f87d36c9fba4f1a6a8b944eb6894c0fd`

```dockerfile
```

-	Layers:
	-	`sha256:1b185e2dd51057c56062cd713e3df44f624e8a5d512a214dbc1ae42d0bc75646`  
		Last Modified: Tue, 03 Nov 2026 00:28:44 GMT  
		Size: 5.3 MB (5297247 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5e5100be39aea4a58c6988e15bffe2b269e64355ddca478523fa2969926694f5`  
		Last Modified: Tue, 03 Nov 2026 00:28:44 GMT  
		Size: 35.7 KB (35660 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:innovation-oracle`

```console
$ docker pull mysql@sha256:3819b2b23835c4a73c8b022fafc33c8095c0f81c929a8b7a84613d2fba6c52f5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:innovation-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:b401608b19ffafbc6aa3d84523acf783078c8cf01e0f7ee1dc3ca75a5701a999
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.0 MB (299036505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88276261eddbb021ff76b1dfdc9c7ad37b9b053449e39f50f7d1aa594afe4db2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 03 Nov 2026 00:22:58 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 03 Nov 2026 00:22:58 GMT
CMD ["/bin/bash"]
# Tue, 03 Nov 2026 00:25:53 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 03 Nov 2026 00:25:54 GMT
ENV GOSU_VERSION=1.19
# Tue, 03 Nov 2026 00:25:54 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 03 Nov 2026 00:26:32 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 03 Nov 2026 00:26:33 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 03 Nov 2026 00:26:33 GMT
ENV MYSQL_MAJOR=innovation
# Tue, 03 Nov 2026 00:26:33 GMT
ENV MYSQL_VERSION=26.10.0-1.el9
# Tue, 03 Nov 2026 00:26:33 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 03 Nov 2026 00:27:14 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 03 Nov 2026 00:27:14 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 03 Nov 2026 00:27:14 GMT
ENV MYSQL_SHELL_VERSION=26.10.0-1.el9
# Tue, 03 Nov 2026 00:28:04 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 03 Nov 2026 00:28:04 GMT
VOLUME [/var/lib/mysql]
# Tue, 03 Nov 2026 00:28:04 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 00:28:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 00:28:04 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 03 Nov 2026 00:28:04 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c3e99775cc39154c5a4687d6aeb43d4162a1fec417e872075b1e50567e8aed20`  
		Last Modified: Tue, 03 Nov 2026 00:23:09 GMT  
		Size: 47.2 MB (47186609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3594eab1df5f3f34fecddcdf0c3b57323dbea7bf7696d49547df71dbbaa31ea9`  
		Last Modified: Tue, 03 Nov 2026 00:28:30 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37fa2793f15fbe8afa9ca05c1799457534e9c377ca7501db597c62de8e2ae1bd`  
		Last Modified: Tue, 03 Nov 2026 00:28:31 GMT  
		Size: 783.6 KB (783554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83d647c7d3d0c4c4e237e633333c4c4408acfc01909bde6215589b87992a92b2`  
		Last Modified: Tue, 03 Nov 2026 00:28:30 GMT  
		Size: 6.2 MB (6188738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:335c0ba6129f79d6d295e152c017595d93229b0993958b12a9a83898eafcd8ef`  
		Last Modified: Tue, 03 Nov 2026 00:28:30 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:781b429d34a1519677ef274fc0ece117d411a7b21f67415dfe9538b17766a72b`  
		Last Modified: Tue, 03 Nov 2026 00:28:32 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:811578fcdc4f6070e1ac5cec15297b4960ae6873b1a6b76888ee2b37b8d26db9`  
		Last Modified: Tue, 03 Nov 2026 00:28:34 GMT  
		Size: 63.8 MB (63786463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ba4d3770669dba1cb86645b0931ce4e83759c82fa5fca496acf8d04622ff8c0`  
		Last Modified: Tue, 03 Nov 2026 00:28:32 GMT  
		Size: 324.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:969334aca9fafa733eb549898737409a2db9694cd37a30b8ca72f4aade6c8aea`  
		Last Modified: Tue, 03 Nov 2026 00:28:36 GMT  
		Size: 181.1 MB (181081770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63751bcf6dadc3c3ca6ae50b6aeff9788a851cf21304ac0f8091c0e000260179`  
		Last Modified: Tue, 03 Nov 2026 00:28:33 GMT  
		Size: 5.2 KB (5217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:innovation-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:007da30fd0dbc6ab8866362eb9165cf6e7b5cec6825faf468d598ffdf47dc154
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5334093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba0a7e5b39bb058c7786003668fae2dd36b9b34a97441ceabf3cb4d35f03200d`

```dockerfile
```

-	Layers:
	-	`sha256:891cff0835d57a9e95db5e8eb70df4bcd95b537443360684fad2abb9e8335a57`  
		Last Modified: Tue, 03 Nov 2026 00:28:30 GMT  
		Size: 5.3 MB (5298774 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:24df5f010ba63cf921150dc8c90e0de612b65c675e20fea6e106fffcb08b9596`  
		Last Modified: Tue, 03 Nov 2026 00:28:30 GMT  
		Size: 35.3 KB (35319 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:innovation-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:0f2cbd36da41403ddf93b08f7682f95501fd2e22fbd4b728a0e42962d271f529
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.5 MB (295462504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aba3131d9f74d1a8e505de86aa0697e3ff59e76d24580359723d29ea4990a507`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 03 Nov 2026 00:23:12 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 03 Nov 2026 00:23:12 GMT
CMD ["/bin/bash"]
# Tue, 03 Nov 2026 00:26:00 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 03 Nov 2026 00:26:02 GMT
ENV GOSU_VERSION=1.19
# Tue, 03 Nov 2026 00:26:02 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 03 Nov 2026 00:26:41 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 03 Nov 2026 00:26:42 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 03 Nov 2026 00:26:42 GMT
ENV MYSQL_MAJOR=innovation
# Tue, 03 Nov 2026 00:26:42 GMT
ENV MYSQL_VERSION=26.10.0-1.el9
# Tue, 03 Nov 2026 00:26:42 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 03 Nov 2026 00:27:24 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 03 Nov 2026 00:27:24 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 03 Nov 2026 00:27:24 GMT
ENV MYSQL_SHELL_VERSION=26.10.0-1.el9
# Tue, 03 Nov 2026 00:28:16 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 03 Nov 2026 00:28:16 GMT
VOLUME [/var/lib/mysql]
# Tue, 03 Nov 2026 00:28:16 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 00:28:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 00:28:16 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 03 Nov 2026 00:28:16 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:329828f10dd1b721024e28953696281394ad8b6f7621b47c0fb0d2d41e2838ab`  
		Last Modified: Tue, 03 Nov 2026 00:23:23 GMT  
		Size: 45.7 MB (45734040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abb8b963bc245ef2e7d160c6e5ef6e71bca1b0d20b36a48ba155dec212875b97`  
		Last Modified: Tue, 03 Nov 2026 00:28:44 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f360cfcd0c6859691383f9ccef43f51c983b9dbfe96263264b7c376a22ac8ca`  
		Last Modified: Tue, 03 Nov 2026 00:28:43 GMT  
		Size: 737.5 KB (737531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f589dac8ec1fcba3211e9da63231e0ddf87ae39921f10f12f31f24b27fa1473e`  
		Last Modified: Tue, 03 Nov 2026 00:28:44 GMT  
		Size: 5.8 MB (5809137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ac49b392b7845c771c3f701766cdb34b3b945439231c710d9996c7793897366`  
		Last Modified: Tue, 03 Nov 2026 00:28:44 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:111940a3af7aad0208eb3eca6716db74d7e12ad9325efcd8d97fd634c3a787c7`  
		Last Modified: Tue, 03 Nov 2026 00:28:45 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f66cb2d4f38de30497f688d95516e6c73624c74a91bbe718925a18ff2822f3dc`  
		Last Modified: Tue, 03 Nov 2026 00:28:47 GMT  
		Size: 63.8 MB (63823011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01ab56bed6cffb7b414a39f35c2447dcd55e5aaa04aeabc16e9b22e013d46760`  
		Last Modified: Tue, 03 Nov 2026 00:28:45 GMT  
		Size: 324.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b44aa14e230fbb918ff2d6a1c8131447dcdf242f29d1a24b6d153129f91ec328`  
		Last Modified: Tue, 03 Nov 2026 00:28:49 GMT  
		Size: 179.3 MB (179349404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59a4b8888e49d69b7ae0b9e4ba91161cfd4eb35a98c3a14e8f52085233448758`  
		Last Modified: Tue, 03 Nov 2026 00:28:46 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:innovation-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:597a605bfb2209bb1ccad1707c70fb1a59fcb161120f781333646d05ae193467
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5332907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30601a021da51824f13c963dc30a9429f87d36c9fba4f1a6a8b944eb6894c0fd`

```dockerfile
```

-	Layers:
	-	`sha256:1b185e2dd51057c56062cd713e3df44f624e8a5d512a214dbc1ae42d0bc75646`  
		Last Modified: Tue, 03 Nov 2026 00:28:44 GMT  
		Size: 5.3 MB (5297247 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5e5100be39aea4a58c6988e15bffe2b269e64355ddca478523fa2969926694f5`  
		Last Modified: Tue, 03 Nov 2026 00:28:44 GMT  
		Size: 35.7 KB (35660 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:innovation-oraclelinux9`

```console
$ docker pull mysql@sha256:3819b2b23835c4a73c8b022fafc33c8095c0f81c929a8b7a84613d2fba6c52f5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:innovation-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:b401608b19ffafbc6aa3d84523acf783078c8cf01e0f7ee1dc3ca75a5701a999
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.0 MB (299036505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88276261eddbb021ff76b1dfdc9c7ad37b9b053449e39f50f7d1aa594afe4db2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 03 Nov 2026 00:22:58 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 03 Nov 2026 00:22:58 GMT
CMD ["/bin/bash"]
# Tue, 03 Nov 2026 00:25:53 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 03 Nov 2026 00:25:54 GMT
ENV GOSU_VERSION=1.19
# Tue, 03 Nov 2026 00:25:54 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 03 Nov 2026 00:26:32 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 03 Nov 2026 00:26:33 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 03 Nov 2026 00:26:33 GMT
ENV MYSQL_MAJOR=innovation
# Tue, 03 Nov 2026 00:26:33 GMT
ENV MYSQL_VERSION=26.10.0-1.el9
# Tue, 03 Nov 2026 00:26:33 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 03 Nov 2026 00:27:14 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 03 Nov 2026 00:27:14 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 03 Nov 2026 00:27:14 GMT
ENV MYSQL_SHELL_VERSION=26.10.0-1.el9
# Tue, 03 Nov 2026 00:28:04 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 03 Nov 2026 00:28:04 GMT
VOLUME [/var/lib/mysql]
# Tue, 03 Nov 2026 00:28:04 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 00:28:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 00:28:04 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 03 Nov 2026 00:28:04 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c3e99775cc39154c5a4687d6aeb43d4162a1fec417e872075b1e50567e8aed20`  
		Last Modified: Tue, 03 Nov 2026 00:23:09 GMT  
		Size: 47.2 MB (47186609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3594eab1df5f3f34fecddcdf0c3b57323dbea7bf7696d49547df71dbbaa31ea9`  
		Last Modified: Tue, 03 Nov 2026 00:28:30 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37fa2793f15fbe8afa9ca05c1799457534e9c377ca7501db597c62de8e2ae1bd`  
		Last Modified: Tue, 03 Nov 2026 00:28:31 GMT  
		Size: 783.6 KB (783554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83d647c7d3d0c4c4e237e633333c4c4408acfc01909bde6215589b87992a92b2`  
		Last Modified: Tue, 03 Nov 2026 00:28:30 GMT  
		Size: 6.2 MB (6188738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:335c0ba6129f79d6d295e152c017595d93229b0993958b12a9a83898eafcd8ef`  
		Last Modified: Tue, 03 Nov 2026 00:28:30 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:781b429d34a1519677ef274fc0ece117d411a7b21f67415dfe9538b17766a72b`  
		Last Modified: Tue, 03 Nov 2026 00:28:32 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:811578fcdc4f6070e1ac5cec15297b4960ae6873b1a6b76888ee2b37b8d26db9`  
		Last Modified: Tue, 03 Nov 2026 00:28:34 GMT  
		Size: 63.8 MB (63786463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ba4d3770669dba1cb86645b0931ce4e83759c82fa5fca496acf8d04622ff8c0`  
		Last Modified: Tue, 03 Nov 2026 00:28:32 GMT  
		Size: 324.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:969334aca9fafa733eb549898737409a2db9694cd37a30b8ca72f4aade6c8aea`  
		Last Modified: Tue, 03 Nov 2026 00:28:36 GMT  
		Size: 181.1 MB (181081770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63751bcf6dadc3c3ca6ae50b6aeff9788a851cf21304ac0f8091c0e000260179`  
		Last Modified: Tue, 03 Nov 2026 00:28:33 GMT  
		Size: 5.2 KB (5217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:innovation-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:007da30fd0dbc6ab8866362eb9165cf6e7b5cec6825faf468d598ffdf47dc154
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5334093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba0a7e5b39bb058c7786003668fae2dd36b9b34a97441ceabf3cb4d35f03200d`

```dockerfile
```

-	Layers:
	-	`sha256:891cff0835d57a9e95db5e8eb70df4bcd95b537443360684fad2abb9e8335a57`  
		Last Modified: Tue, 03 Nov 2026 00:28:30 GMT  
		Size: 5.3 MB (5298774 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:24df5f010ba63cf921150dc8c90e0de612b65c675e20fea6e106fffcb08b9596`  
		Last Modified: Tue, 03 Nov 2026 00:28:30 GMT  
		Size: 35.3 KB (35319 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:innovation-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:0f2cbd36da41403ddf93b08f7682f95501fd2e22fbd4b728a0e42962d271f529
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.5 MB (295462504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aba3131d9f74d1a8e505de86aa0697e3ff59e76d24580359723d29ea4990a507`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 03 Nov 2026 00:23:12 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 03 Nov 2026 00:23:12 GMT
CMD ["/bin/bash"]
# Tue, 03 Nov 2026 00:26:00 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 03 Nov 2026 00:26:02 GMT
ENV GOSU_VERSION=1.19
# Tue, 03 Nov 2026 00:26:02 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 03 Nov 2026 00:26:41 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 03 Nov 2026 00:26:42 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 03 Nov 2026 00:26:42 GMT
ENV MYSQL_MAJOR=innovation
# Tue, 03 Nov 2026 00:26:42 GMT
ENV MYSQL_VERSION=26.10.0-1.el9
# Tue, 03 Nov 2026 00:26:42 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 03 Nov 2026 00:27:24 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 03 Nov 2026 00:27:24 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 03 Nov 2026 00:27:24 GMT
ENV MYSQL_SHELL_VERSION=26.10.0-1.el9
# Tue, 03 Nov 2026 00:28:16 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 03 Nov 2026 00:28:16 GMT
VOLUME [/var/lib/mysql]
# Tue, 03 Nov 2026 00:28:16 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 00:28:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 00:28:16 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 03 Nov 2026 00:28:16 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:329828f10dd1b721024e28953696281394ad8b6f7621b47c0fb0d2d41e2838ab`  
		Last Modified: Tue, 03 Nov 2026 00:23:23 GMT  
		Size: 45.7 MB (45734040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abb8b963bc245ef2e7d160c6e5ef6e71bca1b0d20b36a48ba155dec212875b97`  
		Last Modified: Tue, 03 Nov 2026 00:28:44 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f360cfcd0c6859691383f9ccef43f51c983b9dbfe96263264b7c376a22ac8ca`  
		Last Modified: Tue, 03 Nov 2026 00:28:43 GMT  
		Size: 737.5 KB (737531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f589dac8ec1fcba3211e9da63231e0ddf87ae39921f10f12f31f24b27fa1473e`  
		Last Modified: Tue, 03 Nov 2026 00:28:44 GMT  
		Size: 5.8 MB (5809137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ac49b392b7845c771c3f701766cdb34b3b945439231c710d9996c7793897366`  
		Last Modified: Tue, 03 Nov 2026 00:28:44 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:111940a3af7aad0208eb3eca6716db74d7e12ad9325efcd8d97fd634c3a787c7`  
		Last Modified: Tue, 03 Nov 2026 00:28:45 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f66cb2d4f38de30497f688d95516e6c73624c74a91bbe718925a18ff2822f3dc`  
		Last Modified: Tue, 03 Nov 2026 00:28:47 GMT  
		Size: 63.8 MB (63823011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01ab56bed6cffb7b414a39f35c2447dcd55e5aaa04aeabc16e9b22e013d46760`  
		Last Modified: Tue, 03 Nov 2026 00:28:45 GMT  
		Size: 324.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b44aa14e230fbb918ff2d6a1c8131447dcdf242f29d1a24b6d153129f91ec328`  
		Last Modified: Tue, 03 Nov 2026 00:28:49 GMT  
		Size: 179.3 MB (179349404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59a4b8888e49d69b7ae0b9e4ba91161cfd4eb35a98c3a14e8f52085233448758`  
		Last Modified: Tue, 03 Nov 2026 00:28:46 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:innovation-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:597a605bfb2209bb1ccad1707c70fb1a59fcb161120f781333646d05ae193467
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5332907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30601a021da51824f13c963dc30a9429f87d36c9fba4f1a6a8b944eb6894c0fd`

```dockerfile
```

-	Layers:
	-	`sha256:1b185e2dd51057c56062cd713e3df44f624e8a5d512a214dbc1ae42d0bc75646`  
		Last Modified: Tue, 03 Nov 2026 00:28:44 GMT  
		Size: 5.3 MB (5297247 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5e5100be39aea4a58c6988e15bffe2b269e64355ddca478523fa2969926694f5`  
		Last Modified: Tue, 03 Nov 2026 00:28:44 GMT  
		Size: 35.7 KB (35660 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:latest`

```console
$ docker pull mysql@sha256:3819b2b23835c4a73c8b022fafc33c8095c0f81c929a8b7a84613d2fba6c52f5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:latest` - linux; amd64

```console
$ docker pull mysql@sha256:b401608b19ffafbc6aa3d84523acf783078c8cf01e0f7ee1dc3ca75a5701a999
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.0 MB (299036505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88276261eddbb021ff76b1dfdc9c7ad37b9b053449e39f50f7d1aa594afe4db2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 03 Nov 2026 00:22:58 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 03 Nov 2026 00:22:58 GMT
CMD ["/bin/bash"]
# Tue, 03 Nov 2026 00:25:53 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 03 Nov 2026 00:25:54 GMT
ENV GOSU_VERSION=1.19
# Tue, 03 Nov 2026 00:25:54 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 03 Nov 2026 00:26:32 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 03 Nov 2026 00:26:33 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 03 Nov 2026 00:26:33 GMT
ENV MYSQL_MAJOR=innovation
# Tue, 03 Nov 2026 00:26:33 GMT
ENV MYSQL_VERSION=26.10.0-1.el9
# Tue, 03 Nov 2026 00:26:33 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 03 Nov 2026 00:27:14 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 03 Nov 2026 00:27:14 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 03 Nov 2026 00:27:14 GMT
ENV MYSQL_SHELL_VERSION=26.10.0-1.el9
# Tue, 03 Nov 2026 00:28:04 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 03 Nov 2026 00:28:04 GMT
VOLUME [/var/lib/mysql]
# Tue, 03 Nov 2026 00:28:04 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 00:28:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 00:28:04 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 03 Nov 2026 00:28:04 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c3e99775cc39154c5a4687d6aeb43d4162a1fec417e872075b1e50567e8aed20`  
		Last Modified: Tue, 03 Nov 2026 00:23:09 GMT  
		Size: 47.2 MB (47186609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3594eab1df5f3f34fecddcdf0c3b57323dbea7bf7696d49547df71dbbaa31ea9`  
		Last Modified: Tue, 03 Nov 2026 00:28:30 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37fa2793f15fbe8afa9ca05c1799457534e9c377ca7501db597c62de8e2ae1bd`  
		Last Modified: Tue, 03 Nov 2026 00:28:31 GMT  
		Size: 783.6 KB (783554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83d647c7d3d0c4c4e237e633333c4c4408acfc01909bde6215589b87992a92b2`  
		Last Modified: Tue, 03 Nov 2026 00:28:30 GMT  
		Size: 6.2 MB (6188738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:335c0ba6129f79d6d295e152c017595d93229b0993958b12a9a83898eafcd8ef`  
		Last Modified: Tue, 03 Nov 2026 00:28:30 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:781b429d34a1519677ef274fc0ece117d411a7b21f67415dfe9538b17766a72b`  
		Last Modified: Tue, 03 Nov 2026 00:28:32 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:811578fcdc4f6070e1ac5cec15297b4960ae6873b1a6b76888ee2b37b8d26db9`  
		Last Modified: Tue, 03 Nov 2026 00:28:34 GMT  
		Size: 63.8 MB (63786463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ba4d3770669dba1cb86645b0931ce4e83759c82fa5fca496acf8d04622ff8c0`  
		Last Modified: Tue, 03 Nov 2026 00:28:32 GMT  
		Size: 324.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:969334aca9fafa733eb549898737409a2db9694cd37a30b8ca72f4aade6c8aea`  
		Last Modified: Tue, 03 Nov 2026 00:28:36 GMT  
		Size: 181.1 MB (181081770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63751bcf6dadc3c3ca6ae50b6aeff9788a851cf21304ac0f8091c0e000260179`  
		Last Modified: Tue, 03 Nov 2026 00:28:33 GMT  
		Size: 5.2 KB (5217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:latest` - unknown; unknown

```console
$ docker pull mysql@sha256:007da30fd0dbc6ab8866362eb9165cf6e7b5cec6825faf468d598ffdf47dc154
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5334093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba0a7e5b39bb058c7786003668fae2dd36b9b34a97441ceabf3cb4d35f03200d`

```dockerfile
```

-	Layers:
	-	`sha256:891cff0835d57a9e95db5e8eb70df4bcd95b537443360684fad2abb9e8335a57`  
		Last Modified: Tue, 03 Nov 2026 00:28:30 GMT  
		Size: 5.3 MB (5298774 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:24df5f010ba63cf921150dc8c90e0de612b65c675e20fea6e106fffcb08b9596`  
		Last Modified: Tue, 03 Nov 2026 00:28:30 GMT  
		Size: 35.3 KB (35319 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:latest` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:0f2cbd36da41403ddf93b08f7682f95501fd2e22fbd4b728a0e42962d271f529
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.5 MB (295462504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aba3131d9f74d1a8e505de86aa0697e3ff59e76d24580359723d29ea4990a507`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 03 Nov 2026 00:23:12 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 03 Nov 2026 00:23:12 GMT
CMD ["/bin/bash"]
# Tue, 03 Nov 2026 00:26:00 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 03 Nov 2026 00:26:02 GMT
ENV GOSU_VERSION=1.19
# Tue, 03 Nov 2026 00:26:02 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 03 Nov 2026 00:26:41 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 03 Nov 2026 00:26:42 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 03 Nov 2026 00:26:42 GMT
ENV MYSQL_MAJOR=innovation
# Tue, 03 Nov 2026 00:26:42 GMT
ENV MYSQL_VERSION=26.10.0-1.el9
# Tue, 03 Nov 2026 00:26:42 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 03 Nov 2026 00:27:24 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 03 Nov 2026 00:27:24 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 03 Nov 2026 00:27:24 GMT
ENV MYSQL_SHELL_VERSION=26.10.0-1.el9
# Tue, 03 Nov 2026 00:28:16 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 03 Nov 2026 00:28:16 GMT
VOLUME [/var/lib/mysql]
# Tue, 03 Nov 2026 00:28:16 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 00:28:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 00:28:16 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 03 Nov 2026 00:28:16 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:329828f10dd1b721024e28953696281394ad8b6f7621b47c0fb0d2d41e2838ab`  
		Last Modified: Tue, 03 Nov 2026 00:23:23 GMT  
		Size: 45.7 MB (45734040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abb8b963bc245ef2e7d160c6e5ef6e71bca1b0d20b36a48ba155dec212875b97`  
		Last Modified: Tue, 03 Nov 2026 00:28:44 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f360cfcd0c6859691383f9ccef43f51c983b9dbfe96263264b7c376a22ac8ca`  
		Last Modified: Tue, 03 Nov 2026 00:28:43 GMT  
		Size: 737.5 KB (737531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f589dac8ec1fcba3211e9da63231e0ddf87ae39921f10f12f31f24b27fa1473e`  
		Last Modified: Tue, 03 Nov 2026 00:28:44 GMT  
		Size: 5.8 MB (5809137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ac49b392b7845c771c3f701766cdb34b3b945439231c710d9996c7793897366`  
		Last Modified: Tue, 03 Nov 2026 00:28:44 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:111940a3af7aad0208eb3eca6716db74d7e12ad9325efcd8d97fd634c3a787c7`  
		Last Modified: Tue, 03 Nov 2026 00:28:45 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f66cb2d4f38de30497f688d95516e6c73624c74a91bbe718925a18ff2822f3dc`  
		Last Modified: Tue, 03 Nov 2026 00:28:47 GMT  
		Size: 63.8 MB (63823011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01ab56bed6cffb7b414a39f35c2447dcd55e5aaa04aeabc16e9b22e013d46760`  
		Last Modified: Tue, 03 Nov 2026 00:28:45 GMT  
		Size: 324.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b44aa14e230fbb918ff2d6a1c8131447dcdf242f29d1a24b6d153129f91ec328`  
		Last Modified: Tue, 03 Nov 2026 00:28:49 GMT  
		Size: 179.3 MB (179349404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59a4b8888e49d69b7ae0b9e4ba91161cfd4eb35a98c3a14e8f52085233448758`  
		Last Modified: Tue, 03 Nov 2026 00:28:46 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:latest` - unknown; unknown

```console
$ docker pull mysql@sha256:597a605bfb2209bb1ccad1707c70fb1a59fcb161120f781333646d05ae193467
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5332907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30601a021da51824f13c963dc30a9429f87d36c9fba4f1a6a8b944eb6894c0fd`

```dockerfile
```

-	Layers:
	-	`sha256:1b185e2dd51057c56062cd713e3df44f624e8a5d512a214dbc1ae42d0bc75646`  
		Last Modified: Tue, 03 Nov 2026 00:28:44 GMT  
		Size: 5.3 MB (5297247 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5e5100be39aea4a58c6988e15bffe2b269e64355ddca478523fa2969926694f5`  
		Last Modified: Tue, 03 Nov 2026 00:28:44 GMT  
		Size: 35.7 KB (35660 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:lts`

```console
$ docker pull mysql@sha256:df90258da46f6e7ff8574ff84f17618aba0765cac749928299c69fd4e7cb8ad8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:lts` - linux; amd64

```console
$ docker pull mysql@sha256:1954314de304d70fe85c67204d4676891ffa11dcd7caedaf5e9bc50b5f6be446
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.3 MB (270272026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e76f0f197fa13fca853e3541ba0d9e4be3b8665c477232a8820422a30c1be7a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 03 Nov 2026 00:22:58 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 03 Nov 2026 00:22:58 GMT
CMD ["/bin/bash"]
# Tue, 03 Nov 2026 00:25:50 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 03 Nov 2026 00:25:52 GMT
ENV GOSU_VERSION=1.19
# Tue, 03 Nov 2026 00:25:52 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 03 Nov 2026 00:26:28 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 03 Nov 2026 00:26:28 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 03 Nov 2026 00:26:28 GMT
ENV MYSQL_MAJOR=9.7
# Tue, 03 Nov 2026 00:26:28 GMT
ENV MYSQL_VERSION=9.7.4-1.el9
# Tue, 03 Nov 2026 00:26:28 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 03 Nov 2026 00:27:06 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 03 Nov 2026 00:27:07 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 03 Nov 2026 00:27:07 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Tue, 03 Nov 2026 00:27:55 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 03 Nov 2026 00:27:55 GMT
VOLUME [/var/lib/mysql]
# Tue, 03 Nov 2026 00:27:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 00:27:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 00:27:55 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 03 Nov 2026 00:27:55 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c3e99775cc39154c5a4687d6aeb43d4162a1fec417e872075b1e50567e8aed20`  
		Last Modified: Tue, 03 Nov 2026 00:23:09 GMT  
		Size: 47.2 MB (47186609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31f887fe53edc896755027291370c8d4292fa36a76ab381cb4a8dbedd285760b`  
		Last Modified: Tue, 03 Nov 2026 00:28:28 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3754af017f56acaa6d9f52ba0c3732a51849e67899cf54b0c484e57f9d33e534`  
		Last Modified: Tue, 03 Nov 2026 00:28:28 GMT  
		Size: 783.6 KB (783556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df33232b969ae6266d904f378a405485f0981cfcb2c1f5747ca97aaa574184ba`  
		Last Modified: Tue, 03 Nov 2026 00:28:29 GMT  
		Size: 6.2 MB (6188755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae3d2b29e16c7814e94bdc7cab48ae7db3bc9165001e4696487aee88931af3a6`  
		Last Modified: Tue, 03 Nov 2026 00:28:28 GMT  
		Size: 2.6 KB (2602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99b0f13fee4e4992d1ab6a39fc364e0066e72a49f9a5c1cf12c4c2950b50b1a0`  
		Last Modified: Tue, 03 Nov 2026 00:28:30 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb0ce55aac792358516b5786f52d10f4ec66d581d9f76b3a10dd9f019d215453`  
		Last Modified: Tue, 03 Nov 2026 00:28:32 GMT  
		Size: 57.2 MB (57180406 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:068a758fe1a8628cb213d1859870d044f9df9feb9d2793164413b2face986f1a`  
		Last Modified: Tue, 03 Nov 2026 00:28:30 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8a442f747a1b5934bdec12be13ac571d0f5e224d85c945b8fd9c76c7761dec0`  
		Last Modified: Tue, 03 Nov 2026 00:28:34 GMT  
		Size: 158.9 MB (158923340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e809fbffc5fed48386379275a0e7942464e9e07ab3f6d632c73b9b1fa8476f0`  
		Last Modified: Tue, 03 Nov 2026 00:28:31 GMT  
		Size: 5.2 KB (5221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:lts` - unknown; unknown

```console
$ docker pull mysql@sha256:eebfb1cf458be8570bcc6bf3ebc79438f9b8e61328acd63a60e6e4d8ed93a2e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16815699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7d7dac4c2c3cca28ba86e52d6b8b4a8bbe05a92299a3f7d178f0c23192d1420`

```dockerfile
```

-	Layers:
	-	`sha256:81510890552abb4f4058f7451c431347368cd918b661f825a5fbe0fb977ca92c`  
		Last Modified: Tue, 03 Nov 2026 00:28:29 GMT  
		Size: 16.8 MB (16781491 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0e0302ee39c42374ab0007a558010e1e7941a526df70138d12b412c5b55926b3`  
		Last Modified: Tue, 03 Nov 2026 00:28:28 GMT  
		Size: 34.2 KB (34208 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:lts` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:290970fdd7f34b74bbc9a627a7a1fdd307de27b79a01acc08e3676ebb5ca7054
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.7 MB (266655628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c58957ab847e69d222cbc0c2667d48452388950f0a93fd63dcc1aa2e153f8eeb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 03 Nov 2026 00:23:12 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 03 Nov 2026 00:23:12 GMT
CMD ["/bin/bash"]
# Tue, 03 Nov 2026 00:25:53 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 03 Nov 2026 00:25:55 GMT
ENV GOSU_VERSION=1.19
# Tue, 03 Nov 2026 00:25:55 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 03 Nov 2026 00:26:34 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 03 Nov 2026 00:26:36 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 03 Nov 2026 00:26:36 GMT
ENV MYSQL_MAJOR=9.7
# Tue, 03 Nov 2026 00:26:36 GMT
ENV MYSQL_VERSION=9.7.4-1.el9
# Tue, 03 Nov 2026 00:26:36 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 03 Nov 2026 00:27:19 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 03 Nov 2026 00:27:19 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 03 Nov 2026 00:27:19 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Tue, 03 Nov 2026 00:28:11 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 03 Nov 2026 00:28:11 GMT
VOLUME [/var/lib/mysql]
# Tue, 03 Nov 2026 00:28:11 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 00:28:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 00:28:11 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 03 Nov 2026 00:28:11 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:329828f10dd1b721024e28953696281394ad8b6f7621b47c0fb0d2d41e2838ab`  
		Last Modified: Tue, 03 Nov 2026 00:23:23 GMT  
		Size: 45.7 MB (45734040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:332288060cf8d2d286c35a3f5769b6047846bf282c035d37c66736d6a1e81eae`  
		Last Modified: Tue, 03 Nov 2026 00:28:31 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0faccbb0370077fce1f989b75cad45c0e51b05a29cff15bfe6898df4f9b6b790`  
		Last Modified: Tue, 03 Nov 2026 00:28:46 GMT  
		Size: 737.5 KB (737529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84d41246540728c61ef3be8edd4017e4003fe4c82b28ca2b6ba5b74b8cae29ab`  
		Last Modified: Tue, 03 Nov 2026 00:28:47 GMT  
		Size: 5.8 MB (5809051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee15add962978dfaf0409211c1099c20eb639bcb4054d2eb726810c140fb8e50`  
		Last Modified: Tue, 03 Nov 2026 00:28:47 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:053fec689bfc5ae452338d9173842d6dc3537ab25e860ed7aa32e5262669ec88`  
		Last Modified: Tue, 03 Nov 2026 00:28:48 GMT  
		Size: 331.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1eb2512f0309788c4a1f48a7161ec1b3ec0a852ff5b4774b161f6f469bad3455`  
		Last Modified: Tue, 03 Nov 2026 00:28:50 GMT  
		Size: 57.2 MB (57172471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cea84603e8902580fb1129da0e3d01583d7d6bbc6e81894b41c85d5cdcfa7539`  
		Last Modified: Tue, 03 Nov 2026 00:28:48 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d0bdba5eb82e4040cb0f6616be612c350fac55c01006af9511d74ddf6462888`  
		Last Modified: Tue, 03 Nov 2026 00:28:52 GMT  
		Size: 157.2 MB (157193166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b76013fbb918767d790431ba3d8849aaf945bad41678c49bed2e21ef28b10a97`  
		Last Modified: Tue, 03 Nov 2026 00:28:49 GMT  
		Size: 5.2 KB (5228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:lts` - unknown; unknown

```console
$ docker pull mysql@sha256:bc6ad7398aef25511b59466d9c2220fd018096b50749f61b1facf546c7cf0493
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16814440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad164e0054a8ba159836060d678a00a79d89a56a8070bf4016b86402095ec7bb`

```dockerfile
```

-	Layers:
	-	`sha256:71b7f8695596b20e275f5462aaae4e8fcdddf17237be4b62b78869faf96fce55`  
		Last Modified: Tue, 03 Nov 2026 00:28:47 GMT  
		Size: 16.8 MB (16779927 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:db5edd9c75b0b6a7c079b234f1802788ff516d2293a95d243ca43938450f7484`  
		Last Modified: Tue, 03 Nov 2026 00:28:46 GMT  
		Size: 34.5 KB (34513 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:lts-oracle`

```console
$ docker pull mysql@sha256:df90258da46f6e7ff8574ff84f17618aba0765cac749928299c69fd4e7cb8ad8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:lts-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:1954314de304d70fe85c67204d4676891ffa11dcd7caedaf5e9bc50b5f6be446
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.3 MB (270272026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e76f0f197fa13fca853e3541ba0d9e4be3b8665c477232a8820422a30c1be7a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 03 Nov 2026 00:22:58 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 03 Nov 2026 00:22:58 GMT
CMD ["/bin/bash"]
# Tue, 03 Nov 2026 00:25:50 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 03 Nov 2026 00:25:52 GMT
ENV GOSU_VERSION=1.19
# Tue, 03 Nov 2026 00:25:52 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 03 Nov 2026 00:26:28 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 03 Nov 2026 00:26:28 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 03 Nov 2026 00:26:28 GMT
ENV MYSQL_MAJOR=9.7
# Tue, 03 Nov 2026 00:26:28 GMT
ENV MYSQL_VERSION=9.7.4-1.el9
# Tue, 03 Nov 2026 00:26:28 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 03 Nov 2026 00:27:06 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 03 Nov 2026 00:27:07 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 03 Nov 2026 00:27:07 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Tue, 03 Nov 2026 00:27:55 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 03 Nov 2026 00:27:55 GMT
VOLUME [/var/lib/mysql]
# Tue, 03 Nov 2026 00:27:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 00:27:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 00:27:55 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 03 Nov 2026 00:27:55 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c3e99775cc39154c5a4687d6aeb43d4162a1fec417e872075b1e50567e8aed20`  
		Last Modified: Tue, 03 Nov 2026 00:23:09 GMT  
		Size: 47.2 MB (47186609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31f887fe53edc896755027291370c8d4292fa36a76ab381cb4a8dbedd285760b`  
		Last Modified: Tue, 03 Nov 2026 00:28:28 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3754af017f56acaa6d9f52ba0c3732a51849e67899cf54b0c484e57f9d33e534`  
		Last Modified: Tue, 03 Nov 2026 00:28:28 GMT  
		Size: 783.6 KB (783556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df33232b969ae6266d904f378a405485f0981cfcb2c1f5747ca97aaa574184ba`  
		Last Modified: Tue, 03 Nov 2026 00:28:29 GMT  
		Size: 6.2 MB (6188755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae3d2b29e16c7814e94bdc7cab48ae7db3bc9165001e4696487aee88931af3a6`  
		Last Modified: Tue, 03 Nov 2026 00:28:28 GMT  
		Size: 2.6 KB (2602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99b0f13fee4e4992d1ab6a39fc364e0066e72a49f9a5c1cf12c4c2950b50b1a0`  
		Last Modified: Tue, 03 Nov 2026 00:28:30 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb0ce55aac792358516b5786f52d10f4ec66d581d9f76b3a10dd9f019d215453`  
		Last Modified: Tue, 03 Nov 2026 00:28:32 GMT  
		Size: 57.2 MB (57180406 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:068a758fe1a8628cb213d1859870d044f9df9feb9d2793164413b2face986f1a`  
		Last Modified: Tue, 03 Nov 2026 00:28:30 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8a442f747a1b5934bdec12be13ac571d0f5e224d85c945b8fd9c76c7761dec0`  
		Last Modified: Tue, 03 Nov 2026 00:28:34 GMT  
		Size: 158.9 MB (158923340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e809fbffc5fed48386379275a0e7942464e9e07ab3f6d632c73b9b1fa8476f0`  
		Last Modified: Tue, 03 Nov 2026 00:28:31 GMT  
		Size: 5.2 KB (5221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:lts-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:eebfb1cf458be8570bcc6bf3ebc79438f9b8e61328acd63a60e6e4d8ed93a2e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16815699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7d7dac4c2c3cca28ba86e52d6b8b4a8bbe05a92299a3f7d178f0c23192d1420`

```dockerfile
```

-	Layers:
	-	`sha256:81510890552abb4f4058f7451c431347368cd918b661f825a5fbe0fb977ca92c`  
		Last Modified: Tue, 03 Nov 2026 00:28:29 GMT  
		Size: 16.8 MB (16781491 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0e0302ee39c42374ab0007a558010e1e7941a526df70138d12b412c5b55926b3`  
		Last Modified: Tue, 03 Nov 2026 00:28:28 GMT  
		Size: 34.2 KB (34208 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:lts-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:290970fdd7f34b74bbc9a627a7a1fdd307de27b79a01acc08e3676ebb5ca7054
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.7 MB (266655628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c58957ab847e69d222cbc0c2667d48452388950f0a93fd63dcc1aa2e153f8eeb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 03 Nov 2026 00:23:12 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 03 Nov 2026 00:23:12 GMT
CMD ["/bin/bash"]
# Tue, 03 Nov 2026 00:25:53 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 03 Nov 2026 00:25:55 GMT
ENV GOSU_VERSION=1.19
# Tue, 03 Nov 2026 00:25:55 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 03 Nov 2026 00:26:34 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 03 Nov 2026 00:26:36 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 03 Nov 2026 00:26:36 GMT
ENV MYSQL_MAJOR=9.7
# Tue, 03 Nov 2026 00:26:36 GMT
ENV MYSQL_VERSION=9.7.4-1.el9
# Tue, 03 Nov 2026 00:26:36 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 03 Nov 2026 00:27:19 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 03 Nov 2026 00:27:19 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 03 Nov 2026 00:27:19 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Tue, 03 Nov 2026 00:28:11 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 03 Nov 2026 00:28:11 GMT
VOLUME [/var/lib/mysql]
# Tue, 03 Nov 2026 00:28:11 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 00:28:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 00:28:11 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 03 Nov 2026 00:28:11 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:329828f10dd1b721024e28953696281394ad8b6f7621b47c0fb0d2d41e2838ab`  
		Last Modified: Tue, 03 Nov 2026 00:23:23 GMT  
		Size: 45.7 MB (45734040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:332288060cf8d2d286c35a3f5769b6047846bf282c035d37c66736d6a1e81eae`  
		Last Modified: Tue, 03 Nov 2026 00:28:31 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0faccbb0370077fce1f989b75cad45c0e51b05a29cff15bfe6898df4f9b6b790`  
		Last Modified: Tue, 03 Nov 2026 00:28:46 GMT  
		Size: 737.5 KB (737529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84d41246540728c61ef3be8edd4017e4003fe4c82b28ca2b6ba5b74b8cae29ab`  
		Last Modified: Tue, 03 Nov 2026 00:28:47 GMT  
		Size: 5.8 MB (5809051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee15add962978dfaf0409211c1099c20eb639bcb4054d2eb726810c140fb8e50`  
		Last Modified: Tue, 03 Nov 2026 00:28:47 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:053fec689bfc5ae452338d9173842d6dc3537ab25e860ed7aa32e5262669ec88`  
		Last Modified: Tue, 03 Nov 2026 00:28:48 GMT  
		Size: 331.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1eb2512f0309788c4a1f48a7161ec1b3ec0a852ff5b4774b161f6f469bad3455`  
		Last Modified: Tue, 03 Nov 2026 00:28:50 GMT  
		Size: 57.2 MB (57172471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cea84603e8902580fb1129da0e3d01583d7d6bbc6e81894b41c85d5cdcfa7539`  
		Last Modified: Tue, 03 Nov 2026 00:28:48 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d0bdba5eb82e4040cb0f6616be612c350fac55c01006af9511d74ddf6462888`  
		Last Modified: Tue, 03 Nov 2026 00:28:52 GMT  
		Size: 157.2 MB (157193166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b76013fbb918767d790431ba3d8849aaf945bad41678c49bed2e21ef28b10a97`  
		Last Modified: Tue, 03 Nov 2026 00:28:49 GMT  
		Size: 5.2 KB (5228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:lts-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:bc6ad7398aef25511b59466d9c2220fd018096b50749f61b1facf546c7cf0493
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16814440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad164e0054a8ba159836060d678a00a79d89a56a8070bf4016b86402095ec7bb`

```dockerfile
```

-	Layers:
	-	`sha256:71b7f8695596b20e275f5462aaae4e8fcdddf17237be4b62b78869faf96fce55`  
		Last Modified: Tue, 03 Nov 2026 00:28:47 GMT  
		Size: 16.8 MB (16779927 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:db5edd9c75b0b6a7c079b234f1802788ff516d2293a95d243ca43938450f7484`  
		Last Modified: Tue, 03 Nov 2026 00:28:46 GMT  
		Size: 34.5 KB (34513 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:lts-oraclelinux9`

```console
$ docker pull mysql@sha256:df90258da46f6e7ff8574ff84f17618aba0765cac749928299c69fd4e7cb8ad8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:lts-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:1954314de304d70fe85c67204d4676891ffa11dcd7caedaf5e9bc50b5f6be446
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.3 MB (270272026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e76f0f197fa13fca853e3541ba0d9e4be3b8665c477232a8820422a30c1be7a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 03 Nov 2026 00:22:58 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 03 Nov 2026 00:22:58 GMT
CMD ["/bin/bash"]
# Tue, 03 Nov 2026 00:25:50 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 03 Nov 2026 00:25:52 GMT
ENV GOSU_VERSION=1.19
# Tue, 03 Nov 2026 00:25:52 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 03 Nov 2026 00:26:28 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 03 Nov 2026 00:26:28 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 03 Nov 2026 00:26:28 GMT
ENV MYSQL_MAJOR=9.7
# Tue, 03 Nov 2026 00:26:28 GMT
ENV MYSQL_VERSION=9.7.4-1.el9
# Tue, 03 Nov 2026 00:26:28 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 03 Nov 2026 00:27:06 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 03 Nov 2026 00:27:07 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 03 Nov 2026 00:27:07 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Tue, 03 Nov 2026 00:27:55 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 03 Nov 2026 00:27:55 GMT
VOLUME [/var/lib/mysql]
# Tue, 03 Nov 2026 00:27:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 00:27:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 00:27:55 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 03 Nov 2026 00:27:55 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c3e99775cc39154c5a4687d6aeb43d4162a1fec417e872075b1e50567e8aed20`  
		Last Modified: Tue, 03 Nov 2026 00:23:09 GMT  
		Size: 47.2 MB (47186609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31f887fe53edc896755027291370c8d4292fa36a76ab381cb4a8dbedd285760b`  
		Last Modified: Tue, 03 Nov 2026 00:28:28 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3754af017f56acaa6d9f52ba0c3732a51849e67899cf54b0c484e57f9d33e534`  
		Last Modified: Tue, 03 Nov 2026 00:28:28 GMT  
		Size: 783.6 KB (783556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df33232b969ae6266d904f378a405485f0981cfcb2c1f5747ca97aaa574184ba`  
		Last Modified: Tue, 03 Nov 2026 00:28:29 GMT  
		Size: 6.2 MB (6188755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae3d2b29e16c7814e94bdc7cab48ae7db3bc9165001e4696487aee88931af3a6`  
		Last Modified: Tue, 03 Nov 2026 00:28:28 GMT  
		Size: 2.6 KB (2602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99b0f13fee4e4992d1ab6a39fc364e0066e72a49f9a5c1cf12c4c2950b50b1a0`  
		Last Modified: Tue, 03 Nov 2026 00:28:30 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb0ce55aac792358516b5786f52d10f4ec66d581d9f76b3a10dd9f019d215453`  
		Last Modified: Tue, 03 Nov 2026 00:28:32 GMT  
		Size: 57.2 MB (57180406 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:068a758fe1a8628cb213d1859870d044f9df9feb9d2793164413b2face986f1a`  
		Last Modified: Tue, 03 Nov 2026 00:28:30 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8a442f747a1b5934bdec12be13ac571d0f5e224d85c945b8fd9c76c7761dec0`  
		Last Modified: Tue, 03 Nov 2026 00:28:34 GMT  
		Size: 158.9 MB (158923340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e809fbffc5fed48386379275a0e7942464e9e07ab3f6d632c73b9b1fa8476f0`  
		Last Modified: Tue, 03 Nov 2026 00:28:31 GMT  
		Size: 5.2 KB (5221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:lts-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:eebfb1cf458be8570bcc6bf3ebc79438f9b8e61328acd63a60e6e4d8ed93a2e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16815699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7d7dac4c2c3cca28ba86e52d6b8b4a8bbe05a92299a3f7d178f0c23192d1420`

```dockerfile
```

-	Layers:
	-	`sha256:81510890552abb4f4058f7451c431347368cd918b661f825a5fbe0fb977ca92c`  
		Last Modified: Tue, 03 Nov 2026 00:28:29 GMT  
		Size: 16.8 MB (16781491 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0e0302ee39c42374ab0007a558010e1e7941a526df70138d12b412c5b55926b3`  
		Last Modified: Tue, 03 Nov 2026 00:28:28 GMT  
		Size: 34.2 KB (34208 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:lts-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:290970fdd7f34b74bbc9a627a7a1fdd307de27b79a01acc08e3676ebb5ca7054
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.7 MB (266655628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c58957ab847e69d222cbc0c2667d48452388950f0a93fd63dcc1aa2e153f8eeb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 03 Nov 2026 00:23:12 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 03 Nov 2026 00:23:12 GMT
CMD ["/bin/bash"]
# Tue, 03 Nov 2026 00:25:53 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 03 Nov 2026 00:25:55 GMT
ENV GOSU_VERSION=1.19
# Tue, 03 Nov 2026 00:25:55 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 03 Nov 2026 00:26:34 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 03 Nov 2026 00:26:36 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 03 Nov 2026 00:26:36 GMT
ENV MYSQL_MAJOR=9.7
# Tue, 03 Nov 2026 00:26:36 GMT
ENV MYSQL_VERSION=9.7.4-1.el9
# Tue, 03 Nov 2026 00:26:36 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 03 Nov 2026 00:27:19 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 03 Nov 2026 00:27:19 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 03 Nov 2026 00:27:19 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Tue, 03 Nov 2026 00:28:11 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 03 Nov 2026 00:28:11 GMT
VOLUME [/var/lib/mysql]
# Tue, 03 Nov 2026 00:28:11 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 00:28:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 00:28:11 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 03 Nov 2026 00:28:11 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:329828f10dd1b721024e28953696281394ad8b6f7621b47c0fb0d2d41e2838ab`  
		Last Modified: Tue, 03 Nov 2026 00:23:23 GMT  
		Size: 45.7 MB (45734040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:332288060cf8d2d286c35a3f5769b6047846bf282c035d37c66736d6a1e81eae`  
		Last Modified: Tue, 03 Nov 2026 00:28:31 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0faccbb0370077fce1f989b75cad45c0e51b05a29cff15bfe6898df4f9b6b790`  
		Last Modified: Tue, 03 Nov 2026 00:28:46 GMT  
		Size: 737.5 KB (737529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84d41246540728c61ef3be8edd4017e4003fe4c82b28ca2b6ba5b74b8cae29ab`  
		Last Modified: Tue, 03 Nov 2026 00:28:47 GMT  
		Size: 5.8 MB (5809051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee15add962978dfaf0409211c1099c20eb639bcb4054d2eb726810c140fb8e50`  
		Last Modified: Tue, 03 Nov 2026 00:28:47 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:053fec689bfc5ae452338d9173842d6dc3537ab25e860ed7aa32e5262669ec88`  
		Last Modified: Tue, 03 Nov 2026 00:28:48 GMT  
		Size: 331.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1eb2512f0309788c4a1f48a7161ec1b3ec0a852ff5b4774b161f6f469bad3455`  
		Last Modified: Tue, 03 Nov 2026 00:28:50 GMT  
		Size: 57.2 MB (57172471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cea84603e8902580fb1129da0e3d01583d7d6bbc6e81894b41c85d5cdcfa7539`  
		Last Modified: Tue, 03 Nov 2026 00:28:48 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d0bdba5eb82e4040cb0f6616be612c350fac55c01006af9511d74ddf6462888`  
		Last Modified: Tue, 03 Nov 2026 00:28:52 GMT  
		Size: 157.2 MB (157193166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b76013fbb918767d790431ba3d8849aaf945bad41678c49bed2e21ef28b10a97`  
		Last Modified: Tue, 03 Nov 2026 00:28:49 GMT  
		Size: 5.2 KB (5228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:lts-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:bc6ad7398aef25511b59466d9c2220fd018096b50749f61b1facf546c7cf0493
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16814440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad164e0054a8ba159836060d678a00a79d89a56a8070bf4016b86402095ec7bb`

```dockerfile
```

-	Layers:
	-	`sha256:71b7f8695596b20e275f5462aaae4e8fcdddf17237be4b62b78869faf96fce55`  
		Last Modified: Tue, 03 Nov 2026 00:28:47 GMT  
		Size: 16.8 MB (16779927 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:db5edd9c75b0b6a7c079b234f1802788ff516d2293a95d243ca43938450f7484`  
		Last Modified: Tue, 03 Nov 2026 00:28:46 GMT  
		Size: 34.5 KB (34513 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:oracle`

```console
$ docker pull mysql@sha256:3819b2b23835c4a73c8b022fafc33c8095c0f81c929a8b7a84613d2fba6c52f5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:oracle` - linux; amd64

```console
$ docker pull mysql@sha256:b401608b19ffafbc6aa3d84523acf783078c8cf01e0f7ee1dc3ca75a5701a999
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.0 MB (299036505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88276261eddbb021ff76b1dfdc9c7ad37b9b053449e39f50f7d1aa594afe4db2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 03 Nov 2026 00:22:58 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 03 Nov 2026 00:22:58 GMT
CMD ["/bin/bash"]
# Tue, 03 Nov 2026 00:25:53 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 03 Nov 2026 00:25:54 GMT
ENV GOSU_VERSION=1.19
# Tue, 03 Nov 2026 00:25:54 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 03 Nov 2026 00:26:32 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 03 Nov 2026 00:26:33 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 03 Nov 2026 00:26:33 GMT
ENV MYSQL_MAJOR=innovation
# Tue, 03 Nov 2026 00:26:33 GMT
ENV MYSQL_VERSION=26.10.0-1.el9
# Tue, 03 Nov 2026 00:26:33 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 03 Nov 2026 00:27:14 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 03 Nov 2026 00:27:14 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 03 Nov 2026 00:27:14 GMT
ENV MYSQL_SHELL_VERSION=26.10.0-1.el9
# Tue, 03 Nov 2026 00:28:04 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 03 Nov 2026 00:28:04 GMT
VOLUME [/var/lib/mysql]
# Tue, 03 Nov 2026 00:28:04 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 00:28:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 00:28:04 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 03 Nov 2026 00:28:04 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c3e99775cc39154c5a4687d6aeb43d4162a1fec417e872075b1e50567e8aed20`  
		Last Modified: Tue, 03 Nov 2026 00:23:09 GMT  
		Size: 47.2 MB (47186609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3594eab1df5f3f34fecddcdf0c3b57323dbea7bf7696d49547df71dbbaa31ea9`  
		Last Modified: Tue, 03 Nov 2026 00:28:30 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37fa2793f15fbe8afa9ca05c1799457534e9c377ca7501db597c62de8e2ae1bd`  
		Last Modified: Tue, 03 Nov 2026 00:28:31 GMT  
		Size: 783.6 KB (783554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83d647c7d3d0c4c4e237e633333c4c4408acfc01909bde6215589b87992a92b2`  
		Last Modified: Tue, 03 Nov 2026 00:28:30 GMT  
		Size: 6.2 MB (6188738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:335c0ba6129f79d6d295e152c017595d93229b0993958b12a9a83898eafcd8ef`  
		Last Modified: Tue, 03 Nov 2026 00:28:30 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:781b429d34a1519677ef274fc0ece117d411a7b21f67415dfe9538b17766a72b`  
		Last Modified: Tue, 03 Nov 2026 00:28:32 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:811578fcdc4f6070e1ac5cec15297b4960ae6873b1a6b76888ee2b37b8d26db9`  
		Last Modified: Tue, 03 Nov 2026 00:28:34 GMT  
		Size: 63.8 MB (63786463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ba4d3770669dba1cb86645b0931ce4e83759c82fa5fca496acf8d04622ff8c0`  
		Last Modified: Tue, 03 Nov 2026 00:28:32 GMT  
		Size: 324.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:969334aca9fafa733eb549898737409a2db9694cd37a30b8ca72f4aade6c8aea`  
		Last Modified: Tue, 03 Nov 2026 00:28:36 GMT  
		Size: 181.1 MB (181081770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63751bcf6dadc3c3ca6ae50b6aeff9788a851cf21304ac0f8091c0e000260179`  
		Last Modified: Tue, 03 Nov 2026 00:28:33 GMT  
		Size: 5.2 KB (5217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:007da30fd0dbc6ab8866362eb9165cf6e7b5cec6825faf468d598ffdf47dc154
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5334093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba0a7e5b39bb058c7786003668fae2dd36b9b34a97441ceabf3cb4d35f03200d`

```dockerfile
```

-	Layers:
	-	`sha256:891cff0835d57a9e95db5e8eb70df4bcd95b537443360684fad2abb9e8335a57`  
		Last Modified: Tue, 03 Nov 2026 00:28:30 GMT  
		Size: 5.3 MB (5298774 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:24df5f010ba63cf921150dc8c90e0de612b65c675e20fea6e106fffcb08b9596`  
		Last Modified: Tue, 03 Nov 2026 00:28:30 GMT  
		Size: 35.3 KB (35319 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:0f2cbd36da41403ddf93b08f7682f95501fd2e22fbd4b728a0e42962d271f529
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.5 MB (295462504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aba3131d9f74d1a8e505de86aa0697e3ff59e76d24580359723d29ea4990a507`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 03 Nov 2026 00:23:12 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 03 Nov 2026 00:23:12 GMT
CMD ["/bin/bash"]
# Tue, 03 Nov 2026 00:26:00 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 03 Nov 2026 00:26:02 GMT
ENV GOSU_VERSION=1.19
# Tue, 03 Nov 2026 00:26:02 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 03 Nov 2026 00:26:41 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 03 Nov 2026 00:26:42 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 03 Nov 2026 00:26:42 GMT
ENV MYSQL_MAJOR=innovation
# Tue, 03 Nov 2026 00:26:42 GMT
ENV MYSQL_VERSION=26.10.0-1.el9
# Tue, 03 Nov 2026 00:26:42 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 03 Nov 2026 00:27:24 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 03 Nov 2026 00:27:24 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 03 Nov 2026 00:27:24 GMT
ENV MYSQL_SHELL_VERSION=26.10.0-1.el9
# Tue, 03 Nov 2026 00:28:16 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 03 Nov 2026 00:28:16 GMT
VOLUME [/var/lib/mysql]
# Tue, 03 Nov 2026 00:28:16 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 00:28:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 00:28:16 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 03 Nov 2026 00:28:16 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:329828f10dd1b721024e28953696281394ad8b6f7621b47c0fb0d2d41e2838ab`  
		Last Modified: Tue, 03 Nov 2026 00:23:23 GMT  
		Size: 45.7 MB (45734040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abb8b963bc245ef2e7d160c6e5ef6e71bca1b0d20b36a48ba155dec212875b97`  
		Last Modified: Tue, 03 Nov 2026 00:28:44 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f360cfcd0c6859691383f9ccef43f51c983b9dbfe96263264b7c376a22ac8ca`  
		Last Modified: Tue, 03 Nov 2026 00:28:43 GMT  
		Size: 737.5 KB (737531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f589dac8ec1fcba3211e9da63231e0ddf87ae39921f10f12f31f24b27fa1473e`  
		Last Modified: Tue, 03 Nov 2026 00:28:44 GMT  
		Size: 5.8 MB (5809137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ac49b392b7845c771c3f701766cdb34b3b945439231c710d9996c7793897366`  
		Last Modified: Tue, 03 Nov 2026 00:28:44 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:111940a3af7aad0208eb3eca6716db74d7e12ad9325efcd8d97fd634c3a787c7`  
		Last Modified: Tue, 03 Nov 2026 00:28:45 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f66cb2d4f38de30497f688d95516e6c73624c74a91bbe718925a18ff2822f3dc`  
		Last Modified: Tue, 03 Nov 2026 00:28:47 GMT  
		Size: 63.8 MB (63823011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01ab56bed6cffb7b414a39f35c2447dcd55e5aaa04aeabc16e9b22e013d46760`  
		Last Modified: Tue, 03 Nov 2026 00:28:45 GMT  
		Size: 324.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b44aa14e230fbb918ff2d6a1c8131447dcdf242f29d1a24b6d153129f91ec328`  
		Last Modified: Tue, 03 Nov 2026 00:28:49 GMT  
		Size: 179.3 MB (179349404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59a4b8888e49d69b7ae0b9e4ba91161cfd4eb35a98c3a14e8f52085233448758`  
		Last Modified: Tue, 03 Nov 2026 00:28:46 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:597a605bfb2209bb1ccad1707c70fb1a59fcb161120f781333646d05ae193467
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5332907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30601a021da51824f13c963dc30a9429f87d36c9fba4f1a6a8b944eb6894c0fd`

```dockerfile
```

-	Layers:
	-	`sha256:1b185e2dd51057c56062cd713e3df44f624e8a5d512a214dbc1ae42d0bc75646`  
		Last Modified: Tue, 03 Nov 2026 00:28:44 GMT  
		Size: 5.3 MB (5297247 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5e5100be39aea4a58c6988e15bffe2b269e64355ddca478523fa2969926694f5`  
		Last Modified: Tue, 03 Nov 2026 00:28:44 GMT  
		Size: 35.7 KB (35660 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:oraclelinux9`

```console
$ docker pull mysql@sha256:3819b2b23835c4a73c8b022fafc33c8095c0f81c929a8b7a84613d2fba6c52f5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:b401608b19ffafbc6aa3d84523acf783078c8cf01e0f7ee1dc3ca75a5701a999
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.0 MB (299036505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88276261eddbb021ff76b1dfdc9c7ad37b9b053449e39f50f7d1aa594afe4db2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 03 Nov 2026 00:22:58 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 03 Nov 2026 00:22:58 GMT
CMD ["/bin/bash"]
# Tue, 03 Nov 2026 00:25:53 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 03 Nov 2026 00:25:54 GMT
ENV GOSU_VERSION=1.19
# Tue, 03 Nov 2026 00:25:54 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 03 Nov 2026 00:26:32 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 03 Nov 2026 00:26:33 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 03 Nov 2026 00:26:33 GMT
ENV MYSQL_MAJOR=innovation
# Tue, 03 Nov 2026 00:26:33 GMT
ENV MYSQL_VERSION=26.10.0-1.el9
# Tue, 03 Nov 2026 00:26:33 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 03 Nov 2026 00:27:14 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 03 Nov 2026 00:27:14 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 03 Nov 2026 00:27:14 GMT
ENV MYSQL_SHELL_VERSION=26.10.0-1.el9
# Tue, 03 Nov 2026 00:28:04 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 03 Nov 2026 00:28:04 GMT
VOLUME [/var/lib/mysql]
# Tue, 03 Nov 2026 00:28:04 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 00:28:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 00:28:04 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 03 Nov 2026 00:28:04 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c3e99775cc39154c5a4687d6aeb43d4162a1fec417e872075b1e50567e8aed20`  
		Last Modified: Tue, 03 Nov 2026 00:23:09 GMT  
		Size: 47.2 MB (47186609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3594eab1df5f3f34fecddcdf0c3b57323dbea7bf7696d49547df71dbbaa31ea9`  
		Last Modified: Tue, 03 Nov 2026 00:28:30 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37fa2793f15fbe8afa9ca05c1799457534e9c377ca7501db597c62de8e2ae1bd`  
		Last Modified: Tue, 03 Nov 2026 00:28:31 GMT  
		Size: 783.6 KB (783554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83d647c7d3d0c4c4e237e633333c4c4408acfc01909bde6215589b87992a92b2`  
		Last Modified: Tue, 03 Nov 2026 00:28:30 GMT  
		Size: 6.2 MB (6188738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:335c0ba6129f79d6d295e152c017595d93229b0993958b12a9a83898eafcd8ef`  
		Last Modified: Tue, 03 Nov 2026 00:28:30 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:781b429d34a1519677ef274fc0ece117d411a7b21f67415dfe9538b17766a72b`  
		Last Modified: Tue, 03 Nov 2026 00:28:32 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:811578fcdc4f6070e1ac5cec15297b4960ae6873b1a6b76888ee2b37b8d26db9`  
		Last Modified: Tue, 03 Nov 2026 00:28:34 GMT  
		Size: 63.8 MB (63786463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ba4d3770669dba1cb86645b0931ce4e83759c82fa5fca496acf8d04622ff8c0`  
		Last Modified: Tue, 03 Nov 2026 00:28:32 GMT  
		Size: 324.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:969334aca9fafa733eb549898737409a2db9694cd37a30b8ca72f4aade6c8aea`  
		Last Modified: Tue, 03 Nov 2026 00:28:36 GMT  
		Size: 181.1 MB (181081770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63751bcf6dadc3c3ca6ae50b6aeff9788a851cf21304ac0f8091c0e000260179`  
		Last Modified: Tue, 03 Nov 2026 00:28:33 GMT  
		Size: 5.2 KB (5217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:007da30fd0dbc6ab8866362eb9165cf6e7b5cec6825faf468d598ffdf47dc154
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5334093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba0a7e5b39bb058c7786003668fae2dd36b9b34a97441ceabf3cb4d35f03200d`

```dockerfile
```

-	Layers:
	-	`sha256:891cff0835d57a9e95db5e8eb70df4bcd95b537443360684fad2abb9e8335a57`  
		Last Modified: Tue, 03 Nov 2026 00:28:30 GMT  
		Size: 5.3 MB (5298774 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:24df5f010ba63cf921150dc8c90e0de612b65c675e20fea6e106fffcb08b9596`  
		Last Modified: Tue, 03 Nov 2026 00:28:30 GMT  
		Size: 35.3 KB (35319 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:0f2cbd36da41403ddf93b08f7682f95501fd2e22fbd4b728a0e42962d271f529
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.5 MB (295462504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aba3131d9f74d1a8e505de86aa0697e3ff59e76d24580359723d29ea4990a507`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 03 Nov 2026 00:23:12 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 03 Nov 2026 00:23:12 GMT
CMD ["/bin/bash"]
# Tue, 03 Nov 2026 00:26:00 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 03 Nov 2026 00:26:02 GMT
ENV GOSU_VERSION=1.19
# Tue, 03 Nov 2026 00:26:02 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 03 Nov 2026 00:26:41 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 03 Nov 2026 00:26:42 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 03 Nov 2026 00:26:42 GMT
ENV MYSQL_MAJOR=innovation
# Tue, 03 Nov 2026 00:26:42 GMT
ENV MYSQL_VERSION=26.10.0-1.el9
# Tue, 03 Nov 2026 00:26:42 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 03 Nov 2026 00:27:24 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 03 Nov 2026 00:27:24 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 03 Nov 2026 00:27:24 GMT
ENV MYSQL_SHELL_VERSION=26.10.0-1.el9
# Tue, 03 Nov 2026 00:28:16 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 03 Nov 2026 00:28:16 GMT
VOLUME [/var/lib/mysql]
# Tue, 03 Nov 2026 00:28:16 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 00:28:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 00:28:16 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 03 Nov 2026 00:28:16 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:329828f10dd1b721024e28953696281394ad8b6f7621b47c0fb0d2d41e2838ab`  
		Last Modified: Tue, 03 Nov 2026 00:23:23 GMT  
		Size: 45.7 MB (45734040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abb8b963bc245ef2e7d160c6e5ef6e71bca1b0d20b36a48ba155dec212875b97`  
		Last Modified: Tue, 03 Nov 2026 00:28:44 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f360cfcd0c6859691383f9ccef43f51c983b9dbfe96263264b7c376a22ac8ca`  
		Last Modified: Tue, 03 Nov 2026 00:28:43 GMT  
		Size: 737.5 KB (737531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f589dac8ec1fcba3211e9da63231e0ddf87ae39921f10f12f31f24b27fa1473e`  
		Last Modified: Tue, 03 Nov 2026 00:28:44 GMT  
		Size: 5.8 MB (5809137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ac49b392b7845c771c3f701766cdb34b3b945439231c710d9996c7793897366`  
		Last Modified: Tue, 03 Nov 2026 00:28:44 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:111940a3af7aad0208eb3eca6716db74d7e12ad9325efcd8d97fd634c3a787c7`  
		Last Modified: Tue, 03 Nov 2026 00:28:45 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f66cb2d4f38de30497f688d95516e6c73624c74a91bbe718925a18ff2822f3dc`  
		Last Modified: Tue, 03 Nov 2026 00:28:47 GMT  
		Size: 63.8 MB (63823011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01ab56bed6cffb7b414a39f35c2447dcd55e5aaa04aeabc16e9b22e013d46760`  
		Last Modified: Tue, 03 Nov 2026 00:28:45 GMT  
		Size: 324.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b44aa14e230fbb918ff2d6a1c8131447dcdf242f29d1a24b6d153129f91ec328`  
		Last Modified: Tue, 03 Nov 2026 00:28:49 GMT  
		Size: 179.3 MB (179349404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59a4b8888e49d69b7ae0b9e4ba91161cfd4eb35a98c3a14e8f52085233448758`  
		Last Modified: Tue, 03 Nov 2026 00:28:46 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:597a605bfb2209bb1ccad1707c70fb1a59fcb161120f781333646d05ae193467
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5332907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30601a021da51824f13c963dc30a9429f87d36c9fba4f1a6a8b944eb6894c0fd`

```dockerfile
```

-	Layers:
	-	`sha256:1b185e2dd51057c56062cd713e3df44f624e8a5d512a214dbc1ae42d0bc75646`  
		Last Modified: Tue, 03 Nov 2026 00:28:44 GMT  
		Size: 5.3 MB (5297247 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5e5100be39aea4a58c6988e15bffe2b269e64355ddca478523fa2969926694f5`  
		Last Modified: Tue, 03 Nov 2026 00:28:44 GMT  
		Size: 35.7 KB (35660 bytes)  
		MIME: application/vnd.in-toto+json
