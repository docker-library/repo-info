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
