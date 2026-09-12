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
$ docker pull mysql@sha256:45abdd9b4144660b5c93a5b7d0ebb21e024f0ba9851ecb4ab43bf83c6bf83592
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:26` - linux; amd64

```console
$ docker pull mysql@sha256:e90497776da10a4700999242a58d779a86879225bb2d8544b4109272a4c288bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.4 MB (272350479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21ed0f5cc49429e295ee53a1c19e9726067987d14b4b29d6cd35599ad066c4eb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 11 Sep 2026 23:24:06 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Fri, 11 Sep 2026 23:24:06 GMT
CMD ["/bin/bash"]
# Sat, 12 Sep 2026 00:08:53 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Sat, 12 Sep 2026 00:08:54 GMT
ENV GOSU_VERSION=1.19
# Sat, 12 Sep 2026 00:08:54 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 12 Sep 2026 00:09:29 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Sat, 12 Sep 2026 00:09:30 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Sat, 12 Sep 2026 00:09:30 GMT
ENV MYSQL_MAJOR=innovation
# Sat, 12 Sep 2026 00:09:30 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Sat, 12 Sep 2026 00:09:30 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Sat, 12 Sep 2026 00:10:09 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Sat, 12 Sep 2026 00:10:09 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Sat, 12 Sep 2026 00:10:09 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Sat, 12 Sep 2026 00:10:57 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Sat, 12 Sep 2026 00:10:57 GMT
VOLUME [/var/lib/mysql]
# Sat, 12 Sep 2026 00:10:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 12 Sep 2026 00:10:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 12 Sep 2026 00:10:58 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Sat, 12 Sep 2026 00:10:58 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:13c85306055eb6ecca743420c9a29fec0936e01bea1df866947ecc554f9b7235`  
		Last Modified: Fri, 11 Sep 2026 23:24:17 GMT  
		Size: 47.9 MB (47931319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1efac44fb10451bb6c48afdee56aceb0234a31d09f9abff40b8a45d353e9f4eb`  
		Last Modified: Sat, 12 Sep 2026 00:11:34 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f1d011bdd777410d8f289763994559a9be153f5771ebc32de2675a37147dfaf`  
		Last Modified: Sat, 12 Sep 2026 00:11:34 GMT  
		Size: 783.5 KB (783541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d61b3579fc6ca050cd58791db7a9ccb99553a828bf58f458693b95b22bfe699c`  
		Last Modified: Sat, 12 Sep 2026 00:11:34 GMT  
		Size: 6.2 MB (6193394 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5703b6421969ea9aff5cd6360efecae6e51b136dfa07a82656251d48e31b622`  
		Last Modified: Sat, 12 Sep 2026 00:11:26 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24899866011650b17a308d6dbb0dec68226c20699b2a73c9fd4deb4444dd8b28`  
		Last Modified: Sat, 12 Sep 2026 00:11:34 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13707ba668372c347e859a0c18a470add82d4189cc26e7ed927f0c018e9ac25e`  
		Last Modified: Sat, 12 Sep 2026 00:11:37 GMT  
		Size: 57.5 MB (57457519 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c4ffcc46f7cdd865fd1da77be7e5e1ae404849c15875ca684e75d8e2d33b9c8`  
		Last Modified: Sat, 12 Sep 2026 00:11:35 GMT  
		Size: 324.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee778d752aff96f367302483b39dcb42e27f91127326d1092469b3cc347b99bf`  
		Last Modified: Sat, 12 Sep 2026 00:11:40 GMT  
		Size: 160.0 MB (159975330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a869fc9d82872e499c0486dc9183f2bba06dc62f4256a28386987a67a0dbcede`  
		Last Modified: Sat, 12 Sep 2026 00:11:36 GMT  
		Size: 5.2 KB (5223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26` - unknown; unknown

```console
$ docker pull mysql@sha256:f5ae1648f33608475f8fed10684539481530d00a78d1e8ee1c9bcba7d62b6ae5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17452701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd577f436e20fc0fd5dfb43e2cf6db31b416f4b4d1f45257bafe8d9b651aea6b`

```dockerfile
```

-	Layers:
	-	`sha256:4c01ad9af86a0393e864afc7fb0353f9c421c4172401fa5b9f3a04b8031a3f6d`  
		Last Modified: Sat, 12 Sep 2026 00:11:35 GMT  
		Size: 17.4 MB (17417403 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:afd4b55f41d0d8e5e82fab01597d834fed9d193f9ef139af6f015b8007e8abd2`  
		Last Modified: Sat, 12 Sep 2026 00:11:34 GMT  
		Size: 35.3 KB (35298 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:26` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:7216386511066db8765356adb24d46fa579b287ded143a77af4fd9e2152df699
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.7 MB (268717797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb7cb08eb1cf3d0be5c735a8ac3c14c1a09ad0495a61ff5923306344c85fb38e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 11 Sep 2026 23:26:27 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Fri, 11 Sep 2026 23:26:27 GMT
CMD ["/bin/bash"]
# Sat, 12 Sep 2026 00:08:24 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Sat, 12 Sep 2026 00:08:26 GMT
ENV GOSU_VERSION=1.19
# Sat, 12 Sep 2026 00:08:26 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 12 Sep 2026 00:09:02 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Sat, 12 Sep 2026 00:09:03 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Sat, 12 Sep 2026 00:09:03 GMT
ENV MYSQL_MAJOR=innovation
# Sat, 12 Sep 2026 00:09:03 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Sat, 12 Sep 2026 00:09:03 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Sat, 12 Sep 2026 00:09:43 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Sat, 12 Sep 2026 00:09:43 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Sat, 12 Sep 2026 00:09:43 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Sat, 12 Sep 2026 00:10:34 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Sat, 12 Sep 2026 00:10:34 GMT
VOLUME [/var/lib/mysql]
# Sat, 12 Sep 2026 00:10:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 12 Sep 2026 00:10:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 12 Sep 2026 00:10:34 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Sat, 12 Sep 2026 00:10:34 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:8e88a63a99d33b759690f9a9c14fa268d0d7021d7ba10b95738853eacfae654e`  
		Last Modified: Fri, 11 Sep 2026 23:26:38 GMT  
		Size: 46.5 MB (46478146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cc8b5218bdfc562fa40c1276e9ba629338fbbbda090bcff57511efe8aa1a243`  
		Last Modified: Sat, 12 Sep 2026 00:11:10 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82d5f282ab29fcf848cbb4926d2ef0a338b0ccb60b1c5e6ecf08419a0efad29d`  
		Last Modified: Sat, 12 Sep 2026 00:11:10 GMT  
		Size: 737.5 KB (737526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ac6ac725ff960e7ddde0be43e5cf1f51bb7630a3fa5e09e6bc13b835864d869`  
		Last Modified: Sat, 12 Sep 2026 00:11:10 GMT  
		Size: 5.8 MB (5817162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e280b918d4f60e62c0040b014f68b51a96ad8cbc1d553f5cb9355fe5316ace78`  
		Last Modified: Sat, 12 Sep 2026 00:11:10 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f66234aafb78805130cae704567fa6701d10737b8191276916356be0bee3ce01`  
		Last Modified: Sat, 12 Sep 2026 00:11:11 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69f2e6b0f4834feb6eafe70f63d52b0c2f8b16513ed57da3f51318991fd744cb`  
		Last Modified: Sat, 12 Sep 2026 00:11:13 GMT  
		Size: 57.4 MB (57433356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b53b600954c22f62c1d1948d65f2dc6c6205e3996aa6a21a47b081f3afd1ffee`  
		Last Modified: Sat, 12 Sep 2026 00:11:12 GMT  
		Size: 324.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5851225399d70447fd534f656c1781822138abf44f2a1e465a4670fd7fbcc5d2`  
		Last Modified: Sat, 12 Sep 2026 00:11:16 GMT  
		Size: 158.2 MB (158242225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:316e3ee0d8ced9ac3269c64cf2975b66e8583023a9f6aa301bb71fed2303b6e3`  
		Last Modified: Sat, 12 Sep 2026 00:11:13 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26` - unknown; unknown

```console
$ docker pull mysql@sha256:c4f7b3de5c98b29cb44ff98ef53edf09a17a24a2a0d5461025cb30b855c2fddb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17451515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:153c5bf9f7baebb3618540997454074002fe046831fd1a243729fea8cb4755dc`

```dockerfile
```

-	Layers:
	-	`sha256:8d649ba510f9dbd56c78a9856c9818711cb5976481cb6357f5c5b3c7a4130e8d`  
		Last Modified: Sat, 12 Sep 2026 00:11:11 GMT  
		Size: 17.4 MB (17415876 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:88ed07925d0565f6f1f684199700e6347b6702caec8e738a48d1339ce921f563`  
		Last Modified: Sat, 12 Sep 2026 00:11:10 GMT  
		Size: 35.6 KB (35639 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:26-oracle`

```console
$ docker pull mysql@sha256:45abdd9b4144660b5c93a5b7d0ebb21e024f0ba9851ecb4ab43bf83c6bf83592
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:26-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:e90497776da10a4700999242a58d779a86879225bb2d8544b4109272a4c288bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.4 MB (272350479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21ed0f5cc49429e295ee53a1c19e9726067987d14b4b29d6cd35599ad066c4eb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 11 Sep 2026 23:24:06 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Fri, 11 Sep 2026 23:24:06 GMT
CMD ["/bin/bash"]
# Sat, 12 Sep 2026 00:08:53 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Sat, 12 Sep 2026 00:08:54 GMT
ENV GOSU_VERSION=1.19
# Sat, 12 Sep 2026 00:08:54 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 12 Sep 2026 00:09:29 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Sat, 12 Sep 2026 00:09:30 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Sat, 12 Sep 2026 00:09:30 GMT
ENV MYSQL_MAJOR=innovation
# Sat, 12 Sep 2026 00:09:30 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Sat, 12 Sep 2026 00:09:30 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Sat, 12 Sep 2026 00:10:09 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Sat, 12 Sep 2026 00:10:09 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Sat, 12 Sep 2026 00:10:09 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Sat, 12 Sep 2026 00:10:57 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Sat, 12 Sep 2026 00:10:57 GMT
VOLUME [/var/lib/mysql]
# Sat, 12 Sep 2026 00:10:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 12 Sep 2026 00:10:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 12 Sep 2026 00:10:58 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Sat, 12 Sep 2026 00:10:58 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:13c85306055eb6ecca743420c9a29fec0936e01bea1df866947ecc554f9b7235`  
		Last Modified: Fri, 11 Sep 2026 23:24:17 GMT  
		Size: 47.9 MB (47931319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1efac44fb10451bb6c48afdee56aceb0234a31d09f9abff40b8a45d353e9f4eb`  
		Last Modified: Sat, 12 Sep 2026 00:11:34 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f1d011bdd777410d8f289763994559a9be153f5771ebc32de2675a37147dfaf`  
		Last Modified: Sat, 12 Sep 2026 00:11:34 GMT  
		Size: 783.5 KB (783541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d61b3579fc6ca050cd58791db7a9ccb99553a828bf58f458693b95b22bfe699c`  
		Last Modified: Sat, 12 Sep 2026 00:11:34 GMT  
		Size: 6.2 MB (6193394 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5703b6421969ea9aff5cd6360efecae6e51b136dfa07a82656251d48e31b622`  
		Last Modified: Sat, 12 Sep 2026 00:11:26 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24899866011650b17a308d6dbb0dec68226c20699b2a73c9fd4deb4444dd8b28`  
		Last Modified: Sat, 12 Sep 2026 00:11:34 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13707ba668372c347e859a0c18a470add82d4189cc26e7ed927f0c018e9ac25e`  
		Last Modified: Sat, 12 Sep 2026 00:11:37 GMT  
		Size: 57.5 MB (57457519 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c4ffcc46f7cdd865fd1da77be7e5e1ae404849c15875ca684e75d8e2d33b9c8`  
		Last Modified: Sat, 12 Sep 2026 00:11:35 GMT  
		Size: 324.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee778d752aff96f367302483b39dcb42e27f91127326d1092469b3cc347b99bf`  
		Last Modified: Sat, 12 Sep 2026 00:11:40 GMT  
		Size: 160.0 MB (159975330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a869fc9d82872e499c0486dc9183f2bba06dc62f4256a28386987a67a0dbcede`  
		Last Modified: Sat, 12 Sep 2026 00:11:36 GMT  
		Size: 5.2 KB (5223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:f5ae1648f33608475f8fed10684539481530d00a78d1e8ee1c9bcba7d62b6ae5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17452701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd577f436e20fc0fd5dfb43e2cf6db31b416f4b4d1f45257bafe8d9b651aea6b`

```dockerfile
```

-	Layers:
	-	`sha256:4c01ad9af86a0393e864afc7fb0353f9c421c4172401fa5b9f3a04b8031a3f6d`  
		Last Modified: Sat, 12 Sep 2026 00:11:35 GMT  
		Size: 17.4 MB (17417403 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:afd4b55f41d0d8e5e82fab01597d834fed9d193f9ef139af6f015b8007e8abd2`  
		Last Modified: Sat, 12 Sep 2026 00:11:34 GMT  
		Size: 35.3 KB (35298 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:26-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:7216386511066db8765356adb24d46fa579b287ded143a77af4fd9e2152df699
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.7 MB (268717797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb7cb08eb1cf3d0be5c735a8ac3c14c1a09ad0495a61ff5923306344c85fb38e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 11 Sep 2026 23:26:27 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Fri, 11 Sep 2026 23:26:27 GMT
CMD ["/bin/bash"]
# Sat, 12 Sep 2026 00:08:24 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Sat, 12 Sep 2026 00:08:26 GMT
ENV GOSU_VERSION=1.19
# Sat, 12 Sep 2026 00:08:26 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 12 Sep 2026 00:09:02 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Sat, 12 Sep 2026 00:09:03 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Sat, 12 Sep 2026 00:09:03 GMT
ENV MYSQL_MAJOR=innovation
# Sat, 12 Sep 2026 00:09:03 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Sat, 12 Sep 2026 00:09:03 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Sat, 12 Sep 2026 00:09:43 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Sat, 12 Sep 2026 00:09:43 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Sat, 12 Sep 2026 00:09:43 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Sat, 12 Sep 2026 00:10:34 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Sat, 12 Sep 2026 00:10:34 GMT
VOLUME [/var/lib/mysql]
# Sat, 12 Sep 2026 00:10:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 12 Sep 2026 00:10:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 12 Sep 2026 00:10:34 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Sat, 12 Sep 2026 00:10:34 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:8e88a63a99d33b759690f9a9c14fa268d0d7021d7ba10b95738853eacfae654e`  
		Last Modified: Fri, 11 Sep 2026 23:26:38 GMT  
		Size: 46.5 MB (46478146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cc8b5218bdfc562fa40c1276e9ba629338fbbbda090bcff57511efe8aa1a243`  
		Last Modified: Sat, 12 Sep 2026 00:11:10 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82d5f282ab29fcf848cbb4926d2ef0a338b0ccb60b1c5e6ecf08419a0efad29d`  
		Last Modified: Sat, 12 Sep 2026 00:11:10 GMT  
		Size: 737.5 KB (737526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ac6ac725ff960e7ddde0be43e5cf1f51bb7630a3fa5e09e6bc13b835864d869`  
		Last Modified: Sat, 12 Sep 2026 00:11:10 GMT  
		Size: 5.8 MB (5817162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e280b918d4f60e62c0040b014f68b51a96ad8cbc1d553f5cb9355fe5316ace78`  
		Last Modified: Sat, 12 Sep 2026 00:11:10 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f66234aafb78805130cae704567fa6701d10737b8191276916356be0bee3ce01`  
		Last Modified: Sat, 12 Sep 2026 00:11:11 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69f2e6b0f4834feb6eafe70f63d52b0c2f8b16513ed57da3f51318991fd744cb`  
		Last Modified: Sat, 12 Sep 2026 00:11:13 GMT  
		Size: 57.4 MB (57433356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b53b600954c22f62c1d1948d65f2dc6c6205e3996aa6a21a47b081f3afd1ffee`  
		Last Modified: Sat, 12 Sep 2026 00:11:12 GMT  
		Size: 324.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5851225399d70447fd534f656c1781822138abf44f2a1e465a4670fd7fbcc5d2`  
		Last Modified: Sat, 12 Sep 2026 00:11:16 GMT  
		Size: 158.2 MB (158242225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:316e3ee0d8ced9ac3269c64cf2975b66e8583023a9f6aa301bb71fed2303b6e3`  
		Last Modified: Sat, 12 Sep 2026 00:11:13 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:c4f7b3de5c98b29cb44ff98ef53edf09a17a24a2a0d5461025cb30b855c2fddb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17451515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:153c5bf9f7baebb3618540997454074002fe046831fd1a243729fea8cb4755dc`

```dockerfile
```

-	Layers:
	-	`sha256:8d649ba510f9dbd56c78a9856c9818711cb5976481cb6357f5c5b3c7a4130e8d`  
		Last Modified: Sat, 12 Sep 2026 00:11:11 GMT  
		Size: 17.4 MB (17415876 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:88ed07925d0565f6f1f684199700e6347b6702caec8e738a48d1339ce921f563`  
		Last Modified: Sat, 12 Sep 2026 00:11:10 GMT  
		Size: 35.6 KB (35639 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:26-oraclelinux9`

```console
$ docker pull mysql@sha256:45abdd9b4144660b5c93a5b7d0ebb21e024f0ba9851ecb4ab43bf83c6bf83592
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:26-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:e90497776da10a4700999242a58d779a86879225bb2d8544b4109272a4c288bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.4 MB (272350479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21ed0f5cc49429e295ee53a1c19e9726067987d14b4b29d6cd35599ad066c4eb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 11 Sep 2026 23:24:06 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Fri, 11 Sep 2026 23:24:06 GMT
CMD ["/bin/bash"]
# Sat, 12 Sep 2026 00:08:53 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Sat, 12 Sep 2026 00:08:54 GMT
ENV GOSU_VERSION=1.19
# Sat, 12 Sep 2026 00:08:54 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 12 Sep 2026 00:09:29 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Sat, 12 Sep 2026 00:09:30 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Sat, 12 Sep 2026 00:09:30 GMT
ENV MYSQL_MAJOR=innovation
# Sat, 12 Sep 2026 00:09:30 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Sat, 12 Sep 2026 00:09:30 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Sat, 12 Sep 2026 00:10:09 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Sat, 12 Sep 2026 00:10:09 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Sat, 12 Sep 2026 00:10:09 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Sat, 12 Sep 2026 00:10:57 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Sat, 12 Sep 2026 00:10:57 GMT
VOLUME [/var/lib/mysql]
# Sat, 12 Sep 2026 00:10:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 12 Sep 2026 00:10:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 12 Sep 2026 00:10:58 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Sat, 12 Sep 2026 00:10:58 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:13c85306055eb6ecca743420c9a29fec0936e01bea1df866947ecc554f9b7235`  
		Last Modified: Fri, 11 Sep 2026 23:24:17 GMT  
		Size: 47.9 MB (47931319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1efac44fb10451bb6c48afdee56aceb0234a31d09f9abff40b8a45d353e9f4eb`  
		Last Modified: Sat, 12 Sep 2026 00:11:34 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f1d011bdd777410d8f289763994559a9be153f5771ebc32de2675a37147dfaf`  
		Last Modified: Sat, 12 Sep 2026 00:11:34 GMT  
		Size: 783.5 KB (783541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d61b3579fc6ca050cd58791db7a9ccb99553a828bf58f458693b95b22bfe699c`  
		Last Modified: Sat, 12 Sep 2026 00:11:34 GMT  
		Size: 6.2 MB (6193394 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5703b6421969ea9aff5cd6360efecae6e51b136dfa07a82656251d48e31b622`  
		Last Modified: Sat, 12 Sep 2026 00:11:26 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24899866011650b17a308d6dbb0dec68226c20699b2a73c9fd4deb4444dd8b28`  
		Last Modified: Sat, 12 Sep 2026 00:11:34 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13707ba668372c347e859a0c18a470add82d4189cc26e7ed927f0c018e9ac25e`  
		Last Modified: Sat, 12 Sep 2026 00:11:37 GMT  
		Size: 57.5 MB (57457519 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c4ffcc46f7cdd865fd1da77be7e5e1ae404849c15875ca684e75d8e2d33b9c8`  
		Last Modified: Sat, 12 Sep 2026 00:11:35 GMT  
		Size: 324.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee778d752aff96f367302483b39dcb42e27f91127326d1092469b3cc347b99bf`  
		Last Modified: Sat, 12 Sep 2026 00:11:40 GMT  
		Size: 160.0 MB (159975330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a869fc9d82872e499c0486dc9183f2bba06dc62f4256a28386987a67a0dbcede`  
		Last Modified: Sat, 12 Sep 2026 00:11:36 GMT  
		Size: 5.2 KB (5223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:f5ae1648f33608475f8fed10684539481530d00a78d1e8ee1c9bcba7d62b6ae5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17452701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd577f436e20fc0fd5dfb43e2cf6db31b416f4b4d1f45257bafe8d9b651aea6b`

```dockerfile
```

-	Layers:
	-	`sha256:4c01ad9af86a0393e864afc7fb0353f9c421c4172401fa5b9f3a04b8031a3f6d`  
		Last Modified: Sat, 12 Sep 2026 00:11:35 GMT  
		Size: 17.4 MB (17417403 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:afd4b55f41d0d8e5e82fab01597d834fed9d193f9ef139af6f015b8007e8abd2`  
		Last Modified: Sat, 12 Sep 2026 00:11:34 GMT  
		Size: 35.3 KB (35298 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:26-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:7216386511066db8765356adb24d46fa579b287ded143a77af4fd9e2152df699
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.7 MB (268717797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb7cb08eb1cf3d0be5c735a8ac3c14c1a09ad0495a61ff5923306344c85fb38e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 11 Sep 2026 23:26:27 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Fri, 11 Sep 2026 23:26:27 GMT
CMD ["/bin/bash"]
# Sat, 12 Sep 2026 00:08:24 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Sat, 12 Sep 2026 00:08:26 GMT
ENV GOSU_VERSION=1.19
# Sat, 12 Sep 2026 00:08:26 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 12 Sep 2026 00:09:02 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Sat, 12 Sep 2026 00:09:03 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Sat, 12 Sep 2026 00:09:03 GMT
ENV MYSQL_MAJOR=innovation
# Sat, 12 Sep 2026 00:09:03 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Sat, 12 Sep 2026 00:09:03 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Sat, 12 Sep 2026 00:09:43 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Sat, 12 Sep 2026 00:09:43 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Sat, 12 Sep 2026 00:09:43 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Sat, 12 Sep 2026 00:10:34 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Sat, 12 Sep 2026 00:10:34 GMT
VOLUME [/var/lib/mysql]
# Sat, 12 Sep 2026 00:10:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 12 Sep 2026 00:10:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 12 Sep 2026 00:10:34 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Sat, 12 Sep 2026 00:10:34 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:8e88a63a99d33b759690f9a9c14fa268d0d7021d7ba10b95738853eacfae654e`  
		Last Modified: Fri, 11 Sep 2026 23:26:38 GMT  
		Size: 46.5 MB (46478146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cc8b5218bdfc562fa40c1276e9ba629338fbbbda090bcff57511efe8aa1a243`  
		Last Modified: Sat, 12 Sep 2026 00:11:10 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82d5f282ab29fcf848cbb4926d2ef0a338b0ccb60b1c5e6ecf08419a0efad29d`  
		Last Modified: Sat, 12 Sep 2026 00:11:10 GMT  
		Size: 737.5 KB (737526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ac6ac725ff960e7ddde0be43e5cf1f51bb7630a3fa5e09e6bc13b835864d869`  
		Last Modified: Sat, 12 Sep 2026 00:11:10 GMT  
		Size: 5.8 MB (5817162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e280b918d4f60e62c0040b014f68b51a96ad8cbc1d553f5cb9355fe5316ace78`  
		Last Modified: Sat, 12 Sep 2026 00:11:10 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f66234aafb78805130cae704567fa6701d10737b8191276916356be0bee3ce01`  
		Last Modified: Sat, 12 Sep 2026 00:11:11 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69f2e6b0f4834feb6eafe70f63d52b0c2f8b16513ed57da3f51318991fd744cb`  
		Last Modified: Sat, 12 Sep 2026 00:11:13 GMT  
		Size: 57.4 MB (57433356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b53b600954c22f62c1d1948d65f2dc6c6205e3996aa6a21a47b081f3afd1ffee`  
		Last Modified: Sat, 12 Sep 2026 00:11:12 GMT  
		Size: 324.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5851225399d70447fd534f656c1781822138abf44f2a1e465a4670fd7fbcc5d2`  
		Last Modified: Sat, 12 Sep 2026 00:11:16 GMT  
		Size: 158.2 MB (158242225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:316e3ee0d8ced9ac3269c64cf2975b66e8583023a9f6aa301bb71fed2303b6e3`  
		Last Modified: Sat, 12 Sep 2026 00:11:13 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:c4f7b3de5c98b29cb44ff98ef53edf09a17a24a2a0d5461025cb30b855c2fddb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17451515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:153c5bf9f7baebb3618540997454074002fe046831fd1a243729fea8cb4755dc`

```dockerfile
```

-	Layers:
	-	`sha256:8d649ba510f9dbd56c78a9856c9818711cb5976481cb6357f5c5b3c7a4130e8d`  
		Last Modified: Sat, 12 Sep 2026 00:11:11 GMT  
		Size: 17.4 MB (17415876 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:88ed07925d0565f6f1f684199700e6347b6702caec8e738a48d1339ce921f563`  
		Last Modified: Sat, 12 Sep 2026 00:11:10 GMT  
		Size: 35.6 KB (35639 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:26.7`

```console
$ docker pull mysql@sha256:45abdd9b4144660b5c93a5b7d0ebb21e024f0ba9851ecb4ab43bf83c6bf83592
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:26.7` - linux; amd64

```console
$ docker pull mysql@sha256:e90497776da10a4700999242a58d779a86879225bb2d8544b4109272a4c288bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.4 MB (272350479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21ed0f5cc49429e295ee53a1c19e9726067987d14b4b29d6cd35599ad066c4eb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 11 Sep 2026 23:24:06 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Fri, 11 Sep 2026 23:24:06 GMT
CMD ["/bin/bash"]
# Sat, 12 Sep 2026 00:08:53 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Sat, 12 Sep 2026 00:08:54 GMT
ENV GOSU_VERSION=1.19
# Sat, 12 Sep 2026 00:08:54 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 12 Sep 2026 00:09:29 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Sat, 12 Sep 2026 00:09:30 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Sat, 12 Sep 2026 00:09:30 GMT
ENV MYSQL_MAJOR=innovation
# Sat, 12 Sep 2026 00:09:30 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Sat, 12 Sep 2026 00:09:30 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Sat, 12 Sep 2026 00:10:09 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Sat, 12 Sep 2026 00:10:09 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Sat, 12 Sep 2026 00:10:09 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Sat, 12 Sep 2026 00:10:57 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Sat, 12 Sep 2026 00:10:57 GMT
VOLUME [/var/lib/mysql]
# Sat, 12 Sep 2026 00:10:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 12 Sep 2026 00:10:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 12 Sep 2026 00:10:58 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Sat, 12 Sep 2026 00:10:58 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:13c85306055eb6ecca743420c9a29fec0936e01bea1df866947ecc554f9b7235`  
		Last Modified: Fri, 11 Sep 2026 23:24:17 GMT  
		Size: 47.9 MB (47931319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1efac44fb10451bb6c48afdee56aceb0234a31d09f9abff40b8a45d353e9f4eb`  
		Last Modified: Sat, 12 Sep 2026 00:11:34 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f1d011bdd777410d8f289763994559a9be153f5771ebc32de2675a37147dfaf`  
		Last Modified: Sat, 12 Sep 2026 00:11:34 GMT  
		Size: 783.5 KB (783541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d61b3579fc6ca050cd58791db7a9ccb99553a828bf58f458693b95b22bfe699c`  
		Last Modified: Sat, 12 Sep 2026 00:11:34 GMT  
		Size: 6.2 MB (6193394 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5703b6421969ea9aff5cd6360efecae6e51b136dfa07a82656251d48e31b622`  
		Last Modified: Sat, 12 Sep 2026 00:11:26 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24899866011650b17a308d6dbb0dec68226c20699b2a73c9fd4deb4444dd8b28`  
		Last Modified: Sat, 12 Sep 2026 00:11:34 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13707ba668372c347e859a0c18a470add82d4189cc26e7ed927f0c018e9ac25e`  
		Last Modified: Sat, 12 Sep 2026 00:11:37 GMT  
		Size: 57.5 MB (57457519 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c4ffcc46f7cdd865fd1da77be7e5e1ae404849c15875ca684e75d8e2d33b9c8`  
		Last Modified: Sat, 12 Sep 2026 00:11:35 GMT  
		Size: 324.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee778d752aff96f367302483b39dcb42e27f91127326d1092469b3cc347b99bf`  
		Last Modified: Sat, 12 Sep 2026 00:11:40 GMT  
		Size: 160.0 MB (159975330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a869fc9d82872e499c0486dc9183f2bba06dc62f4256a28386987a67a0dbcede`  
		Last Modified: Sat, 12 Sep 2026 00:11:36 GMT  
		Size: 5.2 KB (5223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26.7` - unknown; unknown

```console
$ docker pull mysql@sha256:f5ae1648f33608475f8fed10684539481530d00a78d1e8ee1c9bcba7d62b6ae5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17452701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd577f436e20fc0fd5dfb43e2cf6db31b416f4b4d1f45257bafe8d9b651aea6b`

```dockerfile
```

-	Layers:
	-	`sha256:4c01ad9af86a0393e864afc7fb0353f9c421c4172401fa5b9f3a04b8031a3f6d`  
		Last Modified: Sat, 12 Sep 2026 00:11:35 GMT  
		Size: 17.4 MB (17417403 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:afd4b55f41d0d8e5e82fab01597d834fed9d193f9ef139af6f015b8007e8abd2`  
		Last Modified: Sat, 12 Sep 2026 00:11:34 GMT  
		Size: 35.3 KB (35298 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:26.7` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:7216386511066db8765356adb24d46fa579b287ded143a77af4fd9e2152df699
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.7 MB (268717797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb7cb08eb1cf3d0be5c735a8ac3c14c1a09ad0495a61ff5923306344c85fb38e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 11 Sep 2026 23:26:27 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Fri, 11 Sep 2026 23:26:27 GMT
CMD ["/bin/bash"]
# Sat, 12 Sep 2026 00:08:24 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Sat, 12 Sep 2026 00:08:26 GMT
ENV GOSU_VERSION=1.19
# Sat, 12 Sep 2026 00:08:26 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 12 Sep 2026 00:09:02 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Sat, 12 Sep 2026 00:09:03 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Sat, 12 Sep 2026 00:09:03 GMT
ENV MYSQL_MAJOR=innovation
# Sat, 12 Sep 2026 00:09:03 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Sat, 12 Sep 2026 00:09:03 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Sat, 12 Sep 2026 00:09:43 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Sat, 12 Sep 2026 00:09:43 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Sat, 12 Sep 2026 00:09:43 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Sat, 12 Sep 2026 00:10:34 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Sat, 12 Sep 2026 00:10:34 GMT
VOLUME [/var/lib/mysql]
# Sat, 12 Sep 2026 00:10:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 12 Sep 2026 00:10:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 12 Sep 2026 00:10:34 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Sat, 12 Sep 2026 00:10:34 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:8e88a63a99d33b759690f9a9c14fa268d0d7021d7ba10b95738853eacfae654e`  
		Last Modified: Fri, 11 Sep 2026 23:26:38 GMT  
		Size: 46.5 MB (46478146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cc8b5218bdfc562fa40c1276e9ba629338fbbbda090bcff57511efe8aa1a243`  
		Last Modified: Sat, 12 Sep 2026 00:11:10 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82d5f282ab29fcf848cbb4926d2ef0a338b0ccb60b1c5e6ecf08419a0efad29d`  
		Last Modified: Sat, 12 Sep 2026 00:11:10 GMT  
		Size: 737.5 KB (737526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ac6ac725ff960e7ddde0be43e5cf1f51bb7630a3fa5e09e6bc13b835864d869`  
		Last Modified: Sat, 12 Sep 2026 00:11:10 GMT  
		Size: 5.8 MB (5817162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e280b918d4f60e62c0040b014f68b51a96ad8cbc1d553f5cb9355fe5316ace78`  
		Last Modified: Sat, 12 Sep 2026 00:11:10 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f66234aafb78805130cae704567fa6701d10737b8191276916356be0bee3ce01`  
		Last Modified: Sat, 12 Sep 2026 00:11:11 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69f2e6b0f4834feb6eafe70f63d52b0c2f8b16513ed57da3f51318991fd744cb`  
		Last Modified: Sat, 12 Sep 2026 00:11:13 GMT  
		Size: 57.4 MB (57433356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b53b600954c22f62c1d1948d65f2dc6c6205e3996aa6a21a47b081f3afd1ffee`  
		Last Modified: Sat, 12 Sep 2026 00:11:12 GMT  
		Size: 324.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5851225399d70447fd534f656c1781822138abf44f2a1e465a4670fd7fbcc5d2`  
		Last Modified: Sat, 12 Sep 2026 00:11:16 GMT  
		Size: 158.2 MB (158242225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:316e3ee0d8ced9ac3269c64cf2975b66e8583023a9f6aa301bb71fed2303b6e3`  
		Last Modified: Sat, 12 Sep 2026 00:11:13 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26.7` - unknown; unknown

```console
$ docker pull mysql@sha256:c4f7b3de5c98b29cb44ff98ef53edf09a17a24a2a0d5461025cb30b855c2fddb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17451515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:153c5bf9f7baebb3618540997454074002fe046831fd1a243729fea8cb4755dc`

```dockerfile
```

-	Layers:
	-	`sha256:8d649ba510f9dbd56c78a9856c9818711cb5976481cb6357f5c5b3c7a4130e8d`  
		Last Modified: Sat, 12 Sep 2026 00:11:11 GMT  
		Size: 17.4 MB (17415876 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:88ed07925d0565f6f1f684199700e6347b6702caec8e738a48d1339ce921f563`  
		Last Modified: Sat, 12 Sep 2026 00:11:10 GMT  
		Size: 35.6 KB (35639 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:26.7-oracle`

```console
$ docker pull mysql@sha256:45abdd9b4144660b5c93a5b7d0ebb21e024f0ba9851ecb4ab43bf83c6bf83592
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:26.7-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:e90497776da10a4700999242a58d779a86879225bb2d8544b4109272a4c288bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.4 MB (272350479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21ed0f5cc49429e295ee53a1c19e9726067987d14b4b29d6cd35599ad066c4eb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 11 Sep 2026 23:24:06 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Fri, 11 Sep 2026 23:24:06 GMT
CMD ["/bin/bash"]
# Sat, 12 Sep 2026 00:08:53 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Sat, 12 Sep 2026 00:08:54 GMT
ENV GOSU_VERSION=1.19
# Sat, 12 Sep 2026 00:08:54 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 12 Sep 2026 00:09:29 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Sat, 12 Sep 2026 00:09:30 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Sat, 12 Sep 2026 00:09:30 GMT
ENV MYSQL_MAJOR=innovation
# Sat, 12 Sep 2026 00:09:30 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Sat, 12 Sep 2026 00:09:30 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Sat, 12 Sep 2026 00:10:09 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Sat, 12 Sep 2026 00:10:09 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Sat, 12 Sep 2026 00:10:09 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Sat, 12 Sep 2026 00:10:57 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Sat, 12 Sep 2026 00:10:57 GMT
VOLUME [/var/lib/mysql]
# Sat, 12 Sep 2026 00:10:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 12 Sep 2026 00:10:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 12 Sep 2026 00:10:58 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Sat, 12 Sep 2026 00:10:58 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:13c85306055eb6ecca743420c9a29fec0936e01bea1df866947ecc554f9b7235`  
		Last Modified: Fri, 11 Sep 2026 23:24:17 GMT  
		Size: 47.9 MB (47931319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1efac44fb10451bb6c48afdee56aceb0234a31d09f9abff40b8a45d353e9f4eb`  
		Last Modified: Sat, 12 Sep 2026 00:11:34 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f1d011bdd777410d8f289763994559a9be153f5771ebc32de2675a37147dfaf`  
		Last Modified: Sat, 12 Sep 2026 00:11:34 GMT  
		Size: 783.5 KB (783541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d61b3579fc6ca050cd58791db7a9ccb99553a828bf58f458693b95b22bfe699c`  
		Last Modified: Sat, 12 Sep 2026 00:11:34 GMT  
		Size: 6.2 MB (6193394 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5703b6421969ea9aff5cd6360efecae6e51b136dfa07a82656251d48e31b622`  
		Last Modified: Sat, 12 Sep 2026 00:11:26 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24899866011650b17a308d6dbb0dec68226c20699b2a73c9fd4deb4444dd8b28`  
		Last Modified: Sat, 12 Sep 2026 00:11:34 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13707ba668372c347e859a0c18a470add82d4189cc26e7ed927f0c018e9ac25e`  
		Last Modified: Sat, 12 Sep 2026 00:11:37 GMT  
		Size: 57.5 MB (57457519 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c4ffcc46f7cdd865fd1da77be7e5e1ae404849c15875ca684e75d8e2d33b9c8`  
		Last Modified: Sat, 12 Sep 2026 00:11:35 GMT  
		Size: 324.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee778d752aff96f367302483b39dcb42e27f91127326d1092469b3cc347b99bf`  
		Last Modified: Sat, 12 Sep 2026 00:11:40 GMT  
		Size: 160.0 MB (159975330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a869fc9d82872e499c0486dc9183f2bba06dc62f4256a28386987a67a0dbcede`  
		Last Modified: Sat, 12 Sep 2026 00:11:36 GMT  
		Size: 5.2 KB (5223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26.7-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:f5ae1648f33608475f8fed10684539481530d00a78d1e8ee1c9bcba7d62b6ae5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17452701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd577f436e20fc0fd5dfb43e2cf6db31b416f4b4d1f45257bafe8d9b651aea6b`

```dockerfile
```

-	Layers:
	-	`sha256:4c01ad9af86a0393e864afc7fb0353f9c421c4172401fa5b9f3a04b8031a3f6d`  
		Last Modified: Sat, 12 Sep 2026 00:11:35 GMT  
		Size: 17.4 MB (17417403 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:afd4b55f41d0d8e5e82fab01597d834fed9d193f9ef139af6f015b8007e8abd2`  
		Last Modified: Sat, 12 Sep 2026 00:11:34 GMT  
		Size: 35.3 KB (35298 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:26.7-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:7216386511066db8765356adb24d46fa579b287ded143a77af4fd9e2152df699
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.7 MB (268717797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb7cb08eb1cf3d0be5c735a8ac3c14c1a09ad0495a61ff5923306344c85fb38e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 11 Sep 2026 23:26:27 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Fri, 11 Sep 2026 23:26:27 GMT
CMD ["/bin/bash"]
# Sat, 12 Sep 2026 00:08:24 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Sat, 12 Sep 2026 00:08:26 GMT
ENV GOSU_VERSION=1.19
# Sat, 12 Sep 2026 00:08:26 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 12 Sep 2026 00:09:02 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Sat, 12 Sep 2026 00:09:03 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Sat, 12 Sep 2026 00:09:03 GMT
ENV MYSQL_MAJOR=innovation
# Sat, 12 Sep 2026 00:09:03 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Sat, 12 Sep 2026 00:09:03 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Sat, 12 Sep 2026 00:09:43 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Sat, 12 Sep 2026 00:09:43 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Sat, 12 Sep 2026 00:09:43 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Sat, 12 Sep 2026 00:10:34 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Sat, 12 Sep 2026 00:10:34 GMT
VOLUME [/var/lib/mysql]
# Sat, 12 Sep 2026 00:10:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 12 Sep 2026 00:10:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 12 Sep 2026 00:10:34 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Sat, 12 Sep 2026 00:10:34 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:8e88a63a99d33b759690f9a9c14fa268d0d7021d7ba10b95738853eacfae654e`  
		Last Modified: Fri, 11 Sep 2026 23:26:38 GMT  
		Size: 46.5 MB (46478146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cc8b5218bdfc562fa40c1276e9ba629338fbbbda090bcff57511efe8aa1a243`  
		Last Modified: Sat, 12 Sep 2026 00:11:10 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82d5f282ab29fcf848cbb4926d2ef0a338b0ccb60b1c5e6ecf08419a0efad29d`  
		Last Modified: Sat, 12 Sep 2026 00:11:10 GMT  
		Size: 737.5 KB (737526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ac6ac725ff960e7ddde0be43e5cf1f51bb7630a3fa5e09e6bc13b835864d869`  
		Last Modified: Sat, 12 Sep 2026 00:11:10 GMT  
		Size: 5.8 MB (5817162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e280b918d4f60e62c0040b014f68b51a96ad8cbc1d553f5cb9355fe5316ace78`  
		Last Modified: Sat, 12 Sep 2026 00:11:10 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f66234aafb78805130cae704567fa6701d10737b8191276916356be0bee3ce01`  
		Last Modified: Sat, 12 Sep 2026 00:11:11 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69f2e6b0f4834feb6eafe70f63d52b0c2f8b16513ed57da3f51318991fd744cb`  
		Last Modified: Sat, 12 Sep 2026 00:11:13 GMT  
		Size: 57.4 MB (57433356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b53b600954c22f62c1d1948d65f2dc6c6205e3996aa6a21a47b081f3afd1ffee`  
		Last Modified: Sat, 12 Sep 2026 00:11:12 GMT  
		Size: 324.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5851225399d70447fd534f656c1781822138abf44f2a1e465a4670fd7fbcc5d2`  
		Last Modified: Sat, 12 Sep 2026 00:11:16 GMT  
		Size: 158.2 MB (158242225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:316e3ee0d8ced9ac3269c64cf2975b66e8583023a9f6aa301bb71fed2303b6e3`  
		Last Modified: Sat, 12 Sep 2026 00:11:13 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26.7-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:c4f7b3de5c98b29cb44ff98ef53edf09a17a24a2a0d5461025cb30b855c2fddb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17451515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:153c5bf9f7baebb3618540997454074002fe046831fd1a243729fea8cb4755dc`

```dockerfile
```

-	Layers:
	-	`sha256:8d649ba510f9dbd56c78a9856c9818711cb5976481cb6357f5c5b3c7a4130e8d`  
		Last Modified: Sat, 12 Sep 2026 00:11:11 GMT  
		Size: 17.4 MB (17415876 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:88ed07925d0565f6f1f684199700e6347b6702caec8e738a48d1339ce921f563`  
		Last Modified: Sat, 12 Sep 2026 00:11:10 GMT  
		Size: 35.6 KB (35639 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:26.7-oraclelinux9`

```console
$ docker pull mysql@sha256:45abdd9b4144660b5c93a5b7d0ebb21e024f0ba9851ecb4ab43bf83c6bf83592
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:26.7-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:e90497776da10a4700999242a58d779a86879225bb2d8544b4109272a4c288bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.4 MB (272350479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21ed0f5cc49429e295ee53a1c19e9726067987d14b4b29d6cd35599ad066c4eb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 11 Sep 2026 23:24:06 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Fri, 11 Sep 2026 23:24:06 GMT
CMD ["/bin/bash"]
# Sat, 12 Sep 2026 00:08:53 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Sat, 12 Sep 2026 00:08:54 GMT
ENV GOSU_VERSION=1.19
# Sat, 12 Sep 2026 00:08:54 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 12 Sep 2026 00:09:29 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Sat, 12 Sep 2026 00:09:30 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Sat, 12 Sep 2026 00:09:30 GMT
ENV MYSQL_MAJOR=innovation
# Sat, 12 Sep 2026 00:09:30 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Sat, 12 Sep 2026 00:09:30 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Sat, 12 Sep 2026 00:10:09 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Sat, 12 Sep 2026 00:10:09 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Sat, 12 Sep 2026 00:10:09 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Sat, 12 Sep 2026 00:10:57 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Sat, 12 Sep 2026 00:10:57 GMT
VOLUME [/var/lib/mysql]
# Sat, 12 Sep 2026 00:10:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 12 Sep 2026 00:10:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 12 Sep 2026 00:10:58 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Sat, 12 Sep 2026 00:10:58 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:13c85306055eb6ecca743420c9a29fec0936e01bea1df866947ecc554f9b7235`  
		Last Modified: Fri, 11 Sep 2026 23:24:17 GMT  
		Size: 47.9 MB (47931319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1efac44fb10451bb6c48afdee56aceb0234a31d09f9abff40b8a45d353e9f4eb`  
		Last Modified: Sat, 12 Sep 2026 00:11:34 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f1d011bdd777410d8f289763994559a9be153f5771ebc32de2675a37147dfaf`  
		Last Modified: Sat, 12 Sep 2026 00:11:34 GMT  
		Size: 783.5 KB (783541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d61b3579fc6ca050cd58791db7a9ccb99553a828bf58f458693b95b22bfe699c`  
		Last Modified: Sat, 12 Sep 2026 00:11:34 GMT  
		Size: 6.2 MB (6193394 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5703b6421969ea9aff5cd6360efecae6e51b136dfa07a82656251d48e31b622`  
		Last Modified: Sat, 12 Sep 2026 00:11:26 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24899866011650b17a308d6dbb0dec68226c20699b2a73c9fd4deb4444dd8b28`  
		Last Modified: Sat, 12 Sep 2026 00:11:34 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13707ba668372c347e859a0c18a470add82d4189cc26e7ed927f0c018e9ac25e`  
		Last Modified: Sat, 12 Sep 2026 00:11:37 GMT  
		Size: 57.5 MB (57457519 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c4ffcc46f7cdd865fd1da77be7e5e1ae404849c15875ca684e75d8e2d33b9c8`  
		Last Modified: Sat, 12 Sep 2026 00:11:35 GMT  
		Size: 324.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee778d752aff96f367302483b39dcb42e27f91127326d1092469b3cc347b99bf`  
		Last Modified: Sat, 12 Sep 2026 00:11:40 GMT  
		Size: 160.0 MB (159975330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a869fc9d82872e499c0486dc9183f2bba06dc62f4256a28386987a67a0dbcede`  
		Last Modified: Sat, 12 Sep 2026 00:11:36 GMT  
		Size: 5.2 KB (5223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26.7-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:f5ae1648f33608475f8fed10684539481530d00a78d1e8ee1c9bcba7d62b6ae5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17452701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd577f436e20fc0fd5dfb43e2cf6db31b416f4b4d1f45257bafe8d9b651aea6b`

```dockerfile
```

-	Layers:
	-	`sha256:4c01ad9af86a0393e864afc7fb0353f9c421c4172401fa5b9f3a04b8031a3f6d`  
		Last Modified: Sat, 12 Sep 2026 00:11:35 GMT  
		Size: 17.4 MB (17417403 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:afd4b55f41d0d8e5e82fab01597d834fed9d193f9ef139af6f015b8007e8abd2`  
		Last Modified: Sat, 12 Sep 2026 00:11:34 GMT  
		Size: 35.3 KB (35298 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:26.7-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:7216386511066db8765356adb24d46fa579b287ded143a77af4fd9e2152df699
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.7 MB (268717797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb7cb08eb1cf3d0be5c735a8ac3c14c1a09ad0495a61ff5923306344c85fb38e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 11 Sep 2026 23:26:27 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Fri, 11 Sep 2026 23:26:27 GMT
CMD ["/bin/bash"]
# Sat, 12 Sep 2026 00:08:24 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Sat, 12 Sep 2026 00:08:26 GMT
ENV GOSU_VERSION=1.19
# Sat, 12 Sep 2026 00:08:26 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 12 Sep 2026 00:09:02 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Sat, 12 Sep 2026 00:09:03 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Sat, 12 Sep 2026 00:09:03 GMT
ENV MYSQL_MAJOR=innovation
# Sat, 12 Sep 2026 00:09:03 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Sat, 12 Sep 2026 00:09:03 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Sat, 12 Sep 2026 00:09:43 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Sat, 12 Sep 2026 00:09:43 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Sat, 12 Sep 2026 00:09:43 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Sat, 12 Sep 2026 00:10:34 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Sat, 12 Sep 2026 00:10:34 GMT
VOLUME [/var/lib/mysql]
# Sat, 12 Sep 2026 00:10:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 12 Sep 2026 00:10:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 12 Sep 2026 00:10:34 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Sat, 12 Sep 2026 00:10:34 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:8e88a63a99d33b759690f9a9c14fa268d0d7021d7ba10b95738853eacfae654e`  
		Last Modified: Fri, 11 Sep 2026 23:26:38 GMT  
		Size: 46.5 MB (46478146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cc8b5218bdfc562fa40c1276e9ba629338fbbbda090bcff57511efe8aa1a243`  
		Last Modified: Sat, 12 Sep 2026 00:11:10 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82d5f282ab29fcf848cbb4926d2ef0a338b0ccb60b1c5e6ecf08419a0efad29d`  
		Last Modified: Sat, 12 Sep 2026 00:11:10 GMT  
		Size: 737.5 KB (737526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ac6ac725ff960e7ddde0be43e5cf1f51bb7630a3fa5e09e6bc13b835864d869`  
		Last Modified: Sat, 12 Sep 2026 00:11:10 GMT  
		Size: 5.8 MB (5817162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e280b918d4f60e62c0040b014f68b51a96ad8cbc1d553f5cb9355fe5316ace78`  
		Last Modified: Sat, 12 Sep 2026 00:11:10 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f66234aafb78805130cae704567fa6701d10737b8191276916356be0bee3ce01`  
		Last Modified: Sat, 12 Sep 2026 00:11:11 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69f2e6b0f4834feb6eafe70f63d52b0c2f8b16513ed57da3f51318991fd744cb`  
		Last Modified: Sat, 12 Sep 2026 00:11:13 GMT  
		Size: 57.4 MB (57433356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b53b600954c22f62c1d1948d65f2dc6c6205e3996aa6a21a47b081f3afd1ffee`  
		Last Modified: Sat, 12 Sep 2026 00:11:12 GMT  
		Size: 324.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5851225399d70447fd534f656c1781822138abf44f2a1e465a4670fd7fbcc5d2`  
		Last Modified: Sat, 12 Sep 2026 00:11:16 GMT  
		Size: 158.2 MB (158242225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:316e3ee0d8ced9ac3269c64cf2975b66e8583023a9f6aa301bb71fed2303b6e3`  
		Last Modified: Sat, 12 Sep 2026 00:11:13 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26.7-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:c4f7b3de5c98b29cb44ff98ef53edf09a17a24a2a0d5461025cb30b855c2fddb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17451515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:153c5bf9f7baebb3618540997454074002fe046831fd1a243729fea8cb4755dc`

```dockerfile
```

-	Layers:
	-	`sha256:8d649ba510f9dbd56c78a9856c9818711cb5976481cb6357f5c5b3c7a4130e8d`  
		Last Modified: Sat, 12 Sep 2026 00:11:11 GMT  
		Size: 17.4 MB (17415876 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:88ed07925d0565f6f1f684199700e6347b6702caec8e738a48d1339ce921f563`  
		Last Modified: Sat, 12 Sep 2026 00:11:10 GMT  
		Size: 35.6 KB (35639 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:26.7.0`

```console
$ docker pull mysql@sha256:45abdd9b4144660b5c93a5b7d0ebb21e024f0ba9851ecb4ab43bf83c6bf83592
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:26.7.0` - linux; amd64

```console
$ docker pull mysql@sha256:e90497776da10a4700999242a58d779a86879225bb2d8544b4109272a4c288bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.4 MB (272350479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21ed0f5cc49429e295ee53a1c19e9726067987d14b4b29d6cd35599ad066c4eb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 11 Sep 2026 23:24:06 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Fri, 11 Sep 2026 23:24:06 GMT
CMD ["/bin/bash"]
# Sat, 12 Sep 2026 00:08:53 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Sat, 12 Sep 2026 00:08:54 GMT
ENV GOSU_VERSION=1.19
# Sat, 12 Sep 2026 00:08:54 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 12 Sep 2026 00:09:29 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Sat, 12 Sep 2026 00:09:30 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Sat, 12 Sep 2026 00:09:30 GMT
ENV MYSQL_MAJOR=innovation
# Sat, 12 Sep 2026 00:09:30 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Sat, 12 Sep 2026 00:09:30 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Sat, 12 Sep 2026 00:10:09 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Sat, 12 Sep 2026 00:10:09 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Sat, 12 Sep 2026 00:10:09 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Sat, 12 Sep 2026 00:10:57 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Sat, 12 Sep 2026 00:10:57 GMT
VOLUME [/var/lib/mysql]
# Sat, 12 Sep 2026 00:10:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 12 Sep 2026 00:10:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 12 Sep 2026 00:10:58 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Sat, 12 Sep 2026 00:10:58 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:13c85306055eb6ecca743420c9a29fec0936e01bea1df866947ecc554f9b7235`  
		Last Modified: Fri, 11 Sep 2026 23:24:17 GMT  
		Size: 47.9 MB (47931319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1efac44fb10451bb6c48afdee56aceb0234a31d09f9abff40b8a45d353e9f4eb`  
		Last Modified: Sat, 12 Sep 2026 00:11:34 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f1d011bdd777410d8f289763994559a9be153f5771ebc32de2675a37147dfaf`  
		Last Modified: Sat, 12 Sep 2026 00:11:34 GMT  
		Size: 783.5 KB (783541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d61b3579fc6ca050cd58791db7a9ccb99553a828bf58f458693b95b22bfe699c`  
		Last Modified: Sat, 12 Sep 2026 00:11:34 GMT  
		Size: 6.2 MB (6193394 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5703b6421969ea9aff5cd6360efecae6e51b136dfa07a82656251d48e31b622`  
		Last Modified: Sat, 12 Sep 2026 00:11:26 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24899866011650b17a308d6dbb0dec68226c20699b2a73c9fd4deb4444dd8b28`  
		Last Modified: Sat, 12 Sep 2026 00:11:34 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13707ba668372c347e859a0c18a470add82d4189cc26e7ed927f0c018e9ac25e`  
		Last Modified: Sat, 12 Sep 2026 00:11:37 GMT  
		Size: 57.5 MB (57457519 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c4ffcc46f7cdd865fd1da77be7e5e1ae404849c15875ca684e75d8e2d33b9c8`  
		Last Modified: Sat, 12 Sep 2026 00:11:35 GMT  
		Size: 324.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee778d752aff96f367302483b39dcb42e27f91127326d1092469b3cc347b99bf`  
		Last Modified: Sat, 12 Sep 2026 00:11:40 GMT  
		Size: 160.0 MB (159975330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a869fc9d82872e499c0486dc9183f2bba06dc62f4256a28386987a67a0dbcede`  
		Last Modified: Sat, 12 Sep 2026 00:11:36 GMT  
		Size: 5.2 KB (5223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26.7.0` - unknown; unknown

```console
$ docker pull mysql@sha256:f5ae1648f33608475f8fed10684539481530d00a78d1e8ee1c9bcba7d62b6ae5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17452701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd577f436e20fc0fd5dfb43e2cf6db31b416f4b4d1f45257bafe8d9b651aea6b`

```dockerfile
```

-	Layers:
	-	`sha256:4c01ad9af86a0393e864afc7fb0353f9c421c4172401fa5b9f3a04b8031a3f6d`  
		Last Modified: Sat, 12 Sep 2026 00:11:35 GMT  
		Size: 17.4 MB (17417403 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:afd4b55f41d0d8e5e82fab01597d834fed9d193f9ef139af6f015b8007e8abd2`  
		Last Modified: Sat, 12 Sep 2026 00:11:34 GMT  
		Size: 35.3 KB (35298 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:26.7.0` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:7216386511066db8765356adb24d46fa579b287ded143a77af4fd9e2152df699
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.7 MB (268717797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb7cb08eb1cf3d0be5c735a8ac3c14c1a09ad0495a61ff5923306344c85fb38e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 11 Sep 2026 23:26:27 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Fri, 11 Sep 2026 23:26:27 GMT
CMD ["/bin/bash"]
# Sat, 12 Sep 2026 00:08:24 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Sat, 12 Sep 2026 00:08:26 GMT
ENV GOSU_VERSION=1.19
# Sat, 12 Sep 2026 00:08:26 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 12 Sep 2026 00:09:02 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Sat, 12 Sep 2026 00:09:03 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Sat, 12 Sep 2026 00:09:03 GMT
ENV MYSQL_MAJOR=innovation
# Sat, 12 Sep 2026 00:09:03 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Sat, 12 Sep 2026 00:09:03 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Sat, 12 Sep 2026 00:09:43 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Sat, 12 Sep 2026 00:09:43 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Sat, 12 Sep 2026 00:09:43 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Sat, 12 Sep 2026 00:10:34 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Sat, 12 Sep 2026 00:10:34 GMT
VOLUME [/var/lib/mysql]
# Sat, 12 Sep 2026 00:10:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 12 Sep 2026 00:10:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 12 Sep 2026 00:10:34 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Sat, 12 Sep 2026 00:10:34 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:8e88a63a99d33b759690f9a9c14fa268d0d7021d7ba10b95738853eacfae654e`  
		Last Modified: Fri, 11 Sep 2026 23:26:38 GMT  
		Size: 46.5 MB (46478146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cc8b5218bdfc562fa40c1276e9ba629338fbbbda090bcff57511efe8aa1a243`  
		Last Modified: Sat, 12 Sep 2026 00:11:10 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82d5f282ab29fcf848cbb4926d2ef0a338b0ccb60b1c5e6ecf08419a0efad29d`  
		Last Modified: Sat, 12 Sep 2026 00:11:10 GMT  
		Size: 737.5 KB (737526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ac6ac725ff960e7ddde0be43e5cf1f51bb7630a3fa5e09e6bc13b835864d869`  
		Last Modified: Sat, 12 Sep 2026 00:11:10 GMT  
		Size: 5.8 MB (5817162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e280b918d4f60e62c0040b014f68b51a96ad8cbc1d553f5cb9355fe5316ace78`  
		Last Modified: Sat, 12 Sep 2026 00:11:10 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f66234aafb78805130cae704567fa6701d10737b8191276916356be0bee3ce01`  
		Last Modified: Sat, 12 Sep 2026 00:11:11 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69f2e6b0f4834feb6eafe70f63d52b0c2f8b16513ed57da3f51318991fd744cb`  
		Last Modified: Sat, 12 Sep 2026 00:11:13 GMT  
		Size: 57.4 MB (57433356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b53b600954c22f62c1d1948d65f2dc6c6205e3996aa6a21a47b081f3afd1ffee`  
		Last Modified: Sat, 12 Sep 2026 00:11:12 GMT  
		Size: 324.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5851225399d70447fd534f656c1781822138abf44f2a1e465a4670fd7fbcc5d2`  
		Last Modified: Sat, 12 Sep 2026 00:11:16 GMT  
		Size: 158.2 MB (158242225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:316e3ee0d8ced9ac3269c64cf2975b66e8583023a9f6aa301bb71fed2303b6e3`  
		Last Modified: Sat, 12 Sep 2026 00:11:13 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26.7.0` - unknown; unknown

```console
$ docker pull mysql@sha256:c4f7b3de5c98b29cb44ff98ef53edf09a17a24a2a0d5461025cb30b855c2fddb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17451515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:153c5bf9f7baebb3618540997454074002fe046831fd1a243729fea8cb4755dc`

```dockerfile
```

-	Layers:
	-	`sha256:8d649ba510f9dbd56c78a9856c9818711cb5976481cb6357f5c5b3c7a4130e8d`  
		Last Modified: Sat, 12 Sep 2026 00:11:11 GMT  
		Size: 17.4 MB (17415876 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:88ed07925d0565f6f1f684199700e6347b6702caec8e738a48d1339ce921f563`  
		Last Modified: Sat, 12 Sep 2026 00:11:10 GMT  
		Size: 35.6 KB (35639 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:26.7.0-oracle`

```console
$ docker pull mysql@sha256:45abdd9b4144660b5c93a5b7d0ebb21e024f0ba9851ecb4ab43bf83c6bf83592
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:26.7.0-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:e90497776da10a4700999242a58d779a86879225bb2d8544b4109272a4c288bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.4 MB (272350479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21ed0f5cc49429e295ee53a1c19e9726067987d14b4b29d6cd35599ad066c4eb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 11 Sep 2026 23:24:06 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Fri, 11 Sep 2026 23:24:06 GMT
CMD ["/bin/bash"]
# Sat, 12 Sep 2026 00:08:53 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Sat, 12 Sep 2026 00:08:54 GMT
ENV GOSU_VERSION=1.19
# Sat, 12 Sep 2026 00:08:54 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 12 Sep 2026 00:09:29 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Sat, 12 Sep 2026 00:09:30 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Sat, 12 Sep 2026 00:09:30 GMT
ENV MYSQL_MAJOR=innovation
# Sat, 12 Sep 2026 00:09:30 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Sat, 12 Sep 2026 00:09:30 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Sat, 12 Sep 2026 00:10:09 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Sat, 12 Sep 2026 00:10:09 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Sat, 12 Sep 2026 00:10:09 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Sat, 12 Sep 2026 00:10:57 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Sat, 12 Sep 2026 00:10:57 GMT
VOLUME [/var/lib/mysql]
# Sat, 12 Sep 2026 00:10:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 12 Sep 2026 00:10:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 12 Sep 2026 00:10:58 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Sat, 12 Sep 2026 00:10:58 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:13c85306055eb6ecca743420c9a29fec0936e01bea1df866947ecc554f9b7235`  
		Last Modified: Fri, 11 Sep 2026 23:24:17 GMT  
		Size: 47.9 MB (47931319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1efac44fb10451bb6c48afdee56aceb0234a31d09f9abff40b8a45d353e9f4eb`  
		Last Modified: Sat, 12 Sep 2026 00:11:34 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f1d011bdd777410d8f289763994559a9be153f5771ebc32de2675a37147dfaf`  
		Last Modified: Sat, 12 Sep 2026 00:11:34 GMT  
		Size: 783.5 KB (783541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d61b3579fc6ca050cd58791db7a9ccb99553a828bf58f458693b95b22bfe699c`  
		Last Modified: Sat, 12 Sep 2026 00:11:34 GMT  
		Size: 6.2 MB (6193394 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5703b6421969ea9aff5cd6360efecae6e51b136dfa07a82656251d48e31b622`  
		Last Modified: Sat, 12 Sep 2026 00:11:26 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24899866011650b17a308d6dbb0dec68226c20699b2a73c9fd4deb4444dd8b28`  
		Last Modified: Sat, 12 Sep 2026 00:11:34 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13707ba668372c347e859a0c18a470add82d4189cc26e7ed927f0c018e9ac25e`  
		Last Modified: Sat, 12 Sep 2026 00:11:37 GMT  
		Size: 57.5 MB (57457519 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c4ffcc46f7cdd865fd1da77be7e5e1ae404849c15875ca684e75d8e2d33b9c8`  
		Last Modified: Sat, 12 Sep 2026 00:11:35 GMT  
		Size: 324.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee778d752aff96f367302483b39dcb42e27f91127326d1092469b3cc347b99bf`  
		Last Modified: Sat, 12 Sep 2026 00:11:40 GMT  
		Size: 160.0 MB (159975330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a869fc9d82872e499c0486dc9183f2bba06dc62f4256a28386987a67a0dbcede`  
		Last Modified: Sat, 12 Sep 2026 00:11:36 GMT  
		Size: 5.2 KB (5223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26.7.0-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:f5ae1648f33608475f8fed10684539481530d00a78d1e8ee1c9bcba7d62b6ae5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17452701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd577f436e20fc0fd5dfb43e2cf6db31b416f4b4d1f45257bafe8d9b651aea6b`

```dockerfile
```

-	Layers:
	-	`sha256:4c01ad9af86a0393e864afc7fb0353f9c421c4172401fa5b9f3a04b8031a3f6d`  
		Last Modified: Sat, 12 Sep 2026 00:11:35 GMT  
		Size: 17.4 MB (17417403 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:afd4b55f41d0d8e5e82fab01597d834fed9d193f9ef139af6f015b8007e8abd2`  
		Last Modified: Sat, 12 Sep 2026 00:11:34 GMT  
		Size: 35.3 KB (35298 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:26.7.0-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:7216386511066db8765356adb24d46fa579b287ded143a77af4fd9e2152df699
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.7 MB (268717797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb7cb08eb1cf3d0be5c735a8ac3c14c1a09ad0495a61ff5923306344c85fb38e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 11 Sep 2026 23:26:27 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Fri, 11 Sep 2026 23:26:27 GMT
CMD ["/bin/bash"]
# Sat, 12 Sep 2026 00:08:24 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Sat, 12 Sep 2026 00:08:26 GMT
ENV GOSU_VERSION=1.19
# Sat, 12 Sep 2026 00:08:26 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 12 Sep 2026 00:09:02 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Sat, 12 Sep 2026 00:09:03 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Sat, 12 Sep 2026 00:09:03 GMT
ENV MYSQL_MAJOR=innovation
# Sat, 12 Sep 2026 00:09:03 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Sat, 12 Sep 2026 00:09:03 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Sat, 12 Sep 2026 00:09:43 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Sat, 12 Sep 2026 00:09:43 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Sat, 12 Sep 2026 00:09:43 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Sat, 12 Sep 2026 00:10:34 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Sat, 12 Sep 2026 00:10:34 GMT
VOLUME [/var/lib/mysql]
# Sat, 12 Sep 2026 00:10:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 12 Sep 2026 00:10:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 12 Sep 2026 00:10:34 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Sat, 12 Sep 2026 00:10:34 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:8e88a63a99d33b759690f9a9c14fa268d0d7021d7ba10b95738853eacfae654e`  
		Last Modified: Fri, 11 Sep 2026 23:26:38 GMT  
		Size: 46.5 MB (46478146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cc8b5218bdfc562fa40c1276e9ba629338fbbbda090bcff57511efe8aa1a243`  
		Last Modified: Sat, 12 Sep 2026 00:11:10 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82d5f282ab29fcf848cbb4926d2ef0a338b0ccb60b1c5e6ecf08419a0efad29d`  
		Last Modified: Sat, 12 Sep 2026 00:11:10 GMT  
		Size: 737.5 KB (737526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ac6ac725ff960e7ddde0be43e5cf1f51bb7630a3fa5e09e6bc13b835864d869`  
		Last Modified: Sat, 12 Sep 2026 00:11:10 GMT  
		Size: 5.8 MB (5817162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e280b918d4f60e62c0040b014f68b51a96ad8cbc1d553f5cb9355fe5316ace78`  
		Last Modified: Sat, 12 Sep 2026 00:11:10 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f66234aafb78805130cae704567fa6701d10737b8191276916356be0bee3ce01`  
		Last Modified: Sat, 12 Sep 2026 00:11:11 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69f2e6b0f4834feb6eafe70f63d52b0c2f8b16513ed57da3f51318991fd744cb`  
		Last Modified: Sat, 12 Sep 2026 00:11:13 GMT  
		Size: 57.4 MB (57433356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b53b600954c22f62c1d1948d65f2dc6c6205e3996aa6a21a47b081f3afd1ffee`  
		Last Modified: Sat, 12 Sep 2026 00:11:12 GMT  
		Size: 324.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5851225399d70447fd534f656c1781822138abf44f2a1e465a4670fd7fbcc5d2`  
		Last Modified: Sat, 12 Sep 2026 00:11:16 GMT  
		Size: 158.2 MB (158242225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:316e3ee0d8ced9ac3269c64cf2975b66e8583023a9f6aa301bb71fed2303b6e3`  
		Last Modified: Sat, 12 Sep 2026 00:11:13 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26.7.0-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:c4f7b3de5c98b29cb44ff98ef53edf09a17a24a2a0d5461025cb30b855c2fddb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17451515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:153c5bf9f7baebb3618540997454074002fe046831fd1a243729fea8cb4755dc`

```dockerfile
```

-	Layers:
	-	`sha256:8d649ba510f9dbd56c78a9856c9818711cb5976481cb6357f5c5b3c7a4130e8d`  
		Last Modified: Sat, 12 Sep 2026 00:11:11 GMT  
		Size: 17.4 MB (17415876 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:88ed07925d0565f6f1f684199700e6347b6702caec8e738a48d1339ce921f563`  
		Last Modified: Sat, 12 Sep 2026 00:11:10 GMT  
		Size: 35.6 KB (35639 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:26.7.0-oraclelinux9`

```console
$ docker pull mysql@sha256:45abdd9b4144660b5c93a5b7d0ebb21e024f0ba9851ecb4ab43bf83c6bf83592
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:26.7.0-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:e90497776da10a4700999242a58d779a86879225bb2d8544b4109272a4c288bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.4 MB (272350479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21ed0f5cc49429e295ee53a1c19e9726067987d14b4b29d6cd35599ad066c4eb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 11 Sep 2026 23:24:06 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Fri, 11 Sep 2026 23:24:06 GMT
CMD ["/bin/bash"]
# Sat, 12 Sep 2026 00:08:53 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Sat, 12 Sep 2026 00:08:54 GMT
ENV GOSU_VERSION=1.19
# Sat, 12 Sep 2026 00:08:54 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 12 Sep 2026 00:09:29 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Sat, 12 Sep 2026 00:09:30 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Sat, 12 Sep 2026 00:09:30 GMT
ENV MYSQL_MAJOR=innovation
# Sat, 12 Sep 2026 00:09:30 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Sat, 12 Sep 2026 00:09:30 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Sat, 12 Sep 2026 00:10:09 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Sat, 12 Sep 2026 00:10:09 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Sat, 12 Sep 2026 00:10:09 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Sat, 12 Sep 2026 00:10:57 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Sat, 12 Sep 2026 00:10:57 GMT
VOLUME [/var/lib/mysql]
# Sat, 12 Sep 2026 00:10:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 12 Sep 2026 00:10:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 12 Sep 2026 00:10:58 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Sat, 12 Sep 2026 00:10:58 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:13c85306055eb6ecca743420c9a29fec0936e01bea1df866947ecc554f9b7235`  
		Last Modified: Fri, 11 Sep 2026 23:24:17 GMT  
		Size: 47.9 MB (47931319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1efac44fb10451bb6c48afdee56aceb0234a31d09f9abff40b8a45d353e9f4eb`  
		Last Modified: Sat, 12 Sep 2026 00:11:34 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f1d011bdd777410d8f289763994559a9be153f5771ebc32de2675a37147dfaf`  
		Last Modified: Sat, 12 Sep 2026 00:11:34 GMT  
		Size: 783.5 KB (783541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d61b3579fc6ca050cd58791db7a9ccb99553a828bf58f458693b95b22bfe699c`  
		Last Modified: Sat, 12 Sep 2026 00:11:34 GMT  
		Size: 6.2 MB (6193394 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5703b6421969ea9aff5cd6360efecae6e51b136dfa07a82656251d48e31b622`  
		Last Modified: Sat, 12 Sep 2026 00:11:26 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24899866011650b17a308d6dbb0dec68226c20699b2a73c9fd4deb4444dd8b28`  
		Last Modified: Sat, 12 Sep 2026 00:11:34 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13707ba668372c347e859a0c18a470add82d4189cc26e7ed927f0c018e9ac25e`  
		Last Modified: Sat, 12 Sep 2026 00:11:37 GMT  
		Size: 57.5 MB (57457519 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c4ffcc46f7cdd865fd1da77be7e5e1ae404849c15875ca684e75d8e2d33b9c8`  
		Last Modified: Sat, 12 Sep 2026 00:11:35 GMT  
		Size: 324.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee778d752aff96f367302483b39dcb42e27f91127326d1092469b3cc347b99bf`  
		Last Modified: Sat, 12 Sep 2026 00:11:40 GMT  
		Size: 160.0 MB (159975330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a869fc9d82872e499c0486dc9183f2bba06dc62f4256a28386987a67a0dbcede`  
		Last Modified: Sat, 12 Sep 2026 00:11:36 GMT  
		Size: 5.2 KB (5223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26.7.0-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:f5ae1648f33608475f8fed10684539481530d00a78d1e8ee1c9bcba7d62b6ae5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17452701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd577f436e20fc0fd5dfb43e2cf6db31b416f4b4d1f45257bafe8d9b651aea6b`

```dockerfile
```

-	Layers:
	-	`sha256:4c01ad9af86a0393e864afc7fb0353f9c421c4172401fa5b9f3a04b8031a3f6d`  
		Last Modified: Sat, 12 Sep 2026 00:11:35 GMT  
		Size: 17.4 MB (17417403 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:afd4b55f41d0d8e5e82fab01597d834fed9d193f9ef139af6f015b8007e8abd2`  
		Last Modified: Sat, 12 Sep 2026 00:11:34 GMT  
		Size: 35.3 KB (35298 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:26.7.0-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:7216386511066db8765356adb24d46fa579b287ded143a77af4fd9e2152df699
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.7 MB (268717797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb7cb08eb1cf3d0be5c735a8ac3c14c1a09ad0495a61ff5923306344c85fb38e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 11 Sep 2026 23:26:27 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Fri, 11 Sep 2026 23:26:27 GMT
CMD ["/bin/bash"]
# Sat, 12 Sep 2026 00:08:24 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Sat, 12 Sep 2026 00:08:26 GMT
ENV GOSU_VERSION=1.19
# Sat, 12 Sep 2026 00:08:26 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 12 Sep 2026 00:09:02 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Sat, 12 Sep 2026 00:09:03 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Sat, 12 Sep 2026 00:09:03 GMT
ENV MYSQL_MAJOR=innovation
# Sat, 12 Sep 2026 00:09:03 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Sat, 12 Sep 2026 00:09:03 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Sat, 12 Sep 2026 00:09:43 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Sat, 12 Sep 2026 00:09:43 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Sat, 12 Sep 2026 00:09:43 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Sat, 12 Sep 2026 00:10:34 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Sat, 12 Sep 2026 00:10:34 GMT
VOLUME [/var/lib/mysql]
# Sat, 12 Sep 2026 00:10:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 12 Sep 2026 00:10:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 12 Sep 2026 00:10:34 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Sat, 12 Sep 2026 00:10:34 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:8e88a63a99d33b759690f9a9c14fa268d0d7021d7ba10b95738853eacfae654e`  
		Last Modified: Fri, 11 Sep 2026 23:26:38 GMT  
		Size: 46.5 MB (46478146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cc8b5218bdfc562fa40c1276e9ba629338fbbbda090bcff57511efe8aa1a243`  
		Last Modified: Sat, 12 Sep 2026 00:11:10 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82d5f282ab29fcf848cbb4926d2ef0a338b0ccb60b1c5e6ecf08419a0efad29d`  
		Last Modified: Sat, 12 Sep 2026 00:11:10 GMT  
		Size: 737.5 KB (737526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ac6ac725ff960e7ddde0be43e5cf1f51bb7630a3fa5e09e6bc13b835864d869`  
		Last Modified: Sat, 12 Sep 2026 00:11:10 GMT  
		Size: 5.8 MB (5817162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e280b918d4f60e62c0040b014f68b51a96ad8cbc1d553f5cb9355fe5316ace78`  
		Last Modified: Sat, 12 Sep 2026 00:11:10 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f66234aafb78805130cae704567fa6701d10737b8191276916356be0bee3ce01`  
		Last Modified: Sat, 12 Sep 2026 00:11:11 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69f2e6b0f4834feb6eafe70f63d52b0c2f8b16513ed57da3f51318991fd744cb`  
		Last Modified: Sat, 12 Sep 2026 00:11:13 GMT  
		Size: 57.4 MB (57433356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b53b600954c22f62c1d1948d65f2dc6c6205e3996aa6a21a47b081f3afd1ffee`  
		Last Modified: Sat, 12 Sep 2026 00:11:12 GMT  
		Size: 324.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5851225399d70447fd534f656c1781822138abf44f2a1e465a4670fd7fbcc5d2`  
		Last Modified: Sat, 12 Sep 2026 00:11:16 GMT  
		Size: 158.2 MB (158242225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:316e3ee0d8ced9ac3269c64cf2975b66e8583023a9f6aa301bb71fed2303b6e3`  
		Last Modified: Sat, 12 Sep 2026 00:11:13 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26.7.0-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:c4f7b3de5c98b29cb44ff98ef53edf09a17a24a2a0d5461025cb30b855c2fddb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17451515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:153c5bf9f7baebb3618540997454074002fe046831fd1a243729fea8cb4755dc`

```dockerfile
```

-	Layers:
	-	`sha256:8d649ba510f9dbd56c78a9856c9818711cb5976481cb6357f5c5b3c7a4130e8d`  
		Last Modified: Sat, 12 Sep 2026 00:11:11 GMT  
		Size: 17.4 MB (17415876 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:88ed07925d0565f6f1f684199700e6347b6702caec8e738a48d1339ce921f563`  
		Last Modified: Sat, 12 Sep 2026 00:11:10 GMT  
		Size: 35.6 KB (35639 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:8`

```console
$ docker pull mysql@sha256:85b9bf2e29cf836ecb8c2a15a935d4ba0c606631dff1dd79531a11983c638f2a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8` - linux; amd64

```console
$ docker pull mysql@sha256:8c19b656bb381f163750b238852bd377ba5764e1ec30cdd3f02e55cf8e2f89b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.0 MB (238986928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c07d11b694dcc7e2ef3de845075eca1a8b39868f85f519f938b54c432edc1cb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 11 Sep 2026 23:24:06 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Fri, 11 Sep 2026 23:24:06 GMT
CMD ["/bin/bash"]
# Sat, 12 Sep 2026 00:08:53 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Sat, 12 Sep 2026 00:08:55 GMT
ENV GOSU_VERSION=1.19
# Sat, 12 Sep 2026 00:08:55 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 12 Sep 2026 00:09:30 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Sat, 12 Sep 2026 00:09:31 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Sat, 12 Sep 2026 00:09:31 GMT
ENV MYSQL_MAJOR=8.4
# Sat, 12 Sep 2026 00:09:31 GMT
ENV MYSQL_VERSION=8.4.11-1.el9
# Sat, 12 Sep 2026 00:09:31 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Sat, 12 Sep 2026 00:10:09 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Sat, 12 Sep 2026 00:10:09 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Sat, 12 Sep 2026 00:10:09 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Sat, 12 Sep 2026 00:10:55 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Sat, 12 Sep 2026 00:10:55 GMT
VOLUME [/var/lib/mysql]
# Sat, 12 Sep 2026 00:10:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 12 Sep 2026 00:10:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 12 Sep 2026 00:10:55 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Sat, 12 Sep 2026 00:10:55 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:13c85306055eb6ecca743420c9a29fec0936e01bea1df866947ecc554f9b7235`  
		Last Modified: Fri, 11 Sep 2026 23:24:17 GMT  
		Size: 47.9 MB (47931319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62f909f48b33b5a40d7f2ab172ceb183d7faa36ac3dfb869380daed9e70483ea`  
		Last Modified: Sat, 12 Sep 2026 00:11:26 GMT  
		Size: 882.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70d659eb9b5326feec6dacf803358daae895eb09b245f6d26796a84e11b1e9b8`  
		Last Modified: Sat, 12 Sep 2026 00:11:26 GMT  
		Size: 783.6 KB (783555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c507b2b0af45fc6806e5c3606ae1dc22b64a69523f156bd593915a8350c7091`  
		Last Modified: Sat, 12 Sep 2026 00:11:27 GMT  
		Size: 6.2 MB (6193401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5703b6421969ea9aff5cd6360efecae6e51b136dfa07a82656251d48e31b622`  
		Last Modified: Sat, 12 Sep 2026 00:11:26 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35c18fec455d7a8794345d50f29444ac5966054f9740155e018e174d2bae9477`  
		Last Modified: Sat, 12 Sep 2026 00:11:27 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec3187676fa6d9c45c98cb6decb229921c7d07d165cc1d4d0dae60b1605fd1b6`  
		Last Modified: Sat, 12 Sep 2026 00:11:29 GMT  
		Size: 51.6 MB (51637258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a2df1f368eb7f6802e3d1b729fc92edfa39d88566c277762f5d4273b3dd4016`  
		Last Modified: Sat, 12 Sep 2026 00:11:28 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1ff04460a2370477b5e3d72c37c35db66f2bb8663cb44ad9c16c86d49b7819b`  
		Last Modified: Sat, 12 Sep 2026 00:11:32 GMT  
		Size: 132.4 MB (132432030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:052c01bf8f0e2f34730c39539679425d5b233357dbbd7ba52f402db7aca17926`  
		Last Modified: Sat, 12 Sep 2026 00:11:29 GMT  
		Size: 5.2 KB (5224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8` - unknown; unknown

```console
$ docker pull mysql@sha256:bb393320aa6339b06e3781af2dec534ad3d0ddad0a68e5fe7588da28c862ff46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15745226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:799e2dbb928e0c62a9f057cf31aca821e5b9dee0bc39913bed81e13e8002ae93`

```dockerfile
```

-	Layers:
	-	`sha256:1e46095c5b6f55a62c96746f0fae66231506a3b89d6872e724e547dac7a6838a`  
		Last Modified: Sat, 12 Sep 2026 00:11:27 GMT  
		Size: 15.7 MB (15711914 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:af464d8ae8d251c674638348d3aba0322d854d67d0df05a98ccd2ae614d20b2d`  
		Last Modified: Sat, 12 Sep 2026 00:11:26 GMT  
		Size: 33.3 KB (33312 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:eef35351206a4b4c03c1f57deb64c27bee324929df9f031d16b0a3a51631eb4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.7 MB (233686723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bf26b4f970bb41a6945a8eda3b68654fbe424529a30b005c64879514e4ead87`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 11 Sep 2026 23:26:27 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Fri, 11 Sep 2026 23:26:27 GMT
CMD ["/bin/bash"]
# Sat, 12 Sep 2026 00:08:54 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Sat, 12 Sep 2026 00:08:56 GMT
ENV GOSU_VERSION=1.19
# Sat, 12 Sep 2026 00:08:56 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 12 Sep 2026 00:09:34 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Sat, 12 Sep 2026 00:09:35 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Sat, 12 Sep 2026 00:09:35 GMT
ENV MYSQL_MAJOR=8.4
# Sat, 12 Sep 2026 00:09:35 GMT
ENV MYSQL_VERSION=8.4.11-1.el9
# Sat, 12 Sep 2026 00:09:35 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Sat, 12 Sep 2026 00:10:15 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Sat, 12 Sep 2026 00:10:15 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Sat, 12 Sep 2026 00:10:15 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Sat, 12 Sep 2026 00:11:03 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Sat, 12 Sep 2026 00:11:03 GMT
VOLUME [/var/lib/mysql]
# Sat, 12 Sep 2026 00:11:03 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 12 Sep 2026 00:11:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 12 Sep 2026 00:11:03 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Sat, 12 Sep 2026 00:11:03 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:8e88a63a99d33b759690f9a9c14fa268d0d7021d7ba10b95738853eacfae654e`  
		Last Modified: Fri, 11 Sep 2026 23:26:38 GMT  
		Size: 46.5 MB (46478146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ada0979502f8f7abd85ba0435fcb7067b05550bff6128e4134073acd163ac05b`  
		Last Modified: Sat, 12 Sep 2026 00:11:35 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d54abfbd047a20046ecee67605c81c7e818d6b7419167f3fa38357ca2225cc9`  
		Last Modified: Sat, 12 Sep 2026 00:11:35 GMT  
		Size: 737.5 KB (737527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c05685e96e736db586e0fd86a8cca674e2cee903db54a1cab0b0814e4f5d2116`  
		Last Modified: Sat, 12 Sep 2026 00:11:35 GMT  
		Size: 5.8 MB (5817124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e243dd5082eb157c52bb9e2439a1c8802c68ed4a7566049be2bd3b0035a4ceef`  
		Last Modified: Sat, 12 Sep 2026 00:11:35 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84053a51c7abd93a3aed649dd39d2fd06a4e225b027a15414d8fd7e83cfde2c9`  
		Last Modified: Sat, 12 Sep 2026 00:11:36 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:323967c89d8b6b2146a19fcf6791bb3e0885148b316aae97aba79728a112d8d0`  
		Last Modified: Sat, 12 Sep 2026 00:11:38 GMT  
		Size: 49.9 MB (49858632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d27ff5c3f2f34021f385ea0b424aae2febcd328520c5b35dd781191d2740855d`  
		Last Modified: Sat, 12 Sep 2026 00:11:36 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2804363ed73f49ad2935b157382ee1fef64de320c5b7a3a430a264fcdfa5202f`  
		Last Modified: Sat, 12 Sep 2026 00:11:40 GMT  
		Size: 130.8 MB (130785927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85f8245d16bca5e7c058ceebbc03a55a63ad2a93af64f7a8779aa434193565e9`  
		Last Modified: Sat, 12 Sep 2026 00:11:37 GMT  
		Size: 5.2 KB (5223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8` - unknown; unknown

```console
$ docker pull mysql@sha256:ad108e2ce2a94a64f1a5e0ab10c094af0d01f8cd5fdfeb8b1b935791373a3d45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15743896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3619db5cba95d342fd27af89656cbca55ba93e79b7404c13f01f06e03f15762`

```dockerfile
```

-	Layers:
	-	`sha256:b7a50f323dbc42b9f4b9d96a60d3bbda853929e6a4b69257acd341bfd7227878`  
		Last Modified: Sat, 12 Sep 2026 00:11:35 GMT  
		Size: 15.7 MB (15710314 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:afd5c48d0a16fb41ed4e5a2104d06b96b2fab2f696af39f483cfc423e2377dfc`  
		Last Modified: Sat, 12 Sep 2026 00:11:35 GMT  
		Size: 33.6 KB (33582 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:8-oracle`

```console
$ docker pull mysql@sha256:85b9bf2e29cf836ecb8c2a15a935d4ba0c606631dff1dd79531a11983c638f2a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:8c19b656bb381f163750b238852bd377ba5764e1ec30cdd3f02e55cf8e2f89b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.0 MB (238986928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c07d11b694dcc7e2ef3de845075eca1a8b39868f85f519f938b54c432edc1cb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 11 Sep 2026 23:24:06 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Fri, 11 Sep 2026 23:24:06 GMT
CMD ["/bin/bash"]
# Sat, 12 Sep 2026 00:08:53 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Sat, 12 Sep 2026 00:08:55 GMT
ENV GOSU_VERSION=1.19
# Sat, 12 Sep 2026 00:08:55 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 12 Sep 2026 00:09:30 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Sat, 12 Sep 2026 00:09:31 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Sat, 12 Sep 2026 00:09:31 GMT
ENV MYSQL_MAJOR=8.4
# Sat, 12 Sep 2026 00:09:31 GMT
ENV MYSQL_VERSION=8.4.11-1.el9
# Sat, 12 Sep 2026 00:09:31 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Sat, 12 Sep 2026 00:10:09 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Sat, 12 Sep 2026 00:10:09 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Sat, 12 Sep 2026 00:10:09 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Sat, 12 Sep 2026 00:10:55 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Sat, 12 Sep 2026 00:10:55 GMT
VOLUME [/var/lib/mysql]
# Sat, 12 Sep 2026 00:10:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 12 Sep 2026 00:10:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 12 Sep 2026 00:10:55 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Sat, 12 Sep 2026 00:10:55 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:13c85306055eb6ecca743420c9a29fec0936e01bea1df866947ecc554f9b7235`  
		Last Modified: Fri, 11 Sep 2026 23:24:17 GMT  
		Size: 47.9 MB (47931319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62f909f48b33b5a40d7f2ab172ceb183d7faa36ac3dfb869380daed9e70483ea`  
		Last Modified: Sat, 12 Sep 2026 00:11:26 GMT  
		Size: 882.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70d659eb9b5326feec6dacf803358daae895eb09b245f6d26796a84e11b1e9b8`  
		Last Modified: Sat, 12 Sep 2026 00:11:26 GMT  
		Size: 783.6 KB (783555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c507b2b0af45fc6806e5c3606ae1dc22b64a69523f156bd593915a8350c7091`  
		Last Modified: Sat, 12 Sep 2026 00:11:27 GMT  
		Size: 6.2 MB (6193401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5703b6421969ea9aff5cd6360efecae6e51b136dfa07a82656251d48e31b622`  
		Last Modified: Sat, 12 Sep 2026 00:11:26 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35c18fec455d7a8794345d50f29444ac5966054f9740155e018e174d2bae9477`  
		Last Modified: Sat, 12 Sep 2026 00:11:27 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec3187676fa6d9c45c98cb6decb229921c7d07d165cc1d4d0dae60b1605fd1b6`  
		Last Modified: Sat, 12 Sep 2026 00:11:29 GMT  
		Size: 51.6 MB (51637258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a2df1f368eb7f6802e3d1b729fc92edfa39d88566c277762f5d4273b3dd4016`  
		Last Modified: Sat, 12 Sep 2026 00:11:28 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1ff04460a2370477b5e3d72c37c35db66f2bb8663cb44ad9c16c86d49b7819b`  
		Last Modified: Sat, 12 Sep 2026 00:11:32 GMT  
		Size: 132.4 MB (132432030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:052c01bf8f0e2f34730c39539679425d5b233357dbbd7ba52f402db7aca17926`  
		Last Modified: Sat, 12 Sep 2026 00:11:29 GMT  
		Size: 5.2 KB (5224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:bb393320aa6339b06e3781af2dec534ad3d0ddad0a68e5fe7588da28c862ff46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15745226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:799e2dbb928e0c62a9f057cf31aca821e5b9dee0bc39913bed81e13e8002ae93`

```dockerfile
```

-	Layers:
	-	`sha256:1e46095c5b6f55a62c96746f0fae66231506a3b89d6872e724e547dac7a6838a`  
		Last Modified: Sat, 12 Sep 2026 00:11:27 GMT  
		Size: 15.7 MB (15711914 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:af464d8ae8d251c674638348d3aba0322d854d67d0df05a98ccd2ae614d20b2d`  
		Last Modified: Sat, 12 Sep 2026 00:11:26 GMT  
		Size: 33.3 KB (33312 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:eef35351206a4b4c03c1f57deb64c27bee324929df9f031d16b0a3a51631eb4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.7 MB (233686723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bf26b4f970bb41a6945a8eda3b68654fbe424529a30b005c64879514e4ead87`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 11 Sep 2026 23:26:27 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Fri, 11 Sep 2026 23:26:27 GMT
CMD ["/bin/bash"]
# Sat, 12 Sep 2026 00:08:54 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Sat, 12 Sep 2026 00:08:56 GMT
ENV GOSU_VERSION=1.19
# Sat, 12 Sep 2026 00:08:56 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 12 Sep 2026 00:09:34 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Sat, 12 Sep 2026 00:09:35 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Sat, 12 Sep 2026 00:09:35 GMT
ENV MYSQL_MAJOR=8.4
# Sat, 12 Sep 2026 00:09:35 GMT
ENV MYSQL_VERSION=8.4.11-1.el9
# Sat, 12 Sep 2026 00:09:35 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Sat, 12 Sep 2026 00:10:15 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Sat, 12 Sep 2026 00:10:15 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Sat, 12 Sep 2026 00:10:15 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Sat, 12 Sep 2026 00:11:03 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Sat, 12 Sep 2026 00:11:03 GMT
VOLUME [/var/lib/mysql]
# Sat, 12 Sep 2026 00:11:03 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 12 Sep 2026 00:11:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 12 Sep 2026 00:11:03 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Sat, 12 Sep 2026 00:11:03 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:8e88a63a99d33b759690f9a9c14fa268d0d7021d7ba10b95738853eacfae654e`  
		Last Modified: Fri, 11 Sep 2026 23:26:38 GMT  
		Size: 46.5 MB (46478146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ada0979502f8f7abd85ba0435fcb7067b05550bff6128e4134073acd163ac05b`  
		Last Modified: Sat, 12 Sep 2026 00:11:35 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d54abfbd047a20046ecee67605c81c7e818d6b7419167f3fa38357ca2225cc9`  
		Last Modified: Sat, 12 Sep 2026 00:11:35 GMT  
		Size: 737.5 KB (737527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c05685e96e736db586e0fd86a8cca674e2cee903db54a1cab0b0814e4f5d2116`  
		Last Modified: Sat, 12 Sep 2026 00:11:35 GMT  
		Size: 5.8 MB (5817124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e243dd5082eb157c52bb9e2439a1c8802c68ed4a7566049be2bd3b0035a4ceef`  
		Last Modified: Sat, 12 Sep 2026 00:11:35 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84053a51c7abd93a3aed649dd39d2fd06a4e225b027a15414d8fd7e83cfde2c9`  
		Last Modified: Sat, 12 Sep 2026 00:11:36 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:323967c89d8b6b2146a19fcf6791bb3e0885148b316aae97aba79728a112d8d0`  
		Last Modified: Sat, 12 Sep 2026 00:11:38 GMT  
		Size: 49.9 MB (49858632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d27ff5c3f2f34021f385ea0b424aae2febcd328520c5b35dd781191d2740855d`  
		Last Modified: Sat, 12 Sep 2026 00:11:36 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2804363ed73f49ad2935b157382ee1fef64de320c5b7a3a430a264fcdfa5202f`  
		Last Modified: Sat, 12 Sep 2026 00:11:40 GMT  
		Size: 130.8 MB (130785927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85f8245d16bca5e7c058ceebbc03a55a63ad2a93af64f7a8779aa434193565e9`  
		Last Modified: Sat, 12 Sep 2026 00:11:37 GMT  
		Size: 5.2 KB (5223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:ad108e2ce2a94a64f1a5e0ab10c094af0d01f8cd5fdfeb8b1b935791373a3d45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15743896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3619db5cba95d342fd27af89656cbca55ba93e79b7404c13f01f06e03f15762`

```dockerfile
```

-	Layers:
	-	`sha256:b7a50f323dbc42b9f4b9d96a60d3bbda853929e6a4b69257acd341bfd7227878`  
		Last Modified: Sat, 12 Sep 2026 00:11:35 GMT  
		Size: 15.7 MB (15710314 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:afd5c48d0a16fb41ed4e5a2104d06b96b2fab2f696af39f483cfc423e2377dfc`  
		Last Modified: Sat, 12 Sep 2026 00:11:35 GMT  
		Size: 33.6 KB (33582 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:8-oraclelinux9`

```console
$ docker pull mysql@sha256:85b9bf2e29cf836ecb8c2a15a935d4ba0c606631dff1dd79531a11983c638f2a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:8c19b656bb381f163750b238852bd377ba5764e1ec30cdd3f02e55cf8e2f89b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.0 MB (238986928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c07d11b694dcc7e2ef3de845075eca1a8b39868f85f519f938b54c432edc1cb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 11 Sep 2026 23:24:06 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Fri, 11 Sep 2026 23:24:06 GMT
CMD ["/bin/bash"]
# Sat, 12 Sep 2026 00:08:53 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Sat, 12 Sep 2026 00:08:55 GMT
ENV GOSU_VERSION=1.19
# Sat, 12 Sep 2026 00:08:55 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 12 Sep 2026 00:09:30 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Sat, 12 Sep 2026 00:09:31 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Sat, 12 Sep 2026 00:09:31 GMT
ENV MYSQL_MAJOR=8.4
# Sat, 12 Sep 2026 00:09:31 GMT
ENV MYSQL_VERSION=8.4.11-1.el9
# Sat, 12 Sep 2026 00:09:31 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Sat, 12 Sep 2026 00:10:09 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Sat, 12 Sep 2026 00:10:09 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Sat, 12 Sep 2026 00:10:09 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Sat, 12 Sep 2026 00:10:55 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Sat, 12 Sep 2026 00:10:55 GMT
VOLUME [/var/lib/mysql]
# Sat, 12 Sep 2026 00:10:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 12 Sep 2026 00:10:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 12 Sep 2026 00:10:55 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Sat, 12 Sep 2026 00:10:55 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:13c85306055eb6ecca743420c9a29fec0936e01bea1df866947ecc554f9b7235`  
		Last Modified: Fri, 11 Sep 2026 23:24:17 GMT  
		Size: 47.9 MB (47931319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62f909f48b33b5a40d7f2ab172ceb183d7faa36ac3dfb869380daed9e70483ea`  
		Last Modified: Sat, 12 Sep 2026 00:11:26 GMT  
		Size: 882.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70d659eb9b5326feec6dacf803358daae895eb09b245f6d26796a84e11b1e9b8`  
		Last Modified: Sat, 12 Sep 2026 00:11:26 GMT  
		Size: 783.6 KB (783555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c507b2b0af45fc6806e5c3606ae1dc22b64a69523f156bd593915a8350c7091`  
		Last Modified: Sat, 12 Sep 2026 00:11:27 GMT  
		Size: 6.2 MB (6193401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5703b6421969ea9aff5cd6360efecae6e51b136dfa07a82656251d48e31b622`  
		Last Modified: Sat, 12 Sep 2026 00:11:26 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35c18fec455d7a8794345d50f29444ac5966054f9740155e018e174d2bae9477`  
		Last Modified: Sat, 12 Sep 2026 00:11:27 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec3187676fa6d9c45c98cb6decb229921c7d07d165cc1d4d0dae60b1605fd1b6`  
		Last Modified: Sat, 12 Sep 2026 00:11:29 GMT  
		Size: 51.6 MB (51637258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a2df1f368eb7f6802e3d1b729fc92edfa39d88566c277762f5d4273b3dd4016`  
		Last Modified: Sat, 12 Sep 2026 00:11:28 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1ff04460a2370477b5e3d72c37c35db66f2bb8663cb44ad9c16c86d49b7819b`  
		Last Modified: Sat, 12 Sep 2026 00:11:32 GMT  
		Size: 132.4 MB (132432030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:052c01bf8f0e2f34730c39539679425d5b233357dbbd7ba52f402db7aca17926`  
		Last Modified: Sat, 12 Sep 2026 00:11:29 GMT  
		Size: 5.2 KB (5224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:bb393320aa6339b06e3781af2dec534ad3d0ddad0a68e5fe7588da28c862ff46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15745226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:799e2dbb928e0c62a9f057cf31aca821e5b9dee0bc39913bed81e13e8002ae93`

```dockerfile
```

-	Layers:
	-	`sha256:1e46095c5b6f55a62c96746f0fae66231506a3b89d6872e724e547dac7a6838a`  
		Last Modified: Sat, 12 Sep 2026 00:11:27 GMT  
		Size: 15.7 MB (15711914 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:af464d8ae8d251c674638348d3aba0322d854d67d0df05a98ccd2ae614d20b2d`  
		Last Modified: Sat, 12 Sep 2026 00:11:26 GMT  
		Size: 33.3 KB (33312 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:eef35351206a4b4c03c1f57deb64c27bee324929df9f031d16b0a3a51631eb4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.7 MB (233686723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bf26b4f970bb41a6945a8eda3b68654fbe424529a30b005c64879514e4ead87`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 11 Sep 2026 23:26:27 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Fri, 11 Sep 2026 23:26:27 GMT
CMD ["/bin/bash"]
# Sat, 12 Sep 2026 00:08:54 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Sat, 12 Sep 2026 00:08:56 GMT
ENV GOSU_VERSION=1.19
# Sat, 12 Sep 2026 00:08:56 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 12 Sep 2026 00:09:34 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Sat, 12 Sep 2026 00:09:35 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Sat, 12 Sep 2026 00:09:35 GMT
ENV MYSQL_MAJOR=8.4
# Sat, 12 Sep 2026 00:09:35 GMT
ENV MYSQL_VERSION=8.4.11-1.el9
# Sat, 12 Sep 2026 00:09:35 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Sat, 12 Sep 2026 00:10:15 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Sat, 12 Sep 2026 00:10:15 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Sat, 12 Sep 2026 00:10:15 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Sat, 12 Sep 2026 00:11:03 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Sat, 12 Sep 2026 00:11:03 GMT
VOLUME [/var/lib/mysql]
# Sat, 12 Sep 2026 00:11:03 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 12 Sep 2026 00:11:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 12 Sep 2026 00:11:03 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Sat, 12 Sep 2026 00:11:03 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:8e88a63a99d33b759690f9a9c14fa268d0d7021d7ba10b95738853eacfae654e`  
		Last Modified: Fri, 11 Sep 2026 23:26:38 GMT  
		Size: 46.5 MB (46478146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ada0979502f8f7abd85ba0435fcb7067b05550bff6128e4134073acd163ac05b`  
		Last Modified: Sat, 12 Sep 2026 00:11:35 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d54abfbd047a20046ecee67605c81c7e818d6b7419167f3fa38357ca2225cc9`  
		Last Modified: Sat, 12 Sep 2026 00:11:35 GMT  
		Size: 737.5 KB (737527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c05685e96e736db586e0fd86a8cca674e2cee903db54a1cab0b0814e4f5d2116`  
		Last Modified: Sat, 12 Sep 2026 00:11:35 GMT  
		Size: 5.8 MB (5817124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e243dd5082eb157c52bb9e2439a1c8802c68ed4a7566049be2bd3b0035a4ceef`  
		Last Modified: Sat, 12 Sep 2026 00:11:35 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84053a51c7abd93a3aed649dd39d2fd06a4e225b027a15414d8fd7e83cfde2c9`  
		Last Modified: Sat, 12 Sep 2026 00:11:36 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:323967c89d8b6b2146a19fcf6791bb3e0885148b316aae97aba79728a112d8d0`  
		Last Modified: Sat, 12 Sep 2026 00:11:38 GMT  
		Size: 49.9 MB (49858632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d27ff5c3f2f34021f385ea0b424aae2febcd328520c5b35dd781191d2740855d`  
		Last Modified: Sat, 12 Sep 2026 00:11:36 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2804363ed73f49ad2935b157382ee1fef64de320c5b7a3a430a264fcdfa5202f`  
		Last Modified: Sat, 12 Sep 2026 00:11:40 GMT  
		Size: 130.8 MB (130785927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85f8245d16bca5e7c058ceebbc03a55a63ad2a93af64f7a8779aa434193565e9`  
		Last Modified: Sat, 12 Sep 2026 00:11:37 GMT  
		Size: 5.2 KB (5223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:ad108e2ce2a94a64f1a5e0ab10c094af0d01f8cd5fdfeb8b1b935791373a3d45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15743896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3619db5cba95d342fd27af89656cbca55ba93e79b7404c13f01f06e03f15762`

```dockerfile
```

-	Layers:
	-	`sha256:b7a50f323dbc42b9f4b9d96a60d3bbda853929e6a4b69257acd341bfd7227878`  
		Last Modified: Sat, 12 Sep 2026 00:11:35 GMT  
		Size: 15.7 MB (15710314 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:afd5c48d0a16fb41ed4e5a2104d06b96b2fab2f696af39f483cfc423e2377dfc`  
		Last Modified: Sat, 12 Sep 2026 00:11:35 GMT  
		Size: 33.6 KB (33582 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:8.4`

```console
$ docker pull mysql@sha256:85b9bf2e29cf836ecb8c2a15a935d4ba0c606631dff1dd79531a11983c638f2a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8.4` - linux; amd64

```console
$ docker pull mysql@sha256:8c19b656bb381f163750b238852bd377ba5764e1ec30cdd3f02e55cf8e2f89b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.0 MB (238986928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c07d11b694dcc7e2ef3de845075eca1a8b39868f85f519f938b54c432edc1cb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 11 Sep 2026 23:24:06 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Fri, 11 Sep 2026 23:24:06 GMT
CMD ["/bin/bash"]
# Sat, 12 Sep 2026 00:08:53 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Sat, 12 Sep 2026 00:08:55 GMT
ENV GOSU_VERSION=1.19
# Sat, 12 Sep 2026 00:08:55 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 12 Sep 2026 00:09:30 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Sat, 12 Sep 2026 00:09:31 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Sat, 12 Sep 2026 00:09:31 GMT
ENV MYSQL_MAJOR=8.4
# Sat, 12 Sep 2026 00:09:31 GMT
ENV MYSQL_VERSION=8.4.11-1.el9
# Sat, 12 Sep 2026 00:09:31 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Sat, 12 Sep 2026 00:10:09 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Sat, 12 Sep 2026 00:10:09 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Sat, 12 Sep 2026 00:10:09 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Sat, 12 Sep 2026 00:10:55 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Sat, 12 Sep 2026 00:10:55 GMT
VOLUME [/var/lib/mysql]
# Sat, 12 Sep 2026 00:10:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 12 Sep 2026 00:10:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 12 Sep 2026 00:10:55 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Sat, 12 Sep 2026 00:10:55 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:13c85306055eb6ecca743420c9a29fec0936e01bea1df866947ecc554f9b7235`  
		Last Modified: Fri, 11 Sep 2026 23:24:17 GMT  
		Size: 47.9 MB (47931319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62f909f48b33b5a40d7f2ab172ceb183d7faa36ac3dfb869380daed9e70483ea`  
		Last Modified: Sat, 12 Sep 2026 00:11:26 GMT  
		Size: 882.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70d659eb9b5326feec6dacf803358daae895eb09b245f6d26796a84e11b1e9b8`  
		Last Modified: Sat, 12 Sep 2026 00:11:26 GMT  
		Size: 783.6 KB (783555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c507b2b0af45fc6806e5c3606ae1dc22b64a69523f156bd593915a8350c7091`  
		Last Modified: Sat, 12 Sep 2026 00:11:27 GMT  
		Size: 6.2 MB (6193401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5703b6421969ea9aff5cd6360efecae6e51b136dfa07a82656251d48e31b622`  
		Last Modified: Sat, 12 Sep 2026 00:11:26 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35c18fec455d7a8794345d50f29444ac5966054f9740155e018e174d2bae9477`  
		Last Modified: Sat, 12 Sep 2026 00:11:27 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec3187676fa6d9c45c98cb6decb229921c7d07d165cc1d4d0dae60b1605fd1b6`  
		Last Modified: Sat, 12 Sep 2026 00:11:29 GMT  
		Size: 51.6 MB (51637258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a2df1f368eb7f6802e3d1b729fc92edfa39d88566c277762f5d4273b3dd4016`  
		Last Modified: Sat, 12 Sep 2026 00:11:28 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1ff04460a2370477b5e3d72c37c35db66f2bb8663cb44ad9c16c86d49b7819b`  
		Last Modified: Sat, 12 Sep 2026 00:11:32 GMT  
		Size: 132.4 MB (132432030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:052c01bf8f0e2f34730c39539679425d5b233357dbbd7ba52f402db7aca17926`  
		Last Modified: Sat, 12 Sep 2026 00:11:29 GMT  
		Size: 5.2 KB (5224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4` - unknown; unknown

```console
$ docker pull mysql@sha256:bb393320aa6339b06e3781af2dec534ad3d0ddad0a68e5fe7588da28c862ff46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15745226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:799e2dbb928e0c62a9f057cf31aca821e5b9dee0bc39913bed81e13e8002ae93`

```dockerfile
```

-	Layers:
	-	`sha256:1e46095c5b6f55a62c96746f0fae66231506a3b89d6872e724e547dac7a6838a`  
		Last Modified: Sat, 12 Sep 2026 00:11:27 GMT  
		Size: 15.7 MB (15711914 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:af464d8ae8d251c674638348d3aba0322d854d67d0df05a98ccd2ae614d20b2d`  
		Last Modified: Sat, 12 Sep 2026 00:11:26 GMT  
		Size: 33.3 KB (33312 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8.4` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:eef35351206a4b4c03c1f57deb64c27bee324929df9f031d16b0a3a51631eb4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.7 MB (233686723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bf26b4f970bb41a6945a8eda3b68654fbe424529a30b005c64879514e4ead87`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 11 Sep 2026 23:26:27 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Fri, 11 Sep 2026 23:26:27 GMT
CMD ["/bin/bash"]
# Sat, 12 Sep 2026 00:08:54 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Sat, 12 Sep 2026 00:08:56 GMT
ENV GOSU_VERSION=1.19
# Sat, 12 Sep 2026 00:08:56 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 12 Sep 2026 00:09:34 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Sat, 12 Sep 2026 00:09:35 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Sat, 12 Sep 2026 00:09:35 GMT
ENV MYSQL_MAJOR=8.4
# Sat, 12 Sep 2026 00:09:35 GMT
ENV MYSQL_VERSION=8.4.11-1.el9
# Sat, 12 Sep 2026 00:09:35 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Sat, 12 Sep 2026 00:10:15 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Sat, 12 Sep 2026 00:10:15 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Sat, 12 Sep 2026 00:10:15 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Sat, 12 Sep 2026 00:11:03 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Sat, 12 Sep 2026 00:11:03 GMT
VOLUME [/var/lib/mysql]
# Sat, 12 Sep 2026 00:11:03 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 12 Sep 2026 00:11:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 12 Sep 2026 00:11:03 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Sat, 12 Sep 2026 00:11:03 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:8e88a63a99d33b759690f9a9c14fa268d0d7021d7ba10b95738853eacfae654e`  
		Last Modified: Fri, 11 Sep 2026 23:26:38 GMT  
		Size: 46.5 MB (46478146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ada0979502f8f7abd85ba0435fcb7067b05550bff6128e4134073acd163ac05b`  
		Last Modified: Sat, 12 Sep 2026 00:11:35 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d54abfbd047a20046ecee67605c81c7e818d6b7419167f3fa38357ca2225cc9`  
		Last Modified: Sat, 12 Sep 2026 00:11:35 GMT  
		Size: 737.5 KB (737527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c05685e96e736db586e0fd86a8cca674e2cee903db54a1cab0b0814e4f5d2116`  
		Last Modified: Sat, 12 Sep 2026 00:11:35 GMT  
		Size: 5.8 MB (5817124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e243dd5082eb157c52bb9e2439a1c8802c68ed4a7566049be2bd3b0035a4ceef`  
		Last Modified: Sat, 12 Sep 2026 00:11:35 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84053a51c7abd93a3aed649dd39d2fd06a4e225b027a15414d8fd7e83cfde2c9`  
		Last Modified: Sat, 12 Sep 2026 00:11:36 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:323967c89d8b6b2146a19fcf6791bb3e0885148b316aae97aba79728a112d8d0`  
		Last Modified: Sat, 12 Sep 2026 00:11:38 GMT  
		Size: 49.9 MB (49858632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d27ff5c3f2f34021f385ea0b424aae2febcd328520c5b35dd781191d2740855d`  
		Last Modified: Sat, 12 Sep 2026 00:11:36 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2804363ed73f49ad2935b157382ee1fef64de320c5b7a3a430a264fcdfa5202f`  
		Last Modified: Sat, 12 Sep 2026 00:11:40 GMT  
		Size: 130.8 MB (130785927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85f8245d16bca5e7c058ceebbc03a55a63ad2a93af64f7a8779aa434193565e9`  
		Last Modified: Sat, 12 Sep 2026 00:11:37 GMT  
		Size: 5.2 KB (5223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4` - unknown; unknown

```console
$ docker pull mysql@sha256:ad108e2ce2a94a64f1a5e0ab10c094af0d01f8cd5fdfeb8b1b935791373a3d45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15743896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3619db5cba95d342fd27af89656cbca55ba93e79b7404c13f01f06e03f15762`

```dockerfile
```

-	Layers:
	-	`sha256:b7a50f323dbc42b9f4b9d96a60d3bbda853929e6a4b69257acd341bfd7227878`  
		Last Modified: Sat, 12 Sep 2026 00:11:35 GMT  
		Size: 15.7 MB (15710314 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:afd5c48d0a16fb41ed4e5a2104d06b96b2fab2f696af39f483cfc423e2377dfc`  
		Last Modified: Sat, 12 Sep 2026 00:11:35 GMT  
		Size: 33.6 KB (33582 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:8.4-oracle`

```console
$ docker pull mysql@sha256:85b9bf2e29cf836ecb8c2a15a935d4ba0c606631dff1dd79531a11983c638f2a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8.4-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:8c19b656bb381f163750b238852bd377ba5764e1ec30cdd3f02e55cf8e2f89b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.0 MB (238986928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c07d11b694dcc7e2ef3de845075eca1a8b39868f85f519f938b54c432edc1cb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 11 Sep 2026 23:24:06 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Fri, 11 Sep 2026 23:24:06 GMT
CMD ["/bin/bash"]
# Sat, 12 Sep 2026 00:08:53 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Sat, 12 Sep 2026 00:08:55 GMT
ENV GOSU_VERSION=1.19
# Sat, 12 Sep 2026 00:08:55 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 12 Sep 2026 00:09:30 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Sat, 12 Sep 2026 00:09:31 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Sat, 12 Sep 2026 00:09:31 GMT
ENV MYSQL_MAJOR=8.4
# Sat, 12 Sep 2026 00:09:31 GMT
ENV MYSQL_VERSION=8.4.11-1.el9
# Sat, 12 Sep 2026 00:09:31 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Sat, 12 Sep 2026 00:10:09 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Sat, 12 Sep 2026 00:10:09 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Sat, 12 Sep 2026 00:10:09 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Sat, 12 Sep 2026 00:10:55 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Sat, 12 Sep 2026 00:10:55 GMT
VOLUME [/var/lib/mysql]
# Sat, 12 Sep 2026 00:10:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 12 Sep 2026 00:10:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 12 Sep 2026 00:10:55 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Sat, 12 Sep 2026 00:10:55 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:13c85306055eb6ecca743420c9a29fec0936e01bea1df866947ecc554f9b7235`  
		Last Modified: Fri, 11 Sep 2026 23:24:17 GMT  
		Size: 47.9 MB (47931319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62f909f48b33b5a40d7f2ab172ceb183d7faa36ac3dfb869380daed9e70483ea`  
		Last Modified: Sat, 12 Sep 2026 00:11:26 GMT  
		Size: 882.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70d659eb9b5326feec6dacf803358daae895eb09b245f6d26796a84e11b1e9b8`  
		Last Modified: Sat, 12 Sep 2026 00:11:26 GMT  
		Size: 783.6 KB (783555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c507b2b0af45fc6806e5c3606ae1dc22b64a69523f156bd593915a8350c7091`  
		Last Modified: Sat, 12 Sep 2026 00:11:27 GMT  
		Size: 6.2 MB (6193401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5703b6421969ea9aff5cd6360efecae6e51b136dfa07a82656251d48e31b622`  
		Last Modified: Sat, 12 Sep 2026 00:11:26 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35c18fec455d7a8794345d50f29444ac5966054f9740155e018e174d2bae9477`  
		Last Modified: Sat, 12 Sep 2026 00:11:27 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec3187676fa6d9c45c98cb6decb229921c7d07d165cc1d4d0dae60b1605fd1b6`  
		Last Modified: Sat, 12 Sep 2026 00:11:29 GMT  
		Size: 51.6 MB (51637258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a2df1f368eb7f6802e3d1b729fc92edfa39d88566c277762f5d4273b3dd4016`  
		Last Modified: Sat, 12 Sep 2026 00:11:28 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1ff04460a2370477b5e3d72c37c35db66f2bb8663cb44ad9c16c86d49b7819b`  
		Last Modified: Sat, 12 Sep 2026 00:11:32 GMT  
		Size: 132.4 MB (132432030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:052c01bf8f0e2f34730c39539679425d5b233357dbbd7ba52f402db7aca17926`  
		Last Modified: Sat, 12 Sep 2026 00:11:29 GMT  
		Size: 5.2 KB (5224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:bb393320aa6339b06e3781af2dec534ad3d0ddad0a68e5fe7588da28c862ff46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15745226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:799e2dbb928e0c62a9f057cf31aca821e5b9dee0bc39913bed81e13e8002ae93`

```dockerfile
```

-	Layers:
	-	`sha256:1e46095c5b6f55a62c96746f0fae66231506a3b89d6872e724e547dac7a6838a`  
		Last Modified: Sat, 12 Sep 2026 00:11:27 GMT  
		Size: 15.7 MB (15711914 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:af464d8ae8d251c674638348d3aba0322d854d67d0df05a98ccd2ae614d20b2d`  
		Last Modified: Sat, 12 Sep 2026 00:11:26 GMT  
		Size: 33.3 KB (33312 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8.4-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:eef35351206a4b4c03c1f57deb64c27bee324929df9f031d16b0a3a51631eb4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.7 MB (233686723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bf26b4f970bb41a6945a8eda3b68654fbe424529a30b005c64879514e4ead87`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 11 Sep 2026 23:26:27 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Fri, 11 Sep 2026 23:26:27 GMT
CMD ["/bin/bash"]
# Sat, 12 Sep 2026 00:08:54 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Sat, 12 Sep 2026 00:08:56 GMT
ENV GOSU_VERSION=1.19
# Sat, 12 Sep 2026 00:08:56 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 12 Sep 2026 00:09:34 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Sat, 12 Sep 2026 00:09:35 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Sat, 12 Sep 2026 00:09:35 GMT
ENV MYSQL_MAJOR=8.4
# Sat, 12 Sep 2026 00:09:35 GMT
ENV MYSQL_VERSION=8.4.11-1.el9
# Sat, 12 Sep 2026 00:09:35 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Sat, 12 Sep 2026 00:10:15 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Sat, 12 Sep 2026 00:10:15 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Sat, 12 Sep 2026 00:10:15 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Sat, 12 Sep 2026 00:11:03 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Sat, 12 Sep 2026 00:11:03 GMT
VOLUME [/var/lib/mysql]
# Sat, 12 Sep 2026 00:11:03 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 12 Sep 2026 00:11:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 12 Sep 2026 00:11:03 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Sat, 12 Sep 2026 00:11:03 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:8e88a63a99d33b759690f9a9c14fa268d0d7021d7ba10b95738853eacfae654e`  
		Last Modified: Fri, 11 Sep 2026 23:26:38 GMT  
		Size: 46.5 MB (46478146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ada0979502f8f7abd85ba0435fcb7067b05550bff6128e4134073acd163ac05b`  
		Last Modified: Sat, 12 Sep 2026 00:11:35 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d54abfbd047a20046ecee67605c81c7e818d6b7419167f3fa38357ca2225cc9`  
		Last Modified: Sat, 12 Sep 2026 00:11:35 GMT  
		Size: 737.5 KB (737527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c05685e96e736db586e0fd86a8cca674e2cee903db54a1cab0b0814e4f5d2116`  
		Last Modified: Sat, 12 Sep 2026 00:11:35 GMT  
		Size: 5.8 MB (5817124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e243dd5082eb157c52bb9e2439a1c8802c68ed4a7566049be2bd3b0035a4ceef`  
		Last Modified: Sat, 12 Sep 2026 00:11:35 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84053a51c7abd93a3aed649dd39d2fd06a4e225b027a15414d8fd7e83cfde2c9`  
		Last Modified: Sat, 12 Sep 2026 00:11:36 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:323967c89d8b6b2146a19fcf6791bb3e0885148b316aae97aba79728a112d8d0`  
		Last Modified: Sat, 12 Sep 2026 00:11:38 GMT  
		Size: 49.9 MB (49858632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d27ff5c3f2f34021f385ea0b424aae2febcd328520c5b35dd781191d2740855d`  
		Last Modified: Sat, 12 Sep 2026 00:11:36 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2804363ed73f49ad2935b157382ee1fef64de320c5b7a3a430a264fcdfa5202f`  
		Last Modified: Sat, 12 Sep 2026 00:11:40 GMT  
		Size: 130.8 MB (130785927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85f8245d16bca5e7c058ceebbc03a55a63ad2a93af64f7a8779aa434193565e9`  
		Last Modified: Sat, 12 Sep 2026 00:11:37 GMT  
		Size: 5.2 KB (5223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:ad108e2ce2a94a64f1a5e0ab10c094af0d01f8cd5fdfeb8b1b935791373a3d45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15743896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3619db5cba95d342fd27af89656cbca55ba93e79b7404c13f01f06e03f15762`

```dockerfile
```

-	Layers:
	-	`sha256:b7a50f323dbc42b9f4b9d96a60d3bbda853929e6a4b69257acd341bfd7227878`  
		Last Modified: Sat, 12 Sep 2026 00:11:35 GMT  
		Size: 15.7 MB (15710314 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:afd5c48d0a16fb41ed4e5a2104d06b96b2fab2f696af39f483cfc423e2377dfc`  
		Last Modified: Sat, 12 Sep 2026 00:11:35 GMT  
		Size: 33.6 KB (33582 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:8.4-oraclelinux9`

```console
$ docker pull mysql@sha256:85b9bf2e29cf836ecb8c2a15a935d4ba0c606631dff1dd79531a11983c638f2a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8.4-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:8c19b656bb381f163750b238852bd377ba5764e1ec30cdd3f02e55cf8e2f89b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.0 MB (238986928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c07d11b694dcc7e2ef3de845075eca1a8b39868f85f519f938b54c432edc1cb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 11 Sep 2026 23:24:06 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Fri, 11 Sep 2026 23:24:06 GMT
CMD ["/bin/bash"]
# Sat, 12 Sep 2026 00:08:53 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Sat, 12 Sep 2026 00:08:55 GMT
ENV GOSU_VERSION=1.19
# Sat, 12 Sep 2026 00:08:55 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 12 Sep 2026 00:09:30 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Sat, 12 Sep 2026 00:09:31 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Sat, 12 Sep 2026 00:09:31 GMT
ENV MYSQL_MAJOR=8.4
# Sat, 12 Sep 2026 00:09:31 GMT
ENV MYSQL_VERSION=8.4.11-1.el9
# Sat, 12 Sep 2026 00:09:31 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Sat, 12 Sep 2026 00:10:09 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Sat, 12 Sep 2026 00:10:09 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Sat, 12 Sep 2026 00:10:09 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Sat, 12 Sep 2026 00:10:55 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Sat, 12 Sep 2026 00:10:55 GMT
VOLUME [/var/lib/mysql]
# Sat, 12 Sep 2026 00:10:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 12 Sep 2026 00:10:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 12 Sep 2026 00:10:55 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Sat, 12 Sep 2026 00:10:55 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:13c85306055eb6ecca743420c9a29fec0936e01bea1df866947ecc554f9b7235`  
		Last Modified: Fri, 11 Sep 2026 23:24:17 GMT  
		Size: 47.9 MB (47931319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62f909f48b33b5a40d7f2ab172ceb183d7faa36ac3dfb869380daed9e70483ea`  
		Last Modified: Sat, 12 Sep 2026 00:11:26 GMT  
		Size: 882.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70d659eb9b5326feec6dacf803358daae895eb09b245f6d26796a84e11b1e9b8`  
		Last Modified: Sat, 12 Sep 2026 00:11:26 GMT  
		Size: 783.6 KB (783555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c507b2b0af45fc6806e5c3606ae1dc22b64a69523f156bd593915a8350c7091`  
		Last Modified: Sat, 12 Sep 2026 00:11:27 GMT  
		Size: 6.2 MB (6193401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5703b6421969ea9aff5cd6360efecae6e51b136dfa07a82656251d48e31b622`  
		Last Modified: Sat, 12 Sep 2026 00:11:26 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35c18fec455d7a8794345d50f29444ac5966054f9740155e018e174d2bae9477`  
		Last Modified: Sat, 12 Sep 2026 00:11:27 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec3187676fa6d9c45c98cb6decb229921c7d07d165cc1d4d0dae60b1605fd1b6`  
		Last Modified: Sat, 12 Sep 2026 00:11:29 GMT  
		Size: 51.6 MB (51637258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a2df1f368eb7f6802e3d1b729fc92edfa39d88566c277762f5d4273b3dd4016`  
		Last Modified: Sat, 12 Sep 2026 00:11:28 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1ff04460a2370477b5e3d72c37c35db66f2bb8663cb44ad9c16c86d49b7819b`  
		Last Modified: Sat, 12 Sep 2026 00:11:32 GMT  
		Size: 132.4 MB (132432030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:052c01bf8f0e2f34730c39539679425d5b233357dbbd7ba52f402db7aca17926`  
		Last Modified: Sat, 12 Sep 2026 00:11:29 GMT  
		Size: 5.2 KB (5224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:bb393320aa6339b06e3781af2dec534ad3d0ddad0a68e5fe7588da28c862ff46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15745226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:799e2dbb928e0c62a9f057cf31aca821e5b9dee0bc39913bed81e13e8002ae93`

```dockerfile
```

-	Layers:
	-	`sha256:1e46095c5b6f55a62c96746f0fae66231506a3b89d6872e724e547dac7a6838a`  
		Last Modified: Sat, 12 Sep 2026 00:11:27 GMT  
		Size: 15.7 MB (15711914 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:af464d8ae8d251c674638348d3aba0322d854d67d0df05a98ccd2ae614d20b2d`  
		Last Modified: Sat, 12 Sep 2026 00:11:26 GMT  
		Size: 33.3 KB (33312 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8.4-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:eef35351206a4b4c03c1f57deb64c27bee324929df9f031d16b0a3a51631eb4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.7 MB (233686723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bf26b4f970bb41a6945a8eda3b68654fbe424529a30b005c64879514e4ead87`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 11 Sep 2026 23:26:27 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Fri, 11 Sep 2026 23:26:27 GMT
CMD ["/bin/bash"]
# Sat, 12 Sep 2026 00:08:54 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Sat, 12 Sep 2026 00:08:56 GMT
ENV GOSU_VERSION=1.19
# Sat, 12 Sep 2026 00:08:56 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 12 Sep 2026 00:09:34 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Sat, 12 Sep 2026 00:09:35 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Sat, 12 Sep 2026 00:09:35 GMT
ENV MYSQL_MAJOR=8.4
# Sat, 12 Sep 2026 00:09:35 GMT
ENV MYSQL_VERSION=8.4.11-1.el9
# Sat, 12 Sep 2026 00:09:35 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Sat, 12 Sep 2026 00:10:15 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Sat, 12 Sep 2026 00:10:15 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Sat, 12 Sep 2026 00:10:15 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Sat, 12 Sep 2026 00:11:03 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Sat, 12 Sep 2026 00:11:03 GMT
VOLUME [/var/lib/mysql]
# Sat, 12 Sep 2026 00:11:03 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 12 Sep 2026 00:11:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 12 Sep 2026 00:11:03 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Sat, 12 Sep 2026 00:11:03 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:8e88a63a99d33b759690f9a9c14fa268d0d7021d7ba10b95738853eacfae654e`  
		Last Modified: Fri, 11 Sep 2026 23:26:38 GMT  
		Size: 46.5 MB (46478146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ada0979502f8f7abd85ba0435fcb7067b05550bff6128e4134073acd163ac05b`  
		Last Modified: Sat, 12 Sep 2026 00:11:35 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d54abfbd047a20046ecee67605c81c7e818d6b7419167f3fa38357ca2225cc9`  
		Last Modified: Sat, 12 Sep 2026 00:11:35 GMT  
		Size: 737.5 KB (737527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c05685e96e736db586e0fd86a8cca674e2cee903db54a1cab0b0814e4f5d2116`  
		Last Modified: Sat, 12 Sep 2026 00:11:35 GMT  
		Size: 5.8 MB (5817124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e243dd5082eb157c52bb9e2439a1c8802c68ed4a7566049be2bd3b0035a4ceef`  
		Last Modified: Sat, 12 Sep 2026 00:11:35 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84053a51c7abd93a3aed649dd39d2fd06a4e225b027a15414d8fd7e83cfde2c9`  
		Last Modified: Sat, 12 Sep 2026 00:11:36 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:323967c89d8b6b2146a19fcf6791bb3e0885148b316aae97aba79728a112d8d0`  
		Last Modified: Sat, 12 Sep 2026 00:11:38 GMT  
		Size: 49.9 MB (49858632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d27ff5c3f2f34021f385ea0b424aae2febcd328520c5b35dd781191d2740855d`  
		Last Modified: Sat, 12 Sep 2026 00:11:36 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2804363ed73f49ad2935b157382ee1fef64de320c5b7a3a430a264fcdfa5202f`  
		Last Modified: Sat, 12 Sep 2026 00:11:40 GMT  
		Size: 130.8 MB (130785927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85f8245d16bca5e7c058ceebbc03a55a63ad2a93af64f7a8779aa434193565e9`  
		Last Modified: Sat, 12 Sep 2026 00:11:37 GMT  
		Size: 5.2 KB (5223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:ad108e2ce2a94a64f1a5e0ab10c094af0d01f8cd5fdfeb8b1b935791373a3d45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15743896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3619db5cba95d342fd27af89656cbca55ba93e79b7404c13f01f06e03f15762`

```dockerfile
```

-	Layers:
	-	`sha256:b7a50f323dbc42b9f4b9d96a60d3bbda853929e6a4b69257acd341bfd7227878`  
		Last Modified: Sat, 12 Sep 2026 00:11:35 GMT  
		Size: 15.7 MB (15710314 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:afd5c48d0a16fb41ed4e5a2104d06b96b2fab2f696af39f483cfc423e2377dfc`  
		Last Modified: Sat, 12 Sep 2026 00:11:35 GMT  
		Size: 33.6 KB (33582 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:8.4.11`

```console
$ docker pull mysql@sha256:85b9bf2e29cf836ecb8c2a15a935d4ba0c606631dff1dd79531a11983c638f2a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8.4.11` - linux; amd64

```console
$ docker pull mysql@sha256:8c19b656bb381f163750b238852bd377ba5764e1ec30cdd3f02e55cf8e2f89b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.0 MB (238986928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c07d11b694dcc7e2ef3de845075eca1a8b39868f85f519f938b54c432edc1cb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 11 Sep 2026 23:24:06 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Fri, 11 Sep 2026 23:24:06 GMT
CMD ["/bin/bash"]
# Sat, 12 Sep 2026 00:08:53 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Sat, 12 Sep 2026 00:08:55 GMT
ENV GOSU_VERSION=1.19
# Sat, 12 Sep 2026 00:08:55 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 12 Sep 2026 00:09:30 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Sat, 12 Sep 2026 00:09:31 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Sat, 12 Sep 2026 00:09:31 GMT
ENV MYSQL_MAJOR=8.4
# Sat, 12 Sep 2026 00:09:31 GMT
ENV MYSQL_VERSION=8.4.11-1.el9
# Sat, 12 Sep 2026 00:09:31 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Sat, 12 Sep 2026 00:10:09 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Sat, 12 Sep 2026 00:10:09 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Sat, 12 Sep 2026 00:10:09 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Sat, 12 Sep 2026 00:10:55 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Sat, 12 Sep 2026 00:10:55 GMT
VOLUME [/var/lib/mysql]
# Sat, 12 Sep 2026 00:10:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 12 Sep 2026 00:10:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 12 Sep 2026 00:10:55 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Sat, 12 Sep 2026 00:10:55 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:13c85306055eb6ecca743420c9a29fec0936e01bea1df866947ecc554f9b7235`  
		Last Modified: Fri, 11 Sep 2026 23:24:17 GMT  
		Size: 47.9 MB (47931319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62f909f48b33b5a40d7f2ab172ceb183d7faa36ac3dfb869380daed9e70483ea`  
		Last Modified: Sat, 12 Sep 2026 00:11:26 GMT  
		Size: 882.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70d659eb9b5326feec6dacf803358daae895eb09b245f6d26796a84e11b1e9b8`  
		Last Modified: Sat, 12 Sep 2026 00:11:26 GMT  
		Size: 783.6 KB (783555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c507b2b0af45fc6806e5c3606ae1dc22b64a69523f156bd593915a8350c7091`  
		Last Modified: Sat, 12 Sep 2026 00:11:27 GMT  
		Size: 6.2 MB (6193401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5703b6421969ea9aff5cd6360efecae6e51b136dfa07a82656251d48e31b622`  
		Last Modified: Sat, 12 Sep 2026 00:11:26 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35c18fec455d7a8794345d50f29444ac5966054f9740155e018e174d2bae9477`  
		Last Modified: Sat, 12 Sep 2026 00:11:27 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec3187676fa6d9c45c98cb6decb229921c7d07d165cc1d4d0dae60b1605fd1b6`  
		Last Modified: Sat, 12 Sep 2026 00:11:29 GMT  
		Size: 51.6 MB (51637258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a2df1f368eb7f6802e3d1b729fc92edfa39d88566c277762f5d4273b3dd4016`  
		Last Modified: Sat, 12 Sep 2026 00:11:28 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1ff04460a2370477b5e3d72c37c35db66f2bb8663cb44ad9c16c86d49b7819b`  
		Last Modified: Sat, 12 Sep 2026 00:11:32 GMT  
		Size: 132.4 MB (132432030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:052c01bf8f0e2f34730c39539679425d5b233357dbbd7ba52f402db7aca17926`  
		Last Modified: Sat, 12 Sep 2026 00:11:29 GMT  
		Size: 5.2 KB (5224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4.11` - unknown; unknown

```console
$ docker pull mysql@sha256:bb393320aa6339b06e3781af2dec534ad3d0ddad0a68e5fe7588da28c862ff46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15745226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:799e2dbb928e0c62a9f057cf31aca821e5b9dee0bc39913bed81e13e8002ae93`

```dockerfile
```

-	Layers:
	-	`sha256:1e46095c5b6f55a62c96746f0fae66231506a3b89d6872e724e547dac7a6838a`  
		Last Modified: Sat, 12 Sep 2026 00:11:27 GMT  
		Size: 15.7 MB (15711914 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:af464d8ae8d251c674638348d3aba0322d854d67d0df05a98ccd2ae614d20b2d`  
		Last Modified: Sat, 12 Sep 2026 00:11:26 GMT  
		Size: 33.3 KB (33312 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8.4.11` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:eef35351206a4b4c03c1f57deb64c27bee324929df9f031d16b0a3a51631eb4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.7 MB (233686723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bf26b4f970bb41a6945a8eda3b68654fbe424529a30b005c64879514e4ead87`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 11 Sep 2026 23:26:27 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Fri, 11 Sep 2026 23:26:27 GMT
CMD ["/bin/bash"]
# Sat, 12 Sep 2026 00:08:54 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Sat, 12 Sep 2026 00:08:56 GMT
ENV GOSU_VERSION=1.19
# Sat, 12 Sep 2026 00:08:56 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 12 Sep 2026 00:09:34 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Sat, 12 Sep 2026 00:09:35 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Sat, 12 Sep 2026 00:09:35 GMT
ENV MYSQL_MAJOR=8.4
# Sat, 12 Sep 2026 00:09:35 GMT
ENV MYSQL_VERSION=8.4.11-1.el9
# Sat, 12 Sep 2026 00:09:35 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Sat, 12 Sep 2026 00:10:15 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Sat, 12 Sep 2026 00:10:15 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Sat, 12 Sep 2026 00:10:15 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Sat, 12 Sep 2026 00:11:03 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Sat, 12 Sep 2026 00:11:03 GMT
VOLUME [/var/lib/mysql]
# Sat, 12 Sep 2026 00:11:03 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 12 Sep 2026 00:11:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 12 Sep 2026 00:11:03 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Sat, 12 Sep 2026 00:11:03 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:8e88a63a99d33b759690f9a9c14fa268d0d7021d7ba10b95738853eacfae654e`  
		Last Modified: Fri, 11 Sep 2026 23:26:38 GMT  
		Size: 46.5 MB (46478146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ada0979502f8f7abd85ba0435fcb7067b05550bff6128e4134073acd163ac05b`  
		Last Modified: Sat, 12 Sep 2026 00:11:35 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d54abfbd047a20046ecee67605c81c7e818d6b7419167f3fa38357ca2225cc9`  
		Last Modified: Sat, 12 Sep 2026 00:11:35 GMT  
		Size: 737.5 KB (737527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c05685e96e736db586e0fd86a8cca674e2cee903db54a1cab0b0814e4f5d2116`  
		Last Modified: Sat, 12 Sep 2026 00:11:35 GMT  
		Size: 5.8 MB (5817124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e243dd5082eb157c52bb9e2439a1c8802c68ed4a7566049be2bd3b0035a4ceef`  
		Last Modified: Sat, 12 Sep 2026 00:11:35 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84053a51c7abd93a3aed649dd39d2fd06a4e225b027a15414d8fd7e83cfde2c9`  
		Last Modified: Sat, 12 Sep 2026 00:11:36 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:323967c89d8b6b2146a19fcf6791bb3e0885148b316aae97aba79728a112d8d0`  
		Last Modified: Sat, 12 Sep 2026 00:11:38 GMT  
		Size: 49.9 MB (49858632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d27ff5c3f2f34021f385ea0b424aae2febcd328520c5b35dd781191d2740855d`  
		Last Modified: Sat, 12 Sep 2026 00:11:36 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2804363ed73f49ad2935b157382ee1fef64de320c5b7a3a430a264fcdfa5202f`  
		Last Modified: Sat, 12 Sep 2026 00:11:40 GMT  
		Size: 130.8 MB (130785927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85f8245d16bca5e7c058ceebbc03a55a63ad2a93af64f7a8779aa434193565e9`  
		Last Modified: Sat, 12 Sep 2026 00:11:37 GMT  
		Size: 5.2 KB (5223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4.11` - unknown; unknown

```console
$ docker pull mysql@sha256:ad108e2ce2a94a64f1a5e0ab10c094af0d01f8cd5fdfeb8b1b935791373a3d45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15743896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3619db5cba95d342fd27af89656cbca55ba93e79b7404c13f01f06e03f15762`

```dockerfile
```

-	Layers:
	-	`sha256:b7a50f323dbc42b9f4b9d96a60d3bbda853929e6a4b69257acd341bfd7227878`  
		Last Modified: Sat, 12 Sep 2026 00:11:35 GMT  
		Size: 15.7 MB (15710314 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:afd5c48d0a16fb41ed4e5a2104d06b96b2fab2f696af39f483cfc423e2377dfc`  
		Last Modified: Sat, 12 Sep 2026 00:11:35 GMT  
		Size: 33.6 KB (33582 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:8.4.11-oracle`

```console
$ docker pull mysql@sha256:85b9bf2e29cf836ecb8c2a15a935d4ba0c606631dff1dd79531a11983c638f2a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8.4.11-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:8c19b656bb381f163750b238852bd377ba5764e1ec30cdd3f02e55cf8e2f89b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.0 MB (238986928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c07d11b694dcc7e2ef3de845075eca1a8b39868f85f519f938b54c432edc1cb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 11 Sep 2026 23:24:06 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Fri, 11 Sep 2026 23:24:06 GMT
CMD ["/bin/bash"]
# Sat, 12 Sep 2026 00:08:53 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Sat, 12 Sep 2026 00:08:55 GMT
ENV GOSU_VERSION=1.19
# Sat, 12 Sep 2026 00:08:55 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 12 Sep 2026 00:09:30 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Sat, 12 Sep 2026 00:09:31 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Sat, 12 Sep 2026 00:09:31 GMT
ENV MYSQL_MAJOR=8.4
# Sat, 12 Sep 2026 00:09:31 GMT
ENV MYSQL_VERSION=8.4.11-1.el9
# Sat, 12 Sep 2026 00:09:31 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Sat, 12 Sep 2026 00:10:09 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Sat, 12 Sep 2026 00:10:09 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Sat, 12 Sep 2026 00:10:09 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Sat, 12 Sep 2026 00:10:55 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Sat, 12 Sep 2026 00:10:55 GMT
VOLUME [/var/lib/mysql]
# Sat, 12 Sep 2026 00:10:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 12 Sep 2026 00:10:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 12 Sep 2026 00:10:55 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Sat, 12 Sep 2026 00:10:55 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:13c85306055eb6ecca743420c9a29fec0936e01bea1df866947ecc554f9b7235`  
		Last Modified: Fri, 11 Sep 2026 23:24:17 GMT  
		Size: 47.9 MB (47931319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62f909f48b33b5a40d7f2ab172ceb183d7faa36ac3dfb869380daed9e70483ea`  
		Last Modified: Sat, 12 Sep 2026 00:11:26 GMT  
		Size: 882.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70d659eb9b5326feec6dacf803358daae895eb09b245f6d26796a84e11b1e9b8`  
		Last Modified: Sat, 12 Sep 2026 00:11:26 GMT  
		Size: 783.6 KB (783555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c507b2b0af45fc6806e5c3606ae1dc22b64a69523f156bd593915a8350c7091`  
		Last Modified: Sat, 12 Sep 2026 00:11:27 GMT  
		Size: 6.2 MB (6193401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5703b6421969ea9aff5cd6360efecae6e51b136dfa07a82656251d48e31b622`  
		Last Modified: Sat, 12 Sep 2026 00:11:26 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35c18fec455d7a8794345d50f29444ac5966054f9740155e018e174d2bae9477`  
		Last Modified: Sat, 12 Sep 2026 00:11:27 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec3187676fa6d9c45c98cb6decb229921c7d07d165cc1d4d0dae60b1605fd1b6`  
		Last Modified: Sat, 12 Sep 2026 00:11:29 GMT  
		Size: 51.6 MB (51637258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a2df1f368eb7f6802e3d1b729fc92edfa39d88566c277762f5d4273b3dd4016`  
		Last Modified: Sat, 12 Sep 2026 00:11:28 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1ff04460a2370477b5e3d72c37c35db66f2bb8663cb44ad9c16c86d49b7819b`  
		Last Modified: Sat, 12 Sep 2026 00:11:32 GMT  
		Size: 132.4 MB (132432030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:052c01bf8f0e2f34730c39539679425d5b233357dbbd7ba52f402db7aca17926`  
		Last Modified: Sat, 12 Sep 2026 00:11:29 GMT  
		Size: 5.2 KB (5224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4.11-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:bb393320aa6339b06e3781af2dec534ad3d0ddad0a68e5fe7588da28c862ff46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15745226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:799e2dbb928e0c62a9f057cf31aca821e5b9dee0bc39913bed81e13e8002ae93`

```dockerfile
```

-	Layers:
	-	`sha256:1e46095c5b6f55a62c96746f0fae66231506a3b89d6872e724e547dac7a6838a`  
		Last Modified: Sat, 12 Sep 2026 00:11:27 GMT  
		Size: 15.7 MB (15711914 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:af464d8ae8d251c674638348d3aba0322d854d67d0df05a98ccd2ae614d20b2d`  
		Last Modified: Sat, 12 Sep 2026 00:11:26 GMT  
		Size: 33.3 KB (33312 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8.4.11-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:eef35351206a4b4c03c1f57deb64c27bee324929df9f031d16b0a3a51631eb4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.7 MB (233686723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bf26b4f970bb41a6945a8eda3b68654fbe424529a30b005c64879514e4ead87`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 11 Sep 2026 23:26:27 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Fri, 11 Sep 2026 23:26:27 GMT
CMD ["/bin/bash"]
# Sat, 12 Sep 2026 00:08:54 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Sat, 12 Sep 2026 00:08:56 GMT
ENV GOSU_VERSION=1.19
# Sat, 12 Sep 2026 00:08:56 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 12 Sep 2026 00:09:34 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Sat, 12 Sep 2026 00:09:35 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Sat, 12 Sep 2026 00:09:35 GMT
ENV MYSQL_MAJOR=8.4
# Sat, 12 Sep 2026 00:09:35 GMT
ENV MYSQL_VERSION=8.4.11-1.el9
# Sat, 12 Sep 2026 00:09:35 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Sat, 12 Sep 2026 00:10:15 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Sat, 12 Sep 2026 00:10:15 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Sat, 12 Sep 2026 00:10:15 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Sat, 12 Sep 2026 00:11:03 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Sat, 12 Sep 2026 00:11:03 GMT
VOLUME [/var/lib/mysql]
# Sat, 12 Sep 2026 00:11:03 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 12 Sep 2026 00:11:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 12 Sep 2026 00:11:03 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Sat, 12 Sep 2026 00:11:03 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:8e88a63a99d33b759690f9a9c14fa268d0d7021d7ba10b95738853eacfae654e`  
		Last Modified: Fri, 11 Sep 2026 23:26:38 GMT  
		Size: 46.5 MB (46478146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ada0979502f8f7abd85ba0435fcb7067b05550bff6128e4134073acd163ac05b`  
		Last Modified: Sat, 12 Sep 2026 00:11:35 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d54abfbd047a20046ecee67605c81c7e818d6b7419167f3fa38357ca2225cc9`  
		Last Modified: Sat, 12 Sep 2026 00:11:35 GMT  
		Size: 737.5 KB (737527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c05685e96e736db586e0fd86a8cca674e2cee903db54a1cab0b0814e4f5d2116`  
		Last Modified: Sat, 12 Sep 2026 00:11:35 GMT  
		Size: 5.8 MB (5817124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e243dd5082eb157c52bb9e2439a1c8802c68ed4a7566049be2bd3b0035a4ceef`  
		Last Modified: Sat, 12 Sep 2026 00:11:35 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84053a51c7abd93a3aed649dd39d2fd06a4e225b027a15414d8fd7e83cfde2c9`  
		Last Modified: Sat, 12 Sep 2026 00:11:36 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:323967c89d8b6b2146a19fcf6791bb3e0885148b316aae97aba79728a112d8d0`  
		Last Modified: Sat, 12 Sep 2026 00:11:38 GMT  
		Size: 49.9 MB (49858632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d27ff5c3f2f34021f385ea0b424aae2febcd328520c5b35dd781191d2740855d`  
		Last Modified: Sat, 12 Sep 2026 00:11:36 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2804363ed73f49ad2935b157382ee1fef64de320c5b7a3a430a264fcdfa5202f`  
		Last Modified: Sat, 12 Sep 2026 00:11:40 GMT  
		Size: 130.8 MB (130785927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85f8245d16bca5e7c058ceebbc03a55a63ad2a93af64f7a8779aa434193565e9`  
		Last Modified: Sat, 12 Sep 2026 00:11:37 GMT  
		Size: 5.2 KB (5223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4.11-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:ad108e2ce2a94a64f1a5e0ab10c094af0d01f8cd5fdfeb8b1b935791373a3d45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15743896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3619db5cba95d342fd27af89656cbca55ba93e79b7404c13f01f06e03f15762`

```dockerfile
```

-	Layers:
	-	`sha256:b7a50f323dbc42b9f4b9d96a60d3bbda853929e6a4b69257acd341bfd7227878`  
		Last Modified: Sat, 12 Sep 2026 00:11:35 GMT  
		Size: 15.7 MB (15710314 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:afd5c48d0a16fb41ed4e5a2104d06b96b2fab2f696af39f483cfc423e2377dfc`  
		Last Modified: Sat, 12 Sep 2026 00:11:35 GMT  
		Size: 33.6 KB (33582 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:8.4.11-oraclelinux9`

```console
$ docker pull mysql@sha256:85b9bf2e29cf836ecb8c2a15a935d4ba0c606631dff1dd79531a11983c638f2a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8.4.11-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:8c19b656bb381f163750b238852bd377ba5764e1ec30cdd3f02e55cf8e2f89b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.0 MB (238986928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c07d11b694dcc7e2ef3de845075eca1a8b39868f85f519f938b54c432edc1cb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 11 Sep 2026 23:24:06 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Fri, 11 Sep 2026 23:24:06 GMT
CMD ["/bin/bash"]
# Sat, 12 Sep 2026 00:08:53 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Sat, 12 Sep 2026 00:08:55 GMT
ENV GOSU_VERSION=1.19
# Sat, 12 Sep 2026 00:08:55 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 12 Sep 2026 00:09:30 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Sat, 12 Sep 2026 00:09:31 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Sat, 12 Sep 2026 00:09:31 GMT
ENV MYSQL_MAJOR=8.4
# Sat, 12 Sep 2026 00:09:31 GMT
ENV MYSQL_VERSION=8.4.11-1.el9
# Sat, 12 Sep 2026 00:09:31 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Sat, 12 Sep 2026 00:10:09 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Sat, 12 Sep 2026 00:10:09 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Sat, 12 Sep 2026 00:10:09 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Sat, 12 Sep 2026 00:10:55 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Sat, 12 Sep 2026 00:10:55 GMT
VOLUME [/var/lib/mysql]
# Sat, 12 Sep 2026 00:10:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 12 Sep 2026 00:10:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 12 Sep 2026 00:10:55 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Sat, 12 Sep 2026 00:10:55 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:13c85306055eb6ecca743420c9a29fec0936e01bea1df866947ecc554f9b7235`  
		Last Modified: Fri, 11 Sep 2026 23:24:17 GMT  
		Size: 47.9 MB (47931319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62f909f48b33b5a40d7f2ab172ceb183d7faa36ac3dfb869380daed9e70483ea`  
		Last Modified: Sat, 12 Sep 2026 00:11:26 GMT  
		Size: 882.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70d659eb9b5326feec6dacf803358daae895eb09b245f6d26796a84e11b1e9b8`  
		Last Modified: Sat, 12 Sep 2026 00:11:26 GMT  
		Size: 783.6 KB (783555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c507b2b0af45fc6806e5c3606ae1dc22b64a69523f156bd593915a8350c7091`  
		Last Modified: Sat, 12 Sep 2026 00:11:27 GMT  
		Size: 6.2 MB (6193401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5703b6421969ea9aff5cd6360efecae6e51b136dfa07a82656251d48e31b622`  
		Last Modified: Sat, 12 Sep 2026 00:11:26 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35c18fec455d7a8794345d50f29444ac5966054f9740155e018e174d2bae9477`  
		Last Modified: Sat, 12 Sep 2026 00:11:27 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec3187676fa6d9c45c98cb6decb229921c7d07d165cc1d4d0dae60b1605fd1b6`  
		Last Modified: Sat, 12 Sep 2026 00:11:29 GMT  
		Size: 51.6 MB (51637258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a2df1f368eb7f6802e3d1b729fc92edfa39d88566c277762f5d4273b3dd4016`  
		Last Modified: Sat, 12 Sep 2026 00:11:28 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1ff04460a2370477b5e3d72c37c35db66f2bb8663cb44ad9c16c86d49b7819b`  
		Last Modified: Sat, 12 Sep 2026 00:11:32 GMT  
		Size: 132.4 MB (132432030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:052c01bf8f0e2f34730c39539679425d5b233357dbbd7ba52f402db7aca17926`  
		Last Modified: Sat, 12 Sep 2026 00:11:29 GMT  
		Size: 5.2 KB (5224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4.11-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:bb393320aa6339b06e3781af2dec534ad3d0ddad0a68e5fe7588da28c862ff46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15745226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:799e2dbb928e0c62a9f057cf31aca821e5b9dee0bc39913bed81e13e8002ae93`

```dockerfile
```

-	Layers:
	-	`sha256:1e46095c5b6f55a62c96746f0fae66231506a3b89d6872e724e547dac7a6838a`  
		Last Modified: Sat, 12 Sep 2026 00:11:27 GMT  
		Size: 15.7 MB (15711914 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:af464d8ae8d251c674638348d3aba0322d854d67d0df05a98ccd2ae614d20b2d`  
		Last Modified: Sat, 12 Sep 2026 00:11:26 GMT  
		Size: 33.3 KB (33312 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8.4.11-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:eef35351206a4b4c03c1f57deb64c27bee324929df9f031d16b0a3a51631eb4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.7 MB (233686723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bf26b4f970bb41a6945a8eda3b68654fbe424529a30b005c64879514e4ead87`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 11 Sep 2026 23:26:27 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Fri, 11 Sep 2026 23:26:27 GMT
CMD ["/bin/bash"]
# Sat, 12 Sep 2026 00:08:54 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Sat, 12 Sep 2026 00:08:56 GMT
ENV GOSU_VERSION=1.19
# Sat, 12 Sep 2026 00:08:56 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 12 Sep 2026 00:09:34 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Sat, 12 Sep 2026 00:09:35 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Sat, 12 Sep 2026 00:09:35 GMT
ENV MYSQL_MAJOR=8.4
# Sat, 12 Sep 2026 00:09:35 GMT
ENV MYSQL_VERSION=8.4.11-1.el9
# Sat, 12 Sep 2026 00:09:35 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Sat, 12 Sep 2026 00:10:15 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Sat, 12 Sep 2026 00:10:15 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Sat, 12 Sep 2026 00:10:15 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Sat, 12 Sep 2026 00:11:03 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Sat, 12 Sep 2026 00:11:03 GMT
VOLUME [/var/lib/mysql]
# Sat, 12 Sep 2026 00:11:03 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 12 Sep 2026 00:11:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 12 Sep 2026 00:11:03 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Sat, 12 Sep 2026 00:11:03 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:8e88a63a99d33b759690f9a9c14fa268d0d7021d7ba10b95738853eacfae654e`  
		Last Modified: Fri, 11 Sep 2026 23:26:38 GMT  
		Size: 46.5 MB (46478146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ada0979502f8f7abd85ba0435fcb7067b05550bff6128e4134073acd163ac05b`  
		Last Modified: Sat, 12 Sep 2026 00:11:35 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d54abfbd047a20046ecee67605c81c7e818d6b7419167f3fa38357ca2225cc9`  
		Last Modified: Sat, 12 Sep 2026 00:11:35 GMT  
		Size: 737.5 KB (737527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c05685e96e736db586e0fd86a8cca674e2cee903db54a1cab0b0814e4f5d2116`  
		Last Modified: Sat, 12 Sep 2026 00:11:35 GMT  
		Size: 5.8 MB (5817124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e243dd5082eb157c52bb9e2439a1c8802c68ed4a7566049be2bd3b0035a4ceef`  
		Last Modified: Sat, 12 Sep 2026 00:11:35 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84053a51c7abd93a3aed649dd39d2fd06a4e225b027a15414d8fd7e83cfde2c9`  
		Last Modified: Sat, 12 Sep 2026 00:11:36 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:323967c89d8b6b2146a19fcf6791bb3e0885148b316aae97aba79728a112d8d0`  
		Last Modified: Sat, 12 Sep 2026 00:11:38 GMT  
		Size: 49.9 MB (49858632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d27ff5c3f2f34021f385ea0b424aae2febcd328520c5b35dd781191d2740855d`  
		Last Modified: Sat, 12 Sep 2026 00:11:36 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2804363ed73f49ad2935b157382ee1fef64de320c5b7a3a430a264fcdfa5202f`  
		Last Modified: Sat, 12 Sep 2026 00:11:40 GMT  
		Size: 130.8 MB (130785927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85f8245d16bca5e7c058ceebbc03a55a63ad2a93af64f7a8779aa434193565e9`  
		Last Modified: Sat, 12 Sep 2026 00:11:37 GMT  
		Size: 5.2 KB (5223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4.11-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:ad108e2ce2a94a64f1a5e0ab10c094af0d01f8cd5fdfeb8b1b935791373a3d45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15743896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3619db5cba95d342fd27af89656cbca55ba93e79b7404c13f01f06e03f15762`

```dockerfile
```

-	Layers:
	-	`sha256:b7a50f323dbc42b9f4b9d96a60d3bbda853929e6a4b69257acd341bfd7227878`  
		Last Modified: Sat, 12 Sep 2026 00:11:35 GMT  
		Size: 15.7 MB (15710314 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:afd5c48d0a16fb41ed4e5a2104d06b96b2fab2f696af39f483cfc423e2377dfc`  
		Last Modified: Sat, 12 Sep 2026 00:11:35 GMT  
		Size: 33.6 KB (33582 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9`

```console
$ docker pull mysql@sha256:29abb0a179982e4a8928138bfc7f918af9eda64e7eeb1b1d084c1720a20159e6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9` - linux; amd64

```console
$ docker pull mysql@sha256:fb28a51a17c84c907284a8124cfd888ffbe6f83457182baaa6f359c87b87c241
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.9 MB (270908995 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3234c1932b5583273f2a12735f99d44836f67dc63167bb8e16163a209ed54d3a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 11 Sep 2026 23:24:06 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Fri, 11 Sep 2026 23:24:06 GMT
CMD ["/bin/bash"]
# Sat, 12 Sep 2026 00:09:02 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Sat, 12 Sep 2026 00:09:04 GMT
ENV GOSU_VERSION=1.19
# Sat, 12 Sep 2026 00:09:04 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 12 Sep 2026 00:09:34 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Sat, 12 Sep 2026 00:09:35 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Sat, 12 Sep 2026 00:09:35 GMT
ENV MYSQL_MAJOR=9.7
# Sat, 12 Sep 2026 00:09:35 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Sat, 12 Sep 2026 00:09:35 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Sat, 12 Sep 2026 00:10:08 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Sat, 12 Sep 2026 00:10:08 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Sat, 12 Sep 2026 00:10:08 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Sat, 12 Sep 2026 00:10:51 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Sat, 12 Sep 2026 00:10:51 GMT
VOLUME [/var/lib/mysql]
# Sat, 12 Sep 2026 00:10:51 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 12 Sep 2026 00:10:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 12 Sep 2026 00:10:51 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Sat, 12 Sep 2026 00:10:51 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:13c85306055eb6ecca743420c9a29fec0936e01bea1df866947ecc554f9b7235`  
		Last Modified: Fri, 11 Sep 2026 23:24:17 GMT  
		Size: 47.9 MB (47931319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c4e0a435260fc829e6467cb48522ab5045e1aefa7d2f627cee5cddb7ee3ecdb`  
		Last Modified: Sat, 12 Sep 2026 00:11:22 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14270c78a6c55bf9bec238e906e3c66cf42250d21671598c6aa0d8557645466c`  
		Last Modified: Sat, 12 Sep 2026 00:11:22 GMT  
		Size: 783.6 KB (783556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5913e52d5cae2fd96a53fd1d59caed052635284454600b97f9dd859e42191fda`  
		Last Modified: Sat, 12 Sep 2026 00:11:22 GMT  
		Size: 6.2 MB (6193403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13b105d8f6268f46a8887f58d9327182235c6cf750df9ef1f129c08d8973d217`  
		Last Modified: Sat, 12 Sep 2026 00:11:22 GMT  
		Size: 2.6 KB (2606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb5f936c3d8fc12cbedf1db503a1afd91baa6110ce5c4cf636494e1b1e99f7cd`  
		Last Modified: Sat, 12 Sep 2026 00:11:23 GMT  
		Size: 331.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ef76de4774dd029da1503a431685f786a3dcb954fdf73501c79acf55e9869e6`  
		Last Modified: Sat, 12 Sep 2026 00:11:25 GMT  
		Size: 57.1 MB (57050260 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba37f2004dfc90c8c58e27d8b2139cefbf25b0c953d431565192fbe9012540ae`  
		Last Modified: Sat, 12 Sep 2026 00:11:23 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9375bfa1384e6b65ac458505278ee5d46cea9dcfc046ebb82e5d0f7e6709bd52`  
		Last Modified: Sat, 12 Sep 2026 00:11:27 GMT  
		Size: 158.9 MB (158941093 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c47902efba569bf9ce0721bfb083c4cfa161b458727fb0a24be7dc291a00fc01`  
		Last Modified: Sat, 12 Sep 2026 00:11:24 GMT  
		Size: 5.2 KB (5221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9` - unknown; unknown

```console
$ docker pull mysql@sha256:a982f254285f6f15783b8ce79d0beb991071c1d14fdfae5954db15daa1ebd157
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb50080ab5e499ba9d0d1af17867a4823e2bae262ee608e18361374fbbf20e5c`

```dockerfile
```

-	Layers:
	-	`sha256:ff8ec1142db1bfb2ae25176626938567a2566171e09553591b6a546da2a0dc4b`  
		Last Modified: Sat, 12 Sep 2026 00:11:23 GMT  
		Size: 16.8 MB (16799179 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ebb6efdbe088327f60d14d412d69ee2f8d745622fbda9c5af1fca5c518025e24`  
		Last Modified: Sat, 12 Sep 2026 00:11:22 GMT  
		Size: 34.2 KB (34208 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:c18347cec3191469d0928f8bd01610c8c6b587b3a1a6ae2c9f337ee7ba683ccc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.4 MB (267373446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aaad7d7e73277d8b2ab2994340b2ea499c26eff3913e5fa20944f442b6b9ac92`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 11 Sep 2026 23:26:27 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Fri, 11 Sep 2026 23:26:27 GMT
CMD ["/bin/bash"]
# Sat, 12 Sep 2026 00:08:55 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Sat, 12 Sep 2026 00:08:56 GMT
ENV GOSU_VERSION=1.19
# Sat, 12 Sep 2026 00:08:56 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 12 Sep 2026 00:09:33 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Sat, 12 Sep 2026 00:09:34 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Sat, 12 Sep 2026 00:09:34 GMT
ENV MYSQL_MAJOR=9.7
# Sat, 12 Sep 2026 00:09:34 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Sat, 12 Sep 2026 00:09:34 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Sat, 12 Sep 2026 00:10:14 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Sat, 12 Sep 2026 00:10:14 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Sat, 12 Sep 2026 00:10:14 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Sat, 12 Sep 2026 00:11:07 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Sat, 12 Sep 2026 00:11:07 GMT
VOLUME [/var/lib/mysql]
# Sat, 12 Sep 2026 00:11:07 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 12 Sep 2026 00:11:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 12 Sep 2026 00:11:07 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Sat, 12 Sep 2026 00:11:07 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:8e88a63a99d33b759690f9a9c14fa268d0d7021d7ba10b95738853eacfae654e`  
		Last Modified: Fri, 11 Sep 2026 23:26:38 GMT  
		Size: 46.5 MB (46478146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ada0979502f8f7abd85ba0435fcb7067b05550bff6128e4134073acd163ac05b`  
		Last Modified: Sat, 12 Sep 2026 00:11:35 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d54abfbd047a20046ecee67605c81c7e818d6b7419167f3fa38357ca2225cc9`  
		Last Modified: Sat, 12 Sep 2026 00:11:35 GMT  
		Size: 737.5 KB (737527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5777c8ba3f1ae47448d427adc5e83c54eecebac51f7ca340c772c31ecefdecb`  
		Last Modified: Sat, 12 Sep 2026 00:11:42 GMT  
		Size: 5.8 MB (5817167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:805d36d9332f45379f1ee1960ec35e460c24e6062f6b8a17bb8b565b35d6f083`  
		Last Modified: Sat, 12 Sep 2026 00:11:42 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d44230efaa8cab58a8f99af8b6c3af5f154471b0b6de4ce8b21c937448bbb1f`  
		Last Modified: Sat, 12 Sep 2026 00:11:42 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f75ec904076cb57a4cea5a5adbc074599794aa7aa45dd62a6e3110658f1c29a2`  
		Last Modified: Sat, 12 Sep 2026 00:11:44 GMT  
		Size: 57.1 MB (57118816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50cc20c89e6f69e3cc7e4e99d86284dacdbc52d5d68a28f33c7250b8d9e00c3f`  
		Last Modified: Sat, 12 Sep 2026 00:11:43 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:230672aac3ce9a80ffccab3ddac333101482fd0c49797f762ba54123560b3c11`  
		Last Modified: Sat, 12 Sep 2026 00:11:47 GMT  
		Size: 157.2 MB (157212423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b3cb983cc15bd0b6270e9f4079ac35ffe79ade9130b7863777872529ec342ff`  
		Last Modified: Sat, 12 Sep 2026 00:11:44 GMT  
		Size: 5.2 KB (5222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9` - unknown; unknown

```console
$ docker pull mysql@sha256:a6baf7fe73d8caa02a46f2bbe6db6fb9f888890ee91e9b87f02fc30c41555529
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16832127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a6cafb610ce5b34acd91a40d91038d056fb1d1956a0deb5b4efc1abde0ce04f`

```dockerfile
```

-	Layers:
	-	`sha256:490fc9f70f50840c0cd41e3975184568a93bae338caaa22874a80179b84f8374`  
		Last Modified: Sat, 12 Sep 2026 00:11:43 GMT  
		Size: 16.8 MB (16797615 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:706415bf299e8837a2384d0367c2a37dc2cc0738be5cb7ae6c78b1aa5dcae327`  
		Last Modified: Sat, 12 Sep 2026 00:11:42 GMT  
		Size: 34.5 KB (34512 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9-oracle`

```console
$ docker pull mysql@sha256:29abb0a179982e4a8928138bfc7f918af9eda64e7eeb1b1d084c1720a20159e6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:fb28a51a17c84c907284a8124cfd888ffbe6f83457182baaa6f359c87b87c241
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.9 MB (270908995 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3234c1932b5583273f2a12735f99d44836f67dc63167bb8e16163a209ed54d3a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 11 Sep 2026 23:24:06 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Fri, 11 Sep 2026 23:24:06 GMT
CMD ["/bin/bash"]
# Sat, 12 Sep 2026 00:09:02 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Sat, 12 Sep 2026 00:09:04 GMT
ENV GOSU_VERSION=1.19
# Sat, 12 Sep 2026 00:09:04 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 12 Sep 2026 00:09:34 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Sat, 12 Sep 2026 00:09:35 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Sat, 12 Sep 2026 00:09:35 GMT
ENV MYSQL_MAJOR=9.7
# Sat, 12 Sep 2026 00:09:35 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Sat, 12 Sep 2026 00:09:35 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Sat, 12 Sep 2026 00:10:08 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Sat, 12 Sep 2026 00:10:08 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Sat, 12 Sep 2026 00:10:08 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Sat, 12 Sep 2026 00:10:51 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Sat, 12 Sep 2026 00:10:51 GMT
VOLUME [/var/lib/mysql]
# Sat, 12 Sep 2026 00:10:51 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 12 Sep 2026 00:10:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 12 Sep 2026 00:10:51 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Sat, 12 Sep 2026 00:10:51 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:13c85306055eb6ecca743420c9a29fec0936e01bea1df866947ecc554f9b7235`  
		Last Modified: Fri, 11 Sep 2026 23:24:17 GMT  
		Size: 47.9 MB (47931319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c4e0a435260fc829e6467cb48522ab5045e1aefa7d2f627cee5cddb7ee3ecdb`  
		Last Modified: Sat, 12 Sep 2026 00:11:22 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14270c78a6c55bf9bec238e906e3c66cf42250d21671598c6aa0d8557645466c`  
		Last Modified: Sat, 12 Sep 2026 00:11:22 GMT  
		Size: 783.6 KB (783556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5913e52d5cae2fd96a53fd1d59caed052635284454600b97f9dd859e42191fda`  
		Last Modified: Sat, 12 Sep 2026 00:11:22 GMT  
		Size: 6.2 MB (6193403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13b105d8f6268f46a8887f58d9327182235c6cf750df9ef1f129c08d8973d217`  
		Last Modified: Sat, 12 Sep 2026 00:11:22 GMT  
		Size: 2.6 KB (2606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb5f936c3d8fc12cbedf1db503a1afd91baa6110ce5c4cf636494e1b1e99f7cd`  
		Last Modified: Sat, 12 Sep 2026 00:11:23 GMT  
		Size: 331.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ef76de4774dd029da1503a431685f786a3dcb954fdf73501c79acf55e9869e6`  
		Last Modified: Sat, 12 Sep 2026 00:11:25 GMT  
		Size: 57.1 MB (57050260 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba37f2004dfc90c8c58e27d8b2139cefbf25b0c953d431565192fbe9012540ae`  
		Last Modified: Sat, 12 Sep 2026 00:11:23 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9375bfa1384e6b65ac458505278ee5d46cea9dcfc046ebb82e5d0f7e6709bd52`  
		Last Modified: Sat, 12 Sep 2026 00:11:27 GMT  
		Size: 158.9 MB (158941093 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c47902efba569bf9ce0721bfb083c4cfa161b458727fb0a24be7dc291a00fc01`  
		Last Modified: Sat, 12 Sep 2026 00:11:24 GMT  
		Size: 5.2 KB (5221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:a982f254285f6f15783b8ce79d0beb991071c1d14fdfae5954db15daa1ebd157
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb50080ab5e499ba9d0d1af17867a4823e2bae262ee608e18361374fbbf20e5c`

```dockerfile
```

-	Layers:
	-	`sha256:ff8ec1142db1bfb2ae25176626938567a2566171e09553591b6a546da2a0dc4b`  
		Last Modified: Sat, 12 Sep 2026 00:11:23 GMT  
		Size: 16.8 MB (16799179 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ebb6efdbe088327f60d14d412d69ee2f8d745622fbda9c5af1fca5c518025e24`  
		Last Modified: Sat, 12 Sep 2026 00:11:22 GMT  
		Size: 34.2 KB (34208 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:c18347cec3191469d0928f8bd01610c8c6b587b3a1a6ae2c9f337ee7ba683ccc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.4 MB (267373446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aaad7d7e73277d8b2ab2994340b2ea499c26eff3913e5fa20944f442b6b9ac92`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 11 Sep 2026 23:26:27 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Fri, 11 Sep 2026 23:26:27 GMT
CMD ["/bin/bash"]
# Sat, 12 Sep 2026 00:08:55 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Sat, 12 Sep 2026 00:08:56 GMT
ENV GOSU_VERSION=1.19
# Sat, 12 Sep 2026 00:08:56 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 12 Sep 2026 00:09:33 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Sat, 12 Sep 2026 00:09:34 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Sat, 12 Sep 2026 00:09:34 GMT
ENV MYSQL_MAJOR=9.7
# Sat, 12 Sep 2026 00:09:34 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Sat, 12 Sep 2026 00:09:34 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Sat, 12 Sep 2026 00:10:14 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Sat, 12 Sep 2026 00:10:14 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Sat, 12 Sep 2026 00:10:14 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Sat, 12 Sep 2026 00:11:07 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Sat, 12 Sep 2026 00:11:07 GMT
VOLUME [/var/lib/mysql]
# Sat, 12 Sep 2026 00:11:07 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 12 Sep 2026 00:11:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 12 Sep 2026 00:11:07 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Sat, 12 Sep 2026 00:11:07 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:8e88a63a99d33b759690f9a9c14fa268d0d7021d7ba10b95738853eacfae654e`  
		Last Modified: Fri, 11 Sep 2026 23:26:38 GMT  
		Size: 46.5 MB (46478146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ada0979502f8f7abd85ba0435fcb7067b05550bff6128e4134073acd163ac05b`  
		Last Modified: Sat, 12 Sep 2026 00:11:35 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d54abfbd047a20046ecee67605c81c7e818d6b7419167f3fa38357ca2225cc9`  
		Last Modified: Sat, 12 Sep 2026 00:11:35 GMT  
		Size: 737.5 KB (737527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5777c8ba3f1ae47448d427adc5e83c54eecebac51f7ca340c772c31ecefdecb`  
		Last Modified: Sat, 12 Sep 2026 00:11:42 GMT  
		Size: 5.8 MB (5817167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:805d36d9332f45379f1ee1960ec35e460c24e6062f6b8a17bb8b565b35d6f083`  
		Last Modified: Sat, 12 Sep 2026 00:11:42 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d44230efaa8cab58a8f99af8b6c3af5f154471b0b6de4ce8b21c937448bbb1f`  
		Last Modified: Sat, 12 Sep 2026 00:11:42 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f75ec904076cb57a4cea5a5adbc074599794aa7aa45dd62a6e3110658f1c29a2`  
		Last Modified: Sat, 12 Sep 2026 00:11:44 GMT  
		Size: 57.1 MB (57118816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50cc20c89e6f69e3cc7e4e99d86284dacdbc52d5d68a28f33c7250b8d9e00c3f`  
		Last Modified: Sat, 12 Sep 2026 00:11:43 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:230672aac3ce9a80ffccab3ddac333101482fd0c49797f762ba54123560b3c11`  
		Last Modified: Sat, 12 Sep 2026 00:11:47 GMT  
		Size: 157.2 MB (157212423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b3cb983cc15bd0b6270e9f4079ac35ffe79ade9130b7863777872529ec342ff`  
		Last Modified: Sat, 12 Sep 2026 00:11:44 GMT  
		Size: 5.2 KB (5222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:a6baf7fe73d8caa02a46f2bbe6db6fb9f888890ee91e9b87f02fc30c41555529
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16832127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a6cafb610ce5b34acd91a40d91038d056fb1d1956a0deb5b4efc1abde0ce04f`

```dockerfile
```

-	Layers:
	-	`sha256:490fc9f70f50840c0cd41e3975184568a93bae338caaa22874a80179b84f8374`  
		Last Modified: Sat, 12 Sep 2026 00:11:43 GMT  
		Size: 16.8 MB (16797615 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:706415bf299e8837a2384d0367c2a37dc2cc0738be5cb7ae6c78b1aa5dcae327`  
		Last Modified: Sat, 12 Sep 2026 00:11:42 GMT  
		Size: 34.5 KB (34512 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9-oraclelinux9`

```console
$ docker pull mysql@sha256:29abb0a179982e4a8928138bfc7f918af9eda64e7eeb1b1d084c1720a20159e6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:fb28a51a17c84c907284a8124cfd888ffbe6f83457182baaa6f359c87b87c241
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.9 MB (270908995 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3234c1932b5583273f2a12735f99d44836f67dc63167bb8e16163a209ed54d3a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 11 Sep 2026 23:24:06 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Fri, 11 Sep 2026 23:24:06 GMT
CMD ["/bin/bash"]
# Sat, 12 Sep 2026 00:09:02 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Sat, 12 Sep 2026 00:09:04 GMT
ENV GOSU_VERSION=1.19
# Sat, 12 Sep 2026 00:09:04 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 12 Sep 2026 00:09:34 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Sat, 12 Sep 2026 00:09:35 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Sat, 12 Sep 2026 00:09:35 GMT
ENV MYSQL_MAJOR=9.7
# Sat, 12 Sep 2026 00:09:35 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Sat, 12 Sep 2026 00:09:35 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Sat, 12 Sep 2026 00:10:08 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Sat, 12 Sep 2026 00:10:08 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Sat, 12 Sep 2026 00:10:08 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Sat, 12 Sep 2026 00:10:51 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Sat, 12 Sep 2026 00:10:51 GMT
VOLUME [/var/lib/mysql]
# Sat, 12 Sep 2026 00:10:51 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 12 Sep 2026 00:10:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 12 Sep 2026 00:10:51 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Sat, 12 Sep 2026 00:10:51 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:13c85306055eb6ecca743420c9a29fec0936e01bea1df866947ecc554f9b7235`  
		Last Modified: Fri, 11 Sep 2026 23:24:17 GMT  
		Size: 47.9 MB (47931319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c4e0a435260fc829e6467cb48522ab5045e1aefa7d2f627cee5cddb7ee3ecdb`  
		Last Modified: Sat, 12 Sep 2026 00:11:22 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14270c78a6c55bf9bec238e906e3c66cf42250d21671598c6aa0d8557645466c`  
		Last Modified: Sat, 12 Sep 2026 00:11:22 GMT  
		Size: 783.6 KB (783556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5913e52d5cae2fd96a53fd1d59caed052635284454600b97f9dd859e42191fda`  
		Last Modified: Sat, 12 Sep 2026 00:11:22 GMT  
		Size: 6.2 MB (6193403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13b105d8f6268f46a8887f58d9327182235c6cf750df9ef1f129c08d8973d217`  
		Last Modified: Sat, 12 Sep 2026 00:11:22 GMT  
		Size: 2.6 KB (2606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb5f936c3d8fc12cbedf1db503a1afd91baa6110ce5c4cf636494e1b1e99f7cd`  
		Last Modified: Sat, 12 Sep 2026 00:11:23 GMT  
		Size: 331.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ef76de4774dd029da1503a431685f786a3dcb954fdf73501c79acf55e9869e6`  
		Last Modified: Sat, 12 Sep 2026 00:11:25 GMT  
		Size: 57.1 MB (57050260 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba37f2004dfc90c8c58e27d8b2139cefbf25b0c953d431565192fbe9012540ae`  
		Last Modified: Sat, 12 Sep 2026 00:11:23 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9375bfa1384e6b65ac458505278ee5d46cea9dcfc046ebb82e5d0f7e6709bd52`  
		Last Modified: Sat, 12 Sep 2026 00:11:27 GMT  
		Size: 158.9 MB (158941093 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c47902efba569bf9ce0721bfb083c4cfa161b458727fb0a24be7dc291a00fc01`  
		Last Modified: Sat, 12 Sep 2026 00:11:24 GMT  
		Size: 5.2 KB (5221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:a982f254285f6f15783b8ce79d0beb991071c1d14fdfae5954db15daa1ebd157
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb50080ab5e499ba9d0d1af17867a4823e2bae262ee608e18361374fbbf20e5c`

```dockerfile
```

-	Layers:
	-	`sha256:ff8ec1142db1bfb2ae25176626938567a2566171e09553591b6a546da2a0dc4b`  
		Last Modified: Sat, 12 Sep 2026 00:11:23 GMT  
		Size: 16.8 MB (16799179 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ebb6efdbe088327f60d14d412d69ee2f8d745622fbda9c5af1fca5c518025e24`  
		Last Modified: Sat, 12 Sep 2026 00:11:22 GMT  
		Size: 34.2 KB (34208 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:c18347cec3191469d0928f8bd01610c8c6b587b3a1a6ae2c9f337ee7ba683ccc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.4 MB (267373446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aaad7d7e73277d8b2ab2994340b2ea499c26eff3913e5fa20944f442b6b9ac92`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 11 Sep 2026 23:26:27 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Fri, 11 Sep 2026 23:26:27 GMT
CMD ["/bin/bash"]
# Sat, 12 Sep 2026 00:08:55 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Sat, 12 Sep 2026 00:08:56 GMT
ENV GOSU_VERSION=1.19
# Sat, 12 Sep 2026 00:08:56 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 12 Sep 2026 00:09:33 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Sat, 12 Sep 2026 00:09:34 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Sat, 12 Sep 2026 00:09:34 GMT
ENV MYSQL_MAJOR=9.7
# Sat, 12 Sep 2026 00:09:34 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Sat, 12 Sep 2026 00:09:34 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Sat, 12 Sep 2026 00:10:14 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Sat, 12 Sep 2026 00:10:14 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Sat, 12 Sep 2026 00:10:14 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Sat, 12 Sep 2026 00:11:07 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Sat, 12 Sep 2026 00:11:07 GMT
VOLUME [/var/lib/mysql]
# Sat, 12 Sep 2026 00:11:07 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 12 Sep 2026 00:11:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 12 Sep 2026 00:11:07 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Sat, 12 Sep 2026 00:11:07 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:8e88a63a99d33b759690f9a9c14fa268d0d7021d7ba10b95738853eacfae654e`  
		Last Modified: Fri, 11 Sep 2026 23:26:38 GMT  
		Size: 46.5 MB (46478146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ada0979502f8f7abd85ba0435fcb7067b05550bff6128e4134073acd163ac05b`  
		Last Modified: Sat, 12 Sep 2026 00:11:35 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d54abfbd047a20046ecee67605c81c7e818d6b7419167f3fa38357ca2225cc9`  
		Last Modified: Sat, 12 Sep 2026 00:11:35 GMT  
		Size: 737.5 KB (737527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5777c8ba3f1ae47448d427adc5e83c54eecebac51f7ca340c772c31ecefdecb`  
		Last Modified: Sat, 12 Sep 2026 00:11:42 GMT  
		Size: 5.8 MB (5817167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:805d36d9332f45379f1ee1960ec35e460c24e6062f6b8a17bb8b565b35d6f083`  
		Last Modified: Sat, 12 Sep 2026 00:11:42 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d44230efaa8cab58a8f99af8b6c3af5f154471b0b6de4ce8b21c937448bbb1f`  
		Last Modified: Sat, 12 Sep 2026 00:11:42 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f75ec904076cb57a4cea5a5adbc074599794aa7aa45dd62a6e3110658f1c29a2`  
		Last Modified: Sat, 12 Sep 2026 00:11:44 GMT  
		Size: 57.1 MB (57118816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50cc20c89e6f69e3cc7e4e99d86284dacdbc52d5d68a28f33c7250b8d9e00c3f`  
		Last Modified: Sat, 12 Sep 2026 00:11:43 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:230672aac3ce9a80ffccab3ddac333101482fd0c49797f762ba54123560b3c11`  
		Last Modified: Sat, 12 Sep 2026 00:11:47 GMT  
		Size: 157.2 MB (157212423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b3cb983cc15bd0b6270e9f4079ac35ffe79ade9130b7863777872529ec342ff`  
		Last Modified: Sat, 12 Sep 2026 00:11:44 GMT  
		Size: 5.2 KB (5222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:a6baf7fe73d8caa02a46f2bbe6db6fb9f888890ee91e9b87f02fc30c41555529
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16832127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a6cafb610ce5b34acd91a40d91038d056fb1d1956a0deb5b4efc1abde0ce04f`

```dockerfile
```

-	Layers:
	-	`sha256:490fc9f70f50840c0cd41e3975184568a93bae338caaa22874a80179b84f8374`  
		Last Modified: Sat, 12 Sep 2026 00:11:43 GMT  
		Size: 16.8 MB (16797615 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:706415bf299e8837a2384d0367c2a37dc2cc0738be5cb7ae6c78b1aa5dcae327`  
		Last Modified: Sat, 12 Sep 2026 00:11:42 GMT  
		Size: 34.5 KB (34512 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9.7`

```console
$ docker pull mysql@sha256:29abb0a179982e4a8928138bfc7f918af9eda64e7eeb1b1d084c1720a20159e6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9.7` - linux; amd64

```console
$ docker pull mysql@sha256:fb28a51a17c84c907284a8124cfd888ffbe6f83457182baaa6f359c87b87c241
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.9 MB (270908995 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3234c1932b5583273f2a12735f99d44836f67dc63167bb8e16163a209ed54d3a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 11 Sep 2026 23:24:06 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Fri, 11 Sep 2026 23:24:06 GMT
CMD ["/bin/bash"]
# Sat, 12 Sep 2026 00:09:02 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Sat, 12 Sep 2026 00:09:04 GMT
ENV GOSU_VERSION=1.19
# Sat, 12 Sep 2026 00:09:04 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 12 Sep 2026 00:09:34 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Sat, 12 Sep 2026 00:09:35 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Sat, 12 Sep 2026 00:09:35 GMT
ENV MYSQL_MAJOR=9.7
# Sat, 12 Sep 2026 00:09:35 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Sat, 12 Sep 2026 00:09:35 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Sat, 12 Sep 2026 00:10:08 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Sat, 12 Sep 2026 00:10:08 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Sat, 12 Sep 2026 00:10:08 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Sat, 12 Sep 2026 00:10:51 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Sat, 12 Sep 2026 00:10:51 GMT
VOLUME [/var/lib/mysql]
# Sat, 12 Sep 2026 00:10:51 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 12 Sep 2026 00:10:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 12 Sep 2026 00:10:51 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Sat, 12 Sep 2026 00:10:51 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:13c85306055eb6ecca743420c9a29fec0936e01bea1df866947ecc554f9b7235`  
		Last Modified: Fri, 11 Sep 2026 23:24:17 GMT  
		Size: 47.9 MB (47931319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c4e0a435260fc829e6467cb48522ab5045e1aefa7d2f627cee5cddb7ee3ecdb`  
		Last Modified: Sat, 12 Sep 2026 00:11:22 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14270c78a6c55bf9bec238e906e3c66cf42250d21671598c6aa0d8557645466c`  
		Last Modified: Sat, 12 Sep 2026 00:11:22 GMT  
		Size: 783.6 KB (783556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5913e52d5cae2fd96a53fd1d59caed052635284454600b97f9dd859e42191fda`  
		Last Modified: Sat, 12 Sep 2026 00:11:22 GMT  
		Size: 6.2 MB (6193403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13b105d8f6268f46a8887f58d9327182235c6cf750df9ef1f129c08d8973d217`  
		Last Modified: Sat, 12 Sep 2026 00:11:22 GMT  
		Size: 2.6 KB (2606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb5f936c3d8fc12cbedf1db503a1afd91baa6110ce5c4cf636494e1b1e99f7cd`  
		Last Modified: Sat, 12 Sep 2026 00:11:23 GMT  
		Size: 331.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ef76de4774dd029da1503a431685f786a3dcb954fdf73501c79acf55e9869e6`  
		Last Modified: Sat, 12 Sep 2026 00:11:25 GMT  
		Size: 57.1 MB (57050260 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba37f2004dfc90c8c58e27d8b2139cefbf25b0c953d431565192fbe9012540ae`  
		Last Modified: Sat, 12 Sep 2026 00:11:23 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9375bfa1384e6b65ac458505278ee5d46cea9dcfc046ebb82e5d0f7e6709bd52`  
		Last Modified: Sat, 12 Sep 2026 00:11:27 GMT  
		Size: 158.9 MB (158941093 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c47902efba569bf9ce0721bfb083c4cfa161b458727fb0a24be7dc291a00fc01`  
		Last Modified: Sat, 12 Sep 2026 00:11:24 GMT  
		Size: 5.2 KB (5221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7` - unknown; unknown

```console
$ docker pull mysql@sha256:a982f254285f6f15783b8ce79d0beb991071c1d14fdfae5954db15daa1ebd157
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb50080ab5e499ba9d0d1af17867a4823e2bae262ee608e18361374fbbf20e5c`

```dockerfile
```

-	Layers:
	-	`sha256:ff8ec1142db1bfb2ae25176626938567a2566171e09553591b6a546da2a0dc4b`  
		Last Modified: Sat, 12 Sep 2026 00:11:23 GMT  
		Size: 16.8 MB (16799179 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ebb6efdbe088327f60d14d412d69ee2f8d745622fbda9c5af1fca5c518025e24`  
		Last Modified: Sat, 12 Sep 2026 00:11:22 GMT  
		Size: 34.2 KB (34208 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9.7` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:c18347cec3191469d0928f8bd01610c8c6b587b3a1a6ae2c9f337ee7ba683ccc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.4 MB (267373446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aaad7d7e73277d8b2ab2994340b2ea499c26eff3913e5fa20944f442b6b9ac92`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 11 Sep 2026 23:26:27 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Fri, 11 Sep 2026 23:26:27 GMT
CMD ["/bin/bash"]
# Sat, 12 Sep 2026 00:08:55 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Sat, 12 Sep 2026 00:08:56 GMT
ENV GOSU_VERSION=1.19
# Sat, 12 Sep 2026 00:08:56 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 12 Sep 2026 00:09:33 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Sat, 12 Sep 2026 00:09:34 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Sat, 12 Sep 2026 00:09:34 GMT
ENV MYSQL_MAJOR=9.7
# Sat, 12 Sep 2026 00:09:34 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Sat, 12 Sep 2026 00:09:34 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Sat, 12 Sep 2026 00:10:14 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Sat, 12 Sep 2026 00:10:14 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Sat, 12 Sep 2026 00:10:14 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Sat, 12 Sep 2026 00:11:07 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Sat, 12 Sep 2026 00:11:07 GMT
VOLUME [/var/lib/mysql]
# Sat, 12 Sep 2026 00:11:07 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 12 Sep 2026 00:11:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 12 Sep 2026 00:11:07 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Sat, 12 Sep 2026 00:11:07 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:8e88a63a99d33b759690f9a9c14fa268d0d7021d7ba10b95738853eacfae654e`  
		Last Modified: Fri, 11 Sep 2026 23:26:38 GMT  
		Size: 46.5 MB (46478146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ada0979502f8f7abd85ba0435fcb7067b05550bff6128e4134073acd163ac05b`  
		Last Modified: Sat, 12 Sep 2026 00:11:35 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d54abfbd047a20046ecee67605c81c7e818d6b7419167f3fa38357ca2225cc9`  
		Last Modified: Sat, 12 Sep 2026 00:11:35 GMT  
		Size: 737.5 KB (737527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5777c8ba3f1ae47448d427adc5e83c54eecebac51f7ca340c772c31ecefdecb`  
		Last Modified: Sat, 12 Sep 2026 00:11:42 GMT  
		Size: 5.8 MB (5817167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:805d36d9332f45379f1ee1960ec35e460c24e6062f6b8a17bb8b565b35d6f083`  
		Last Modified: Sat, 12 Sep 2026 00:11:42 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d44230efaa8cab58a8f99af8b6c3af5f154471b0b6de4ce8b21c937448bbb1f`  
		Last Modified: Sat, 12 Sep 2026 00:11:42 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f75ec904076cb57a4cea5a5adbc074599794aa7aa45dd62a6e3110658f1c29a2`  
		Last Modified: Sat, 12 Sep 2026 00:11:44 GMT  
		Size: 57.1 MB (57118816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50cc20c89e6f69e3cc7e4e99d86284dacdbc52d5d68a28f33c7250b8d9e00c3f`  
		Last Modified: Sat, 12 Sep 2026 00:11:43 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:230672aac3ce9a80ffccab3ddac333101482fd0c49797f762ba54123560b3c11`  
		Last Modified: Sat, 12 Sep 2026 00:11:47 GMT  
		Size: 157.2 MB (157212423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b3cb983cc15bd0b6270e9f4079ac35ffe79ade9130b7863777872529ec342ff`  
		Last Modified: Sat, 12 Sep 2026 00:11:44 GMT  
		Size: 5.2 KB (5222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7` - unknown; unknown

```console
$ docker pull mysql@sha256:a6baf7fe73d8caa02a46f2bbe6db6fb9f888890ee91e9b87f02fc30c41555529
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16832127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a6cafb610ce5b34acd91a40d91038d056fb1d1956a0deb5b4efc1abde0ce04f`

```dockerfile
```

-	Layers:
	-	`sha256:490fc9f70f50840c0cd41e3975184568a93bae338caaa22874a80179b84f8374`  
		Last Modified: Sat, 12 Sep 2026 00:11:43 GMT  
		Size: 16.8 MB (16797615 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:706415bf299e8837a2384d0367c2a37dc2cc0738be5cb7ae6c78b1aa5dcae327`  
		Last Modified: Sat, 12 Sep 2026 00:11:42 GMT  
		Size: 34.5 KB (34512 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9.7-oracle`

```console
$ docker pull mysql@sha256:29abb0a179982e4a8928138bfc7f918af9eda64e7eeb1b1d084c1720a20159e6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9.7-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:fb28a51a17c84c907284a8124cfd888ffbe6f83457182baaa6f359c87b87c241
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.9 MB (270908995 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3234c1932b5583273f2a12735f99d44836f67dc63167bb8e16163a209ed54d3a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 11 Sep 2026 23:24:06 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Fri, 11 Sep 2026 23:24:06 GMT
CMD ["/bin/bash"]
# Sat, 12 Sep 2026 00:09:02 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Sat, 12 Sep 2026 00:09:04 GMT
ENV GOSU_VERSION=1.19
# Sat, 12 Sep 2026 00:09:04 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 12 Sep 2026 00:09:34 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Sat, 12 Sep 2026 00:09:35 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Sat, 12 Sep 2026 00:09:35 GMT
ENV MYSQL_MAJOR=9.7
# Sat, 12 Sep 2026 00:09:35 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Sat, 12 Sep 2026 00:09:35 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Sat, 12 Sep 2026 00:10:08 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Sat, 12 Sep 2026 00:10:08 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Sat, 12 Sep 2026 00:10:08 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Sat, 12 Sep 2026 00:10:51 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Sat, 12 Sep 2026 00:10:51 GMT
VOLUME [/var/lib/mysql]
# Sat, 12 Sep 2026 00:10:51 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 12 Sep 2026 00:10:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 12 Sep 2026 00:10:51 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Sat, 12 Sep 2026 00:10:51 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:13c85306055eb6ecca743420c9a29fec0936e01bea1df866947ecc554f9b7235`  
		Last Modified: Fri, 11 Sep 2026 23:24:17 GMT  
		Size: 47.9 MB (47931319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c4e0a435260fc829e6467cb48522ab5045e1aefa7d2f627cee5cddb7ee3ecdb`  
		Last Modified: Sat, 12 Sep 2026 00:11:22 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14270c78a6c55bf9bec238e906e3c66cf42250d21671598c6aa0d8557645466c`  
		Last Modified: Sat, 12 Sep 2026 00:11:22 GMT  
		Size: 783.6 KB (783556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5913e52d5cae2fd96a53fd1d59caed052635284454600b97f9dd859e42191fda`  
		Last Modified: Sat, 12 Sep 2026 00:11:22 GMT  
		Size: 6.2 MB (6193403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13b105d8f6268f46a8887f58d9327182235c6cf750df9ef1f129c08d8973d217`  
		Last Modified: Sat, 12 Sep 2026 00:11:22 GMT  
		Size: 2.6 KB (2606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb5f936c3d8fc12cbedf1db503a1afd91baa6110ce5c4cf636494e1b1e99f7cd`  
		Last Modified: Sat, 12 Sep 2026 00:11:23 GMT  
		Size: 331.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ef76de4774dd029da1503a431685f786a3dcb954fdf73501c79acf55e9869e6`  
		Last Modified: Sat, 12 Sep 2026 00:11:25 GMT  
		Size: 57.1 MB (57050260 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba37f2004dfc90c8c58e27d8b2139cefbf25b0c953d431565192fbe9012540ae`  
		Last Modified: Sat, 12 Sep 2026 00:11:23 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9375bfa1384e6b65ac458505278ee5d46cea9dcfc046ebb82e5d0f7e6709bd52`  
		Last Modified: Sat, 12 Sep 2026 00:11:27 GMT  
		Size: 158.9 MB (158941093 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c47902efba569bf9ce0721bfb083c4cfa161b458727fb0a24be7dc291a00fc01`  
		Last Modified: Sat, 12 Sep 2026 00:11:24 GMT  
		Size: 5.2 KB (5221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:a982f254285f6f15783b8ce79d0beb991071c1d14fdfae5954db15daa1ebd157
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb50080ab5e499ba9d0d1af17867a4823e2bae262ee608e18361374fbbf20e5c`

```dockerfile
```

-	Layers:
	-	`sha256:ff8ec1142db1bfb2ae25176626938567a2566171e09553591b6a546da2a0dc4b`  
		Last Modified: Sat, 12 Sep 2026 00:11:23 GMT  
		Size: 16.8 MB (16799179 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ebb6efdbe088327f60d14d412d69ee2f8d745622fbda9c5af1fca5c518025e24`  
		Last Modified: Sat, 12 Sep 2026 00:11:22 GMT  
		Size: 34.2 KB (34208 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9.7-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:c18347cec3191469d0928f8bd01610c8c6b587b3a1a6ae2c9f337ee7ba683ccc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.4 MB (267373446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aaad7d7e73277d8b2ab2994340b2ea499c26eff3913e5fa20944f442b6b9ac92`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 11 Sep 2026 23:26:27 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Fri, 11 Sep 2026 23:26:27 GMT
CMD ["/bin/bash"]
# Sat, 12 Sep 2026 00:08:55 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Sat, 12 Sep 2026 00:08:56 GMT
ENV GOSU_VERSION=1.19
# Sat, 12 Sep 2026 00:08:56 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 12 Sep 2026 00:09:33 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Sat, 12 Sep 2026 00:09:34 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Sat, 12 Sep 2026 00:09:34 GMT
ENV MYSQL_MAJOR=9.7
# Sat, 12 Sep 2026 00:09:34 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Sat, 12 Sep 2026 00:09:34 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Sat, 12 Sep 2026 00:10:14 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Sat, 12 Sep 2026 00:10:14 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Sat, 12 Sep 2026 00:10:14 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Sat, 12 Sep 2026 00:11:07 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Sat, 12 Sep 2026 00:11:07 GMT
VOLUME [/var/lib/mysql]
# Sat, 12 Sep 2026 00:11:07 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 12 Sep 2026 00:11:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 12 Sep 2026 00:11:07 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Sat, 12 Sep 2026 00:11:07 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:8e88a63a99d33b759690f9a9c14fa268d0d7021d7ba10b95738853eacfae654e`  
		Last Modified: Fri, 11 Sep 2026 23:26:38 GMT  
		Size: 46.5 MB (46478146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ada0979502f8f7abd85ba0435fcb7067b05550bff6128e4134073acd163ac05b`  
		Last Modified: Sat, 12 Sep 2026 00:11:35 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d54abfbd047a20046ecee67605c81c7e818d6b7419167f3fa38357ca2225cc9`  
		Last Modified: Sat, 12 Sep 2026 00:11:35 GMT  
		Size: 737.5 KB (737527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5777c8ba3f1ae47448d427adc5e83c54eecebac51f7ca340c772c31ecefdecb`  
		Last Modified: Sat, 12 Sep 2026 00:11:42 GMT  
		Size: 5.8 MB (5817167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:805d36d9332f45379f1ee1960ec35e460c24e6062f6b8a17bb8b565b35d6f083`  
		Last Modified: Sat, 12 Sep 2026 00:11:42 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d44230efaa8cab58a8f99af8b6c3af5f154471b0b6de4ce8b21c937448bbb1f`  
		Last Modified: Sat, 12 Sep 2026 00:11:42 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f75ec904076cb57a4cea5a5adbc074599794aa7aa45dd62a6e3110658f1c29a2`  
		Last Modified: Sat, 12 Sep 2026 00:11:44 GMT  
		Size: 57.1 MB (57118816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50cc20c89e6f69e3cc7e4e99d86284dacdbc52d5d68a28f33c7250b8d9e00c3f`  
		Last Modified: Sat, 12 Sep 2026 00:11:43 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:230672aac3ce9a80ffccab3ddac333101482fd0c49797f762ba54123560b3c11`  
		Last Modified: Sat, 12 Sep 2026 00:11:47 GMT  
		Size: 157.2 MB (157212423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b3cb983cc15bd0b6270e9f4079ac35ffe79ade9130b7863777872529ec342ff`  
		Last Modified: Sat, 12 Sep 2026 00:11:44 GMT  
		Size: 5.2 KB (5222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:a6baf7fe73d8caa02a46f2bbe6db6fb9f888890ee91e9b87f02fc30c41555529
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16832127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a6cafb610ce5b34acd91a40d91038d056fb1d1956a0deb5b4efc1abde0ce04f`

```dockerfile
```

-	Layers:
	-	`sha256:490fc9f70f50840c0cd41e3975184568a93bae338caaa22874a80179b84f8374`  
		Last Modified: Sat, 12 Sep 2026 00:11:43 GMT  
		Size: 16.8 MB (16797615 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:706415bf299e8837a2384d0367c2a37dc2cc0738be5cb7ae6c78b1aa5dcae327`  
		Last Modified: Sat, 12 Sep 2026 00:11:42 GMT  
		Size: 34.5 KB (34512 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9.7-oraclelinux9`

```console
$ docker pull mysql@sha256:29abb0a179982e4a8928138bfc7f918af9eda64e7eeb1b1d084c1720a20159e6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9.7-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:fb28a51a17c84c907284a8124cfd888ffbe6f83457182baaa6f359c87b87c241
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.9 MB (270908995 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3234c1932b5583273f2a12735f99d44836f67dc63167bb8e16163a209ed54d3a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 11 Sep 2026 23:24:06 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Fri, 11 Sep 2026 23:24:06 GMT
CMD ["/bin/bash"]
# Sat, 12 Sep 2026 00:09:02 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Sat, 12 Sep 2026 00:09:04 GMT
ENV GOSU_VERSION=1.19
# Sat, 12 Sep 2026 00:09:04 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 12 Sep 2026 00:09:34 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Sat, 12 Sep 2026 00:09:35 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Sat, 12 Sep 2026 00:09:35 GMT
ENV MYSQL_MAJOR=9.7
# Sat, 12 Sep 2026 00:09:35 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Sat, 12 Sep 2026 00:09:35 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Sat, 12 Sep 2026 00:10:08 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Sat, 12 Sep 2026 00:10:08 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Sat, 12 Sep 2026 00:10:08 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Sat, 12 Sep 2026 00:10:51 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Sat, 12 Sep 2026 00:10:51 GMT
VOLUME [/var/lib/mysql]
# Sat, 12 Sep 2026 00:10:51 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 12 Sep 2026 00:10:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 12 Sep 2026 00:10:51 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Sat, 12 Sep 2026 00:10:51 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:13c85306055eb6ecca743420c9a29fec0936e01bea1df866947ecc554f9b7235`  
		Last Modified: Fri, 11 Sep 2026 23:24:17 GMT  
		Size: 47.9 MB (47931319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c4e0a435260fc829e6467cb48522ab5045e1aefa7d2f627cee5cddb7ee3ecdb`  
		Last Modified: Sat, 12 Sep 2026 00:11:22 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14270c78a6c55bf9bec238e906e3c66cf42250d21671598c6aa0d8557645466c`  
		Last Modified: Sat, 12 Sep 2026 00:11:22 GMT  
		Size: 783.6 KB (783556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5913e52d5cae2fd96a53fd1d59caed052635284454600b97f9dd859e42191fda`  
		Last Modified: Sat, 12 Sep 2026 00:11:22 GMT  
		Size: 6.2 MB (6193403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13b105d8f6268f46a8887f58d9327182235c6cf750df9ef1f129c08d8973d217`  
		Last Modified: Sat, 12 Sep 2026 00:11:22 GMT  
		Size: 2.6 KB (2606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb5f936c3d8fc12cbedf1db503a1afd91baa6110ce5c4cf636494e1b1e99f7cd`  
		Last Modified: Sat, 12 Sep 2026 00:11:23 GMT  
		Size: 331.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ef76de4774dd029da1503a431685f786a3dcb954fdf73501c79acf55e9869e6`  
		Last Modified: Sat, 12 Sep 2026 00:11:25 GMT  
		Size: 57.1 MB (57050260 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba37f2004dfc90c8c58e27d8b2139cefbf25b0c953d431565192fbe9012540ae`  
		Last Modified: Sat, 12 Sep 2026 00:11:23 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9375bfa1384e6b65ac458505278ee5d46cea9dcfc046ebb82e5d0f7e6709bd52`  
		Last Modified: Sat, 12 Sep 2026 00:11:27 GMT  
		Size: 158.9 MB (158941093 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c47902efba569bf9ce0721bfb083c4cfa161b458727fb0a24be7dc291a00fc01`  
		Last Modified: Sat, 12 Sep 2026 00:11:24 GMT  
		Size: 5.2 KB (5221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:a982f254285f6f15783b8ce79d0beb991071c1d14fdfae5954db15daa1ebd157
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb50080ab5e499ba9d0d1af17867a4823e2bae262ee608e18361374fbbf20e5c`

```dockerfile
```

-	Layers:
	-	`sha256:ff8ec1142db1bfb2ae25176626938567a2566171e09553591b6a546da2a0dc4b`  
		Last Modified: Sat, 12 Sep 2026 00:11:23 GMT  
		Size: 16.8 MB (16799179 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ebb6efdbe088327f60d14d412d69ee2f8d745622fbda9c5af1fca5c518025e24`  
		Last Modified: Sat, 12 Sep 2026 00:11:22 GMT  
		Size: 34.2 KB (34208 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9.7-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:c18347cec3191469d0928f8bd01610c8c6b587b3a1a6ae2c9f337ee7ba683ccc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.4 MB (267373446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aaad7d7e73277d8b2ab2994340b2ea499c26eff3913e5fa20944f442b6b9ac92`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 11 Sep 2026 23:26:27 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Fri, 11 Sep 2026 23:26:27 GMT
CMD ["/bin/bash"]
# Sat, 12 Sep 2026 00:08:55 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Sat, 12 Sep 2026 00:08:56 GMT
ENV GOSU_VERSION=1.19
# Sat, 12 Sep 2026 00:08:56 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 12 Sep 2026 00:09:33 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Sat, 12 Sep 2026 00:09:34 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Sat, 12 Sep 2026 00:09:34 GMT
ENV MYSQL_MAJOR=9.7
# Sat, 12 Sep 2026 00:09:34 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Sat, 12 Sep 2026 00:09:34 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Sat, 12 Sep 2026 00:10:14 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Sat, 12 Sep 2026 00:10:14 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Sat, 12 Sep 2026 00:10:14 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Sat, 12 Sep 2026 00:11:07 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Sat, 12 Sep 2026 00:11:07 GMT
VOLUME [/var/lib/mysql]
# Sat, 12 Sep 2026 00:11:07 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 12 Sep 2026 00:11:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 12 Sep 2026 00:11:07 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Sat, 12 Sep 2026 00:11:07 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:8e88a63a99d33b759690f9a9c14fa268d0d7021d7ba10b95738853eacfae654e`  
		Last Modified: Fri, 11 Sep 2026 23:26:38 GMT  
		Size: 46.5 MB (46478146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ada0979502f8f7abd85ba0435fcb7067b05550bff6128e4134073acd163ac05b`  
		Last Modified: Sat, 12 Sep 2026 00:11:35 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d54abfbd047a20046ecee67605c81c7e818d6b7419167f3fa38357ca2225cc9`  
		Last Modified: Sat, 12 Sep 2026 00:11:35 GMT  
		Size: 737.5 KB (737527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5777c8ba3f1ae47448d427adc5e83c54eecebac51f7ca340c772c31ecefdecb`  
		Last Modified: Sat, 12 Sep 2026 00:11:42 GMT  
		Size: 5.8 MB (5817167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:805d36d9332f45379f1ee1960ec35e460c24e6062f6b8a17bb8b565b35d6f083`  
		Last Modified: Sat, 12 Sep 2026 00:11:42 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d44230efaa8cab58a8f99af8b6c3af5f154471b0b6de4ce8b21c937448bbb1f`  
		Last Modified: Sat, 12 Sep 2026 00:11:42 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f75ec904076cb57a4cea5a5adbc074599794aa7aa45dd62a6e3110658f1c29a2`  
		Last Modified: Sat, 12 Sep 2026 00:11:44 GMT  
		Size: 57.1 MB (57118816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50cc20c89e6f69e3cc7e4e99d86284dacdbc52d5d68a28f33c7250b8d9e00c3f`  
		Last Modified: Sat, 12 Sep 2026 00:11:43 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:230672aac3ce9a80ffccab3ddac333101482fd0c49797f762ba54123560b3c11`  
		Last Modified: Sat, 12 Sep 2026 00:11:47 GMT  
		Size: 157.2 MB (157212423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b3cb983cc15bd0b6270e9f4079ac35ffe79ade9130b7863777872529ec342ff`  
		Last Modified: Sat, 12 Sep 2026 00:11:44 GMT  
		Size: 5.2 KB (5222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:a6baf7fe73d8caa02a46f2bbe6db6fb9f888890ee91e9b87f02fc30c41555529
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16832127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a6cafb610ce5b34acd91a40d91038d056fb1d1956a0deb5b4efc1abde0ce04f`

```dockerfile
```

-	Layers:
	-	`sha256:490fc9f70f50840c0cd41e3975184568a93bae338caaa22874a80179b84f8374`  
		Last Modified: Sat, 12 Sep 2026 00:11:43 GMT  
		Size: 16.8 MB (16797615 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:706415bf299e8837a2384d0367c2a37dc2cc0738be5cb7ae6c78b1aa5dcae327`  
		Last Modified: Sat, 12 Sep 2026 00:11:42 GMT  
		Size: 34.5 KB (34512 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9.7.2`

```console
$ docker pull mysql@sha256:29abb0a179982e4a8928138bfc7f918af9eda64e7eeb1b1d084c1720a20159e6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9.7.2` - linux; amd64

```console
$ docker pull mysql@sha256:fb28a51a17c84c907284a8124cfd888ffbe6f83457182baaa6f359c87b87c241
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.9 MB (270908995 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3234c1932b5583273f2a12735f99d44836f67dc63167bb8e16163a209ed54d3a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 11 Sep 2026 23:24:06 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Fri, 11 Sep 2026 23:24:06 GMT
CMD ["/bin/bash"]
# Sat, 12 Sep 2026 00:09:02 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Sat, 12 Sep 2026 00:09:04 GMT
ENV GOSU_VERSION=1.19
# Sat, 12 Sep 2026 00:09:04 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 12 Sep 2026 00:09:34 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Sat, 12 Sep 2026 00:09:35 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Sat, 12 Sep 2026 00:09:35 GMT
ENV MYSQL_MAJOR=9.7
# Sat, 12 Sep 2026 00:09:35 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Sat, 12 Sep 2026 00:09:35 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Sat, 12 Sep 2026 00:10:08 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Sat, 12 Sep 2026 00:10:08 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Sat, 12 Sep 2026 00:10:08 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Sat, 12 Sep 2026 00:10:51 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Sat, 12 Sep 2026 00:10:51 GMT
VOLUME [/var/lib/mysql]
# Sat, 12 Sep 2026 00:10:51 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 12 Sep 2026 00:10:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 12 Sep 2026 00:10:51 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Sat, 12 Sep 2026 00:10:51 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:13c85306055eb6ecca743420c9a29fec0936e01bea1df866947ecc554f9b7235`  
		Last Modified: Fri, 11 Sep 2026 23:24:17 GMT  
		Size: 47.9 MB (47931319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c4e0a435260fc829e6467cb48522ab5045e1aefa7d2f627cee5cddb7ee3ecdb`  
		Last Modified: Sat, 12 Sep 2026 00:11:22 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14270c78a6c55bf9bec238e906e3c66cf42250d21671598c6aa0d8557645466c`  
		Last Modified: Sat, 12 Sep 2026 00:11:22 GMT  
		Size: 783.6 KB (783556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5913e52d5cae2fd96a53fd1d59caed052635284454600b97f9dd859e42191fda`  
		Last Modified: Sat, 12 Sep 2026 00:11:22 GMT  
		Size: 6.2 MB (6193403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13b105d8f6268f46a8887f58d9327182235c6cf750df9ef1f129c08d8973d217`  
		Last Modified: Sat, 12 Sep 2026 00:11:22 GMT  
		Size: 2.6 KB (2606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb5f936c3d8fc12cbedf1db503a1afd91baa6110ce5c4cf636494e1b1e99f7cd`  
		Last Modified: Sat, 12 Sep 2026 00:11:23 GMT  
		Size: 331.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ef76de4774dd029da1503a431685f786a3dcb954fdf73501c79acf55e9869e6`  
		Last Modified: Sat, 12 Sep 2026 00:11:25 GMT  
		Size: 57.1 MB (57050260 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba37f2004dfc90c8c58e27d8b2139cefbf25b0c953d431565192fbe9012540ae`  
		Last Modified: Sat, 12 Sep 2026 00:11:23 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9375bfa1384e6b65ac458505278ee5d46cea9dcfc046ebb82e5d0f7e6709bd52`  
		Last Modified: Sat, 12 Sep 2026 00:11:27 GMT  
		Size: 158.9 MB (158941093 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c47902efba569bf9ce0721bfb083c4cfa161b458727fb0a24be7dc291a00fc01`  
		Last Modified: Sat, 12 Sep 2026 00:11:24 GMT  
		Size: 5.2 KB (5221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7.2` - unknown; unknown

```console
$ docker pull mysql@sha256:a982f254285f6f15783b8ce79d0beb991071c1d14fdfae5954db15daa1ebd157
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb50080ab5e499ba9d0d1af17867a4823e2bae262ee608e18361374fbbf20e5c`

```dockerfile
```

-	Layers:
	-	`sha256:ff8ec1142db1bfb2ae25176626938567a2566171e09553591b6a546da2a0dc4b`  
		Last Modified: Sat, 12 Sep 2026 00:11:23 GMT  
		Size: 16.8 MB (16799179 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ebb6efdbe088327f60d14d412d69ee2f8d745622fbda9c5af1fca5c518025e24`  
		Last Modified: Sat, 12 Sep 2026 00:11:22 GMT  
		Size: 34.2 KB (34208 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9.7.2` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:c18347cec3191469d0928f8bd01610c8c6b587b3a1a6ae2c9f337ee7ba683ccc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.4 MB (267373446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aaad7d7e73277d8b2ab2994340b2ea499c26eff3913e5fa20944f442b6b9ac92`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 11 Sep 2026 23:26:27 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Fri, 11 Sep 2026 23:26:27 GMT
CMD ["/bin/bash"]
# Sat, 12 Sep 2026 00:08:55 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Sat, 12 Sep 2026 00:08:56 GMT
ENV GOSU_VERSION=1.19
# Sat, 12 Sep 2026 00:08:56 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 12 Sep 2026 00:09:33 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Sat, 12 Sep 2026 00:09:34 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Sat, 12 Sep 2026 00:09:34 GMT
ENV MYSQL_MAJOR=9.7
# Sat, 12 Sep 2026 00:09:34 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Sat, 12 Sep 2026 00:09:34 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Sat, 12 Sep 2026 00:10:14 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Sat, 12 Sep 2026 00:10:14 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Sat, 12 Sep 2026 00:10:14 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Sat, 12 Sep 2026 00:11:07 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Sat, 12 Sep 2026 00:11:07 GMT
VOLUME [/var/lib/mysql]
# Sat, 12 Sep 2026 00:11:07 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 12 Sep 2026 00:11:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 12 Sep 2026 00:11:07 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Sat, 12 Sep 2026 00:11:07 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:8e88a63a99d33b759690f9a9c14fa268d0d7021d7ba10b95738853eacfae654e`  
		Last Modified: Fri, 11 Sep 2026 23:26:38 GMT  
		Size: 46.5 MB (46478146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ada0979502f8f7abd85ba0435fcb7067b05550bff6128e4134073acd163ac05b`  
		Last Modified: Sat, 12 Sep 2026 00:11:35 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d54abfbd047a20046ecee67605c81c7e818d6b7419167f3fa38357ca2225cc9`  
		Last Modified: Sat, 12 Sep 2026 00:11:35 GMT  
		Size: 737.5 KB (737527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5777c8ba3f1ae47448d427adc5e83c54eecebac51f7ca340c772c31ecefdecb`  
		Last Modified: Sat, 12 Sep 2026 00:11:42 GMT  
		Size: 5.8 MB (5817167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:805d36d9332f45379f1ee1960ec35e460c24e6062f6b8a17bb8b565b35d6f083`  
		Last Modified: Sat, 12 Sep 2026 00:11:42 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d44230efaa8cab58a8f99af8b6c3af5f154471b0b6de4ce8b21c937448bbb1f`  
		Last Modified: Sat, 12 Sep 2026 00:11:42 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f75ec904076cb57a4cea5a5adbc074599794aa7aa45dd62a6e3110658f1c29a2`  
		Last Modified: Sat, 12 Sep 2026 00:11:44 GMT  
		Size: 57.1 MB (57118816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50cc20c89e6f69e3cc7e4e99d86284dacdbc52d5d68a28f33c7250b8d9e00c3f`  
		Last Modified: Sat, 12 Sep 2026 00:11:43 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:230672aac3ce9a80ffccab3ddac333101482fd0c49797f762ba54123560b3c11`  
		Last Modified: Sat, 12 Sep 2026 00:11:47 GMT  
		Size: 157.2 MB (157212423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b3cb983cc15bd0b6270e9f4079ac35ffe79ade9130b7863777872529ec342ff`  
		Last Modified: Sat, 12 Sep 2026 00:11:44 GMT  
		Size: 5.2 KB (5222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7.2` - unknown; unknown

```console
$ docker pull mysql@sha256:a6baf7fe73d8caa02a46f2bbe6db6fb9f888890ee91e9b87f02fc30c41555529
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16832127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a6cafb610ce5b34acd91a40d91038d056fb1d1956a0deb5b4efc1abde0ce04f`

```dockerfile
```

-	Layers:
	-	`sha256:490fc9f70f50840c0cd41e3975184568a93bae338caaa22874a80179b84f8374`  
		Last Modified: Sat, 12 Sep 2026 00:11:43 GMT  
		Size: 16.8 MB (16797615 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:706415bf299e8837a2384d0367c2a37dc2cc0738be5cb7ae6c78b1aa5dcae327`  
		Last Modified: Sat, 12 Sep 2026 00:11:42 GMT  
		Size: 34.5 KB (34512 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9.7.2-oracle`

```console
$ docker pull mysql@sha256:29abb0a179982e4a8928138bfc7f918af9eda64e7eeb1b1d084c1720a20159e6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9.7.2-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:fb28a51a17c84c907284a8124cfd888ffbe6f83457182baaa6f359c87b87c241
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.9 MB (270908995 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3234c1932b5583273f2a12735f99d44836f67dc63167bb8e16163a209ed54d3a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 11 Sep 2026 23:24:06 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Fri, 11 Sep 2026 23:24:06 GMT
CMD ["/bin/bash"]
# Sat, 12 Sep 2026 00:09:02 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Sat, 12 Sep 2026 00:09:04 GMT
ENV GOSU_VERSION=1.19
# Sat, 12 Sep 2026 00:09:04 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 12 Sep 2026 00:09:34 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Sat, 12 Sep 2026 00:09:35 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Sat, 12 Sep 2026 00:09:35 GMT
ENV MYSQL_MAJOR=9.7
# Sat, 12 Sep 2026 00:09:35 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Sat, 12 Sep 2026 00:09:35 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Sat, 12 Sep 2026 00:10:08 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Sat, 12 Sep 2026 00:10:08 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Sat, 12 Sep 2026 00:10:08 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Sat, 12 Sep 2026 00:10:51 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Sat, 12 Sep 2026 00:10:51 GMT
VOLUME [/var/lib/mysql]
# Sat, 12 Sep 2026 00:10:51 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 12 Sep 2026 00:10:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 12 Sep 2026 00:10:51 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Sat, 12 Sep 2026 00:10:51 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:13c85306055eb6ecca743420c9a29fec0936e01bea1df866947ecc554f9b7235`  
		Last Modified: Fri, 11 Sep 2026 23:24:17 GMT  
		Size: 47.9 MB (47931319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c4e0a435260fc829e6467cb48522ab5045e1aefa7d2f627cee5cddb7ee3ecdb`  
		Last Modified: Sat, 12 Sep 2026 00:11:22 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14270c78a6c55bf9bec238e906e3c66cf42250d21671598c6aa0d8557645466c`  
		Last Modified: Sat, 12 Sep 2026 00:11:22 GMT  
		Size: 783.6 KB (783556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5913e52d5cae2fd96a53fd1d59caed052635284454600b97f9dd859e42191fda`  
		Last Modified: Sat, 12 Sep 2026 00:11:22 GMT  
		Size: 6.2 MB (6193403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13b105d8f6268f46a8887f58d9327182235c6cf750df9ef1f129c08d8973d217`  
		Last Modified: Sat, 12 Sep 2026 00:11:22 GMT  
		Size: 2.6 KB (2606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb5f936c3d8fc12cbedf1db503a1afd91baa6110ce5c4cf636494e1b1e99f7cd`  
		Last Modified: Sat, 12 Sep 2026 00:11:23 GMT  
		Size: 331.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ef76de4774dd029da1503a431685f786a3dcb954fdf73501c79acf55e9869e6`  
		Last Modified: Sat, 12 Sep 2026 00:11:25 GMT  
		Size: 57.1 MB (57050260 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba37f2004dfc90c8c58e27d8b2139cefbf25b0c953d431565192fbe9012540ae`  
		Last Modified: Sat, 12 Sep 2026 00:11:23 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9375bfa1384e6b65ac458505278ee5d46cea9dcfc046ebb82e5d0f7e6709bd52`  
		Last Modified: Sat, 12 Sep 2026 00:11:27 GMT  
		Size: 158.9 MB (158941093 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c47902efba569bf9ce0721bfb083c4cfa161b458727fb0a24be7dc291a00fc01`  
		Last Modified: Sat, 12 Sep 2026 00:11:24 GMT  
		Size: 5.2 KB (5221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7.2-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:a982f254285f6f15783b8ce79d0beb991071c1d14fdfae5954db15daa1ebd157
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb50080ab5e499ba9d0d1af17867a4823e2bae262ee608e18361374fbbf20e5c`

```dockerfile
```

-	Layers:
	-	`sha256:ff8ec1142db1bfb2ae25176626938567a2566171e09553591b6a546da2a0dc4b`  
		Last Modified: Sat, 12 Sep 2026 00:11:23 GMT  
		Size: 16.8 MB (16799179 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ebb6efdbe088327f60d14d412d69ee2f8d745622fbda9c5af1fca5c518025e24`  
		Last Modified: Sat, 12 Sep 2026 00:11:22 GMT  
		Size: 34.2 KB (34208 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9.7.2-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:c18347cec3191469d0928f8bd01610c8c6b587b3a1a6ae2c9f337ee7ba683ccc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.4 MB (267373446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aaad7d7e73277d8b2ab2994340b2ea499c26eff3913e5fa20944f442b6b9ac92`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 11 Sep 2026 23:26:27 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Fri, 11 Sep 2026 23:26:27 GMT
CMD ["/bin/bash"]
# Sat, 12 Sep 2026 00:08:55 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Sat, 12 Sep 2026 00:08:56 GMT
ENV GOSU_VERSION=1.19
# Sat, 12 Sep 2026 00:08:56 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 12 Sep 2026 00:09:33 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Sat, 12 Sep 2026 00:09:34 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Sat, 12 Sep 2026 00:09:34 GMT
ENV MYSQL_MAJOR=9.7
# Sat, 12 Sep 2026 00:09:34 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Sat, 12 Sep 2026 00:09:34 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Sat, 12 Sep 2026 00:10:14 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Sat, 12 Sep 2026 00:10:14 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Sat, 12 Sep 2026 00:10:14 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Sat, 12 Sep 2026 00:11:07 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Sat, 12 Sep 2026 00:11:07 GMT
VOLUME [/var/lib/mysql]
# Sat, 12 Sep 2026 00:11:07 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 12 Sep 2026 00:11:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 12 Sep 2026 00:11:07 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Sat, 12 Sep 2026 00:11:07 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:8e88a63a99d33b759690f9a9c14fa268d0d7021d7ba10b95738853eacfae654e`  
		Last Modified: Fri, 11 Sep 2026 23:26:38 GMT  
		Size: 46.5 MB (46478146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ada0979502f8f7abd85ba0435fcb7067b05550bff6128e4134073acd163ac05b`  
		Last Modified: Sat, 12 Sep 2026 00:11:35 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d54abfbd047a20046ecee67605c81c7e818d6b7419167f3fa38357ca2225cc9`  
		Last Modified: Sat, 12 Sep 2026 00:11:35 GMT  
		Size: 737.5 KB (737527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5777c8ba3f1ae47448d427adc5e83c54eecebac51f7ca340c772c31ecefdecb`  
		Last Modified: Sat, 12 Sep 2026 00:11:42 GMT  
		Size: 5.8 MB (5817167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:805d36d9332f45379f1ee1960ec35e460c24e6062f6b8a17bb8b565b35d6f083`  
		Last Modified: Sat, 12 Sep 2026 00:11:42 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d44230efaa8cab58a8f99af8b6c3af5f154471b0b6de4ce8b21c937448bbb1f`  
		Last Modified: Sat, 12 Sep 2026 00:11:42 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f75ec904076cb57a4cea5a5adbc074599794aa7aa45dd62a6e3110658f1c29a2`  
		Last Modified: Sat, 12 Sep 2026 00:11:44 GMT  
		Size: 57.1 MB (57118816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50cc20c89e6f69e3cc7e4e99d86284dacdbc52d5d68a28f33c7250b8d9e00c3f`  
		Last Modified: Sat, 12 Sep 2026 00:11:43 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:230672aac3ce9a80ffccab3ddac333101482fd0c49797f762ba54123560b3c11`  
		Last Modified: Sat, 12 Sep 2026 00:11:47 GMT  
		Size: 157.2 MB (157212423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b3cb983cc15bd0b6270e9f4079ac35ffe79ade9130b7863777872529ec342ff`  
		Last Modified: Sat, 12 Sep 2026 00:11:44 GMT  
		Size: 5.2 KB (5222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7.2-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:a6baf7fe73d8caa02a46f2bbe6db6fb9f888890ee91e9b87f02fc30c41555529
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16832127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a6cafb610ce5b34acd91a40d91038d056fb1d1956a0deb5b4efc1abde0ce04f`

```dockerfile
```

-	Layers:
	-	`sha256:490fc9f70f50840c0cd41e3975184568a93bae338caaa22874a80179b84f8374`  
		Last Modified: Sat, 12 Sep 2026 00:11:43 GMT  
		Size: 16.8 MB (16797615 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:706415bf299e8837a2384d0367c2a37dc2cc0738be5cb7ae6c78b1aa5dcae327`  
		Last Modified: Sat, 12 Sep 2026 00:11:42 GMT  
		Size: 34.5 KB (34512 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9.7.2-oraclelinux9`

```console
$ docker pull mysql@sha256:29abb0a179982e4a8928138bfc7f918af9eda64e7eeb1b1d084c1720a20159e6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9.7.2-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:fb28a51a17c84c907284a8124cfd888ffbe6f83457182baaa6f359c87b87c241
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.9 MB (270908995 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3234c1932b5583273f2a12735f99d44836f67dc63167bb8e16163a209ed54d3a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 11 Sep 2026 23:24:06 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Fri, 11 Sep 2026 23:24:06 GMT
CMD ["/bin/bash"]
# Sat, 12 Sep 2026 00:09:02 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Sat, 12 Sep 2026 00:09:04 GMT
ENV GOSU_VERSION=1.19
# Sat, 12 Sep 2026 00:09:04 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 12 Sep 2026 00:09:34 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Sat, 12 Sep 2026 00:09:35 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Sat, 12 Sep 2026 00:09:35 GMT
ENV MYSQL_MAJOR=9.7
# Sat, 12 Sep 2026 00:09:35 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Sat, 12 Sep 2026 00:09:35 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Sat, 12 Sep 2026 00:10:08 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Sat, 12 Sep 2026 00:10:08 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Sat, 12 Sep 2026 00:10:08 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Sat, 12 Sep 2026 00:10:51 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Sat, 12 Sep 2026 00:10:51 GMT
VOLUME [/var/lib/mysql]
# Sat, 12 Sep 2026 00:10:51 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 12 Sep 2026 00:10:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 12 Sep 2026 00:10:51 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Sat, 12 Sep 2026 00:10:51 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:13c85306055eb6ecca743420c9a29fec0936e01bea1df866947ecc554f9b7235`  
		Last Modified: Fri, 11 Sep 2026 23:24:17 GMT  
		Size: 47.9 MB (47931319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c4e0a435260fc829e6467cb48522ab5045e1aefa7d2f627cee5cddb7ee3ecdb`  
		Last Modified: Sat, 12 Sep 2026 00:11:22 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14270c78a6c55bf9bec238e906e3c66cf42250d21671598c6aa0d8557645466c`  
		Last Modified: Sat, 12 Sep 2026 00:11:22 GMT  
		Size: 783.6 KB (783556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5913e52d5cae2fd96a53fd1d59caed052635284454600b97f9dd859e42191fda`  
		Last Modified: Sat, 12 Sep 2026 00:11:22 GMT  
		Size: 6.2 MB (6193403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13b105d8f6268f46a8887f58d9327182235c6cf750df9ef1f129c08d8973d217`  
		Last Modified: Sat, 12 Sep 2026 00:11:22 GMT  
		Size: 2.6 KB (2606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb5f936c3d8fc12cbedf1db503a1afd91baa6110ce5c4cf636494e1b1e99f7cd`  
		Last Modified: Sat, 12 Sep 2026 00:11:23 GMT  
		Size: 331.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ef76de4774dd029da1503a431685f786a3dcb954fdf73501c79acf55e9869e6`  
		Last Modified: Sat, 12 Sep 2026 00:11:25 GMT  
		Size: 57.1 MB (57050260 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba37f2004dfc90c8c58e27d8b2139cefbf25b0c953d431565192fbe9012540ae`  
		Last Modified: Sat, 12 Sep 2026 00:11:23 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9375bfa1384e6b65ac458505278ee5d46cea9dcfc046ebb82e5d0f7e6709bd52`  
		Last Modified: Sat, 12 Sep 2026 00:11:27 GMT  
		Size: 158.9 MB (158941093 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c47902efba569bf9ce0721bfb083c4cfa161b458727fb0a24be7dc291a00fc01`  
		Last Modified: Sat, 12 Sep 2026 00:11:24 GMT  
		Size: 5.2 KB (5221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7.2-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:a982f254285f6f15783b8ce79d0beb991071c1d14fdfae5954db15daa1ebd157
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb50080ab5e499ba9d0d1af17867a4823e2bae262ee608e18361374fbbf20e5c`

```dockerfile
```

-	Layers:
	-	`sha256:ff8ec1142db1bfb2ae25176626938567a2566171e09553591b6a546da2a0dc4b`  
		Last Modified: Sat, 12 Sep 2026 00:11:23 GMT  
		Size: 16.8 MB (16799179 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ebb6efdbe088327f60d14d412d69ee2f8d745622fbda9c5af1fca5c518025e24`  
		Last Modified: Sat, 12 Sep 2026 00:11:22 GMT  
		Size: 34.2 KB (34208 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9.7.2-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:c18347cec3191469d0928f8bd01610c8c6b587b3a1a6ae2c9f337ee7ba683ccc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.4 MB (267373446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aaad7d7e73277d8b2ab2994340b2ea499c26eff3913e5fa20944f442b6b9ac92`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 11 Sep 2026 23:26:27 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Fri, 11 Sep 2026 23:26:27 GMT
CMD ["/bin/bash"]
# Sat, 12 Sep 2026 00:08:55 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Sat, 12 Sep 2026 00:08:56 GMT
ENV GOSU_VERSION=1.19
# Sat, 12 Sep 2026 00:08:56 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 12 Sep 2026 00:09:33 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Sat, 12 Sep 2026 00:09:34 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Sat, 12 Sep 2026 00:09:34 GMT
ENV MYSQL_MAJOR=9.7
# Sat, 12 Sep 2026 00:09:34 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Sat, 12 Sep 2026 00:09:34 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Sat, 12 Sep 2026 00:10:14 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Sat, 12 Sep 2026 00:10:14 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Sat, 12 Sep 2026 00:10:14 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Sat, 12 Sep 2026 00:11:07 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Sat, 12 Sep 2026 00:11:07 GMT
VOLUME [/var/lib/mysql]
# Sat, 12 Sep 2026 00:11:07 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 12 Sep 2026 00:11:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 12 Sep 2026 00:11:07 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Sat, 12 Sep 2026 00:11:07 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:8e88a63a99d33b759690f9a9c14fa268d0d7021d7ba10b95738853eacfae654e`  
		Last Modified: Fri, 11 Sep 2026 23:26:38 GMT  
		Size: 46.5 MB (46478146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ada0979502f8f7abd85ba0435fcb7067b05550bff6128e4134073acd163ac05b`  
		Last Modified: Sat, 12 Sep 2026 00:11:35 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d54abfbd047a20046ecee67605c81c7e818d6b7419167f3fa38357ca2225cc9`  
		Last Modified: Sat, 12 Sep 2026 00:11:35 GMT  
		Size: 737.5 KB (737527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5777c8ba3f1ae47448d427adc5e83c54eecebac51f7ca340c772c31ecefdecb`  
		Last Modified: Sat, 12 Sep 2026 00:11:42 GMT  
		Size: 5.8 MB (5817167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:805d36d9332f45379f1ee1960ec35e460c24e6062f6b8a17bb8b565b35d6f083`  
		Last Modified: Sat, 12 Sep 2026 00:11:42 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d44230efaa8cab58a8f99af8b6c3af5f154471b0b6de4ce8b21c937448bbb1f`  
		Last Modified: Sat, 12 Sep 2026 00:11:42 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f75ec904076cb57a4cea5a5adbc074599794aa7aa45dd62a6e3110658f1c29a2`  
		Last Modified: Sat, 12 Sep 2026 00:11:44 GMT  
		Size: 57.1 MB (57118816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50cc20c89e6f69e3cc7e4e99d86284dacdbc52d5d68a28f33c7250b8d9e00c3f`  
		Last Modified: Sat, 12 Sep 2026 00:11:43 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:230672aac3ce9a80ffccab3ddac333101482fd0c49797f762ba54123560b3c11`  
		Last Modified: Sat, 12 Sep 2026 00:11:47 GMT  
		Size: 157.2 MB (157212423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b3cb983cc15bd0b6270e9f4079ac35ffe79ade9130b7863777872529ec342ff`  
		Last Modified: Sat, 12 Sep 2026 00:11:44 GMT  
		Size: 5.2 KB (5222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7.2-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:a6baf7fe73d8caa02a46f2bbe6db6fb9f888890ee91e9b87f02fc30c41555529
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16832127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a6cafb610ce5b34acd91a40d91038d056fb1d1956a0deb5b4efc1abde0ce04f`

```dockerfile
```

-	Layers:
	-	`sha256:490fc9f70f50840c0cd41e3975184568a93bae338caaa22874a80179b84f8374`  
		Last Modified: Sat, 12 Sep 2026 00:11:43 GMT  
		Size: 16.8 MB (16797615 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:706415bf299e8837a2384d0367c2a37dc2cc0738be5cb7ae6c78b1aa5dcae327`  
		Last Modified: Sat, 12 Sep 2026 00:11:42 GMT  
		Size: 34.5 KB (34512 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:innovation`

```console
$ docker pull mysql@sha256:45abdd9b4144660b5c93a5b7d0ebb21e024f0ba9851ecb4ab43bf83c6bf83592
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:innovation` - linux; amd64

```console
$ docker pull mysql@sha256:e90497776da10a4700999242a58d779a86879225bb2d8544b4109272a4c288bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.4 MB (272350479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21ed0f5cc49429e295ee53a1c19e9726067987d14b4b29d6cd35599ad066c4eb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 11 Sep 2026 23:24:06 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Fri, 11 Sep 2026 23:24:06 GMT
CMD ["/bin/bash"]
# Sat, 12 Sep 2026 00:08:53 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Sat, 12 Sep 2026 00:08:54 GMT
ENV GOSU_VERSION=1.19
# Sat, 12 Sep 2026 00:08:54 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 12 Sep 2026 00:09:29 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Sat, 12 Sep 2026 00:09:30 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Sat, 12 Sep 2026 00:09:30 GMT
ENV MYSQL_MAJOR=innovation
# Sat, 12 Sep 2026 00:09:30 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Sat, 12 Sep 2026 00:09:30 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Sat, 12 Sep 2026 00:10:09 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Sat, 12 Sep 2026 00:10:09 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Sat, 12 Sep 2026 00:10:09 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Sat, 12 Sep 2026 00:10:57 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Sat, 12 Sep 2026 00:10:57 GMT
VOLUME [/var/lib/mysql]
# Sat, 12 Sep 2026 00:10:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 12 Sep 2026 00:10:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 12 Sep 2026 00:10:58 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Sat, 12 Sep 2026 00:10:58 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:13c85306055eb6ecca743420c9a29fec0936e01bea1df866947ecc554f9b7235`  
		Last Modified: Fri, 11 Sep 2026 23:24:17 GMT  
		Size: 47.9 MB (47931319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1efac44fb10451bb6c48afdee56aceb0234a31d09f9abff40b8a45d353e9f4eb`  
		Last Modified: Sat, 12 Sep 2026 00:11:34 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f1d011bdd777410d8f289763994559a9be153f5771ebc32de2675a37147dfaf`  
		Last Modified: Sat, 12 Sep 2026 00:11:34 GMT  
		Size: 783.5 KB (783541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d61b3579fc6ca050cd58791db7a9ccb99553a828bf58f458693b95b22bfe699c`  
		Last Modified: Sat, 12 Sep 2026 00:11:34 GMT  
		Size: 6.2 MB (6193394 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5703b6421969ea9aff5cd6360efecae6e51b136dfa07a82656251d48e31b622`  
		Last Modified: Sat, 12 Sep 2026 00:11:26 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24899866011650b17a308d6dbb0dec68226c20699b2a73c9fd4deb4444dd8b28`  
		Last Modified: Sat, 12 Sep 2026 00:11:34 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13707ba668372c347e859a0c18a470add82d4189cc26e7ed927f0c018e9ac25e`  
		Last Modified: Sat, 12 Sep 2026 00:11:37 GMT  
		Size: 57.5 MB (57457519 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c4ffcc46f7cdd865fd1da77be7e5e1ae404849c15875ca684e75d8e2d33b9c8`  
		Last Modified: Sat, 12 Sep 2026 00:11:35 GMT  
		Size: 324.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee778d752aff96f367302483b39dcb42e27f91127326d1092469b3cc347b99bf`  
		Last Modified: Sat, 12 Sep 2026 00:11:40 GMT  
		Size: 160.0 MB (159975330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a869fc9d82872e499c0486dc9183f2bba06dc62f4256a28386987a67a0dbcede`  
		Last Modified: Sat, 12 Sep 2026 00:11:36 GMT  
		Size: 5.2 KB (5223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:innovation` - unknown; unknown

```console
$ docker pull mysql@sha256:f5ae1648f33608475f8fed10684539481530d00a78d1e8ee1c9bcba7d62b6ae5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17452701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd577f436e20fc0fd5dfb43e2cf6db31b416f4b4d1f45257bafe8d9b651aea6b`

```dockerfile
```

-	Layers:
	-	`sha256:4c01ad9af86a0393e864afc7fb0353f9c421c4172401fa5b9f3a04b8031a3f6d`  
		Last Modified: Sat, 12 Sep 2026 00:11:35 GMT  
		Size: 17.4 MB (17417403 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:afd4b55f41d0d8e5e82fab01597d834fed9d193f9ef139af6f015b8007e8abd2`  
		Last Modified: Sat, 12 Sep 2026 00:11:34 GMT  
		Size: 35.3 KB (35298 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:innovation` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:7216386511066db8765356adb24d46fa579b287ded143a77af4fd9e2152df699
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.7 MB (268717797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb7cb08eb1cf3d0be5c735a8ac3c14c1a09ad0495a61ff5923306344c85fb38e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 11 Sep 2026 23:26:27 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Fri, 11 Sep 2026 23:26:27 GMT
CMD ["/bin/bash"]
# Sat, 12 Sep 2026 00:08:24 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Sat, 12 Sep 2026 00:08:26 GMT
ENV GOSU_VERSION=1.19
# Sat, 12 Sep 2026 00:08:26 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 12 Sep 2026 00:09:02 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Sat, 12 Sep 2026 00:09:03 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Sat, 12 Sep 2026 00:09:03 GMT
ENV MYSQL_MAJOR=innovation
# Sat, 12 Sep 2026 00:09:03 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Sat, 12 Sep 2026 00:09:03 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Sat, 12 Sep 2026 00:09:43 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Sat, 12 Sep 2026 00:09:43 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Sat, 12 Sep 2026 00:09:43 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Sat, 12 Sep 2026 00:10:34 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Sat, 12 Sep 2026 00:10:34 GMT
VOLUME [/var/lib/mysql]
# Sat, 12 Sep 2026 00:10:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 12 Sep 2026 00:10:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 12 Sep 2026 00:10:34 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Sat, 12 Sep 2026 00:10:34 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:8e88a63a99d33b759690f9a9c14fa268d0d7021d7ba10b95738853eacfae654e`  
		Last Modified: Fri, 11 Sep 2026 23:26:38 GMT  
		Size: 46.5 MB (46478146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cc8b5218bdfc562fa40c1276e9ba629338fbbbda090bcff57511efe8aa1a243`  
		Last Modified: Sat, 12 Sep 2026 00:11:10 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82d5f282ab29fcf848cbb4926d2ef0a338b0ccb60b1c5e6ecf08419a0efad29d`  
		Last Modified: Sat, 12 Sep 2026 00:11:10 GMT  
		Size: 737.5 KB (737526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ac6ac725ff960e7ddde0be43e5cf1f51bb7630a3fa5e09e6bc13b835864d869`  
		Last Modified: Sat, 12 Sep 2026 00:11:10 GMT  
		Size: 5.8 MB (5817162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e280b918d4f60e62c0040b014f68b51a96ad8cbc1d553f5cb9355fe5316ace78`  
		Last Modified: Sat, 12 Sep 2026 00:11:10 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f66234aafb78805130cae704567fa6701d10737b8191276916356be0bee3ce01`  
		Last Modified: Sat, 12 Sep 2026 00:11:11 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69f2e6b0f4834feb6eafe70f63d52b0c2f8b16513ed57da3f51318991fd744cb`  
		Last Modified: Sat, 12 Sep 2026 00:11:13 GMT  
		Size: 57.4 MB (57433356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b53b600954c22f62c1d1948d65f2dc6c6205e3996aa6a21a47b081f3afd1ffee`  
		Last Modified: Sat, 12 Sep 2026 00:11:12 GMT  
		Size: 324.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5851225399d70447fd534f656c1781822138abf44f2a1e465a4670fd7fbcc5d2`  
		Last Modified: Sat, 12 Sep 2026 00:11:16 GMT  
		Size: 158.2 MB (158242225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:316e3ee0d8ced9ac3269c64cf2975b66e8583023a9f6aa301bb71fed2303b6e3`  
		Last Modified: Sat, 12 Sep 2026 00:11:13 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:innovation` - unknown; unknown

```console
$ docker pull mysql@sha256:c4f7b3de5c98b29cb44ff98ef53edf09a17a24a2a0d5461025cb30b855c2fddb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17451515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:153c5bf9f7baebb3618540997454074002fe046831fd1a243729fea8cb4755dc`

```dockerfile
```

-	Layers:
	-	`sha256:8d649ba510f9dbd56c78a9856c9818711cb5976481cb6357f5c5b3c7a4130e8d`  
		Last Modified: Sat, 12 Sep 2026 00:11:11 GMT  
		Size: 17.4 MB (17415876 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:88ed07925d0565f6f1f684199700e6347b6702caec8e738a48d1339ce921f563`  
		Last Modified: Sat, 12 Sep 2026 00:11:10 GMT  
		Size: 35.6 KB (35639 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:innovation-oracle`

```console
$ docker pull mysql@sha256:45abdd9b4144660b5c93a5b7d0ebb21e024f0ba9851ecb4ab43bf83c6bf83592
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:innovation-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:e90497776da10a4700999242a58d779a86879225bb2d8544b4109272a4c288bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.4 MB (272350479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21ed0f5cc49429e295ee53a1c19e9726067987d14b4b29d6cd35599ad066c4eb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 11 Sep 2026 23:24:06 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Fri, 11 Sep 2026 23:24:06 GMT
CMD ["/bin/bash"]
# Sat, 12 Sep 2026 00:08:53 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Sat, 12 Sep 2026 00:08:54 GMT
ENV GOSU_VERSION=1.19
# Sat, 12 Sep 2026 00:08:54 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 12 Sep 2026 00:09:29 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Sat, 12 Sep 2026 00:09:30 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Sat, 12 Sep 2026 00:09:30 GMT
ENV MYSQL_MAJOR=innovation
# Sat, 12 Sep 2026 00:09:30 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Sat, 12 Sep 2026 00:09:30 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Sat, 12 Sep 2026 00:10:09 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Sat, 12 Sep 2026 00:10:09 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Sat, 12 Sep 2026 00:10:09 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Sat, 12 Sep 2026 00:10:57 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Sat, 12 Sep 2026 00:10:57 GMT
VOLUME [/var/lib/mysql]
# Sat, 12 Sep 2026 00:10:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 12 Sep 2026 00:10:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 12 Sep 2026 00:10:58 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Sat, 12 Sep 2026 00:10:58 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:13c85306055eb6ecca743420c9a29fec0936e01bea1df866947ecc554f9b7235`  
		Last Modified: Fri, 11 Sep 2026 23:24:17 GMT  
		Size: 47.9 MB (47931319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1efac44fb10451bb6c48afdee56aceb0234a31d09f9abff40b8a45d353e9f4eb`  
		Last Modified: Sat, 12 Sep 2026 00:11:34 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f1d011bdd777410d8f289763994559a9be153f5771ebc32de2675a37147dfaf`  
		Last Modified: Sat, 12 Sep 2026 00:11:34 GMT  
		Size: 783.5 KB (783541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d61b3579fc6ca050cd58791db7a9ccb99553a828bf58f458693b95b22bfe699c`  
		Last Modified: Sat, 12 Sep 2026 00:11:34 GMT  
		Size: 6.2 MB (6193394 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5703b6421969ea9aff5cd6360efecae6e51b136dfa07a82656251d48e31b622`  
		Last Modified: Sat, 12 Sep 2026 00:11:26 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24899866011650b17a308d6dbb0dec68226c20699b2a73c9fd4deb4444dd8b28`  
		Last Modified: Sat, 12 Sep 2026 00:11:34 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13707ba668372c347e859a0c18a470add82d4189cc26e7ed927f0c018e9ac25e`  
		Last Modified: Sat, 12 Sep 2026 00:11:37 GMT  
		Size: 57.5 MB (57457519 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c4ffcc46f7cdd865fd1da77be7e5e1ae404849c15875ca684e75d8e2d33b9c8`  
		Last Modified: Sat, 12 Sep 2026 00:11:35 GMT  
		Size: 324.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee778d752aff96f367302483b39dcb42e27f91127326d1092469b3cc347b99bf`  
		Last Modified: Sat, 12 Sep 2026 00:11:40 GMT  
		Size: 160.0 MB (159975330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a869fc9d82872e499c0486dc9183f2bba06dc62f4256a28386987a67a0dbcede`  
		Last Modified: Sat, 12 Sep 2026 00:11:36 GMT  
		Size: 5.2 KB (5223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:innovation-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:f5ae1648f33608475f8fed10684539481530d00a78d1e8ee1c9bcba7d62b6ae5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17452701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd577f436e20fc0fd5dfb43e2cf6db31b416f4b4d1f45257bafe8d9b651aea6b`

```dockerfile
```

-	Layers:
	-	`sha256:4c01ad9af86a0393e864afc7fb0353f9c421c4172401fa5b9f3a04b8031a3f6d`  
		Last Modified: Sat, 12 Sep 2026 00:11:35 GMT  
		Size: 17.4 MB (17417403 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:afd4b55f41d0d8e5e82fab01597d834fed9d193f9ef139af6f015b8007e8abd2`  
		Last Modified: Sat, 12 Sep 2026 00:11:34 GMT  
		Size: 35.3 KB (35298 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:innovation-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:7216386511066db8765356adb24d46fa579b287ded143a77af4fd9e2152df699
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.7 MB (268717797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb7cb08eb1cf3d0be5c735a8ac3c14c1a09ad0495a61ff5923306344c85fb38e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 11 Sep 2026 23:26:27 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Fri, 11 Sep 2026 23:26:27 GMT
CMD ["/bin/bash"]
# Sat, 12 Sep 2026 00:08:24 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Sat, 12 Sep 2026 00:08:26 GMT
ENV GOSU_VERSION=1.19
# Sat, 12 Sep 2026 00:08:26 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 12 Sep 2026 00:09:02 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Sat, 12 Sep 2026 00:09:03 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Sat, 12 Sep 2026 00:09:03 GMT
ENV MYSQL_MAJOR=innovation
# Sat, 12 Sep 2026 00:09:03 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Sat, 12 Sep 2026 00:09:03 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Sat, 12 Sep 2026 00:09:43 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Sat, 12 Sep 2026 00:09:43 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Sat, 12 Sep 2026 00:09:43 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Sat, 12 Sep 2026 00:10:34 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Sat, 12 Sep 2026 00:10:34 GMT
VOLUME [/var/lib/mysql]
# Sat, 12 Sep 2026 00:10:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 12 Sep 2026 00:10:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 12 Sep 2026 00:10:34 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Sat, 12 Sep 2026 00:10:34 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:8e88a63a99d33b759690f9a9c14fa268d0d7021d7ba10b95738853eacfae654e`  
		Last Modified: Fri, 11 Sep 2026 23:26:38 GMT  
		Size: 46.5 MB (46478146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cc8b5218bdfc562fa40c1276e9ba629338fbbbda090bcff57511efe8aa1a243`  
		Last Modified: Sat, 12 Sep 2026 00:11:10 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82d5f282ab29fcf848cbb4926d2ef0a338b0ccb60b1c5e6ecf08419a0efad29d`  
		Last Modified: Sat, 12 Sep 2026 00:11:10 GMT  
		Size: 737.5 KB (737526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ac6ac725ff960e7ddde0be43e5cf1f51bb7630a3fa5e09e6bc13b835864d869`  
		Last Modified: Sat, 12 Sep 2026 00:11:10 GMT  
		Size: 5.8 MB (5817162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e280b918d4f60e62c0040b014f68b51a96ad8cbc1d553f5cb9355fe5316ace78`  
		Last Modified: Sat, 12 Sep 2026 00:11:10 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f66234aafb78805130cae704567fa6701d10737b8191276916356be0bee3ce01`  
		Last Modified: Sat, 12 Sep 2026 00:11:11 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69f2e6b0f4834feb6eafe70f63d52b0c2f8b16513ed57da3f51318991fd744cb`  
		Last Modified: Sat, 12 Sep 2026 00:11:13 GMT  
		Size: 57.4 MB (57433356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b53b600954c22f62c1d1948d65f2dc6c6205e3996aa6a21a47b081f3afd1ffee`  
		Last Modified: Sat, 12 Sep 2026 00:11:12 GMT  
		Size: 324.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5851225399d70447fd534f656c1781822138abf44f2a1e465a4670fd7fbcc5d2`  
		Last Modified: Sat, 12 Sep 2026 00:11:16 GMT  
		Size: 158.2 MB (158242225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:316e3ee0d8ced9ac3269c64cf2975b66e8583023a9f6aa301bb71fed2303b6e3`  
		Last Modified: Sat, 12 Sep 2026 00:11:13 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:innovation-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:c4f7b3de5c98b29cb44ff98ef53edf09a17a24a2a0d5461025cb30b855c2fddb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17451515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:153c5bf9f7baebb3618540997454074002fe046831fd1a243729fea8cb4755dc`

```dockerfile
```

-	Layers:
	-	`sha256:8d649ba510f9dbd56c78a9856c9818711cb5976481cb6357f5c5b3c7a4130e8d`  
		Last Modified: Sat, 12 Sep 2026 00:11:11 GMT  
		Size: 17.4 MB (17415876 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:88ed07925d0565f6f1f684199700e6347b6702caec8e738a48d1339ce921f563`  
		Last Modified: Sat, 12 Sep 2026 00:11:10 GMT  
		Size: 35.6 KB (35639 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:innovation-oraclelinux9`

```console
$ docker pull mysql@sha256:45abdd9b4144660b5c93a5b7d0ebb21e024f0ba9851ecb4ab43bf83c6bf83592
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:innovation-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:e90497776da10a4700999242a58d779a86879225bb2d8544b4109272a4c288bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.4 MB (272350479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21ed0f5cc49429e295ee53a1c19e9726067987d14b4b29d6cd35599ad066c4eb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 11 Sep 2026 23:24:06 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Fri, 11 Sep 2026 23:24:06 GMT
CMD ["/bin/bash"]
# Sat, 12 Sep 2026 00:08:53 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Sat, 12 Sep 2026 00:08:54 GMT
ENV GOSU_VERSION=1.19
# Sat, 12 Sep 2026 00:08:54 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 12 Sep 2026 00:09:29 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Sat, 12 Sep 2026 00:09:30 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Sat, 12 Sep 2026 00:09:30 GMT
ENV MYSQL_MAJOR=innovation
# Sat, 12 Sep 2026 00:09:30 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Sat, 12 Sep 2026 00:09:30 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Sat, 12 Sep 2026 00:10:09 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Sat, 12 Sep 2026 00:10:09 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Sat, 12 Sep 2026 00:10:09 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Sat, 12 Sep 2026 00:10:57 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Sat, 12 Sep 2026 00:10:57 GMT
VOLUME [/var/lib/mysql]
# Sat, 12 Sep 2026 00:10:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 12 Sep 2026 00:10:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 12 Sep 2026 00:10:58 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Sat, 12 Sep 2026 00:10:58 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:13c85306055eb6ecca743420c9a29fec0936e01bea1df866947ecc554f9b7235`  
		Last Modified: Fri, 11 Sep 2026 23:24:17 GMT  
		Size: 47.9 MB (47931319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1efac44fb10451bb6c48afdee56aceb0234a31d09f9abff40b8a45d353e9f4eb`  
		Last Modified: Sat, 12 Sep 2026 00:11:34 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f1d011bdd777410d8f289763994559a9be153f5771ebc32de2675a37147dfaf`  
		Last Modified: Sat, 12 Sep 2026 00:11:34 GMT  
		Size: 783.5 KB (783541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d61b3579fc6ca050cd58791db7a9ccb99553a828bf58f458693b95b22bfe699c`  
		Last Modified: Sat, 12 Sep 2026 00:11:34 GMT  
		Size: 6.2 MB (6193394 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5703b6421969ea9aff5cd6360efecae6e51b136dfa07a82656251d48e31b622`  
		Last Modified: Sat, 12 Sep 2026 00:11:26 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24899866011650b17a308d6dbb0dec68226c20699b2a73c9fd4deb4444dd8b28`  
		Last Modified: Sat, 12 Sep 2026 00:11:34 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13707ba668372c347e859a0c18a470add82d4189cc26e7ed927f0c018e9ac25e`  
		Last Modified: Sat, 12 Sep 2026 00:11:37 GMT  
		Size: 57.5 MB (57457519 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c4ffcc46f7cdd865fd1da77be7e5e1ae404849c15875ca684e75d8e2d33b9c8`  
		Last Modified: Sat, 12 Sep 2026 00:11:35 GMT  
		Size: 324.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee778d752aff96f367302483b39dcb42e27f91127326d1092469b3cc347b99bf`  
		Last Modified: Sat, 12 Sep 2026 00:11:40 GMT  
		Size: 160.0 MB (159975330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a869fc9d82872e499c0486dc9183f2bba06dc62f4256a28386987a67a0dbcede`  
		Last Modified: Sat, 12 Sep 2026 00:11:36 GMT  
		Size: 5.2 KB (5223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:innovation-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:f5ae1648f33608475f8fed10684539481530d00a78d1e8ee1c9bcba7d62b6ae5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17452701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd577f436e20fc0fd5dfb43e2cf6db31b416f4b4d1f45257bafe8d9b651aea6b`

```dockerfile
```

-	Layers:
	-	`sha256:4c01ad9af86a0393e864afc7fb0353f9c421c4172401fa5b9f3a04b8031a3f6d`  
		Last Modified: Sat, 12 Sep 2026 00:11:35 GMT  
		Size: 17.4 MB (17417403 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:afd4b55f41d0d8e5e82fab01597d834fed9d193f9ef139af6f015b8007e8abd2`  
		Last Modified: Sat, 12 Sep 2026 00:11:34 GMT  
		Size: 35.3 KB (35298 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:innovation-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:7216386511066db8765356adb24d46fa579b287ded143a77af4fd9e2152df699
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.7 MB (268717797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb7cb08eb1cf3d0be5c735a8ac3c14c1a09ad0495a61ff5923306344c85fb38e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 11 Sep 2026 23:26:27 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Fri, 11 Sep 2026 23:26:27 GMT
CMD ["/bin/bash"]
# Sat, 12 Sep 2026 00:08:24 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Sat, 12 Sep 2026 00:08:26 GMT
ENV GOSU_VERSION=1.19
# Sat, 12 Sep 2026 00:08:26 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 12 Sep 2026 00:09:02 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Sat, 12 Sep 2026 00:09:03 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Sat, 12 Sep 2026 00:09:03 GMT
ENV MYSQL_MAJOR=innovation
# Sat, 12 Sep 2026 00:09:03 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Sat, 12 Sep 2026 00:09:03 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Sat, 12 Sep 2026 00:09:43 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Sat, 12 Sep 2026 00:09:43 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Sat, 12 Sep 2026 00:09:43 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Sat, 12 Sep 2026 00:10:34 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Sat, 12 Sep 2026 00:10:34 GMT
VOLUME [/var/lib/mysql]
# Sat, 12 Sep 2026 00:10:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 12 Sep 2026 00:10:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 12 Sep 2026 00:10:34 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Sat, 12 Sep 2026 00:10:34 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:8e88a63a99d33b759690f9a9c14fa268d0d7021d7ba10b95738853eacfae654e`  
		Last Modified: Fri, 11 Sep 2026 23:26:38 GMT  
		Size: 46.5 MB (46478146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cc8b5218bdfc562fa40c1276e9ba629338fbbbda090bcff57511efe8aa1a243`  
		Last Modified: Sat, 12 Sep 2026 00:11:10 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82d5f282ab29fcf848cbb4926d2ef0a338b0ccb60b1c5e6ecf08419a0efad29d`  
		Last Modified: Sat, 12 Sep 2026 00:11:10 GMT  
		Size: 737.5 KB (737526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ac6ac725ff960e7ddde0be43e5cf1f51bb7630a3fa5e09e6bc13b835864d869`  
		Last Modified: Sat, 12 Sep 2026 00:11:10 GMT  
		Size: 5.8 MB (5817162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e280b918d4f60e62c0040b014f68b51a96ad8cbc1d553f5cb9355fe5316ace78`  
		Last Modified: Sat, 12 Sep 2026 00:11:10 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f66234aafb78805130cae704567fa6701d10737b8191276916356be0bee3ce01`  
		Last Modified: Sat, 12 Sep 2026 00:11:11 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69f2e6b0f4834feb6eafe70f63d52b0c2f8b16513ed57da3f51318991fd744cb`  
		Last Modified: Sat, 12 Sep 2026 00:11:13 GMT  
		Size: 57.4 MB (57433356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b53b600954c22f62c1d1948d65f2dc6c6205e3996aa6a21a47b081f3afd1ffee`  
		Last Modified: Sat, 12 Sep 2026 00:11:12 GMT  
		Size: 324.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5851225399d70447fd534f656c1781822138abf44f2a1e465a4670fd7fbcc5d2`  
		Last Modified: Sat, 12 Sep 2026 00:11:16 GMT  
		Size: 158.2 MB (158242225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:316e3ee0d8ced9ac3269c64cf2975b66e8583023a9f6aa301bb71fed2303b6e3`  
		Last Modified: Sat, 12 Sep 2026 00:11:13 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:innovation-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:c4f7b3de5c98b29cb44ff98ef53edf09a17a24a2a0d5461025cb30b855c2fddb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17451515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:153c5bf9f7baebb3618540997454074002fe046831fd1a243729fea8cb4755dc`

```dockerfile
```

-	Layers:
	-	`sha256:8d649ba510f9dbd56c78a9856c9818711cb5976481cb6357f5c5b3c7a4130e8d`  
		Last Modified: Sat, 12 Sep 2026 00:11:11 GMT  
		Size: 17.4 MB (17415876 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:88ed07925d0565f6f1f684199700e6347b6702caec8e738a48d1339ce921f563`  
		Last Modified: Sat, 12 Sep 2026 00:11:10 GMT  
		Size: 35.6 KB (35639 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:latest`

```console
$ docker pull mysql@sha256:45abdd9b4144660b5c93a5b7d0ebb21e024f0ba9851ecb4ab43bf83c6bf83592
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:latest` - linux; amd64

```console
$ docker pull mysql@sha256:e90497776da10a4700999242a58d779a86879225bb2d8544b4109272a4c288bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.4 MB (272350479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21ed0f5cc49429e295ee53a1c19e9726067987d14b4b29d6cd35599ad066c4eb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 11 Sep 2026 23:24:06 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Fri, 11 Sep 2026 23:24:06 GMT
CMD ["/bin/bash"]
# Sat, 12 Sep 2026 00:08:53 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Sat, 12 Sep 2026 00:08:54 GMT
ENV GOSU_VERSION=1.19
# Sat, 12 Sep 2026 00:08:54 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 12 Sep 2026 00:09:29 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Sat, 12 Sep 2026 00:09:30 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Sat, 12 Sep 2026 00:09:30 GMT
ENV MYSQL_MAJOR=innovation
# Sat, 12 Sep 2026 00:09:30 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Sat, 12 Sep 2026 00:09:30 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Sat, 12 Sep 2026 00:10:09 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Sat, 12 Sep 2026 00:10:09 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Sat, 12 Sep 2026 00:10:09 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Sat, 12 Sep 2026 00:10:57 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Sat, 12 Sep 2026 00:10:57 GMT
VOLUME [/var/lib/mysql]
# Sat, 12 Sep 2026 00:10:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 12 Sep 2026 00:10:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 12 Sep 2026 00:10:58 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Sat, 12 Sep 2026 00:10:58 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:13c85306055eb6ecca743420c9a29fec0936e01bea1df866947ecc554f9b7235`  
		Last Modified: Fri, 11 Sep 2026 23:24:17 GMT  
		Size: 47.9 MB (47931319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1efac44fb10451bb6c48afdee56aceb0234a31d09f9abff40b8a45d353e9f4eb`  
		Last Modified: Sat, 12 Sep 2026 00:11:34 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f1d011bdd777410d8f289763994559a9be153f5771ebc32de2675a37147dfaf`  
		Last Modified: Sat, 12 Sep 2026 00:11:34 GMT  
		Size: 783.5 KB (783541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d61b3579fc6ca050cd58791db7a9ccb99553a828bf58f458693b95b22bfe699c`  
		Last Modified: Sat, 12 Sep 2026 00:11:34 GMT  
		Size: 6.2 MB (6193394 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5703b6421969ea9aff5cd6360efecae6e51b136dfa07a82656251d48e31b622`  
		Last Modified: Sat, 12 Sep 2026 00:11:26 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24899866011650b17a308d6dbb0dec68226c20699b2a73c9fd4deb4444dd8b28`  
		Last Modified: Sat, 12 Sep 2026 00:11:34 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13707ba668372c347e859a0c18a470add82d4189cc26e7ed927f0c018e9ac25e`  
		Last Modified: Sat, 12 Sep 2026 00:11:37 GMT  
		Size: 57.5 MB (57457519 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c4ffcc46f7cdd865fd1da77be7e5e1ae404849c15875ca684e75d8e2d33b9c8`  
		Last Modified: Sat, 12 Sep 2026 00:11:35 GMT  
		Size: 324.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee778d752aff96f367302483b39dcb42e27f91127326d1092469b3cc347b99bf`  
		Last Modified: Sat, 12 Sep 2026 00:11:40 GMT  
		Size: 160.0 MB (159975330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a869fc9d82872e499c0486dc9183f2bba06dc62f4256a28386987a67a0dbcede`  
		Last Modified: Sat, 12 Sep 2026 00:11:36 GMT  
		Size: 5.2 KB (5223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:latest` - unknown; unknown

```console
$ docker pull mysql@sha256:f5ae1648f33608475f8fed10684539481530d00a78d1e8ee1c9bcba7d62b6ae5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17452701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd577f436e20fc0fd5dfb43e2cf6db31b416f4b4d1f45257bafe8d9b651aea6b`

```dockerfile
```

-	Layers:
	-	`sha256:4c01ad9af86a0393e864afc7fb0353f9c421c4172401fa5b9f3a04b8031a3f6d`  
		Last Modified: Sat, 12 Sep 2026 00:11:35 GMT  
		Size: 17.4 MB (17417403 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:afd4b55f41d0d8e5e82fab01597d834fed9d193f9ef139af6f015b8007e8abd2`  
		Last Modified: Sat, 12 Sep 2026 00:11:34 GMT  
		Size: 35.3 KB (35298 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:latest` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:7216386511066db8765356adb24d46fa579b287ded143a77af4fd9e2152df699
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.7 MB (268717797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb7cb08eb1cf3d0be5c735a8ac3c14c1a09ad0495a61ff5923306344c85fb38e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 11 Sep 2026 23:26:27 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Fri, 11 Sep 2026 23:26:27 GMT
CMD ["/bin/bash"]
# Sat, 12 Sep 2026 00:08:24 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Sat, 12 Sep 2026 00:08:26 GMT
ENV GOSU_VERSION=1.19
# Sat, 12 Sep 2026 00:08:26 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 12 Sep 2026 00:09:02 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Sat, 12 Sep 2026 00:09:03 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Sat, 12 Sep 2026 00:09:03 GMT
ENV MYSQL_MAJOR=innovation
# Sat, 12 Sep 2026 00:09:03 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Sat, 12 Sep 2026 00:09:03 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Sat, 12 Sep 2026 00:09:43 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Sat, 12 Sep 2026 00:09:43 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Sat, 12 Sep 2026 00:09:43 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Sat, 12 Sep 2026 00:10:34 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Sat, 12 Sep 2026 00:10:34 GMT
VOLUME [/var/lib/mysql]
# Sat, 12 Sep 2026 00:10:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 12 Sep 2026 00:10:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 12 Sep 2026 00:10:34 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Sat, 12 Sep 2026 00:10:34 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:8e88a63a99d33b759690f9a9c14fa268d0d7021d7ba10b95738853eacfae654e`  
		Last Modified: Fri, 11 Sep 2026 23:26:38 GMT  
		Size: 46.5 MB (46478146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cc8b5218bdfc562fa40c1276e9ba629338fbbbda090bcff57511efe8aa1a243`  
		Last Modified: Sat, 12 Sep 2026 00:11:10 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82d5f282ab29fcf848cbb4926d2ef0a338b0ccb60b1c5e6ecf08419a0efad29d`  
		Last Modified: Sat, 12 Sep 2026 00:11:10 GMT  
		Size: 737.5 KB (737526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ac6ac725ff960e7ddde0be43e5cf1f51bb7630a3fa5e09e6bc13b835864d869`  
		Last Modified: Sat, 12 Sep 2026 00:11:10 GMT  
		Size: 5.8 MB (5817162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e280b918d4f60e62c0040b014f68b51a96ad8cbc1d553f5cb9355fe5316ace78`  
		Last Modified: Sat, 12 Sep 2026 00:11:10 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f66234aafb78805130cae704567fa6701d10737b8191276916356be0bee3ce01`  
		Last Modified: Sat, 12 Sep 2026 00:11:11 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69f2e6b0f4834feb6eafe70f63d52b0c2f8b16513ed57da3f51318991fd744cb`  
		Last Modified: Sat, 12 Sep 2026 00:11:13 GMT  
		Size: 57.4 MB (57433356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b53b600954c22f62c1d1948d65f2dc6c6205e3996aa6a21a47b081f3afd1ffee`  
		Last Modified: Sat, 12 Sep 2026 00:11:12 GMT  
		Size: 324.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5851225399d70447fd534f656c1781822138abf44f2a1e465a4670fd7fbcc5d2`  
		Last Modified: Sat, 12 Sep 2026 00:11:16 GMT  
		Size: 158.2 MB (158242225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:316e3ee0d8ced9ac3269c64cf2975b66e8583023a9f6aa301bb71fed2303b6e3`  
		Last Modified: Sat, 12 Sep 2026 00:11:13 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:latest` - unknown; unknown

```console
$ docker pull mysql@sha256:c4f7b3de5c98b29cb44ff98ef53edf09a17a24a2a0d5461025cb30b855c2fddb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17451515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:153c5bf9f7baebb3618540997454074002fe046831fd1a243729fea8cb4755dc`

```dockerfile
```

-	Layers:
	-	`sha256:8d649ba510f9dbd56c78a9856c9818711cb5976481cb6357f5c5b3c7a4130e8d`  
		Last Modified: Sat, 12 Sep 2026 00:11:11 GMT  
		Size: 17.4 MB (17415876 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:88ed07925d0565f6f1f684199700e6347b6702caec8e738a48d1339ce921f563`  
		Last Modified: Sat, 12 Sep 2026 00:11:10 GMT  
		Size: 35.6 KB (35639 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:lts`

```console
$ docker pull mysql@sha256:29abb0a179982e4a8928138bfc7f918af9eda64e7eeb1b1d084c1720a20159e6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:lts` - linux; amd64

```console
$ docker pull mysql@sha256:fb28a51a17c84c907284a8124cfd888ffbe6f83457182baaa6f359c87b87c241
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.9 MB (270908995 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3234c1932b5583273f2a12735f99d44836f67dc63167bb8e16163a209ed54d3a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 11 Sep 2026 23:24:06 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Fri, 11 Sep 2026 23:24:06 GMT
CMD ["/bin/bash"]
# Sat, 12 Sep 2026 00:09:02 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Sat, 12 Sep 2026 00:09:04 GMT
ENV GOSU_VERSION=1.19
# Sat, 12 Sep 2026 00:09:04 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 12 Sep 2026 00:09:34 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Sat, 12 Sep 2026 00:09:35 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Sat, 12 Sep 2026 00:09:35 GMT
ENV MYSQL_MAJOR=9.7
# Sat, 12 Sep 2026 00:09:35 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Sat, 12 Sep 2026 00:09:35 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Sat, 12 Sep 2026 00:10:08 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Sat, 12 Sep 2026 00:10:08 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Sat, 12 Sep 2026 00:10:08 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Sat, 12 Sep 2026 00:10:51 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Sat, 12 Sep 2026 00:10:51 GMT
VOLUME [/var/lib/mysql]
# Sat, 12 Sep 2026 00:10:51 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 12 Sep 2026 00:10:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 12 Sep 2026 00:10:51 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Sat, 12 Sep 2026 00:10:51 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:13c85306055eb6ecca743420c9a29fec0936e01bea1df866947ecc554f9b7235`  
		Last Modified: Fri, 11 Sep 2026 23:24:17 GMT  
		Size: 47.9 MB (47931319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c4e0a435260fc829e6467cb48522ab5045e1aefa7d2f627cee5cddb7ee3ecdb`  
		Last Modified: Sat, 12 Sep 2026 00:11:22 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14270c78a6c55bf9bec238e906e3c66cf42250d21671598c6aa0d8557645466c`  
		Last Modified: Sat, 12 Sep 2026 00:11:22 GMT  
		Size: 783.6 KB (783556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5913e52d5cae2fd96a53fd1d59caed052635284454600b97f9dd859e42191fda`  
		Last Modified: Sat, 12 Sep 2026 00:11:22 GMT  
		Size: 6.2 MB (6193403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13b105d8f6268f46a8887f58d9327182235c6cf750df9ef1f129c08d8973d217`  
		Last Modified: Sat, 12 Sep 2026 00:11:22 GMT  
		Size: 2.6 KB (2606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb5f936c3d8fc12cbedf1db503a1afd91baa6110ce5c4cf636494e1b1e99f7cd`  
		Last Modified: Sat, 12 Sep 2026 00:11:23 GMT  
		Size: 331.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ef76de4774dd029da1503a431685f786a3dcb954fdf73501c79acf55e9869e6`  
		Last Modified: Sat, 12 Sep 2026 00:11:25 GMT  
		Size: 57.1 MB (57050260 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba37f2004dfc90c8c58e27d8b2139cefbf25b0c953d431565192fbe9012540ae`  
		Last Modified: Sat, 12 Sep 2026 00:11:23 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9375bfa1384e6b65ac458505278ee5d46cea9dcfc046ebb82e5d0f7e6709bd52`  
		Last Modified: Sat, 12 Sep 2026 00:11:27 GMT  
		Size: 158.9 MB (158941093 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c47902efba569bf9ce0721bfb083c4cfa161b458727fb0a24be7dc291a00fc01`  
		Last Modified: Sat, 12 Sep 2026 00:11:24 GMT  
		Size: 5.2 KB (5221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:lts` - unknown; unknown

```console
$ docker pull mysql@sha256:a982f254285f6f15783b8ce79d0beb991071c1d14fdfae5954db15daa1ebd157
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb50080ab5e499ba9d0d1af17867a4823e2bae262ee608e18361374fbbf20e5c`

```dockerfile
```

-	Layers:
	-	`sha256:ff8ec1142db1bfb2ae25176626938567a2566171e09553591b6a546da2a0dc4b`  
		Last Modified: Sat, 12 Sep 2026 00:11:23 GMT  
		Size: 16.8 MB (16799179 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ebb6efdbe088327f60d14d412d69ee2f8d745622fbda9c5af1fca5c518025e24`  
		Last Modified: Sat, 12 Sep 2026 00:11:22 GMT  
		Size: 34.2 KB (34208 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:lts` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:c18347cec3191469d0928f8bd01610c8c6b587b3a1a6ae2c9f337ee7ba683ccc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.4 MB (267373446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aaad7d7e73277d8b2ab2994340b2ea499c26eff3913e5fa20944f442b6b9ac92`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 11 Sep 2026 23:26:27 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Fri, 11 Sep 2026 23:26:27 GMT
CMD ["/bin/bash"]
# Sat, 12 Sep 2026 00:08:55 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Sat, 12 Sep 2026 00:08:56 GMT
ENV GOSU_VERSION=1.19
# Sat, 12 Sep 2026 00:08:56 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 12 Sep 2026 00:09:33 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Sat, 12 Sep 2026 00:09:34 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Sat, 12 Sep 2026 00:09:34 GMT
ENV MYSQL_MAJOR=9.7
# Sat, 12 Sep 2026 00:09:34 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Sat, 12 Sep 2026 00:09:34 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Sat, 12 Sep 2026 00:10:14 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Sat, 12 Sep 2026 00:10:14 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Sat, 12 Sep 2026 00:10:14 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Sat, 12 Sep 2026 00:11:07 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Sat, 12 Sep 2026 00:11:07 GMT
VOLUME [/var/lib/mysql]
# Sat, 12 Sep 2026 00:11:07 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 12 Sep 2026 00:11:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 12 Sep 2026 00:11:07 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Sat, 12 Sep 2026 00:11:07 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:8e88a63a99d33b759690f9a9c14fa268d0d7021d7ba10b95738853eacfae654e`  
		Last Modified: Fri, 11 Sep 2026 23:26:38 GMT  
		Size: 46.5 MB (46478146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ada0979502f8f7abd85ba0435fcb7067b05550bff6128e4134073acd163ac05b`  
		Last Modified: Sat, 12 Sep 2026 00:11:35 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d54abfbd047a20046ecee67605c81c7e818d6b7419167f3fa38357ca2225cc9`  
		Last Modified: Sat, 12 Sep 2026 00:11:35 GMT  
		Size: 737.5 KB (737527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5777c8ba3f1ae47448d427adc5e83c54eecebac51f7ca340c772c31ecefdecb`  
		Last Modified: Sat, 12 Sep 2026 00:11:42 GMT  
		Size: 5.8 MB (5817167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:805d36d9332f45379f1ee1960ec35e460c24e6062f6b8a17bb8b565b35d6f083`  
		Last Modified: Sat, 12 Sep 2026 00:11:42 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d44230efaa8cab58a8f99af8b6c3af5f154471b0b6de4ce8b21c937448bbb1f`  
		Last Modified: Sat, 12 Sep 2026 00:11:42 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f75ec904076cb57a4cea5a5adbc074599794aa7aa45dd62a6e3110658f1c29a2`  
		Last Modified: Sat, 12 Sep 2026 00:11:44 GMT  
		Size: 57.1 MB (57118816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50cc20c89e6f69e3cc7e4e99d86284dacdbc52d5d68a28f33c7250b8d9e00c3f`  
		Last Modified: Sat, 12 Sep 2026 00:11:43 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:230672aac3ce9a80ffccab3ddac333101482fd0c49797f762ba54123560b3c11`  
		Last Modified: Sat, 12 Sep 2026 00:11:47 GMT  
		Size: 157.2 MB (157212423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b3cb983cc15bd0b6270e9f4079ac35ffe79ade9130b7863777872529ec342ff`  
		Last Modified: Sat, 12 Sep 2026 00:11:44 GMT  
		Size: 5.2 KB (5222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:lts` - unknown; unknown

```console
$ docker pull mysql@sha256:a6baf7fe73d8caa02a46f2bbe6db6fb9f888890ee91e9b87f02fc30c41555529
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16832127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a6cafb610ce5b34acd91a40d91038d056fb1d1956a0deb5b4efc1abde0ce04f`

```dockerfile
```

-	Layers:
	-	`sha256:490fc9f70f50840c0cd41e3975184568a93bae338caaa22874a80179b84f8374`  
		Last Modified: Sat, 12 Sep 2026 00:11:43 GMT  
		Size: 16.8 MB (16797615 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:706415bf299e8837a2384d0367c2a37dc2cc0738be5cb7ae6c78b1aa5dcae327`  
		Last Modified: Sat, 12 Sep 2026 00:11:42 GMT  
		Size: 34.5 KB (34512 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:lts-oracle`

```console
$ docker pull mysql@sha256:29abb0a179982e4a8928138bfc7f918af9eda64e7eeb1b1d084c1720a20159e6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:lts-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:fb28a51a17c84c907284a8124cfd888ffbe6f83457182baaa6f359c87b87c241
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.9 MB (270908995 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3234c1932b5583273f2a12735f99d44836f67dc63167bb8e16163a209ed54d3a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 11 Sep 2026 23:24:06 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Fri, 11 Sep 2026 23:24:06 GMT
CMD ["/bin/bash"]
# Sat, 12 Sep 2026 00:09:02 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Sat, 12 Sep 2026 00:09:04 GMT
ENV GOSU_VERSION=1.19
# Sat, 12 Sep 2026 00:09:04 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 12 Sep 2026 00:09:34 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Sat, 12 Sep 2026 00:09:35 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Sat, 12 Sep 2026 00:09:35 GMT
ENV MYSQL_MAJOR=9.7
# Sat, 12 Sep 2026 00:09:35 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Sat, 12 Sep 2026 00:09:35 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Sat, 12 Sep 2026 00:10:08 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Sat, 12 Sep 2026 00:10:08 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Sat, 12 Sep 2026 00:10:08 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Sat, 12 Sep 2026 00:10:51 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Sat, 12 Sep 2026 00:10:51 GMT
VOLUME [/var/lib/mysql]
# Sat, 12 Sep 2026 00:10:51 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 12 Sep 2026 00:10:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 12 Sep 2026 00:10:51 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Sat, 12 Sep 2026 00:10:51 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:13c85306055eb6ecca743420c9a29fec0936e01bea1df866947ecc554f9b7235`  
		Last Modified: Fri, 11 Sep 2026 23:24:17 GMT  
		Size: 47.9 MB (47931319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c4e0a435260fc829e6467cb48522ab5045e1aefa7d2f627cee5cddb7ee3ecdb`  
		Last Modified: Sat, 12 Sep 2026 00:11:22 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14270c78a6c55bf9bec238e906e3c66cf42250d21671598c6aa0d8557645466c`  
		Last Modified: Sat, 12 Sep 2026 00:11:22 GMT  
		Size: 783.6 KB (783556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5913e52d5cae2fd96a53fd1d59caed052635284454600b97f9dd859e42191fda`  
		Last Modified: Sat, 12 Sep 2026 00:11:22 GMT  
		Size: 6.2 MB (6193403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13b105d8f6268f46a8887f58d9327182235c6cf750df9ef1f129c08d8973d217`  
		Last Modified: Sat, 12 Sep 2026 00:11:22 GMT  
		Size: 2.6 KB (2606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb5f936c3d8fc12cbedf1db503a1afd91baa6110ce5c4cf636494e1b1e99f7cd`  
		Last Modified: Sat, 12 Sep 2026 00:11:23 GMT  
		Size: 331.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ef76de4774dd029da1503a431685f786a3dcb954fdf73501c79acf55e9869e6`  
		Last Modified: Sat, 12 Sep 2026 00:11:25 GMT  
		Size: 57.1 MB (57050260 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba37f2004dfc90c8c58e27d8b2139cefbf25b0c953d431565192fbe9012540ae`  
		Last Modified: Sat, 12 Sep 2026 00:11:23 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9375bfa1384e6b65ac458505278ee5d46cea9dcfc046ebb82e5d0f7e6709bd52`  
		Last Modified: Sat, 12 Sep 2026 00:11:27 GMT  
		Size: 158.9 MB (158941093 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c47902efba569bf9ce0721bfb083c4cfa161b458727fb0a24be7dc291a00fc01`  
		Last Modified: Sat, 12 Sep 2026 00:11:24 GMT  
		Size: 5.2 KB (5221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:lts-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:a982f254285f6f15783b8ce79d0beb991071c1d14fdfae5954db15daa1ebd157
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb50080ab5e499ba9d0d1af17867a4823e2bae262ee608e18361374fbbf20e5c`

```dockerfile
```

-	Layers:
	-	`sha256:ff8ec1142db1bfb2ae25176626938567a2566171e09553591b6a546da2a0dc4b`  
		Last Modified: Sat, 12 Sep 2026 00:11:23 GMT  
		Size: 16.8 MB (16799179 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ebb6efdbe088327f60d14d412d69ee2f8d745622fbda9c5af1fca5c518025e24`  
		Last Modified: Sat, 12 Sep 2026 00:11:22 GMT  
		Size: 34.2 KB (34208 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:lts-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:c18347cec3191469d0928f8bd01610c8c6b587b3a1a6ae2c9f337ee7ba683ccc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.4 MB (267373446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aaad7d7e73277d8b2ab2994340b2ea499c26eff3913e5fa20944f442b6b9ac92`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 11 Sep 2026 23:26:27 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Fri, 11 Sep 2026 23:26:27 GMT
CMD ["/bin/bash"]
# Sat, 12 Sep 2026 00:08:55 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Sat, 12 Sep 2026 00:08:56 GMT
ENV GOSU_VERSION=1.19
# Sat, 12 Sep 2026 00:08:56 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 12 Sep 2026 00:09:33 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Sat, 12 Sep 2026 00:09:34 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Sat, 12 Sep 2026 00:09:34 GMT
ENV MYSQL_MAJOR=9.7
# Sat, 12 Sep 2026 00:09:34 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Sat, 12 Sep 2026 00:09:34 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Sat, 12 Sep 2026 00:10:14 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Sat, 12 Sep 2026 00:10:14 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Sat, 12 Sep 2026 00:10:14 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Sat, 12 Sep 2026 00:11:07 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Sat, 12 Sep 2026 00:11:07 GMT
VOLUME [/var/lib/mysql]
# Sat, 12 Sep 2026 00:11:07 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 12 Sep 2026 00:11:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 12 Sep 2026 00:11:07 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Sat, 12 Sep 2026 00:11:07 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:8e88a63a99d33b759690f9a9c14fa268d0d7021d7ba10b95738853eacfae654e`  
		Last Modified: Fri, 11 Sep 2026 23:26:38 GMT  
		Size: 46.5 MB (46478146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ada0979502f8f7abd85ba0435fcb7067b05550bff6128e4134073acd163ac05b`  
		Last Modified: Sat, 12 Sep 2026 00:11:35 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d54abfbd047a20046ecee67605c81c7e818d6b7419167f3fa38357ca2225cc9`  
		Last Modified: Sat, 12 Sep 2026 00:11:35 GMT  
		Size: 737.5 KB (737527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5777c8ba3f1ae47448d427adc5e83c54eecebac51f7ca340c772c31ecefdecb`  
		Last Modified: Sat, 12 Sep 2026 00:11:42 GMT  
		Size: 5.8 MB (5817167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:805d36d9332f45379f1ee1960ec35e460c24e6062f6b8a17bb8b565b35d6f083`  
		Last Modified: Sat, 12 Sep 2026 00:11:42 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d44230efaa8cab58a8f99af8b6c3af5f154471b0b6de4ce8b21c937448bbb1f`  
		Last Modified: Sat, 12 Sep 2026 00:11:42 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f75ec904076cb57a4cea5a5adbc074599794aa7aa45dd62a6e3110658f1c29a2`  
		Last Modified: Sat, 12 Sep 2026 00:11:44 GMT  
		Size: 57.1 MB (57118816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50cc20c89e6f69e3cc7e4e99d86284dacdbc52d5d68a28f33c7250b8d9e00c3f`  
		Last Modified: Sat, 12 Sep 2026 00:11:43 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:230672aac3ce9a80ffccab3ddac333101482fd0c49797f762ba54123560b3c11`  
		Last Modified: Sat, 12 Sep 2026 00:11:47 GMT  
		Size: 157.2 MB (157212423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b3cb983cc15bd0b6270e9f4079ac35ffe79ade9130b7863777872529ec342ff`  
		Last Modified: Sat, 12 Sep 2026 00:11:44 GMT  
		Size: 5.2 KB (5222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:lts-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:a6baf7fe73d8caa02a46f2bbe6db6fb9f888890ee91e9b87f02fc30c41555529
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16832127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a6cafb610ce5b34acd91a40d91038d056fb1d1956a0deb5b4efc1abde0ce04f`

```dockerfile
```

-	Layers:
	-	`sha256:490fc9f70f50840c0cd41e3975184568a93bae338caaa22874a80179b84f8374`  
		Last Modified: Sat, 12 Sep 2026 00:11:43 GMT  
		Size: 16.8 MB (16797615 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:706415bf299e8837a2384d0367c2a37dc2cc0738be5cb7ae6c78b1aa5dcae327`  
		Last Modified: Sat, 12 Sep 2026 00:11:42 GMT  
		Size: 34.5 KB (34512 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:lts-oraclelinux9`

```console
$ docker pull mysql@sha256:29abb0a179982e4a8928138bfc7f918af9eda64e7eeb1b1d084c1720a20159e6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:lts-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:fb28a51a17c84c907284a8124cfd888ffbe6f83457182baaa6f359c87b87c241
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.9 MB (270908995 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3234c1932b5583273f2a12735f99d44836f67dc63167bb8e16163a209ed54d3a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 11 Sep 2026 23:24:06 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Fri, 11 Sep 2026 23:24:06 GMT
CMD ["/bin/bash"]
# Sat, 12 Sep 2026 00:09:02 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Sat, 12 Sep 2026 00:09:04 GMT
ENV GOSU_VERSION=1.19
# Sat, 12 Sep 2026 00:09:04 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 12 Sep 2026 00:09:34 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Sat, 12 Sep 2026 00:09:35 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Sat, 12 Sep 2026 00:09:35 GMT
ENV MYSQL_MAJOR=9.7
# Sat, 12 Sep 2026 00:09:35 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Sat, 12 Sep 2026 00:09:35 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Sat, 12 Sep 2026 00:10:08 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Sat, 12 Sep 2026 00:10:08 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Sat, 12 Sep 2026 00:10:08 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Sat, 12 Sep 2026 00:10:51 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Sat, 12 Sep 2026 00:10:51 GMT
VOLUME [/var/lib/mysql]
# Sat, 12 Sep 2026 00:10:51 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 12 Sep 2026 00:10:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 12 Sep 2026 00:10:51 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Sat, 12 Sep 2026 00:10:51 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:13c85306055eb6ecca743420c9a29fec0936e01bea1df866947ecc554f9b7235`  
		Last Modified: Fri, 11 Sep 2026 23:24:17 GMT  
		Size: 47.9 MB (47931319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c4e0a435260fc829e6467cb48522ab5045e1aefa7d2f627cee5cddb7ee3ecdb`  
		Last Modified: Sat, 12 Sep 2026 00:11:22 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14270c78a6c55bf9bec238e906e3c66cf42250d21671598c6aa0d8557645466c`  
		Last Modified: Sat, 12 Sep 2026 00:11:22 GMT  
		Size: 783.6 KB (783556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5913e52d5cae2fd96a53fd1d59caed052635284454600b97f9dd859e42191fda`  
		Last Modified: Sat, 12 Sep 2026 00:11:22 GMT  
		Size: 6.2 MB (6193403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13b105d8f6268f46a8887f58d9327182235c6cf750df9ef1f129c08d8973d217`  
		Last Modified: Sat, 12 Sep 2026 00:11:22 GMT  
		Size: 2.6 KB (2606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb5f936c3d8fc12cbedf1db503a1afd91baa6110ce5c4cf636494e1b1e99f7cd`  
		Last Modified: Sat, 12 Sep 2026 00:11:23 GMT  
		Size: 331.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ef76de4774dd029da1503a431685f786a3dcb954fdf73501c79acf55e9869e6`  
		Last Modified: Sat, 12 Sep 2026 00:11:25 GMT  
		Size: 57.1 MB (57050260 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba37f2004dfc90c8c58e27d8b2139cefbf25b0c953d431565192fbe9012540ae`  
		Last Modified: Sat, 12 Sep 2026 00:11:23 GMT  
		Size: 321.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9375bfa1384e6b65ac458505278ee5d46cea9dcfc046ebb82e5d0f7e6709bd52`  
		Last Modified: Sat, 12 Sep 2026 00:11:27 GMT  
		Size: 158.9 MB (158941093 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c47902efba569bf9ce0721bfb083c4cfa161b458727fb0a24be7dc291a00fc01`  
		Last Modified: Sat, 12 Sep 2026 00:11:24 GMT  
		Size: 5.2 KB (5221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:lts-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:a982f254285f6f15783b8ce79d0beb991071c1d14fdfae5954db15daa1ebd157
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb50080ab5e499ba9d0d1af17867a4823e2bae262ee608e18361374fbbf20e5c`

```dockerfile
```

-	Layers:
	-	`sha256:ff8ec1142db1bfb2ae25176626938567a2566171e09553591b6a546da2a0dc4b`  
		Last Modified: Sat, 12 Sep 2026 00:11:23 GMT  
		Size: 16.8 MB (16799179 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ebb6efdbe088327f60d14d412d69ee2f8d745622fbda9c5af1fca5c518025e24`  
		Last Modified: Sat, 12 Sep 2026 00:11:22 GMT  
		Size: 34.2 KB (34208 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:lts-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:c18347cec3191469d0928f8bd01610c8c6b587b3a1a6ae2c9f337ee7ba683ccc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.4 MB (267373446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aaad7d7e73277d8b2ab2994340b2ea499c26eff3913e5fa20944f442b6b9ac92`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 11 Sep 2026 23:26:27 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Fri, 11 Sep 2026 23:26:27 GMT
CMD ["/bin/bash"]
# Sat, 12 Sep 2026 00:08:55 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Sat, 12 Sep 2026 00:08:56 GMT
ENV GOSU_VERSION=1.19
# Sat, 12 Sep 2026 00:08:56 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 12 Sep 2026 00:09:33 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Sat, 12 Sep 2026 00:09:34 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Sat, 12 Sep 2026 00:09:34 GMT
ENV MYSQL_MAJOR=9.7
# Sat, 12 Sep 2026 00:09:34 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Sat, 12 Sep 2026 00:09:34 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Sat, 12 Sep 2026 00:10:14 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Sat, 12 Sep 2026 00:10:14 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Sat, 12 Sep 2026 00:10:14 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Sat, 12 Sep 2026 00:11:07 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Sat, 12 Sep 2026 00:11:07 GMT
VOLUME [/var/lib/mysql]
# Sat, 12 Sep 2026 00:11:07 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 12 Sep 2026 00:11:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 12 Sep 2026 00:11:07 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Sat, 12 Sep 2026 00:11:07 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:8e88a63a99d33b759690f9a9c14fa268d0d7021d7ba10b95738853eacfae654e`  
		Last Modified: Fri, 11 Sep 2026 23:26:38 GMT  
		Size: 46.5 MB (46478146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ada0979502f8f7abd85ba0435fcb7067b05550bff6128e4134073acd163ac05b`  
		Last Modified: Sat, 12 Sep 2026 00:11:35 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d54abfbd047a20046ecee67605c81c7e818d6b7419167f3fa38357ca2225cc9`  
		Last Modified: Sat, 12 Sep 2026 00:11:35 GMT  
		Size: 737.5 KB (737527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5777c8ba3f1ae47448d427adc5e83c54eecebac51f7ca340c772c31ecefdecb`  
		Last Modified: Sat, 12 Sep 2026 00:11:42 GMT  
		Size: 5.8 MB (5817167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:805d36d9332f45379f1ee1960ec35e460c24e6062f6b8a17bb8b565b35d6f083`  
		Last Modified: Sat, 12 Sep 2026 00:11:42 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d44230efaa8cab58a8f99af8b6c3af5f154471b0b6de4ce8b21c937448bbb1f`  
		Last Modified: Sat, 12 Sep 2026 00:11:42 GMT  
		Size: 333.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f75ec904076cb57a4cea5a5adbc074599794aa7aa45dd62a6e3110658f1c29a2`  
		Last Modified: Sat, 12 Sep 2026 00:11:44 GMT  
		Size: 57.1 MB (57118816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50cc20c89e6f69e3cc7e4e99d86284dacdbc52d5d68a28f33c7250b8d9e00c3f`  
		Last Modified: Sat, 12 Sep 2026 00:11:43 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:230672aac3ce9a80ffccab3ddac333101482fd0c49797f762ba54123560b3c11`  
		Last Modified: Sat, 12 Sep 2026 00:11:47 GMT  
		Size: 157.2 MB (157212423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b3cb983cc15bd0b6270e9f4079ac35ffe79ade9130b7863777872529ec342ff`  
		Last Modified: Sat, 12 Sep 2026 00:11:44 GMT  
		Size: 5.2 KB (5222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:lts-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:a6baf7fe73d8caa02a46f2bbe6db6fb9f888890ee91e9b87f02fc30c41555529
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16832127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a6cafb610ce5b34acd91a40d91038d056fb1d1956a0deb5b4efc1abde0ce04f`

```dockerfile
```

-	Layers:
	-	`sha256:490fc9f70f50840c0cd41e3975184568a93bae338caaa22874a80179b84f8374`  
		Last Modified: Sat, 12 Sep 2026 00:11:43 GMT  
		Size: 16.8 MB (16797615 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:706415bf299e8837a2384d0367c2a37dc2cc0738be5cb7ae6c78b1aa5dcae327`  
		Last Modified: Sat, 12 Sep 2026 00:11:42 GMT  
		Size: 34.5 KB (34512 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:oracle`

```console
$ docker pull mysql@sha256:45abdd9b4144660b5c93a5b7d0ebb21e024f0ba9851ecb4ab43bf83c6bf83592
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:oracle` - linux; amd64

```console
$ docker pull mysql@sha256:e90497776da10a4700999242a58d779a86879225bb2d8544b4109272a4c288bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.4 MB (272350479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21ed0f5cc49429e295ee53a1c19e9726067987d14b4b29d6cd35599ad066c4eb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 11 Sep 2026 23:24:06 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Fri, 11 Sep 2026 23:24:06 GMT
CMD ["/bin/bash"]
# Sat, 12 Sep 2026 00:08:53 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Sat, 12 Sep 2026 00:08:54 GMT
ENV GOSU_VERSION=1.19
# Sat, 12 Sep 2026 00:08:54 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 12 Sep 2026 00:09:29 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Sat, 12 Sep 2026 00:09:30 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Sat, 12 Sep 2026 00:09:30 GMT
ENV MYSQL_MAJOR=innovation
# Sat, 12 Sep 2026 00:09:30 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Sat, 12 Sep 2026 00:09:30 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Sat, 12 Sep 2026 00:10:09 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Sat, 12 Sep 2026 00:10:09 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Sat, 12 Sep 2026 00:10:09 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Sat, 12 Sep 2026 00:10:57 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Sat, 12 Sep 2026 00:10:57 GMT
VOLUME [/var/lib/mysql]
# Sat, 12 Sep 2026 00:10:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 12 Sep 2026 00:10:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 12 Sep 2026 00:10:58 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Sat, 12 Sep 2026 00:10:58 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:13c85306055eb6ecca743420c9a29fec0936e01bea1df866947ecc554f9b7235`  
		Last Modified: Fri, 11 Sep 2026 23:24:17 GMT  
		Size: 47.9 MB (47931319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1efac44fb10451bb6c48afdee56aceb0234a31d09f9abff40b8a45d353e9f4eb`  
		Last Modified: Sat, 12 Sep 2026 00:11:34 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f1d011bdd777410d8f289763994559a9be153f5771ebc32de2675a37147dfaf`  
		Last Modified: Sat, 12 Sep 2026 00:11:34 GMT  
		Size: 783.5 KB (783541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d61b3579fc6ca050cd58791db7a9ccb99553a828bf58f458693b95b22bfe699c`  
		Last Modified: Sat, 12 Sep 2026 00:11:34 GMT  
		Size: 6.2 MB (6193394 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5703b6421969ea9aff5cd6360efecae6e51b136dfa07a82656251d48e31b622`  
		Last Modified: Sat, 12 Sep 2026 00:11:26 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24899866011650b17a308d6dbb0dec68226c20699b2a73c9fd4deb4444dd8b28`  
		Last Modified: Sat, 12 Sep 2026 00:11:34 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13707ba668372c347e859a0c18a470add82d4189cc26e7ed927f0c018e9ac25e`  
		Last Modified: Sat, 12 Sep 2026 00:11:37 GMT  
		Size: 57.5 MB (57457519 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c4ffcc46f7cdd865fd1da77be7e5e1ae404849c15875ca684e75d8e2d33b9c8`  
		Last Modified: Sat, 12 Sep 2026 00:11:35 GMT  
		Size: 324.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee778d752aff96f367302483b39dcb42e27f91127326d1092469b3cc347b99bf`  
		Last Modified: Sat, 12 Sep 2026 00:11:40 GMT  
		Size: 160.0 MB (159975330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a869fc9d82872e499c0486dc9183f2bba06dc62f4256a28386987a67a0dbcede`  
		Last Modified: Sat, 12 Sep 2026 00:11:36 GMT  
		Size: 5.2 KB (5223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:f5ae1648f33608475f8fed10684539481530d00a78d1e8ee1c9bcba7d62b6ae5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17452701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd577f436e20fc0fd5dfb43e2cf6db31b416f4b4d1f45257bafe8d9b651aea6b`

```dockerfile
```

-	Layers:
	-	`sha256:4c01ad9af86a0393e864afc7fb0353f9c421c4172401fa5b9f3a04b8031a3f6d`  
		Last Modified: Sat, 12 Sep 2026 00:11:35 GMT  
		Size: 17.4 MB (17417403 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:afd4b55f41d0d8e5e82fab01597d834fed9d193f9ef139af6f015b8007e8abd2`  
		Last Modified: Sat, 12 Sep 2026 00:11:34 GMT  
		Size: 35.3 KB (35298 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:7216386511066db8765356adb24d46fa579b287ded143a77af4fd9e2152df699
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.7 MB (268717797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb7cb08eb1cf3d0be5c735a8ac3c14c1a09ad0495a61ff5923306344c85fb38e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 11 Sep 2026 23:26:27 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Fri, 11 Sep 2026 23:26:27 GMT
CMD ["/bin/bash"]
# Sat, 12 Sep 2026 00:08:24 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Sat, 12 Sep 2026 00:08:26 GMT
ENV GOSU_VERSION=1.19
# Sat, 12 Sep 2026 00:08:26 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 12 Sep 2026 00:09:02 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Sat, 12 Sep 2026 00:09:03 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Sat, 12 Sep 2026 00:09:03 GMT
ENV MYSQL_MAJOR=innovation
# Sat, 12 Sep 2026 00:09:03 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Sat, 12 Sep 2026 00:09:03 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Sat, 12 Sep 2026 00:09:43 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Sat, 12 Sep 2026 00:09:43 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Sat, 12 Sep 2026 00:09:43 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Sat, 12 Sep 2026 00:10:34 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Sat, 12 Sep 2026 00:10:34 GMT
VOLUME [/var/lib/mysql]
# Sat, 12 Sep 2026 00:10:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 12 Sep 2026 00:10:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 12 Sep 2026 00:10:34 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Sat, 12 Sep 2026 00:10:34 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:8e88a63a99d33b759690f9a9c14fa268d0d7021d7ba10b95738853eacfae654e`  
		Last Modified: Fri, 11 Sep 2026 23:26:38 GMT  
		Size: 46.5 MB (46478146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cc8b5218bdfc562fa40c1276e9ba629338fbbbda090bcff57511efe8aa1a243`  
		Last Modified: Sat, 12 Sep 2026 00:11:10 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82d5f282ab29fcf848cbb4926d2ef0a338b0ccb60b1c5e6ecf08419a0efad29d`  
		Last Modified: Sat, 12 Sep 2026 00:11:10 GMT  
		Size: 737.5 KB (737526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ac6ac725ff960e7ddde0be43e5cf1f51bb7630a3fa5e09e6bc13b835864d869`  
		Last Modified: Sat, 12 Sep 2026 00:11:10 GMT  
		Size: 5.8 MB (5817162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e280b918d4f60e62c0040b014f68b51a96ad8cbc1d553f5cb9355fe5316ace78`  
		Last Modified: Sat, 12 Sep 2026 00:11:10 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f66234aafb78805130cae704567fa6701d10737b8191276916356be0bee3ce01`  
		Last Modified: Sat, 12 Sep 2026 00:11:11 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69f2e6b0f4834feb6eafe70f63d52b0c2f8b16513ed57da3f51318991fd744cb`  
		Last Modified: Sat, 12 Sep 2026 00:11:13 GMT  
		Size: 57.4 MB (57433356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b53b600954c22f62c1d1948d65f2dc6c6205e3996aa6a21a47b081f3afd1ffee`  
		Last Modified: Sat, 12 Sep 2026 00:11:12 GMT  
		Size: 324.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5851225399d70447fd534f656c1781822138abf44f2a1e465a4670fd7fbcc5d2`  
		Last Modified: Sat, 12 Sep 2026 00:11:16 GMT  
		Size: 158.2 MB (158242225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:316e3ee0d8ced9ac3269c64cf2975b66e8583023a9f6aa301bb71fed2303b6e3`  
		Last Modified: Sat, 12 Sep 2026 00:11:13 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:c4f7b3de5c98b29cb44ff98ef53edf09a17a24a2a0d5461025cb30b855c2fddb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17451515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:153c5bf9f7baebb3618540997454074002fe046831fd1a243729fea8cb4755dc`

```dockerfile
```

-	Layers:
	-	`sha256:8d649ba510f9dbd56c78a9856c9818711cb5976481cb6357f5c5b3c7a4130e8d`  
		Last Modified: Sat, 12 Sep 2026 00:11:11 GMT  
		Size: 17.4 MB (17415876 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:88ed07925d0565f6f1f684199700e6347b6702caec8e738a48d1339ce921f563`  
		Last Modified: Sat, 12 Sep 2026 00:11:10 GMT  
		Size: 35.6 KB (35639 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:oraclelinux9`

```console
$ docker pull mysql@sha256:45abdd9b4144660b5c93a5b7d0ebb21e024f0ba9851ecb4ab43bf83c6bf83592
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:e90497776da10a4700999242a58d779a86879225bb2d8544b4109272a4c288bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.4 MB (272350479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21ed0f5cc49429e295ee53a1c19e9726067987d14b4b29d6cd35599ad066c4eb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 11 Sep 2026 23:24:06 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Fri, 11 Sep 2026 23:24:06 GMT
CMD ["/bin/bash"]
# Sat, 12 Sep 2026 00:08:53 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Sat, 12 Sep 2026 00:08:54 GMT
ENV GOSU_VERSION=1.19
# Sat, 12 Sep 2026 00:08:54 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 12 Sep 2026 00:09:29 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Sat, 12 Sep 2026 00:09:30 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Sat, 12 Sep 2026 00:09:30 GMT
ENV MYSQL_MAJOR=innovation
# Sat, 12 Sep 2026 00:09:30 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Sat, 12 Sep 2026 00:09:30 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Sat, 12 Sep 2026 00:10:09 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Sat, 12 Sep 2026 00:10:09 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Sat, 12 Sep 2026 00:10:09 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Sat, 12 Sep 2026 00:10:57 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Sat, 12 Sep 2026 00:10:57 GMT
VOLUME [/var/lib/mysql]
# Sat, 12 Sep 2026 00:10:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 12 Sep 2026 00:10:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 12 Sep 2026 00:10:58 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Sat, 12 Sep 2026 00:10:58 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:13c85306055eb6ecca743420c9a29fec0936e01bea1df866947ecc554f9b7235`  
		Last Modified: Fri, 11 Sep 2026 23:24:17 GMT  
		Size: 47.9 MB (47931319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1efac44fb10451bb6c48afdee56aceb0234a31d09f9abff40b8a45d353e9f4eb`  
		Last Modified: Sat, 12 Sep 2026 00:11:34 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f1d011bdd777410d8f289763994559a9be153f5771ebc32de2675a37147dfaf`  
		Last Modified: Sat, 12 Sep 2026 00:11:34 GMT  
		Size: 783.5 KB (783541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d61b3579fc6ca050cd58791db7a9ccb99553a828bf58f458693b95b22bfe699c`  
		Last Modified: Sat, 12 Sep 2026 00:11:34 GMT  
		Size: 6.2 MB (6193394 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5703b6421969ea9aff5cd6360efecae6e51b136dfa07a82656251d48e31b622`  
		Last Modified: Sat, 12 Sep 2026 00:11:26 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24899866011650b17a308d6dbb0dec68226c20699b2a73c9fd4deb4444dd8b28`  
		Last Modified: Sat, 12 Sep 2026 00:11:34 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13707ba668372c347e859a0c18a470add82d4189cc26e7ed927f0c018e9ac25e`  
		Last Modified: Sat, 12 Sep 2026 00:11:37 GMT  
		Size: 57.5 MB (57457519 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c4ffcc46f7cdd865fd1da77be7e5e1ae404849c15875ca684e75d8e2d33b9c8`  
		Last Modified: Sat, 12 Sep 2026 00:11:35 GMT  
		Size: 324.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee778d752aff96f367302483b39dcb42e27f91127326d1092469b3cc347b99bf`  
		Last Modified: Sat, 12 Sep 2026 00:11:40 GMT  
		Size: 160.0 MB (159975330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a869fc9d82872e499c0486dc9183f2bba06dc62f4256a28386987a67a0dbcede`  
		Last Modified: Sat, 12 Sep 2026 00:11:36 GMT  
		Size: 5.2 KB (5223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:f5ae1648f33608475f8fed10684539481530d00a78d1e8ee1c9bcba7d62b6ae5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17452701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd577f436e20fc0fd5dfb43e2cf6db31b416f4b4d1f45257bafe8d9b651aea6b`

```dockerfile
```

-	Layers:
	-	`sha256:4c01ad9af86a0393e864afc7fb0353f9c421c4172401fa5b9f3a04b8031a3f6d`  
		Last Modified: Sat, 12 Sep 2026 00:11:35 GMT  
		Size: 17.4 MB (17417403 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:afd4b55f41d0d8e5e82fab01597d834fed9d193f9ef139af6f015b8007e8abd2`  
		Last Modified: Sat, 12 Sep 2026 00:11:34 GMT  
		Size: 35.3 KB (35298 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:7216386511066db8765356adb24d46fa579b287ded143a77af4fd9e2152df699
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.7 MB (268717797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb7cb08eb1cf3d0be5c735a8ac3c14c1a09ad0495a61ff5923306344c85fb38e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 11 Sep 2026 23:26:27 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Fri, 11 Sep 2026 23:26:27 GMT
CMD ["/bin/bash"]
# Sat, 12 Sep 2026 00:08:24 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Sat, 12 Sep 2026 00:08:26 GMT
ENV GOSU_VERSION=1.19
# Sat, 12 Sep 2026 00:08:26 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 12 Sep 2026 00:09:02 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Sat, 12 Sep 2026 00:09:03 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Sat, 12 Sep 2026 00:09:03 GMT
ENV MYSQL_MAJOR=innovation
# Sat, 12 Sep 2026 00:09:03 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Sat, 12 Sep 2026 00:09:03 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Sat, 12 Sep 2026 00:09:43 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Sat, 12 Sep 2026 00:09:43 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Sat, 12 Sep 2026 00:09:43 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Sat, 12 Sep 2026 00:10:34 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Sat, 12 Sep 2026 00:10:34 GMT
VOLUME [/var/lib/mysql]
# Sat, 12 Sep 2026 00:10:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 12 Sep 2026 00:10:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 12 Sep 2026 00:10:34 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Sat, 12 Sep 2026 00:10:34 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:8e88a63a99d33b759690f9a9c14fa268d0d7021d7ba10b95738853eacfae654e`  
		Last Modified: Fri, 11 Sep 2026 23:26:38 GMT  
		Size: 46.5 MB (46478146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cc8b5218bdfc562fa40c1276e9ba629338fbbbda090bcff57511efe8aa1a243`  
		Last Modified: Sat, 12 Sep 2026 00:11:10 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82d5f282ab29fcf848cbb4926d2ef0a338b0ccb60b1c5e6ecf08419a0efad29d`  
		Last Modified: Sat, 12 Sep 2026 00:11:10 GMT  
		Size: 737.5 KB (737526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ac6ac725ff960e7ddde0be43e5cf1f51bb7630a3fa5e09e6bc13b835864d869`  
		Last Modified: Sat, 12 Sep 2026 00:11:10 GMT  
		Size: 5.8 MB (5817162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e280b918d4f60e62c0040b014f68b51a96ad8cbc1d553f5cb9355fe5316ace78`  
		Last Modified: Sat, 12 Sep 2026 00:11:10 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f66234aafb78805130cae704567fa6701d10737b8191276916356be0bee3ce01`  
		Last Modified: Sat, 12 Sep 2026 00:11:11 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69f2e6b0f4834feb6eafe70f63d52b0c2f8b16513ed57da3f51318991fd744cb`  
		Last Modified: Sat, 12 Sep 2026 00:11:13 GMT  
		Size: 57.4 MB (57433356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b53b600954c22f62c1d1948d65f2dc6c6205e3996aa6a21a47b081f3afd1ffee`  
		Last Modified: Sat, 12 Sep 2026 00:11:12 GMT  
		Size: 324.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5851225399d70447fd534f656c1781822138abf44f2a1e465a4670fd7fbcc5d2`  
		Last Modified: Sat, 12 Sep 2026 00:11:16 GMT  
		Size: 158.2 MB (158242225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:316e3ee0d8ced9ac3269c64cf2975b66e8583023a9f6aa301bb71fed2303b6e3`  
		Last Modified: Sat, 12 Sep 2026 00:11:13 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:c4f7b3de5c98b29cb44ff98ef53edf09a17a24a2a0d5461025cb30b855c2fddb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17451515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:153c5bf9f7baebb3618540997454074002fe046831fd1a243729fea8cb4755dc`

```dockerfile
```

-	Layers:
	-	`sha256:8d649ba510f9dbd56c78a9856c9818711cb5976481cb6357f5c5b3c7a4130e8d`  
		Last Modified: Sat, 12 Sep 2026 00:11:11 GMT  
		Size: 17.4 MB (17415876 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:88ed07925d0565f6f1f684199700e6347b6702caec8e738a48d1339ce921f563`  
		Last Modified: Sat, 12 Sep 2026 00:11:10 GMT  
		Size: 35.6 KB (35639 bytes)  
		MIME: application/vnd.in-toto+json
