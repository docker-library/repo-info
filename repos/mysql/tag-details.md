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
-	[`mysql:26.10.0.1`](#mysql261001)
-	[`mysql:26.10.0.1-oracle`](#mysql261001-oracle)
-	[`mysql:26.10.0.1-oraclelinux9`](#mysql261001-oraclelinux9)
-	[`mysql:8`](#mysql8)
-	[`mysql:8-oracle`](#mysql8-oracle)
-	[`mysql:8-oraclelinux9`](#mysql8-oraclelinux9)
-	[`mysql:8.4`](#mysql84)
-	[`mysql:8.4-oracle`](#mysql84-oracle)
-	[`mysql:8.4-oraclelinux9`](#mysql84-oraclelinux9)
-	[`mysql:8.4.13`](#mysql8413)
-	[`mysql:8.4.13-oracle`](#mysql8413-oracle)
-	[`mysql:8.4.13-oraclelinux9`](#mysql8413-oraclelinux9)
-	[`mysql:8.4.13.1`](#mysql84131)
-	[`mysql:8.4.13.1-oracle`](#mysql84131-oracle)
-	[`mysql:8.4.13.1-oraclelinux9`](#mysql84131-oraclelinux9)
-	[`mysql:9`](#mysql9)
-	[`mysql:9-oracle`](#mysql9-oracle)
-	[`mysql:9-oraclelinux9`](#mysql9-oraclelinux9)
-	[`mysql:9.7`](#mysql97)
-	[`mysql:9.7-oracle`](#mysql97-oracle)
-	[`mysql:9.7-oraclelinux9`](#mysql97-oraclelinux9)
-	[`mysql:9.7.4`](#mysql974)
-	[`mysql:9.7.4-oracle`](#mysql974-oracle)
-	[`mysql:9.7.4-oraclelinux9`](#mysql974-oraclelinux9)
-	[`mysql:9.7.4.1`](#mysql9741)
-	[`mysql:9.7.4.1-oracle`](#mysql9741-oracle)
-	[`mysql:9.7.4.1-oraclelinux9`](#mysql9741-oraclelinux9)
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
$ docker pull mysql@sha256:9092489f49fb59c4ba6c1425c6a59f71f864f24bf4339a5a26b718adc7a8b343
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:26` - linux; amd64

```console
$ docker pull mysql@sha256:6d7dd5acd92b32f3cb1ff3b10f756ebb8ff5a892e4127f8c863d9b36630fcb5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.0 MB (291950020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8959d7c84ab820313180f705e0fe6a177984bda6837fb2fbde78e90ea0dd6f94`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 23 Nov 2026 23:28:05 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 23 Nov 2026 23:28:05 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 23:42:09 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 23 Nov 2026 23:42:11 GMT
ENV GOSU_VERSION=1.19
# Mon, 23 Nov 2026 23:42:11 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 23 Nov 2026 23:42:48 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 23 Nov 2026 23:42:49 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 23 Nov 2026 23:42:49 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 23 Nov 2026 23:42:49 GMT
ENV MYSQL_VERSION=26.10.0.1-1.el9
# Mon, 23 Nov 2026 23:42:49 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 23 Nov 2026 23:43:29 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 23 Nov 2026 23:43:29 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 23 Nov 2026 23:43:29 GMT
ENV MYSQL_SHELL_VERSION=26.10.0.1-1.el9
# Mon, 23 Nov 2026 23:44:16 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 23 Nov 2026 23:44:16 GMT
VOLUME [/var/lib/mysql]
# Mon, 23 Nov 2026 23:44:16 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 23:44:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 23:44:16 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 23 Nov 2026 23:44:16 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:33862e5ceb0800fad63d1008add0a685c61ff1cfa22e73c813a4c9c69a6ad49d`  
		Last Modified: Mon, 23 Nov 2026 23:28:16 GMT  
		Size: 40.0 MB (39952172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f17aa983d06c5706a94ea3104bcf5eb7f5dd614e69af47af2c76cac3405a0c28`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5718e8feb833f561c4e2cd2177b961961fbece83b2e3788ac070bed048a9bc67`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 783.6 KB (783555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bec6c0764f676dc314afeb426a40f39120f783484fc1e74d0676daf668b1da81`  
		Last Modified: Mon, 23 Nov 2026 23:44:41 GMT  
		Size: 6.2 MB (6183917 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91f2e938ce9370560c7df348530c8d7a77610136aa3ec93ac5884fd302f35014`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd7e1f7859f3662d2594a86798903cd9a5d1ad4852ebc2f84819e34db2cd7776`  
		Last Modified: Mon, 23 Nov 2026 23:44:41 GMT  
		Size: 341.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e9cd1db0a2f7e5d02f0da385b84d8ed68a4793586d8353b24644dd940a36751`  
		Last Modified: Mon, 23 Nov 2026 23:44:44 GMT  
		Size: 63.8 MB (63778013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:378e43836b45c57fe747f402fbab58ce53b34dc5c25dac3b55bf325fde70fed3`  
		Last Modified: Mon, 23 Nov 2026 23:44:41 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9644cb7a1c484635239259c2dde93b4c797fb582e8cfa70b9f6cc064dfb3bf33`  
		Last Modified: Mon, 23 Nov 2026 23:44:46 GMT  
		Size: 181.2 MB (181242978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd795b89f2d98b91147fe841a7fe91b46fb00ec0a029d571cedca1e5927cc86d`  
		Last Modified: Mon, 23 Nov 2026 23:44:43 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26` - unknown; unknown

```console
$ docker pull mysql@sha256:e6f625e53aca118bb8978c1490de7e46fc1672b6e75e0bdf7d12088bb9283df3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5357001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:231bcd32a375b24d15f47d03db5f4e97455e6a84a07bf4c074058fb9fd5f23b3`

```dockerfile
```

-	Layers:
	-	`sha256:98073a7be9c871684245bcd680415bc68943a95b51bda8d9e6f2a2352b8aac35`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 5.3 MB (5320723 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:baa7101741f86e227940f7a96601645b3ac7a0dfd4910d7e4b72727f0fe83fdd`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 36.3 KB (36278 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:26` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:dc3aeca2b22d60148907b9fa29bc9b4eb2e4027ea3660bb55085ed9d6de8018c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.4 MB (288359473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b683694ce0dad81a5432491d44801fb5f77063df6545faccb016cfa351d8292`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 23 Nov 2026 23:26:56 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 23 Nov 2026 23:26:56 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 23:41:49 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 23 Nov 2026 23:41:51 GMT
ENV GOSU_VERSION=1.19
# Mon, 23 Nov 2026 23:41:51 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 23 Nov 2026 23:42:32 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 23 Nov 2026 23:42:33 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 23 Nov 2026 23:42:33 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 23 Nov 2026 23:42:33 GMT
ENV MYSQL_VERSION=26.10.0.1-1.el9
# Mon, 23 Nov 2026 23:42:33 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 23 Nov 2026 23:43:21 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 23 Nov 2026 23:43:21 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 23 Nov 2026 23:43:21 GMT
ENV MYSQL_SHELL_VERSION=26.10.0.1-1.el9
# Mon, 23 Nov 2026 23:44:13 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 23 Nov 2026 23:44:13 GMT
VOLUME [/var/lib/mysql]
# Mon, 23 Nov 2026 23:44:13 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 23:44:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 23:44:13 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 23 Nov 2026 23:44:13 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:417cdca15a600d512dcff11d2b366223724adbe60562114464784b1662bee681`  
		Last Modified: Mon, 23 Nov 2026 23:27:06 GMT  
		Size: 38.5 MB (38494185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72e901aa8ec2a83f07c6cb1bd9ea3143792021114287bc8b401fbee16136312e`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3b305bcf60e1888101333ce4ec1a312937de00da66c91477d980bd3dddec470`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 737.5 KB (737525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe5ac272ac603054f522245644aded59a6b4372779d7960c7599873322d60bd0`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 5.8 MB (5803067 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e20836ddd28888fea4e20763a96d947480f6ab73ea486c4873ec2505c75d971`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7998d70c2d4fe30322aba0635a3cce7716f09a67d430b32c0e2151eabca266fc`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dae5fcc4677afe6ad389d118df80e87f614f7fffd4bbeedad4057afb8582ec6`  
		Last Modified: Mon, 23 Nov 2026 23:44:43 GMT  
		Size: 63.8 MB (63806423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c389571bad410b3da25296e742af872f753004f799c96a57ef18bfb80a9490e2`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fc8fed9b0dc49d2a5e630ec077a6c920eafb4e30760b730b919a5dc0f64dbdf`  
		Last Modified: Mon, 23 Nov 2026 23:44:45 GMT  
		Size: 179.5 MB (179508889 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1641a5ff7764b1d7f9513921a4da6f4eb61b46c83d669518a563b604c34151a5`  
		Last Modified: Mon, 23 Nov 2026 23:44:41 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26` - unknown; unknown

```console
$ docker pull mysql@sha256:49906f0ae86dbd3026af5909457dbb119efb95edea185532944b08c56280119f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5355888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b05b3300d18d63584883cbc1c92e067eb46024e8b2c810ce7f17daad100a98ab`

```dockerfile
```

-	Layers:
	-	`sha256:b8e4c638cd48991855c12764a04f7cbf5fe6701ab00697784a69d6615ba88562`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 5.3 MB (5319232 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ca7f47400d33c110c62c3c8e0d1f00410676e5431547a6dc9a37978e84f8536`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 36.7 KB (36656 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:26-oracle`

```console
$ docker pull mysql@sha256:9092489f49fb59c4ba6c1425c6a59f71f864f24bf4339a5a26b718adc7a8b343
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:26-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:6d7dd5acd92b32f3cb1ff3b10f756ebb8ff5a892e4127f8c863d9b36630fcb5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.0 MB (291950020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8959d7c84ab820313180f705e0fe6a177984bda6837fb2fbde78e90ea0dd6f94`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 23 Nov 2026 23:28:05 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 23 Nov 2026 23:28:05 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 23:42:09 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 23 Nov 2026 23:42:11 GMT
ENV GOSU_VERSION=1.19
# Mon, 23 Nov 2026 23:42:11 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 23 Nov 2026 23:42:48 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 23 Nov 2026 23:42:49 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 23 Nov 2026 23:42:49 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 23 Nov 2026 23:42:49 GMT
ENV MYSQL_VERSION=26.10.0.1-1.el9
# Mon, 23 Nov 2026 23:42:49 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 23 Nov 2026 23:43:29 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 23 Nov 2026 23:43:29 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 23 Nov 2026 23:43:29 GMT
ENV MYSQL_SHELL_VERSION=26.10.0.1-1.el9
# Mon, 23 Nov 2026 23:44:16 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 23 Nov 2026 23:44:16 GMT
VOLUME [/var/lib/mysql]
# Mon, 23 Nov 2026 23:44:16 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 23:44:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 23:44:16 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 23 Nov 2026 23:44:16 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:33862e5ceb0800fad63d1008add0a685c61ff1cfa22e73c813a4c9c69a6ad49d`  
		Last Modified: Mon, 23 Nov 2026 23:28:16 GMT  
		Size: 40.0 MB (39952172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f17aa983d06c5706a94ea3104bcf5eb7f5dd614e69af47af2c76cac3405a0c28`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5718e8feb833f561c4e2cd2177b961961fbece83b2e3788ac070bed048a9bc67`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 783.6 KB (783555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bec6c0764f676dc314afeb426a40f39120f783484fc1e74d0676daf668b1da81`  
		Last Modified: Mon, 23 Nov 2026 23:44:41 GMT  
		Size: 6.2 MB (6183917 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91f2e938ce9370560c7df348530c8d7a77610136aa3ec93ac5884fd302f35014`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd7e1f7859f3662d2594a86798903cd9a5d1ad4852ebc2f84819e34db2cd7776`  
		Last Modified: Mon, 23 Nov 2026 23:44:41 GMT  
		Size: 341.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e9cd1db0a2f7e5d02f0da385b84d8ed68a4793586d8353b24644dd940a36751`  
		Last Modified: Mon, 23 Nov 2026 23:44:44 GMT  
		Size: 63.8 MB (63778013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:378e43836b45c57fe747f402fbab58ce53b34dc5c25dac3b55bf325fde70fed3`  
		Last Modified: Mon, 23 Nov 2026 23:44:41 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9644cb7a1c484635239259c2dde93b4c797fb582e8cfa70b9f6cc064dfb3bf33`  
		Last Modified: Mon, 23 Nov 2026 23:44:46 GMT  
		Size: 181.2 MB (181242978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd795b89f2d98b91147fe841a7fe91b46fb00ec0a029d571cedca1e5927cc86d`  
		Last Modified: Mon, 23 Nov 2026 23:44:43 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:e6f625e53aca118bb8978c1490de7e46fc1672b6e75e0bdf7d12088bb9283df3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5357001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:231bcd32a375b24d15f47d03db5f4e97455e6a84a07bf4c074058fb9fd5f23b3`

```dockerfile
```

-	Layers:
	-	`sha256:98073a7be9c871684245bcd680415bc68943a95b51bda8d9e6f2a2352b8aac35`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 5.3 MB (5320723 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:baa7101741f86e227940f7a96601645b3ac7a0dfd4910d7e4b72727f0fe83fdd`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 36.3 KB (36278 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:26-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:dc3aeca2b22d60148907b9fa29bc9b4eb2e4027ea3660bb55085ed9d6de8018c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.4 MB (288359473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b683694ce0dad81a5432491d44801fb5f77063df6545faccb016cfa351d8292`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 23 Nov 2026 23:26:56 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 23 Nov 2026 23:26:56 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 23:41:49 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 23 Nov 2026 23:41:51 GMT
ENV GOSU_VERSION=1.19
# Mon, 23 Nov 2026 23:41:51 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 23 Nov 2026 23:42:32 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 23 Nov 2026 23:42:33 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 23 Nov 2026 23:42:33 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 23 Nov 2026 23:42:33 GMT
ENV MYSQL_VERSION=26.10.0.1-1.el9
# Mon, 23 Nov 2026 23:42:33 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 23 Nov 2026 23:43:21 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 23 Nov 2026 23:43:21 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 23 Nov 2026 23:43:21 GMT
ENV MYSQL_SHELL_VERSION=26.10.0.1-1.el9
# Mon, 23 Nov 2026 23:44:13 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 23 Nov 2026 23:44:13 GMT
VOLUME [/var/lib/mysql]
# Mon, 23 Nov 2026 23:44:13 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 23:44:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 23:44:13 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 23 Nov 2026 23:44:13 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:417cdca15a600d512dcff11d2b366223724adbe60562114464784b1662bee681`  
		Last Modified: Mon, 23 Nov 2026 23:27:06 GMT  
		Size: 38.5 MB (38494185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72e901aa8ec2a83f07c6cb1bd9ea3143792021114287bc8b401fbee16136312e`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3b305bcf60e1888101333ce4ec1a312937de00da66c91477d980bd3dddec470`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 737.5 KB (737525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe5ac272ac603054f522245644aded59a6b4372779d7960c7599873322d60bd0`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 5.8 MB (5803067 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e20836ddd28888fea4e20763a96d947480f6ab73ea486c4873ec2505c75d971`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7998d70c2d4fe30322aba0635a3cce7716f09a67d430b32c0e2151eabca266fc`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dae5fcc4677afe6ad389d118df80e87f614f7fffd4bbeedad4057afb8582ec6`  
		Last Modified: Mon, 23 Nov 2026 23:44:43 GMT  
		Size: 63.8 MB (63806423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c389571bad410b3da25296e742af872f753004f799c96a57ef18bfb80a9490e2`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fc8fed9b0dc49d2a5e630ec077a6c920eafb4e30760b730b919a5dc0f64dbdf`  
		Last Modified: Mon, 23 Nov 2026 23:44:45 GMT  
		Size: 179.5 MB (179508889 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1641a5ff7764b1d7f9513921a4da6f4eb61b46c83d669518a563b604c34151a5`  
		Last Modified: Mon, 23 Nov 2026 23:44:41 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:49906f0ae86dbd3026af5909457dbb119efb95edea185532944b08c56280119f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5355888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b05b3300d18d63584883cbc1c92e067eb46024e8b2c810ce7f17daad100a98ab`

```dockerfile
```

-	Layers:
	-	`sha256:b8e4c638cd48991855c12764a04f7cbf5fe6701ab00697784a69d6615ba88562`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 5.3 MB (5319232 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ca7f47400d33c110c62c3c8e0d1f00410676e5431547a6dc9a37978e84f8536`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 36.7 KB (36656 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:26-oraclelinux9`

```console
$ docker pull mysql@sha256:9092489f49fb59c4ba6c1425c6a59f71f864f24bf4339a5a26b718adc7a8b343
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:26-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:6d7dd5acd92b32f3cb1ff3b10f756ebb8ff5a892e4127f8c863d9b36630fcb5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.0 MB (291950020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8959d7c84ab820313180f705e0fe6a177984bda6837fb2fbde78e90ea0dd6f94`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 23 Nov 2026 23:28:05 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 23 Nov 2026 23:28:05 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 23:42:09 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 23 Nov 2026 23:42:11 GMT
ENV GOSU_VERSION=1.19
# Mon, 23 Nov 2026 23:42:11 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 23 Nov 2026 23:42:48 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 23 Nov 2026 23:42:49 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 23 Nov 2026 23:42:49 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 23 Nov 2026 23:42:49 GMT
ENV MYSQL_VERSION=26.10.0.1-1.el9
# Mon, 23 Nov 2026 23:42:49 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 23 Nov 2026 23:43:29 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 23 Nov 2026 23:43:29 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 23 Nov 2026 23:43:29 GMT
ENV MYSQL_SHELL_VERSION=26.10.0.1-1.el9
# Mon, 23 Nov 2026 23:44:16 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 23 Nov 2026 23:44:16 GMT
VOLUME [/var/lib/mysql]
# Mon, 23 Nov 2026 23:44:16 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 23:44:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 23:44:16 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 23 Nov 2026 23:44:16 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:33862e5ceb0800fad63d1008add0a685c61ff1cfa22e73c813a4c9c69a6ad49d`  
		Last Modified: Mon, 23 Nov 2026 23:28:16 GMT  
		Size: 40.0 MB (39952172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f17aa983d06c5706a94ea3104bcf5eb7f5dd614e69af47af2c76cac3405a0c28`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5718e8feb833f561c4e2cd2177b961961fbece83b2e3788ac070bed048a9bc67`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 783.6 KB (783555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bec6c0764f676dc314afeb426a40f39120f783484fc1e74d0676daf668b1da81`  
		Last Modified: Mon, 23 Nov 2026 23:44:41 GMT  
		Size: 6.2 MB (6183917 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91f2e938ce9370560c7df348530c8d7a77610136aa3ec93ac5884fd302f35014`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd7e1f7859f3662d2594a86798903cd9a5d1ad4852ebc2f84819e34db2cd7776`  
		Last Modified: Mon, 23 Nov 2026 23:44:41 GMT  
		Size: 341.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e9cd1db0a2f7e5d02f0da385b84d8ed68a4793586d8353b24644dd940a36751`  
		Last Modified: Mon, 23 Nov 2026 23:44:44 GMT  
		Size: 63.8 MB (63778013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:378e43836b45c57fe747f402fbab58ce53b34dc5c25dac3b55bf325fde70fed3`  
		Last Modified: Mon, 23 Nov 2026 23:44:41 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9644cb7a1c484635239259c2dde93b4c797fb582e8cfa70b9f6cc064dfb3bf33`  
		Last Modified: Mon, 23 Nov 2026 23:44:46 GMT  
		Size: 181.2 MB (181242978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd795b89f2d98b91147fe841a7fe91b46fb00ec0a029d571cedca1e5927cc86d`  
		Last Modified: Mon, 23 Nov 2026 23:44:43 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:e6f625e53aca118bb8978c1490de7e46fc1672b6e75e0bdf7d12088bb9283df3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5357001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:231bcd32a375b24d15f47d03db5f4e97455e6a84a07bf4c074058fb9fd5f23b3`

```dockerfile
```

-	Layers:
	-	`sha256:98073a7be9c871684245bcd680415bc68943a95b51bda8d9e6f2a2352b8aac35`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 5.3 MB (5320723 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:baa7101741f86e227940f7a96601645b3ac7a0dfd4910d7e4b72727f0fe83fdd`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 36.3 KB (36278 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:26-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:dc3aeca2b22d60148907b9fa29bc9b4eb2e4027ea3660bb55085ed9d6de8018c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.4 MB (288359473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b683694ce0dad81a5432491d44801fb5f77063df6545faccb016cfa351d8292`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 23 Nov 2026 23:26:56 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 23 Nov 2026 23:26:56 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 23:41:49 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 23 Nov 2026 23:41:51 GMT
ENV GOSU_VERSION=1.19
# Mon, 23 Nov 2026 23:41:51 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 23 Nov 2026 23:42:32 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 23 Nov 2026 23:42:33 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 23 Nov 2026 23:42:33 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 23 Nov 2026 23:42:33 GMT
ENV MYSQL_VERSION=26.10.0.1-1.el9
# Mon, 23 Nov 2026 23:42:33 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 23 Nov 2026 23:43:21 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 23 Nov 2026 23:43:21 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 23 Nov 2026 23:43:21 GMT
ENV MYSQL_SHELL_VERSION=26.10.0.1-1.el9
# Mon, 23 Nov 2026 23:44:13 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 23 Nov 2026 23:44:13 GMT
VOLUME [/var/lib/mysql]
# Mon, 23 Nov 2026 23:44:13 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 23:44:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 23:44:13 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 23 Nov 2026 23:44:13 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:417cdca15a600d512dcff11d2b366223724adbe60562114464784b1662bee681`  
		Last Modified: Mon, 23 Nov 2026 23:27:06 GMT  
		Size: 38.5 MB (38494185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72e901aa8ec2a83f07c6cb1bd9ea3143792021114287bc8b401fbee16136312e`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3b305bcf60e1888101333ce4ec1a312937de00da66c91477d980bd3dddec470`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 737.5 KB (737525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe5ac272ac603054f522245644aded59a6b4372779d7960c7599873322d60bd0`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 5.8 MB (5803067 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e20836ddd28888fea4e20763a96d947480f6ab73ea486c4873ec2505c75d971`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7998d70c2d4fe30322aba0635a3cce7716f09a67d430b32c0e2151eabca266fc`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dae5fcc4677afe6ad389d118df80e87f614f7fffd4bbeedad4057afb8582ec6`  
		Last Modified: Mon, 23 Nov 2026 23:44:43 GMT  
		Size: 63.8 MB (63806423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c389571bad410b3da25296e742af872f753004f799c96a57ef18bfb80a9490e2`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fc8fed9b0dc49d2a5e630ec077a6c920eafb4e30760b730b919a5dc0f64dbdf`  
		Last Modified: Mon, 23 Nov 2026 23:44:45 GMT  
		Size: 179.5 MB (179508889 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1641a5ff7764b1d7f9513921a4da6f4eb61b46c83d669518a563b604c34151a5`  
		Last Modified: Mon, 23 Nov 2026 23:44:41 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:49906f0ae86dbd3026af5909457dbb119efb95edea185532944b08c56280119f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5355888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b05b3300d18d63584883cbc1c92e067eb46024e8b2c810ce7f17daad100a98ab`

```dockerfile
```

-	Layers:
	-	`sha256:b8e4c638cd48991855c12764a04f7cbf5fe6701ab00697784a69d6615ba88562`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 5.3 MB (5319232 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ca7f47400d33c110c62c3c8e0d1f00410676e5431547a6dc9a37978e84f8536`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 36.7 KB (36656 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:26.10`

```console
$ docker pull mysql@sha256:9092489f49fb59c4ba6c1425c6a59f71f864f24bf4339a5a26b718adc7a8b343
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:26.10` - linux; amd64

```console
$ docker pull mysql@sha256:6d7dd5acd92b32f3cb1ff3b10f756ebb8ff5a892e4127f8c863d9b36630fcb5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.0 MB (291950020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8959d7c84ab820313180f705e0fe6a177984bda6837fb2fbde78e90ea0dd6f94`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 23 Nov 2026 23:28:05 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 23 Nov 2026 23:28:05 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 23:42:09 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 23 Nov 2026 23:42:11 GMT
ENV GOSU_VERSION=1.19
# Mon, 23 Nov 2026 23:42:11 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 23 Nov 2026 23:42:48 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 23 Nov 2026 23:42:49 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 23 Nov 2026 23:42:49 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 23 Nov 2026 23:42:49 GMT
ENV MYSQL_VERSION=26.10.0.1-1.el9
# Mon, 23 Nov 2026 23:42:49 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 23 Nov 2026 23:43:29 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 23 Nov 2026 23:43:29 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 23 Nov 2026 23:43:29 GMT
ENV MYSQL_SHELL_VERSION=26.10.0.1-1.el9
# Mon, 23 Nov 2026 23:44:16 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 23 Nov 2026 23:44:16 GMT
VOLUME [/var/lib/mysql]
# Mon, 23 Nov 2026 23:44:16 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 23:44:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 23:44:16 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 23 Nov 2026 23:44:16 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:33862e5ceb0800fad63d1008add0a685c61ff1cfa22e73c813a4c9c69a6ad49d`  
		Last Modified: Mon, 23 Nov 2026 23:28:16 GMT  
		Size: 40.0 MB (39952172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f17aa983d06c5706a94ea3104bcf5eb7f5dd614e69af47af2c76cac3405a0c28`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5718e8feb833f561c4e2cd2177b961961fbece83b2e3788ac070bed048a9bc67`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 783.6 KB (783555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bec6c0764f676dc314afeb426a40f39120f783484fc1e74d0676daf668b1da81`  
		Last Modified: Mon, 23 Nov 2026 23:44:41 GMT  
		Size: 6.2 MB (6183917 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91f2e938ce9370560c7df348530c8d7a77610136aa3ec93ac5884fd302f35014`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd7e1f7859f3662d2594a86798903cd9a5d1ad4852ebc2f84819e34db2cd7776`  
		Last Modified: Mon, 23 Nov 2026 23:44:41 GMT  
		Size: 341.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e9cd1db0a2f7e5d02f0da385b84d8ed68a4793586d8353b24644dd940a36751`  
		Last Modified: Mon, 23 Nov 2026 23:44:44 GMT  
		Size: 63.8 MB (63778013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:378e43836b45c57fe747f402fbab58ce53b34dc5c25dac3b55bf325fde70fed3`  
		Last Modified: Mon, 23 Nov 2026 23:44:41 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9644cb7a1c484635239259c2dde93b4c797fb582e8cfa70b9f6cc064dfb3bf33`  
		Last Modified: Mon, 23 Nov 2026 23:44:46 GMT  
		Size: 181.2 MB (181242978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd795b89f2d98b91147fe841a7fe91b46fb00ec0a029d571cedca1e5927cc86d`  
		Last Modified: Mon, 23 Nov 2026 23:44:43 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26.10` - unknown; unknown

```console
$ docker pull mysql@sha256:e6f625e53aca118bb8978c1490de7e46fc1672b6e75e0bdf7d12088bb9283df3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5357001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:231bcd32a375b24d15f47d03db5f4e97455e6a84a07bf4c074058fb9fd5f23b3`

```dockerfile
```

-	Layers:
	-	`sha256:98073a7be9c871684245bcd680415bc68943a95b51bda8d9e6f2a2352b8aac35`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 5.3 MB (5320723 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:baa7101741f86e227940f7a96601645b3ac7a0dfd4910d7e4b72727f0fe83fdd`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 36.3 KB (36278 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:26.10` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:dc3aeca2b22d60148907b9fa29bc9b4eb2e4027ea3660bb55085ed9d6de8018c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.4 MB (288359473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b683694ce0dad81a5432491d44801fb5f77063df6545faccb016cfa351d8292`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 23 Nov 2026 23:26:56 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 23 Nov 2026 23:26:56 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 23:41:49 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 23 Nov 2026 23:41:51 GMT
ENV GOSU_VERSION=1.19
# Mon, 23 Nov 2026 23:41:51 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 23 Nov 2026 23:42:32 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 23 Nov 2026 23:42:33 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 23 Nov 2026 23:42:33 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 23 Nov 2026 23:42:33 GMT
ENV MYSQL_VERSION=26.10.0.1-1.el9
# Mon, 23 Nov 2026 23:42:33 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 23 Nov 2026 23:43:21 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 23 Nov 2026 23:43:21 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 23 Nov 2026 23:43:21 GMT
ENV MYSQL_SHELL_VERSION=26.10.0.1-1.el9
# Mon, 23 Nov 2026 23:44:13 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 23 Nov 2026 23:44:13 GMT
VOLUME [/var/lib/mysql]
# Mon, 23 Nov 2026 23:44:13 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 23:44:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 23:44:13 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 23 Nov 2026 23:44:13 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:417cdca15a600d512dcff11d2b366223724adbe60562114464784b1662bee681`  
		Last Modified: Mon, 23 Nov 2026 23:27:06 GMT  
		Size: 38.5 MB (38494185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72e901aa8ec2a83f07c6cb1bd9ea3143792021114287bc8b401fbee16136312e`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3b305bcf60e1888101333ce4ec1a312937de00da66c91477d980bd3dddec470`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 737.5 KB (737525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe5ac272ac603054f522245644aded59a6b4372779d7960c7599873322d60bd0`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 5.8 MB (5803067 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e20836ddd28888fea4e20763a96d947480f6ab73ea486c4873ec2505c75d971`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7998d70c2d4fe30322aba0635a3cce7716f09a67d430b32c0e2151eabca266fc`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dae5fcc4677afe6ad389d118df80e87f614f7fffd4bbeedad4057afb8582ec6`  
		Last Modified: Mon, 23 Nov 2026 23:44:43 GMT  
		Size: 63.8 MB (63806423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c389571bad410b3da25296e742af872f753004f799c96a57ef18bfb80a9490e2`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fc8fed9b0dc49d2a5e630ec077a6c920eafb4e30760b730b919a5dc0f64dbdf`  
		Last Modified: Mon, 23 Nov 2026 23:44:45 GMT  
		Size: 179.5 MB (179508889 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1641a5ff7764b1d7f9513921a4da6f4eb61b46c83d669518a563b604c34151a5`  
		Last Modified: Mon, 23 Nov 2026 23:44:41 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26.10` - unknown; unknown

```console
$ docker pull mysql@sha256:49906f0ae86dbd3026af5909457dbb119efb95edea185532944b08c56280119f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5355888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b05b3300d18d63584883cbc1c92e067eb46024e8b2c810ce7f17daad100a98ab`

```dockerfile
```

-	Layers:
	-	`sha256:b8e4c638cd48991855c12764a04f7cbf5fe6701ab00697784a69d6615ba88562`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 5.3 MB (5319232 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ca7f47400d33c110c62c3c8e0d1f00410676e5431547a6dc9a37978e84f8536`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 36.7 KB (36656 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:26.10-oracle`

```console
$ docker pull mysql@sha256:9092489f49fb59c4ba6c1425c6a59f71f864f24bf4339a5a26b718adc7a8b343
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:26.10-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:6d7dd5acd92b32f3cb1ff3b10f756ebb8ff5a892e4127f8c863d9b36630fcb5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.0 MB (291950020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8959d7c84ab820313180f705e0fe6a177984bda6837fb2fbde78e90ea0dd6f94`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 23 Nov 2026 23:28:05 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 23 Nov 2026 23:28:05 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 23:42:09 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 23 Nov 2026 23:42:11 GMT
ENV GOSU_VERSION=1.19
# Mon, 23 Nov 2026 23:42:11 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 23 Nov 2026 23:42:48 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 23 Nov 2026 23:42:49 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 23 Nov 2026 23:42:49 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 23 Nov 2026 23:42:49 GMT
ENV MYSQL_VERSION=26.10.0.1-1.el9
# Mon, 23 Nov 2026 23:42:49 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 23 Nov 2026 23:43:29 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 23 Nov 2026 23:43:29 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 23 Nov 2026 23:43:29 GMT
ENV MYSQL_SHELL_VERSION=26.10.0.1-1.el9
# Mon, 23 Nov 2026 23:44:16 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 23 Nov 2026 23:44:16 GMT
VOLUME [/var/lib/mysql]
# Mon, 23 Nov 2026 23:44:16 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 23:44:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 23:44:16 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 23 Nov 2026 23:44:16 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:33862e5ceb0800fad63d1008add0a685c61ff1cfa22e73c813a4c9c69a6ad49d`  
		Last Modified: Mon, 23 Nov 2026 23:28:16 GMT  
		Size: 40.0 MB (39952172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f17aa983d06c5706a94ea3104bcf5eb7f5dd614e69af47af2c76cac3405a0c28`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5718e8feb833f561c4e2cd2177b961961fbece83b2e3788ac070bed048a9bc67`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 783.6 KB (783555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bec6c0764f676dc314afeb426a40f39120f783484fc1e74d0676daf668b1da81`  
		Last Modified: Mon, 23 Nov 2026 23:44:41 GMT  
		Size: 6.2 MB (6183917 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91f2e938ce9370560c7df348530c8d7a77610136aa3ec93ac5884fd302f35014`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd7e1f7859f3662d2594a86798903cd9a5d1ad4852ebc2f84819e34db2cd7776`  
		Last Modified: Mon, 23 Nov 2026 23:44:41 GMT  
		Size: 341.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e9cd1db0a2f7e5d02f0da385b84d8ed68a4793586d8353b24644dd940a36751`  
		Last Modified: Mon, 23 Nov 2026 23:44:44 GMT  
		Size: 63.8 MB (63778013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:378e43836b45c57fe747f402fbab58ce53b34dc5c25dac3b55bf325fde70fed3`  
		Last Modified: Mon, 23 Nov 2026 23:44:41 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9644cb7a1c484635239259c2dde93b4c797fb582e8cfa70b9f6cc064dfb3bf33`  
		Last Modified: Mon, 23 Nov 2026 23:44:46 GMT  
		Size: 181.2 MB (181242978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd795b89f2d98b91147fe841a7fe91b46fb00ec0a029d571cedca1e5927cc86d`  
		Last Modified: Mon, 23 Nov 2026 23:44:43 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26.10-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:e6f625e53aca118bb8978c1490de7e46fc1672b6e75e0bdf7d12088bb9283df3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5357001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:231bcd32a375b24d15f47d03db5f4e97455e6a84a07bf4c074058fb9fd5f23b3`

```dockerfile
```

-	Layers:
	-	`sha256:98073a7be9c871684245bcd680415bc68943a95b51bda8d9e6f2a2352b8aac35`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 5.3 MB (5320723 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:baa7101741f86e227940f7a96601645b3ac7a0dfd4910d7e4b72727f0fe83fdd`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 36.3 KB (36278 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:26.10-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:dc3aeca2b22d60148907b9fa29bc9b4eb2e4027ea3660bb55085ed9d6de8018c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.4 MB (288359473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b683694ce0dad81a5432491d44801fb5f77063df6545faccb016cfa351d8292`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 23 Nov 2026 23:26:56 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 23 Nov 2026 23:26:56 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 23:41:49 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 23 Nov 2026 23:41:51 GMT
ENV GOSU_VERSION=1.19
# Mon, 23 Nov 2026 23:41:51 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 23 Nov 2026 23:42:32 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 23 Nov 2026 23:42:33 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 23 Nov 2026 23:42:33 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 23 Nov 2026 23:42:33 GMT
ENV MYSQL_VERSION=26.10.0.1-1.el9
# Mon, 23 Nov 2026 23:42:33 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 23 Nov 2026 23:43:21 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 23 Nov 2026 23:43:21 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 23 Nov 2026 23:43:21 GMT
ENV MYSQL_SHELL_VERSION=26.10.0.1-1.el9
# Mon, 23 Nov 2026 23:44:13 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 23 Nov 2026 23:44:13 GMT
VOLUME [/var/lib/mysql]
# Mon, 23 Nov 2026 23:44:13 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 23:44:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 23:44:13 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 23 Nov 2026 23:44:13 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:417cdca15a600d512dcff11d2b366223724adbe60562114464784b1662bee681`  
		Last Modified: Mon, 23 Nov 2026 23:27:06 GMT  
		Size: 38.5 MB (38494185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72e901aa8ec2a83f07c6cb1bd9ea3143792021114287bc8b401fbee16136312e`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3b305bcf60e1888101333ce4ec1a312937de00da66c91477d980bd3dddec470`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 737.5 KB (737525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe5ac272ac603054f522245644aded59a6b4372779d7960c7599873322d60bd0`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 5.8 MB (5803067 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e20836ddd28888fea4e20763a96d947480f6ab73ea486c4873ec2505c75d971`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7998d70c2d4fe30322aba0635a3cce7716f09a67d430b32c0e2151eabca266fc`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dae5fcc4677afe6ad389d118df80e87f614f7fffd4bbeedad4057afb8582ec6`  
		Last Modified: Mon, 23 Nov 2026 23:44:43 GMT  
		Size: 63.8 MB (63806423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c389571bad410b3da25296e742af872f753004f799c96a57ef18bfb80a9490e2`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fc8fed9b0dc49d2a5e630ec077a6c920eafb4e30760b730b919a5dc0f64dbdf`  
		Last Modified: Mon, 23 Nov 2026 23:44:45 GMT  
		Size: 179.5 MB (179508889 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1641a5ff7764b1d7f9513921a4da6f4eb61b46c83d669518a563b604c34151a5`  
		Last Modified: Mon, 23 Nov 2026 23:44:41 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26.10-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:49906f0ae86dbd3026af5909457dbb119efb95edea185532944b08c56280119f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5355888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b05b3300d18d63584883cbc1c92e067eb46024e8b2c810ce7f17daad100a98ab`

```dockerfile
```

-	Layers:
	-	`sha256:b8e4c638cd48991855c12764a04f7cbf5fe6701ab00697784a69d6615ba88562`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 5.3 MB (5319232 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ca7f47400d33c110c62c3c8e0d1f00410676e5431547a6dc9a37978e84f8536`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 36.7 KB (36656 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:26.10-oraclelinux9`

```console
$ docker pull mysql@sha256:9092489f49fb59c4ba6c1425c6a59f71f864f24bf4339a5a26b718adc7a8b343
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:26.10-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:6d7dd5acd92b32f3cb1ff3b10f756ebb8ff5a892e4127f8c863d9b36630fcb5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.0 MB (291950020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8959d7c84ab820313180f705e0fe6a177984bda6837fb2fbde78e90ea0dd6f94`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 23 Nov 2026 23:28:05 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 23 Nov 2026 23:28:05 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 23:42:09 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 23 Nov 2026 23:42:11 GMT
ENV GOSU_VERSION=1.19
# Mon, 23 Nov 2026 23:42:11 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 23 Nov 2026 23:42:48 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 23 Nov 2026 23:42:49 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 23 Nov 2026 23:42:49 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 23 Nov 2026 23:42:49 GMT
ENV MYSQL_VERSION=26.10.0.1-1.el9
# Mon, 23 Nov 2026 23:42:49 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 23 Nov 2026 23:43:29 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 23 Nov 2026 23:43:29 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 23 Nov 2026 23:43:29 GMT
ENV MYSQL_SHELL_VERSION=26.10.0.1-1.el9
# Mon, 23 Nov 2026 23:44:16 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 23 Nov 2026 23:44:16 GMT
VOLUME [/var/lib/mysql]
# Mon, 23 Nov 2026 23:44:16 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 23:44:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 23:44:16 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 23 Nov 2026 23:44:16 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:33862e5ceb0800fad63d1008add0a685c61ff1cfa22e73c813a4c9c69a6ad49d`  
		Last Modified: Mon, 23 Nov 2026 23:28:16 GMT  
		Size: 40.0 MB (39952172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f17aa983d06c5706a94ea3104bcf5eb7f5dd614e69af47af2c76cac3405a0c28`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5718e8feb833f561c4e2cd2177b961961fbece83b2e3788ac070bed048a9bc67`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 783.6 KB (783555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bec6c0764f676dc314afeb426a40f39120f783484fc1e74d0676daf668b1da81`  
		Last Modified: Mon, 23 Nov 2026 23:44:41 GMT  
		Size: 6.2 MB (6183917 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91f2e938ce9370560c7df348530c8d7a77610136aa3ec93ac5884fd302f35014`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd7e1f7859f3662d2594a86798903cd9a5d1ad4852ebc2f84819e34db2cd7776`  
		Last Modified: Mon, 23 Nov 2026 23:44:41 GMT  
		Size: 341.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e9cd1db0a2f7e5d02f0da385b84d8ed68a4793586d8353b24644dd940a36751`  
		Last Modified: Mon, 23 Nov 2026 23:44:44 GMT  
		Size: 63.8 MB (63778013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:378e43836b45c57fe747f402fbab58ce53b34dc5c25dac3b55bf325fde70fed3`  
		Last Modified: Mon, 23 Nov 2026 23:44:41 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9644cb7a1c484635239259c2dde93b4c797fb582e8cfa70b9f6cc064dfb3bf33`  
		Last Modified: Mon, 23 Nov 2026 23:44:46 GMT  
		Size: 181.2 MB (181242978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd795b89f2d98b91147fe841a7fe91b46fb00ec0a029d571cedca1e5927cc86d`  
		Last Modified: Mon, 23 Nov 2026 23:44:43 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26.10-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:e6f625e53aca118bb8978c1490de7e46fc1672b6e75e0bdf7d12088bb9283df3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5357001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:231bcd32a375b24d15f47d03db5f4e97455e6a84a07bf4c074058fb9fd5f23b3`

```dockerfile
```

-	Layers:
	-	`sha256:98073a7be9c871684245bcd680415bc68943a95b51bda8d9e6f2a2352b8aac35`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 5.3 MB (5320723 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:baa7101741f86e227940f7a96601645b3ac7a0dfd4910d7e4b72727f0fe83fdd`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 36.3 KB (36278 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:26.10-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:dc3aeca2b22d60148907b9fa29bc9b4eb2e4027ea3660bb55085ed9d6de8018c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.4 MB (288359473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b683694ce0dad81a5432491d44801fb5f77063df6545faccb016cfa351d8292`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 23 Nov 2026 23:26:56 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 23 Nov 2026 23:26:56 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 23:41:49 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 23 Nov 2026 23:41:51 GMT
ENV GOSU_VERSION=1.19
# Mon, 23 Nov 2026 23:41:51 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 23 Nov 2026 23:42:32 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 23 Nov 2026 23:42:33 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 23 Nov 2026 23:42:33 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 23 Nov 2026 23:42:33 GMT
ENV MYSQL_VERSION=26.10.0.1-1.el9
# Mon, 23 Nov 2026 23:42:33 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 23 Nov 2026 23:43:21 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 23 Nov 2026 23:43:21 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 23 Nov 2026 23:43:21 GMT
ENV MYSQL_SHELL_VERSION=26.10.0.1-1.el9
# Mon, 23 Nov 2026 23:44:13 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 23 Nov 2026 23:44:13 GMT
VOLUME [/var/lib/mysql]
# Mon, 23 Nov 2026 23:44:13 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 23:44:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 23:44:13 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 23 Nov 2026 23:44:13 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:417cdca15a600d512dcff11d2b366223724adbe60562114464784b1662bee681`  
		Last Modified: Mon, 23 Nov 2026 23:27:06 GMT  
		Size: 38.5 MB (38494185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72e901aa8ec2a83f07c6cb1bd9ea3143792021114287bc8b401fbee16136312e`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3b305bcf60e1888101333ce4ec1a312937de00da66c91477d980bd3dddec470`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 737.5 KB (737525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe5ac272ac603054f522245644aded59a6b4372779d7960c7599873322d60bd0`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 5.8 MB (5803067 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e20836ddd28888fea4e20763a96d947480f6ab73ea486c4873ec2505c75d971`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7998d70c2d4fe30322aba0635a3cce7716f09a67d430b32c0e2151eabca266fc`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dae5fcc4677afe6ad389d118df80e87f614f7fffd4bbeedad4057afb8582ec6`  
		Last Modified: Mon, 23 Nov 2026 23:44:43 GMT  
		Size: 63.8 MB (63806423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c389571bad410b3da25296e742af872f753004f799c96a57ef18bfb80a9490e2`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fc8fed9b0dc49d2a5e630ec077a6c920eafb4e30760b730b919a5dc0f64dbdf`  
		Last Modified: Mon, 23 Nov 2026 23:44:45 GMT  
		Size: 179.5 MB (179508889 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1641a5ff7764b1d7f9513921a4da6f4eb61b46c83d669518a563b604c34151a5`  
		Last Modified: Mon, 23 Nov 2026 23:44:41 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26.10-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:49906f0ae86dbd3026af5909457dbb119efb95edea185532944b08c56280119f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5355888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b05b3300d18d63584883cbc1c92e067eb46024e8b2c810ce7f17daad100a98ab`

```dockerfile
```

-	Layers:
	-	`sha256:b8e4c638cd48991855c12764a04f7cbf5fe6701ab00697784a69d6615ba88562`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 5.3 MB (5319232 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ca7f47400d33c110c62c3c8e0d1f00410676e5431547a6dc9a37978e84f8536`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 36.7 KB (36656 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:26.10.0`

```console
$ docker pull mysql@sha256:9092489f49fb59c4ba6c1425c6a59f71f864f24bf4339a5a26b718adc7a8b343
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:26.10.0` - linux; amd64

```console
$ docker pull mysql@sha256:6d7dd5acd92b32f3cb1ff3b10f756ebb8ff5a892e4127f8c863d9b36630fcb5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.0 MB (291950020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8959d7c84ab820313180f705e0fe6a177984bda6837fb2fbde78e90ea0dd6f94`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 23 Nov 2026 23:28:05 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 23 Nov 2026 23:28:05 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 23:42:09 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 23 Nov 2026 23:42:11 GMT
ENV GOSU_VERSION=1.19
# Mon, 23 Nov 2026 23:42:11 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 23 Nov 2026 23:42:48 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 23 Nov 2026 23:42:49 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 23 Nov 2026 23:42:49 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 23 Nov 2026 23:42:49 GMT
ENV MYSQL_VERSION=26.10.0.1-1.el9
# Mon, 23 Nov 2026 23:42:49 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 23 Nov 2026 23:43:29 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 23 Nov 2026 23:43:29 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 23 Nov 2026 23:43:29 GMT
ENV MYSQL_SHELL_VERSION=26.10.0.1-1.el9
# Mon, 23 Nov 2026 23:44:16 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 23 Nov 2026 23:44:16 GMT
VOLUME [/var/lib/mysql]
# Mon, 23 Nov 2026 23:44:16 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 23:44:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 23:44:16 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 23 Nov 2026 23:44:16 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:33862e5ceb0800fad63d1008add0a685c61ff1cfa22e73c813a4c9c69a6ad49d`  
		Last Modified: Mon, 23 Nov 2026 23:28:16 GMT  
		Size: 40.0 MB (39952172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f17aa983d06c5706a94ea3104bcf5eb7f5dd614e69af47af2c76cac3405a0c28`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5718e8feb833f561c4e2cd2177b961961fbece83b2e3788ac070bed048a9bc67`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 783.6 KB (783555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bec6c0764f676dc314afeb426a40f39120f783484fc1e74d0676daf668b1da81`  
		Last Modified: Mon, 23 Nov 2026 23:44:41 GMT  
		Size: 6.2 MB (6183917 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91f2e938ce9370560c7df348530c8d7a77610136aa3ec93ac5884fd302f35014`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd7e1f7859f3662d2594a86798903cd9a5d1ad4852ebc2f84819e34db2cd7776`  
		Last Modified: Mon, 23 Nov 2026 23:44:41 GMT  
		Size: 341.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e9cd1db0a2f7e5d02f0da385b84d8ed68a4793586d8353b24644dd940a36751`  
		Last Modified: Mon, 23 Nov 2026 23:44:44 GMT  
		Size: 63.8 MB (63778013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:378e43836b45c57fe747f402fbab58ce53b34dc5c25dac3b55bf325fde70fed3`  
		Last Modified: Mon, 23 Nov 2026 23:44:41 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9644cb7a1c484635239259c2dde93b4c797fb582e8cfa70b9f6cc064dfb3bf33`  
		Last Modified: Mon, 23 Nov 2026 23:44:46 GMT  
		Size: 181.2 MB (181242978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd795b89f2d98b91147fe841a7fe91b46fb00ec0a029d571cedca1e5927cc86d`  
		Last Modified: Mon, 23 Nov 2026 23:44:43 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26.10.0` - unknown; unknown

```console
$ docker pull mysql@sha256:e6f625e53aca118bb8978c1490de7e46fc1672b6e75e0bdf7d12088bb9283df3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5357001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:231bcd32a375b24d15f47d03db5f4e97455e6a84a07bf4c074058fb9fd5f23b3`

```dockerfile
```

-	Layers:
	-	`sha256:98073a7be9c871684245bcd680415bc68943a95b51bda8d9e6f2a2352b8aac35`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 5.3 MB (5320723 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:baa7101741f86e227940f7a96601645b3ac7a0dfd4910d7e4b72727f0fe83fdd`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 36.3 KB (36278 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:26.10.0` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:dc3aeca2b22d60148907b9fa29bc9b4eb2e4027ea3660bb55085ed9d6de8018c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.4 MB (288359473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b683694ce0dad81a5432491d44801fb5f77063df6545faccb016cfa351d8292`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 23 Nov 2026 23:26:56 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 23 Nov 2026 23:26:56 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 23:41:49 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 23 Nov 2026 23:41:51 GMT
ENV GOSU_VERSION=1.19
# Mon, 23 Nov 2026 23:41:51 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 23 Nov 2026 23:42:32 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 23 Nov 2026 23:42:33 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 23 Nov 2026 23:42:33 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 23 Nov 2026 23:42:33 GMT
ENV MYSQL_VERSION=26.10.0.1-1.el9
# Mon, 23 Nov 2026 23:42:33 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 23 Nov 2026 23:43:21 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 23 Nov 2026 23:43:21 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 23 Nov 2026 23:43:21 GMT
ENV MYSQL_SHELL_VERSION=26.10.0.1-1.el9
# Mon, 23 Nov 2026 23:44:13 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 23 Nov 2026 23:44:13 GMT
VOLUME [/var/lib/mysql]
# Mon, 23 Nov 2026 23:44:13 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 23:44:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 23:44:13 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 23 Nov 2026 23:44:13 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:417cdca15a600d512dcff11d2b366223724adbe60562114464784b1662bee681`  
		Last Modified: Mon, 23 Nov 2026 23:27:06 GMT  
		Size: 38.5 MB (38494185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72e901aa8ec2a83f07c6cb1bd9ea3143792021114287bc8b401fbee16136312e`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3b305bcf60e1888101333ce4ec1a312937de00da66c91477d980bd3dddec470`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 737.5 KB (737525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe5ac272ac603054f522245644aded59a6b4372779d7960c7599873322d60bd0`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 5.8 MB (5803067 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e20836ddd28888fea4e20763a96d947480f6ab73ea486c4873ec2505c75d971`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7998d70c2d4fe30322aba0635a3cce7716f09a67d430b32c0e2151eabca266fc`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dae5fcc4677afe6ad389d118df80e87f614f7fffd4bbeedad4057afb8582ec6`  
		Last Modified: Mon, 23 Nov 2026 23:44:43 GMT  
		Size: 63.8 MB (63806423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c389571bad410b3da25296e742af872f753004f799c96a57ef18bfb80a9490e2`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fc8fed9b0dc49d2a5e630ec077a6c920eafb4e30760b730b919a5dc0f64dbdf`  
		Last Modified: Mon, 23 Nov 2026 23:44:45 GMT  
		Size: 179.5 MB (179508889 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1641a5ff7764b1d7f9513921a4da6f4eb61b46c83d669518a563b604c34151a5`  
		Last Modified: Mon, 23 Nov 2026 23:44:41 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26.10.0` - unknown; unknown

```console
$ docker pull mysql@sha256:49906f0ae86dbd3026af5909457dbb119efb95edea185532944b08c56280119f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5355888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b05b3300d18d63584883cbc1c92e067eb46024e8b2c810ce7f17daad100a98ab`

```dockerfile
```

-	Layers:
	-	`sha256:b8e4c638cd48991855c12764a04f7cbf5fe6701ab00697784a69d6615ba88562`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 5.3 MB (5319232 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ca7f47400d33c110c62c3c8e0d1f00410676e5431547a6dc9a37978e84f8536`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 36.7 KB (36656 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:26.10.0-oracle`

```console
$ docker pull mysql@sha256:9092489f49fb59c4ba6c1425c6a59f71f864f24bf4339a5a26b718adc7a8b343
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:26.10.0-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:6d7dd5acd92b32f3cb1ff3b10f756ebb8ff5a892e4127f8c863d9b36630fcb5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.0 MB (291950020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8959d7c84ab820313180f705e0fe6a177984bda6837fb2fbde78e90ea0dd6f94`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 23 Nov 2026 23:28:05 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 23 Nov 2026 23:28:05 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 23:42:09 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 23 Nov 2026 23:42:11 GMT
ENV GOSU_VERSION=1.19
# Mon, 23 Nov 2026 23:42:11 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 23 Nov 2026 23:42:48 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 23 Nov 2026 23:42:49 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 23 Nov 2026 23:42:49 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 23 Nov 2026 23:42:49 GMT
ENV MYSQL_VERSION=26.10.0.1-1.el9
# Mon, 23 Nov 2026 23:42:49 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 23 Nov 2026 23:43:29 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 23 Nov 2026 23:43:29 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 23 Nov 2026 23:43:29 GMT
ENV MYSQL_SHELL_VERSION=26.10.0.1-1.el9
# Mon, 23 Nov 2026 23:44:16 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 23 Nov 2026 23:44:16 GMT
VOLUME [/var/lib/mysql]
# Mon, 23 Nov 2026 23:44:16 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 23:44:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 23:44:16 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 23 Nov 2026 23:44:16 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:33862e5ceb0800fad63d1008add0a685c61ff1cfa22e73c813a4c9c69a6ad49d`  
		Last Modified: Mon, 23 Nov 2026 23:28:16 GMT  
		Size: 40.0 MB (39952172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f17aa983d06c5706a94ea3104bcf5eb7f5dd614e69af47af2c76cac3405a0c28`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5718e8feb833f561c4e2cd2177b961961fbece83b2e3788ac070bed048a9bc67`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 783.6 KB (783555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bec6c0764f676dc314afeb426a40f39120f783484fc1e74d0676daf668b1da81`  
		Last Modified: Mon, 23 Nov 2026 23:44:41 GMT  
		Size: 6.2 MB (6183917 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91f2e938ce9370560c7df348530c8d7a77610136aa3ec93ac5884fd302f35014`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd7e1f7859f3662d2594a86798903cd9a5d1ad4852ebc2f84819e34db2cd7776`  
		Last Modified: Mon, 23 Nov 2026 23:44:41 GMT  
		Size: 341.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e9cd1db0a2f7e5d02f0da385b84d8ed68a4793586d8353b24644dd940a36751`  
		Last Modified: Mon, 23 Nov 2026 23:44:44 GMT  
		Size: 63.8 MB (63778013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:378e43836b45c57fe747f402fbab58ce53b34dc5c25dac3b55bf325fde70fed3`  
		Last Modified: Mon, 23 Nov 2026 23:44:41 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9644cb7a1c484635239259c2dde93b4c797fb582e8cfa70b9f6cc064dfb3bf33`  
		Last Modified: Mon, 23 Nov 2026 23:44:46 GMT  
		Size: 181.2 MB (181242978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd795b89f2d98b91147fe841a7fe91b46fb00ec0a029d571cedca1e5927cc86d`  
		Last Modified: Mon, 23 Nov 2026 23:44:43 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26.10.0-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:e6f625e53aca118bb8978c1490de7e46fc1672b6e75e0bdf7d12088bb9283df3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5357001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:231bcd32a375b24d15f47d03db5f4e97455e6a84a07bf4c074058fb9fd5f23b3`

```dockerfile
```

-	Layers:
	-	`sha256:98073a7be9c871684245bcd680415bc68943a95b51bda8d9e6f2a2352b8aac35`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 5.3 MB (5320723 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:baa7101741f86e227940f7a96601645b3ac7a0dfd4910d7e4b72727f0fe83fdd`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 36.3 KB (36278 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:26.10.0-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:dc3aeca2b22d60148907b9fa29bc9b4eb2e4027ea3660bb55085ed9d6de8018c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.4 MB (288359473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b683694ce0dad81a5432491d44801fb5f77063df6545faccb016cfa351d8292`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 23 Nov 2026 23:26:56 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 23 Nov 2026 23:26:56 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 23:41:49 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 23 Nov 2026 23:41:51 GMT
ENV GOSU_VERSION=1.19
# Mon, 23 Nov 2026 23:41:51 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 23 Nov 2026 23:42:32 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 23 Nov 2026 23:42:33 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 23 Nov 2026 23:42:33 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 23 Nov 2026 23:42:33 GMT
ENV MYSQL_VERSION=26.10.0.1-1.el9
# Mon, 23 Nov 2026 23:42:33 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 23 Nov 2026 23:43:21 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 23 Nov 2026 23:43:21 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 23 Nov 2026 23:43:21 GMT
ENV MYSQL_SHELL_VERSION=26.10.0.1-1.el9
# Mon, 23 Nov 2026 23:44:13 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 23 Nov 2026 23:44:13 GMT
VOLUME [/var/lib/mysql]
# Mon, 23 Nov 2026 23:44:13 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 23:44:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 23:44:13 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 23 Nov 2026 23:44:13 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:417cdca15a600d512dcff11d2b366223724adbe60562114464784b1662bee681`  
		Last Modified: Mon, 23 Nov 2026 23:27:06 GMT  
		Size: 38.5 MB (38494185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72e901aa8ec2a83f07c6cb1bd9ea3143792021114287bc8b401fbee16136312e`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3b305bcf60e1888101333ce4ec1a312937de00da66c91477d980bd3dddec470`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 737.5 KB (737525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe5ac272ac603054f522245644aded59a6b4372779d7960c7599873322d60bd0`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 5.8 MB (5803067 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e20836ddd28888fea4e20763a96d947480f6ab73ea486c4873ec2505c75d971`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7998d70c2d4fe30322aba0635a3cce7716f09a67d430b32c0e2151eabca266fc`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dae5fcc4677afe6ad389d118df80e87f614f7fffd4bbeedad4057afb8582ec6`  
		Last Modified: Mon, 23 Nov 2026 23:44:43 GMT  
		Size: 63.8 MB (63806423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c389571bad410b3da25296e742af872f753004f799c96a57ef18bfb80a9490e2`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fc8fed9b0dc49d2a5e630ec077a6c920eafb4e30760b730b919a5dc0f64dbdf`  
		Last Modified: Mon, 23 Nov 2026 23:44:45 GMT  
		Size: 179.5 MB (179508889 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1641a5ff7764b1d7f9513921a4da6f4eb61b46c83d669518a563b604c34151a5`  
		Last Modified: Mon, 23 Nov 2026 23:44:41 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26.10.0-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:49906f0ae86dbd3026af5909457dbb119efb95edea185532944b08c56280119f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5355888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b05b3300d18d63584883cbc1c92e067eb46024e8b2c810ce7f17daad100a98ab`

```dockerfile
```

-	Layers:
	-	`sha256:b8e4c638cd48991855c12764a04f7cbf5fe6701ab00697784a69d6615ba88562`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 5.3 MB (5319232 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ca7f47400d33c110c62c3c8e0d1f00410676e5431547a6dc9a37978e84f8536`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 36.7 KB (36656 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:26.10.0-oraclelinux9`

```console
$ docker pull mysql@sha256:9092489f49fb59c4ba6c1425c6a59f71f864f24bf4339a5a26b718adc7a8b343
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:26.10.0-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:6d7dd5acd92b32f3cb1ff3b10f756ebb8ff5a892e4127f8c863d9b36630fcb5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.0 MB (291950020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8959d7c84ab820313180f705e0fe6a177984bda6837fb2fbde78e90ea0dd6f94`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 23 Nov 2026 23:28:05 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 23 Nov 2026 23:28:05 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 23:42:09 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 23 Nov 2026 23:42:11 GMT
ENV GOSU_VERSION=1.19
# Mon, 23 Nov 2026 23:42:11 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 23 Nov 2026 23:42:48 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 23 Nov 2026 23:42:49 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 23 Nov 2026 23:42:49 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 23 Nov 2026 23:42:49 GMT
ENV MYSQL_VERSION=26.10.0.1-1.el9
# Mon, 23 Nov 2026 23:42:49 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 23 Nov 2026 23:43:29 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 23 Nov 2026 23:43:29 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 23 Nov 2026 23:43:29 GMT
ENV MYSQL_SHELL_VERSION=26.10.0.1-1.el9
# Mon, 23 Nov 2026 23:44:16 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 23 Nov 2026 23:44:16 GMT
VOLUME [/var/lib/mysql]
# Mon, 23 Nov 2026 23:44:16 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 23:44:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 23:44:16 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 23 Nov 2026 23:44:16 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:33862e5ceb0800fad63d1008add0a685c61ff1cfa22e73c813a4c9c69a6ad49d`  
		Last Modified: Mon, 23 Nov 2026 23:28:16 GMT  
		Size: 40.0 MB (39952172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f17aa983d06c5706a94ea3104bcf5eb7f5dd614e69af47af2c76cac3405a0c28`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5718e8feb833f561c4e2cd2177b961961fbece83b2e3788ac070bed048a9bc67`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 783.6 KB (783555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bec6c0764f676dc314afeb426a40f39120f783484fc1e74d0676daf668b1da81`  
		Last Modified: Mon, 23 Nov 2026 23:44:41 GMT  
		Size: 6.2 MB (6183917 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91f2e938ce9370560c7df348530c8d7a77610136aa3ec93ac5884fd302f35014`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd7e1f7859f3662d2594a86798903cd9a5d1ad4852ebc2f84819e34db2cd7776`  
		Last Modified: Mon, 23 Nov 2026 23:44:41 GMT  
		Size: 341.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e9cd1db0a2f7e5d02f0da385b84d8ed68a4793586d8353b24644dd940a36751`  
		Last Modified: Mon, 23 Nov 2026 23:44:44 GMT  
		Size: 63.8 MB (63778013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:378e43836b45c57fe747f402fbab58ce53b34dc5c25dac3b55bf325fde70fed3`  
		Last Modified: Mon, 23 Nov 2026 23:44:41 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9644cb7a1c484635239259c2dde93b4c797fb582e8cfa70b9f6cc064dfb3bf33`  
		Last Modified: Mon, 23 Nov 2026 23:44:46 GMT  
		Size: 181.2 MB (181242978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd795b89f2d98b91147fe841a7fe91b46fb00ec0a029d571cedca1e5927cc86d`  
		Last Modified: Mon, 23 Nov 2026 23:44:43 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26.10.0-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:e6f625e53aca118bb8978c1490de7e46fc1672b6e75e0bdf7d12088bb9283df3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5357001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:231bcd32a375b24d15f47d03db5f4e97455e6a84a07bf4c074058fb9fd5f23b3`

```dockerfile
```

-	Layers:
	-	`sha256:98073a7be9c871684245bcd680415bc68943a95b51bda8d9e6f2a2352b8aac35`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 5.3 MB (5320723 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:baa7101741f86e227940f7a96601645b3ac7a0dfd4910d7e4b72727f0fe83fdd`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 36.3 KB (36278 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:26.10.0-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:dc3aeca2b22d60148907b9fa29bc9b4eb2e4027ea3660bb55085ed9d6de8018c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.4 MB (288359473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b683694ce0dad81a5432491d44801fb5f77063df6545faccb016cfa351d8292`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 23 Nov 2026 23:26:56 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 23 Nov 2026 23:26:56 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 23:41:49 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 23 Nov 2026 23:41:51 GMT
ENV GOSU_VERSION=1.19
# Mon, 23 Nov 2026 23:41:51 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 23 Nov 2026 23:42:32 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 23 Nov 2026 23:42:33 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 23 Nov 2026 23:42:33 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 23 Nov 2026 23:42:33 GMT
ENV MYSQL_VERSION=26.10.0.1-1.el9
# Mon, 23 Nov 2026 23:42:33 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 23 Nov 2026 23:43:21 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 23 Nov 2026 23:43:21 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 23 Nov 2026 23:43:21 GMT
ENV MYSQL_SHELL_VERSION=26.10.0.1-1.el9
# Mon, 23 Nov 2026 23:44:13 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 23 Nov 2026 23:44:13 GMT
VOLUME [/var/lib/mysql]
# Mon, 23 Nov 2026 23:44:13 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 23:44:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 23:44:13 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 23 Nov 2026 23:44:13 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:417cdca15a600d512dcff11d2b366223724adbe60562114464784b1662bee681`  
		Last Modified: Mon, 23 Nov 2026 23:27:06 GMT  
		Size: 38.5 MB (38494185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72e901aa8ec2a83f07c6cb1bd9ea3143792021114287bc8b401fbee16136312e`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3b305bcf60e1888101333ce4ec1a312937de00da66c91477d980bd3dddec470`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 737.5 KB (737525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe5ac272ac603054f522245644aded59a6b4372779d7960c7599873322d60bd0`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 5.8 MB (5803067 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e20836ddd28888fea4e20763a96d947480f6ab73ea486c4873ec2505c75d971`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7998d70c2d4fe30322aba0635a3cce7716f09a67d430b32c0e2151eabca266fc`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dae5fcc4677afe6ad389d118df80e87f614f7fffd4bbeedad4057afb8582ec6`  
		Last Modified: Mon, 23 Nov 2026 23:44:43 GMT  
		Size: 63.8 MB (63806423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c389571bad410b3da25296e742af872f753004f799c96a57ef18bfb80a9490e2`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fc8fed9b0dc49d2a5e630ec077a6c920eafb4e30760b730b919a5dc0f64dbdf`  
		Last Modified: Mon, 23 Nov 2026 23:44:45 GMT  
		Size: 179.5 MB (179508889 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1641a5ff7764b1d7f9513921a4da6f4eb61b46c83d669518a563b604c34151a5`  
		Last Modified: Mon, 23 Nov 2026 23:44:41 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26.10.0-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:49906f0ae86dbd3026af5909457dbb119efb95edea185532944b08c56280119f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5355888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b05b3300d18d63584883cbc1c92e067eb46024e8b2c810ce7f17daad100a98ab`

```dockerfile
```

-	Layers:
	-	`sha256:b8e4c638cd48991855c12764a04f7cbf5fe6701ab00697784a69d6615ba88562`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 5.3 MB (5319232 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ca7f47400d33c110c62c3c8e0d1f00410676e5431547a6dc9a37978e84f8536`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 36.7 KB (36656 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:26.10.0.1`

```console
$ docker pull mysql@sha256:9092489f49fb59c4ba6c1425c6a59f71f864f24bf4339a5a26b718adc7a8b343
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:26.10.0.1` - linux; amd64

```console
$ docker pull mysql@sha256:6d7dd5acd92b32f3cb1ff3b10f756ebb8ff5a892e4127f8c863d9b36630fcb5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.0 MB (291950020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8959d7c84ab820313180f705e0fe6a177984bda6837fb2fbde78e90ea0dd6f94`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 23 Nov 2026 23:28:05 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 23 Nov 2026 23:28:05 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 23:42:09 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 23 Nov 2026 23:42:11 GMT
ENV GOSU_VERSION=1.19
# Mon, 23 Nov 2026 23:42:11 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 23 Nov 2026 23:42:48 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 23 Nov 2026 23:42:49 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 23 Nov 2026 23:42:49 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 23 Nov 2026 23:42:49 GMT
ENV MYSQL_VERSION=26.10.0.1-1.el9
# Mon, 23 Nov 2026 23:42:49 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 23 Nov 2026 23:43:29 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 23 Nov 2026 23:43:29 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 23 Nov 2026 23:43:29 GMT
ENV MYSQL_SHELL_VERSION=26.10.0.1-1.el9
# Mon, 23 Nov 2026 23:44:16 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 23 Nov 2026 23:44:16 GMT
VOLUME [/var/lib/mysql]
# Mon, 23 Nov 2026 23:44:16 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 23:44:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 23:44:16 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 23 Nov 2026 23:44:16 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:33862e5ceb0800fad63d1008add0a685c61ff1cfa22e73c813a4c9c69a6ad49d`  
		Last Modified: Mon, 23 Nov 2026 23:28:16 GMT  
		Size: 40.0 MB (39952172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f17aa983d06c5706a94ea3104bcf5eb7f5dd614e69af47af2c76cac3405a0c28`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5718e8feb833f561c4e2cd2177b961961fbece83b2e3788ac070bed048a9bc67`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 783.6 KB (783555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bec6c0764f676dc314afeb426a40f39120f783484fc1e74d0676daf668b1da81`  
		Last Modified: Mon, 23 Nov 2026 23:44:41 GMT  
		Size: 6.2 MB (6183917 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91f2e938ce9370560c7df348530c8d7a77610136aa3ec93ac5884fd302f35014`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd7e1f7859f3662d2594a86798903cd9a5d1ad4852ebc2f84819e34db2cd7776`  
		Last Modified: Mon, 23 Nov 2026 23:44:41 GMT  
		Size: 341.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e9cd1db0a2f7e5d02f0da385b84d8ed68a4793586d8353b24644dd940a36751`  
		Last Modified: Mon, 23 Nov 2026 23:44:44 GMT  
		Size: 63.8 MB (63778013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:378e43836b45c57fe747f402fbab58ce53b34dc5c25dac3b55bf325fde70fed3`  
		Last Modified: Mon, 23 Nov 2026 23:44:41 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9644cb7a1c484635239259c2dde93b4c797fb582e8cfa70b9f6cc064dfb3bf33`  
		Last Modified: Mon, 23 Nov 2026 23:44:46 GMT  
		Size: 181.2 MB (181242978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd795b89f2d98b91147fe841a7fe91b46fb00ec0a029d571cedca1e5927cc86d`  
		Last Modified: Mon, 23 Nov 2026 23:44:43 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26.10.0.1` - unknown; unknown

```console
$ docker pull mysql@sha256:e6f625e53aca118bb8978c1490de7e46fc1672b6e75e0bdf7d12088bb9283df3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5357001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:231bcd32a375b24d15f47d03db5f4e97455e6a84a07bf4c074058fb9fd5f23b3`

```dockerfile
```

-	Layers:
	-	`sha256:98073a7be9c871684245bcd680415bc68943a95b51bda8d9e6f2a2352b8aac35`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 5.3 MB (5320723 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:baa7101741f86e227940f7a96601645b3ac7a0dfd4910d7e4b72727f0fe83fdd`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 36.3 KB (36278 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:26.10.0.1` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:dc3aeca2b22d60148907b9fa29bc9b4eb2e4027ea3660bb55085ed9d6de8018c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.4 MB (288359473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b683694ce0dad81a5432491d44801fb5f77063df6545faccb016cfa351d8292`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 23 Nov 2026 23:26:56 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 23 Nov 2026 23:26:56 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 23:41:49 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 23 Nov 2026 23:41:51 GMT
ENV GOSU_VERSION=1.19
# Mon, 23 Nov 2026 23:41:51 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 23 Nov 2026 23:42:32 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 23 Nov 2026 23:42:33 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 23 Nov 2026 23:42:33 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 23 Nov 2026 23:42:33 GMT
ENV MYSQL_VERSION=26.10.0.1-1.el9
# Mon, 23 Nov 2026 23:42:33 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 23 Nov 2026 23:43:21 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 23 Nov 2026 23:43:21 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 23 Nov 2026 23:43:21 GMT
ENV MYSQL_SHELL_VERSION=26.10.0.1-1.el9
# Mon, 23 Nov 2026 23:44:13 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 23 Nov 2026 23:44:13 GMT
VOLUME [/var/lib/mysql]
# Mon, 23 Nov 2026 23:44:13 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 23:44:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 23:44:13 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 23 Nov 2026 23:44:13 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:417cdca15a600d512dcff11d2b366223724adbe60562114464784b1662bee681`  
		Last Modified: Mon, 23 Nov 2026 23:27:06 GMT  
		Size: 38.5 MB (38494185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72e901aa8ec2a83f07c6cb1bd9ea3143792021114287bc8b401fbee16136312e`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3b305bcf60e1888101333ce4ec1a312937de00da66c91477d980bd3dddec470`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 737.5 KB (737525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe5ac272ac603054f522245644aded59a6b4372779d7960c7599873322d60bd0`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 5.8 MB (5803067 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e20836ddd28888fea4e20763a96d947480f6ab73ea486c4873ec2505c75d971`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7998d70c2d4fe30322aba0635a3cce7716f09a67d430b32c0e2151eabca266fc`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dae5fcc4677afe6ad389d118df80e87f614f7fffd4bbeedad4057afb8582ec6`  
		Last Modified: Mon, 23 Nov 2026 23:44:43 GMT  
		Size: 63.8 MB (63806423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c389571bad410b3da25296e742af872f753004f799c96a57ef18bfb80a9490e2`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fc8fed9b0dc49d2a5e630ec077a6c920eafb4e30760b730b919a5dc0f64dbdf`  
		Last Modified: Mon, 23 Nov 2026 23:44:45 GMT  
		Size: 179.5 MB (179508889 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1641a5ff7764b1d7f9513921a4da6f4eb61b46c83d669518a563b604c34151a5`  
		Last Modified: Mon, 23 Nov 2026 23:44:41 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26.10.0.1` - unknown; unknown

```console
$ docker pull mysql@sha256:49906f0ae86dbd3026af5909457dbb119efb95edea185532944b08c56280119f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5355888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b05b3300d18d63584883cbc1c92e067eb46024e8b2c810ce7f17daad100a98ab`

```dockerfile
```

-	Layers:
	-	`sha256:b8e4c638cd48991855c12764a04f7cbf5fe6701ab00697784a69d6615ba88562`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 5.3 MB (5319232 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ca7f47400d33c110c62c3c8e0d1f00410676e5431547a6dc9a37978e84f8536`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 36.7 KB (36656 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:26.10.0.1-oracle`

```console
$ docker pull mysql@sha256:9092489f49fb59c4ba6c1425c6a59f71f864f24bf4339a5a26b718adc7a8b343
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:26.10.0.1-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:6d7dd5acd92b32f3cb1ff3b10f756ebb8ff5a892e4127f8c863d9b36630fcb5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.0 MB (291950020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8959d7c84ab820313180f705e0fe6a177984bda6837fb2fbde78e90ea0dd6f94`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 23 Nov 2026 23:28:05 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 23 Nov 2026 23:28:05 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 23:42:09 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 23 Nov 2026 23:42:11 GMT
ENV GOSU_VERSION=1.19
# Mon, 23 Nov 2026 23:42:11 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 23 Nov 2026 23:42:48 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 23 Nov 2026 23:42:49 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 23 Nov 2026 23:42:49 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 23 Nov 2026 23:42:49 GMT
ENV MYSQL_VERSION=26.10.0.1-1.el9
# Mon, 23 Nov 2026 23:42:49 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 23 Nov 2026 23:43:29 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 23 Nov 2026 23:43:29 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 23 Nov 2026 23:43:29 GMT
ENV MYSQL_SHELL_VERSION=26.10.0.1-1.el9
# Mon, 23 Nov 2026 23:44:16 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 23 Nov 2026 23:44:16 GMT
VOLUME [/var/lib/mysql]
# Mon, 23 Nov 2026 23:44:16 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 23:44:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 23:44:16 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 23 Nov 2026 23:44:16 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:33862e5ceb0800fad63d1008add0a685c61ff1cfa22e73c813a4c9c69a6ad49d`  
		Last Modified: Mon, 23 Nov 2026 23:28:16 GMT  
		Size: 40.0 MB (39952172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f17aa983d06c5706a94ea3104bcf5eb7f5dd614e69af47af2c76cac3405a0c28`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5718e8feb833f561c4e2cd2177b961961fbece83b2e3788ac070bed048a9bc67`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 783.6 KB (783555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bec6c0764f676dc314afeb426a40f39120f783484fc1e74d0676daf668b1da81`  
		Last Modified: Mon, 23 Nov 2026 23:44:41 GMT  
		Size: 6.2 MB (6183917 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91f2e938ce9370560c7df348530c8d7a77610136aa3ec93ac5884fd302f35014`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd7e1f7859f3662d2594a86798903cd9a5d1ad4852ebc2f84819e34db2cd7776`  
		Last Modified: Mon, 23 Nov 2026 23:44:41 GMT  
		Size: 341.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e9cd1db0a2f7e5d02f0da385b84d8ed68a4793586d8353b24644dd940a36751`  
		Last Modified: Mon, 23 Nov 2026 23:44:44 GMT  
		Size: 63.8 MB (63778013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:378e43836b45c57fe747f402fbab58ce53b34dc5c25dac3b55bf325fde70fed3`  
		Last Modified: Mon, 23 Nov 2026 23:44:41 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9644cb7a1c484635239259c2dde93b4c797fb582e8cfa70b9f6cc064dfb3bf33`  
		Last Modified: Mon, 23 Nov 2026 23:44:46 GMT  
		Size: 181.2 MB (181242978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd795b89f2d98b91147fe841a7fe91b46fb00ec0a029d571cedca1e5927cc86d`  
		Last Modified: Mon, 23 Nov 2026 23:44:43 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26.10.0.1-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:e6f625e53aca118bb8978c1490de7e46fc1672b6e75e0bdf7d12088bb9283df3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5357001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:231bcd32a375b24d15f47d03db5f4e97455e6a84a07bf4c074058fb9fd5f23b3`

```dockerfile
```

-	Layers:
	-	`sha256:98073a7be9c871684245bcd680415bc68943a95b51bda8d9e6f2a2352b8aac35`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 5.3 MB (5320723 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:baa7101741f86e227940f7a96601645b3ac7a0dfd4910d7e4b72727f0fe83fdd`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 36.3 KB (36278 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:26.10.0.1-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:dc3aeca2b22d60148907b9fa29bc9b4eb2e4027ea3660bb55085ed9d6de8018c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.4 MB (288359473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b683694ce0dad81a5432491d44801fb5f77063df6545faccb016cfa351d8292`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 23 Nov 2026 23:26:56 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 23 Nov 2026 23:26:56 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 23:41:49 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 23 Nov 2026 23:41:51 GMT
ENV GOSU_VERSION=1.19
# Mon, 23 Nov 2026 23:41:51 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 23 Nov 2026 23:42:32 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 23 Nov 2026 23:42:33 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 23 Nov 2026 23:42:33 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 23 Nov 2026 23:42:33 GMT
ENV MYSQL_VERSION=26.10.0.1-1.el9
# Mon, 23 Nov 2026 23:42:33 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 23 Nov 2026 23:43:21 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 23 Nov 2026 23:43:21 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 23 Nov 2026 23:43:21 GMT
ENV MYSQL_SHELL_VERSION=26.10.0.1-1.el9
# Mon, 23 Nov 2026 23:44:13 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 23 Nov 2026 23:44:13 GMT
VOLUME [/var/lib/mysql]
# Mon, 23 Nov 2026 23:44:13 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 23:44:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 23:44:13 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 23 Nov 2026 23:44:13 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:417cdca15a600d512dcff11d2b366223724adbe60562114464784b1662bee681`  
		Last Modified: Mon, 23 Nov 2026 23:27:06 GMT  
		Size: 38.5 MB (38494185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72e901aa8ec2a83f07c6cb1bd9ea3143792021114287bc8b401fbee16136312e`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3b305bcf60e1888101333ce4ec1a312937de00da66c91477d980bd3dddec470`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 737.5 KB (737525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe5ac272ac603054f522245644aded59a6b4372779d7960c7599873322d60bd0`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 5.8 MB (5803067 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e20836ddd28888fea4e20763a96d947480f6ab73ea486c4873ec2505c75d971`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7998d70c2d4fe30322aba0635a3cce7716f09a67d430b32c0e2151eabca266fc`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dae5fcc4677afe6ad389d118df80e87f614f7fffd4bbeedad4057afb8582ec6`  
		Last Modified: Mon, 23 Nov 2026 23:44:43 GMT  
		Size: 63.8 MB (63806423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c389571bad410b3da25296e742af872f753004f799c96a57ef18bfb80a9490e2`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fc8fed9b0dc49d2a5e630ec077a6c920eafb4e30760b730b919a5dc0f64dbdf`  
		Last Modified: Mon, 23 Nov 2026 23:44:45 GMT  
		Size: 179.5 MB (179508889 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1641a5ff7764b1d7f9513921a4da6f4eb61b46c83d669518a563b604c34151a5`  
		Last Modified: Mon, 23 Nov 2026 23:44:41 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26.10.0.1-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:49906f0ae86dbd3026af5909457dbb119efb95edea185532944b08c56280119f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5355888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b05b3300d18d63584883cbc1c92e067eb46024e8b2c810ce7f17daad100a98ab`

```dockerfile
```

-	Layers:
	-	`sha256:b8e4c638cd48991855c12764a04f7cbf5fe6701ab00697784a69d6615ba88562`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 5.3 MB (5319232 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ca7f47400d33c110c62c3c8e0d1f00410676e5431547a6dc9a37978e84f8536`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 36.7 KB (36656 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:26.10.0.1-oraclelinux9`

```console
$ docker pull mysql@sha256:9092489f49fb59c4ba6c1425c6a59f71f864f24bf4339a5a26b718adc7a8b343
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:26.10.0.1-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:6d7dd5acd92b32f3cb1ff3b10f756ebb8ff5a892e4127f8c863d9b36630fcb5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.0 MB (291950020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8959d7c84ab820313180f705e0fe6a177984bda6837fb2fbde78e90ea0dd6f94`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 23 Nov 2026 23:28:05 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 23 Nov 2026 23:28:05 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 23:42:09 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 23 Nov 2026 23:42:11 GMT
ENV GOSU_VERSION=1.19
# Mon, 23 Nov 2026 23:42:11 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 23 Nov 2026 23:42:48 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 23 Nov 2026 23:42:49 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 23 Nov 2026 23:42:49 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 23 Nov 2026 23:42:49 GMT
ENV MYSQL_VERSION=26.10.0.1-1.el9
# Mon, 23 Nov 2026 23:42:49 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 23 Nov 2026 23:43:29 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 23 Nov 2026 23:43:29 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 23 Nov 2026 23:43:29 GMT
ENV MYSQL_SHELL_VERSION=26.10.0.1-1.el9
# Mon, 23 Nov 2026 23:44:16 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 23 Nov 2026 23:44:16 GMT
VOLUME [/var/lib/mysql]
# Mon, 23 Nov 2026 23:44:16 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 23:44:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 23:44:16 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 23 Nov 2026 23:44:16 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:33862e5ceb0800fad63d1008add0a685c61ff1cfa22e73c813a4c9c69a6ad49d`  
		Last Modified: Mon, 23 Nov 2026 23:28:16 GMT  
		Size: 40.0 MB (39952172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f17aa983d06c5706a94ea3104bcf5eb7f5dd614e69af47af2c76cac3405a0c28`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5718e8feb833f561c4e2cd2177b961961fbece83b2e3788ac070bed048a9bc67`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 783.6 KB (783555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bec6c0764f676dc314afeb426a40f39120f783484fc1e74d0676daf668b1da81`  
		Last Modified: Mon, 23 Nov 2026 23:44:41 GMT  
		Size: 6.2 MB (6183917 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91f2e938ce9370560c7df348530c8d7a77610136aa3ec93ac5884fd302f35014`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd7e1f7859f3662d2594a86798903cd9a5d1ad4852ebc2f84819e34db2cd7776`  
		Last Modified: Mon, 23 Nov 2026 23:44:41 GMT  
		Size: 341.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e9cd1db0a2f7e5d02f0da385b84d8ed68a4793586d8353b24644dd940a36751`  
		Last Modified: Mon, 23 Nov 2026 23:44:44 GMT  
		Size: 63.8 MB (63778013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:378e43836b45c57fe747f402fbab58ce53b34dc5c25dac3b55bf325fde70fed3`  
		Last Modified: Mon, 23 Nov 2026 23:44:41 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9644cb7a1c484635239259c2dde93b4c797fb582e8cfa70b9f6cc064dfb3bf33`  
		Last Modified: Mon, 23 Nov 2026 23:44:46 GMT  
		Size: 181.2 MB (181242978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd795b89f2d98b91147fe841a7fe91b46fb00ec0a029d571cedca1e5927cc86d`  
		Last Modified: Mon, 23 Nov 2026 23:44:43 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26.10.0.1-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:e6f625e53aca118bb8978c1490de7e46fc1672b6e75e0bdf7d12088bb9283df3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5357001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:231bcd32a375b24d15f47d03db5f4e97455e6a84a07bf4c074058fb9fd5f23b3`

```dockerfile
```

-	Layers:
	-	`sha256:98073a7be9c871684245bcd680415bc68943a95b51bda8d9e6f2a2352b8aac35`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 5.3 MB (5320723 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:baa7101741f86e227940f7a96601645b3ac7a0dfd4910d7e4b72727f0fe83fdd`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 36.3 KB (36278 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:26.10.0.1-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:dc3aeca2b22d60148907b9fa29bc9b4eb2e4027ea3660bb55085ed9d6de8018c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.4 MB (288359473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b683694ce0dad81a5432491d44801fb5f77063df6545faccb016cfa351d8292`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 23 Nov 2026 23:26:56 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 23 Nov 2026 23:26:56 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 23:41:49 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 23 Nov 2026 23:41:51 GMT
ENV GOSU_VERSION=1.19
# Mon, 23 Nov 2026 23:41:51 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 23 Nov 2026 23:42:32 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 23 Nov 2026 23:42:33 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 23 Nov 2026 23:42:33 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 23 Nov 2026 23:42:33 GMT
ENV MYSQL_VERSION=26.10.0.1-1.el9
# Mon, 23 Nov 2026 23:42:33 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 23 Nov 2026 23:43:21 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 23 Nov 2026 23:43:21 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 23 Nov 2026 23:43:21 GMT
ENV MYSQL_SHELL_VERSION=26.10.0.1-1.el9
# Mon, 23 Nov 2026 23:44:13 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 23 Nov 2026 23:44:13 GMT
VOLUME [/var/lib/mysql]
# Mon, 23 Nov 2026 23:44:13 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 23:44:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 23:44:13 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 23 Nov 2026 23:44:13 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:417cdca15a600d512dcff11d2b366223724adbe60562114464784b1662bee681`  
		Last Modified: Mon, 23 Nov 2026 23:27:06 GMT  
		Size: 38.5 MB (38494185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72e901aa8ec2a83f07c6cb1bd9ea3143792021114287bc8b401fbee16136312e`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3b305bcf60e1888101333ce4ec1a312937de00da66c91477d980bd3dddec470`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 737.5 KB (737525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe5ac272ac603054f522245644aded59a6b4372779d7960c7599873322d60bd0`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 5.8 MB (5803067 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e20836ddd28888fea4e20763a96d947480f6ab73ea486c4873ec2505c75d971`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7998d70c2d4fe30322aba0635a3cce7716f09a67d430b32c0e2151eabca266fc`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dae5fcc4677afe6ad389d118df80e87f614f7fffd4bbeedad4057afb8582ec6`  
		Last Modified: Mon, 23 Nov 2026 23:44:43 GMT  
		Size: 63.8 MB (63806423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c389571bad410b3da25296e742af872f753004f799c96a57ef18bfb80a9490e2`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fc8fed9b0dc49d2a5e630ec077a6c920eafb4e30760b730b919a5dc0f64dbdf`  
		Last Modified: Mon, 23 Nov 2026 23:44:45 GMT  
		Size: 179.5 MB (179508889 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1641a5ff7764b1d7f9513921a4da6f4eb61b46c83d669518a563b604c34151a5`  
		Last Modified: Mon, 23 Nov 2026 23:44:41 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26.10.0.1-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:49906f0ae86dbd3026af5909457dbb119efb95edea185532944b08c56280119f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5355888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b05b3300d18d63584883cbc1c92e067eb46024e8b2c810ce7f17daad100a98ab`

```dockerfile
```

-	Layers:
	-	`sha256:b8e4c638cd48991855c12764a04f7cbf5fe6701ab00697784a69d6615ba88562`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 5.3 MB (5319232 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ca7f47400d33c110c62c3c8e0d1f00410676e5431547a6dc9a37978e84f8536`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 36.7 KB (36656 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:8`

```console
$ docker pull mysql@sha256:8c233bad33d520a7aae1c1e619c3a9775f4a1ba2d463d692fada04ec7f40be00
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8` - linux; amd64

```console
$ docker pull mysql@sha256:f0c7a4430d773ef8433aae82e08cb02ade4a6ad806a18b1610a48a1728fbdfd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.0 MB (230998911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0977972cb2d5dd2bb989213b9973a612df98d3d018c0473314475d69e9a3241f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 23 Nov 2026 23:28:05 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 23 Nov 2026 23:28:05 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 23:42:10 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 23 Nov 2026 23:42:12 GMT
ENV GOSU_VERSION=1.19
# Mon, 23 Nov 2026 23:42:12 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 23 Nov 2026 23:42:52 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 23 Nov 2026 23:42:53 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 23 Nov 2026 23:42:53 GMT
ENV MYSQL_MAJOR=8.4
# Mon, 23 Nov 2026 23:42:53 GMT
ENV MYSQL_VERSION=8.4.13.1-1.el9
# Mon, 23 Nov 2026 23:42:53 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 23 Nov 2026 23:43:36 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 23 Nov 2026 23:43:36 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 23 Nov 2026 23:43:36 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Mon, 23 Nov 2026 23:44:26 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 23 Nov 2026 23:44:26 GMT
VOLUME [/var/lib/mysql]
# Mon, 23 Nov 2026 23:44:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 23:44:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 23:44:26 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 23 Nov 2026 23:44:26 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:33862e5ceb0800fad63d1008add0a685c61ff1cfa22e73c813a4c9c69a6ad49d`  
		Last Modified: Mon, 23 Nov 2026 23:28:16 GMT  
		Size: 40.0 MB (39952172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f17aa983d06c5706a94ea3104bcf5eb7f5dd614e69af47af2c76cac3405a0c28`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f1eece0f0ea5bca2d47b60d953f3f48485bf4c3e4ada281e6b99756482b7b01`  
		Last Modified: Mon, 23 Nov 2026 23:44:55 GMT  
		Size: 783.6 KB (783558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e8d34d035a755e37c45eaf576741a9244e992f011810476d75b18d6908eb279`  
		Last Modified: Mon, 23 Nov 2026 23:44:56 GMT  
		Size: 6.2 MB (6183915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0eeb60c2c4be4de283aba9408c524b5452482324b7b9e3006bf7e0e3a45c5a56`  
		Last Modified: Mon, 23 Nov 2026 23:44:55 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86bfa40d3d5ec7551460208b94de53c4b07febea20207005bdf9c6de3fe5da2e`  
		Last Modified: Mon, 23 Nov 2026 23:44:55 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22fc765981b592c3838a98c8067d17323f8f374d97ad93696ad8081b13f63535`  
		Last Modified: Mon, 23 Nov 2026 23:44:58 GMT  
		Size: 51.7 MB (51665053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ad8f1558c25bdb1ad3b102da484d6613b1f56498143211de2092cc3ee27c357`  
		Last Modified: Mon, 23 Nov 2026 23:44:56 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59587a7a84b2386004d9defc8cf1e413f5e2f0c8de72a508a90c5841032a8190`  
		Last Modified: Mon, 23 Nov 2026 23:45:00 GMT  
		Size: 132.4 MB (132404842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d820fba75e28df71326a77b9fc93e51edf259e344cdc036b2eebe8f3d17e1457`  
		Last Modified: Mon, 23 Nov 2026 23:44:57 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8` - unknown; unknown

```console
$ docker pull mysql@sha256:083bdfe0202e634b722804d22d86e998baff9b847747f23bb9b7d14f7ba29932
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15728610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2add8d7a84030727d5ad578c8832899efb86727115b56497fbd4fb0588a897e0`

```dockerfile
```

-	Layers:
	-	`sha256:2f8b0db389b0f15894f558fe7a212434a392eafb92f1e6d1d6f4d959041801bd`  
		Last Modified: Mon, 23 Nov 2026 23:44:56 GMT  
		Size: 15.7 MB (15694349 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5418f9e8022cf1bc56f570e72fe3743e4c41546da1f65cf3a4adb93e9d322d87`  
		Last Modified: Mon, 23 Nov 2026 23:44:55 GMT  
		Size: 34.3 KB (34261 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:ca75bd73d5bdbd296b5a2136f5b9cc24ef59e79231dfd7cd86b05a075bb0f2b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **225.7 MB (225667194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c9626aefc6a239beaa9f2eec5c4254a1461d0822aad579a65911f92558e10ff`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 23 Nov 2026 23:26:56 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 23 Nov 2026 23:26:56 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 23:41:34 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 23 Nov 2026 23:41:35 GMT
ENV GOSU_VERSION=1.19
# Mon, 23 Nov 2026 23:41:35 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 23 Nov 2026 23:42:18 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 23 Nov 2026 23:42:19 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 23 Nov 2026 23:42:19 GMT
ENV MYSQL_MAJOR=8.4
# Mon, 23 Nov 2026 23:42:19 GMT
ENV MYSQL_VERSION=8.4.13.1-1.el9
# Mon, 23 Nov 2026 23:42:19 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 23 Nov 2026 23:43:05 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 23 Nov 2026 23:43:05 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 23 Nov 2026 23:43:05 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Mon, 23 Nov 2026 23:43:59 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 23 Nov 2026 23:43:59 GMT
VOLUME [/var/lib/mysql]
# Mon, 23 Nov 2026 23:43:59 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 23:43:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 23:43:59 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 23 Nov 2026 23:43:59 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:417cdca15a600d512dcff11d2b366223724adbe60562114464784b1662bee681`  
		Last Modified: Mon, 23 Nov 2026 23:27:06 GMT  
		Size: 38.5 MB (38494185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a10b58b76f70686a2cd150959a7692673cd5c281734b80bd136bfb8cf872eb7`  
		Last Modified: Mon, 23 Nov 2026 23:44:30 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:018e91d1796fe81a20b352eccc431bd8352724b34c7adbeee5dc9e59cb6cd494`  
		Last Modified: Mon, 23 Nov 2026 23:44:30 GMT  
		Size: 737.5 KB (737526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9904dfb6ebfaf7f32ddc36299541eb7af63bba5a0a16ac1b16be6693d8cb7a10`  
		Last Modified: Mon, 23 Nov 2026 23:44:31 GMT  
		Size: 5.8 MB (5803032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9be696be5d35c65ac948342c37d4df2346dd9be6380f9c8b495482438766157`  
		Last Modified: Mon, 23 Nov 2026 23:44:30 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:980a7d483fa413ee32e23d3c70b8cd62bddd76e49fc9bcdced9cfbce2cc0a115`  
		Last Modified: Mon, 23 Nov 2026 23:44:31 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06e0bba0187248564e30cc0044c8d553332136862ef507b9c0cc70449b234da2`  
		Last Modified: Mon, 23 Nov 2026 23:44:33 GMT  
		Size: 49.9 MB (49852468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29764e778bbbcf0605bb6917b2eda7876307f660685b7a57855f6ccf922365cb`  
		Last Modified: Mon, 23 Nov 2026 23:44:31 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82683b815ff13e9630442756ebe852ee1c26c6db432ed198e50486607b8f41f6`  
		Last Modified: Mon, 23 Nov 2026 23:44:35 GMT  
		Size: 130.8 MB (130770611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c28a2ecb5b299e04f6f28be72a3723ea4f984a6c046d06ae0e631c4f87cb8e68`  
		Last Modified: Mon, 23 Nov 2026 23:44:32 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8` - unknown; unknown

```console
$ docker pull mysql@sha256:70284b31ac2ce858ff04d5a45f473ec30b0cf8756234d78b41957d7398ff2e8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15727351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6cacf8855d5743ec58d2473126e2a50381bce829e66fab32ad6c05081cead5c`

```dockerfile
```

-	Layers:
	-	`sha256:7aabb3a3ad467318b66cd5b7bc6ca136c243db8dddf78ef2df7f3798cd6a0773`  
		Last Modified: Mon, 23 Nov 2026 23:44:31 GMT  
		Size: 15.7 MB (15692785 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a59955fd9a28fcc500fd0bcf6657bc923f453174d02f4f34c264abfa1761e75e`  
		Last Modified: Mon, 23 Nov 2026 23:44:30 GMT  
		Size: 34.6 KB (34566 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:8-oracle`

```console
$ docker pull mysql@sha256:8c233bad33d520a7aae1c1e619c3a9775f4a1ba2d463d692fada04ec7f40be00
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:f0c7a4430d773ef8433aae82e08cb02ade4a6ad806a18b1610a48a1728fbdfd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.0 MB (230998911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0977972cb2d5dd2bb989213b9973a612df98d3d018c0473314475d69e9a3241f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 23 Nov 2026 23:28:05 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 23 Nov 2026 23:28:05 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 23:42:10 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 23 Nov 2026 23:42:12 GMT
ENV GOSU_VERSION=1.19
# Mon, 23 Nov 2026 23:42:12 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 23 Nov 2026 23:42:52 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 23 Nov 2026 23:42:53 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 23 Nov 2026 23:42:53 GMT
ENV MYSQL_MAJOR=8.4
# Mon, 23 Nov 2026 23:42:53 GMT
ENV MYSQL_VERSION=8.4.13.1-1.el9
# Mon, 23 Nov 2026 23:42:53 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 23 Nov 2026 23:43:36 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 23 Nov 2026 23:43:36 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 23 Nov 2026 23:43:36 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Mon, 23 Nov 2026 23:44:26 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 23 Nov 2026 23:44:26 GMT
VOLUME [/var/lib/mysql]
# Mon, 23 Nov 2026 23:44:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 23:44:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 23:44:26 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 23 Nov 2026 23:44:26 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:33862e5ceb0800fad63d1008add0a685c61ff1cfa22e73c813a4c9c69a6ad49d`  
		Last Modified: Mon, 23 Nov 2026 23:28:16 GMT  
		Size: 40.0 MB (39952172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f17aa983d06c5706a94ea3104bcf5eb7f5dd614e69af47af2c76cac3405a0c28`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f1eece0f0ea5bca2d47b60d953f3f48485bf4c3e4ada281e6b99756482b7b01`  
		Last Modified: Mon, 23 Nov 2026 23:44:55 GMT  
		Size: 783.6 KB (783558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e8d34d035a755e37c45eaf576741a9244e992f011810476d75b18d6908eb279`  
		Last Modified: Mon, 23 Nov 2026 23:44:56 GMT  
		Size: 6.2 MB (6183915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0eeb60c2c4be4de283aba9408c524b5452482324b7b9e3006bf7e0e3a45c5a56`  
		Last Modified: Mon, 23 Nov 2026 23:44:55 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86bfa40d3d5ec7551460208b94de53c4b07febea20207005bdf9c6de3fe5da2e`  
		Last Modified: Mon, 23 Nov 2026 23:44:55 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22fc765981b592c3838a98c8067d17323f8f374d97ad93696ad8081b13f63535`  
		Last Modified: Mon, 23 Nov 2026 23:44:58 GMT  
		Size: 51.7 MB (51665053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ad8f1558c25bdb1ad3b102da484d6613b1f56498143211de2092cc3ee27c357`  
		Last Modified: Mon, 23 Nov 2026 23:44:56 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59587a7a84b2386004d9defc8cf1e413f5e2f0c8de72a508a90c5841032a8190`  
		Last Modified: Mon, 23 Nov 2026 23:45:00 GMT  
		Size: 132.4 MB (132404842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d820fba75e28df71326a77b9fc93e51edf259e344cdc036b2eebe8f3d17e1457`  
		Last Modified: Mon, 23 Nov 2026 23:44:57 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:083bdfe0202e634b722804d22d86e998baff9b847747f23bb9b7d14f7ba29932
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15728610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2add8d7a84030727d5ad578c8832899efb86727115b56497fbd4fb0588a897e0`

```dockerfile
```

-	Layers:
	-	`sha256:2f8b0db389b0f15894f558fe7a212434a392eafb92f1e6d1d6f4d959041801bd`  
		Last Modified: Mon, 23 Nov 2026 23:44:56 GMT  
		Size: 15.7 MB (15694349 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5418f9e8022cf1bc56f570e72fe3743e4c41546da1f65cf3a4adb93e9d322d87`  
		Last Modified: Mon, 23 Nov 2026 23:44:55 GMT  
		Size: 34.3 KB (34261 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:ca75bd73d5bdbd296b5a2136f5b9cc24ef59e79231dfd7cd86b05a075bb0f2b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **225.7 MB (225667194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c9626aefc6a239beaa9f2eec5c4254a1461d0822aad579a65911f92558e10ff`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 23 Nov 2026 23:26:56 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 23 Nov 2026 23:26:56 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 23:41:34 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 23 Nov 2026 23:41:35 GMT
ENV GOSU_VERSION=1.19
# Mon, 23 Nov 2026 23:41:35 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 23 Nov 2026 23:42:18 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 23 Nov 2026 23:42:19 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 23 Nov 2026 23:42:19 GMT
ENV MYSQL_MAJOR=8.4
# Mon, 23 Nov 2026 23:42:19 GMT
ENV MYSQL_VERSION=8.4.13.1-1.el9
# Mon, 23 Nov 2026 23:42:19 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 23 Nov 2026 23:43:05 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 23 Nov 2026 23:43:05 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 23 Nov 2026 23:43:05 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Mon, 23 Nov 2026 23:43:59 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 23 Nov 2026 23:43:59 GMT
VOLUME [/var/lib/mysql]
# Mon, 23 Nov 2026 23:43:59 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 23:43:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 23:43:59 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 23 Nov 2026 23:43:59 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:417cdca15a600d512dcff11d2b366223724adbe60562114464784b1662bee681`  
		Last Modified: Mon, 23 Nov 2026 23:27:06 GMT  
		Size: 38.5 MB (38494185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a10b58b76f70686a2cd150959a7692673cd5c281734b80bd136bfb8cf872eb7`  
		Last Modified: Mon, 23 Nov 2026 23:44:30 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:018e91d1796fe81a20b352eccc431bd8352724b34c7adbeee5dc9e59cb6cd494`  
		Last Modified: Mon, 23 Nov 2026 23:44:30 GMT  
		Size: 737.5 KB (737526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9904dfb6ebfaf7f32ddc36299541eb7af63bba5a0a16ac1b16be6693d8cb7a10`  
		Last Modified: Mon, 23 Nov 2026 23:44:31 GMT  
		Size: 5.8 MB (5803032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9be696be5d35c65ac948342c37d4df2346dd9be6380f9c8b495482438766157`  
		Last Modified: Mon, 23 Nov 2026 23:44:30 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:980a7d483fa413ee32e23d3c70b8cd62bddd76e49fc9bcdced9cfbce2cc0a115`  
		Last Modified: Mon, 23 Nov 2026 23:44:31 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06e0bba0187248564e30cc0044c8d553332136862ef507b9c0cc70449b234da2`  
		Last Modified: Mon, 23 Nov 2026 23:44:33 GMT  
		Size: 49.9 MB (49852468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29764e778bbbcf0605bb6917b2eda7876307f660685b7a57855f6ccf922365cb`  
		Last Modified: Mon, 23 Nov 2026 23:44:31 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82683b815ff13e9630442756ebe852ee1c26c6db432ed198e50486607b8f41f6`  
		Last Modified: Mon, 23 Nov 2026 23:44:35 GMT  
		Size: 130.8 MB (130770611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c28a2ecb5b299e04f6f28be72a3723ea4f984a6c046d06ae0e631c4f87cb8e68`  
		Last Modified: Mon, 23 Nov 2026 23:44:32 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:70284b31ac2ce858ff04d5a45f473ec30b0cf8756234d78b41957d7398ff2e8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15727351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6cacf8855d5743ec58d2473126e2a50381bce829e66fab32ad6c05081cead5c`

```dockerfile
```

-	Layers:
	-	`sha256:7aabb3a3ad467318b66cd5b7bc6ca136c243db8dddf78ef2df7f3798cd6a0773`  
		Last Modified: Mon, 23 Nov 2026 23:44:31 GMT  
		Size: 15.7 MB (15692785 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a59955fd9a28fcc500fd0bcf6657bc923f453174d02f4f34c264abfa1761e75e`  
		Last Modified: Mon, 23 Nov 2026 23:44:30 GMT  
		Size: 34.6 KB (34566 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:8-oraclelinux9`

```console
$ docker pull mysql@sha256:8c233bad33d520a7aae1c1e619c3a9775f4a1ba2d463d692fada04ec7f40be00
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:f0c7a4430d773ef8433aae82e08cb02ade4a6ad806a18b1610a48a1728fbdfd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.0 MB (230998911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0977972cb2d5dd2bb989213b9973a612df98d3d018c0473314475d69e9a3241f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 23 Nov 2026 23:28:05 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 23 Nov 2026 23:28:05 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 23:42:10 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 23 Nov 2026 23:42:12 GMT
ENV GOSU_VERSION=1.19
# Mon, 23 Nov 2026 23:42:12 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 23 Nov 2026 23:42:52 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 23 Nov 2026 23:42:53 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 23 Nov 2026 23:42:53 GMT
ENV MYSQL_MAJOR=8.4
# Mon, 23 Nov 2026 23:42:53 GMT
ENV MYSQL_VERSION=8.4.13.1-1.el9
# Mon, 23 Nov 2026 23:42:53 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 23 Nov 2026 23:43:36 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 23 Nov 2026 23:43:36 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 23 Nov 2026 23:43:36 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Mon, 23 Nov 2026 23:44:26 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 23 Nov 2026 23:44:26 GMT
VOLUME [/var/lib/mysql]
# Mon, 23 Nov 2026 23:44:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 23:44:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 23:44:26 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 23 Nov 2026 23:44:26 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:33862e5ceb0800fad63d1008add0a685c61ff1cfa22e73c813a4c9c69a6ad49d`  
		Last Modified: Mon, 23 Nov 2026 23:28:16 GMT  
		Size: 40.0 MB (39952172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f17aa983d06c5706a94ea3104bcf5eb7f5dd614e69af47af2c76cac3405a0c28`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f1eece0f0ea5bca2d47b60d953f3f48485bf4c3e4ada281e6b99756482b7b01`  
		Last Modified: Mon, 23 Nov 2026 23:44:55 GMT  
		Size: 783.6 KB (783558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e8d34d035a755e37c45eaf576741a9244e992f011810476d75b18d6908eb279`  
		Last Modified: Mon, 23 Nov 2026 23:44:56 GMT  
		Size: 6.2 MB (6183915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0eeb60c2c4be4de283aba9408c524b5452482324b7b9e3006bf7e0e3a45c5a56`  
		Last Modified: Mon, 23 Nov 2026 23:44:55 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86bfa40d3d5ec7551460208b94de53c4b07febea20207005bdf9c6de3fe5da2e`  
		Last Modified: Mon, 23 Nov 2026 23:44:55 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22fc765981b592c3838a98c8067d17323f8f374d97ad93696ad8081b13f63535`  
		Last Modified: Mon, 23 Nov 2026 23:44:58 GMT  
		Size: 51.7 MB (51665053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ad8f1558c25bdb1ad3b102da484d6613b1f56498143211de2092cc3ee27c357`  
		Last Modified: Mon, 23 Nov 2026 23:44:56 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59587a7a84b2386004d9defc8cf1e413f5e2f0c8de72a508a90c5841032a8190`  
		Last Modified: Mon, 23 Nov 2026 23:45:00 GMT  
		Size: 132.4 MB (132404842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d820fba75e28df71326a77b9fc93e51edf259e344cdc036b2eebe8f3d17e1457`  
		Last Modified: Mon, 23 Nov 2026 23:44:57 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:083bdfe0202e634b722804d22d86e998baff9b847747f23bb9b7d14f7ba29932
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15728610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2add8d7a84030727d5ad578c8832899efb86727115b56497fbd4fb0588a897e0`

```dockerfile
```

-	Layers:
	-	`sha256:2f8b0db389b0f15894f558fe7a212434a392eafb92f1e6d1d6f4d959041801bd`  
		Last Modified: Mon, 23 Nov 2026 23:44:56 GMT  
		Size: 15.7 MB (15694349 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5418f9e8022cf1bc56f570e72fe3743e4c41546da1f65cf3a4adb93e9d322d87`  
		Last Modified: Mon, 23 Nov 2026 23:44:55 GMT  
		Size: 34.3 KB (34261 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:ca75bd73d5bdbd296b5a2136f5b9cc24ef59e79231dfd7cd86b05a075bb0f2b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **225.7 MB (225667194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c9626aefc6a239beaa9f2eec5c4254a1461d0822aad579a65911f92558e10ff`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 23 Nov 2026 23:26:56 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 23 Nov 2026 23:26:56 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 23:41:34 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 23 Nov 2026 23:41:35 GMT
ENV GOSU_VERSION=1.19
# Mon, 23 Nov 2026 23:41:35 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 23 Nov 2026 23:42:18 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 23 Nov 2026 23:42:19 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 23 Nov 2026 23:42:19 GMT
ENV MYSQL_MAJOR=8.4
# Mon, 23 Nov 2026 23:42:19 GMT
ENV MYSQL_VERSION=8.4.13.1-1.el9
# Mon, 23 Nov 2026 23:42:19 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 23 Nov 2026 23:43:05 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 23 Nov 2026 23:43:05 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 23 Nov 2026 23:43:05 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Mon, 23 Nov 2026 23:43:59 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 23 Nov 2026 23:43:59 GMT
VOLUME [/var/lib/mysql]
# Mon, 23 Nov 2026 23:43:59 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 23:43:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 23:43:59 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 23 Nov 2026 23:43:59 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:417cdca15a600d512dcff11d2b366223724adbe60562114464784b1662bee681`  
		Last Modified: Mon, 23 Nov 2026 23:27:06 GMT  
		Size: 38.5 MB (38494185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a10b58b76f70686a2cd150959a7692673cd5c281734b80bd136bfb8cf872eb7`  
		Last Modified: Mon, 23 Nov 2026 23:44:30 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:018e91d1796fe81a20b352eccc431bd8352724b34c7adbeee5dc9e59cb6cd494`  
		Last Modified: Mon, 23 Nov 2026 23:44:30 GMT  
		Size: 737.5 KB (737526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9904dfb6ebfaf7f32ddc36299541eb7af63bba5a0a16ac1b16be6693d8cb7a10`  
		Last Modified: Mon, 23 Nov 2026 23:44:31 GMT  
		Size: 5.8 MB (5803032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9be696be5d35c65ac948342c37d4df2346dd9be6380f9c8b495482438766157`  
		Last Modified: Mon, 23 Nov 2026 23:44:30 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:980a7d483fa413ee32e23d3c70b8cd62bddd76e49fc9bcdced9cfbce2cc0a115`  
		Last Modified: Mon, 23 Nov 2026 23:44:31 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06e0bba0187248564e30cc0044c8d553332136862ef507b9c0cc70449b234da2`  
		Last Modified: Mon, 23 Nov 2026 23:44:33 GMT  
		Size: 49.9 MB (49852468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29764e778bbbcf0605bb6917b2eda7876307f660685b7a57855f6ccf922365cb`  
		Last Modified: Mon, 23 Nov 2026 23:44:31 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82683b815ff13e9630442756ebe852ee1c26c6db432ed198e50486607b8f41f6`  
		Last Modified: Mon, 23 Nov 2026 23:44:35 GMT  
		Size: 130.8 MB (130770611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c28a2ecb5b299e04f6f28be72a3723ea4f984a6c046d06ae0e631c4f87cb8e68`  
		Last Modified: Mon, 23 Nov 2026 23:44:32 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:70284b31ac2ce858ff04d5a45f473ec30b0cf8756234d78b41957d7398ff2e8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15727351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6cacf8855d5743ec58d2473126e2a50381bce829e66fab32ad6c05081cead5c`

```dockerfile
```

-	Layers:
	-	`sha256:7aabb3a3ad467318b66cd5b7bc6ca136c243db8dddf78ef2df7f3798cd6a0773`  
		Last Modified: Mon, 23 Nov 2026 23:44:31 GMT  
		Size: 15.7 MB (15692785 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a59955fd9a28fcc500fd0bcf6657bc923f453174d02f4f34c264abfa1761e75e`  
		Last Modified: Mon, 23 Nov 2026 23:44:30 GMT  
		Size: 34.6 KB (34566 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:8.4`

```console
$ docker pull mysql@sha256:8c233bad33d520a7aae1c1e619c3a9775f4a1ba2d463d692fada04ec7f40be00
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8.4` - linux; amd64

```console
$ docker pull mysql@sha256:f0c7a4430d773ef8433aae82e08cb02ade4a6ad806a18b1610a48a1728fbdfd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.0 MB (230998911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0977972cb2d5dd2bb989213b9973a612df98d3d018c0473314475d69e9a3241f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 23 Nov 2026 23:28:05 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 23 Nov 2026 23:28:05 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 23:42:10 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 23 Nov 2026 23:42:12 GMT
ENV GOSU_VERSION=1.19
# Mon, 23 Nov 2026 23:42:12 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 23 Nov 2026 23:42:52 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 23 Nov 2026 23:42:53 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 23 Nov 2026 23:42:53 GMT
ENV MYSQL_MAJOR=8.4
# Mon, 23 Nov 2026 23:42:53 GMT
ENV MYSQL_VERSION=8.4.13.1-1.el9
# Mon, 23 Nov 2026 23:42:53 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 23 Nov 2026 23:43:36 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 23 Nov 2026 23:43:36 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 23 Nov 2026 23:43:36 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Mon, 23 Nov 2026 23:44:26 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 23 Nov 2026 23:44:26 GMT
VOLUME [/var/lib/mysql]
# Mon, 23 Nov 2026 23:44:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 23:44:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 23:44:26 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 23 Nov 2026 23:44:26 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:33862e5ceb0800fad63d1008add0a685c61ff1cfa22e73c813a4c9c69a6ad49d`  
		Last Modified: Mon, 23 Nov 2026 23:28:16 GMT  
		Size: 40.0 MB (39952172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f17aa983d06c5706a94ea3104bcf5eb7f5dd614e69af47af2c76cac3405a0c28`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f1eece0f0ea5bca2d47b60d953f3f48485bf4c3e4ada281e6b99756482b7b01`  
		Last Modified: Mon, 23 Nov 2026 23:44:55 GMT  
		Size: 783.6 KB (783558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e8d34d035a755e37c45eaf576741a9244e992f011810476d75b18d6908eb279`  
		Last Modified: Mon, 23 Nov 2026 23:44:56 GMT  
		Size: 6.2 MB (6183915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0eeb60c2c4be4de283aba9408c524b5452482324b7b9e3006bf7e0e3a45c5a56`  
		Last Modified: Mon, 23 Nov 2026 23:44:55 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86bfa40d3d5ec7551460208b94de53c4b07febea20207005bdf9c6de3fe5da2e`  
		Last Modified: Mon, 23 Nov 2026 23:44:55 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22fc765981b592c3838a98c8067d17323f8f374d97ad93696ad8081b13f63535`  
		Last Modified: Mon, 23 Nov 2026 23:44:58 GMT  
		Size: 51.7 MB (51665053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ad8f1558c25bdb1ad3b102da484d6613b1f56498143211de2092cc3ee27c357`  
		Last Modified: Mon, 23 Nov 2026 23:44:56 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59587a7a84b2386004d9defc8cf1e413f5e2f0c8de72a508a90c5841032a8190`  
		Last Modified: Mon, 23 Nov 2026 23:45:00 GMT  
		Size: 132.4 MB (132404842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d820fba75e28df71326a77b9fc93e51edf259e344cdc036b2eebe8f3d17e1457`  
		Last Modified: Mon, 23 Nov 2026 23:44:57 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4` - unknown; unknown

```console
$ docker pull mysql@sha256:083bdfe0202e634b722804d22d86e998baff9b847747f23bb9b7d14f7ba29932
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15728610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2add8d7a84030727d5ad578c8832899efb86727115b56497fbd4fb0588a897e0`

```dockerfile
```

-	Layers:
	-	`sha256:2f8b0db389b0f15894f558fe7a212434a392eafb92f1e6d1d6f4d959041801bd`  
		Last Modified: Mon, 23 Nov 2026 23:44:56 GMT  
		Size: 15.7 MB (15694349 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5418f9e8022cf1bc56f570e72fe3743e4c41546da1f65cf3a4adb93e9d322d87`  
		Last Modified: Mon, 23 Nov 2026 23:44:55 GMT  
		Size: 34.3 KB (34261 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8.4` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:ca75bd73d5bdbd296b5a2136f5b9cc24ef59e79231dfd7cd86b05a075bb0f2b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **225.7 MB (225667194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c9626aefc6a239beaa9f2eec5c4254a1461d0822aad579a65911f92558e10ff`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 23 Nov 2026 23:26:56 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 23 Nov 2026 23:26:56 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 23:41:34 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 23 Nov 2026 23:41:35 GMT
ENV GOSU_VERSION=1.19
# Mon, 23 Nov 2026 23:41:35 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 23 Nov 2026 23:42:18 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 23 Nov 2026 23:42:19 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 23 Nov 2026 23:42:19 GMT
ENV MYSQL_MAJOR=8.4
# Mon, 23 Nov 2026 23:42:19 GMT
ENV MYSQL_VERSION=8.4.13.1-1.el9
# Mon, 23 Nov 2026 23:42:19 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 23 Nov 2026 23:43:05 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 23 Nov 2026 23:43:05 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 23 Nov 2026 23:43:05 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Mon, 23 Nov 2026 23:43:59 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 23 Nov 2026 23:43:59 GMT
VOLUME [/var/lib/mysql]
# Mon, 23 Nov 2026 23:43:59 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 23:43:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 23:43:59 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 23 Nov 2026 23:43:59 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:417cdca15a600d512dcff11d2b366223724adbe60562114464784b1662bee681`  
		Last Modified: Mon, 23 Nov 2026 23:27:06 GMT  
		Size: 38.5 MB (38494185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a10b58b76f70686a2cd150959a7692673cd5c281734b80bd136bfb8cf872eb7`  
		Last Modified: Mon, 23 Nov 2026 23:44:30 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:018e91d1796fe81a20b352eccc431bd8352724b34c7adbeee5dc9e59cb6cd494`  
		Last Modified: Mon, 23 Nov 2026 23:44:30 GMT  
		Size: 737.5 KB (737526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9904dfb6ebfaf7f32ddc36299541eb7af63bba5a0a16ac1b16be6693d8cb7a10`  
		Last Modified: Mon, 23 Nov 2026 23:44:31 GMT  
		Size: 5.8 MB (5803032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9be696be5d35c65ac948342c37d4df2346dd9be6380f9c8b495482438766157`  
		Last Modified: Mon, 23 Nov 2026 23:44:30 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:980a7d483fa413ee32e23d3c70b8cd62bddd76e49fc9bcdced9cfbce2cc0a115`  
		Last Modified: Mon, 23 Nov 2026 23:44:31 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06e0bba0187248564e30cc0044c8d553332136862ef507b9c0cc70449b234da2`  
		Last Modified: Mon, 23 Nov 2026 23:44:33 GMT  
		Size: 49.9 MB (49852468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29764e778bbbcf0605bb6917b2eda7876307f660685b7a57855f6ccf922365cb`  
		Last Modified: Mon, 23 Nov 2026 23:44:31 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82683b815ff13e9630442756ebe852ee1c26c6db432ed198e50486607b8f41f6`  
		Last Modified: Mon, 23 Nov 2026 23:44:35 GMT  
		Size: 130.8 MB (130770611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c28a2ecb5b299e04f6f28be72a3723ea4f984a6c046d06ae0e631c4f87cb8e68`  
		Last Modified: Mon, 23 Nov 2026 23:44:32 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4` - unknown; unknown

```console
$ docker pull mysql@sha256:70284b31ac2ce858ff04d5a45f473ec30b0cf8756234d78b41957d7398ff2e8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15727351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6cacf8855d5743ec58d2473126e2a50381bce829e66fab32ad6c05081cead5c`

```dockerfile
```

-	Layers:
	-	`sha256:7aabb3a3ad467318b66cd5b7bc6ca136c243db8dddf78ef2df7f3798cd6a0773`  
		Last Modified: Mon, 23 Nov 2026 23:44:31 GMT  
		Size: 15.7 MB (15692785 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a59955fd9a28fcc500fd0bcf6657bc923f453174d02f4f34c264abfa1761e75e`  
		Last Modified: Mon, 23 Nov 2026 23:44:30 GMT  
		Size: 34.6 KB (34566 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:8.4-oracle`

```console
$ docker pull mysql@sha256:8c233bad33d520a7aae1c1e619c3a9775f4a1ba2d463d692fada04ec7f40be00
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8.4-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:f0c7a4430d773ef8433aae82e08cb02ade4a6ad806a18b1610a48a1728fbdfd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.0 MB (230998911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0977972cb2d5dd2bb989213b9973a612df98d3d018c0473314475d69e9a3241f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 23 Nov 2026 23:28:05 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 23 Nov 2026 23:28:05 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 23:42:10 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 23 Nov 2026 23:42:12 GMT
ENV GOSU_VERSION=1.19
# Mon, 23 Nov 2026 23:42:12 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 23 Nov 2026 23:42:52 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 23 Nov 2026 23:42:53 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 23 Nov 2026 23:42:53 GMT
ENV MYSQL_MAJOR=8.4
# Mon, 23 Nov 2026 23:42:53 GMT
ENV MYSQL_VERSION=8.4.13.1-1.el9
# Mon, 23 Nov 2026 23:42:53 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 23 Nov 2026 23:43:36 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 23 Nov 2026 23:43:36 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 23 Nov 2026 23:43:36 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Mon, 23 Nov 2026 23:44:26 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 23 Nov 2026 23:44:26 GMT
VOLUME [/var/lib/mysql]
# Mon, 23 Nov 2026 23:44:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 23:44:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 23:44:26 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 23 Nov 2026 23:44:26 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:33862e5ceb0800fad63d1008add0a685c61ff1cfa22e73c813a4c9c69a6ad49d`  
		Last Modified: Mon, 23 Nov 2026 23:28:16 GMT  
		Size: 40.0 MB (39952172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f17aa983d06c5706a94ea3104bcf5eb7f5dd614e69af47af2c76cac3405a0c28`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f1eece0f0ea5bca2d47b60d953f3f48485bf4c3e4ada281e6b99756482b7b01`  
		Last Modified: Mon, 23 Nov 2026 23:44:55 GMT  
		Size: 783.6 KB (783558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e8d34d035a755e37c45eaf576741a9244e992f011810476d75b18d6908eb279`  
		Last Modified: Mon, 23 Nov 2026 23:44:56 GMT  
		Size: 6.2 MB (6183915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0eeb60c2c4be4de283aba9408c524b5452482324b7b9e3006bf7e0e3a45c5a56`  
		Last Modified: Mon, 23 Nov 2026 23:44:55 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86bfa40d3d5ec7551460208b94de53c4b07febea20207005bdf9c6de3fe5da2e`  
		Last Modified: Mon, 23 Nov 2026 23:44:55 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22fc765981b592c3838a98c8067d17323f8f374d97ad93696ad8081b13f63535`  
		Last Modified: Mon, 23 Nov 2026 23:44:58 GMT  
		Size: 51.7 MB (51665053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ad8f1558c25bdb1ad3b102da484d6613b1f56498143211de2092cc3ee27c357`  
		Last Modified: Mon, 23 Nov 2026 23:44:56 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59587a7a84b2386004d9defc8cf1e413f5e2f0c8de72a508a90c5841032a8190`  
		Last Modified: Mon, 23 Nov 2026 23:45:00 GMT  
		Size: 132.4 MB (132404842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d820fba75e28df71326a77b9fc93e51edf259e344cdc036b2eebe8f3d17e1457`  
		Last Modified: Mon, 23 Nov 2026 23:44:57 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:083bdfe0202e634b722804d22d86e998baff9b847747f23bb9b7d14f7ba29932
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15728610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2add8d7a84030727d5ad578c8832899efb86727115b56497fbd4fb0588a897e0`

```dockerfile
```

-	Layers:
	-	`sha256:2f8b0db389b0f15894f558fe7a212434a392eafb92f1e6d1d6f4d959041801bd`  
		Last Modified: Mon, 23 Nov 2026 23:44:56 GMT  
		Size: 15.7 MB (15694349 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5418f9e8022cf1bc56f570e72fe3743e4c41546da1f65cf3a4adb93e9d322d87`  
		Last Modified: Mon, 23 Nov 2026 23:44:55 GMT  
		Size: 34.3 KB (34261 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8.4-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:ca75bd73d5bdbd296b5a2136f5b9cc24ef59e79231dfd7cd86b05a075bb0f2b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **225.7 MB (225667194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c9626aefc6a239beaa9f2eec5c4254a1461d0822aad579a65911f92558e10ff`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 23 Nov 2026 23:26:56 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 23 Nov 2026 23:26:56 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 23:41:34 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 23 Nov 2026 23:41:35 GMT
ENV GOSU_VERSION=1.19
# Mon, 23 Nov 2026 23:41:35 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 23 Nov 2026 23:42:18 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 23 Nov 2026 23:42:19 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 23 Nov 2026 23:42:19 GMT
ENV MYSQL_MAJOR=8.4
# Mon, 23 Nov 2026 23:42:19 GMT
ENV MYSQL_VERSION=8.4.13.1-1.el9
# Mon, 23 Nov 2026 23:42:19 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 23 Nov 2026 23:43:05 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 23 Nov 2026 23:43:05 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 23 Nov 2026 23:43:05 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Mon, 23 Nov 2026 23:43:59 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 23 Nov 2026 23:43:59 GMT
VOLUME [/var/lib/mysql]
# Mon, 23 Nov 2026 23:43:59 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 23:43:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 23:43:59 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 23 Nov 2026 23:43:59 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:417cdca15a600d512dcff11d2b366223724adbe60562114464784b1662bee681`  
		Last Modified: Mon, 23 Nov 2026 23:27:06 GMT  
		Size: 38.5 MB (38494185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a10b58b76f70686a2cd150959a7692673cd5c281734b80bd136bfb8cf872eb7`  
		Last Modified: Mon, 23 Nov 2026 23:44:30 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:018e91d1796fe81a20b352eccc431bd8352724b34c7adbeee5dc9e59cb6cd494`  
		Last Modified: Mon, 23 Nov 2026 23:44:30 GMT  
		Size: 737.5 KB (737526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9904dfb6ebfaf7f32ddc36299541eb7af63bba5a0a16ac1b16be6693d8cb7a10`  
		Last Modified: Mon, 23 Nov 2026 23:44:31 GMT  
		Size: 5.8 MB (5803032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9be696be5d35c65ac948342c37d4df2346dd9be6380f9c8b495482438766157`  
		Last Modified: Mon, 23 Nov 2026 23:44:30 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:980a7d483fa413ee32e23d3c70b8cd62bddd76e49fc9bcdced9cfbce2cc0a115`  
		Last Modified: Mon, 23 Nov 2026 23:44:31 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06e0bba0187248564e30cc0044c8d553332136862ef507b9c0cc70449b234da2`  
		Last Modified: Mon, 23 Nov 2026 23:44:33 GMT  
		Size: 49.9 MB (49852468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29764e778bbbcf0605bb6917b2eda7876307f660685b7a57855f6ccf922365cb`  
		Last Modified: Mon, 23 Nov 2026 23:44:31 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82683b815ff13e9630442756ebe852ee1c26c6db432ed198e50486607b8f41f6`  
		Last Modified: Mon, 23 Nov 2026 23:44:35 GMT  
		Size: 130.8 MB (130770611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c28a2ecb5b299e04f6f28be72a3723ea4f984a6c046d06ae0e631c4f87cb8e68`  
		Last Modified: Mon, 23 Nov 2026 23:44:32 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:70284b31ac2ce858ff04d5a45f473ec30b0cf8756234d78b41957d7398ff2e8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15727351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6cacf8855d5743ec58d2473126e2a50381bce829e66fab32ad6c05081cead5c`

```dockerfile
```

-	Layers:
	-	`sha256:7aabb3a3ad467318b66cd5b7bc6ca136c243db8dddf78ef2df7f3798cd6a0773`  
		Last Modified: Mon, 23 Nov 2026 23:44:31 GMT  
		Size: 15.7 MB (15692785 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a59955fd9a28fcc500fd0bcf6657bc923f453174d02f4f34c264abfa1761e75e`  
		Last Modified: Mon, 23 Nov 2026 23:44:30 GMT  
		Size: 34.6 KB (34566 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:8.4-oraclelinux9`

```console
$ docker pull mysql@sha256:8c233bad33d520a7aae1c1e619c3a9775f4a1ba2d463d692fada04ec7f40be00
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8.4-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:f0c7a4430d773ef8433aae82e08cb02ade4a6ad806a18b1610a48a1728fbdfd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.0 MB (230998911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0977972cb2d5dd2bb989213b9973a612df98d3d018c0473314475d69e9a3241f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 23 Nov 2026 23:28:05 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 23 Nov 2026 23:28:05 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 23:42:10 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 23 Nov 2026 23:42:12 GMT
ENV GOSU_VERSION=1.19
# Mon, 23 Nov 2026 23:42:12 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 23 Nov 2026 23:42:52 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 23 Nov 2026 23:42:53 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 23 Nov 2026 23:42:53 GMT
ENV MYSQL_MAJOR=8.4
# Mon, 23 Nov 2026 23:42:53 GMT
ENV MYSQL_VERSION=8.4.13.1-1.el9
# Mon, 23 Nov 2026 23:42:53 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 23 Nov 2026 23:43:36 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 23 Nov 2026 23:43:36 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 23 Nov 2026 23:43:36 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Mon, 23 Nov 2026 23:44:26 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 23 Nov 2026 23:44:26 GMT
VOLUME [/var/lib/mysql]
# Mon, 23 Nov 2026 23:44:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 23:44:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 23:44:26 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 23 Nov 2026 23:44:26 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:33862e5ceb0800fad63d1008add0a685c61ff1cfa22e73c813a4c9c69a6ad49d`  
		Last Modified: Mon, 23 Nov 2026 23:28:16 GMT  
		Size: 40.0 MB (39952172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f17aa983d06c5706a94ea3104bcf5eb7f5dd614e69af47af2c76cac3405a0c28`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f1eece0f0ea5bca2d47b60d953f3f48485bf4c3e4ada281e6b99756482b7b01`  
		Last Modified: Mon, 23 Nov 2026 23:44:55 GMT  
		Size: 783.6 KB (783558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e8d34d035a755e37c45eaf576741a9244e992f011810476d75b18d6908eb279`  
		Last Modified: Mon, 23 Nov 2026 23:44:56 GMT  
		Size: 6.2 MB (6183915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0eeb60c2c4be4de283aba9408c524b5452482324b7b9e3006bf7e0e3a45c5a56`  
		Last Modified: Mon, 23 Nov 2026 23:44:55 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86bfa40d3d5ec7551460208b94de53c4b07febea20207005bdf9c6de3fe5da2e`  
		Last Modified: Mon, 23 Nov 2026 23:44:55 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22fc765981b592c3838a98c8067d17323f8f374d97ad93696ad8081b13f63535`  
		Last Modified: Mon, 23 Nov 2026 23:44:58 GMT  
		Size: 51.7 MB (51665053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ad8f1558c25bdb1ad3b102da484d6613b1f56498143211de2092cc3ee27c357`  
		Last Modified: Mon, 23 Nov 2026 23:44:56 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59587a7a84b2386004d9defc8cf1e413f5e2f0c8de72a508a90c5841032a8190`  
		Last Modified: Mon, 23 Nov 2026 23:45:00 GMT  
		Size: 132.4 MB (132404842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d820fba75e28df71326a77b9fc93e51edf259e344cdc036b2eebe8f3d17e1457`  
		Last Modified: Mon, 23 Nov 2026 23:44:57 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:083bdfe0202e634b722804d22d86e998baff9b847747f23bb9b7d14f7ba29932
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15728610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2add8d7a84030727d5ad578c8832899efb86727115b56497fbd4fb0588a897e0`

```dockerfile
```

-	Layers:
	-	`sha256:2f8b0db389b0f15894f558fe7a212434a392eafb92f1e6d1d6f4d959041801bd`  
		Last Modified: Mon, 23 Nov 2026 23:44:56 GMT  
		Size: 15.7 MB (15694349 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5418f9e8022cf1bc56f570e72fe3743e4c41546da1f65cf3a4adb93e9d322d87`  
		Last Modified: Mon, 23 Nov 2026 23:44:55 GMT  
		Size: 34.3 KB (34261 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8.4-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:ca75bd73d5bdbd296b5a2136f5b9cc24ef59e79231dfd7cd86b05a075bb0f2b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **225.7 MB (225667194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c9626aefc6a239beaa9f2eec5c4254a1461d0822aad579a65911f92558e10ff`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 23 Nov 2026 23:26:56 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 23 Nov 2026 23:26:56 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 23:41:34 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 23 Nov 2026 23:41:35 GMT
ENV GOSU_VERSION=1.19
# Mon, 23 Nov 2026 23:41:35 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 23 Nov 2026 23:42:18 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 23 Nov 2026 23:42:19 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 23 Nov 2026 23:42:19 GMT
ENV MYSQL_MAJOR=8.4
# Mon, 23 Nov 2026 23:42:19 GMT
ENV MYSQL_VERSION=8.4.13.1-1.el9
# Mon, 23 Nov 2026 23:42:19 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 23 Nov 2026 23:43:05 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 23 Nov 2026 23:43:05 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 23 Nov 2026 23:43:05 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Mon, 23 Nov 2026 23:43:59 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 23 Nov 2026 23:43:59 GMT
VOLUME [/var/lib/mysql]
# Mon, 23 Nov 2026 23:43:59 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 23:43:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 23:43:59 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 23 Nov 2026 23:43:59 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:417cdca15a600d512dcff11d2b366223724adbe60562114464784b1662bee681`  
		Last Modified: Mon, 23 Nov 2026 23:27:06 GMT  
		Size: 38.5 MB (38494185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a10b58b76f70686a2cd150959a7692673cd5c281734b80bd136bfb8cf872eb7`  
		Last Modified: Mon, 23 Nov 2026 23:44:30 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:018e91d1796fe81a20b352eccc431bd8352724b34c7adbeee5dc9e59cb6cd494`  
		Last Modified: Mon, 23 Nov 2026 23:44:30 GMT  
		Size: 737.5 KB (737526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9904dfb6ebfaf7f32ddc36299541eb7af63bba5a0a16ac1b16be6693d8cb7a10`  
		Last Modified: Mon, 23 Nov 2026 23:44:31 GMT  
		Size: 5.8 MB (5803032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9be696be5d35c65ac948342c37d4df2346dd9be6380f9c8b495482438766157`  
		Last Modified: Mon, 23 Nov 2026 23:44:30 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:980a7d483fa413ee32e23d3c70b8cd62bddd76e49fc9bcdced9cfbce2cc0a115`  
		Last Modified: Mon, 23 Nov 2026 23:44:31 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06e0bba0187248564e30cc0044c8d553332136862ef507b9c0cc70449b234da2`  
		Last Modified: Mon, 23 Nov 2026 23:44:33 GMT  
		Size: 49.9 MB (49852468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29764e778bbbcf0605bb6917b2eda7876307f660685b7a57855f6ccf922365cb`  
		Last Modified: Mon, 23 Nov 2026 23:44:31 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82683b815ff13e9630442756ebe852ee1c26c6db432ed198e50486607b8f41f6`  
		Last Modified: Mon, 23 Nov 2026 23:44:35 GMT  
		Size: 130.8 MB (130770611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c28a2ecb5b299e04f6f28be72a3723ea4f984a6c046d06ae0e631c4f87cb8e68`  
		Last Modified: Mon, 23 Nov 2026 23:44:32 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:70284b31ac2ce858ff04d5a45f473ec30b0cf8756234d78b41957d7398ff2e8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15727351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6cacf8855d5743ec58d2473126e2a50381bce829e66fab32ad6c05081cead5c`

```dockerfile
```

-	Layers:
	-	`sha256:7aabb3a3ad467318b66cd5b7bc6ca136c243db8dddf78ef2df7f3798cd6a0773`  
		Last Modified: Mon, 23 Nov 2026 23:44:31 GMT  
		Size: 15.7 MB (15692785 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a59955fd9a28fcc500fd0bcf6657bc923f453174d02f4f34c264abfa1761e75e`  
		Last Modified: Mon, 23 Nov 2026 23:44:30 GMT  
		Size: 34.6 KB (34566 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:8.4.13`

```console
$ docker pull mysql@sha256:8c233bad33d520a7aae1c1e619c3a9775f4a1ba2d463d692fada04ec7f40be00
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8.4.13` - linux; amd64

```console
$ docker pull mysql@sha256:f0c7a4430d773ef8433aae82e08cb02ade4a6ad806a18b1610a48a1728fbdfd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.0 MB (230998911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0977972cb2d5dd2bb989213b9973a612df98d3d018c0473314475d69e9a3241f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 23 Nov 2026 23:28:05 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 23 Nov 2026 23:28:05 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 23:42:10 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 23 Nov 2026 23:42:12 GMT
ENV GOSU_VERSION=1.19
# Mon, 23 Nov 2026 23:42:12 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 23 Nov 2026 23:42:52 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 23 Nov 2026 23:42:53 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 23 Nov 2026 23:42:53 GMT
ENV MYSQL_MAJOR=8.4
# Mon, 23 Nov 2026 23:42:53 GMT
ENV MYSQL_VERSION=8.4.13.1-1.el9
# Mon, 23 Nov 2026 23:42:53 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 23 Nov 2026 23:43:36 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 23 Nov 2026 23:43:36 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 23 Nov 2026 23:43:36 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Mon, 23 Nov 2026 23:44:26 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 23 Nov 2026 23:44:26 GMT
VOLUME [/var/lib/mysql]
# Mon, 23 Nov 2026 23:44:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 23:44:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 23:44:26 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 23 Nov 2026 23:44:26 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:33862e5ceb0800fad63d1008add0a685c61ff1cfa22e73c813a4c9c69a6ad49d`  
		Last Modified: Mon, 23 Nov 2026 23:28:16 GMT  
		Size: 40.0 MB (39952172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f17aa983d06c5706a94ea3104bcf5eb7f5dd614e69af47af2c76cac3405a0c28`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f1eece0f0ea5bca2d47b60d953f3f48485bf4c3e4ada281e6b99756482b7b01`  
		Last Modified: Mon, 23 Nov 2026 23:44:55 GMT  
		Size: 783.6 KB (783558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e8d34d035a755e37c45eaf576741a9244e992f011810476d75b18d6908eb279`  
		Last Modified: Mon, 23 Nov 2026 23:44:56 GMT  
		Size: 6.2 MB (6183915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0eeb60c2c4be4de283aba9408c524b5452482324b7b9e3006bf7e0e3a45c5a56`  
		Last Modified: Mon, 23 Nov 2026 23:44:55 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86bfa40d3d5ec7551460208b94de53c4b07febea20207005bdf9c6de3fe5da2e`  
		Last Modified: Mon, 23 Nov 2026 23:44:55 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22fc765981b592c3838a98c8067d17323f8f374d97ad93696ad8081b13f63535`  
		Last Modified: Mon, 23 Nov 2026 23:44:58 GMT  
		Size: 51.7 MB (51665053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ad8f1558c25bdb1ad3b102da484d6613b1f56498143211de2092cc3ee27c357`  
		Last Modified: Mon, 23 Nov 2026 23:44:56 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59587a7a84b2386004d9defc8cf1e413f5e2f0c8de72a508a90c5841032a8190`  
		Last Modified: Mon, 23 Nov 2026 23:45:00 GMT  
		Size: 132.4 MB (132404842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d820fba75e28df71326a77b9fc93e51edf259e344cdc036b2eebe8f3d17e1457`  
		Last Modified: Mon, 23 Nov 2026 23:44:57 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4.13` - unknown; unknown

```console
$ docker pull mysql@sha256:083bdfe0202e634b722804d22d86e998baff9b847747f23bb9b7d14f7ba29932
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15728610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2add8d7a84030727d5ad578c8832899efb86727115b56497fbd4fb0588a897e0`

```dockerfile
```

-	Layers:
	-	`sha256:2f8b0db389b0f15894f558fe7a212434a392eafb92f1e6d1d6f4d959041801bd`  
		Last Modified: Mon, 23 Nov 2026 23:44:56 GMT  
		Size: 15.7 MB (15694349 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5418f9e8022cf1bc56f570e72fe3743e4c41546da1f65cf3a4adb93e9d322d87`  
		Last Modified: Mon, 23 Nov 2026 23:44:55 GMT  
		Size: 34.3 KB (34261 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8.4.13` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:ca75bd73d5bdbd296b5a2136f5b9cc24ef59e79231dfd7cd86b05a075bb0f2b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **225.7 MB (225667194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c9626aefc6a239beaa9f2eec5c4254a1461d0822aad579a65911f92558e10ff`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 23 Nov 2026 23:26:56 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 23 Nov 2026 23:26:56 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 23:41:34 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 23 Nov 2026 23:41:35 GMT
ENV GOSU_VERSION=1.19
# Mon, 23 Nov 2026 23:41:35 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 23 Nov 2026 23:42:18 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 23 Nov 2026 23:42:19 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 23 Nov 2026 23:42:19 GMT
ENV MYSQL_MAJOR=8.4
# Mon, 23 Nov 2026 23:42:19 GMT
ENV MYSQL_VERSION=8.4.13.1-1.el9
# Mon, 23 Nov 2026 23:42:19 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 23 Nov 2026 23:43:05 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 23 Nov 2026 23:43:05 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 23 Nov 2026 23:43:05 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Mon, 23 Nov 2026 23:43:59 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 23 Nov 2026 23:43:59 GMT
VOLUME [/var/lib/mysql]
# Mon, 23 Nov 2026 23:43:59 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 23:43:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 23:43:59 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 23 Nov 2026 23:43:59 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:417cdca15a600d512dcff11d2b366223724adbe60562114464784b1662bee681`  
		Last Modified: Mon, 23 Nov 2026 23:27:06 GMT  
		Size: 38.5 MB (38494185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a10b58b76f70686a2cd150959a7692673cd5c281734b80bd136bfb8cf872eb7`  
		Last Modified: Mon, 23 Nov 2026 23:44:30 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:018e91d1796fe81a20b352eccc431bd8352724b34c7adbeee5dc9e59cb6cd494`  
		Last Modified: Mon, 23 Nov 2026 23:44:30 GMT  
		Size: 737.5 KB (737526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9904dfb6ebfaf7f32ddc36299541eb7af63bba5a0a16ac1b16be6693d8cb7a10`  
		Last Modified: Mon, 23 Nov 2026 23:44:31 GMT  
		Size: 5.8 MB (5803032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9be696be5d35c65ac948342c37d4df2346dd9be6380f9c8b495482438766157`  
		Last Modified: Mon, 23 Nov 2026 23:44:30 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:980a7d483fa413ee32e23d3c70b8cd62bddd76e49fc9bcdced9cfbce2cc0a115`  
		Last Modified: Mon, 23 Nov 2026 23:44:31 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06e0bba0187248564e30cc0044c8d553332136862ef507b9c0cc70449b234da2`  
		Last Modified: Mon, 23 Nov 2026 23:44:33 GMT  
		Size: 49.9 MB (49852468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29764e778bbbcf0605bb6917b2eda7876307f660685b7a57855f6ccf922365cb`  
		Last Modified: Mon, 23 Nov 2026 23:44:31 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82683b815ff13e9630442756ebe852ee1c26c6db432ed198e50486607b8f41f6`  
		Last Modified: Mon, 23 Nov 2026 23:44:35 GMT  
		Size: 130.8 MB (130770611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c28a2ecb5b299e04f6f28be72a3723ea4f984a6c046d06ae0e631c4f87cb8e68`  
		Last Modified: Mon, 23 Nov 2026 23:44:32 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4.13` - unknown; unknown

```console
$ docker pull mysql@sha256:70284b31ac2ce858ff04d5a45f473ec30b0cf8756234d78b41957d7398ff2e8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15727351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6cacf8855d5743ec58d2473126e2a50381bce829e66fab32ad6c05081cead5c`

```dockerfile
```

-	Layers:
	-	`sha256:7aabb3a3ad467318b66cd5b7bc6ca136c243db8dddf78ef2df7f3798cd6a0773`  
		Last Modified: Mon, 23 Nov 2026 23:44:31 GMT  
		Size: 15.7 MB (15692785 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a59955fd9a28fcc500fd0bcf6657bc923f453174d02f4f34c264abfa1761e75e`  
		Last Modified: Mon, 23 Nov 2026 23:44:30 GMT  
		Size: 34.6 KB (34566 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:8.4.13-oracle`

```console
$ docker pull mysql@sha256:8c233bad33d520a7aae1c1e619c3a9775f4a1ba2d463d692fada04ec7f40be00
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8.4.13-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:f0c7a4430d773ef8433aae82e08cb02ade4a6ad806a18b1610a48a1728fbdfd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.0 MB (230998911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0977972cb2d5dd2bb989213b9973a612df98d3d018c0473314475d69e9a3241f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 23 Nov 2026 23:28:05 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 23 Nov 2026 23:28:05 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 23:42:10 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 23 Nov 2026 23:42:12 GMT
ENV GOSU_VERSION=1.19
# Mon, 23 Nov 2026 23:42:12 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 23 Nov 2026 23:42:52 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 23 Nov 2026 23:42:53 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 23 Nov 2026 23:42:53 GMT
ENV MYSQL_MAJOR=8.4
# Mon, 23 Nov 2026 23:42:53 GMT
ENV MYSQL_VERSION=8.4.13.1-1.el9
# Mon, 23 Nov 2026 23:42:53 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 23 Nov 2026 23:43:36 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 23 Nov 2026 23:43:36 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 23 Nov 2026 23:43:36 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Mon, 23 Nov 2026 23:44:26 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 23 Nov 2026 23:44:26 GMT
VOLUME [/var/lib/mysql]
# Mon, 23 Nov 2026 23:44:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 23:44:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 23:44:26 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 23 Nov 2026 23:44:26 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:33862e5ceb0800fad63d1008add0a685c61ff1cfa22e73c813a4c9c69a6ad49d`  
		Last Modified: Mon, 23 Nov 2026 23:28:16 GMT  
		Size: 40.0 MB (39952172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f17aa983d06c5706a94ea3104bcf5eb7f5dd614e69af47af2c76cac3405a0c28`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f1eece0f0ea5bca2d47b60d953f3f48485bf4c3e4ada281e6b99756482b7b01`  
		Last Modified: Mon, 23 Nov 2026 23:44:55 GMT  
		Size: 783.6 KB (783558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e8d34d035a755e37c45eaf576741a9244e992f011810476d75b18d6908eb279`  
		Last Modified: Mon, 23 Nov 2026 23:44:56 GMT  
		Size: 6.2 MB (6183915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0eeb60c2c4be4de283aba9408c524b5452482324b7b9e3006bf7e0e3a45c5a56`  
		Last Modified: Mon, 23 Nov 2026 23:44:55 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86bfa40d3d5ec7551460208b94de53c4b07febea20207005bdf9c6de3fe5da2e`  
		Last Modified: Mon, 23 Nov 2026 23:44:55 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22fc765981b592c3838a98c8067d17323f8f374d97ad93696ad8081b13f63535`  
		Last Modified: Mon, 23 Nov 2026 23:44:58 GMT  
		Size: 51.7 MB (51665053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ad8f1558c25bdb1ad3b102da484d6613b1f56498143211de2092cc3ee27c357`  
		Last Modified: Mon, 23 Nov 2026 23:44:56 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59587a7a84b2386004d9defc8cf1e413f5e2f0c8de72a508a90c5841032a8190`  
		Last Modified: Mon, 23 Nov 2026 23:45:00 GMT  
		Size: 132.4 MB (132404842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d820fba75e28df71326a77b9fc93e51edf259e344cdc036b2eebe8f3d17e1457`  
		Last Modified: Mon, 23 Nov 2026 23:44:57 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4.13-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:083bdfe0202e634b722804d22d86e998baff9b847747f23bb9b7d14f7ba29932
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15728610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2add8d7a84030727d5ad578c8832899efb86727115b56497fbd4fb0588a897e0`

```dockerfile
```

-	Layers:
	-	`sha256:2f8b0db389b0f15894f558fe7a212434a392eafb92f1e6d1d6f4d959041801bd`  
		Last Modified: Mon, 23 Nov 2026 23:44:56 GMT  
		Size: 15.7 MB (15694349 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5418f9e8022cf1bc56f570e72fe3743e4c41546da1f65cf3a4adb93e9d322d87`  
		Last Modified: Mon, 23 Nov 2026 23:44:55 GMT  
		Size: 34.3 KB (34261 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8.4.13-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:ca75bd73d5bdbd296b5a2136f5b9cc24ef59e79231dfd7cd86b05a075bb0f2b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **225.7 MB (225667194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c9626aefc6a239beaa9f2eec5c4254a1461d0822aad579a65911f92558e10ff`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 23 Nov 2026 23:26:56 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 23 Nov 2026 23:26:56 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 23:41:34 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 23 Nov 2026 23:41:35 GMT
ENV GOSU_VERSION=1.19
# Mon, 23 Nov 2026 23:41:35 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 23 Nov 2026 23:42:18 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 23 Nov 2026 23:42:19 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 23 Nov 2026 23:42:19 GMT
ENV MYSQL_MAJOR=8.4
# Mon, 23 Nov 2026 23:42:19 GMT
ENV MYSQL_VERSION=8.4.13.1-1.el9
# Mon, 23 Nov 2026 23:42:19 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 23 Nov 2026 23:43:05 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 23 Nov 2026 23:43:05 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 23 Nov 2026 23:43:05 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Mon, 23 Nov 2026 23:43:59 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 23 Nov 2026 23:43:59 GMT
VOLUME [/var/lib/mysql]
# Mon, 23 Nov 2026 23:43:59 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 23:43:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 23:43:59 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 23 Nov 2026 23:43:59 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:417cdca15a600d512dcff11d2b366223724adbe60562114464784b1662bee681`  
		Last Modified: Mon, 23 Nov 2026 23:27:06 GMT  
		Size: 38.5 MB (38494185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a10b58b76f70686a2cd150959a7692673cd5c281734b80bd136bfb8cf872eb7`  
		Last Modified: Mon, 23 Nov 2026 23:44:30 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:018e91d1796fe81a20b352eccc431bd8352724b34c7adbeee5dc9e59cb6cd494`  
		Last Modified: Mon, 23 Nov 2026 23:44:30 GMT  
		Size: 737.5 KB (737526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9904dfb6ebfaf7f32ddc36299541eb7af63bba5a0a16ac1b16be6693d8cb7a10`  
		Last Modified: Mon, 23 Nov 2026 23:44:31 GMT  
		Size: 5.8 MB (5803032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9be696be5d35c65ac948342c37d4df2346dd9be6380f9c8b495482438766157`  
		Last Modified: Mon, 23 Nov 2026 23:44:30 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:980a7d483fa413ee32e23d3c70b8cd62bddd76e49fc9bcdced9cfbce2cc0a115`  
		Last Modified: Mon, 23 Nov 2026 23:44:31 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06e0bba0187248564e30cc0044c8d553332136862ef507b9c0cc70449b234da2`  
		Last Modified: Mon, 23 Nov 2026 23:44:33 GMT  
		Size: 49.9 MB (49852468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29764e778bbbcf0605bb6917b2eda7876307f660685b7a57855f6ccf922365cb`  
		Last Modified: Mon, 23 Nov 2026 23:44:31 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82683b815ff13e9630442756ebe852ee1c26c6db432ed198e50486607b8f41f6`  
		Last Modified: Mon, 23 Nov 2026 23:44:35 GMT  
		Size: 130.8 MB (130770611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c28a2ecb5b299e04f6f28be72a3723ea4f984a6c046d06ae0e631c4f87cb8e68`  
		Last Modified: Mon, 23 Nov 2026 23:44:32 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4.13-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:70284b31ac2ce858ff04d5a45f473ec30b0cf8756234d78b41957d7398ff2e8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15727351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6cacf8855d5743ec58d2473126e2a50381bce829e66fab32ad6c05081cead5c`

```dockerfile
```

-	Layers:
	-	`sha256:7aabb3a3ad467318b66cd5b7bc6ca136c243db8dddf78ef2df7f3798cd6a0773`  
		Last Modified: Mon, 23 Nov 2026 23:44:31 GMT  
		Size: 15.7 MB (15692785 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a59955fd9a28fcc500fd0bcf6657bc923f453174d02f4f34c264abfa1761e75e`  
		Last Modified: Mon, 23 Nov 2026 23:44:30 GMT  
		Size: 34.6 KB (34566 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:8.4.13-oraclelinux9`

```console
$ docker pull mysql@sha256:8c233bad33d520a7aae1c1e619c3a9775f4a1ba2d463d692fada04ec7f40be00
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8.4.13-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:f0c7a4430d773ef8433aae82e08cb02ade4a6ad806a18b1610a48a1728fbdfd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.0 MB (230998911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0977972cb2d5dd2bb989213b9973a612df98d3d018c0473314475d69e9a3241f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 23 Nov 2026 23:28:05 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 23 Nov 2026 23:28:05 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 23:42:10 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 23 Nov 2026 23:42:12 GMT
ENV GOSU_VERSION=1.19
# Mon, 23 Nov 2026 23:42:12 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 23 Nov 2026 23:42:52 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 23 Nov 2026 23:42:53 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 23 Nov 2026 23:42:53 GMT
ENV MYSQL_MAJOR=8.4
# Mon, 23 Nov 2026 23:42:53 GMT
ENV MYSQL_VERSION=8.4.13.1-1.el9
# Mon, 23 Nov 2026 23:42:53 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 23 Nov 2026 23:43:36 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 23 Nov 2026 23:43:36 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 23 Nov 2026 23:43:36 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Mon, 23 Nov 2026 23:44:26 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 23 Nov 2026 23:44:26 GMT
VOLUME [/var/lib/mysql]
# Mon, 23 Nov 2026 23:44:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 23:44:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 23:44:26 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 23 Nov 2026 23:44:26 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:33862e5ceb0800fad63d1008add0a685c61ff1cfa22e73c813a4c9c69a6ad49d`  
		Last Modified: Mon, 23 Nov 2026 23:28:16 GMT  
		Size: 40.0 MB (39952172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f17aa983d06c5706a94ea3104bcf5eb7f5dd614e69af47af2c76cac3405a0c28`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f1eece0f0ea5bca2d47b60d953f3f48485bf4c3e4ada281e6b99756482b7b01`  
		Last Modified: Mon, 23 Nov 2026 23:44:55 GMT  
		Size: 783.6 KB (783558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e8d34d035a755e37c45eaf576741a9244e992f011810476d75b18d6908eb279`  
		Last Modified: Mon, 23 Nov 2026 23:44:56 GMT  
		Size: 6.2 MB (6183915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0eeb60c2c4be4de283aba9408c524b5452482324b7b9e3006bf7e0e3a45c5a56`  
		Last Modified: Mon, 23 Nov 2026 23:44:55 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86bfa40d3d5ec7551460208b94de53c4b07febea20207005bdf9c6de3fe5da2e`  
		Last Modified: Mon, 23 Nov 2026 23:44:55 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22fc765981b592c3838a98c8067d17323f8f374d97ad93696ad8081b13f63535`  
		Last Modified: Mon, 23 Nov 2026 23:44:58 GMT  
		Size: 51.7 MB (51665053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ad8f1558c25bdb1ad3b102da484d6613b1f56498143211de2092cc3ee27c357`  
		Last Modified: Mon, 23 Nov 2026 23:44:56 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59587a7a84b2386004d9defc8cf1e413f5e2f0c8de72a508a90c5841032a8190`  
		Last Modified: Mon, 23 Nov 2026 23:45:00 GMT  
		Size: 132.4 MB (132404842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d820fba75e28df71326a77b9fc93e51edf259e344cdc036b2eebe8f3d17e1457`  
		Last Modified: Mon, 23 Nov 2026 23:44:57 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4.13-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:083bdfe0202e634b722804d22d86e998baff9b847747f23bb9b7d14f7ba29932
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15728610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2add8d7a84030727d5ad578c8832899efb86727115b56497fbd4fb0588a897e0`

```dockerfile
```

-	Layers:
	-	`sha256:2f8b0db389b0f15894f558fe7a212434a392eafb92f1e6d1d6f4d959041801bd`  
		Last Modified: Mon, 23 Nov 2026 23:44:56 GMT  
		Size: 15.7 MB (15694349 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5418f9e8022cf1bc56f570e72fe3743e4c41546da1f65cf3a4adb93e9d322d87`  
		Last Modified: Mon, 23 Nov 2026 23:44:55 GMT  
		Size: 34.3 KB (34261 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8.4.13-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:ca75bd73d5bdbd296b5a2136f5b9cc24ef59e79231dfd7cd86b05a075bb0f2b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **225.7 MB (225667194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c9626aefc6a239beaa9f2eec5c4254a1461d0822aad579a65911f92558e10ff`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 23 Nov 2026 23:26:56 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 23 Nov 2026 23:26:56 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 23:41:34 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 23 Nov 2026 23:41:35 GMT
ENV GOSU_VERSION=1.19
# Mon, 23 Nov 2026 23:41:35 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 23 Nov 2026 23:42:18 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 23 Nov 2026 23:42:19 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 23 Nov 2026 23:42:19 GMT
ENV MYSQL_MAJOR=8.4
# Mon, 23 Nov 2026 23:42:19 GMT
ENV MYSQL_VERSION=8.4.13.1-1.el9
# Mon, 23 Nov 2026 23:42:19 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 23 Nov 2026 23:43:05 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 23 Nov 2026 23:43:05 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 23 Nov 2026 23:43:05 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Mon, 23 Nov 2026 23:43:59 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 23 Nov 2026 23:43:59 GMT
VOLUME [/var/lib/mysql]
# Mon, 23 Nov 2026 23:43:59 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 23:43:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 23:43:59 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 23 Nov 2026 23:43:59 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:417cdca15a600d512dcff11d2b366223724adbe60562114464784b1662bee681`  
		Last Modified: Mon, 23 Nov 2026 23:27:06 GMT  
		Size: 38.5 MB (38494185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a10b58b76f70686a2cd150959a7692673cd5c281734b80bd136bfb8cf872eb7`  
		Last Modified: Mon, 23 Nov 2026 23:44:30 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:018e91d1796fe81a20b352eccc431bd8352724b34c7adbeee5dc9e59cb6cd494`  
		Last Modified: Mon, 23 Nov 2026 23:44:30 GMT  
		Size: 737.5 KB (737526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9904dfb6ebfaf7f32ddc36299541eb7af63bba5a0a16ac1b16be6693d8cb7a10`  
		Last Modified: Mon, 23 Nov 2026 23:44:31 GMT  
		Size: 5.8 MB (5803032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9be696be5d35c65ac948342c37d4df2346dd9be6380f9c8b495482438766157`  
		Last Modified: Mon, 23 Nov 2026 23:44:30 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:980a7d483fa413ee32e23d3c70b8cd62bddd76e49fc9bcdced9cfbce2cc0a115`  
		Last Modified: Mon, 23 Nov 2026 23:44:31 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06e0bba0187248564e30cc0044c8d553332136862ef507b9c0cc70449b234da2`  
		Last Modified: Mon, 23 Nov 2026 23:44:33 GMT  
		Size: 49.9 MB (49852468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29764e778bbbcf0605bb6917b2eda7876307f660685b7a57855f6ccf922365cb`  
		Last Modified: Mon, 23 Nov 2026 23:44:31 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82683b815ff13e9630442756ebe852ee1c26c6db432ed198e50486607b8f41f6`  
		Last Modified: Mon, 23 Nov 2026 23:44:35 GMT  
		Size: 130.8 MB (130770611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c28a2ecb5b299e04f6f28be72a3723ea4f984a6c046d06ae0e631c4f87cb8e68`  
		Last Modified: Mon, 23 Nov 2026 23:44:32 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4.13-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:70284b31ac2ce858ff04d5a45f473ec30b0cf8756234d78b41957d7398ff2e8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15727351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6cacf8855d5743ec58d2473126e2a50381bce829e66fab32ad6c05081cead5c`

```dockerfile
```

-	Layers:
	-	`sha256:7aabb3a3ad467318b66cd5b7bc6ca136c243db8dddf78ef2df7f3798cd6a0773`  
		Last Modified: Mon, 23 Nov 2026 23:44:31 GMT  
		Size: 15.7 MB (15692785 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a59955fd9a28fcc500fd0bcf6657bc923f453174d02f4f34c264abfa1761e75e`  
		Last Modified: Mon, 23 Nov 2026 23:44:30 GMT  
		Size: 34.6 KB (34566 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:8.4.13.1`

```console
$ docker pull mysql@sha256:8c233bad33d520a7aae1c1e619c3a9775f4a1ba2d463d692fada04ec7f40be00
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8.4.13.1` - linux; amd64

```console
$ docker pull mysql@sha256:f0c7a4430d773ef8433aae82e08cb02ade4a6ad806a18b1610a48a1728fbdfd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.0 MB (230998911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0977972cb2d5dd2bb989213b9973a612df98d3d018c0473314475d69e9a3241f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 23 Nov 2026 23:28:05 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 23 Nov 2026 23:28:05 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 23:42:10 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 23 Nov 2026 23:42:12 GMT
ENV GOSU_VERSION=1.19
# Mon, 23 Nov 2026 23:42:12 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 23 Nov 2026 23:42:52 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 23 Nov 2026 23:42:53 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 23 Nov 2026 23:42:53 GMT
ENV MYSQL_MAJOR=8.4
# Mon, 23 Nov 2026 23:42:53 GMT
ENV MYSQL_VERSION=8.4.13.1-1.el9
# Mon, 23 Nov 2026 23:42:53 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 23 Nov 2026 23:43:36 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 23 Nov 2026 23:43:36 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 23 Nov 2026 23:43:36 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Mon, 23 Nov 2026 23:44:26 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 23 Nov 2026 23:44:26 GMT
VOLUME [/var/lib/mysql]
# Mon, 23 Nov 2026 23:44:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 23:44:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 23:44:26 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 23 Nov 2026 23:44:26 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:33862e5ceb0800fad63d1008add0a685c61ff1cfa22e73c813a4c9c69a6ad49d`  
		Last Modified: Mon, 23 Nov 2026 23:28:16 GMT  
		Size: 40.0 MB (39952172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f17aa983d06c5706a94ea3104bcf5eb7f5dd614e69af47af2c76cac3405a0c28`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f1eece0f0ea5bca2d47b60d953f3f48485bf4c3e4ada281e6b99756482b7b01`  
		Last Modified: Mon, 23 Nov 2026 23:44:55 GMT  
		Size: 783.6 KB (783558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e8d34d035a755e37c45eaf576741a9244e992f011810476d75b18d6908eb279`  
		Last Modified: Mon, 23 Nov 2026 23:44:56 GMT  
		Size: 6.2 MB (6183915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0eeb60c2c4be4de283aba9408c524b5452482324b7b9e3006bf7e0e3a45c5a56`  
		Last Modified: Mon, 23 Nov 2026 23:44:55 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86bfa40d3d5ec7551460208b94de53c4b07febea20207005bdf9c6de3fe5da2e`  
		Last Modified: Mon, 23 Nov 2026 23:44:55 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22fc765981b592c3838a98c8067d17323f8f374d97ad93696ad8081b13f63535`  
		Last Modified: Mon, 23 Nov 2026 23:44:58 GMT  
		Size: 51.7 MB (51665053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ad8f1558c25bdb1ad3b102da484d6613b1f56498143211de2092cc3ee27c357`  
		Last Modified: Mon, 23 Nov 2026 23:44:56 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59587a7a84b2386004d9defc8cf1e413f5e2f0c8de72a508a90c5841032a8190`  
		Last Modified: Mon, 23 Nov 2026 23:45:00 GMT  
		Size: 132.4 MB (132404842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d820fba75e28df71326a77b9fc93e51edf259e344cdc036b2eebe8f3d17e1457`  
		Last Modified: Mon, 23 Nov 2026 23:44:57 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4.13.1` - unknown; unknown

```console
$ docker pull mysql@sha256:083bdfe0202e634b722804d22d86e998baff9b847747f23bb9b7d14f7ba29932
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15728610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2add8d7a84030727d5ad578c8832899efb86727115b56497fbd4fb0588a897e0`

```dockerfile
```

-	Layers:
	-	`sha256:2f8b0db389b0f15894f558fe7a212434a392eafb92f1e6d1d6f4d959041801bd`  
		Last Modified: Mon, 23 Nov 2026 23:44:56 GMT  
		Size: 15.7 MB (15694349 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5418f9e8022cf1bc56f570e72fe3743e4c41546da1f65cf3a4adb93e9d322d87`  
		Last Modified: Mon, 23 Nov 2026 23:44:55 GMT  
		Size: 34.3 KB (34261 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8.4.13.1` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:ca75bd73d5bdbd296b5a2136f5b9cc24ef59e79231dfd7cd86b05a075bb0f2b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **225.7 MB (225667194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c9626aefc6a239beaa9f2eec5c4254a1461d0822aad579a65911f92558e10ff`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 23 Nov 2026 23:26:56 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 23 Nov 2026 23:26:56 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 23:41:34 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 23 Nov 2026 23:41:35 GMT
ENV GOSU_VERSION=1.19
# Mon, 23 Nov 2026 23:41:35 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 23 Nov 2026 23:42:18 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 23 Nov 2026 23:42:19 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 23 Nov 2026 23:42:19 GMT
ENV MYSQL_MAJOR=8.4
# Mon, 23 Nov 2026 23:42:19 GMT
ENV MYSQL_VERSION=8.4.13.1-1.el9
# Mon, 23 Nov 2026 23:42:19 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 23 Nov 2026 23:43:05 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 23 Nov 2026 23:43:05 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 23 Nov 2026 23:43:05 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Mon, 23 Nov 2026 23:43:59 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 23 Nov 2026 23:43:59 GMT
VOLUME [/var/lib/mysql]
# Mon, 23 Nov 2026 23:43:59 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 23:43:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 23:43:59 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 23 Nov 2026 23:43:59 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:417cdca15a600d512dcff11d2b366223724adbe60562114464784b1662bee681`  
		Last Modified: Mon, 23 Nov 2026 23:27:06 GMT  
		Size: 38.5 MB (38494185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a10b58b76f70686a2cd150959a7692673cd5c281734b80bd136bfb8cf872eb7`  
		Last Modified: Mon, 23 Nov 2026 23:44:30 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:018e91d1796fe81a20b352eccc431bd8352724b34c7adbeee5dc9e59cb6cd494`  
		Last Modified: Mon, 23 Nov 2026 23:44:30 GMT  
		Size: 737.5 KB (737526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9904dfb6ebfaf7f32ddc36299541eb7af63bba5a0a16ac1b16be6693d8cb7a10`  
		Last Modified: Mon, 23 Nov 2026 23:44:31 GMT  
		Size: 5.8 MB (5803032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9be696be5d35c65ac948342c37d4df2346dd9be6380f9c8b495482438766157`  
		Last Modified: Mon, 23 Nov 2026 23:44:30 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:980a7d483fa413ee32e23d3c70b8cd62bddd76e49fc9bcdced9cfbce2cc0a115`  
		Last Modified: Mon, 23 Nov 2026 23:44:31 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06e0bba0187248564e30cc0044c8d553332136862ef507b9c0cc70449b234da2`  
		Last Modified: Mon, 23 Nov 2026 23:44:33 GMT  
		Size: 49.9 MB (49852468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29764e778bbbcf0605bb6917b2eda7876307f660685b7a57855f6ccf922365cb`  
		Last Modified: Mon, 23 Nov 2026 23:44:31 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82683b815ff13e9630442756ebe852ee1c26c6db432ed198e50486607b8f41f6`  
		Last Modified: Mon, 23 Nov 2026 23:44:35 GMT  
		Size: 130.8 MB (130770611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c28a2ecb5b299e04f6f28be72a3723ea4f984a6c046d06ae0e631c4f87cb8e68`  
		Last Modified: Mon, 23 Nov 2026 23:44:32 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4.13.1` - unknown; unknown

```console
$ docker pull mysql@sha256:70284b31ac2ce858ff04d5a45f473ec30b0cf8756234d78b41957d7398ff2e8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15727351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6cacf8855d5743ec58d2473126e2a50381bce829e66fab32ad6c05081cead5c`

```dockerfile
```

-	Layers:
	-	`sha256:7aabb3a3ad467318b66cd5b7bc6ca136c243db8dddf78ef2df7f3798cd6a0773`  
		Last Modified: Mon, 23 Nov 2026 23:44:31 GMT  
		Size: 15.7 MB (15692785 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a59955fd9a28fcc500fd0bcf6657bc923f453174d02f4f34c264abfa1761e75e`  
		Last Modified: Mon, 23 Nov 2026 23:44:30 GMT  
		Size: 34.6 KB (34566 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:8.4.13.1-oracle`

```console
$ docker pull mysql@sha256:8c233bad33d520a7aae1c1e619c3a9775f4a1ba2d463d692fada04ec7f40be00
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8.4.13.1-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:f0c7a4430d773ef8433aae82e08cb02ade4a6ad806a18b1610a48a1728fbdfd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.0 MB (230998911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0977972cb2d5dd2bb989213b9973a612df98d3d018c0473314475d69e9a3241f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 23 Nov 2026 23:28:05 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 23 Nov 2026 23:28:05 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 23:42:10 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 23 Nov 2026 23:42:12 GMT
ENV GOSU_VERSION=1.19
# Mon, 23 Nov 2026 23:42:12 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 23 Nov 2026 23:42:52 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 23 Nov 2026 23:42:53 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 23 Nov 2026 23:42:53 GMT
ENV MYSQL_MAJOR=8.4
# Mon, 23 Nov 2026 23:42:53 GMT
ENV MYSQL_VERSION=8.4.13.1-1.el9
# Mon, 23 Nov 2026 23:42:53 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 23 Nov 2026 23:43:36 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 23 Nov 2026 23:43:36 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 23 Nov 2026 23:43:36 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Mon, 23 Nov 2026 23:44:26 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 23 Nov 2026 23:44:26 GMT
VOLUME [/var/lib/mysql]
# Mon, 23 Nov 2026 23:44:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 23:44:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 23:44:26 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 23 Nov 2026 23:44:26 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:33862e5ceb0800fad63d1008add0a685c61ff1cfa22e73c813a4c9c69a6ad49d`  
		Last Modified: Mon, 23 Nov 2026 23:28:16 GMT  
		Size: 40.0 MB (39952172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f17aa983d06c5706a94ea3104bcf5eb7f5dd614e69af47af2c76cac3405a0c28`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f1eece0f0ea5bca2d47b60d953f3f48485bf4c3e4ada281e6b99756482b7b01`  
		Last Modified: Mon, 23 Nov 2026 23:44:55 GMT  
		Size: 783.6 KB (783558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e8d34d035a755e37c45eaf576741a9244e992f011810476d75b18d6908eb279`  
		Last Modified: Mon, 23 Nov 2026 23:44:56 GMT  
		Size: 6.2 MB (6183915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0eeb60c2c4be4de283aba9408c524b5452482324b7b9e3006bf7e0e3a45c5a56`  
		Last Modified: Mon, 23 Nov 2026 23:44:55 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86bfa40d3d5ec7551460208b94de53c4b07febea20207005bdf9c6de3fe5da2e`  
		Last Modified: Mon, 23 Nov 2026 23:44:55 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22fc765981b592c3838a98c8067d17323f8f374d97ad93696ad8081b13f63535`  
		Last Modified: Mon, 23 Nov 2026 23:44:58 GMT  
		Size: 51.7 MB (51665053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ad8f1558c25bdb1ad3b102da484d6613b1f56498143211de2092cc3ee27c357`  
		Last Modified: Mon, 23 Nov 2026 23:44:56 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59587a7a84b2386004d9defc8cf1e413f5e2f0c8de72a508a90c5841032a8190`  
		Last Modified: Mon, 23 Nov 2026 23:45:00 GMT  
		Size: 132.4 MB (132404842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d820fba75e28df71326a77b9fc93e51edf259e344cdc036b2eebe8f3d17e1457`  
		Last Modified: Mon, 23 Nov 2026 23:44:57 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4.13.1-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:083bdfe0202e634b722804d22d86e998baff9b847747f23bb9b7d14f7ba29932
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15728610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2add8d7a84030727d5ad578c8832899efb86727115b56497fbd4fb0588a897e0`

```dockerfile
```

-	Layers:
	-	`sha256:2f8b0db389b0f15894f558fe7a212434a392eafb92f1e6d1d6f4d959041801bd`  
		Last Modified: Mon, 23 Nov 2026 23:44:56 GMT  
		Size: 15.7 MB (15694349 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5418f9e8022cf1bc56f570e72fe3743e4c41546da1f65cf3a4adb93e9d322d87`  
		Last Modified: Mon, 23 Nov 2026 23:44:55 GMT  
		Size: 34.3 KB (34261 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8.4.13.1-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:ca75bd73d5bdbd296b5a2136f5b9cc24ef59e79231dfd7cd86b05a075bb0f2b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **225.7 MB (225667194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c9626aefc6a239beaa9f2eec5c4254a1461d0822aad579a65911f92558e10ff`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 23 Nov 2026 23:26:56 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 23 Nov 2026 23:26:56 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 23:41:34 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 23 Nov 2026 23:41:35 GMT
ENV GOSU_VERSION=1.19
# Mon, 23 Nov 2026 23:41:35 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 23 Nov 2026 23:42:18 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 23 Nov 2026 23:42:19 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 23 Nov 2026 23:42:19 GMT
ENV MYSQL_MAJOR=8.4
# Mon, 23 Nov 2026 23:42:19 GMT
ENV MYSQL_VERSION=8.4.13.1-1.el9
# Mon, 23 Nov 2026 23:42:19 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 23 Nov 2026 23:43:05 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 23 Nov 2026 23:43:05 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 23 Nov 2026 23:43:05 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Mon, 23 Nov 2026 23:43:59 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 23 Nov 2026 23:43:59 GMT
VOLUME [/var/lib/mysql]
# Mon, 23 Nov 2026 23:43:59 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 23:43:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 23:43:59 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 23 Nov 2026 23:43:59 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:417cdca15a600d512dcff11d2b366223724adbe60562114464784b1662bee681`  
		Last Modified: Mon, 23 Nov 2026 23:27:06 GMT  
		Size: 38.5 MB (38494185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a10b58b76f70686a2cd150959a7692673cd5c281734b80bd136bfb8cf872eb7`  
		Last Modified: Mon, 23 Nov 2026 23:44:30 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:018e91d1796fe81a20b352eccc431bd8352724b34c7adbeee5dc9e59cb6cd494`  
		Last Modified: Mon, 23 Nov 2026 23:44:30 GMT  
		Size: 737.5 KB (737526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9904dfb6ebfaf7f32ddc36299541eb7af63bba5a0a16ac1b16be6693d8cb7a10`  
		Last Modified: Mon, 23 Nov 2026 23:44:31 GMT  
		Size: 5.8 MB (5803032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9be696be5d35c65ac948342c37d4df2346dd9be6380f9c8b495482438766157`  
		Last Modified: Mon, 23 Nov 2026 23:44:30 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:980a7d483fa413ee32e23d3c70b8cd62bddd76e49fc9bcdced9cfbce2cc0a115`  
		Last Modified: Mon, 23 Nov 2026 23:44:31 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06e0bba0187248564e30cc0044c8d553332136862ef507b9c0cc70449b234da2`  
		Last Modified: Mon, 23 Nov 2026 23:44:33 GMT  
		Size: 49.9 MB (49852468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29764e778bbbcf0605bb6917b2eda7876307f660685b7a57855f6ccf922365cb`  
		Last Modified: Mon, 23 Nov 2026 23:44:31 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82683b815ff13e9630442756ebe852ee1c26c6db432ed198e50486607b8f41f6`  
		Last Modified: Mon, 23 Nov 2026 23:44:35 GMT  
		Size: 130.8 MB (130770611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c28a2ecb5b299e04f6f28be72a3723ea4f984a6c046d06ae0e631c4f87cb8e68`  
		Last Modified: Mon, 23 Nov 2026 23:44:32 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4.13.1-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:70284b31ac2ce858ff04d5a45f473ec30b0cf8756234d78b41957d7398ff2e8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15727351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6cacf8855d5743ec58d2473126e2a50381bce829e66fab32ad6c05081cead5c`

```dockerfile
```

-	Layers:
	-	`sha256:7aabb3a3ad467318b66cd5b7bc6ca136c243db8dddf78ef2df7f3798cd6a0773`  
		Last Modified: Mon, 23 Nov 2026 23:44:31 GMT  
		Size: 15.7 MB (15692785 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a59955fd9a28fcc500fd0bcf6657bc923f453174d02f4f34c264abfa1761e75e`  
		Last Modified: Mon, 23 Nov 2026 23:44:30 GMT  
		Size: 34.6 KB (34566 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:8.4.13.1-oraclelinux9`

```console
$ docker pull mysql@sha256:8c233bad33d520a7aae1c1e619c3a9775f4a1ba2d463d692fada04ec7f40be00
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8.4.13.1-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:f0c7a4430d773ef8433aae82e08cb02ade4a6ad806a18b1610a48a1728fbdfd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.0 MB (230998911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0977972cb2d5dd2bb989213b9973a612df98d3d018c0473314475d69e9a3241f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 23 Nov 2026 23:28:05 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 23 Nov 2026 23:28:05 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 23:42:10 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 23 Nov 2026 23:42:12 GMT
ENV GOSU_VERSION=1.19
# Mon, 23 Nov 2026 23:42:12 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 23 Nov 2026 23:42:52 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 23 Nov 2026 23:42:53 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 23 Nov 2026 23:42:53 GMT
ENV MYSQL_MAJOR=8.4
# Mon, 23 Nov 2026 23:42:53 GMT
ENV MYSQL_VERSION=8.4.13.1-1.el9
# Mon, 23 Nov 2026 23:42:53 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 23 Nov 2026 23:43:36 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 23 Nov 2026 23:43:36 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 23 Nov 2026 23:43:36 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Mon, 23 Nov 2026 23:44:26 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 23 Nov 2026 23:44:26 GMT
VOLUME [/var/lib/mysql]
# Mon, 23 Nov 2026 23:44:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 23:44:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 23:44:26 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 23 Nov 2026 23:44:26 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:33862e5ceb0800fad63d1008add0a685c61ff1cfa22e73c813a4c9c69a6ad49d`  
		Last Modified: Mon, 23 Nov 2026 23:28:16 GMT  
		Size: 40.0 MB (39952172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f17aa983d06c5706a94ea3104bcf5eb7f5dd614e69af47af2c76cac3405a0c28`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f1eece0f0ea5bca2d47b60d953f3f48485bf4c3e4ada281e6b99756482b7b01`  
		Last Modified: Mon, 23 Nov 2026 23:44:55 GMT  
		Size: 783.6 KB (783558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e8d34d035a755e37c45eaf576741a9244e992f011810476d75b18d6908eb279`  
		Last Modified: Mon, 23 Nov 2026 23:44:56 GMT  
		Size: 6.2 MB (6183915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0eeb60c2c4be4de283aba9408c524b5452482324b7b9e3006bf7e0e3a45c5a56`  
		Last Modified: Mon, 23 Nov 2026 23:44:55 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86bfa40d3d5ec7551460208b94de53c4b07febea20207005bdf9c6de3fe5da2e`  
		Last Modified: Mon, 23 Nov 2026 23:44:55 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22fc765981b592c3838a98c8067d17323f8f374d97ad93696ad8081b13f63535`  
		Last Modified: Mon, 23 Nov 2026 23:44:58 GMT  
		Size: 51.7 MB (51665053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ad8f1558c25bdb1ad3b102da484d6613b1f56498143211de2092cc3ee27c357`  
		Last Modified: Mon, 23 Nov 2026 23:44:56 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59587a7a84b2386004d9defc8cf1e413f5e2f0c8de72a508a90c5841032a8190`  
		Last Modified: Mon, 23 Nov 2026 23:45:00 GMT  
		Size: 132.4 MB (132404842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d820fba75e28df71326a77b9fc93e51edf259e344cdc036b2eebe8f3d17e1457`  
		Last Modified: Mon, 23 Nov 2026 23:44:57 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4.13.1-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:083bdfe0202e634b722804d22d86e998baff9b847747f23bb9b7d14f7ba29932
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15728610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2add8d7a84030727d5ad578c8832899efb86727115b56497fbd4fb0588a897e0`

```dockerfile
```

-	Layers:
	-	`sha256:2f8b0db389b0f15894f558fe7a212434a392eafb92f1e6d1d6f4d959041801bd`  
		Last Modified: Mon, 23 Nov 2026 23:44:56 GMT  
		Size: 15.7 MB (15694349 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5418f9e8022cf1bc56f570e72fe3743e4c41546da1f65cf3a4adb93e9d322d87`  
		Last Modified: Mon, 23 Nov 2026 23:44:55 GMT  
		Size: 34.3 KB (34261 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8.4.13.1-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:ca75bd73d5bdbd296b5a2136f5b9cc24ef59e79231dfd7cd86b05a075bb0f2b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **225.7 MB (225667194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c9626aefc6a239beaa9f2eec5c4254a1461d0822aad579a65911f92558e10ff`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 23 Nov 2026 23:26:56 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 23 Nov 2026 23:26:56 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 23:41:34 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 23 Nov 2026 23:41:35 GMT
ENV GOSU_VERSION=1.19
# Mon, 23 Nov 2026 23:41:35 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 23 Nov 2026 23:42:18 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 23 Nov 2026 23:42:19 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 23 Nov 2026 23:42:19 GMT
ENV MYSQL_MAJOR=8.4
# Mon, 23 Nov 2026 23:42:19 GMT
ENV MYSQL_VERSION=8.4.13.1-1.el9
# Mon, 23 Nov 2026 23:42:19 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 23 Nov 2026 23:43:05 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 23 Nov 2026 23:43:05 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 23 Nov 2026 23:43:05 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Mon, 23 Nov 2026 23:43:59 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 23 Nov 2026 23:43:59 GMT
VOLUME [/var/lib/mysql]
# Mon, 23 Nov 2026 23:43:59 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 23:43:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 23:43:59 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 23 Nov 2026 23:43:59 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:417cdca15a600d512dcff11d2b366223724adbe60562114464784b1662bee681`  
		Last Modified: Mon, 23 Nov 2026 23:27:06 GMT  
		Size: 38.5 MB (38494185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a10b58b76f70686a2cd150959a7692673cd5c281734b80bd136bfb8cf872eb7`  
		Last Modified: Mon, 23 Nov 2026 23:44:30 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:018e91d1796fe81a20b352eccc431bd8352724b34c7adbeee5dc9e59cb6cd494`  
		Last Modified: Mon, 23 Nov 2026 23:44:30 GMT  
		Size: 737.5 KB (737526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9904dfb6ebfaf7f32ddc36299541eb7af63bba5a0a16ac1b16be6693d8cb7a10`  
		Last Modified: Mon, 23 Nov 2026 23:44:31 GMT  
		Size: 5.8 MB (5803032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9be696be5d35c65ac948342c37d4df2346dd9be6380f9c8b495482438766157`  
		Last Modified: Mon, 23 Nov 2026 23:44:30 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:980a7d483fa413ee32e23d3c70b8cd62bddd76e49fc9bcdced9cfbce2cc0a115`  
		Last Modified: Mon, 23 Nov 2026 23:44:31 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06e0bba0187248564e30cc0044c8d553332136862ef507b9c0cc70449b234da2`  
		Last Modified: Mon, 23 Nov 2026 23:44:33 GMT  
		Size: 49.9 MB (49852468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29764e778bbbcf0605bb6917b2eda7876307f660685b7a57855f6ccf922365cb`  
		Last Modified: Mon, 23 Nov 2026 23:44:31 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82683b815ff13e9630442756ebe852ee1c26c6db432ed198e50486607b8f41f6`  
		Last Modified: Mon, 23 Nov 2026 23:44:35 GMT  
		Size: 130.8 MB (130770611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c28a2ecb5b299e04f6f28be72a3723ea4f984a6c046d06ae0e631c4f87cb8e68`  
		Last Modified: Mon, 23 Nov 2026 23:44:32 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4.13.1-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:70284b31ac2ce858ff04d5a45f473ec30b0cf8756234d78b41957d7398ff2e8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15727351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6cacf8855d5743ec58d2473126e2a50381bce829e66fab32ad6c05081cead5c`

```dockerfile
```

-	Layers:
	-	`sha256:7aabb3a3ad467318b66cd5b7bc6ca136c243db8dddf78ef2df7f3798cd6a0773`  
		Last Modified: Mon, 23 Nov 2026 23:44:31 GMT  
		Size: 15.7 MB (15692785 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a59955fd9a28fcc500fd0bcf6657bc923f453174d02f4f34c264abfa1761e75e`  
		Last Modified: Mon, 23 Nov 2026 23:44:30 GMT  
		Size: 34.6 KB (34566 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9`

```console
$ docker pull mysql@sha256:1f2ca53a9e94ff9f1f313099fa7dc7fb2f72e180ca5b2ef83574031e451bbbf1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9` - linux; amd64

```console
$ docker pull mysql@sha256:c1bd2dbe9bbe17691b380547e2a804e853692a38434b9a7d994fc03c226a359d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.0 MB (262997320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6613b421d1ece146cd7888f8d47ecc59fd9224426667e8f72aef73f39eefd726`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 23 Nov 2026 23:28:05 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 23 Nov 2026 23:28:05 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 23:42:09 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 23 Nov 2026 23:42:11 GMT
ENV GOSU_VERSION=1.19
# Mon, 23 Nov 2026 23:42:11 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 23 Nov 2026 23:42:50 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 23 Nov 2026 23:42:51 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 23 Nov 2026 23:42:51 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 23 Nov 2026 23:42:51 GMT
ENV MYSQL_VERSION=9.7.4.1-1.el9
# Mon, 23 Nov 2026 23:42:51 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 23 Nov 2026 23:43:33 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 23 Nov 2026 23:43:33 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 23 Nov 2026 23:43:33 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 23 Nov 2026 23:44:25 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 23 Nov 2026 23:44:25 GMT
VOLUME [/var/lib/mysql]
# Mon, 23 Nov 2026 23:44:25 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 23:44:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 23:44:25 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 23 Nov 2026 23:44:25 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:33862e5ceb0800fad63d1008add0a685c61ff1cfa22e73c813a4c9c69a6ad49d`  
		Last Modified: Mon, 23 Nov 2026 23:28:16 GMT  
		Size: 40.0 MB (39952172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f17aa983d06c5706a94ea3104bcf5eb7f5dd614e69af47af2c76cac3405a0c28`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5718e8feb833f561c4e2cd2177b961961fbece83b2e3788ac070bed048a9bc67`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 783.6 KB (783555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8266f5aed732508ab5e14f0722b8fefff0efc0e1328c0b313b5d8e766653296d`  
		Last Modified: Mon, 23 Nov 2026 23:45:00 GMT  
		Size: 6.2 MB (6183913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4cbfa65dad127b8b32ab4f34f3fa2e01f89e477ca8a4ed19ca2c98109f285fb`  
		Last Modified: Mon, 23 Nov 2026 23:45:00 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f64e2f7e7474436bbf666b234c79f6dddb1faed0119c63c3358e4e96d62de0df`  
		Last Modified: Mon, 23 Nov 2026 23:45:00 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:879cd3ebb36d2e8991c821faa2617036d4369d5b020523ab437ff7589dfe28e1`  
		Last Modified: Mon, 23 Nov 2026 23:45:02 GMT  
		Size: 57.2 MB (57157043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33b170cdfe3dbbd1c587890a22de4e97fee4ad7f3e3df110d3f748ec03775ee8`  
		Last Modified: Mon, 23 Nov 2026 23:45:01 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab463331dffae1a8fd1c7e9246171753eb9bee844e62186ad95fc6f975b1de20`  
		Last Modified: Mon, 23 Nov 2026 23:45:04 GMT  
		Size: 158.9 MB (158911264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e26aeb2f30fc31337040a2705667c4d9dcd1659318648e43ca736bec44d9a6f7`  
		Last Modified: Mon, 23 Nov 2026 23:45:02 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9` - unknown; unknown

```console
$ docker pull mysql@sha256:3723a134b24f1bf4a3e96d34c9b98c1cd402dc9598fa30083842773902c9f491
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16817565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e8a408158828d97a1e3b9e76d721cdf76e64c2fa26d36447a9a516b58601cfd`

```dockerfile
```

-	Layers:
	-	`sha256:8bc76d00ecec236510bb82f5fdf00d36a503d4522e0c7933066512c50464f327`  
		Last Modified: Mon, 23 Nov 2026 23:45:01 GMT  
		Size: 16.8 MB (16782411 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7d3bf7588ad6e39346289002fd14fb47b53a0e9726176091def5ea201a159df3`  
		Last Modified: Mon, 23 Nov 2026 23:45:00 GMT  
		Size: 35.2 KB (35154 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:3bd4dfe57435169ab3b8afd126a967389551a6ffb072e7baa4f4c4b2a8b423f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.4 MB (259403561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30b60c89b511fd345fb3375b01049a84ce6fa20b3a9e7993ae2b482b658257d2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 23 Nov 2026 23:26:56 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 23 Nov 2026 23:26:56 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 23:41:49 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 23 Nov 2026 23:41:51 GMT
ENV GOSU_VERSION=1.19
# Mon, 23 Nov 2026 23:41:51 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 23 Nov 2026 23:42:35 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 23 Nov 2026 23:42:36 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 23 Nov 2026 23:42:36 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 23 Nov 2026 23:42:36 GMT
ENV MYSQL_VERSION=9.7.4.1-1.el9
# Mon, 23 Nov 2026 23:42:36 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 23 Nov 2026 23:43:23 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 23 Nov 2026 23:43:23 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 23 Nov 2026 23:43:23 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 23 Nov 2026 23:44:21 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 23 Nov 2026 23:44:21 GMT
VOLUME [/var/lib/mysql]
# Mon, 23 Nov 2026 23:44:21 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 23:44:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 23:44:21 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 23 Nov 2026 23:44:21 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:417cdca15a600d512dcff11d2b366223724adbe60562114464784b1662bee681`  
		Last Modified: Mon, 23 Nov 2026 23:27:06 GMT  
		Size: 38.5 MB (38494185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d91a7108ba9dba47ed723d1f4fa48b38668c89481cd39e6130bcf05b8570eb91`  
		Last Modified: Mon, 23 Nov 2026 23:44:56 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3b305bcf60e1888101333ce4ec1a312937de00da66c91477d980bd3dddec470`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 737.5 KB (737525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d32b319dcfa1a2905769a33cb1e3e9d7456d50403f6d091ff90bb04368dc038`  
		Last Modified: Mon, 23 Nov 2026 23:44:57 GMT  
		Size: 5.8 MB (5802989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8e7b0992bb3a93e16b3c39b02d9dfb05132fa4baf36fc694f14f2a39dfc9257`  
		Last Modified: Mon, 23 Nov 2026 23:44:56 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e09a7fddf2c63481a0ace83594258d7e9c17e55cc3fa174d5c359b10b9724caa`  
		Last Modified: Mon, 23 Nov 2026 23:44:56 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78c399874c537c8cbc9b6a294f2a0cb298d62bc3fddd3211b7659aa1ac3f44ac`  
		Last Modified: Mon, 23 Nov 2026 23:45:00 GMT  
		Size: 57.2 MB (57171890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebc15d96621115f7df307a36762fda8ba692e6342474720e6887023ce6281415`  
		Last Modified: Mon, 23 Nov 2026 23:44:57 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:725250f1e4f31eff99287bd620a48a2af31dcb54aa238aa452f0a72ece929d53`  
		Last Modified: Mon, 23 Nov 2026 23:45:01 GMT  
		Size: 157.2 MB (157187602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5d9e833878119ecd985e58734d0c606fdf9e72e204f6ebb8eab3d1eb2e6cbda`  
		Last Modified: Mon, 23 Nov 2026 23:44:58 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9` - unknown; unknown

```console
$ docker pull mysql@sha256:d405f1714c382fd3b30b3bc1cf3fd8c4cef5f5bec9790a7a2895fcec31a7cb7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16816377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32b2fde3de90e0024d532e877b8f8ddd6600e939e91e5a281769c487d30a9a0f`

```dockerfile
```

-	Layers:
	-	`sha256:bca499e7403177e7675b6025a09db6500e214caf85a16f9cdba495a2f895f825`  
		Last Modified: Mon, 23 Nov 2026 23:44:57 GMT  
		Size: 16.8 MB (16780883 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d2267912edc3451b6137ae6d2250e662981c5a8b5c2aaf3d96834439e2651c37`  
		Last Modified: Mon, 23 Nov 2026 23:44:56 GMT  
		Size: 35.5 KB (35494 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9-oracle`

```console
$ docker pull mysql@sha256:1f2ca53a9e94ff9f1f313099fa7dc7fb2f72e180ca5b2ef83574031e451bbbf1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:c1bd2dbe9bbe17691b380547e2a804e853692a38434b9a7d994fc03c226a359d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.0 MB (262997320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6613b421d1ece146cd7888f8d47ecc59fd9224426667e8f72aef73f39eefd726`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 23 Nov 2026 23:28:05 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 23 Nov 2026 23:28:05 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 23:42:09 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 23 Nov 2026 23:42:11 GMT
ENV GOSU_VERSION=1.19
# Mon, 23 Nov 2026 23:42:11 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 23 Nov 2026 23:42:50 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 23 Nov 2026 23:42:51 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 23 Nov 2026 23:42:51 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 23 Nov 2026 23:42:51 GMT
ENV MYSQL_VERSION=9.7.4.1-1.el9
# Mon, 23 Nov 2026 23:42:51 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 23 Nov 2026 23:43:33 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 23 Nov 2026 23:43:33 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 23 Nov 2026 23:43:33 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 23 Nov 2026 23:44:25 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 23 Nov 2026 23:44:25 GMT
VOLUME [/var/lib/mysql]
# Mon, 23 Nov 2026 23:44:25 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 23:44:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 23:44:25 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 23 Nov 2026 23:44:25 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:33862e5ceb0800fad63d1008add0a685c61ff1cfa22e73c813a4c9c69a6ad49d`  
		Last Modified: Mon, 23 Nov 2026 23:28:16 GMT  
		Size: 40.0 MB (39952172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f17aa983d06c5706a94ea3104bcf5eb7f5dd614e69af47af2c76cac3405a0c28`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5718e8feb833f561c4e2cd2177b961961fbece83b2e3788ac070bed048a9bc67`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 783.6 KB (783555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8266f5aed732508ab5e14f0722b8fefff0efc0e1328c0b313b5d8e766653296d`  
		Last Modified: Mon, 23 Nov 2026 23:45:00 GMT  
		Size: 6.2 MB (6183913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4cbfa65dad127b8b32ab4f34f3fa2e01f89e477ca8a4ed19ca2c98109f285fb`  
		Last Modified: Mon, 23 Nov 2026 23:45:00 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f64e2f7e7474436bbf666b234c79f6dddb1faed0119c63c3358e4e96d62de0df`  
		Last Modified: Mon, 23 Nov 2026 23:45:00 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:879cd3ebb36d2e8991c821faa2617036d4369d5b020523ab437ff7589dfe28e1`  
		Last Modified: Mon, 23 Nov 2026 23:45:02 GMT  
		Size: 57.2 MB (57157043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33b170cdfe3dbbd1c587890a22de4e97fee4ad7f3e3df110d3f748ec03775ee8`  
		Last Modified: Mon, 23 Nov 2026 23:45:01 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab463331dffae1a8fd1c7e9246171753eb9bee844e62186ad95fc6f975b1de20`  
		Last Modified: Mon, 23 Nov 2026 23:45:04 GMT  
		Size: 158.9 MB (158911264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e26aeb2f30fc31337040a2705667c4d9dcd1659318648e43ca736bec44d9a6f7`  
		Last Modified: Mon, 23 Nov 2026 23:45:02 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:3723a134b24f1bf4a3e96d34c9b98c1cd402dc9598fa30083842773902c9f491
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16817565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e8a408158828d97a1e3b9e76d721cdf76e64c2fa26d36447a9a516b58601cfd`

```dockerfile
```

-	Layers:
	-	`sha256:8bc76d00ecec236510bb82f5fdf00d36a503d4522e0c7933066512c50464f327`  
		Last Modified: Mon, 23 Nov 2026 23:45:01 GMT  
		Size: 16.8 MB (16782411 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7d3bf7588ad6e39346289002fd14fb47b53a0e9726176091def5ea201a159df3`  
		Last Modified: Mon, 23 Nov 2026 23:45:00 GMT  
		Size: 35.2 KB (35154 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:3bd4dfe57435169ab3b8afd126a967389551a6ffb072e7baa4f4c4b2a8b423f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.4 MB (259403561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30b60c89b511fd345fb3375b01049a84ce6fa20b3a9e7993ae2b482b658257d2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 23 Nov 2026 23:26:56 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 23 Nov 2026 23:26:56 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 23:41:49 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 23 Nov 2026 23:41:51 GMT
ENV GOSU_VERSION=1.19
# Mon, 23 Nov 2026 23:41:51 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 23 Nov 2026 23:42:35 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 23 Nov 2026 23:42:36 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 23 Nov 2026 23:42:36 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 23 Nov 2026 23:42:36 GMT
ENV MYSQL_VERSION=9.7.4.1-1.el9
# Mon, 23 Nov 2026 23:42:36 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 23 Nov 2026 23:43:23 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 23 Nov 2026 23:43:23 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 23 Nov 2026 23:43:23 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 23 Nov 2026 23:44:21 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 23 Nov 2026 23:44:21 GMT
VOLUME [/var/lib/mysql]
# Mon, 23 Nov 2026 23:44:21 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 23:44:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 23:44:21 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 23 Nov 2026 23:44:21 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:417cdca15a600d512dcff11d2b366223724adbe60562114464784b1662bee681`  
		Last Modified: Mon, 23 Nov 2026 23:27:06 GMT  
		Size: 38.5 MB (38494185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d91a7108ba9dba47ed723d1f4fa48b38668c89481cd39e6130bcf05b8570eb91`  
		Last Modified: Mon, 23 Nov 2026 23:44:56 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3b305bcf60e1888101333ce4ec1a312937de00da66c91477d980bd3dddec470`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 737.5 KB (737525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d32b319dcfa1a2905769a33cb1e3e9d7456d50403f6d091ff90bb04368dc038`  
		Last Modified: Mon, 23 Nov 2026 23:44:57 GMT  
		Size: 5.8 MB (5802989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8e7b0992bb3a93e16b3c39b02d9dfb05132fa4baf36fc694f14f2a39dfc9257`  
		Last Modified: Mon, 23 Nov 2026 23:44:56 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e09a7fddf2c63481a0ace83594258d7e9c17e55cc3fa174d5c359b10b9724caa`  
		Last Modified: Mon, 23 Nov 2026 23:44:56 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78c399874c537c8cbc9b6a294f2a0cb298d62bc3fddd3211b7659aa1ac3f44ac`  
		Last Modified: Mon, 23 Nov 2026 23:45:00 GMT  
		Size: 57.2 MB (57171890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebc15d96621115f7df307a36762fda8ba692e6342474720e6887023ce6281415`  
		Last Modified: Mon, 23 Nov 2026 23:44:57 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:725250f1e4f31eff99287bd620a48a2af31dcb54aa238aa452f0a72ece929d53`  
		Last Modified: Mon, 23 Nov 2026 23:45:01 GMT  
		Size: 157.2 MB (157187602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5d9e833878119ecd985e58734d0c606fdf9e72e204f6ebb8eab3d1eb2e6cbda`  
		Last Modified: Mon, 23 Nov 2026 23:44:58 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:d405f1714c382fd3b30b3bc1cf3fd8c4cef5f5bec9790a7a2895fcec31a7cb7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16816377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32b2fde3de90e0024d532e877b8f8ddd6600e939e91e5a281769c487d30a9a0f`

```dockerfile
```

-	Layers:
	-	`sha256:bca499e7403177e7675b6025a09db6500e214caf85a16f9cdba495a2f895f825`  
		Last Modified: Mon, 23 Nov 2026 23:44:57 GMT  
		Size: 16.8 MB (16780883 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d2267912edc3451b6137ae6d2250e662981c5a8b5c2aaf3d96834439e2651c37`  
		Last Modified: Mon, 23 Nov 2026 23:44:56 GMT  
		Size: 35.5 KB (35494 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9-oraclelinux9`

```console
$ docker pull mysql@sha256:1f2ca53a9e94ff9f1f313099fa7dc7fb2f72e180ca5b2ef83574031e451bbbf1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:c1bd2dbe9bbe17691b380547e2a804e853692a38434b9a7d994fc03c226a359d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.0 MB (262997320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6613b421d1ece146cd7888f8d47ecc59fd9224426667e8f72aef73f39eefd726`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 23 Nov 2026 23:28:05 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 23 Nov 2026 23:28:05 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 23:42:09 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 23 Nov 2026 23:42:11 GMT
ENV GOSU_VERSION=1.19
# Mon, 23 Nov 2026 23:42:11 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 23 Nov 2026 23:42:50 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 23 Nov 2026 23:42:51 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 23 Nov 2026 23:42:51 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 23 Nov 2026 23:42:51 GMT
ENV MYSQL_VERSION=9.7.4.1-1.el9
# Mon, 23 Nov 2026 23:42:51 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 23 Nov 2026 23:43:33 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 23 Nov 2026 23:43:33 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 23 Nov 2026 23:43:33 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 23 Nov 2026 23:44:25 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 23 Nov 2026 23:44:25 GMT
VOLUME [/var/lib/mysql]
# Mon, 23 Nov 2026 23:44:25 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 23:44:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 23:44:25 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 23 Nov 2026 23:44:25 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:33862e5ceb0800fad63d1008add0a685c61ff1cfa22e73c813a4c9c69a6ad49d`  
		Last Modified: Mon, 23 Nov 2026 23:28:16 GMT  
		Size: 40.0 MB (39952172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f17aa983d06c5706a94ea3104bcf5eb7f5dd614e69af47af2c76cac3405a0c28`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5718e8feb833f561c4e2cd2177b961961fbece83b2e3788ac070bed048a9bc67`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 783.6 KB (783555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8266f5aed732508ab5e14f0722b8fefff0efc0e1328c0b313b5d8e766653296d`  
		Last Modified: Mon, 23 Nov 2026 23:45:00 GMT  
		Size: 6.2 MB (6183913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4cbfa65dad127b8b32ab4f34f3fa2e01f89e477ca8a4ed19ca2c98109f285fb`  
		Last Modified: Mon, 23 Nov 2026 23:45:00 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f64e2f7e7474436bbf666b234c79f6dddb1faed0119c63c3358e4e96d62de0df`  
		Last Modified: Mon, 23 Nov 2026 23:45:00 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:879cd3ebb36d2e8991c821faa2617036d4369d5b020523ab437ff7589dfe28e1`  
		Last Modified: Mon, 23 Nov 2026 23:45:02 GMT  
		Size: 57.2 MB (57157043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33b170cdfe3dbbd1c587890a22de4e97fee4ad7f3e3df110d3f748ec03775ee8`  
		Last Modified: Mon, 23 Nov 2026 23:45:01 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab463331dffae1a8fd1c7e9246171753eb9bee844e62186ad95fc6f975b1de20`  
		Last Modified: Mon, 23 Nov 2026 23:45:04 GMT  
		Size: 158.9 MB (158911264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e26aeb2f30fc31337040a2705667c4d9dcd1659318648e43ca736bec44d9a6f7`  
		Last Modified: Mon, 23 Nov 2026 23:45:02 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:3723a134b24f1bf4a3e96d34c9b98c1cd402dc9598fa30083842773902c9f491
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16817565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e8a408158828d97a1e3b9e76d721cdf76e64c2fa26d36447a9a516b58601cfd`

```dockerfile
```

-	Layers:
	-	`sha256:8bc76d00ecec236510bb82f5fdf00d36a503d4522e0c7933066512c50464f327`  
		Last Modified: Mon, 23 Nov 2026 23:45:01 GMT  
		Size: 16.8 MB (16782411 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7d3bf7588ad6e39346289002fd14fb47b53a0e9726176091def5ea201a159df3`  
		Last Modified: Mon, 23 Nov 2026 23:45:00 GMT  
		Size: 35.2 KB (35154 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:3bd4dfe57435169ab3b8afd126a967389551a6ffb072e7baa4f4c4b2a8b423f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.4 MB (259403561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30b60c89b511fd345fb3375b01049a84ce6fa20b3a9e7993ae2b482b658257d2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 23 Nov 2026 23:26:56 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 23 Nov 2026 23:26:56 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 23:41:49 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 23 Nov 2026 23:41:51 GMT
ENV GOSU_VERSION=1.19
# Mon, 23 Nov 2026 23:41:51 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 23 Nov 2026 23:42:35 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 23 Nov 2026 23:42:36 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 23 Nov 2026 23:42:36 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 23 Nov 2026 23:42:36 GMT
ENV MYSQL_VERSION=9.7.4.1-1.el9
# Mon, 23 Nov 2026 23:42:36 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 23 Nov 2026 23:43:23 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 23 Nov 2026 23:43:23 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 23 Nov 2026 23:43:23 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 23 Nov 2026 23:44:21 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 23 Nov 2026 23:44:21 GMT
VOLUME [/var/lib/mysql]
# Mon, 23 Nov 2026 23:44:21 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 23:44:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 23:44:21 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 23 Nov 2026 23:44:21 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:417cdca15a600d512dcff11d2b366223724adbe60562114464784b1662bee681`  
		Last Modified: Mon, 23 Nov 2026 23:27:06 GMT  
		Size: 38.5 MB (38494185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d91a7108ba9dba47ed723d1f4fa48b38668c89481cd39e6130bcf05b8570eb91`  
		Last Modified: Mon, 23 Nov 2026 23:44:56 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3b305bcf60e1888101333ce4ec1a312937de00da66c91477d980bd3dddec470`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 737.5 KB (737525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d32b319dcfa1a2905769a33cb1e3e9d7456d50403f6d091ff90bb04368dc038`  
		Last Modified: Mon, 23 Nov 2026 23:44:57 GMT  
		Size: 5.8 MB (5802989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8e7b0992bb3a93e16b3c39b02d9dfb05132fa4baf36fc694f14f2a39dfc9257`  
		Last Modified: Mon, 23 Nov 2026 23:44:56 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e09a7fddf2c63481a0ace83594258d7e9c17e55cc3fa174d5c359b10b9724caa`  
		Last Modified: Mon, 23 Nov 2026 23:44:56 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78c399874c537c8cbc9b6a294f2a0cb298d62bc3fddd3211b7659aa1ac3f44ac`  
		Last Modified: Mon, 23 Nov 2026 23:45:00 GMT  
		Size: 57.2 MB (57171890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebc15d96621115f7df307a36762fda8ba692e6342474720e6887023ce6281415`  
		Last Modified: Mon, 23 Nov 2026 23:44:57 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:725250f1e4f31eff99287bd620a48a2af31dcb54aa238aa452f0a72ece929d53`  
		Last Modified: Mon, 23 Nov 2026 23:45:01 GMT  
		Size: 157.2 MB (157187602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5d9e833878119ecd985e58734d0c606fdf9e72e204f6ebb8eab3d1eb2e6cbda`  
		Last Modified: Mon, 23 Nov 2026 23:44:58 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:d405f1714c382fd3b30b3bc1cf3fd8c4cef5f5bec9790a7a2895fcec31a7cb7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16816377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32b2fde3de90e0024d532e877b8f8ddd6600e939e91e5a281769c487d30a9a0f`

```dockerfile
```

-	Layers:
	-	`sha256:bca499e7403177e7675b6025a09db6500e214caf85a16f9cdba495a2f895f825`  
		Last Modified: Mon, 23 Nov 2026 23:44:57 GMT  
		Size: 16.8 MB (16780883 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d2267912edc3451b6137ae6d2250e662981c5a8b5c2aaf3d96834439e2651c37`  
		Last Modified: Mon, 23 Nov 2026 23:44:56 GMT  
		Size: 35.5 KB (35494 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9.7`

```console
$ docker pull mysql@sha256:1f2ca53a9e94ff9f1f313099fa7dc7fb2f72e180ca5b2ef83574031e451bbbf1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9.7` - linux; amd64

```console
$ docker pull mysql@sha256:c1bd2dbe9bbe17691b380547e2a804e853692a38434b9a7d994fc03c226a359d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.0 MB (262997320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6613b421d1ece146cd7888f8d47ecc59fd9224426667e8f72aef73f39eefd726`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 23 Nov 2026 23:28:05 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 23 Nov 2026 23:28:05 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 23:42:09 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 23 Nov 2026 23:42:11 GMT
ENV GOSU_VERSION=1.19
# Mon, 23 Nov 2026 23:42:11 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 23 Nov 2026 23:42:50 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 23 Nov 2026 23:42:51 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 23 Nov 2026 23:42:51 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 23 Nov 2026 23:42:51 GMT
ENV MYSQL_VERSION=9.7.4.1-1.el9
# Mon, 23 Nov 2026 23:42:51 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 23 Nov 2026 23:43:33 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 23 Nov 2026 23:43:33 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 23 Nov 2026 23:43:33 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 23 Nov 2026 23:44:25 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 23 Nov 2026 23:44:25 GMT
VOLUME [/var/lib/mysql]
# Mon, 23 Nov 2026 23:44:25 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 23:44:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 23:44:25 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 23 Nov 2026 23:44:25 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:33862e5ceb0800fad63d1008add0a685c61ff1cfa22e73c813a4c9c69a6ad49d`  
		Last Modified: Mon, 23 Nov 2026 23:28:16 GMT  
		Size: 40.0 MB (39952172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f17aa983d06c5706a94ea3104bcf5eb7f5dd614e69af47af2c76cac3405a0c28`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5718e8feb833f561c4e2cd2177b961961fbece83b2e3788ac070bed048a9bc67`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 783.6 KB (783555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8266f5aed732508ab5e14f0722b8fefff0efc0e1328c0b313b5d8e766653296d`  
		Last Modified: Mon, 23 Nov 2026 23:45:00 GMT  
		Size: 6.2 MB (6183913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4cbfa65dad127b8b32ab4f34f3fa2e01f89e477ca8a4ed19ca2c98109f285fb`  
		Last Modified: Mon, 23 Nov 2026 23:45:00 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f64e2f7e7474436bbf666b234c79f6dddb1faed0119c63c3358e4e96d62de0df`  
		Last Modified: Mon, 23 Nov 2026 23:45:00 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:879cd3ebb36d2e8991c821faa2617036d4369d5b020523ab437ff7589dfe28e1`  
		Last Modified: Mon, 23 Nov 2026 23:45:02 GMT  
		Size: 57.2 MB (57157043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33b170cdfe3dbbd1c587890a22de4e97fee4ad7f3e3df110d3f748ec03775ee8`  
		Last Modified: Mon, 23 Nov 2026 23:45:01 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab463331dffae1a8fd1c7e9246171753eb9bee844e62186ad95fc6f975b1de20`  
		Last Modified: Mon, 23 Nov 2026 23:45:04 GMT  
		Size: 158.9 MB (158911264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e26aeb2f30fc31337040a2705667c4d9dcd1659318648e43ca736bec44d9a6f7`  
		Last Modified: Mon, 23 Nov 2026 23:45:02 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7` - unknown; unknown

```console
$ docker pull mysql@sha256:3723a134b24f1bf4a3e96d34c9b98c1cd402dc9598fa30083842773902c9f491
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16817565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e8a408158828d97a1e3b9e76d721cdf76e64c2fa26d36447a9a516b58601cfd`

```dockerfile
```

-	Layers:
	-	`sha256:8bc76d00ecec236510bb82f5fdf00d36a503d4522e0c7933066512c50464f327`  
		Last Modified: Mon, 23 Nov 2026 23:45:01 GMT  
		Size: 16.8 MB (16782411 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7d3bf7588ad6e39346289002fd14fb47b53a0e9726176091def5ea201a159df3`  
		Last Modified: Mon, 23 Nov 2026 23:45:00 GMT  
		Size: 35.2 KB (35154 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9.7` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:3bd4dfe57435169ab3b8afd126a967389551a6ffb072e7baa4f4c4b2a8b423f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.4 MB (259403561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30b60c89b511fd345fb3375b01049a84ce6fa20b3a9e7993ae2b482b658257d2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 23 Nov 2026 23:26:56 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 23 Nov 2026 23:26:56 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 23:41:49 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 23 Nov 2026 23:41:51 GMT
ENV GOSU_VERSION=1.19
# Mon, 23 Nov 2026 23:41:51 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 23 Nov 2026 23:42:35 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 23 Nov 2026 23:42:36 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 23 Nov 2026 23:42:36 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 23 Nov 2026 23:42:36 GMT
ENV MYSQL_VERSION=9.7.4.1-1.el9
# Mon, 23 Nov 2026 23:42:36 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 23 Nov 2026 23:43:23 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 23 Nov 2026 23:43:23 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 23 Nov 2026 23:43:23 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 23 Nov 2026 23:44:21 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 23 Nov 2026 23:44:21 GMT
VOLUME [/var/lib/mysql]
# Mon, 23 Nov 2026 23:44:21 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 23:44:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 23:44:21 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 23 Nov 2026 23:44:21 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:417cdca15a600d512dcff11d2b366223724adbe60562114464784b1662bee681`  
		Last Modified: Mon, 23 Nov 2026 23:27:06 GMT  
		Size: 38.5 MB (38494185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d91a7108ba9dba47ed723d1f4fa48b38668c89481cd39e6130bcf05b8570eb91`  
		Last Modified: Mon, 23 Nov 2026 23:44:56 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3b305bcf60e1888101333ce4ec1a312937de00da66c91477d980bd3dddec470`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 737.5 KB (737525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d32b319dcfa1a2905769a33cb1e3e9d7456d50403f6d091ff90bb04368dc038`  
		Last Modified: Mon, 23 Nov 2026 23:44:57 GMT  
		Size: 5.8 MB (5802989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8e7b0992bb3a93e16b3c39b02d9dfb05132fa4baf36fc694f14f2a39dfc9257`  
		Last Modified: Mon, 23 Nov 2026 23:44:56 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e09a7fddf2c63481a0ace83594258d7e9c17e55cc3fa174d5c359b10b9724caa`  
		Last Modified: Mon, 23 Nov 2026 23:44:56 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78c399874c537c8cbc9b6a294f2a0cb298d62bc3fddd3211b7659aa1ac3f44ac`  
		Last Modified: Mon, 23 Nov 2026 23:45:00 GMT  
		Size: 57.2 MB (57171890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebc15d96621115f7df307a36762fda8ba692e6342474720e6887023ce6281415`  
		Last Modified: Mon, 23 Nov 2026 23:44:57 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:725250f1e4f31eff99287bd620a48a2af31dcb54aa238aa452f0a72ece929d53`  
		Last Modified: Mon, 23 Nov 2026 23:45:01 GMT  
		Size: 157.2 MB (157187602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5d9e833878119ecd985e58734d0c606fdf9e72e204f6ebb8eab3d1eb2e6cbda`  
		Last Modified: Mon, 23 Nov 2026 23:44:58 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7` - unknown; unknown

```console
$ docker pull mysql@sha256:d405f1714c382fd3b30b3bc1cf3fd8c4cef5f5bec9790a7a2895fcec31a7cb7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16816377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32b2fde3de90e0024d532e877b8f8ddd6600e939e91e5a281769c487d30a9a0f`

```dockerfile
```

-	Layers:
	-	`sha256:bca499e7403177e7675b6025a09db6500e214caf85a16f9cdba495a2f895f825`  
		Last Modified: Mon, 23 Nov 2026 23:44:57 GMT  
		Size: 16.8 MB (16780883 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d2267912edc3451b6137ae6d2250e662981c5a8b5c2aaf3d96834439e2651c37`  
		Last Modified: Mon, 23 Nov 2026 23:44:56 GMT  
		Size: 35.5 KB (35494 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9.7-oracle`

```console
$ docker pull mysql@sha256:1f2ca53a9e94ff9f1f313099fa7dc7fb2f72e180ca5b2ef83574031e451bbbf1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9.7-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:c1bd2dbe9bbe17691b380547e2a804e853692a38434b9a7d994fc03c226a359d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.0 MB (262997320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6613b421d1ece146cd7888f8d47ecc59fd9224426667e8f72aef73f39eefd726`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 23 Nov 2026 23:28:05 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 23 Nov 2026 23:28:05 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 23:42:09 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 23 Nov 2026 23:42:11 GMT
ENV GOSU_VERSION=1.19
# Mon, 23 Nov 2026 23:42:11 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 23 Nov 2026 23:42:50 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 23 Nov 2026 23:42:51 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 23 Nov 2026 23:42:51 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 23 Nov 2026 23:42:51 GMT
ENV MYSQL_VERSION=9.7.4.1-1.el9
# Mon, 23 Nov 2026 23:42:51 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 23 Nov 2026 23:43:33 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 23 Nov 2026 23:43:33 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 23 Nov 2026 23:43:33 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 23 Nov 2026 23:44:25 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 23 Nov 2026 23:44:25 GMT
VOLUME [/var/lib/mysql]
# Mon, 23 Nov 2026 23:44:25 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 23:44:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 23:44:25 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 23 Nov 2026 23:44:25 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:33862e5ceb0800fad63d1008add0a685c61ff1cfa22e73c813a4c9c69a6ad49d`  
		Last Modified: Mon, 23 Nov 2026 23:28:16 GMT  
		Size: 40.0 MB (39952172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f17aa983d06c5706a94ea3104bcf5eb7f5dd614e69af47af2c76cac3405a0c28`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5718e8feb833f561c4e2cd2177b961961fbece83b2e3788ac070bed048a9bc67`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 783.6 KB (783555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8266f5aed732508ab5e14f0722b8fefff0efc0e1328c0b313b5d8e766653296d`  
		Last Modified: Mon, 23 Nov 2026 23:45:00 GMT  
		Size: 6.2 MB (6183913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4cbfa65dad127b8b32ab4f34f3fa2e01f89e477ca8a4ed19ca2c98109f285fb`  
		Last Modified: Mon, 23 Nov 2026 23:45:00 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f64e2f7e7474436bbf666b234c79f6dddb1faed0119c63c3358e4e96d62de0df`  
		Last Modified: Mon, 23 Nov 2026 23:45:00 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:879cd3ebb36d2e8991c821faa2617036d4369d5b020523ab437ff7589dfe28e1`  
		Last Modified: Mon, 23 Nov 2026 23:45:02 GMT  
		Size: 57.2 MB (57157043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33b170cdfe3dbbd1c587890a22de4e97fee4ad7f3e3df110d3f748ec03775ee8`  
		Last Modified: Mon, 23 Nov 2026 23:45:01 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab463331dffae1a8fd1c7e9246171753eb9bee844e62186ad95fc6f975b1de20`  
		Last Modified: Mon, 23 Nov 2026 23:45:04 GMT  
		Size: 158.9 MB (158911264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e26aeb2f30fc31337040a2705667c4d9dcd1659318648e43ca736bec44d9a6f7`  
		Last Modified: Mon, 23 Nov 2026 23:45:02 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:3723a134b24f1bf4a3e96d34c9b98c1cd402dc9598fa30083842773902c9f491
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16817565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e8a408158828d97a1e3b9e76d721cdf76e64c2fa26d36447a9a516b58601cfd`

```dockerfile
```

-	Layers:
	-	`sha256:8bc76d00ecec236510bb82f5fdf00d36a503d4522e0c7933066512c50464f327`  
		Last Modified: Mon, 23 Nov 2026 23:45:01 GMT  
		Size: 16.8 MB (16782411 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7d3bf7588ad6e39346289002fd14fb47b53a0e9726176091def5ea201a159df3`  
		Last Modified: Mon, 23 Nov 2026 23:45:00 GMT  
		Size: 35.2 KB (35154 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9.7-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:3bd4dfe57435169ab3b8afd126a967389551a6ffb072e7baa4f4c4b2a8b423f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.4 MB (259403561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30b60c89b511fd345fb3375b01049a84ce6fa20b3a9e7993ae2b482b658257d2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 23 Nov 2026 23:26:56 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 23 Nov 2026 23:26:56 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 23:41:49 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 23 Nov 2026 23:41:51 GMT
ENV GOSU_VERSION=1.19
# Mon, 23 Nov 2026 23:41:51 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 23 Nov 2026 23:42:35 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 23 Nov 2026 23:42:36 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 23 Nov 2026 23:42:36 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 23 Nov 2026 23:42:36 GMT
ENV MYSQL_VERSION=9.7.4.1-1.el9
# Mon, 23 Nov 2026 23:42:36 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 23 Nov 2026 23:43:23 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 23 Nov 2026 23:43:23 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 23 Nov 2026 23:43:23 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 23 Nov 2026 23:44:21 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 23 Nov 2026 23:44:21 GMT
VOLUME [/var/lib/mysql]
# Mon, 23 Nov 2026 23:44:21 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 23:44:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 23:44:21 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 23 Nov 2026 23:44:21 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:417cdca15a600d512dcff11d2b366223724adbe60562114464784b1662bee681`  
		Last Modified: Mon, 23 Nov 2026 23:27:06 GMT  
		Size: 38.5 MB (38494185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d91a7108ba9dba47ed723d1f4fa48b38668c89481cd39e6130bcf05b8570eb91`  
		Last Modified: Mon, 23 Nov 2026 23:44:56 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3b305bcf60e1888101333ce4ec1a312937de00da66c91477d980bd3dddec470`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 737.5 KB (737525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d32b319dcfa1a2905769a33cb1e3e9d7456d50403f6d091ff90bb04368dc038`  
		Last Modified: Mon, 23 Nov 2026 23:44:57 GMT  
		Size: 5.8 MB (5802989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8e7b0992bb3a93e16b3c39b02d9dfb05132fa4baf36fc694f14f2a39dfc9257`  
		Last Modified: Mon, 23 Nov 2026 23:44:56 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e09a7fddf2c63481a0ace83594258d7e9c17e55cc3fa174d5c359b10b9724caa`  
		Last Modified: Mon, 23 Nov 2026 23:44:56 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78c399874c537c8cbc9b6a294f2a0cb298d62bc3fddd3211b7659aa1ac3f44ac`  
		Last Modified: Mon, 23 Nov 2026 23:45:00 GMT  
		Size: 57.2 MB (57171890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebc15d96621115f7df307a36762fda8ba692e6342474720e6887023ce6281415`  
		Last Modified: Mon, 23 Nov 2026 23:44:57 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:725250f1e4f31eff99287bd620a48a2af31dcb54aa238aa452f0a72ece929d53`  
		Last Modified: Mon, 23 Nov 2026 23:45:01 GMT  
		Size: 157.2 MB (157187602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5d9e833878119ecd985e58734d0c606fdf9e72e204f6ebb8eab3d1eb2e6cbda`  
		Last Modified: Mon, 23 Nov 2026 23:44:58 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:d405f1714c382fd3b30b3bc1cf3fd8c4cef5f5bec9790a7a2895fcec31a7cb7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16816377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32b2fde3de90e0024d532e877b8f8ddd6600e939e91e5a281769c487d30a9a0f`

```dockerfile
```

-	Layers:
	-	`sha256:bca499e7403177e7675b6025a09db6500e214caf85a16f9cdba495a2f895f825`  
		Last Modified: Mon, 23 Nov 2026 23:44:57 GMT  
		Size: 16.8 MB (16780883 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d2267912edc3451b6137ae6d2250e662981c5a8b5c2aaf3d96834439e2651c37`  
		Last Modified: Mon, 23 Nov 2026 23:44:56 GMT  
		Size: 35.5 KB (35494 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9.7-oraclelinux9`

```console
$ docker pull mysql@sha256:1f2ca53a9e94ff9f1f313099fa7dc7fb2f72e180ca5b2ef83574031e451bbbf1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9.7-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:c1bd2dbe9bbe17691b380547e2a804e853692a38434b9a7d994fc03c226a359d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.0 MB (262997320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6613b421d1ece146cd7888f8d47ecc59fd9224426667e8f72aef73f39eefd726`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 23 Nov 2026 23:28:05 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 23 Nov 2026 23:28:05 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 23:42:09 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 23 Nov 2026 23:42:11 GMT
ENV GOSU_VERSION=1.19
# Mon, 23 Nov 2026 23:42:11 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 23 Nov 2026 23:42:50 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 23 Nov 2026 23:42:51 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 23 Nov 2026 23:42:51 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 23 Nov 2026 23:42:51 GMT
ENV MYSQL_VERSION=9.7.4.1-1.el9
# Mon, 23 Nov 2026 23:42:51 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 23 Nov 2026 23:43:33 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 23 Nov 2026 23:43:33 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 23 Nov 2026 23:43:33 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 23 Nov 2026 23:44:25 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 23 Nov 2026 23:44:25 GMT
VOLUME [/var/lib/mysql]
# Mon, 23 Nov 2026 23:44:25 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 23:44:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 23:44:25 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 23 Nov 2026 23:44:25 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:33862e5ceb0800fad63d1008add0a685c61ff1cfa22e73c813a4c9c69a6ad49d`  
		Last Modified: Mon, 23 Nov 2026 23:28:16 GMT  
		Size: 40.0 MB (39952172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f17aa983d06c5706a94ea3104bcf5eb7f5dd614e69af47af2c76cac3405a0c28`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5718e8feb833f561c4e2cd2177b961961fbece83b2e3788ac070bed048a9bc67`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 783.6 KB (783555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8266f5aed732508ab5e14f0722b8fefff0efc0e1328c0b313b5d8e766653296d`  
		Last Modified: Mon, 23 Nov 2026 23:45:00 GMT  
		Size: 6.2 MB (6183913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4cbfa65dad127b8b32ab4f34f3fa2e01f89e477ca8a4ed19ca2c98109f285fb`  
		Last Modified: Mon, 23 Nov 2026 23:45:00 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f64e2f7e7474436bbf666b234c79f6dddb1faed0119c63c3358e4e96d62de0df`  
		Last Modified: Mon, 23 Nov 2026 23:45:00 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:879cd3ebb36d2e8991c821faa2617036d4369d5b020523ab437ff7589dfe28e1`  
		Last Modified: Mon, 23 Nov 2026 23:45:02 GMT  
		Size: 57.2 MB (57157043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33b170cdfe3dbbd1c587890a22de4e97fee4ad7f3e3df110d3f748ec03775ee8`  
		Last Modified: Mon, 23 Nov 2026 23:45:01 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab463331dffae1a8fd1c7e9246171753eb9bee844e62186ad95fc6f975b1de20`  
		Last Modified: Mon, 23 Nov 2026 23:45:04 GMT  
		Size: 158.9 MB (158911264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e26aeb2f30fc31337040a2705667c4d9dcd1659318648e43ca736bec44d9a6f7`  
		Last Modified: Mon, 23 Nov 2026 23:45:02 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:3723a134b24f1bf4a3e96d34c9b98c1cd402dc9598fa30083842773902c9f491
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16817565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e8a408158828d97a1e3b9e76d721cdf76e64c2fa26d36447a9a516b58601cfd`

```dockerfile
```

-	Layers:
	-	`sha256:8bc76d00ecec236510bb82f5fdf00d36a503d4522e0c7933066512c50464f327`  
		Last Modified: Mon, 23 Nov 2026 23:45:01 GMT  
		Size: 16.8 MB (16782411 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7d3bf7588ad6e39346289002fd14fb47b53a0e9726176091def5ea201a159df3`  
		Last Modified: Mon, 23 Nov 2026 23:45:00 GMT  
		Size: 35.2 KB (35154 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9.7-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:3bd4dfe57435169ab3b8afd126a967389551a6ffb072e7baa4f4c4b2a8b423f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.4 MB (259403561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30b60c89b511fd345fb3375b01049a84ce6fa20b3a9e7993ae2b482b658257d2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 23 Nov 2026 23:26:56 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 23 Nov 2026 23:26:56 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 23:41:49 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 23 Nov 2026 23:41:51 GMT
ENV GOSU_VERSION=1.19
# Mon, 23 Nov 2026 23:41:51 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 23 Nov 2026 23:42:35 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 23 Nov 2026 23:42:36 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 23 Nov 2026 23:42:36 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 23 Nov 2026 23:42:36 GMT
ENV MYSQL_VERSION=9.7.4.1-1.el9
# Mon, 23 Nov 2026 23:42:36 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 23 Nov 2026 23:43:23 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 23 Nov 2026 23:43:23 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 23 Nov 2026 23:43:23 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 23 Nov 2026 23:44:21 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 23 Nov 2026 23:44:21 GMT
VOLUME [/var/lib/mysql]
# Mon, 23 Nov 2026 23:44:21 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 23:44:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 23:44:21 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 23 Nov 2026 23:44:21 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:417cdca15a600d512dcff11d2b366223724adbe60562114464784b1662bee681`  
		Last Modified: Mon, 23 Nov 2026 23:27:06 GMT  
		Size: 38.5 MB (38494185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d91a7108ba9dba47ed723d1f4fa48b38668c89481cd39e6130bcf05b8570eb91`  
		Last Modified: Mon, 23 Nov 2026 23:44:56 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3b305bcf60e1888101333ce4ec1a312937de00da66c91477d980bd3dddec470`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 737.5 KB (737525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d32b319dcfa1a2905769a33cb1e3e9d7456d50403f6d091ff90bb04368dc038`  
		Last Modified: Mon, 23 Nov 2026 23:44:57 GMT  
		Size: 5.8 MB (5802989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8e7b0992bb3a93e16b3c39b02d9dfb05132fa4baf36fc694f14f2a39dfc9257`  
		Last Modified: Mon, 23 Nov 2026 23:44:56 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e09a7fddf2c63481a0ace83594258d7e9c17e55cc3fa174d5c359b10b9724caa`  
		Last Modified: Mon, 23 Nov 2026 23:44:56 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78c399874c537c8cbc9b6a294f2a0cb298d62bc3fddd3211b7659aa1ac3f44ac`  
		Last Modified: Mon, 23 Nov 2026 23:45:00 GMT  
		Size: 57.2 MB (57171890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebc15d96621115f7df307a36762fda8ba692e6342474720e6887023ce6281415`  
		Last Modified: Mon, 23 Nov 2026 23:44:57 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:725250f1e4f31eff99287bd620a48a2af31dcb54aa238aa452f0a72ece929d53`  
		Last Modified: Mon, 23 Nov 2026 23:45:01 GMT  
		Size: 157.2 MB (157187602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5d9e833878119ecd985e58734d0c606fdf9e72e204f6ebb8eab3d1eb2e6cbda`  
		Last Modified: Mon, 23 Nov 2026 23:44:58 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:d405f1714c382fd3b30b3bc1cf3fd8c4cef5f5bec9790a7a2895fcec31a7cb7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16816377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32b2fde3de90e0024d532e877b8f8ddd6600e939e91e5a281769c487d30a9a0f`

```dockerfile
```

-	Layers:
	-	`sha256:bca499e7403177e7675b6025a09db6500e214caf85a16f9cdba495a2f895f825`  
		Last Modified: Mon, 23 Nov 2026 23:44:57 GMT  
		Size: 16.8 MB (16780883 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d2267912edc3451b6137ae6d2250e662981c5a8b5c2aaf3d96834439e2651c37`  
		Last Modified: Mon, 23 Nov 2026 23:44:56 GMT  
		Size: 35.5 KB (35494 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9.7.4`

```console
$ docker pull mysql@sha256:1f2ca53a9e94ff9f1f313099fa7dc7fb2f72e180ca5b2ef83574031e451bbbf1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9.7.4` - linux; amd64

```console
$ docker pull mysql@sha256:c1bd2dbe9bbe17691b380547e2a804e853692a38434b9a7d994fc03c226a359d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.0 MB (262997320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6613b421d1ece146cd7888f8d47ecc59fd9224426667e8f72aef73f39eefd726`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 23 Nov 2026 23:28:05 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 23 Nov 2026 23:28:05 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 23:42:09 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 23 Nov 2026 23:42:11 GMT
ENV GOSU_VERSION=1.19
# Mon, 23 Nov 2026 23:42:11 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 23 Nov 2026 23:42:50 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 23 Nov 2026 23:42:51 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 23 Nov 2026 23:42:51 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 23 Nov 2026 23:42:51 GMT
ENV MYSQL_VERSION=9.7.4.1-1.el9
# Mon, 23 Nov 2026 23:42:51 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 23 Nov 2026 23:43:33 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 23 Nov 2026 23:43:33 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 23 Nov 2026 23:43:33 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 23 Nov 2026 23:44:25 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 23 Nov 2026 23:44:25 GMT
VOLUME [/var/lib/mysql]
# Mon, 23 Nov 2026 23:44:25 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 23:44:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 23:44:25 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 23 Nov 2026 23:44:25 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:33862e5ceb0800fad63d1008add0a685c61ff1cfa22e73c813a4c9c69a6ad49d`  
		Last Modified: Mon, 23 Nov 2026 23:28:16 GMT  
		Size: 40.0 MB (39952172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f17aa983d06c5706a94ea3104bcf5eb7f5dd614e69af47af2c76cac3405a0c28`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5718e8feb833f561c4e2cd2177b961961fbece83b2e3788ac070bed048a9bc67`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 783.6 KB (783555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8266f5aed732508ab5e14f0722b8fefff0efc0e1328c0b313b5d8e766653296d`  
		Last Modified: Mon, 23 Nov 2026 23:45:00 GMT  
		Size: 6.2 MB (6183913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4cbfa65dad127b8b32ab4f34f3fa2e01f89e477ca8a4ed19ca2c98109f285fb`  
		Last Modified: Mon, 23 Nov 2026 23:45:00 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f64e2f7e7474436bbf666b234c79f6dddb1faed0119c63c3358e4e96d62de0df`  
		Last Modified: Mon, 23 Nov 2026 23:45:00 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:879cd3ebb36d2e8991c821faa2617036d4369d5b020523ab437ff7589dfe28e1`  
		Last Modified: Mon, 23 Nov 2026 23:45:02 GMT  
		Size: 57.2 MB (57157043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33b170cdfe3dbbd1c587890a22de4e97fee4ad7f3e3df110d3f748ec03775ee8`  
		Last Modified: Mon, 23 Nov 2026 23:45:01 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab463331dffae1a8fd1c7e9246171753eb9bee844e62186ad95fc6f975b1de20`  
		Last Modified: Mon, 23 Nov 2026 23:45:04 GMT  
		Size: 158.9 MB (158911264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e26aeb2f30fc31337040a2705667c4d9dcd1659318648e43ca736bec44d9a6f7`  
		Last Modified: Mon, 23 Nov 2026 23:45:02 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7.4` - unknown; unknown

```console
$ docker pull mysql@sha256:3723a134b24f1bf4a3e96d34c9b98c1cd402dc9598fa30083842773902c9f491
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16817565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e8a408158828d97a1e3b9e76d721cdf76e64c2fa26d36447a9a516b58601cfd`

```dockerfile
```

-	Layers:
	-	`sha256:8bc76d00ecec236510bb82f5fdf00d36a503d4522e0c7933066512c50464f327`  
		Last Modified: Mon, 23 Nov 2026 23:45:01 GMT  
		Size: 16.8 MB (16782411 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7d3bf7588ad6e39346289002fd14fb47b53a0e9726176091def5ea201a159df3`  
		Last Modified: Mon, 23 Nov 2026 23:45:00 GMT  
		Size: 35.2 KB (35154 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9.7.4` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:3bd4dfe57435169ab3b8afd126a967389551a6ffb072e7baa4f4c4b2a8b423f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.4 MB (259403561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30b60c89b511fd345fb3375b01049a84ce6fa20b3a9e7993ae2b482b658257d2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 23 Nov 2026 23:26:56 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 23 Nov 2026 23:26:56 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 23:41:49 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 23 Nov 2026 23:41:51 GMT
ENV GOSU_VERSION=1.19
# Mon, 23 Nov 2026 23:41:51 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 23 Nov 2026 23:42:35 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 23 Nov 2026 23:42:36 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 23 Nov 2026 23:42:36 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 23 Nov 2026 23:42:36 GMT
ENV MYSQL_VERSION=9.7.4.1-1.el9
# Mon, 23 Nov 2026 23:42:36 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 23 Nov 2026 23:43:23 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 23 Nov 2026 23:43:23 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 23 Nov 2026 23:43:23 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 23 Nov 2026 23:44:21 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 23 Nov 2026 23:44:21 GMT
VOLUME [/var/lib/mysql]
# Mon, 23 Nov 2026 23:44:21 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 23:44:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 23:44:21 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 23 Nov 2026 23:44:21 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:417cdca15a600d512dcff11d2b366223724adbe60562114464784b1662bee681`  
		Last Modified: Mon, 23 Nov 2026 23:27:06 GMT  
		Size: 38.5 MB (38494185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d91a7108ba9dba47ed723d1f4fa48b38668c89481cd39e6130bcf05b8570eb91`  
		Last Modified: Mon, 23 Nov 2026 23:44:56 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3b305bcf60e1888101333ce4ec1a312937de00da66c91477d980bd3dddec470`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 737.5 KB (737525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d32b319dcfa1a2905769a33cb1e3e9d7456d50403f6d091ff90bb04368dc038`  
		Last Modified: Mon, 23 Nov 2026 23:44:57 GMT  
		Size: 5.8 MB (5802989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8e7b0992bb3a93e16b3c39b02d9dfb05132fa4baf36fc694f14f2a39dfc9257`  
		Last Modified: Mon, 23 Nov 2026 23:44:56 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e09a7fddf2c63481a0ace83594258d7e9c17e55cc3fa174d5c359b10b9724caa`  
		Last Modified: Mon, 23 Nov 2026 23:44:56 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78c399874c537c8cbc9b6a294f2a0cb298d62bc3fddd3211b7659aa1ac3f44ac`  
		Last Modified: Mon, 23 Nov 2026 23:45:00 GMT  
		Size: 57.2 MB (57171890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebc15d96621115f7df307a36762fda8ba692e6342474720e6887023ce6281415`  
		Last Modified: Mon, 23 Nov 2026 23:44:57 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:725250f1e4f31eff99287bd620a48a2af31dcb54aa238aa452f0a72ece929d53`  
		Last Modified: Mon, 23 Nov 2026 23:45:01 GMT  
		Size: 157.2 MB (157187602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5d9e833878119ecd985e58734d0c606fdf9e72e204f6ebb8eab3d1eb2e6cbda`  
		Last Modified: Mon, 23 Nov 2026 23:44:58 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7.4` - unknown; unknown

```console
$ docker pull mysql@sha256:d405f1714c382fd3b30b3bc1cf3fd8c4cef5f5bec9790a7a2895fcec31a7cb7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16816377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32b2fde3de90e0024d532e877b8f8ddd6600e939e91e5a281769c487d30a9a0f`

```dockerfile
```

-	Layers:
	-	`sha256:bca499e7403177e7675b6025a09db6500e214caf85a16f9cdba495a2f895f825`  
		Last Modified: Mon, 23 Nov 2026 23:44:57 GMT  
		Size: 16.8 MB (16780883 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d2267912edc3451b6137ae6d2250e662981c5a8b5c2aaf3d96834439e2651c37`  
		Last Modified: Mon, 23 Nov 2026 23:44:56 GMT  
		Size: 35.5 KB (35494 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9.7.4-oracle`

```console
$ docker pull mysql@sha256:1f2ca53a9e94ff9f1f313099fa7dc7fb2f72e180ca5b2ef83574031e451bbbf1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9.7.4-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:c1bd2dbe9bbe17691b380547e2a804e853692a38434b9a7d994fc03c226a359d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.0 MB (262997320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6613b421d1ece146cd7888f8d47ecc59fd9224426667e8f72aef73f39eefd726`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 23 Nov 2026 23:28:05 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 23 Nov 2026 23:28:05 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 23:42:09 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 23 Nov 2026 23:42:11 GMT
ENV GOSU_VERSION=1.19
# Mon, 23 Nov 2026 23:42:11 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 23 Nov 2026 23:42:50 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 23 Nov 2026 23:42:51 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 23 Nov 2026 23:42:51 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 23 Nov 2026 23:42:51 GMT
ENV MYSQL_VERSION=9.7.4.1-1.el9
# Mon, 23 Nov 2026 23:42:51 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 23 Nov 2026 23:43:33 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 23 Nov 2026 23:43:33 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 23 Nov 2026 23:43:33 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 23 Nov 2026 23:44:25 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 23 Nov 2026 23:44:25 GMT
VOLUME [/var/lib/mysql]
# Mon, 23 Nov 2026 23:44:25 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 23:44:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 23:44:25 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 23 Nov 2026 23:44:25 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:33862e5ceb0800fad63d1008add0a685c61ff1cfa22e73c813a4c9c69a6ad49d`  
		Last Modified: Mon, 23 Nov 2026 23:28:16 GMT  
		Size: 40.0 MB (39952172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f17aa983d06c5706a94ea3104bcf5eb7f5dd614e69af47af2c76cac3405a0c28`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5718e8feb833f561c4e2cd2177b961961fbece83b2e3788ac070bed048a9bc67`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 783.6 KB (783555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8266f5aed732508ab5e14f0722b8fefff0efc0e1328c0b313b5d8e766653296d`  
		Last Modified: Mon, 23 Nov 2026 23:45:00 GMT  
		Size: 6.2 MB (6183913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4cbfa65dad127b8b32ab4f34f3fa2e01f89e477ca8a4ed19ca2c98109f285fb`  
		Last Modified: Mon, 23 Nov 2026 23:45:00 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f64e2f7e7474436bbf666b234c79f6dddb1faed0119c63c3358e4e96d62de0df`  
		Last Modified: Mon, 23 Nov 2026 23:45:00 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:879cd3ebb36d2e8991c821faa2617036d4369d5b020523ab437ff7589dfe28e1`  
		Last Modified: Mon, 23 Nov 2026 23:45:02 GMT  
		Size: 57.2 MB (57157043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33b170cdfe3dbbd1c587890a22de4e97fee4ad7f3e3df110d3f748ec03775ee8`  
		Last Modified: Mon, 23 Nov 2026 23:45:01 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab463331dffae1a8fd1c7e9246171753eb9bee844e62186ad95fc6f975b1de20`  
		Last Modified: Mon, 23 Nov 2026 23:45:04 GMT  
		Size: 158.9 MB (158911264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e26aeb2f30fc31337040a2705667c4d9dcd1659318648e43ca736bec44d9a6f7`  
		Last Modified: Mon, 23 Nov 2026 23:45:02 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7.4-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:3723a134b24f1bf4a3e96d34c9b98c1cd402dc9598fa30083842773902c9f491
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16817565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e8a408158828d97a1e3b9e76d721cdf76e64c2fa26d36447a9a516b58601cfd`

```dockerfile
```

-	Layers:
	-	`sha256:8bc76d00ecec236510bb82f5fdf00d36a503d4522e0c7933066512c50464f327`  
		Last Modified: Mon, 23 Nov 2026 23:45:01 GMT  
		Size: 16.8 MB (16782411 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7d3bf7588ad6e39346289002fd14fb47b53a0e9726176091def5ea201a159df3`  
		Last Modified: Mon, 23 Nov 2026 23:45:00 GMT  
		Size: 35.2 KB (35154 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9.7.4-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:3bd4dfe57435169ab3b8afd126a967389551a6ffb072e7baa4f4c4b2a8b423f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.4 MB (259403561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30b60c89b511fd345fb3375b01049a84ce6fa20b3a9e7993ae2b482b658257d2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 23 Nov 2026 23:26:56 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 23 Nov 2026 23:26:56 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 23:41:49 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 23 Nov 2026 23:41:51 GMT
ENV GOSU_VERSION=1.19
# Mon, 23 Nov 2026 23:41:51 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 23 Nov 2026 23:42:35 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 23 Nov 2026 23:42:36 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 23 Nov 2026 23:42:36 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 23 Nov 2026 23:42:36 GMT
ENV MYSQL_VERSION=9.7.4.1-1.el9
# Mon, 23 Nov 2026 23:42:36 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 23 Nov 2026 23:43:23 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 23 Nov 2026 23:43:23 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 23 Nov 2026 23:43:23 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 23 Nov 2026 23:44:21 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 23 Nov 2026 23:44:21 GMT
VOLUME [/var/lib/mysql]
# Mon, 23 Nov 2026 23:44:21 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 23:44:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 23:44:21 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 23 Nov 2026 23:44:21 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:417cdca15a600d512dcff11d2b366223724adbe60562114464784b1662bee681`  
		Last Modified: Mon, 23 Nov 2026 23:27:06 GMT  
		Size: 38.5 MB (38494185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d91a7108ba9dba47ed723d1f4fa48b38668c89481cd39e6130bcf05b8570eb91`  
		Last Modified: Mon, 23 Nov 2026 23:44:56 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3b305bcf60e1888101333ce4ec1a312937de00da66c91477d980bd3dddec470`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 737.5 KB (737525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d32b319dcfa1a2905769a33cb1e3e9d7456d50403f6d091ff90bb04368dc038`  
		Last Modified: Mon, 23 Nov 2026 23:44:57 GMT  
		Size: 5.8 MB (5802989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8e7b0992bb3a93e16b3c39b02d9dfb05132fa4baf36fc694f14f2a39dfc9257`  
		Last Modified: Mon, 23 Nov 2026 23:44:56 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e09a7fddf2c63481a0ace83594258d7e9c17e55cc3fa174d5c359b10b9724caa`  
		Last Modified: Mon, 23 Nov 2026 23:44:56 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78c399874c537c8cbc9b6a294f2a0cb298d62bc3fddd3211b7659aa1ac3f44ac`  
		Last Modified: Mon, 23 Nov 2026 23:45:00 GMT  
		Size: 57.2 MB (57171890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebc15d96621115f7df307a36762fda8ba692e6342474720e6887023ce6281415`  
		Last Modified: Mon, 23 Nov 2026 23:44:57 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:725250f1e4f31eff99287bd620a48a2af31dcb54aa238aa452f0a72ece929d53`  
		Last Modified: Mon, 23 Nov 2026 23:45:01 GMT  
		Size: 157.2 MB (157187602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5d9e833878119ecd985e58734d0c606fdf9e72e204f6ebb8eab3d1eb2e6cbda`  
		Last Modified: Mon, 23 Nov 2026 23:44:58 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7.4-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:d405f1714c382fd3b30b3bc1cf3fd8c4cef5f5bec9790a7a2895fcec31a7cb7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16816377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32b2fde3de90e0024d532e877b8f8ddd6600e939e91e5a281769c487d30a9a0f`

```dockerfile
```

-	Layers:
	-	`sha256:bca499e7403177e7675b6025a09db6500e214caf85a16f9cdba495a2f895f825`  
		Last Modified: Mon, 23 Nov 2026 23:44:57 GMT  
		Size: 16.8 MB (16780883 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d2267912edc3451b6137ae6d2250e662981c5a8b5c2aaf3d96834439e2651c37`  
		Last Modified: Mon, 23 Nov 2026 23:44:56 GMT  
		Size: 35.5 KB (35494 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9.7.4-oraclelinux9`

```console
$ docker pull mysql@sha256:1f2ca53a9e94ff9f1f313099fa7dc7fb2f72e180ca5b2ef83574031e451bbbf1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9.7.4-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:c1bd2dbe9bbe17691b380547e2a804e853692a38434b9a7d994fc03c226a359d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.0 MB (262997320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6613b421d1ece146cd7888f8d47ecc59fd9224426667e8f72aef73f39eefd726`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 23 Nov 2026 23:28:05 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 23 Nov 2026 23:28:05 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 23:42:09 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 23 Nov 2026 23:42:11 GMT
ENV GOSU_VERSION=1.19
# Mon, 23 Nov 2026 23:42:11 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 23 Nov 2026 23:42:50 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 23 Nov 2026 23:42:51 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 23 Nov 2026 23:42:51 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 23 Nov 2026 23:42:51 GMT
ENV MYSQL_VERSION=9.7.4.1-1.el9
# Mon, 23 Nov 2026 23:42:51 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 23 Nov 2026 23:43:33 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 23 Nov 2026 23:43:33 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 23 Nov 2026 23:43:33 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 23 Nov 2026 23:44:25 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 23 Nov 2026 23:44:25 GMT
VOLUME [/var/lib/mysql]
# Mon, 23 Nov 2026 23:44:25 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 23:44:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 23:44:25 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 23 Nov 2026 23:44:25 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:33862e5ceb0800fad63d1008add0a685c61ff1cfa22e73c813a4c9c69a6ad49d`  
		Last Modified: Mon, 23 Nov 2026 23:28:16 GMT  
		Size: 40.0 MB (39952172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f17aa983d06c5706a94ea3104bcf5eb7f5dd614e69af47af2c76cac3405a0c28`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5718e8feb833f561c4e2cd2177b961961fbece83b2e3788ac070bed048a9bc67`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 783.6 KB (783555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8266f5aed732508ab5e14f0722b8fefff0efc0e1328c0b313b5d8e766653296d`  
		Last Modified: Mon, 23 Nov 2026 23:45:00 GMT  
		Size: 6.2 MB (6183913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4cbfa65dad127b8b32ab4f34f3fa2e01f89e477ca8a4ed19ca2c98109f285fb`  
		Last Modified: Mon, 23 Nov 2026 23:45:00 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f64e2f7e7474436bbf666b234c79f6dddb1faed0119c63c3358e4e96d62de0df`  
		Last Modified: Mon, 23 Nov 2026 23:45:00 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:879cd3ebb36d2e8991c821faa2617036d4369d5b020523ab437ff7589dfe28e1`  
		Last Modified: Mon, 23 Nov 2026 23:45:02 GMT  
		Size: 57.2 MB (57157043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33b170cdfe3dbbd1c587890a22de4e97fee4ad7f3e3df110d3f748ec03775ee8`  
		Last Modified: Mon, 23 Nov 2026 23:45:01 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab463331dffae1a8fd1c7e9246171753eb9bee844e62186ad95fc6f975b1de20`  
		Last Modified: Mon, 23 Nov 2026 23:45:04 GMT  
		Size: 158.9 MB (158911264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e26aeb2f30fc31337040a2705667c4d9dcd1659318648e43ca736bec44d9a6f7`  
		Last Modified: Mon, 23 Nov 2026 23:45:02 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7.4-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:3723a134b24f1bf4a3e96d34c9b98c1cd402dc9598fa30083842773902c9f491
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16817565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e8a408158828d97a1e3b9e76d721cdf76e64c2fa26d36447a9a516b58601cfd`

```dockerfile
```

-	Layers:
	-	`sha256:8bc76d00ecec236510bb82f5fdf00d36a503d4522e0c7933066512c50464f327`  
		Last Modified: Mon, 23 Nov 2026 23:45:01 GMT  
		Size: 16.8 MB (16782411 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7d3bf7588ad6e39346289002fd14fb47b53a0e9726176091def5ea201a159df3`  
		Last Modified: Mon, 23 Nov 2026 23:45:00 GMT  
		Size: 35.2 KB (35154 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9.7.4-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:3bd4dfe57435169ab3b8afd126a967389551a6ffb072e7baa4f4c4b2a8b423f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.4 MB (259403561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30b60c89b511fd345fb3375b01049a84ce6fa20b3a9e7993ae2b482b658257d2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 23 Nov 2026 23:26:56 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 23 Nov 2026 23:26:56 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 23:41:49 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 23 Nov 2026 23:41:51 GMT
ENV GOSU_VERSION=1.19
# Mon, 23 Nov 2026 23:41:51 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 23 Nov 2026 23:42:35 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 23 Nov 2026 23:42:36 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 23 Nov 2026 23:42:36 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 23 Nov 2026 23:42:36 GMT
ENV MYSQL_VERSION=9.7.4.1-1.el9
# Mon, 23 Nov 2026 23:42:36 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 23 Nov 2026 23:43:23 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 23 Nov 2026 23:43:23 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 23 Nov 2026 23:43:23 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 23 Nov 2026 23:44:21 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 23 Nov 2026 23:44:21 GMT
VOLUME [/var/lib/mysql]
# Mon, 23 Nov 2026 23:44:21 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 23:44:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 23:44:21 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 23 Nov 2026 23:44:21 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:417cdca15a600d512dcff11d2b366223724adbe60562114464784b1662bee681`  
		Last Modified: Mon, 23 Nov 2026 23:27:06 GMT  
		Size: 38.5 MB (38494185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d91a7108ba9dba47ed723d1f4fa48b38668c89481cd39e6130bcf05b8570eb91`  
		Last Modified: Mon, 23 Nov 2026 23:44:56 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3b305bcf60e1888101333ce4ec1a312937de00da66c91477d980bd3dddec470`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 737.5 KB (737525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d32b319dcfa1a2905769a33cb1e3e9d7456d50403f6d091ff90bb04368dc038`  
		Last Modified: Mon, 23 Nov 2026 23:44:57 GMT  
		Size: 5.8 MB (5802989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8e7b0992bb3a93e16b3c39b02d9dfb05132fa4baf36fc694f14f2a39dfc9257`  
		Last Modified: Mon, 23 Nov 2026 23:44:56 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e09a7fddf2c63481a0ace83594258d7e9c17e55cc3fa174d5c359b10b9724caa`  
		Last Modified: Mon, 23 Nov 2026 23:44:56 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78c399874c537c8cbc9b6a294f2a0cb298d62bc3fddd3211b7659aa1ac3f44ac`  
		Last Modified: Mon, 23 Nov 2026 23:45:00 GMT  
		Size: 57.2 MB (57171890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebc15d96621115f7df307a36762fda8ba692e6342474720e6887023ce6281415`  
		Last Modified: Mon, 23 Nov 2026 23:44:57 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:725250f1e4f31eff99287bd620a48a2af31dcb54aa238aa452f0a72ece929d53`  
		Last Modified: Mon, 23 Nov 2026 23:45:01 GMT  
		Size: 157.2 MB (157187602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5d9e833878119ecd985e58734d0c606fdf9e72e204f6ebb8eab3d1eb2e6cbda`  
		Last Modified: Mon, 23 Nov 2026 23:44:58 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7.4-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:d405f1714c382fd3b30b3bc1cf3fd8c4cef5f5bec9790a7a2895fcec31a7cb7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16816377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32b2fde3de90e0024d532e877b8f8ddd6600e939e91e5a281769c487d30a9a0f`

```dockerfile
```

-	Layers:
	-	`sha256:bca499e7403177e7675b6025a09db6500e214caf85a16f9cdba495a2f895f825`  
		Last Modified: Mon, 23 Nov 2026 23:44:57 GMT  
		Size: 16.8 MB (16780883 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d2267912edc3451b6137ae6d2250e662981c5a8b5c2aaf3d96834439e2651c37`  
		Last Modified: Mon, 23 Nov 2026 23:44:56 GMT  
		Size: 35.5 KB (35494 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9.7.4.1`

```console
$ docker pull mysql@sha256:1f2ca53a9e94ff9f1f313099fa7dc7fb2f72e180ca5b2ef83574031e451bbbf1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9.7.4.1` - linux; amd64

```console
$ docker pull mysql@sha256:c1bd2dbe9bbe17691b380547e2a804e853692a38434b9a7d994fc03c226a359d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.0 MB (262997320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6613b421d1ece146cd7888f8d47ecc59fd9224426667e8f72aef73f39eefd726`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 23 Nov 2026 23:28:05 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 23 Nov 2026 23:28:05 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 23:42:09 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 23 Nov 2026 23:42:11 GMT
ENV GOSU_VERSION=1.19
# Mon, 23 Nov 2026 23:42:11 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 23 Nov 2026 23:42:50 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 23 Nov 2026 23:42:51 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 23 Nov 2026 23:42:51 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 23 Nov 2026 23:42:51 GMT
ENV MYSQL_VERSION=9.7.4.1-1.el9
# Mon, 23 Nov 2026 23:42:51 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 23 Nov 2026 23:43:33 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 23 Nov 2026 23:43:33 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 23 Nov 2026 23:43:33 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 23 Nov 2026 23:44:25 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 23 Nov 2026 23:44:25 GMT
VOLUME [/var/lib/mysql]
# Mon, 23 Nov 2026 23:44:25 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 23:44:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 23:44:25 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 23 Nov 2026 23:44:25 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:33862e5ceb0800fad63d1008add0a685c61ff1cfa22e73c813a4c9c69a6ad49d`  
		Last Modified: Mon, 23 Nov 2026 23:28:16 GMT  
		Size: 40.0 MB (39952172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f17aa983d06c5706a94ea3104bcf5eb7f5dd614e69af47af2c76cac3405a0c28`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5718e8feb833f561c4e2cd2177b961961fbece83b2e3788ac070bed048a9bc67`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 783.6 KB (783555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8266f5aed732508ab5e14f0722b8fefff0efc0e1328c0b313b5d8e766653296d`  
		Last Modified: Mon, 23 Nov 2026 23:45:00 GMT  
		Size: 6.2 MB (6183913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4cbfa65dad127b8b32ab4f34f3fa2e01f89e477ca8a4ed19ca2c98109f285fb`  
		Last Modified: Mon, 23 Nov 2026 23:45:00 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f64e2f7e7474436bbf666b234c79f6dddb1faed0119c63c3358e4e96d62de0df`  
		Last Modified: Mon, 23 Nov 2026 23:45:00 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:879cd3ebb36d2e8991c821faa2617036d4369d5b020523ab437ff7589dfe28e1`  
		Last Modified: Mon, 23 Nov 2026 23:45:02 GMT  
		Size: 57.2 MB (57157043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33b170cdfe3dbbd1c587890a22de4e97fee4ad7f3e3df110d3f748ec03775ee8`  
		Last Modified: Mon, 23 Nov 2026 23:45:01 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab463331dffae1a8fd1c7e9246171753eb9bee844e62186ad95fc6f975b1de20`  
		Last Modified: Mon, 23 Nov 2026 23:45:04 GMT  
		Size: 158.9 MB (158911264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e26aeb2f30fc31337040a2705667c4d9dcd1659318648e43ca736bec44d9a6f7`  
		Last Modified: Mon, 23 Nov 2026 23:45:02 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7.4.1` - unknown; unknown

```console
$ docker pull mysql@sha256:3723a134b24f1bf4a3e96d34c9b98c1cd402dc9598fa30083842773902c9f491
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16817565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e8a408158828d97a1e3b9e76d721cdf76e64c2fa26d36447a9a516b58601cfd`

```dockerfile
```

-	Layers:
	-	`sha256:8bc76d00ecec236510bb82f5fdf00d36a503d4522e0c7933066512c50464f327`  
		Last Modified: Mon, 23 Nov 2026 23:45:01 GMT  
		Size: 16.8 MB (16782411 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7d3bf7588ad6e39346289002fd14fb47b53a0e9726176091def5ea201a159df3`  
		Last Modified: Mon, 23 Nov 2026 23:45:00 GMT  
		Size: 35.2 KB (35154 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9.7.4.1` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:3bd4dfe57435169ab3b8afd126a967389551a6ffb072e7baa4f4c4b2a8b423f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.4 MB (259403561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30b60c89b511fd345fb3375b01049a84ce6fa20b3a9e7993ae2b482b658257d2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 23 Nov 2026 23:26:56 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 23 Nov 2026 23:26:56 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 23:41:49 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 23 Nov 2026 23:41:51 GMT
ENV GOSU_VERSION=1.19
# Mon, 23 Nov 2026 23:41:51 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 23 Nov 2026 23:42:35 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 23 Nov 2026 23:42:36 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 23 Nov 2026 23:42:36 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 23 Nov 2026 23:42:36 GMT
ENV MYSQL_VERSION=9.7.4.1-1.el9
# Mon, 23 Nov 2026 23:42:36 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 23 Nov 2026 23:43:23 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 23 Nov 2026 23:43:23 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 23 Nov 2026 23:43:23 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 23 Nov 2026 23:44:21 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 23 Nov 2026 23:44:21 GMT
VOLUME [/var/lib/mysql]
# Mon, 23 Nov 2026 23:44:21 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 23:44:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 23:44:21 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 23 Nov 2026 23:44:21 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:417cdca15a600d512dcff11d2b366223724adbe60562114464784b1662bee681`  
		Last Modified: Mon, 23 Nov 2026 23:27:06 GMT  
		Size: 38.5 MB (38494185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d91a7108ba9dba47ed723d1f4fa48b38668c89481cd39e6130bcf05b8570eb91`  
		Last Modified: Mon, 23 Nov 2026 23:44:56 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3b305bcf60e1888101333ce4ec1a312937de00da66c91477d980bd3dddec470`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 737.5 KB (737525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d32b319dcfa1a2905769a33cb1e3e9d7456d50403f6d091ff90bb04368dc038`  
		Last Modified: Mon, 23 Nov 2026 23:44:57 GMT  
		Size: 5.8 MB (5802989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8e7b0992bb3a93e16b3c39b02d9dfb05132fa4baf36fc694f14f2a39dfc9257`  
		Last Modified: Mon, 23 Nov 2026 23:44:56 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e09a7fddf2c63481a0ace83594258d7e9c17e55cc3fa174d5c359b10b9724caa`  
		Last Modified: Mon, 23 Nov 2026 23:44:56 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78c399874c537c8cbc9b6a294f2a0cb298d62bc3fddd3211b7659aa1ac3f44ac`  
		Last Modified: Mon, 23 Nov 2026 23:45:00 GMT  
		Size: 57.2 MB (57171890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebc15d96621115f7df307a36762fda8ba692e6342474720e6887023ce6281415`  
		Last Modified: Mon, 23 Nov 2026 23:44:57 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:725250f1e4f31eff99287bd620a48a2af31dcb54aa238aa452f0a72ece929d53`  
		Last Modified: Mon, 23 Nov 2026 23:45:01 GMT  
		Size: 157.2 MB (157187602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5d9e833878119ecd985e58734d0c606fdf9e72e204f6ebb8eab3d1eb2e6cbda`  
		Last Modified: Mon, 23 Nov 2026 23:44:58 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7.4.1` - unknown; unknown

```console
$ docker pull mysql@sha256:d405f1714c382fd3b30b3bc1cf3fd8c4cef5f5bec9790a7a2895fcec31a7cb7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16816377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32b2fde3de90e0024d532e877b8f8ddd6600e939e91e5a281769c487d30a9a0f`

```dockerfile
```

-	Layers:
	-	`sha256:bca499e7403177e7675b6025a09db6500e214caf85a16f9cdba495a2f895f825`  
		Last Modified: Mon, 23 Nov 2026 23:44:57 GMT  
		Size: 16.8 MB (16780883 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d2267912edc3451b6137ae6d2250e662981c5a8b5c2aaf3d96834439e2651c37`  
		Last Modified: Mon, 23 Nov 2026 23:44:56 GMT  
		Size: 35.5 KB (35494 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9.7.4.1-oracle`

```console
$ docker pull mysql@sha256:1f2ca53a9e94ff9f1f313099fa7dc7fb2f72e180ca5b2ef83574031e451bbbf1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9.7.4.1-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:c1bd2dbe9bbe17691b380547e2a804e853692a38434b9a7d994fc03c226a359d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.0 MB (262997320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6613b421d1ece146cd7888f8d47ecc59fd9224426667e8f72aef73f39eefd726`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 23 Nov 2026 23:28:05 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 23 Nov 2026 23:28:05 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 23:42:09 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 23 Nov 2026 23:42:11 GMT
ENV GOSU_VERSION=1.19
# Mon, 23 Nov 2026 23:42:11 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 23 Nov 2026 23:42:50 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 23 Nov 2026 23:42:51 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 23 Nov 2026 23:42:51 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 23 Nov 2026 23:42:51 GMT
ENV MYSQL_VERSION=9.7.4.1-1.el9
# Mon, 23 Nov 2026 23:42:51 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 23 Nov 2026 23:43:33 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 23 Nov 2026 23:43:33 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 23 Nov 2026 23:43:33 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 23 Nov 2026 23:44:25 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 23 Nov 2026 23:44:25 GMT
VOLUME [/var/lib/mysql]
# Mon, 23 Nov 2026 23:44:25 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 23:44:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 23:44:25 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 23 Nov 2026 23:44:25 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:33862e5ceb0800fad63d1008add0a685c61ff1cfa22e73c813a4c9c69a6ad49d`  
		Last Modified: Mon, 23 Nov 2026 23:28:16 GMT  
		Size: 40.0 MB (39952172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f17aa983d06c5706a94ea3104bcf5eb7f5dd614e69af47af2c76cac3405a0c28`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5718e8feb833f561c4e2cd2177b961961fbece83b2e3788ac070bed048a9bc67`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 783.6 KB (783555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8266f5aed732508ab5e14f0722b8fefff0efc0e1328c0b313b5d8e766653296d`  
		Last Modified: Mon, 23 Nov 2026 23:45:00 GMT  
		Size: 6.2 MB (6183913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4cbfa65dad127b8b32ab4f34f3fa2e01f89e477ca8a4ed19ca2c98109f285fb`  
		Last Modified: Mon, 23 Nov 2026 23:45:00 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f64e2f7e7474436bbf666b234c79f6dddb1faed0119c63c3358e4e96d62de0df`  
		Last Modified: Mon, 23 Nov 2026 23:45:00 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:879cd3ebb36d2e8991c821faa2617036d4369d5b020523ab437ff7589dfe28e1`  
		Last Modified: Mon, 23 Nov 2026 23:45:02 GMT  
		Size: 57.2 MB (57157043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33b170cdfe3dbbd1c587890a22de4e97fee4ad7f3e3df110d3f748ec03775ee8`  
		Last Modified: Mon, 23 Nov 2026 23:45:01 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab463331dffae1a8fd1c7e9246171753eb9bee844e62186ad95fc6f975b1de20`  
		Last Modified: Mon, 23 Nov 2026 23:45:04 GMT  
		Size: 158.9 MB (158911264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e26aeb2f30fc31337040a2705667c4d9dcd1659318648e43ca736bec44d9a6f7`  
		Last Modified: Mon, 23 Nov 2026 23:45:02 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7.4.1-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:3723a134b24f1bf4a3e96d34c9b98c1cd402dc9598fa30083842773902c9f491
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16817565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e8a408158828d97a1e3b9e76d721cdf76e64c2fa26d36447a9a516b58601cfd`

```dockerfile
```

-	Layers:
	-	`sha256:8bc76d00ecec236510bb82f5fdf00d36a503d4522e0c7933066512c50464f327`  
		Last Modified: Mon, 23 Nov 2026 23:45:01 GMT  
		Size: 16.8 MB (16782411 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7d3bf7588ad6e39346289002fd14fb47b53a0e9726176091def5ea201a159df3`  
		Last Modified: Mon, 23 Nov 2026 23:45:00 GMT  
		Size: 35.2 KB (35154 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9.7.4.1-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:3bd4dfe57435169ab3b8afd126a967389551a6ffb072e7baa4f4c4b2a8b423f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.4 MB (259403561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30b60c89b511fd345fb3375b01049a84ce6fa20b3a9e7993ae2b482b658257d2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 23 Nov 2026 23:26:56 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 23 Nov 2026 23:26:56 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 23:41:49 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 23 Nov 2026 23:41:51 GMT
ENV GOSU_VERSION=1.19
# Mon, 23 Nov 2026 23:41:51 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 23 Nov 2026 23:42:35 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 23 Nov 2026 23:42:36 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 23 Nov 2026 23:42:36 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 23 Nov 2026 23:42:36 GMT
ENV MYSQL_VERSION=9.7.4.1-1.el9
# Mon, 23 Nov 2026 23:42:36 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 23 Nov 2026 23:43:23 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 23 Nov 2026 23:43:23 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 23 Nov 2026 23:43:23 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 23 Nov 2026 23:44:21 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 23 Nov 2026 23:44:21 GMT
VOLUME [/var/lib/mysql]
# Mon, 23 Nov 2026 23:44:21 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 23:44:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 23:44:21 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 23 Nov 2026 23:44:21 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:417cdca15a600d512dcff11d2b366223724adbe60562114464784b1662bee681`  
		Last Modified: Mon, 23 Nov 2026 23:27:06 GMT  
		Size: 38.5 MB (38494185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d91a7108ba9dba47ed723d1f4fa48b38668c89481cd39e6130bcf05b8570eb91`  
		Last Modified: Mon, 23 Nov 2026 23:44:56 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3b305bcf60e1888101333ce4ec1a312937de00da66c91477d980bd3dddec470`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 737.5 KB (737525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d32b319dcfa1a2905769a33cb1e3e9d7456d50403f6d091ff90bb04368dc038`  
		Last Modified: Mon, 23 Nov 2026 23:44:57 GMT  
		Size: 5.8 MB (5802989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8e7b0992bb3a93e16b3c39b02d9dfb05132fa4baf36fc694f14f2a39dfc9257`  
		Last Modified: Mon, 23 Nov 2026 23:44:56 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e09a7fddf2c63481a0ace83594258d7e9c17e55cc3fa174d5c359b10b9724caa`  
		Last Modified: Mon, 23 Nov 2026 23:44:56 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78c399874c537c8cbc9b6a294f2a0cb298d62bc3fddd3211b7659aa1ac3f44ac`  
		Last Modified: Mon, 23 Nov 2026 23:45:00 GMT  
		Size: 57.2 MB (57171890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebc15d96621115f7df307a36762fda8ba692e6342474720e6887023ce6281415`  
		Last Modified: Mon, 23 Nov 2026 23:44:57 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:725250f1e4f31eff99287bd620a48a2af31dcb54aa238aa452f0a72ece929d53`  
		Last Modified: Mon, 23 Nov 2026 23:45:01 GMT  
		Size: 157.2 MB (157187602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5d9e833878119ecd985e58734d0c606fdf9e72e204f6ebb8eab3d1eb2e6cbda`  
		Last Modified: Mon, 23 Nov 2026 23:44:58 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7.4.1-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:d405f1714c382fd3b30b3bc1cf3fd8c4cef5f5bec9790a7a2895fcec31a7cb7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16816377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32b2fde3de90e0024d532e877b8f8ddd6600e939e91e5a281769c487d30a9a0f`

```dockerfile
```

-	Layers:
	-	`sha256:bca499e7403177e7675b6025a09db6500e214caf85a16f9cdba495a2f895f825`  
		Last Modified: Mon, 23 Nov 2026 23:44:57 GMT  
		Size: 16.8 MB (16780883 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d2267912edc3451b6137ae6d2250e662981c5a8b5c2aaf3d96834439e2651c37`  
		Last Modified: Mon, 23 Nov 2026 23:44:56 GMT  
		Size: 35.5 KB (35494 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9.7.4.1-oraclelinux9`

```console
$ docker pull mysql@sha256:1f2ca53a9e94ff9f1f313099fa7dc7fb2f72e180ca5b2ef83574031e451bbbf1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9.7.4.1-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:c1bd2dbe9bbe17691b380547e2a804e853692a38434b9a7d994fc03c226a359d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.0 MB (262997320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6613b421d1ece146cd7888f8d47ecc59fd9224426667e8f72aef73f39eefd726`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 23 Nov 2026 23:28:05 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 23 Nov 2026 23:28:05 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 23:42:09 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 23 Nov 2026 23:42:11 GMT
ENV GOSU_VERSION=1.19
# Mon, 23 Nov 2026 23:42:11 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 23 Nov 2026 23:42:50 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 23 Nov 2026 23:42:51 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 23 Nov 2026 23:42:51 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 23 Nov 2026 23:42:51 GMT
ENV MYSQL_VERSION=9.7.4.1-1.el9
# Mon, 23 Nov 2026 23:42:51 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 23 Nov 2026 23:43:33 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 23 Nov 2026 23:43:33 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 23 Nov 2026 23:43:33 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 23 Nov 2026 23:44:25 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 23 Nov 2026 23:44:25 GMT
VOLUME [/var/lib/mysql]
# Mon, 23 Nov 2026 23:44:25 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 23:44:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 23:44:25 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 23 Nov 2026 23:44:25 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:33862e5ceb0800fad63d1008add0a685c61ff1cfa22e73c813a4c9c69a6ad49d`  
		Last Modified: Mon, 23 Nov 2026 23:28:16 GMT  
		Size: 40.0 MB (39952172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f17aa983d06c5706a94ea3104bcf5eb7f5dd614e69af47af2c76cac3405a0c28`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5718e8feb833f561c4e2cd2177b961961fbece83b2e3788ac070bed048a9bc67`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 783.6 KB (783555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8266f5aed732508ab5e14f0722b8fefff0efc0e1328c0b313b5d8e766653296d`  
		Last Modified: Mon, 23 Nov 2026 23:45:00 GMT  
		Size: 6.2 MB (6183913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4cbfa65dad127b8b32ab4f34f3fa2e01f89e477ca8a4ed19ca2c98109f285fb`  
		Last Modified: Mon, 23 Nov 2026 23:45:00 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f64e2f7e7474436bbf666b234c79f6dddb1faed0119c63c3358e4e96d62de0df`  
		Last Modified: Mon, 23 Nov 2026 23:45:00 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:879cd3ebb36d2e8991c821faa2617036d4369d5b020523ab437ff7589dfe28e1`  
		Last Modified: Mon, 23 Nov 2026 23:45:02 GMT  
		Size: 57.2 MB (57157043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33b170cdfe3dbbd1c587890a22de4e97fee4ad7f3e3df110d3f748ec03775ee8`  
		Last Modified: Mon, 23 Nov 2026 23:45:01 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab463331dffae1a8fd1c7e9246171753eb9bee844e62186ad95fc6f975b1de20`  
		Last Modified: Mon, 23 Nov 2026 23:45:04 GMT  
		Size: 158.9 MB (158911264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e26aeb2f30fc31337040a2705667c4d9dcd1659318648e43ca736bec44d9a6f7`  
		Last Modified: Mon, 23 Nov 2026 23:45:02 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7.4.1-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:3723a134b24f1bf4a3e96d34c9b98c1cd402dc9598fa30083842773902c9f491
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16817565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e8a408158828d97a1e3b9e76d721cdf76e64c2fa26d36447a9a516b58601cfd`

```dockerfile
```

-	Layers:
	-	`sha256:8bc76d00ecec236510bb82f5fdf00d36a503d4522e0c7933066512c50464f327`  
		Last Modified: Mon, 23 Nov 2026 23:45:01 GMT  
		Size: 16.8 MB (16782411 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7d3bf7588ad6e39346289002fd14fb47b53a0e9726176091def5ea201a159df3`  
		Last Modified: Mon, 23 Nov 2026 23:45:00 GMT  
		Size: 35.2 KB (35154 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9.7.4.1-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:3bd4dfe57435169ab3b8afd126a967389551a6ffb072e7baa4f4c4b2a8b423f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.4 MB (259403561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30b60c89b511fd345fb3375b01049a84ce6fa20b3a9e7993ae2b482b658257d2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 23 Nov 2026 23:26:56 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 23 Nov 2026 23:26:56 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 23:41:49 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 23 Nov 2026 23:41:51 GMT
ENV GOSU_VERSION=1.19
# Mon, 23 Nov 2026 23:41:51 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 23 Nov 2026 23:42:35 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 23 Nov 2026 23:42:36 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 23 Nov 2026 23:42:36 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 23 Nov 2026 23:42:36 GMT
ENV MYSQL_VERSION=9.7.4.1-1.el9
# Mon, 23 Nov 2026 23:42:36 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 23 Nov 2026 23:43:23 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 23 Nov 2026 23:43:23 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 23 Nov 2026 23:43:23 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 23 Nov 2026 23:44:21 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 23 Nov 2026 23:44:21 GMT
VOLUME [/var/lib/mysql]
# Mon, 23 Nov 2026 23:44:21 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 23:44:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 23:44:21 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 23 Nov 2026 23:44:21 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:417cdca15a600d512dcff11d2b366223724adbe60562114464784b1662bee681`  
		Last Modified: Mon, 23 Nov 2026 23:27:06 GMT  
		Size: 38.5 MB (38494185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d91a7108ba9dba47ed723d1f4fa48b38668c89481cd39e6130bcf05b8570eb91`  
		Last Modified: Mon, 23 Nov 2026 23:44:56 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3b305bcf60e1888101333ce4ec1a312937de00da66c91477d980bd3dddec470`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 737.5 KB (737525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d32b319dcfa1a2905769a33cb1e3e9d7456d50403f6d091ff90bb04368dc038`  
		Last Modified: Mon, 23 Nov 2026 23:44:57 GMT  
		Size: 5.8 MB (5802989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8e7b0992bb3a93e16b3c39b02d9dfb05132fa4baf36fc694f14f2a39dfc9257`  
		Last Modified: Mon, 23 Nov 2026 23:44:56 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e09a7fddf2c63481a0ace83594258d7e9c17e55cc3fa174d5c359b10b9724caa`  
		Last Modified: Mon, 23 Nov 2026 23:44:56 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78c399874c537c8cbc9b6a294f2a0cb298d62bc3fddd3211b7659aa1ac3f44ac`  
		Last Modified: Mon, 23 Nov 2026 23:45:00 GMT  
		Size: 57.2 MB (57171890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebc15d96621115f7df307a36762fda8ba692e6342474720e6887023ce6281415`  
		Last Modified: Mon, 23 Nov 2026 23:44:57 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:725250f1e4f31eff99287bd620a48a2af31dcb54aa238aa452f0a72ece929d53`  
		Last Modified: Mon, 23 Nov 2026 23:45:01 GMT  
		Size: 157.2 MB (157187602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5d9e833878119ecd985e58734d0c606fdf9e72e204f6ebb8eab3d1eb2e6cbda`  
		Last Modified: Mon, 23 Nov 2026 23:44:58 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7.4.1-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:d405f1714c382fd3b30b3bc1cf3fd8c4cef5f5bec9790a7a2895fcec31a7cb7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16816377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32b2fde3de90e0024d532e877b8f8ddd6600e939e91e5a281769c487d30a9a0f`

```dockerfile
```

-	Layers:
	-	`sha256:bca499e7403177e7675b6025a09db6500e214caf85a16f9cdba495a2f895f825`  
		Last Modified: Mon, 23 Nov 2026 23:44:57 GMT  
		Size: 16.8 MB (16780883 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d2267912edc3451b6137ae6d2250e662981c5a8b5c2aaf3d96834439e2651c37`  
		Last Modified: Mon, 23 Nov 2026 23:44:56 GMT  
		Size: 35.5 KB (35494 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:innovation`

```console
$ docker pull mysql@sha256:9092489f49fb59c4ba6c1425c6a59f71f864f24bf4339a5a26b718adc7a8b343
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:innovation` - linux; amd64

```console
$ docker pull mysql@sha256:6d7dd5acd92b32f3cb1ff3b10f756ebb8ff5a892e4127f8c863d9b36630fcb5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.0 MB (291950020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8959d7c84ab820313180f705e0fe6a177984bda6837fb2fbde78e90ea0dd6f94`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 23 Nov 2026 23:28:05 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 23 Nov 2026 23:28:05 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 23:42:09 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 23 Nov 2026 23:42:11 GMT
ENV GOSU_VERSION=1.19
# Mon, 23 Nov 2026 23:42:11 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 23 Nov 2026 23:42:48 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 23 Nov 2026 23:42:49 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 23 Nov 2026 23:42:49 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 23 Nov 2026 23:42:49 GMT
ENV MYSQL_VERSION=26.10.0.1-1.el9
# Mon, 23 Nov 2026 23:42:49 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 23 Nov 2026 23:43:29 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 23 Nov 2026 23:43:29 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 23 Nov 2026 23:43:29 GMT
ENV MYSQL_SHELL_VERSION=26.10.0.1-1.el9
# Mon, 23 Nov 2026 23:44:16 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 23 Nov 2026 23:44:16 GMT
VOLUME [/var/lib/mysql]
# Mon, 23 Nov 2026 23:44:16 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 23:44:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 23:44:16 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 23 Nov 2026 23:44:16 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:33862e5ceb0800fad63d1008add0a685c61ff1cfa22e73c813a4c9c69a6ad49d`  
		Last Modified: Mon, 23 Nov 2026 23:28:16 GMT  
		Size: 40.0 MB (39952172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f17aa983d06c5706a94ea3104bcf5eb7f5dd614e69af47af2c76cac3405a0c28`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5718e8feb833f561c4e2cd2177b961961fbece83b2e3788ac070bed048a9bc67`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 783.6 KB (783555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bec6c0764f676dc314afeb426a40f39120f783484fc1e74d0676daf668b1da81`  
		Last Modified: Mon, 23 Nov 2026 23:44:41 GMT  
		Size: 6.2 MB (6183917 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91f2e938ce9370560c7df348530c8d7a77610136aa3ec93ac5884fd302f35014`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd7e1f7859f3662d2594a86798903cd9a5d1ad4852ebc2f84819e34db2cd7776`  
		Last Modified: Mon, 23 Nov 2026 23:44:41 GMT  
		Size: 341.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e9cd1db0a2f7e5d02f0da385b84d8ed68a4793586d8353b24644dd940a36751`  
		Last Modified: Mon, 23 Nov 2026 23:44:44 GMT  
		Size: 63.8 MB (63778013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:378e43836b45c57fe747f402fbab58ce53b34dc5c25dac3b55bf325fde70fed3`  
		Last Modified: Mon, 23 Nov 2026 23:44:41 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9644cb7a1c484635239259c2dde93b4c797fb582e8cfa70b9f6cc064dfb3bf33`  
		Last Modified: Mon, 23 Nov 2026 23:44:46 GMT  
		Size: 181.2 MB (181242978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd795b89f2d98b91147fe841a7fe91b46fb00ec0a029d571cedca1e5927cc86d`  
		Last Modified: Mon, 23 Nov 2026 23:44:43 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:innovation` - unknown; unknown

```console
$ docker pull mysql@sha256:e6f625e53aca118bb8978c1490de7e46fc1672b6e75e0bdf7d12088bb9283df3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5357001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:231bcd32a375b24d15f47d03db5f4e97455e6a84a07bf4c074058fb9fd5f23b3`

```dockerfile
```

-	Layers:
	-	`sha256:98073a7be9c871684245bcd680415bc68943a95b51bda8d9e6f2a2352b8aac35`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 5.3 MB (5320723 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:baa7101741f86e227940f7a96601645b3ac7a0dfd4910d7e4b72727f0fe83fdd`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 36.3 KB (36278 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:innovation` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:dc3aeca2b22d60148907b9fa29bc9b4eb2e4027ea3660bb55085ed9d6de8018c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.4 MB (288359473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b683694ce0dad81a5432491d44801fb5f77063df6545faccb016cfa351d8292`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 23 Nov 2026 23:26:56 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 23 Nov 2026 23:26:56 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 23:41:49 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 23 Nov 2026 23:41:51 GMT
ENV GOSU_VERSION=1.19
# Mon, 23 Nov 2026 23:41:51 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 23 Nov 2026 23:42:32 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 23 Nov 2026 23:42:33 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 23 Nov 2026 23:42:33 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 23 Nov 2026 23:42:33 GMT
ENV MYSQL_VERSION=26.10.0.1-1.el9
# Mon, 23 Nov 2026 23:42:33 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 23 Nov 2026 23:43:21 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 23 Nov 2026 23:43:21 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 23 Nov 2026 23:43:21 GMT
ENV MYSQL_SHELL_VERSION=26.10.0.1-1.el9
# Mon, 23 Nov 2026 23:44:13 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 23 Nov 2026 23:44:13 GMT
VOLUME [/var/lib/mysql]
# Mon, 23 Nov 2026 23:44:13 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 23:44:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 23:44:13 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 23 Nov 2026 23:44:13 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:417cdca15a600d512dcff11d2b366223724adbe60562114464784b1662bee681`  
		Last Modified: Mon, 23 Nov 2026 23:27:06 GMT  
		Size: 38.5 MB (38494185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72e901aa8ec2a83f07c6cb1bd9ea3143792021114287bc8b401fbee16136312e`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3b305bcf60e1888101333ce4ec1a312937de00da66c91477d980bd3dddec470`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 737.5 KB (737525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe5ac272ac603054f522245644aded59a6b4372779d7960c7599873322d60bd0`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 5.8 MB (5803067 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e20836ddd28888fea4e20763a96d947480f6ab73ea486c4873ec2505c75d971`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7998d70c2d4fe30322aba0635a3cce7716f09a67d430b32c0e2151eabca266fc`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dae5fcc4677afe6ad389d118df80e87f614f7fffd4bbeedad4057afb8582ec6`  
		Last Modified: Mon, 23 Nov 2026 23:44:43 GMT  
		Size: 63.8 MB (63806423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c389571bad410b3da25296e742af872f753004f799c96a57ef18bfb80a9490e2`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fc8fed9b0dc49d2a5e630ec077a6c920eafb4e30760b730b919a5dc0f64dbdf`  
		Last Modified: Mon, 23 Nov 2026 23:44:45 GMT  
		Size: 179.5 MB (179508889 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1641a5ff7764b1d7f9513921a4da6f4eb61b46c83d669518a563b604c34151a5`  
		Last Modified: Mon, 23 Nov 2026 23:44:41 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:innovation` - unknown; unknown

```console
$ docker pull mysql@sha256:49906f0ae86dbd3026af5909457dbb119efb95edea185532944b08c56280119f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5355888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b05b3300d18d63584883cbc1c92e067eb46024e8b2c810ce7f17daad100a98ab`

```dockerfile
```

-	Layers:
	-	`sha256:b8e4c638cd48991855c12764a04f7cbf5fe6701ab00697784a69d6615ba88562`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 5.3 MB (5319232 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ca7f47400d33c110c62c3c8e0d1f00410676e5431547a6dc9a37978e84f8536`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 36.7 KB (36656 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:innovation-oracle`

```console
$ docker pull mysql@sha256:9092489f49fb59c4ba6c1425c6a59f71f864f24bf4339a5a26b718adc7a8b343
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:innovation-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:6d7dd5acd92b32f3cb1ff3b10f756ebb8ff5a892e4127f8c863d9b36630fcb5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.0 MB (291950020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8959d7c84ab820313180f705e0fe6a177984bda6837fb2fbde78e90ea0dd6f94`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 23 Nov 2026 23:28:05 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 23 Nov 2026 23:28:05 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 23:42:09 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 23 Nov 2026 23:42:11 GMT
ENV GOSU_VERSION=1.19
# Mon, 23 Nov 2026 23:42:11 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 23 Nov 2026 23:42:48 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 23 Nov 2026 23:42:49 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 23 Nov 2026 23:42:49 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 23 Nov 2026 23:42:49 GMT
ENV MYSQL_VERSION=26.10.0.1-1.el9
# Mon, 23 Nov 2026 23:42:49 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 23 Nov 2026 23:43:29 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 23 Nov 2026 23:43:29 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 23 Nov 2026 23:43:29 GMT
ENV MYSQL_SHELL_VERSION=26.10.0.1-1.el9
# Mon, 23 Nov 2026 23:44:16 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 23 Nov 2026 23:44:16 GMT
VOLUME [/var/lib/mysql]
# Mon, 23 Nov 2026 23:44:16 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 23:44:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 23:44:16 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 23 Nov 2026 23:44:16 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:33862e5ceb0800fad63d1008add0a685c61ff1cfa22e73c813a4c9c69a6ad49d`  
		Last Modified: Mon, 23 Nov 2026 23:28:16 GMT  
		Size: 40.0 MB (39952172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f17aa983d06c5706a94ea3104bcf5eb7f5dd614e69af47af2c76cac3405a0c28`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5718e8feb833f561c4e2cd2177b961961fbece83b2e3788ac070bed048a9bc67`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 783.6 KB (783555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bec6c0764f676dc314afeb426a40f39120f783484fc1e74d0676daf668b1da81`  
		Last Modified: Mon, 23 Nov 2026 23:44:41 GMT  
		Size: 6.2 MB (6183917 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91f2e938ce9370560c7df348530c8d7a77610136aa3ec93ac5884fd302f35014`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd7e1f7859f3662d2594a86798903cd9a5d1ad4852ebc2f84819e34db2cd7776`  
		Last Modified: Mon, 23 Nov 2026 23:44:41 GMT  
		Size: 341.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e9cd1db0a2f7e5d02f0da385b84d8ed68a4793586d8353b24644dd940a36751`  
		Last Modified: Mon, 23 Nov 2026 23:44:44 GMT  
		Size: 63.8 MB (63778013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:378e43836b45c57fe747f402fbab58ce53b34dc5c25dac3b55bf325fde70fed3`  
		Last Modified: Mon, 23 Nov 2026 23:44:41 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9644cb7a1c484635239259c2dde93b4c797fb582e8cfa70b9f6cc064dfb3bf33`  
		Last Modified: Mon, 23 Nov 2026 23:44:46 GMT  
		Size: 181.2 MB (181242978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd795b89f2d98b91147fe841a7fe91b46fb00ec0a029d571cedca1e5927cc86d`  
		Last Modified: Mon, 23 Nov 2026 23:44:43 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:innovation-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:e6f625e53aca118bb8978c1490de7e46fc1672b6e75e0bdf7d12088bb9283df3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5357001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:231bcd32a375b24d15f47d03db5f4e97455e6a84a07bf4c074058fb9fd5f23b3`

```dockerfile
```

-	Layers:
	-	`sha256:98073a7be9c871684245bcd680415bc68943a95b51bda8d9e6f2a2352b8aac35`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 5.3 MB (5320723 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:baa7101741f86e227940f7a96601645b3ac7a0dfd4910d7e4b72727f0fe83fdd`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 36.3 KB (36278 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:innovation-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:dc3aeca2b22d60148907b9fa29bc9b4eb2e4027ea3660bb55085ed9d6de8018c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.4 MB (288359473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b683694ce0dad81a5432491d44801fb5f77063df6545faccb016cfa351d8292`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 23 Nov 2026 23:26:56 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 23 Nov 2026 23:26:56 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 23:41:49 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 23 Nov 2026 23:41:51 GMT
ENV GOSU_VERSION=1.19
# Mon, 23 Nov 2026 23:41:51 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 23 Nov 2026 23:42:32 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 23 Nov 2026 23:42:33 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 23 Nov 2026 23:42:33 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 23 Nov 2026 23:42:33 GMT
ENV MYSQL_VERSION=26.10.0.1-1.el9
# Mon, 23 Nov 2026 23:42:33 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 23 Nov 2026 23:43:21 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 23 Nov 2026 23:43:21 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 23 Nov 2026 23:43:21 GMT
ENV MYSQL_SHELL_VERSION=26.10.0.1-1.el9
# Mon, 23 Nov 2026 23:44:13 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 23 Nov 2026 23:44:13 GMT
VOLUME [/var/lib/mysql]
# Mon, 23 Nov 2026 23:44:13 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 23:44:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 23:44:13 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 23 Nov 2026 23:44:13 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:417cdca15a600d512dcff11d2b366223724adbe60562114464784b1662bee681`  
		Last Modified: Mon, 23 Nov 2026 23:27:06 GMT  
		Size: 38.5 MB (38494185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72e901aa8ec2a83f07c6cb1bd9ea3143792021114287bc8b401fbee16136312e`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3b305bcf60e1888101333ce4ec1a312937de00da66c91477d980bd3dddec470`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 737.5 KB (737525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe5ac272ac603054f522245644aded59a6b4372779d7960c7599873322d60bd0`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 5.8 MB (5803067 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e20836ddd28888fea4e20763a96d947480f6ab73ea486c4873ec2505c75d971`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7998d70c2d4fe30322aba0635a3cce7716f09a67d430b32c0e2151eabca266fc`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dae5fcc4677afe6ad389d118df80e87f614f7fffd4bbeedad4057afb8582ec6`  
		Last Modified: Mon, 23 Nov 2026 23:44:43 GMT  
		Size: 63.8 MB (63806423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c389571bad410b3da25296e742af872f753004f799c96a57ef18bfb80a9490e2`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fc8fed9b0dc49d2a5e630ec077a6c920eafb4e30760b730b919a5dc0f64dbdf`  
		Last Modified: Mon, 23 Nov 2026 23:44:45 GMT  
		Size: 179.5 MB (179508889 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1641a5ff7764b1d7f9513921a4da6f4eb61b46c83d669518a563b604c34151a5`  
		Last Modified: Mon, 23 Nov 2026 23:44:41 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:innovation-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:49906f0ae86dbd3026af5909457dbb119efb95edea185532944b08c56280119f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5355888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b05b3300d18d63584883cbc1c92e067eb46024e8b2c810ce7f17daad100a98ab`

```dockerfile
```

-	Layers:
	-	`sha256:b8e4c638cd48991855c12764a04f7cbf5fe6701ab00697784a69d6615ba88562`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 5.3 MB (5319232 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ca7f47400d33c110c62c3c8e0d1f00410676e5431547a6dc9a37978e84f8536`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 36.7 KB (36656 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:innovation-oraclelinux9`

```console
$ docker pull mysql@sha256:9092489f49fb59c4ba6c1425c6a59f71f864f24bf4339a5a26b718adc7a8b343
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:innovation-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:6d7dd5acd92b32f3cb1ff3b10f756ebb8ff5a892e4127f8c863d9b36630fcb5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.0 MB (291950020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8959d7c84ab820313180f705e0fe6a177984bda6837fb2fbde78e90ea0dd6f94`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 23 Nov 2026 23:28:05 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 23 Nov 2026 23:28:05 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 23:42:09 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 23 Nov 2026 23:42:11 GMT
ENV GOSU_VERSION=1.19
# Mon, 23 Nov 2026 23:42:11 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 23 Nov 2026 23:42:48 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 23 Nov 2026 23:42:49 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 23 Nov 2026 23:42:49 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 23 Nov 2026 23:42:49 GMT
ENV MYSQL_VERSION=26.10.0.1-1.el9
# Mon, 23 Nov 2026 23:42:49 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 23 Nov 2026 23:43:29 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 23 Nov 2026 23:43:29 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 23 Nov 2026 23:43:29 GMT
ENV MYSQL_SHELL_VERSION=26.10.0.1-1.el9
# Mon, 23 Nov 2026 23:44:16 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 23 Nov 2026 23:44:16 GMT
VOLUME [/var/lib/mysql]
# Mon, 23 Nov 2026 23:44:16 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 23:44:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 23:44:16 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 23 Nov 2026 23:44:16 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:33862e5ceb0800fad63d1008add0a685c61ff1cfa22e73c813a4c9c69a6ad49d`  
		Last Modified: Mon, 23 Nov 2026 23:28:16 GMT  
		Size: 40.0 MB (39952172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f17aa983d06c5706a94ea3104bcf5eb7f5dd614e69af47af2c76cac3405a0c28`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5718e8feb833f561c4e2cd2177b961961fbece83b2e3788ac070bed048a9bc67`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 783.6 KB (783555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bec6c0764f676dc314afeb426a40f39120f783484fc1e74d0676daf668b1da81`  
		Last Modified: Mon, 23 Nov 2026 23:44:41 GMT  
		Size: 6.2 MB (6183917 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91f2e938ce9370560c7df348530c8d7a77610136aa3ec93ac5884fd302f35014`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd7e1f7859f3662d2594a86798903cd9a5d1ad4852ebc2f84819e34db2cd7776`  
		Last Modified: Mon, 23 Nov 2026 23:44:41 GMT  
		Size: 341.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e9cd1db0a2f7e5d02f0da385b84d8ed68a4793586d8353b24644dd940a36751`  
		Last Modified: Mon, 23 Nov 2026 23:44:44 GMT  
		Size: 63.8 MB (63778013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:378e43836b45c57fe747f402fbab58ce53b34dc5c25dac3b55bf325fde70fed3`  
		Last Modified: Mon, 23 Nov 2026 23:44:41 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9644cb7a1c484635239259c2dde93b4c797fb582e8cfa70b9f6cc064dfb3bf33`  
		Last Modified: Mon, 23 Nov 2026 23:44:46 GMT  
		Size: 181.2 MB (181242978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd795b89f2d98b91147fe841a7fe91b46fb00ec0a029d571cedca1e5927cc86d`  
		Last Modified: Mon, 23 Nov 2026 23:44:43 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:innovation-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:e6f625e53aca118bb8978c1490de7e46fc1672b6e75e0bdf7d12088bb9283df3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5357001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:231bcd32a375b24d15f47d03db5f4e97455e6a84a07bf4c074058fb9fd5f23b3`

```dockerfile
```

-	Layers:
	-	`sha256:98073a7be9c871684245bcd680415bc68943a95b51bda8d9e6f2a2352b8aac35`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 5.3 MB (5320723 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:baa7101741f86e227940f7a96601645b3ac7a0dfd4910d7e4b72727f0fe83fdd`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 36.3 KB (36278 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:innovation-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:dc3aeca2b22d60148907b9fa29bc9b4eb2e4027ea3660bb55085ed9d6de8018c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.4 MB (288359473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b683694ce0dad81a5432491d44801fb5f77063df6545faccb016cfa351d8292`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 23 Nov 2026 23:26:56 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 23 Nov 2026 23:26:56 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 23:41:49 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 23 Nov 2026 23:41:51 GMT
ENV GOSU_VERSION=1.19
# Mon, 23 Nov 2026 23:41:51 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 23 Nov 2026 23:42:32 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 23 Nov 2026 23:42:33 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 23 Nov 2026 23:42:33 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 23 Nov 2026 23:42:33 GMT
ENV MYSQL_VERSION=26.10.0.1-1.el9
# Mon, 23 Nov 2026 23:42:33 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 23 Nov 2026 23:43:21 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 23 Nov 2026 23:43:21 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 23 Nov 2026 23:43:21 GMT
ENV MYSQL_SHELL_VERSION=26.10.0.1-1.el9
# Mon, 23 Nov 2026 23:44:13 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 23 Nov 2026 23:44:13 GMT
VOLUME [/var/lib/mysql]
# Mon, 23 Nov 2026 23:44:13 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 23:44:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 23:44:13 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 23 Nov 2026 23:44:13 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:417cdca15a600d512dcff11d2b366223724adbe60562114464784b1662bee681`  
		Last Modified: Mon, 23 Nov 2026 23:27:06 GMT  
		Size: 38.5 MB (38494185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72e901aa8ec2a83f07c6cb1bd9ea3143792021114287bc8b401fbee16136312e`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3b305bcf60e1888101333ce4ec1a312937de00da66c91477d980bd3dddec470`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 737.5 KB (737525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe5ac272ac603054f522245644aded59a6b4372779d7960c7599873322d60bd0`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 5.8 MB (5803067 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e20836ddd28888fea4e20763a96d947480f6ab73ea486c4873ec2505c75d971`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7998d70c2d4fe30322aba0635a3cce7716f09a67d430b32c0e2151eabca266fc`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dae5fcc4677afe6ad389d118df80e87f614f7fffd4bbeedad4057afb8582ec6`  
		Last Modified: Mon, 23 Nov 2026 23:44:43 GMT  
		Size: 63.8 MB (63806423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c389571bad410b3da25296e742af872f753004f799c96a57ef18bfb80a9490e2`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fc8fed9b0dc49d2a5e630ec077a6c920eafb4e30760b730b919a5dc0f64dbdf`  
		Last Modified: Mon, 23 Nov 2026 23:44:45 GMT  
		Size: 179.5 MB (179508889 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1641a5ff7764b1d7f9513921a4da6f4eb61b46c83d669518a563b604c34151a5`  
		Last Modified: Mon, 23 Nov 2026 23:44:41 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:innovation-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:49906f0ae86dbd3026af5909457dbb119efb95edea185532944b08c56280119f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5355888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b05b3300d18d63584883cbc1c92e067eb46024e8b2c810ce7f17daad100a98ab`

```dockerfile
```

-	Layers:
	-	`sha256:b8e4c638cd48991855c12764a04f7cbf5fe6701ab00697784a69d6615ba88562`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 5.3 MB (5319232 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ca7f47400d33c110c62c3c8e0d1f00410676e5431547a6dc9a37978e84f8536`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 36.7 KB (36656 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:latest`

```console
$ docker pull mysql@sha256:9092489f49fb59c4ba6c1425c6a59f71f864f24bf4339a5a26b718adc7a8b343
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:latest` - linux; amd64

```console
$ docker pull mysql@sha256:6d7dd5acd92b32f3cb1ff3b10f756ebb8ff5a892e4127f8c863d9b36630fcb5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.0 MB (291950020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8959d7c84ab820313180f705e0fe6a177984bda6837fb2fbde78e90ea0dd6f94`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 23 Nov 2026 23:28:05 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 23 Nov 2026 23:28:05 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 23:42:09 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 23 Nov 2026 23:42:11 GMT
ENV GOSU_VERSION=1.19
# Mon, 23 Nov 2026 23:42:11 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 23 Nov 2026 23:42:48 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 23 Nov 2026 23:42:49 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 23 Nov 2026 23:42:49 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 23 Nov 2026 23:42:49 GMT
ENV MYSQL_VERSION=26.10.0.1-1.el9
# Mon, 23 Nov 2026 23:42:49 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 23 Nov 2026 23:43:29 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 23 Nov 2026 23:43:29 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 23 Nov 2026 23:43:29 GMT
ENV MYSQL_SHELL_VERSION=26.10.0.1-1.el9
# Mon, 23 Nov 2026 23:44:16 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 23 Nov 2026 23:44:16 GMT
VOLUME [/var/lib/mysql]
# Mon, 23 Nov 2026 23:44:16 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 23:44:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 23:44:16 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 23 Nov 2026 23:44:16 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:33862e5ceb0800fad63d1008add0a685c61ff1cfa22e73c813a4c9c69a6ad49d`  
		Last Modified: Mon, 23 Nov 2026 23:28:16 GMT  
		Size: 40.0 MB (39952172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f17aa983d06c5706a94ea3104bcf5eb7f5dd614e69af47af2c76cac3405a0c28`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5718e8feb833f561c4e2cd2177b961961fbece83b2e3788ac070bed048a9bc67`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 783.6 KB (783555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bec6c0764f676dc314afeb426a40f39120f783484fc1e74d0676daf668b1da81`  
		Last Modified: Mon, 23 Nov 2026 23:44:41 GMT  
		Size: 6.2 MB (6183917 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91f2e938ce9370560c7df348530c8d7a77610136aa3ec93ac5884fd302f35014`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd7e1f7859f3662d2594a86798903cd9a5d1ad4852ebc2f84819e34db2cd7776`  
		Last Modified: Mon, 23 Nov 2026 23:44:41 GMT  
		Size: 341.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e9cd1db0a2f7e5d02f0da385b84d8ed68a4793586d8353b24644dd940a36751`  
		Last Modified: Mon, 23 Nov 2026 23:44:44 GMT  
		Size: 63.8 MB (63778013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:378e43836b45c57fe747f402fbab58ce53b34dc5c25dac3b55bf325fde70fed3`  
		Last Modified: Mon, 23 Nov 2026 23:44:41 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9644cb7a1c484635239259c2dde93b4c797fb582e8cfa70b9f6cc064dfb3bf33`  
		Last Modified: Mon, 23 Nov 2026 23:44:46 GMT  
		Size: 181.2 MB (181242978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd795b89f2d98b91147fe841a7fe91b46fb00ec0a029d571cedca1e5927cc86d`  
		Last Modified: Mon, 23 Nov 2026 23:44:43 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:latest` - unknown; unknown

```console
$ docker pull mysql@sha256:e6f625e53aca118bb8978c1490de7e46fc1672b6e75e0bdf7d12088bb9283df3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5357001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:231bcd32a375b24d15f47d03db5f4e97455e6a84a07bf4c074058fb9fd5f23b3`

```dockerfile
```

-	Layers:
	-	`sha256:98073a7be9c871684245bcd680415bc68943a95b51bda8d9e6f2a2352b8aac35`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 5.3 MB (5320723 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:baa7101741f86e227940f7a96601645b3ac7a0dfd4910d7e4b72727f0fe83fdd`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 36.3 KB (36278 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:latest` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:dc3aeca2b22d60148907b9fa29bc9b4eb2e4027ea3660bb55085ed9d6de8018c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.4 MB (288359473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b683694ce0dad81a5432491d44801fb5f77063df6545faccb016cfa351d8292`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 23 Nov 2026 23:26:56 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 23 Nov 2026 23:26:56 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 23:41:49 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 23 Nov 2026 23:41:51 GMT
ENV GOSU_VERSION=1.19
# Mon, 23 Nov 2026 23:41:51 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 23 Nov 2026 23:42:32 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 23 Nov 2026 23:42:33 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 23 Nov 2026 23:42:33 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 23 Nov 2026 23:42:33 GMT
ENV MYSQL_VERSION=26.10.0.1-1.el9
# Mon, 23 Nov 2026 23:42:33 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 23 Nov 2026 23:43:21 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 23 Nov 2026 23:43:21 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 23 Nov 2026 23:43:21 GMT
ENV MYSQL_SHELL_VERSION=26.10.0.1-1.el9
# Mon, 23 Nov 2026 23:44:13 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 23 Nov 2026 23:44:13 GMT
VOLUME [/var/lib/mysql]
# Mon, 23 Nov 2026 23:44:13 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 23:44:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 23:44:13 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 23 Nov 2026 23:44:13 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:417cdca15a600d512dcff11d2b366223724adbe60562114464784b1662bee681`  
		Last Modified: Mon, 23 Nov 2026 23:27:06 GMT  
		Size: 38.5 MB (38494185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72e901aa8ec2a83f07c6cb1bd9ea3143792021114287bc8b401fbee16136312e`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3b305bcf60e1888101333ce4ec1a312937de00da66c91477d980bd3dddec470`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 737.5 KB (737525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe5ac272ac603054f522245644aded59a6b4372779d7960c7599873322d60bd0`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 5.8 MB (5803067 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e20836ddd28888fea4e20763a96d947480f6ab73ea486c4873ec2505c75d971`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7998d70c2d4fe30322aba0635a3cce7716f09a67d430b32c0e2151eabca266fc`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dae5fcc4677afe6ad389d118df80e87f614f7fffd4bbeedad4057afb8582ec6`  
		Last Modified: Mon, 23 Nov 2026 23:44:43 GMT  
		Size: 63.8 MB (63806423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c389571bad410b3da25296e742af872f753004f799c96a57ef18bfb80a9490e2`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fc8fed9b0dc49d2a5e630ec077a6c920eafb4e30760b730b919a5dc0f64dbdf`  
		Last Modified: Mon, 23 Nov 2026 23:44:45 GMT  
		Size: 179.5 MB (179508889 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1641a5ff7764b1d7f9513921a4da6f4eb61b46c83d669518a563b604c34151a5`  
		Last Modified: Mon, 23 Nov 2026 23:44:41 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:latest` - unknown; unknown

```console
$ docker pull mysql@sha256:49906f0ae86dbd3026af5909457dbb119efb95edea185532944b08c56280119f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5355888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b05b3300d18d63584883cbc1c92e067eb46024e8b2c810ce7f17daad100a98ab`

```dockerfile
```

-	Layers:
	-	`sha256:b8e4c638cd48991855c12764a04f7cbf5fe6701ab00697784a69d6615ba88562`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 5.3 MB (5319232 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ca7f47400d33c110c62c3c8e0d1f00410676e5431547a6dc9a37978e84f8536`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 36.7 KB (36656 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:lts`

```console
$ docker pull mysql@sha256:1f2ca53a9e94ff9f1f313099fa7dc7fb2f72e180ca5b2ef83574031e451bbbf1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:lts` - linux; amd64

```console
$ docker pull mysql@sha256:c1bd2dbe9bbe17691b380547e2a804e853692a38434b9a7d994fc03c226a359d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.0 MB (262997320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6613b421d1ece146cd7888f8d47ecc59fd9224426667e8f72aef73f39eefd726`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 23 Nov 2026 23:28:05 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 23 Nov 2026 23:28:05 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 23:42:09 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 23 Nov 2026 23:42:11 GMT
ENV GOSU_VERSION=1.19
# Mon, 23 Nov 2026 23:42:11 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 23 Nov 2026 23:42:50 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 23 Nov 2026 23:42:51 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 23 Nov 2026 23:42:51 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 23 Nov 2026 23:42:51 GMT
ENV MYSQL_VERSION=9.7.4.1-1.el9
# Mon, 23 Nov 2026 23:42:51 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 23 Nov 2026 23:43:33 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 23 Nov 2026 23:43:33 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 23 Nov 2026 23:43:33 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 23 Nov 2026 23:44:25 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 23 Nov 2026 23:44:25 GMT
VOLUME [/var/lib/mysql]
# Mon, 23 Nov 2026 23:44:25 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 23:44:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 23:44:25 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 23 Nov 2026 23:44:25 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:33862e5ceb0800fad63d1008add0a685c61ff1cfa22e73c813a4c9c69a6ad49d`  
		Last Modified: Mon, 23 Nov 2026 23:28:16 GMT  
		Size: 40.0 MB (39952172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f17aa983d06c5706a94ea3104bcf5eb7f5dd614e69af47af2c76cac3405a0c28`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5718e8feb833f561c4e2cd2177b961961fbece83b2e3788ac070bed048a9bc67`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 783.6 KB (783555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8266f5aed732508ab5e14f0722b8fefff0efc0e1328c0b313b5d8e766653296d`  
		Last Modified: Mon, 23 Nov 2026 23:45:00 GMT  
		Size: 6.2 MB (6183913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4cbfa65dad127b8b32ab4f34f3fa2e01f89e477ca8a4ed19ca2c98109f285fb`  
		Last Modified: Mon, 23 Nov 2026 23:45:00 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f64e2f7e7474436bbf666b234c79f6dddb1faed0119c63c3358e4e96d62de0df`  
		Last Modified: Mon, 23 Nov 2026 23:45:00 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:879cd3ebb36d2e8991c821faa2617036d4369d5b020523ab437ff7589dfe28e1`  
		Last Modified: Mon, 23 Nov 2026 23:45:02 GMT  
		Size: 57.2 MB (57157043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33b170cdfe3dbbd1c587890a22de4e97fee4ad7f3e3df110d3f748ec03775ee8`  
		Last Modified: Mon, 23 Nov 2026 23:45:01 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab463331dffae1a8fd1c7e9246171753eb9bee844e62186ad95fc6f975b1de20`  
		Last Modified: Mon, 23 Nov 2026 23:45:04 GMT  
		Size: 158.9 MB (158911264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e26aeb2f30fc31337040a2705667c4d9dcd1659318648e43ca736bec44d9a6f7`  
		Last Modified: Mon, 23 Nov 2026 23:45:02 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:lts` - unknown; unknown

```console
$ docker pull mysql@sha256:3723a134b24f1bf4a3e96d34c9b98c1cd402dc9598fa30083842773902c9f491
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16817565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e8a408158828d97a1e3b9e76d721cdf76e64c2fa26d36447a9a516b58601cfd`

```dockerfile
```

-	Layers:
	-	`sha256:8bc76d00ecec236510bb82f5fdf00d36a503d4522e0c7933066512c50464f327`  
		Last Modified: Mon, 23 Nov 2026 23:45:01 GMT  
		Size: 16.8 MB (16782411 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7d3bf7588ad6e39346289002fd14fb47b53a0e9726176091def5ea201a159df3`  
		Last Modified: Mon, 23 Nov 2026 23:45:00 GMT  
		Size: 35.2 KB (35154 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:lts` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:3bd4dfe57435169ab3b8afd126a967389551a6ffb072e7baa4f4c4b2a8b423f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.4 MB (259403561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30b60c89b511fd345fb3375b01049a84ce6fa20b3a9e7993ae2b482b658257d2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 23 Nov 2026 23:26:56 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 23 Nov 2026 23:26:56 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 23:41:49 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 23 Nov 2026 23:41:51 GMT
ENV GOSU_VERSION=1.19
# Mon, 23 Nov 2026 23:41:51 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 23 Nov 2026 23:42:35 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 23 Nov 2026 23:42:36 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 23 Nov 2026 23:42:36 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 23 Nov 2026 23:42:36 GMT
ENV MYSQL_VERSION=9.7.4.1-1.el9
# Mon, 23 Nov 2026 23:42:36 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 23 Nov 2026 23:43:23 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 23 Nov 2026 23:43:23 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 23 Nov 2026 23:43:23 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 23 Nov 2026 23:44:21 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 23 Nov 2026 23:44:21 GMT
VOLUME [/var/lib/mysql]
# Mon, 23 Nov 2026 23:44:21 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 23:44:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 23:44:21 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 23 Nov 2026 23:44:21 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:417cdca15a600d512dcff11d2b366223724adbe60562114464784b1662bee681`  
		Last Modified: Mon, 23 Nov 2026 23:27:06 GMT  
		Size: 38.5 MB (38494185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d91a7108ba9dba47ed723d1f4fa48b38668c89481cd39e6130bcf05b8570eb91`  
		Last Modified: Mon, 23 Nov 2026 23:44:56 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3b305bcf60e1888101333ce4ec1a312937de00da66c91477d980bd3dddec470`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 737.5 KB (737525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d32b319dcfa1a2905769a33cb1e3e9d7456d50403f6d091ff90bb04368dc038`  
		Last Modified: Mon, 23 Nov 2026 23:44:57 GMT  
		Size: 5.8 MB (5802989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8e7b0992bb3a93e16b3c39b02d9dfb05132fa4baf36fc694f14f2a39dfc9257`  
		Last Modified: Mon, 23 Nov 2026 23:44:56 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e09a7fddf2c63481a0ace83594258d7e9c17e55cc3fa174d5c359b10b9724caa`  
		Last Modified: Mon, 23 Nov 2026 23:44:56 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78c399874c537c8cbc9b6a294f2a0cb298d62bc3fddd3211b7659aa1ac3f44ac`  
		Last Modified: Mon, 23 Nov 2026 23:45:00 GMT  
		Size: 57.2 MB (57171890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebc15d96621115f7df307a36762fda8ba692e6342474720e6887023ce6281415`  
		Last Modified: Mon, 23 Nov 2026 23:44:57 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:725250f1e4f31eff99287bd620a48a2af31dcb54aa238aa452f0a72ece929d53`  
		Last Modified: Mon, 23 Nov 2026 23:45:01 GMT  
		Size: 157.2 MB (157187602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5d9e833878119ecd985e58734d0c606fdf9e72e204f6ebb8eab3d1eb2e6cbda`  
		Last Modified: Mon, 23 Nov 2026 23:44:58 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:lts` - unknown; unknown

```console
$ docker pull mysql@sha256:d405f1714c382fd3b30b3bc1cf3fd8c4cef5f5bec9790a7a2895fcec31a7cb7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16816377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32b2fde3de90e0024d532e877b8f8ddd6600e939e91e5a281769c487d30a9a0f`

```dockerfile
```

-	Layers:
	-	`sha256:bca499e7403177e7675b6025a09db6500e214caf85a16f9cdba495a2f895f825`  
		Last Modified: Mon, 23 Nov 2026 23:44:57 GMT  
		Size: 16.8 MB (16780883 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d2267912edc3451b6137ae6d2250e662981c5a8b5c2aaf3d96834439e2651c37`  
		Last Modified: Mon, 23 Nov 2026 23:44:56 GMT  
		Size: 35.5 KB (35494 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:lts-oracle`

```console
$ docker pull mysql@sha256:1f2ca53a9e94ff9f1f313099fa7dc7fb2f72e180ca5b2ef83574031e451bbbf1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:lts-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:c1bd2dbe9bbe17691b380547e2a804e853692a38434b9a7d994fc03c226a359d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.0 MB (262997320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6613b421d1ece146cd7888f8d47ecc59fd9224426667e8f72aef73f39eefd726`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 23 Nov 2026 23:28:05 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 23 Nov 2026 23:28:05 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 23:42:09 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 23 Nov 2026 23:42:11 GMT
ENV GOSU_VERSION=1.19
# Mon, 23 Nov 2026 23:42:11 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 23 Nov 2026 23:42:50 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 23 Nov 2026 23:42:51 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 23 Nov 2026 23:42:51 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 23 Nov 2026 23:42:51 GMT
ENV MYSQL_VERSION=9.7.4.1-1.el9
# Mon, 23 Nov 2026 23:42:51 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 23 Nov 2026 23:43:33 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 23 Nov 2026 23:43:33 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 23 Nov 2026 23:43:33 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 23 Nov 2026 23:44:25 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 23 Nov 2026 23:44:25 GMT
VOLUME [/var/lib/mysql]
# Mon, 23 Nov 2026 23:44:25 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 23:44:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 23:44:25 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 23 Nov 2026 23:44:25 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:33862e5ceb0800fad63d1008add0a685c61ff1cfa22e73c813a4c9c69a6ad49d`  
		Last Modified: Mon, 23 Nov 2026 23:28:16 GMT  
		Size: 40.0 MB (39952172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f17aa983d06c5706a94ea3104bcf5eb7f5dd614e69af47af2c76cac3405a0c28`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5718e8feb833f561c4e2cd2177b961961fbece83b2e3788ac070bed048a9bc67`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 783.6 KB (783555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8266f5aed732508ab5e14f0722b8fefff0efc0e1328c0b313b5d8e766653296d`  
		Last Modified: Mon, 23 Nov 2026 23:45:00 GMT  
		Size: 6.2 MB (6183913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4cbfa65dad127b8b32ab4f34f3fa2e01f89e477ca8a4ed19ca2c98109f285fb`  
		Last Modified: Mon, 23 Nov 2026 23:45:00 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f64e2f7e7474436bbf666b234c79f6dddb1faed0119c63c3358e4e96d62de0df`  
		Last Modified: Mon, 23 Nov 2026 23:45:00 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:879cd3ebb36d2e8991c821faa2617036d4369d5b020523ab437ff7589dfe28e1`  
		Last Modified: Mon, 23 Nov 2026 23:45:02 GMT  
		Size: 57.2 MB (57157043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33b170cdfe3dbbd1c587890a22de4e97fee4ad7f3e3df110d3f748ec03775ee8`  
		Last Modified: Mon, 23 Nov 2026 23:45:01 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab463331dffae1a8fd1c7e9246171753eb9bee844e62186ad95fc6f975b1de20`  
		Last Modified: Mon, 23 Nov 2026 23:45:04 GMT  
		Size: 158.9 MB (158911264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e26aeb2f30fc31337040a2705667c4d9dcd1659318648e43ca736bec44d9a6f7`  
		Last Modified: Mon, 23 Nov 2026 23:45:02 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:lts-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:3723a134b24f1bf4a3e96d34c9b98c1cd402dc9598fa30083842773902c9f491
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16817565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e8a408158828d97a1e3b9e76d721cdf76e64c2fa26d36447a9a516b58601cfd`

```dockerfile
```

-	Layers:
	-	`sha256:8bc76d00ecec236510bb82f5fdf00d36a503d4522e0c7933066512c50464f327`  
		Last Modified: Mon, 23 Nov 2026 23:45:01 GMT  
		Size: 16.8 MB (16782411 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7d3bf7588ad6e39346289002fd14fb47b53a0e9726176091def5ea201a159df3`  
		Last Modified: Mon, 23 Nov 2026 23:45:00 GMT  
		Size: 35.2 KB (35154 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:lts-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:3bd4dfe57435169ab3b8afd126a967389551a6ffb072e7baa4f4c4b2a8b423f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.4 MB (259403561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30b60c89b511fd345fb3375b01049a84ce6fa20b3a9e7993ae2b482b658257d2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 23 Nov 2026 23:26:56 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 23 Nov 2026 23:26:56 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 23:41:49 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 23 Nov 2026 23:41:51 GMT
ENV GOSU_VERSION=1.19
# Mon, 23 Nov 2026 23:41:51 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 23 Nov 2026 23:42:35 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 23 Nov 2026 23:42:36 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 23 Nov 2026 23:42:36 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 23 Nov 2026 23:42:36 GMT
ENV MYSQL_VERSION=9.7.4.1-1.el9
# Mon, 23 Nov 2026 23:42:36 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 23 Nov 2026 23:43:23 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 23 Nov 2026 23:43:23 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 23 Nov 2026 23:43:23 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 23 Nov 2026 23:44:21 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 23 Nov 2026 23:44:21 GMT
VOLUME [/var/lib/mysql]
# Mon, 23 Nov 2026 23:44:21 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 23:44:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 23:44:21 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 23 Nov 2026 23:44:21 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:417cdca15a600d512dcff11d2b366223724adbe60562114464784b1662bee681`  
		Last Modified: Mon, 23 Nov 2026 23:27:06 GMT  
		Size: 38.5 MB (38494185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d91a7108ba9dba47ed723d1f4fa48b38668c89481cd39e6130bcf05b8570eb91`  
		Last Modified: Mon, 23 Nov 2026 23:44:56 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3b305bcf60e1888101333ce4ec1a312937de00da66c91477d980bd3dddec470`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 737.5 KB (737525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d32b319dcfa1a2905769a33cb1e3e9d7456d50403f6d091ff90bb04368dc038`  
		Last Modified: Mon, 23 Nov 2026 23:44:57 GMT  
		Size: 5.8 MB (5802989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8e7b0992bb3a93e16b3c39b02d9dfb05132fa4baf36fc694f14f2a39dfc9257`  
		Last Modified: Mon, 23 Nov 2026 23:44:56 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e09a7fddf2c63481a0ace83594258d7e9c17e55cc3fa174d5c359b10b9724caa`  
		Last Modified: Mon, 23 Nov 2026 23:44:56 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78c399874c537c8cbc9b6a294f2a0cb298d62bc3fddd3211b7659aa1ac3f44ac`  
		Last Modified: Mon, 23 Nov 2026 23:45:00 GMT  
		Size: 57.2 MB (57171890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebc15d96621115f7df307a36762fda8ba692e6342474720e6887023ce6281415`  
		Last Modified: Mon, 23 Nov 2026 23:44:57 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:725250f1e4f31eff99287bd620a48a2af31dcb54aa238aa452f0a72ece929d53`  
		Last Modified: Mon, 23 Nov 2026 23:45:01 GMT  
		Size: 157.2 MB (157187602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5d9e833878119ecd985e58734d0c606fdf9e72e204f6ebb8eab3d1eb2e6cbda`  
		Last Modified: Mon, 23 Nov 2026 23:44:58 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:lts-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:d405f1714c382fd3b30b3bc1cf3fd8c4cef5f5bec9790a7a2895fcec31a7cb7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16816377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32b2fde3de90e0024d532e877b8f8ddd6600e939e91e5a281769c487d30a9a0f`

```dockerfile
```

-	Layers:
	-	`sha256:bca499e7403177e7675b6025a09db6500e214caf85a16f9cdba495a2f895f825`  
		Last Modified: Mon, 23 Nov 2026 23:44:57 GMT  
		Size: 16.8 MB (16780883 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d2267912edc3451b6137ae6d2250e662981c5a8b5c2aaf3d96834439e2651c37`  
		Last Modified: Mon, 23 Nov 2026 23:44:56 GMT  
		Size: 35.5 KB (35494 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:lts-oraclelinux9`

```console
$ docker pull mysql@sha256:1f2ca53a9e94ff9f1f313099fa7dc7fb2f72e180ca5b2ef83574031e451bbbf1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:lts-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:c1bd2dbe9bbe17691b380547e2a804e853692a38434b9a7d994fc03c226a359d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.0 MB (262997320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6613b421d1ece146cd7888f8d47ecc59fd9224426667e8f72aef73f39eefd726`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 23 Nov 2026 23:28:05 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 23 Nov 2026 23:28:05 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 23:42:09 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 23 Nov 2026 23:42:11 GMT
ENV GOSU_VERSION=1.19
# Mon, 23 Nov 2026 23:42:11 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 23 Nov 2026 23:42:50 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 23 Nov 2026 23:42:51 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 23 Nov 2026 23:42:51 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 23 Nov 2026 23:42:51 GMT
ENV MYSQL_VERSION=9.7.4.1-1.el9
# Mon, 23 Nov 2026 23:42:51 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 23 Nov 2026 23:43:33 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 23 Nov 2026 23:43:33 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 23 Nov 2026 23:43:33 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 23 Nov 2026 23:44:25 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 23 Nov 2026 23:44:25 GMT
VOLUME [/var/lib/mysql]
# Mon, 23 Nov 2026 23:44:25 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 23:44:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 23:44:25 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 23 Nov 2026 23:44:25 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:33862e5ceb0800fad63d1008add0a685c61ff1cfa22e73c813a4c9c69a6ad49d`  
		Last Modified: Mon, 23 Nov 2026 23:28:16 GMT  
		Size: 40.0 MB (39952172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f17aa983d06c5706a94ea3104bcf5eb7f5dd614e69af47af2c76cac3405a0c28`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5718e8feb833f561c4e2cd2177b961961fbece83b2e3788ac070bed048a9bc67`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 783.6 KB (783555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8266f5aed732508ab5e14f0722b8fefff0efc0e1328c0b313b5d8e766653296d`  
		Last Modified: Mon, 23 Nov 2026 23:45:00 GMT  
		Size: 6.2 MB (6183913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4cbfa65dad127b8b32ab4f34f3fa2e01f89e477ca8a4ed19ca2c98109f285fb`  
		Last Modified: Mon, 23 Nov 2026 23:45:00 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f64e2f7e7474436bbf666b234c79f6dddb1faed0119c63c3358e4e96d62de0df`  
		Last Modified: Mon, 23 Nov 2026 23:45:00 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:879cd3ebb36d2e8991c821faa2617036d4369d5b020523ab437ff7589dfe28e1`  
		Last Modified: Mon, 23 Nov 2026 23:45:02 GMT  
		Size: 57.2 MB (57157043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33b170cdfe3dbbd1c587890a22de4e97fee4ad7f3e3df110d3f748ec03775ee8`  
		Last Modified: Mon, 23 Nov 2026 23:45:01 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab463331dffae1a8fd1c7e9246171753eb9bee844e62186ad95fc6f975b1de20`  
		Last Modified: Mon, 23 Nov 2026 23:45:04 GMT  
		Size: 158.9 MB (158911264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e26aeb2f30fc31337040a2705667c4d9dcd1659318648e43ca736bec44d9a6f7`  
		Last Modified: Mon, 23 Nov 2026 23:45:02 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:lts-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:3723a134b24f1bf4a3e96d34c9b98c1cd402dc9598fa30083842773902c9f491
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16817565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e8a408158828d97a1e3b9e76d721cdf76e64c2fa26d36447a9a516b58601cfd`

```dockerfile
```

-	Layers:
	-	`sha256:8bc76d00ecec236510bb82f5fdf00d36a503d4522e0c7933066512c50464f327`  
		Last Modified: Mon, 23 Nov 2026 23:45:01 GMT  
		Size: 16.8 MB (16782411 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7d3bf7588ad6e39346289002fd14fb47b53a0e9726176091def5ea201a159df3`  
		Last Modified: Mon, 23 Nov 2026 23:45:00 GMT  
		Size: 35.2 KB (35154 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:lts-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:3bd4dfe57435169ab3b8afd126a967389551a6ffb072e7baa4f4c4b2a8b423f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.4 MB (259403561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30b60c89b511fd345fb3375b01049a84ce6fa20b3a9e7993ae2b482b658257d2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 23 Nov 2026 23:26:56 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 23 Nov 2026 23:26:56 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 23:41:49 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 23 Nov 2026 23:41:51 GMT
ENV GOSU_VERSION=1.19
# Mon, 23 Nov 2026 23:41:51 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 23 Nov 2026 23:42:35 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 23 Nov 2026 23:42:36 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 23 Nov 2026 23:42:36 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 23 Nov 2026 23:42:36 GMT
ENV MYSQL_VERSION=9.7.4.1-1.el9
# Mon, 23 Nov 2026 23:42:36 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 23 Nov 2026 23:43:23 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 23 Nov 2026 23:43:23 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 23 Nov 2026 23:43:23 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 23 Nov 2026 23:44:21 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 23 Nov 2026 23:44:21 GMT
VOLUME [/var/lib/mysql]
# Mon, 23 Nov 2026 23:44:21 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 23:44:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 23:44:21 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 23 Nov 2026 23:44:21 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:417cdca15a600d512dcff11d2b366223724adbe60562114464784b1662bee681`  
		Last Modified: Mon, 23 Nov 2026 23:27:06 GMT  
		Size: 38.5 MB (38494185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d91a7108ba9dba47ed723d1f4fa48b38668c89481cd39e6130bcf05b8570eb91`  
		Last Modified: Mon, 23 Nov 2026 23:44:56 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3b305bcf60e1888101333ce4ec1a312937de00da66c91477d980bd3dddec470`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 737.5 KB (737525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d32b319dcfa1a2905769a33cb1e3e9d7456d50403f6d091ff90bb04368dc038`  
		Last Modified: Mon, 23 Nov 2026 23:44:57 GMT  
		Size: 5.8 MB (5802989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8e7b0992bb3a93e16b3c39b02d9dfb05132fa4baf36fc694f14f2a39dfc9257`  
		Last Modified: Mon, 23 Nov 2026 23:44:56 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e09a7fddf2c63481a0ace83594258d7e9c17e55cc3fa174d5c359b10b9724caa`  
		Last Modified: Mon, 23 Nov 2026 23:44:56 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78c399874c537c8cbc9b6a294f2a0cb298d62bc3fddd3211b7659aa1ac3f44ac`  
		Last Modified: Mon, 23 Nov 2026 23:45:00 GMT  
		Size: 57.2 MB (57171890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebc15d96621115f7df307a36762fda8ba692e6342474720e6887023ce6281415`  
		Last Modified: Mon, 23 Nov 2026 23:44:57 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:725250f1e4f31eff99287bd620a48a2af31dcb54aa238aa452f0a72ece929d53`  
		Last Modified: Mon, 23 Nov 2026 23:45:01 GMT  
		Size: 157.2 MB (157187602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5d9e833878119ecd985e58734d0c606fdf9e72e204f6ebb8eab3d1eb2e6cbda`  
		Last Modified: Mon, 23 Nov 2026 23:44:58 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:lts-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:d405f1714c382fd3b30b3bc1cf3fd8c4cef5f5bec9790a7a2895fcec31a7cb7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16816377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32b2fde3de90e0024d532e877b8f8ddd6600e939e91e5a281769c487d30a9a0f`

```dockerfile
```

-	Layers:
	-	`sha256:bca499e7403177e7675b6025a09db6500e214caf85a16f9cdba495a2f895f825`  
		Last Modified: Mon, 23 Nov 2026 23:44:57 GMT  
		Size: 16.8 MB (16780883 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d2267912edc3451b6137ae6d2250e662981c5a8b5c2aaf3d96834439e2651c37`  
		Last Modified: Mon, 23 Nov 2026 23:44:56 GMT  
		Size: 35.5 KB (35494 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:oracle`

```console
$ docker pull mysql@sha256:9092489f49fb59c4ba6c1425c6a59f71f864f24bf4339a5a26b718adc7a8b343
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:oracle` - linux; amd64

```console
$ docker pull mysql@sha256:6d7dd5acd92b32f3cb1ff3b10f756ebb8ff5a892e4127f8c863d9b36630fcb5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.0 MB (291950020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8959d7c84ab820313180f705e0fe6a177984bda6837fb2fbde78e90ea0dd6f94`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 23 Nov 2026 23:28:05 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 23 Nov 2026 23:28:05 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 23:42:09 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 23 Nov 2026 23:42:11 GMT
ENV GOSU_VERSION=1.19
# Mon, 23 Nov 2026 23:42:11 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 23 Nov 2026 23:42:48 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 23 Nov 2026 23:42:49 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 23 Nov 2026 23:42:49 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 23 Nov 2026 23:42:49 GMT
ENV MYSQL_VERSION=26.10.0.1-1.el9
# Mon, 23 Nov 2026 23:42:49 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 23 Nov 2026 23:43:29 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 23 Nov 2026 23:43:29 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 23 Nov 2026 23:43:29 GMT
ENV MYSQL_SHELL_VERSION=26.10.0.1-1.el9
# Mon, 23 Nov 2026 23:44:16 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 23 Nov 2026 23:44:16 GMT
VOLUME [/var/lib/mysql]
# Mon, 23 Nov 2026 23:44:16 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 23:44:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 23:44:16 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 23 Nov 2026 23:44:16 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:33862e5ceb0800fad63d1008add0a685c61ff1cfa22e73c813a4c9c69a6ad49d`  
		Last Modified: Mon, 23 Nov 2026 23:28:16 GMT  
		Size: 40.0 MB (39952172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f17aa983d06c5706a94ea3104bcf5eb7f5dd614e69af47af2c76cac3405a0c28`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5718e8feb833f561c4e2cd2177b961961fbece83b2e3788ac070bed048a9bc67`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 783.6 KB (783555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bec6c0764f676dc314afeb426a40f39120f783484fc1e74d0676daf668b1da81`  
		Last Modified: Mon, 23 Nov 2026 23:44:41 GMT  
		Size: 6.2 MB (6183917 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91f2e938ce9370560c7df348530c8d7a77610136aa3ec93ac5884fd302f35014`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd7e1f7859f3662d2594a86798903cd9a5d1ad4852ebc2f84819e34db2cd7776`  
		Last Modified: Mon, 23 Nov 2026 23:44:41 GMT  
		Size: 341.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e9cd1db0a2f7e5d02f0da385b84d8ed68a4793586d8353b24644dd940a36751`  
		Last Modified: Mon, 23 Nov 2026 23:44:44 GMT  
		Size: 63.8 MB (63778013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:378e43836b45c57fe747f402fbab58ce53b34dc5c25dac3b55bf325fde70fed3`  
		Last Modified: Mon, 23 Nov 2026 23:44:41 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9644cb7a1c484635239259c2dde93b4c797fb582e8cfa70b9f6cc064dfb3bf33`  
		Last Modified: Mon, 23 Nov 2026 23:44:46 GMT  
		Size: 181.2 MB (181242978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd795b89f2d98b91147fe841a7fe91b46fb00ec0a029d571cedca1e5927cc86d`  
		Last Modified: Mon, 23 Nov 2026 23:44:43 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:e6f625e53aca118bb8978c1490de7e46fc1672b6e75e0bdf7d12088bb9283df3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5357001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:231bcd32a375b24d15f47d03db5f4e97455e6a84a07bf4c074058fb9fd5f23b3`

```dockerfile
```

-	Layers:
	-	`sha256:98073a7be9c871684245bcd680415bc68943a95b51bda8d9e6f2a2352b8aac35`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 5.3 MB (5320723 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:baa7101741f86e227940f7a96601645b3ac7a0dfd4910d7e4b72727f0fe83fdd`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 36.3 KB (36278 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:dc3aeca2b22d60148907b9fa29bc9b4eb2e4027ea3660bb55085ed9d6de8018c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.4 MB (288359473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b683694ce0dad81a5432491d44801fb5f77063df6545faccb016cfa351d8292`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 23 Nov 2026 23:26:56 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 23 Nov 2026 23:26:56 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 23:41:49 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 23 Nov 2026 23:41:51 GMT
ENV GOSU_VERSION=1.19
# Mon, 23 Nov 2026 23:41:51 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 23 Nov 2026 23:42:32 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 23 Nov 2026 23:42:33 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 23 Nov 2026 23:42:33 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 23 Nov 2026 23:42:33 GMT
ENV MYSQL_VERSION=26.10.0.1-1.el9
# Mon, 23 Nov 2026 23:42:33 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 23 Nov 2026 23:43:21 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 23 Nov 2026 23:43:21 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 23 Nov 2026 23:43:21 GMT
ENV MYSQL_SHELL_VERSION=26.10.0.1-1.el9
# Mon, 23 Nov 2026 23:44:13 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 23 Nov 2026 23:44:13 GMT
VOLUME [/var/lib/mysql]
# Mon, 23 Nov 2026 23:44:13 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 23:44:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 23:44:13 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 23 Nov 2026 23:44:13 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:417cdca15a600d512dcff11d2b366223724adbe60562114464784b1662bee681`  
		Last Modified: Mon, 23 Nov 2026 23:27:06 GMT  
		Size: 38.5 MB (38494185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72e901aa8ec2a83f07c6cb1bd9ea3143792021114287bc8b401fbee16136312e`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3b305bcf60e1888101333ce4ec1a312937de00da66c91477d980bd3dddec470`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 737.5 KB (737525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe5ac272ac603054f522245644aded59a6b4372779d7960c7599873322d60bd0`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 5.8 MB (5803067 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e20836ddd28888fea4e20763a96d947480f6ab73ea486c4873ec2505c75d971`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7998d70c2d4fe30322aba0635a3cce7716f09a67d430b32c0e2151eabca266fc`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dae5fcc4677afe6ad389d118df80e87f614f7fffd4bbeedad4057afb8582ec6`  
		Last Modified: Mon, 23 Nov 2026 23:44:43 GMT  
		Size: 63.8 MB (63806423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c389571bad410b3da25296e742af872f753004f799c96a57ef18bfb80a9490e2`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fc8fed9b0dc49d2a5e630ec077a6c920eafb4e30760b730b919a5dc0f64dbdf`  
		Last Modified: Mon, 23 Nov 2026 23:44:45 GMT  
		Size: 179.5 MB (179508889 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1641a5ff7764b1d7f9513921a4da6f4eb61b46c83d669518a563b604c34151a5`  
		Last Modified: Mon, 23 Nov 2026 23:44:41 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:49906f0ae86dbd3026af5909457dbb119efb95edea185532944b08c56280119f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5355888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b05b3300d18d63584883cbc1c92e067eb46024e8b2c810ce7f17daad100a98ab`

```dockerfile
```

-	Layers:
	-	`sha256:b8e4c638cd48991855c12764a04f7cbf5fe6701ab00697784a69d6615ba88562`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 5.3 MB (5319232 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ca7f47400d33c110c62c3c8e0d1f00410676e5431547a6dc9a37978e84f8536`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 36.7 KB (36656 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:oraclelinux9`

```console
$ docker pull mysql@sha256:9092489f49fb59c4ba6c1425c6a59f71f864f24bf4339a5a26b718adc7a8b343
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:6d7dd5acd92b32f3cb1ff3b10f756ebb8ff5a892e4127f8c863d9b36630fcb5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.0 MB (291950020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8959d7c84ab820313180f705e0fe6a177984bda6837fb2fbde78e90ea0dd6f94`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 23 Nov 2026 23:28:05 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 23 Nov 2026 23:28:05 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 23:42:09 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 23 Nov 2026 23:42:11 GMT
ENV GOSU_VERSION=1.19
# Mon, 23 Nov 2026 23:42:11 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 23 Nov 2026 23:42:48 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 23 Nov 2026 23:42:49 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 23 Nov 2026 23:42:49 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 23 Nov 2026 23:42:49 GMT
ENV MYSQL_VERSION=26.10.0.1-1.el9
# Mon, 23 Nov 2026 23:42:49 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 23 Nov 2026 23:43:29 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 23 Nov 2026 23:43:29 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 23 Nov 2026 23:43:29 GMT
ENV MYSQL_SHELL_VERSION=26.10.0.1-1.el9
# Mon, 23 Nov 2026 23:44:16 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 23 Nov 2026 23:44:16 GMT
VOLUME [/var/lib/mysql]
# Mon, 23 Nov 2026 23:44:16 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 23:44:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 23:44:16 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 23 Nov 2026 23:44:16 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:33862e5ceb0800fad63d1008add0a685c61ff1cfa22e73c813a4c9c69a6ad49d`  
		Last Modified: Mon, 23 Nov 2026 23:28:16 GMT  
		Size: 40.0 MB (39952172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f17aa983d06c5706a94ea3104bcf5eb7f5dd614e69af47af2c76cac3405a0c28`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5718e8feb833f561c4e2cd2177b961961fbece83b2e3788ac070bed048a9bc67`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 783.6 KB (783555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bec6c0764f676dc314afeb426a40f39120f783484fc1e74d0676daf668b1da81`  
		Last Modified: Mon, 23 Nov 2026 23:44:41 GMT  
		Size: 6.2 MB (6183917 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91f2e938ce9370560c7df348530c8d7a77610136aa3ec93ac5884fd302f35014`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd7e1f7859f3662d2594a86798903cd9a5d1ad4852ebc2f84819e34db2cd7776`  
		Last Modified: Mon, 23 Nov 2026 23:44:41 GMT  
		Size: 341.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e9cd1db0a2f7e5d02f0da385b84d8ed68a4793586d8353b24644dd940a36751`  
		Last Modified: Mon, 23 Nov 2026 23:44:44 GMT  
		Size: 63.8 MB (63778013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:378e43836b45c57fe747f402fbab58ce53b34dc5c25dac3b55bf325fde70fed3`  
		Last Modified: Mon, 23 Nov 2026 23:44:41 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9644cb7a1c484635239259c2dde93b4c797fb582e8cfa70b9f6cc064dfb3bf33`  
		Last Modified: Mon, 23 Nov 2026 23:44:46 GMT  
		Size: 181.2 MB (181242978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd795b89f2d98b91147fe841a7fe91b46fb00ec0a029d571cedca1e5927cc86d`  
		Last Modified: Mon, 23 Nov 2026 23:44:43 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:e6f625e53aca118bb8978c1490de7e46fc1672b6e75e0bdf7d12088bb9283df3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5357001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:231bcd32a375b24d15f47d03db5f4e97455e6a84a07bf4c074058fb9fd5f23b3`

```dockerfile
```

-	Layers:
	-	`sha256:98073a7be9c871684245bcd680415bc68943a95b51bda8d9e6f2a2352b8aac35`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 5.3 MB (5320723 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:baa7101741f86e227940f7a96601645b3ac7a0dfd4910d7e4b72727f0fe83fdd`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 36.3 KB (36278 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:dc3aeca2b22d60148907b9fa29bc9b4eb2e4027ea3660bb55085ed9d6de8018c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.4 MB (288359473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b683694ce0dad81a5432491d44801fb5f77063df6545faccb016cfa351d8292`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 23 Nov 2026 23:26:56 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 23 Nov 2026 23:26:56 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 23:41:49 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 23 Nov 2026 23:41:51 GMT
ENV GOSU_VERSION=1.19
# Mon, 23 Nov 2026 23:41:51 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 23 Nov 2026 23:42:32 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 23 Nov 2026 23:42:33 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 23 Nov 2026 23:42:33 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 23 Nov 2026 23:42:33 GMT
ENV MYSQL_VERSION=26.10.0.1-1.el9
# Mon, 23 Nov 2026 23:42:33 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 23 Nov 2026 23:43:21 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 23 Nov 2026 23:43:21 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 23 Nov 2026 23:43:21 GMT
ENV MYSQL_SHELL_VERSION=26.10.0.1-1.el9
# Mon, 23 Nov 2026 23:44:13 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 23 Nov 2026 23:44:13 GMT
VOLUME [/var/lib/mysql]
# Mon, 23 Nov 2026 23:44:13 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 23:44:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 23:44:13 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 23 Nov 2026 23:44:13 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:417cdca15a600d512dcff11d2b366223724adbe60562114464784b1662bee681`  
		Last Modified: Mon, 23 Nov 2026 23:27:06 GMT  
		Size: 38.5 MB (38494185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72e901aa8ec2a83f07c6cb1bd9ea3143792021114287bc8b401fbee16136312e`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3b305bcf60e1888101333ce4ec1a312937de00da66c91477d980bd3dddec470`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 737.5 KB (737525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe5ac272ac603054f522245644aded59a6b4372779d7960c7599873322d60bd0`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 5.8 MB (5803067 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e20836ddd28888fea4e20763a96d947480f6ab73ea486c4873ec2505c75d971`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7998d70c2d4fe30322aba0635a3cce7716f09a67d430b32c0e2151eabca266fc`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dae5fcc4677afe6ad389d118df80e87f614f7fffd4bbeedad4057afb8582ec6`  
		Last Modified: Mon, 23 Nov 2026 23:44:43 GMT  
		Size: 63.8 MB (63806423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c389571bad410b3da25296e742af872f753004f799c96a57ef18bfb80a9490e2`  
		Last Modified: Mon, 23 Nov 2026 23:44:40 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fc8fed9b0dc49d2a5e630ec077a6c920eafb4e30760b730b919a5dc0f64dbdf`  
		Last Modified: Mon, 23 Nov 2026 23:44:45 GMT  
		Size: 179.5 MB (179508889 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1641a5ff7764b1d7f9513921a4da6f4eb61b46c83d669518a563b604c34151a5`  
		Last Modified: Mon, 23 Nov 2026 23:44:41 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:49906f0ae86dbd3026af5909457dbb119efb95edea185532944b08c56280119f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5355888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b05b3300d18d63584883cbc1c92e067eb46024e8b2c810ce7f17daad100a98ab`

```dockerfile
```

-	Layers:
	-	`sha256:b8e4c638cd48991855c12764a04f7cbf5fe6701ab00697784a69d6615ba88562`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 5.3 MB (5319232 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ca7f47400d33c110c62c3c8e0d1f00410676e5431547a6dc9a37978e84f8536`  
		Last Modified: Mon, 23 Nov 2026 23:44:39 GMT  
		Size: 36.7 KB (36656 bytes)  
		MIME: application/vnd.in-toto+json
