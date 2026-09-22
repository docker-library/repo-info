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
$ docker pull mysql@sha256:ade067ae2fb15eeb6143e81185afe22573e3b3addc58aaf90c41999fa6883991
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:26` - linux; amd64

```console
$ docker pull mysql@sha256:74849bf6226b8dafdb1258e90fab588de1e597a80487e744986d9d85d6a65836
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.4 MB (272359450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0485e3d5a3f3cb2cfd593047ab321a420f7026ec4ea0adc20e65eb42d420db68`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 21 Sep 2026 23:04:16 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 21 Sep 2026 23:04:16 GMT
CMD ["/bin/bash"]
# Mon, 21 Sep 2026 23:06:56 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 21 Sep 2026 23:06:57 GMT
ENV GOSU_VERSION=1.19
# Mon, 21 Sep 2026 23:06:57 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 21 Sep 2026 23:07:31 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 21 Sep 2026 23:07:31 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 21 Sep 2026 23:07:31 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 21 Sep 2026 23:07:31 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Mon, 21 Sep 2026 23:07:32 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 21 Sep 2026 23:08:08 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 21 Sep 2026 23:08:08 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 21 Sep 2026 23:08:08 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Mon, 21 Sep 2026 23:08:55 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 21 Sep 2026 23:08:55 GMT
VOLUME [/var/lib/mysql]
# Mon, 21 Sep 2026 23:08:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 21 Sep 2026 23:08:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Sep 2026 23:08:55 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 21 Sep 2026 23:08:55 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:6361e9307160bba9b9394334d9e85b77c416081e54c8ba8c6d0806dc0c4d5f4b`  
		Last Modified: Mon, 21 Sep 2026 23:04:27 GMT  
		Size: 47.9 MB (47941513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3534c258aabac4c46b37947f2089c39baa310568391f96404233e4c9df894e3a`  
		Last Modified: Mon, 21 Sep 2026 23:09:29 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a7fe1a85aa5548d42fcb8c335f7444be477ed2e9c73b20c83e191abfc71e61e`  
		Last Modified: Mon, 21 Sep 2026 23:09:29 GMT  
		Size: 783.5 KB (783541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30e12685077b4e92fbc033480c85f54689f367be5135b9e03aff46b36c09d2a3`  
		Last Modified: Mon, 21 Sep 2026 23:09:29 GMT  
		Size: 6.2 MB (6197645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb5715bbbeccb7f7385fa58362ba085fbf743725a960a1357d8f232e731716d8`  
		Last Modified: Mon, 21 Sep 2026 23:09:29 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59270b130aec3d2cdff3fc51e1058cd7b3faecd61bb4461ec3c17b6494a1ebdc`  
		Last Modified: Mon, 21 Sep 2026 23:09:30 GMT  
		Size: 341.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6de6b644e38e2677f72d5e17463e85fa1383d4425b4a4e731aa8799a4d666c80`  
		Last Modified: Mon, 21 Sep 2026 23:09:32 GMT  
		Size: 57.5 MB (57455040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:115b4caa98402fb25e0f4d1897406e658770f9c71967ee6ad98a120b51ce7d3c`  
		Last Modified: Mon, 21 Sep 2026 23:09:30 GMT  
		Size: 326.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e394e0b2e6500fe3fda549e1ab6ed1645db3882670433888ffa6126aa3f83c70`  
		Last Modified: Mon, 21 Sep 2026 23:09:34 GMT  
		Size: 160.0 MB (159972331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f7644b7ee9b3f7889f3fe5cf3c86f2cae37492fafd58e298846aa1122751a41`  
		Last Modified: Mon, 21 Sep 2026 23:09:31 GMT  
		Size: 5.2 KB (5223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26` - unknown; unknown

```console
$ docker pull mysql@sha256:da9f9956c561a82558cf5b75587eccaa3517bff02b94594b9438fba32d303e9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17452709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23c12b5d4c80cb4e0484d94eff80749e14d89a1993cd025ec8207b3587783064`

```dockerfile
```

-	Layers:
	-	`sha256:8b2919a887f80355a9f9687687048641fb52398a9e06e216fa82eef029f2cbd2`  
		Last Modified: Mon, 21 Sep 2026 23:09:30 GMT  
		Size: 17.4 MB (17417411 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ef1d56738a4a943ed88423c36741edee4314969e32c404c124852fde2dfbc3f7`  
		Last Modified: Mon, 21 Sep 2026 23:09:29 GMT  
		Size: 35.3 KB (35298 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:26` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:082788c625f6691d3dc3fde8669340cfb8bc0377c06e88889382f5f28e1bb81b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.7 MB (268735017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1ebb12281ad097d611394946626b6baf897511844d9a684d2cb39b15b83c117`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 21 Sep 2026 23:04:02 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 21 Sep 2026 23:04:02 GMT
CMD ["/bin/bash"]
# Mon, 21 Sep 2026 23:07:01 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 21 Sep 2026 23:07:03 GMT
ENV GOSU_VERSION=1.19
# Mon, 21 Sep 2026 23:07:03 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 21 Sep 2026 23:07:40 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 21 Sep 2026 23:07:41 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 21 Sep 2026 23:07:41 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 21 Sep 2026 23:07:41 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Mon, 21 Sep 2026 23:07:41 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 21 Sep 2026 23:08:23 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 21 Sep 2026 23:08:24 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 21 Sep 2026 23:08:24 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Mon, 21 Sep 2026 23:09:17 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 21 Sep 2026 23:09:17 GMT
VOLUME [/var/lib/mysql]
# Mon, 21 Sep 2026 23:09:17 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 21 Sep 2026 23:09:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Sep 2026 23:09:17 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 21 Sep 2026 23:09:17 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b20e21573231a46ffd267a5791372e98726f9d11dd03deafc22fd5d18be5deea`  
		Last Modified: Mon, 21 Sep 2026 23:04:13 GMT  
		Size: 46.5 MB (46486872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3da5a8d5edbf0be97b026be4c1c5ddf681829d79a21674a06faf3d7b0411db3c`  
		Last Modified: Mon, 21 Sep 2026 23:09:45 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b9f295eb849b2eb074a1c710e56992483657e9232651464245d0e591987db5a`  
		Last Modified: Mon, 21 Sep 2026 23:09:53 GMT  
		Size: 737.5 KB (737526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6be4adf735ca3632e65d150709806245be650fbf48e7e1986b77788a8146c359`  
		Last Modified: Mon, 21 Sep 2026 23:09:53 GMT  
		Size: 5.8 MB (5824191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f1ace268c37904c174f19891793114adc47a8fe347da7be4bb38f60480831da`  
		Last Modified: Mon, 21 Sep 2026 23:09:53 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eebc42e6f78939280abe7dc0a2930177e00e424cbf2e5f3294c5169a8d5647c0`  
		Last Modified: Mon, 21 Sep 2026 23:09:53 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb58f96fe4494fe31e39a842757b541e4efe827ae9a6bf23ea3b83e4c6e39294`  
		Last Modified: Mon, 21 Sep 2026 23:09:56 GMT  
		Size: 57.4 MB (57434784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:070dfb8de89b2a3e04a78e5e31ebf3105edc9b7ade18f2fe95f626be2fdd6a0f`  
		Last Modified: Mon, 21 Sep 2026 23:09:54 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2621ba5f41b09b2da5c3a9079448554687e1ed6536981107eec7bac27e1bcde2`  
		Last Modified: Mon, 21 Sep 2026 23:09:58 GMT  
		Size: 158.2 MB (158242261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25e22dbe9362df1586bc53875635061ed6fd5c9bbeba7c5775d6a03299a825e8`  
		Last Modified: Mon, 21 Sep 2026 23:09:55 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26` - unknown; unknown

```console
$ docker pull mysql@sha256:f73d97e9599d81b9e43ce58653e3235678c9c77588da26952bb3591ca690a03b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17451523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f532b4002427f61d42e950d4d0f687a12ee5368503c38ef4d4c734f3c123937b`

```dockerfile
```

-	Layers:
	-	`sha256:8cf9b4d364d54a9696eeb34026b479a9c9a295c2df6532b6efaf5ac94de11cb7`  
		Last Modified: Mon, 21 Sep 2026 23:09:53 GMT  
		Size: 17.4 MB (17415884 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b578572a81a0dd188969c7964ee2ac2245afaee051337e913e6a6797db526ecc`  
		Last Modified: Mon, 21 Sep 2026 23:09:53 GMT  
		Size: 35.6 KB (35639 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:26-oracle`

```console
$ docker pull mysql@sha256:ade067ae2fb15eeb6143e81185afe22573e3b3addc58aaf90c41999fa6883991
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:26-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:74849bf6226b8dafdb1258e90fab588de1e597a80487e744986d9d85d6a65836
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.4 MB (272359450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0485e3d5a3f3cb2cfd593047ab321a420f7026ec4ea0adc20e65eb42d420db68`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 21 Sep 2026 23:04:16 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 21 Sep 2026 23:04:16 GMT
CMD ["/bin/bash"]
# Mon, 21 Sep 2026 23:06:56 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 21 Sep 2026 23:06:57 GMT
ENV GOSU_VERSION=1.19
# Mon, 21 Sep 2026 23:06:57 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 21 Sep 2026 23:07:31 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 21 Sep 2026 23:07:31 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 21 Sep 2026 23:07:31 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 21 Sep 2026 23:07:31 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Mon, 21 Sep 2026 23:07:32 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 21 Sep 2026 23:08:08 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 21 Sep 2026 23:08:08 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 21 Sep 2026 23:08:08 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Mon, 21 Sep 2026 23:08:55 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 21 Sep 2026 23:08:55 GMT
VOLUME [/var/lib/mysql]
# Mon, 21 Sep 2026 23:08:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 21 Sep 2026 23:08:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Sep 2026 23:08:55 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 21 Sep 2026 23:08:55 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:6361e9307160bba9b9394334d9e85b77c416081e54c8ba8c6d0806dc0c4d5f4b`  
		Last Modified: Mon, 21 Sep 2026 23:04:27 GMT  
		Size: 47.9 MB (47941513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3534c258aabac4c46b37947f2089c39baa310568391f96404233e4c9df894e3a`  
		Last Modified: Mon, 21 Sep 2026 23:09:29 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a7fe1a85aa5548d42fcb8c335f7444be477ed2e9c73b20c83e191abfc71e61e`  
		Last Modified: Mon, 21 Sep 2026 23:09:29 GMT  
		Size: 783.5 KB (783541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30e12685077b4e92fbc033480c85f54689f367be5135b9e03aff46b36c09d2a3`  
		Last Modified: Mon, 21 Sep 2026 23:09:29 GMT  
		Size: 6.2 MB (6197645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb5715bbbeccb7f7385fa58362ba085fbf743725a960a1357d8f232e731716d8`  
		Last Modified: Mon, 21 Sep 2026 23:09:29 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59270b130aec3d2cdff3fc51e1058cd7b3faecd61bb4461ec3c17b6494a1ebdc`  
		Last Modified: Mon, 21 Sep 2026 23:09:30 GMT  
		Size: 341.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6de6b644e38e2677f72d5e17463e85fa1383d4425b4a4e731aa8799a4d666c80`  
		Last Modified: Mon, 21 Sep 2026 23:09:32 GMT  
		Size: 57.5 MB (57455040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:115b4caa98402fb25e0f4d1897406e658770f9c71967ee6ad98a120b51ce7d3c`  
		Last Modified: Mon, 21 Sep 2026 23:09:30 GMT  
		Size: 326.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e394e0b2e6500fe3fda549e1ab6ed1645db3882670433888ffa6126aa3f83c70`  
		Last Modified: Mon, 21 Sep 2026 23:09:34 GMT  
		Size: 160.0 MB (159972331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f7644b7ee9b3f7889f3fe5cf3c86f2cae37492fafd58e298846aa1122751a41`  
		Last Modified: Mon, 21 Sep 2026 23:09:31 GMT  
		Size: 5.2 KB (5223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:da9f9956c561a82558cf5b75587eccaa3517bff02b94594b9438fba32d303e9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17452709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23c12b5d4c80cb4e0484d94eff80749e14d89a1993cd025ec8207b3587783064`

```dockerfile
```

-	Layers:
	-	`sha256:8b2919a887f80355a9f9687687048641fb52398a9e06e216fa82eef029f2cbd2`  
		Last Modified: Mon, 21 Sep 2026 23:09:30 GMT  
		Size: 17.4 MB (17417411 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ef1d56738a4a943ed88423c36741edee4314969e32c404c124852fde2dfbc3f7`  
		Last Modified: Mon, 21 Sep 2026 23:09:29 GMT  
		Size: 35.3 KB (35298 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:26-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:082788c625f6691d3dc3fde8669340cfb8bc0377c06e88889382f5f28e1bb81b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.7 MB (268735017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1ebb12281ad097d611394946626b6baf897511844d9a684d2cb39b15b83c117`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 21 Sep 2026 23:04:02 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 21 Sep 2026 23:04:02 GMT
CMD ["/bin/bash"]
# Mon, 21 Sep 2026 23:07:01 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 21 Sep 2026 23:07:03 GMT
ENV GOSU_VERSION=1.19
# Mon, 21 Sep 2026 23:07:03 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 21 Sep 2026 23:07:40 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 21 Sep 2026 23:07:41 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 21 Sep 2026 23:07:41 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 21 Sep 2026 23:07:41 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Mon, 21 Sep 2026 23:07:41 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 21 Sep 2026 23:08:23 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 21 Sep 2026 23:08:24 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 21 Sep 2026 23:08:24 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Mon, 21 Sep 2026 23:09:17 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 21 Sep 2026 23:09:17 GMT
VOLUME [/var/lib/mysql]
# Mon, 21 Sep 2026 23:09:17 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 21 Sep 2026 23:09:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Sep 2026 23:09:17 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 21 Sep 2026 23:09:17 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b20e21573231a46ffd267a5791372e98726f9d11dd03deafc22fd5d18be5deea`  
		Last Modified: Mon, 21 Sep 2026 23:04:13 GMT  
		Size: 46.5 MB (46486872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3da5a8d5edbf0be97b026be4c1c5ddf681829d79a21674a06faf3d7b0411db3c`  
		Last Modified: Mon, 21 Sep 2026 23:09:45 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b9f295eb849b2eb074a1c710e56992483657e9232651464245d0e591987db5a`  
		Last Modified: Mon, 21 Sep 2026 23:09:53 GMT  
		Size: 737.5 KB (737526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6be4adf735ca3632e65d150709806245be650fbf48e7e1986b77788a8146c359`  
		Last Modified: Mon, 21 Sep 2026 23:09:53 GMT  
		Size: 5.8 MB (5824191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f1ace268c37904c174f19891793114adc47a8fe347da7be4bb38f60480831da`  
		Last Modified: Mon, 21 Sep 2026 23:09:53 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eebc42e6f78939280abe7dc0a2930177e00e424cbf2e5f3294c5169a8d5647c0`  
		Last Modified: Mon, 21 Sep 2026 23:09:53 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb58f96fe4494fe31e39a842757b541e4efe827ae9a6bf23ea3b83e4c6e39294`  
		Last Modified: Mon, 21 Sep 2026 23:09:56 GMT  
		Size: 57.4 MB (57434784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:070dfb8de89b2a3e04a78e5e31ebf3105edc9b7ade18f2fe95f626be2fdd6a0f`  
		Last Modified: Mon, 21 Sep 2026 23:09:54 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2621ba5f41b09b2da5c3a9079448554687e1ed6536981107eec7bac27e1bcde2`  
		Last Modified: Mon, 21 Sep 2026 23:09:58 GMT  
		Size: 158.2 MB (158242261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25e22dbe9362df1586bc53875635061ed6fd5c9bbeba7c5775d6a03299a825e8`  
		Last Modified: Mon, 21 Sep 2026 23:09:55 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:f73d97e9599d81b9e43ce58653e3235678c9c77588da26952bb3591ca690a03b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17451523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f532b4002427f61d42e950d4d0f687a12ee5368503c38ef4d4c734f3c123937b`

```dockerfile
```

-	Layers:
	-	`sha256:8cf9b4d364d54a9696eeb34026b479a9c9a295c2df6532b6efaf5ac94de11cb7`  
		Last Modified: Mon, 21 Sep 2026 23:09:53 GMT  
		Size: 17.4 MB (17415884 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b578572a81a0dd188969c7964ee2ac2245afaee051337e913e6a6797db526ecc`  
		Last Modified: Mon, 21 Sep 2026 23:09:53 GMT  
		Size: 35.6 KB (35639 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:26-oraclelinux9`

```console
$ docker pull mysql@sha256:ade067ae2fb15eeb6143e81185afe22573e3b3addc58aaf90c41999fa6883991
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:26-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:74849bf6226b8dafdb1258e90fab588de1e597a80487e744986d9d85d6a65836
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.4 MB (272359450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0485e3d5a3f3cb2cfd593047ab321a420f7026ec4ea0adc20e65eb42d420db68`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 21 Sep 2026 23:04:16 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 21 Sep 2026 23:04:16 GMT
CMD ["/bin/bash"]
# Mon, 21 Sep 2026 23:06:56 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 21 Sep 2026 23:06:57 GMT
ENV GOSU_VERSION=1.19
# Mon, 21 Sep 2026 23:06:57 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 21 Sep 2026 23:07:31 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 21 Sep 2026 23:07:31 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 21 Sep 2026 23:07:31 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 21 Sep 2026 23:07:31 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Mon, 21 Sep 2026 23:07:32 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 21 Sep 2026 23:08:08 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 21 Sep 2026 23:08:08 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 21 Sep 2026 23:08:08 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Mon, 21 Sep 2026 23:08:55 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 21 Sep 2026 23:08:55 GMT
VOLUME [/var/lib/mysql]
# Mon, 21 Sep 2026 23:08:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 21 Sep 2026 23:08:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Sep 2026 23:08:55 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 21 Sep 2026 23:08:55 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:6361e9307160bba9b9394334d9e85b77c416081e54c8ba8c6d0806dc0c4d5f4b`  
		Last Modified: Mon, 21 Sep 2026 23:04:27 GMT  
		Size: 47.9 MB (47941513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3534c258aabac4c46b37947f2089c39baa310568391f96404233e4c9df894e3a`  
		Last Modified: Mon, 21 Sep 2026 23:09:29 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a7fe1a85aa5548d42fcb8c335f7444be477ed2e9c73b20c83e191abfc71e61e`  
		Last Modified: Mon, 21 Sep 2026 23:09:29 GMT  
		Size: 783.5 KB (783541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30e12685077b4e92fbc033480c85f54689f367be5135b9e03aff46b36c09d2a3`  
		Last Modified: Mon, 21 Sep 2026 23:09:29 GMT  
		Size: 6.2 MB (6197645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb5715bbbeccb7f7385fa58362ba085fbf743725a960a1357d8f232e731716d8`  
		Last Modified: Mon, 21 Sep 2026 23:09:29 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59270b130aec3d2cdff3fc51e1058cd7b3faecd61bb4461ec3c17b6494a1ebdc`  
		Last Modified: Mon, 21 Sep 2026 23:09:30 GMT  
		Size: 341.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6de6b644e38e2677f72d5e17463e85fa1383d4425b4a4e731aa8799a4d666c80`  
		Last Modified: Mon, 21 Sep 2026 23:09:32 GMT  
		Size: 57.5 MB (57455040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:115b4caa98402fb25e0f4d1897406e658770f9c71967ee6ad98a120b51ce7d3c`  
		Last Modified: Mon, 21 Sep 2026 23:09:30 GMT  
		Size: 326.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e394e0b2e6500fe3fda549e1ab6ed1645db3882670433888ffa6126aa3f83c70`  
		Last Modified: Mon, 21 Sep 2026 23:09:34 GMT  
		Size: 160.0 MB (159972331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f7644b7ee9b3f7889f3fe5cf3c86f2cae37492fafd58e298846aa1122751a41`  
		Last Modified: Mon, 21 Sep 2026 23:09:31 GMT  
		Size: 5.2 KB (5223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:da9f9956c561a82558cf5b75587eccaa3517bff02b94594b9438fba32d303e9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17452709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23c12b5d4c80cb4e0484d94eff80749e14d89a1993cd025ec8207b3587783064`

```dockerfile
```

-	Layers:
	-	`sha256:8b2919a887f80355a9f9687687048641fb52398a9e06e216fa82eef029f2cbd2`  
		Last Modified: Mon, 21 Sep 2026 23:09:30 GMT  
		Size: 17.4 MB (17417411 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ef1d56738a4a943ed88423c36741edee4314969e32c404c124852fde2dfbc3f7`  
		Last Modified: Mon, 21 Sep 2026 23:09:29 GMT  
		Size: 35.3 KB (35298 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:26-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:082788c625f6691d3dc3fde8669340cfb8bc0377c06e88889382f5f28e1bb81b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.7 MB (268735017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1ebb12281ad097d611394946626b6baf897511844d9a684d2cb39b15b83c117`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 21 Sep 2026 23:04:02 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 21 Sep 2026 23:04:02 GMT
CMD ["/bin/bash"]
# Mon, 21 Sep 2026 23:07:01 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 21 Sep 2026 23:07:03 GMT
ENV GOSU_VERSION=1.19
# Mon, 21 Sep 2026 23:07:03 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 21 Sep 2026 23:07:40 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 21 Sep 2026 23:07:41 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 21 Sep 2026 23:07:41 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 21 Sep 2026 23:07:41 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Mon, 21 Sep 2026 23:07:41 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 21 Sep 2026 23:08:23 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 21 Sep 2026 23:08:24 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 21 Sep 2026 23:08:24 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Mon, 21 Sep 2026 23:09:17 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 21 Sep 2026 23:09:17 GMT
VOLUME [/var/lib/mysql]
# Mon, 21 Sep 2026 23:09:17 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 21 Sep 2026 23:09:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Sep 2026 23:09:17 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 21 Sep 2026 23:09:17 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b20e21573231a46ffd267a5791372e98726f9d11dd03deafc22fd5d18be5deea`  
		Last Modified: Mon, 21 Sep 2026 23:04:13 GMT  
		Size: 46.5 MB (46486872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3da5a8d5edbf0be97b026be4c1c5ddf681829d79a21674a06faf3d7b0411db3c`  
		Last Modified: Mon, 21 Sep 2026 23:09:45 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b9f295eb849b2eb074a1c710e56992483657e9232651464245d0e591987db5a`  
		Last Modified: Mon, 21 Sep 2026 23:09:53 GMT  
		Size: 737.5 KB (737526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6be4adf735ca3632e65d150709806245be650fbf48e7e1986b77788a8146c359`  
		Last Modified: Mon, 21 Sep 2026 23:09:53 GMT  
		Size: 5.8 MB (5824191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f1ace268c37904c174f19891793114adc47a8fe347da7be4bb38f60480831da`  
		Last Modified: Mon, 21 Sep 2026 23:09:53 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eebc42e6f78939280abe7dc0a2930177e00e424cbf2e5f3294c5169a8d5647c0`  
		Last Modified: Mon, 21 Sep 2026 23:09:53 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb58f96fe4494fe31e39a842757b541e4efe827ae9a6bf23ea3b83e4c6e39294`  
		Last Modified: Mon, 21 Sep 2026 23:09:56 GMT  
		Size: 57.4 MB (57434784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:070dfb8de89b2a3e04a78e5e31ebf3105edc9b7ade18f2fe95f626be2fdd6a0f`  
		Last Modified: Mon, 21 Sep 2026 23:09:54 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2621ba5f41b09b2da5c3a9079448554687e1ed6536981107eec7bac27e1bcde2`  
		Last Modified: Mon, 21 Sep 2026 23:09:58 GMT  
		Size: 158.2 MB (158242261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25e22dbe9362df1586bc53875635061ed6fd5c9bbeba7c5775d6a03299a825e8`  
		Last Modified: Mon, 21 Sep 2026 23:09:55 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:f73d97e9599d81b9e43ce58653e3235678c9c77588da26952bb3591ca690a03b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17451523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f532b4002427f61d42e950d4d0f687a12ee5368503c38ef4d4c734f3c123937b`

```dockerfile
```

-	Layers:
	-	`sha256:8cf9b4d364d54a9696eeb34026b479a9c9a295c2df6532b6efaf5ac94de11cb7`  
		Last Modified: Mon, 21 Sep 2026 23:09:53 GMT  
		Size: 17.4 MB (17415884 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b578572a81a0dd188969c7964ee2ac2245afaee051337e913e6a6797db526ecc`  
		Last Modified: Mon, 21 Sep 2026 23:09:53 GMT  
		Size: 35.6 KB (35639 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:26.7`

```console
$ docker pull mysql@sha256:ade067ae2fb15eeb6143e81185afe22573e3b3addc58aaf90c41999fa6883991
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:26.7` - linux; amd64

```console
$ docker pull mysql@sha256:74849bf6226b8dafdb1258e90fab588de1e597a80487e744986d9d85d6a65836
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.4 MB (272359450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0485e3d5a3f3cb2cfd593047ab321a420f7026ec4ea0adc20e65eb42d420db68`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 21 Sep 2026 23:04:16 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 21 Sep 2026 23:04:16 GMT
CMD ["/bin/bash"]
# Mon, 21 Sep 2026 23:06:56 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 21 Sep 2026 23:06:57 GMT
ENV GOSU_VERSION=1.19
# Mon, 21 Sep 2026 23:06:57 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 21 Sep 2026 23:07:31 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 21 Sep 2026 23:07:31 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 21 Sep 2026 23:07:31 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 21 Sep 2026 23:07:31 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Mon, 21 Sep 2026 23:07:32 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 21 Sep 2026 23:08:08 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 21 Sep 2026 23:08:08 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 21 Sep 2026 23:08:08 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Mon, 21 Sep 2026 23:08:55 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 21 Sep 2026 23:08:55 GMT
VOLUME [/var/lib/mysql]
# Mon, 21 Sep 2026 23:08:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 21 Sep 2026 23:08:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Sep 2026 23:08:55 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 21 Sep 2026 23:08:55 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:6361e9307160bba9b9394334d9e85b77c416081e54c8ba8c6d0806dc0c4d5f4b`  
		Last Modified: Mon, 21 Sep 2026 23:04:27 GMT  
		Size: 47.9 MB (47941513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3534c258aabac4c46b37947f2089c39baa310568391f96404233e4c9df894e3a`  
		Last Modified: Mon, 21 Sep 2026 23:09:29 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a7fe1a85aa5548d42fcb8c335f7444be477ed2e9c73b20c83e191abfc71e61e`  
		Last Modified: Mon, 21 Sep 2026 23:09:29 GMT  
		Size: 783.5 KB (783541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30e12685077b4e92fbc033480c85f54689f367be5135b9e03aff46b36c09d2a3`  
		Last Modified: Mon, 21 Sep 2026 23:09:29 GMT  
		Size: 6.2 MB (6197645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb5715bbbeccb7f7385fa58362ba085fbf743725a960a1357d8f232e731716d8`  
		Last Modified: Mon, 21 Sep 2026 23:09:29 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59270b130aec3d2cdff3fc51e1058cd7b3faecd61bb4461ec3c17b6494a1ebdc`  
		Last Modified: Mon, 21 Sep 2026 23:09:30 GMT  
		Size: 341.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6de6b644e38e2677f72d5e17463e85fa1383d4425b4a4e731aa8799a4d666c80`  
		Last Modified: Mon, 21 Sep 2026 23:09:32 GMT  
		Size: 57.5 MB (57455040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:115b4caa98402fb25e0f4d1897406e658770f9c71967ee6ad98a120b51ce7d3c`  
		Last Modified: Mon, 21 Sep 2026 23:09:30 GMT  
		Size: 326.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e394e0b2e6500fe3fda549e1ab6ed1645db3882670433888ffa6126aa3f83c70`  
		Last Modified: Mon, 21 Sep 2026 23:09:34 GMT  
		Size: 160.0 MB (159972331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f7644b7ee9b3f7889f3fe5cf3c86f2cae37492fafd58e298846aa1122751a41`  
		Last Modified: Mon, 21 Sep 2026 23:09:31 GMT  
		Size: 5.2 KB (5223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26.7` - unknown; unknown

```console
$ docker pull mysql@sha256:da9f9956c561a82558cf5b75587eccaa3517bff02b94594b9438fba32d303e9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17452709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23c12b5d4c80cb4e0484d94eff80749e14d89a1993cd025ec8207b3587783064`

```dockerfile
```

-	Layers:
	-	`sha256:8b2919a887f80355a9f9687687048641fb52398a9e06e216fa82eef029f2cbd2`  
		Last Modified: Mon, 21 Sep 2026 23:09:30 GMT  
		Size: 17.4 MB (17417411 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ef1d56738a4a943ed88423c36741edee4314969e32c404c124852fde2dfbc3f7`  
		Last Modified: Mon, 21 Sep 2026 23:09:29 GMT  
		Size: 35.3 KB (35298 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:26.7` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:082788c625f6691d3dc3fde8669340cfb8bc0377c06e88889382f5f28e1bb81b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.7 MB (268735017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1ebb12281ad097d611394946626b6baf897511844d9a684d2cb39b15b83c117`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 21 Sep 2026 23:04:02 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 21 Sep 2026 23:04:02 GMT
CMD ["/bin/bash"]
# Mon, 21 Sep 2026 23:07:01 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 21 Sep 2026 23:07:03 GMT
ENV GOSU_VERSION=1.19
# Mon, 21 Sep 2026 23:07:03 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 21 Sep 2026 23:07:40 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 21 Sep 2026 23:07:41 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 21 Sep 2026 23:07:41 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 21 Sep 2026 23:07:41 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Mon, 21 Sep 2026 23:07:41 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 21 Sep 2026 23:08:23 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 21 Sep 2026 23:08:24 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 21 Sep 2026 23:08:24 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Mon, 21 Sep 2026 23:09:17 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 21 Sep 2026 23:09:17 GMT
VOLUME [/var/lib/mysql]
# Mon, 21 Sep 2026 23:09:17 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 21 Sep 2026 23:09:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Sep 2026 23:09:17 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 21 Sep 2026 23:09:17 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b20e21573231a46ffd267a5791372e98726f9d11dd03deafc22fd5d18be5deea`  
		Last Modified: Mon, 21 Sep 2026 23:04:13 GMT  
		Size: 46.5 MB (46486872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3da5a8d5edbf0be97b026be4c1c5ddf681829d79a21674a06faf3d7b0411db3c`  
		Last Modified: Mon, 21 Sep 2026 23:09:45 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b9f295eb849b2eb074a1c710e56992483657e9232651464245d0e591987db5a`  
		Last Modified: Mon, 21 Sep 2026 23:09:53 GMT  
		Size: 737.5 KB (737526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6be4adf735ca3632e65d150709806245be650fbf48e7e1986b77788a8146c359`  
		Last Modified: Mon, 21 Sep 2026 23:09:53 GMT  
		Size: 5.8 MB (5824191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f1ace268c37904c174f19891793114adc47a8fe347da7be4bb38f60480831da`  
		Last Modified: Mon, 21 Sep 2026 23:09:53 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eebc42e6f78939280abe7dc0a2930177e00e424cbf2e5f3294c5169a8d5647c0`  
		Last Modified: Mon, 21 Sep 2026 23:09:53 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb58f96fe4494fe31e39a842757b541e4efe827ae9a6bf23ea3b83e4c6e39294`  
		Last Modified: Mon, 21 Sep 2026 23:09:56 GMT  
		Size: 57.4 MB (57434784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:070dfb8de89b2a3e04a78e5e31ebf3105edc9b7ade18f2fe95f626be2fdd6a0f`  
		Last Modified: Mon, 21 Sep 2026 23:09:54 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2621ba5f41b09b2da5c3a9079448554687e1ed6536981107eec7bac27e1bcde2`  
		Last Modified: Mon, 21 Sep 2026 23:09:58 GMT  
		Size: 158.2 MB (158242261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25e22dbe9362df1586bc53875635061ed6fd5c9bbeba7c5775d6a03299a825e8`  
		Last Modified: Mon, 21 Sep 2026 23:09:55 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26.7` - unknown; unknown

```console
$ docker pull mysql@sha256:f73d97e9599d81b9e43ce58653e3235678c9c77588da26952bb3591ca690a03b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17451523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f532b4002427f61d42e950d4d0f687a12ee5368503c38ef4d4c734f3c123937b`

```dockerfile
```

-	Layers:
	-	`sha256:8cf9b4d364d54a9696eeb34026b479a9c9a295c2df6532b6efaf5ac94de11cb7`  
		Last Modified: Mon, 21 Sep 2026 23:09:53 GMT  
		Size: 17.4 MB (17415884 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b578572a81a0dd188969c7964ee2ac2245afaee051337e913e6a6797db526ecc`  
		Last Modified: Mon, 21 Sep 2026 23:09:53 GMT  
		Size: 35.6 KB (35639 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:26.7-oracle`

```console
$ docker pull mysql@sha256:ade067ae2fb15eeb6143e81185afe22573e3b3addc58aaf90c41999fa6883991
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:26.7-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:74849bf6226b8dafdb1258e90fab588de1e597a80487e744986d9d85d6a65836
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.4 MB (272359450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0485e3d5a3f3cb2cfd593047ab321a420f7026ec4ea0adc20e65eb42d420db68`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 21 Sep 2026 23:04:16 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 21 Sep 2026 23:04:16 GMT
CMD ["/bin/bash"]
# Mon, 21 Sep 2026 23:06:56 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 21 Sep 2026 23:06:57 GMT
ENV GOSU_VERSION=1.19
# Mon, 21 Sep 2026 23:06:57 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 21 Sep 2026 23:07:31 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 21 Sep 2026 23:07:31 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 21 Sep 2026 23:07:31 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 21 Sep 2026 23:07:31 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Mon, 21 Sep 2026 23:07:32 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 21 Sep 2026 23:08:08 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 21 Sep 2026 23:08:08 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 21 Sep 2026 23:08:08 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Mon, 21 Sep 2026 23:08:55 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 21 Sep 2026 23:08:55 GMT
VOLUME [/var/lib/mysql]
# Mon, 21 Sep 2026 23:08:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 21 Sep 2026 23:08:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Sep 2026 23:08:55 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 21 Sep 2026 23:08:55 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:6361e9307160bba9b9394334d9e85b77c416081e54c8ba8c6d0806dc0c4d5f4b`  
		Last Modified: Mon, 21 Sep 2026 23:04:27 GMT  
		Size: 47.9 MB (47941513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3534c258aabac4c46b37947f2089c39baa310568391f96404233e4c9df894e3a`  
		Last Modified: Mon, 21 Sep 2026 23:09:29 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a7fe1a85aa5548d42fcb8c335f7444be477ed2e9c73b20c83e191abfc71e61e`  
		Last Modified: Mon, 21 Sep 2026 23:09:29 GMT  
		Size: 783.5 KB (783541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30e12685077b4e92fbc033480c85f54689f367be5135b9e03aff46b36c09d2a3`  
		Last Modified: Mon, 21 Sep 2026 23:09:29 GMT  
		Size: 6.2 MB (6197645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb5715bbbeccb7f7385fa58362ba085fbf743725a960a1357d8f232e731716d8`  
		Last Modified: Mon, 21 Sep 2026 23:09:29 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59270b130aec3d2cdff3fc51e1058cd7b3faecd61bb4461ec3c17b6494a1ebdc`  
		Last Modified: Mon, 21 Sep 2026 23:09:30 GMT  
		Size: 341.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6de6b644e38e2677f72d5e17463e85fa1383d4425b4a4e731aa8799a4d666c80`  
		Last Modified: Mon, 21 Sep 2026 23:09:32 GMT  
		Size: 57.5 MB (57455040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:115b4caa98402fb25e0f4d1897406e658770f9c71967ee6ad98a120b51ce7d3c`  
		Last Modified: Mon, 21 Sep 2026 23:09:30 GMT  
		Size: 326.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e394e0b2e6500fe3fda549e1ab6ed1645db3882670433888ffa6126aa3f83c70`  
		Last Modified: Mon, 21 Sep 2026 23:09:34 GMT  
		Size: 160.0 MB (159972331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f7644b7ee9b3f7889f3fe5cf3c86f2cae37492fafd58e298846aa1122751a41`  
		Last Modified: Mon, 21 Sep 2026 23:09:31 GMT  
		Size: 5.2 KB (5223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26.7-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:da9f9956c561a82558cf5b75587eccaa3517bff02b94594b9438fba32d303e9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17452709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23c12b5d4c80cb4e0484d94eff80749e14d89a1993cd025ec8207b3587783064`

```dockerfile
```

-	Layers:
	-	`sha256:8b2919a887f80355a9f9687687048641fb52398a9e06e216fa82eef029f2cbd2`  
		Last Modified: Mon, 21 Sep 2026 23:09:30 GMT  
		Size: 17.4 MB (17417411 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ef1d56738a4a943ed88423c36741edee4314969e32c404c124852fde2dfbc3f7`  
		Last Modified: Mon, 21 Sep 2026 23:09:29 GMT  
		Size: 35.3 KB (35298 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:26.7-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:082788c625f6691d3dc3fde8669340cfb8bc0377c06e88889382f5f28e1bb81b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.7 MB (268735017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1ebb12281ad097d611394946626b6baf897511844d9a684d2cb39b15b83c117`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 21 Sep 2026 23:04:02 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 21 Sep 2026 23:04:02 GMT
CMD ["/bin/bash"]
# Mon, 21 Sep 2026 23:07:01 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 21 Sep 2026 23:07:03 GMT
ENV GOSU_VERSION=1.19
# Mon, 21 Sep 2026 23:07:03 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 21 Sep 2026 23:07:40 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 21 Sep 2026 23:07:41 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 21 Sep 2026 23:07:41 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 21 Sep 2026 23:07:41 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Mon, 21 Sep 2026 23:07:41 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 21 Sep 2026 23:08:23 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 21 Sep 2026 23:08:24 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 21 Sep 2026 23:08:24 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Mon, 21 Sep 2026 23:09:17 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 21 Sep 2026 23:09:17 GMT
VOLUME [/var/lib/mysql]
# Mon, 21 Sep 2026 23:09:17 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 21 Sep 2026 23:09:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Sep 2026 23:09:17 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 21 Sep 2026 23:09:17 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b20e21573231a46ffd267a5791372e98726f9d11dd03deafc22fd5d18be5deea`  
		Last Modified: Mon, 21 Sep 2026 23:04:13 GMT  
		Size: 46.5 MB (46486872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3da5a8d5edbf0be97b026be4c1c5ddf681829d79a21674a06faf3d7b0411db3c`  
		Last Modified: Mon, 21 Sep 2026 23:09:45 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b9f295eb849b2eb074a1c710e56992483657e9232651464245d0e591987db5a`  
		Last Modified: Mon, 21 Sep 2026 23:09:53 GMT  
		Size: 737.5 KB (737526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6be4adf735ca3632e65d150709806245be650fbf48e7e1986b77788a8146c359`  
		Last Modified: Mon, 21 Sep 2026 23:09:53 GMT  
		Size: 5.8 MB (5824191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f1ace268c37904c174f19891793114adc47a8fe347da7be4bb38f60480831da`  
		Last Modified: Mon, 21 Sep 2026 23:09:53 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eebc42e6f78939280abe7dc0a2930177e00e424cbf2e5f3294c5169a8d5647c0`  
		Last Modified: Mon, 21 Sep 2026 23:09:53 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb58f96fe4494fe31e39a842757b541e4efe827ae9a6bf23ea3b83e4c6e39294`  
		Last Modified: Mon, 21 Sep 2026 23:09:56 GMT  
		Size: 57.4 MB (57434784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:070dfb8de89b2a3e04a78e5e31ebf3105edc9b7ade18f2fe95f626be2fdd6a0f`  
		Last Modified: Mon, 21 Sep 2026 23:09:54 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2621ba5f41b09b2da5c3a9079448554687e1ed6536981107eec7bac27e1bcde2`  
		Last Modified: Mon, 21 Sep 2026 23:09:58 GMT  
		Size: 158.2 MB (158242261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25e22dbe9362df1586bc53875635061ed6fd5c9bbeba7c5775d6a03299a825e8`  
		Last Modified: Mon, 21 Sep 2026 23:09:55 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26.7-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:f73d97e9599d81b9e43ce58653e3235678c9c77588da26952bb3591ca690a03b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17451523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f532b4002427f61d42e950d4d0f687a12ee5368503c38ef4d4c734f3c123937b`

```dockerfile
```

-	Layers:
	-	`sha256:8cf9b4d364d54a9696eeb34026b479a9c9a295c2df6532b6efaf5ac94de11cb7`  
		Last Modified: Mon, 21 Sep 2026 23:09:53 GMT  
		Size: 17.4 MB (17415884 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b578572a81a0dd188969c7964ee2ac2245afaee051337e913e6a6797db526ecc`  
		Last Modified: Mon, 21 Sep 2026 23:09:53 GMT  
		Size: 35.6 KB (35639 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:26.7-oraclelinux9`

```console
$ docker pull mysql@sha256:ade067ae2fb15eeb6143e81185afe22573e3b3addc58aaf90c41999fa6883991
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:26.7-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:74849bf6226b8dafdb1258e90fab588de1e597a80487e744986d9d85d6a65836
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.4 MB (272359450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0485e3d5a3f3cb2cfd593047ab321a420f7026ec4ea0adc20e65eb42d420db68`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 21 Sep 2026 23:04:16 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 21 Sep 2026 23:04:16 GMT
CMD ["/bin/bash"]
# Mon, 21 Sep 2026 23:06:56 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 21 Sep 2026 23:06:57 GMT
ENV GOSU_VERSION=1.19
# Mon, 21 Sep 2026 23:06:57 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 21 Sep 2026 23:07:31 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 21 Sep 2026 23:07:31 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 21 Sep 2026 23:07:31 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 21 Sep 2026 23:07:31 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Mon, 21 Sep 2026 23:07:32 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 21 Sep 2026 23:08:08 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 21 Sep 2026 23:08:08 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 21 Sep 2026 23:08:08 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Mon, 21 Sep 2026 23:08:55 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 21 Sep 2026 23:08:55 GMT
VOLUME [/var/lib/mysql]
# Mon, 21 Sep 2026 23:08:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 21 Sep 2026 23:08:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Sep 2026 23:08:55 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 21 Sep 2026 23:08:55 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:6361e9307160bba9b9394334d9e85b77c416081e54c8ba8c6d0806dc0c4d5f4b`  
		Last Modified: Mon, 21 Sep 2026 23:04:27 GMT  
		Size: 47.9 MB (47941513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3534c258aabac4c46b37947f2089c39baa310568391f96404233e4c9df894e3a`  
		Last Modified: Mon, 21 Sep 2026 23:09:29 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a7fe1a85aa5548d42fcb8c335f7444be477ed2e9c73b20c83e191abfc71e61e`  
		Last Modified: Mon, 21 Sep 2026 23:09:29 GMT  
		Size: 783.5 KB (783541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30e12685077b4e92fbc033480c85f54689f367be5135b9e03aff46b36c09d2a3`  
		Last Modified: Mon, 21 Sep 2026 23:09:29 GMT  
		Size: 6.2 MB (6197645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb5715bbbeccb7f7385fa58362ba085fbf743725a960a1357d8f232e731716d8`  
		Last Modified: Mon, 21 Sep 2026 23:09:29 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59270b130aec3d2cdff3fc51e1058cd7b3faecd61bb4461ec3c17b6494a1ebdc`  
		Last Modified: Mon, 21 Sep 2026 23:09:30 GMT  
		Size: 341.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6de6b644e38e2677f72d5e17463e85fa1383d4425b4a4e731aa8799a4d666c80`  
		Last Modified: Mon, 21 Sep 2026 23:09:32 GMT  
		Size: 57.5 MB (57455040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:115b4caa98402fb25e0f4d1897406e658770f9c71967ee6ad98a120b51ce7d3c`  
		Last Modified: Mon, 21 Sep 2026 23:09:30 GMT  
		Size: 326.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e394e0b2e6500fe3fda549e1ab6ed1645db3882670433888ffa6126aa3f83c70`  
		Last Modified: Mon, 21 Sep 2026 23:09:34 GMT  
		Size: 160.0 MB (159972331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f7644b7ee9b3f7889f3fe5cf3c86f2cae37492fafd58e298846aa1122751a41`  
		Last Modified: Mon, 21 Sep 2026 23:09:31 GMT  
		Size: 5.2 KB (5223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26.7-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:da9f9956c561a82558cf5b75587eccaa3517bff02b94594b9438fba32d303e9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17452709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23c12b5d4c80cb4e0484d94eff80749e14d89a1993cd025ec8207b3587783064`

```dockerfile
```

-	Layers:
	-	`sha256:8b2919a887f80355a9f9687687048641fb52398a9e06e216fa82eef029f2cbd2`  
		Last Modified: Mon, 21 Sep 2026 23:09:30 GMT  
		Size: 17.4 MB (17417411 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ef1d56738a4a943ed88423c36741edee4314969e32c404c124852fde2dfbc3f7`  
		Last Modified: Mon, 21 Sep 2026 23:09:29 GMT  
		Size: 35.3 KB (35298 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:26.7-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:082788c625f6691d3dc3fde8669340cfb8bc0377c06e88889382f5f28e1bb81b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.7 MB (268735017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1ebb12281ad097d611394946626b6baf897511844d9a684d2cb39b15b83c117`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 21 Sep 2026 23:04:02 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 21 Sep 2026 23:04:02 GMT
CMD ["/bin/bash"]
# Mon, 21 Sep 2026 23:07:01 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 21 Sep 2026 23:07:03 GMT
ENV GOSU_VERSION=1.19
# Mon, 21 Sep 2026 23:07:03 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 21 Sep 2026 23:07:40 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 21 Sep 2026 23:07:41 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 21 Sep 2026 23:07:41 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 21 Sep 2026 23:07:41 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Mon, 21 Sep 2026 23:07:41 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 21 Sep 2026 23:08:23 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 21 Sep 2026 23:08:24 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 21 Sep 2026 23:08:24 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Mon, 21 Sep 2026 23:09:17 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 21 Sep 2026 23:09:17 GMT
VOLUME [/var/lib/mysql]
# Mon, 21 Sep 2026 23:09:17 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 21 Sep 2026 23:09:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Sep 2026 23:09:17 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 21 Sep 2026 23:09:17 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b20e21573231a46ffd267a5791372e98726f9d11dd03deafc22fd5d18be5deea`  
		Last Modified: Mon, 21 Sep 2026 23:04:13 GMT  
		Size: 46.5 MB (46486872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3da5a8d5edbf0be97b026be4c1c5ddf681829d79a21674a06faf3d7b0411db3c`  
		Last Modified: Mon, 21 Sep 2026 23:09:45 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b9f295eb849b2eb074a1c710e56992483657e9232651464245d0e591987db5a`  
		Last Modified: Mon, 21 Sep 2026 23:09:53 GMT  
		Size: 737.5 KB (737526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6be4adf735ca3632e65d150709806245be650fbf48e7e1986b77788a8146c359`  
		Last Modified: Mon, 21 Sep 2026 23:09:53 GMT  
		Size: 5.8 MB (5824191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f1ace268c37904c174f19891793114adc47a8fe347da7be4bb38f60480831da`  
		Last Modified: Mon, 21 Sep 2026 23:09:53 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eebc42e6f78939280abe7dc0a2930177e00e424cbf2e5f3294c5169a8d5647c0`  
		Last Modified: Mon, 21 Sep 2026 23:09:53 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb58f96fe4494fe31e39a842757b541e4efe827ae9a6bf23ea3b83e4c6e39294`  
		Last Modified: Mon, 21 Sep 2026 23:09:56 GMT  
		Size: 57.4 MB (57434784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:070dfb8de89b2a3e04a78e5e31ebf3105edc9b7ade18f2fe95f626be2fdd6a0f`  
		Last Modified: Mon, 21 Sep 2026 23:09:54 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2621ba5f41b09b2da5c3a9079448554687e1ed6536981107eec7bac27e1bcde2`  
		Last Modified: Mon, 21 Sep 2026 23:09:58 GMT  
		Size: 158.2 MB (158242261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25e22dbe9362df1586bc53875635061ed6fd5c9bbeba7c5775d6a03299a825e8`  
		Last Modified: Mon, 21 Sep 2026 23:09:55 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26.7-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:f73d97e9599d81b9e43ce58653e3235678c9c77588da26952bb3591ca690a03b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17451523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f532b4002427f61d42e950d4d0f687a12ee5368503c38ef4d4c734f3c123937b`

```dockerfile
```

-	Layers:
	-	`sha256:8cf9b4d364d54a9696eeb34026b479a9c9a295c2df6532b6efaf5ac94de11cb7`  
		Last Modified: Mon, 21 Sep 2026 23:09:53 GMT  
		Size: 17.4 MB (17415884 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b578572a81a0dd188969c7964ee2ac2245afaee051337e913e6a6797db526ecc`  
		Last Modified: Mon, 21 Sep 2026 23:09:53 GMT  
		Size: 35.6 KB (35639 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:26.7.0`

```console
$ docker pull mysql@sha256:ade067ae2fb15eeb6143e81185afe22573e3b3addc58aaf90c41999fa6883991
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:26.7.0` - linux; amd64

```console
$ docker pull mysql@sha256:74849bf6226b8dafdb1258e90fab588de1e597a80487e744986d9d85d6a65836
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.4 MB (272359450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0485e3d5a3f3cb2cfd593047ab321a420f7026ec4ea0adc20e65eb42d420db68`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 21 Sep 2026 23:04:16 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 21 Sep 2026 23:04:16 GMT
CMD ["/bin/bash"]
# Mon, 21 Sep 2026 23:06:56 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 21 Sep 2026 23:06:57 GMT
ENV GOSU_VERSION=1.19
# Mon, 21 Sep 2026 23:06:57 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 21 Sep 2026 23:07:31 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 21 Sep 2026 23:07:31 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 21 Sep 2026 23:07:31 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 21 Sep 2026 23:07:31 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Mon, 21 Sep 2026 23:07:32 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 21 Sep 2026 23:08:08 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 21 Sep 2026 23:08:08 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 21 Sep 2026 23:08:08 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Mon, 21 Sep 2026 23:08:55 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 21 Sep 2026 23:08:55 GMT
VOLUME [/var/lib/mysql]
# Mon, 21 Sep 2026 23:08:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 21 Sep 2026 23:08:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Sep 2026 23:08:55 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 21 Sep 2026 23:08:55 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:6361e9307160bba9b9394334d9e85b77c416081e54c8ba8c6d0806dc0c4d5f4b`  
		Last Modified: Mon, 21 Sep 2026 23:04:27 GMT  
		Size: 47.9 MB (47941513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3534c258aabac4c46b37947f2089c39baa310568391f96404233e4c9df894e3a`  
		Last Modified: Mon, 21 Sep 2026 23:09:29 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a7fe1a85aa5548d42fcb8c335f7444be477ed2e9c73b20c83e191abfc71e61e`  
		Last Modified: Mon, 21 Sep 2026 23:09:29 GMT  
		Size: 783.5 KB (783541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30e12685077b4e92fbc033480c85f54689f367be5135b9e03aff46b36c09d2a3`  
		Last Modified: Mon, 21 Sep 2026 23:09:29 GMT  
		Size: 6.2 MB (6197645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb5715bbbeccb7f7385fa58362ba085fbf743725a960a1357d8f232e731716d8`  
		Last Modified: Mon, 21 Sep 2026 23:09:29 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59270b130aec3d2cdff3fc51e1058cd7b3faecd61bb4461ec3c17b6494a1ebdc`  
		Last Modified: Mon, 21 Sep 2026 23:09:30 GMT  
		Size: 341.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6de6b644e38e2677f72d5e17463e85fa1383d4425b4a4e731aa8799a4d666c80`  
		Last Modified: Mon, 21 Sep 2026 23:09:32 GMT  
		Size: 57.5 MB (57455040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:115b4caa98402fb25e0f4d1897406e658770f9c71967ee6ad98a120b51ce7d3c`  
		Last Modified: Mon, 21 Sep 2026 23:09:30 GMT  
		Size: 326.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e394e0b2e6500fe3fda549e1ab6ed1645db3882670433888ffa6126aa3f83c70`  
		Last Modified: Mon, 21 Sep 2026 23:09:34 GMT  
		Size: 160.0 MB (159972331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f7644b7ee9b3f7889f3fe5cf3c86f2cae37492fafd58e298846aa1122751a41`  
		Last Modified: Mon, 21 Sep 2026 23:09:31 GMT  
		Size: 5.2 KB (5223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26.7.0` - unknown; unknown

```console
$ docker pull mysql@sha256:da9f9956c561a82558cf5b75587eccaa3517bff02b94594b9438fba32d303e9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17452709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23c12b5d4c80cb4e0484d94eff80749e14d89a1993cd025ec8207b3587783064`

```dockerfile
```

-	Layers:
	-	`sha256:8b2919a887f80355a9f9687687048641fb52398a9e06e216fa82eef029f2cbd2`  
		Last Modified: Mon, 21 Sep 2026 23:09:30 GMT  
		Size: 17.4 MB (17417411 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ef1d56738a4a943ed88423c36741edee4314969e32c404c124852fde2dfbc3f7`  
		Last Modified: Mon, 21 Sep 2026 23:09:29 GMT  
		Size: 35.3 KB (35298 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:26.7.0` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:082788c625f6691d3dc3fde8669340cfb8bc0377c06e88889382f5f28e1bb81b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.7 MB (268735017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1ebb12281ad097d611394946626b6baf897511844d9a684d2cb39b15b83c117`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 21 Sep 2026 23:04:02 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 21 Sep 2026 23:04:02 GMT
CMD ["/bin/bash"]
# Mon, 21 Sep 2026 23:07:01 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 21 Sep 2026 23:07:03 GMT
ENV GOSU_VERSION=1.19
# Mon, 21 Sep 2026 23:07:03 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 21 Sep 2026 23:07:40 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 21 Sep 2026 23:07:41 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 21 Sep 2026 23:07:41 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 21 Sep 2026 23:07:41 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Mon, 21 Sep 2026 23:07:41 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 21 Sep 2026 23:08:23 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 21 Sep 2026 23:08:24 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 21 Sep 2026 23:08:24 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Mon, 21 Sep 2026 23:09:17 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 21 Sep 2026 23:09:17 GMT
VOLUME [/var/lib/mysql]
# Mon, 21 Sep 2026 23:09:17 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 21 Sep 2026 23:09:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Sep 2026 23:09:17 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 21 Sep 2026 23:09:17 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b20e21573231a46ffd267a5791372e98726f9d11dd03deafc22fd5d18be5deea`  
		Last Modified: Mon, 21 Sep 2026 23:04:13 GMT  
		Size: 46.5 MB (46486872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3da5a8d5edbf0be97b026be4c1c5ddf681829d79a21674a06faf3d7b0411db3c`  
		Last Modified: Mon, 21 Sep 2026 23:09:45 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b9f295eb849b2eb074a1c710e56992483657e9232651464245d0e591987db5a`  
		Last Modified: Mon, 21 Sep 2026 23:09:53 GMT  
		Size: 737.5 KB (737526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6be4adf735ca3632e65d150709806245be650fbf48e7e1986b77788a8146c359`  
		Last Modified: Mon, 21 Sep 2026 23:09:53 GMT  
		Size: 5.8 MB (5824191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f1ace268c37904c174f19891793114adc47a8fe347da7be4bb38f60480831da`  
		Last Modified: Mon, 21 Sep 2026 23:09:53 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eebc42e6f78939280abe7dc0a2930177e00e424cbf2e5f3294c5169a8d5647c0`  
		Last Modified: Mon, 21 Sep 2026 23:09:53 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb58f96fe4494fe31e39a842757b541e4efe827ae9a6bf23ea3b83e4c6e39294`  
		Last Modified: Mon, 21 Sep 2026 23:09:56 GMT  
		Size: 57.4 MB (57434784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:070dfb8de89b2a3e04a78e5e31ebf3105edc9b7ade18f2fe95f626be2fdd6a0f`  
		Last Modified: Mon, 21 Sep 2026 23:09:54 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2621ba5f41b09b2da5c3a9079448554687e1ed6536981107eec7bac27e1bcde2`  
		Last Modified: Mon, 21 Sep 2026 23:09:58 GMT  
		Size: 158.2 MB (158242261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25e22dbe9362df1586bc53875635061ed6fd5c9bbeba7c5775d6a03299a825e8`  
		Last Modified: Mon, 21 Sep 2026 23:09:55 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26.7.0` - unknown; unknown

```console
$ docker pull mysql@sha256:f73d97e9599d81b9e43ce58653e3235678c9c77588da26952bb3591ca690a03b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17451523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f532b4002427f61d42e950d4d0f687a12ee5368503c38ef4d4c734f3c123937b`

```dockerfile
```

-	Layers:
	-	`sha256:8cf9b4d364d54a9696eeb34026b479a9c9a295c2df6532b6efaf5ac94de11cb7`  
		Last Modified: Mon, 21 Sep 2026 23:09:53 GMT  
		Size: 17.4 MB (17415884 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b578572a81a0dd188969c7964ee2ac2245afaee051337e913e6a6797db526ecc`  
		Last Modified: Mon, 21 Sep 2026 23:09:53 GMT  
		Size: 35.6 KB (35639 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:26.7.0-oracle`

```console
$ docker pull mysql@sha256:ade067ae2fb15eeb6143e81185afe22573e3b3addc58aaf90c41999fa6883991
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:26.7.0-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:74849bf6226b8dafdb1258e90fab588de1e597a80487e744986d9d85d6a65836
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.4 MB (272359450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0485e3d5a3f3cb2cfd593047ab321a420f7026ec4ea0adc20e65eb42d420db68`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 21 Sep 2026 23:04:16 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 21 Sep 2026 23:04:16 GMT
CMD ["/bin/bash"]
# Mon, 21 Sep 2026 23:06:56 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 21 Sep 2026 23:06:57 GMT
ENV GOSU_VERSION=1.19
# Mon, 21 Sep 2026 23:06:57 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 21 Sep 2026 23:07:31 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 21 Sep 2026 23:07:31 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 21 Sep 2026 23:07:31 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 21 Sep 2026 23:07:31 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Mon, 21 Sep 2026 23:07:32 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 21 Sep 2026 23:08:08 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 21 Sep 2026 23:08:08 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 21 Sep 2026 23:08:08 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Mon, 21 Sep 2026 23:08:55 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 21 Sep 2026 23:08:55 GMT
VOLUME [/var/lib/mysql]
# Mon, 21 Sep 2026 23:08:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 21 Sep 2026 23:08:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Sep 2026 23:08:55 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 21 Sep 2026 23:08:55 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:6361e9307160bba9b9394334d9e85b77c416081e54c8ba8c6d0806dc0c4d5f4b`  
		Last Modified: Mon, 21 Sep 2026 23:04:27 GMT  
		Size: 47.9 MB (47941513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3534c258aabac4c46b37947f2089c39baa310568391f96404233e4c9df894e3a`  
		Last Modified: Mon, 21 Sep 2026 23:09:29 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a7fe1a85aa5548d42fcb8c335f7444be477ed2e9c73b20c83e191abfc71e61e`  
		Last Modified: Mon, 21 Sep 2026 23:09:29 GMT  
		Size: 783.5 KB (783541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30e12685077b4e92fbc033480c85f54689f367be5135b9e03aff46b36c09d2a3`  
		Last Modified: Mon, 21 Sep 2026 23:09:29 GMT  
		Size: 6.2 MB (6197645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb5715bbbeccb7f7385fa58362ba085fbf743725a960a1357d8f232e731716d8`  
		Last Modified: Mon, 21 Sep 2026 23:09:29 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59270b130aec3d2cdff3fc51e1058cd7b3faecd61bb4461ec3c17b6494a1ebdc`  
		Last Modified: Mon, 21 Sep 2026 23:09:30 GMT  
		Size: 341.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6de6b644e38e2677f72d5e17463e85fa1383d4425b4a4e731aa8799a4d666c80`  
		Last Modified: Mon, 21 Sep 2026 23:09:32 GMT  
		Size: 57.5 MB (57455040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:115b4caa98402fb25e0f4d1897406e658770f9c71967ee6ad98a120b51ce7d3c`  
		Last Modified: Mon, 21 Sep 2026 23:09:30 GMT  
		Size: 326.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e394e0b2e6500fe3fda549e1ab6ed1645db3882670433888ffa6126aa3f83c70`  
		Last Modified: Mon, 21 Sep 2026 23:09:34 GMT  
		Size: 160.0 MB (159972331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f7644b7ee9b3f7889f3fe5cf3c86f2cae37492fafd58e298846aa1122751a41`  
		Last Modified: Mon, 21 Sep 2026 23:09:31 GMT  
		Size: 5.2 KB (5223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26.7.0-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:da9f9956c561a82558cf5b75587eccaa3517bff02b94594b9438fba32d303e9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17452709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23c12b5d4c80cb4e0484d94eff80749e14d89a1993cd025ec8207b3587783064`

```dockerfile
```

-	Layers:
	-	`sha256:8b2919a887f80355a9f9687687048641fb52398a9e06e216fa82eef029f2cbd2`  
		Last Modified: Mon, 21 Sep 2026 23:09:30 GMT  
		Size: 17.4 MB (17417411 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ef1d56738a4a943ed88423c36741edee4314969e32c404c124852fde2dfbc3f7`  
		Last Modified: Mon, 21 Sep 2026 23:09:29 GMT  
		Size: 35.3 KB (35298 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:26.7.0-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:082788c625f6691d3dc3fde8669340cfb8bc0377c06e88889382f5f28e1bb81b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.7 MB (268735017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1ebb12281ad097d611394946626b6baf897511844d9a684d2cb39b15b83c117`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 21 Sep 2026 23:04:02 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 21 Sep 2026 23:04:02 GMT
CMD ["/bin/bash"]
# Mon, 21 Sep 2026 23:07:01 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 21 Sep 2026 23:07:03 GMT
ENV GOSU_VERSION=1.19
# Mon, 21 Sep 2026 23:07:03 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 21 Sep 2026 23:07:40 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 21 Sep 2026 23:07:41 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 21 Sep 2026 23:07:41 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 21 Sep 2026 23:07:41 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Mon, 21 Sep 2026 23:07:41 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 21 Sep 2026 23:08:23 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 21 Sep 2026 23:08:24 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 21 Sep 2026 23:08:24 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Mon, 21 Sep 2026 23:09:17 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 21 Sep 2026 23:09:17 GMT
VOLUME [/var/lib/mysql]
# Mon, 21 Sep 2026 23:09:17 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 21 Sep 2026 23:09:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Sep 2026 23:09:17 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 21 Sep 2026 23:09:17 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b20e21573231a46ffd267a5791372e98726f9d11dd03deafc22fd5d18be5deea`  
		Last Modified: Mon, 21 Sep 2026 23:04:13 GMT  
		Size: 46.5 MB (46486872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3da5a8d5edbf0be97b026be4c1c5ddf681829d79a21674a06faf3d7b0411db3c`  
		Last Modified: Mon, 21 Sep 2026 23:09:45 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b9f295eb849b2eb074a1c710e56992483657e9232651464245d0e591987db5a`  
		Last Modified: Mon, 21 Sep 2026 23:09:53 GMT  
		Size: 737.5 KB (737526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6be4adf735ca3632e65d150709806245be650fbf48e7e1986b77788a8146c359`  
		Last Modified: Mon, 21 Sep 2026 23:09:53 GMT  
		Size: 5.8 MB (5824191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f1ace268c37904c174f19891793114adc47a8fe347da7be4bb38f60480831da`  
		Last Modified: Mon, 21 Sep 2026 23:09:53 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eebc42e6f78939280abe7dc0a2930177e00e424cbf2e5f3294c5169a8d5647c0`  
		Last Modified: Mon, 21 Sep 2026 23:09:53 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb58f96fe4494fe31e39a842757b541e4efe827ae9a6bf23ea3b83e4c6e39294`  
		Last Modified: Mon, 21 Sep 2026 23:09:56 GMT  
		Size: 57.4 MB (57434784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:070dfb8de89b2a3e04a78e5e31ebf3105edc9b7ade18f2fe95f626be2fdd6a0f`  
		Last Modified: Mon, 21 Sep 2026 23:09:54 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2621ba5f41b09b2da5c3a9079448554687e1ed6536981107eec7bac27e1bcde2`  
		Last Modified: Mon, 21 Sep 2026 23:09:58 GMT  
		Size: 158.2 MB (158242261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25e22dbe9362df1586bc53875635061ed6fd5c9bbeba7c5775d6a03299a825e8`  
		Last Modified: Mon, 21 Sep 2026 23:09:55 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26.7.0-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:f73d97e9599d81b9e43ce58653e3235678c9c77588da26952bb3591ca690a03b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17451523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f532b4002427f61d42e950d4d0f687a12ee5368503c38ef4d4c734f3c123937b`

```dockerfile
```

-	Layers:
	-	`sha256:8cf9b4d364d54a9696eeb34026b479a9c9a295c2df6532b6efaf5ac94de11cb7`  
		Last Modified: Mon, 21 Sep 2026 23:09:53 GMT  
		Size: 17.4 MB (17415884 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b578572a81a0dd188969c7964ee2ac2245afaee051337e913e6a6797db526ecc`  
		Last Modified: Mon, 21 Sep 2026 23:09:53 GMT  
		Size: 35.6 KB (35639 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:26.7.0-oraclelinux9`

```console
$ docker pull mysql@sha256:ade067ae2fb15eeb6143e81185afe22573e3b3addc58aaf90c41999fa6883991
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:26.7.0-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:74849bf6226b8dafdb1258e90fab588de1e597a80487e744986d9d85d6a65836
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.4 MB (272359450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0485e3d5a3f3cb2cfd593047ab321a420f7026ec4ea0adc20e65eb42d420db68`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 21 Sep 2026 23:04:16 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 21 Sep 2026 23:04:16 GMT
CMD ["/bin/bash"]
# Mon, 21 Sep 2026 23:06:56 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 21 Sep 2026 23:06:57 GMT
ENV GOSU_VERSION=1.19
# Mon, 21 Sep 2026 23:06:57 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 21 Sep 2026 23:07:31 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 21 Sep 2026 23:07:31 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 21 Sep 2026 23:07:31 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 21 Sep 2026 23:07:31 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Mon, 21 Sep 2026 23:07:32 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 21 Sep 2026 23:08:08 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 21 Sep 2026 23:08:08 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 21 Sep 2026 23:08:08 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Mon, 21 Sep 2026 23:08:55 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 21 Sep 2026 23:08:55 GMT
VOLUME [/var/lib/mysql]
# Mon, 21 Sep 2026 23:08:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 21 Sep 2026 23:08:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Sep 2026 23:08:55 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 21 Sep 2026 23:08:55 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:6361e9307160bba9b9394334d9e85b77c416081e54c8ba8c6d0806dc0c4d5f4b`  
		Last Modified: Mon, 21 Sep 2026 23:04:27 GMT  
		Size: 47.9 MB (47941513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3534c258aabac4c46b37947f2089c39baa310568391f96404233e4c9df894e3a`  
		Last Modified: Mon, 21 Sep 2026 23:09:29 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a7fe1a85aa5548d42fcb8c335f7444be477ed2e9c73b20c83e191abfc71e61e`  
		Last Modified: Mon, 21 Sep 2026 23:09:29 GMT  
		Size: 783.5 KB (783541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30e12685077b4e92fbc033480c85f54689f367be5135b9e03aff46b36c09d2a3`  
		Last Modified: Mon, 21 Sep 2026 23:09:29 GMT  
		Size: 6.2 MB (6197645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb5715bbbeccb7f7385fa58362ba085fbf743725a960a1357d8f232e731716d8`  
		Last Modified: Mon, 21 Sep 2026 23:09:29 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59270b130aec3d2cdff3fc51e1058cd7b3faecd61bb4461ec3c17b6494a1ebdc`  
		Last Modified: Mon, 21 Sep 2026 23:09:30 GMT  
		Size: 341.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6de6b644e38e2677f72d5e17463e85fa1383d4425b4a4e731aa8799a4d666c80`  
		Last Modified: Mon, 21 Sep 2026 23:09:32 GMT  
		Size: 57.5 MB (57455040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:115b4caa98402fb25e0f4d1897406e658770f9c71967ee6ad98a120b51ce7d3c`  
		Last Modified: Mon, 21 Sep 2026 23:09:30 GMT  
		Size: 326.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e394e0b2e6500fe3fda549e1ab6ed1645db3882670433888ffa6126aa3f83c70`  
		Last Modified: Mon, 21 Sep 2026 23:09:34 GMT  
		Size: 160.0 MB (159972331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f7644b7ee9b3f7889f3fe5cf3c86f2cae37492fafd58e298846aa1122751a41`  
		Last Modified: Mon, 21 Sep 2026 23:09:31 GMT  
		Size: 5.2 KB (5223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26.7.0-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:da9f9956c561a82558cf5b75587eccaa3517bff02b94594b9438fba32d303e9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17452709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23c12b5d4c80cb4e0484d94eff80749e14d89a1993cd025ec8207b3587783064`

```dockerfile
```

-	Layers:
	-	`sha256:8b2919a887f80355a9f9687687048641fb52398a9e06e216fa82eef029f2cbd2`  
		Last Modified: Mon, 21 Sep 2026 23:09:30 GMT  
		Size: 17.4 MB (17417411 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ef1d56738a4a943ed88423c36741edee4314969e32c404c124852fde2dfbc3f7`  
		Last Modified: Mon, 21 Sep 2026 23:09:29 GMT  
		Size: 35.3 KB (35298 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:26.7.0-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:082788c625f6691d3dc3fde8669340cfb8bc0377c06e88889382f5f28e1bb81b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.7 MB (268735017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1ebb12281ad097d611394946626b6baf897511844d9a684d2cb39b15b83c117`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 21 Sep 2026 23:04:02 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 21 Sep 2026 23:04:02 GMT
CMD ["/bin/bash"]
# Mon, 21 Sep 2026 23:07:01 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 21 Sep 2026 23:07:03 GMT
ENV GOSU_VERSION=1.19
# Mon, 21 Sep 2026 23:07:03 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 21 Sep 2026 23:07:40 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 21 Sep 2026 23:07:41 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 21 Sep 2026 23:07:41 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 21 Sep 2026 23:07:41 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Mon, 21 Sep 2026 23:07:41 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 21 Sep 2026 23:08:23 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 21 Sep 2026 23:08:24 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 21 Sep 2026 23:08:24 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Mon, 21 Sep 2026 23:09:17 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 21 Sep 2026 23:09:17 GMT
VOLUME [/var/lib/mysql]
# Mon, 21 Sep 2026 23:09:17 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 21 Sep 2026 23:09:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Sep 2026 23:09:17 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 21 Sep 2026 23:09:17 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b20e21573231a46ffd267a5791372e98726f9d11dd03deafc22fd5d18be5deea`  
		Last Modified: Mon, 21 Sep 2026 23:04:13 GMT  
		Size: 46.5 MB (46486872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3da5a8d5edbf0be97b026be4c1c5ddf681829d79a21674a06faf3d7b0411db3c`  
		Last Modified: Mon, 21 Sep 2026 23:09:45 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b9f295eb849b2eb074a1c710e56992483657e9232651464245d0e591987db5a`  
		Last Modified: Mon, 21 Sep 2026 23:09:53 GMT  
		Size: 737.5 KB (737526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6be4adf735ca3632e65d150709806245be650fbf48e7e1986b77788a8146c359`  
		Last Modified: Mon, 21 Sep 2026 23:09:53 GMT  
		Size: 5.8 MB (5824191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f1ace268c37904c174f19891793114adc47a8fe347da7be4bb38f60480831da`  
		Last Modified: Mon, 21 Sep 2026 23:09:53 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eebc42e6f78939280abe7dc0a2930177e00e424cbf2e5f3294c5169a8d5647c0`  
		Last Modified: Mon, 21 Sep 2026 23:09:53 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb58f96fe4494fe31e39a842757b541e4efe827ae9a6bf23ea3b83e4c6e39294`  
		Last Modified: Mon, 21 Sep 2026 23:09:56 GMT  
		Size: 57.4 MB (57434784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:070dfb8de89b2a3e04a78e5e31ebf3105edc9b7ade18f2fe95f626be2fdd6a0f`  
		Last Modified: Mon, 21 Sep 2026 23:09:54 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2621ba5f41b09b2da5c3a9079448554687e1ed6536981107eec7bac27e1bcde2`  
		Last Modified: Mon, 21 Sep 2026 23:09:58 GMT  
		Size: 158.2 MB (158242261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25e22dbe9362df1586bc53875635061ed6fd5c9bbeba7c5775d6a03299a825e8`  
		Last Modified: Mon, 21 Sep 2026 23:09:55 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26.7.0-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:f73d97e9599d81b9e43ce58653e3235678c9c77588da26952bb3591ca690a03b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17451523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f532b4002427f61d42e950d4d0f687a12ee5368503c38ef4d4c734f3c123937b`

```dockerfile
```

-	Layers:
	-	`sha256:8cf9b4d364d54a9696eeb34026b479a9c9a295c2df6532b6efaf5ac94de11cb7`  
		Last Modified: Mon, 21 Sep 2026 23:09:53 GMT  
		Size: 17.4 MB (17415884 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b578572a81a0dd188969c7964ee2ac2245afaee051337e913e6a6797db526ecc`  
		Last Modified: Mon, 21 Sep 2026 23:09:53 GMT  
		Size: 35.6 KB (35639 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:8`

```console
$ docker pull mysql@sha256:0744ee5ef89ce6ccfa13de3e579fe6b9e27f93dd70da9c06d2c908b1b193fb8d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8` - linux; amd64

```console
$ docker pull mysql@sha256:f015b98a954d6bb92c370d93f354b85f4bcea15642d9fb2975f841a00d400b65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.0 MB (239000036 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee241324a55f4651d8601d3dcd4a294c5d6c363c46263f7e8d542bbc9c0deacc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 21 Sep 2026 23:04:16 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 21 Sep 2026 23:04:16 GMT
CMD ["/bin/bash"]
# Mon, 21 Sep 2026 23:06:56 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 21 Sep 2026 23:06:58 GMT
ENV GOSU_VERSION=1.19
# Mon, 21 Sep 2026 23:06:58 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 21 Sep 2026 23:07:33 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 21 Sep 2026 23:07:34 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 21 Sep 2026 23:07:34 GMT
ENV MYSQL_MAJOR=8.4
# Mon, 21 Sep 2026 23:07:34 GMT
ENV MYSQL_VERSION=8.4.11-1.el9
# Mon, 21 Sep 2026 23:07:34 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 21 Sep 2026 23:08:12 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 21 Sep 2026 23:08:12 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 21 Sep 2026 23:08:12 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Mon, 21 Sep 2026 23:08:59 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 21 Sep 2026 23:08:59 GMT
VOLUME [/var/lib/mysql]
# Mon, 21 Sep 2026 23:08:59 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 21 Sep 2026 23:08:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Sep 2026 23:08:59 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 21 Sep 2026 23:08:59 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:6361e9307160bba9b9394334d9e85b77c416081e54c8ba8c6d0806dc0c4d5f4b`  
		Last Modified: Mon, 21 Sep 2026 23:04:27 GMT  
		Size: 47.9 MB (47941513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15f59927295129190c67d0046060cf7e283c88a4a307e494616dfa157a893cbd`  
		Last Modified: Mon, 21 Sep 2026 23:09:30 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:498923139fc5d8056a5758dbdcabb1d57b4d5da2d624d060d8bdaa71d1c790ff`  
		Last Modified: Mon, 21 Sep 2026 23:09:30 GMT  
		Size: 783.6 KB (783556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec3057ccf1dfd0ac315e9354cc4d4cf1ebfccf9601e980c8b4946a40f723208f`  
		Last Modified: Mon, 21 Sep 2026 23:09:30 GMT  
		Size: 6.2 MB (6197686 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e5c887f37fd8375a1f941b9559a99bedd107f645ca4d161800c58f968391a1e`  
		Last Modified: Mon, 21 Sep 2026 23:09:30 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07e2663acdf19b1155f06c372c3355cd4b47d9e718b2fab2330e51b5ca79153f`  
		Last Modified: Mon, 21 Sep 2026 23:09:31 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:897f02d4849771e86c2ec25e43d2c89ac37b37916c44d21c36ec2f1c7a54daa9`  
		Last Modified: Mon, 21 Sep 2026 23:09:33 GMT  
		Size: 51.6 MB (51634020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09f155b0d69c44586c08564ef9ab35d074c9aa453e14101930b87f0edcd591fe`  
		Last Modified: Mon, 21 Sep 2026 23:09:31 GMT  
		Size: 319.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b7a0feba03903601457304b334e447b1de41171e48793479d35710750bbcc1e`  
		Last Modified: Mon, 21 Sep 2026 23:09:35 GMT  
		Size: 132.4 MB (132433892 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8bcdeceabf7ccfd265723cdb1531564de1e34817e2b9e03562f510b2cc71c8b`  
		Last Modified: Mon, 21 Sep 2026 23:09:32 GMT  
		Size: 5.2 KB (5224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8` - unknown; unknown

```console
$ docker pull mysql@sha256:0bbad2373d19e677ce0889a0b1bf455407db45d1056348118a3d8ea5eecd5300
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15745235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a691fcc21a9392408c8c6eb84e565ce86b983ae8b77ddb33b52bc55a38539d4c`

```dockerfile
```

-	Layers:
	-	`sha256:caea9d9474fc86f869a0fec43a9a3d98e3b1762129ccca274b0ef61bb5191b7b`  
		Last Modified: Mon, 21 Sep 2026 23:09:30 GMT  
		Size: 15.7 MB (15711922 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e9b3097bd3b92cfd4d687c2635e2defe595475e6446ab7c0e10ce57964e0ff63`  
		Last Modified: Mon, 21 Sep 2026 23:09:29 GMT  
		Size: 33.3 KB (33313 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:64a9d35fe6fed01159499be26c3279ac5ee16006c2ebb1f480d634bd5c61a053
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.7 MB (233714790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a2cc5e121fa5b68ec0965ea6d4f533d4c7f23b3216e788b1479857c377aae66`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 21 Sep 2026 23:04:02 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 21 Sep 2026 23:04:02 GMT
CMD ["/bin/bash"]
# Mon, 21 Sep 2026 23:07:01 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 21 Sep 2026 23:07:03 GMT
ENV GOSU_VERSION=1.19
# Mon, 21 Sep 2026 23:07:03 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 21 Sep 2026 23:07:41 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 21 Sep 2026 23:07:42 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 21 Sep 2026 23:07:42 GMT
ENV MYSQL_MAJOR=8.4
# Mon, 21 Sep 2026 23:07:42 GMT
ENV MYSQL_VERSION=8.4.11-1.el9
# Mon, 21 Sep 2026 23:07:42 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 21 Sep 2026 23:08:23 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 21 Sep 2026 23:08:23 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 21 Sep 2026 23:08:23 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Mon, 21 Sep 2026 23:09:14 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 21 Sep 2026 23:09:14 GMT
VOLUME [/var/lib/mysql]
# Mon, 21 Sep 2026 23:09:14 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 21 Sep 2026 23:09:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Sep 2026 23:09:14 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 21 Sep 2026 23:09:14 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b20e21573231a46ffd267a5791372e98726f9d11dd03deafc22fd5d18be5deea`  
		Last Modified: Mon, 21 Sep 2026 23:04:13 GMT  
		Size: 46.5 MB (46486872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3da5a8d5edbf0be97b026be4c1c5ddf681829d79a21674a06faf3d7b0411db3c`  
		Last Modified: Mon, 21 Sep 2026 23:09:45 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91aebaccc46af11c094b5617d0ac927d9fe9ecb520e73d562f698046bd567a58`  
		Last Modified: Mon, 21 Sep 2026 23:09:45 GMT  
		Size: 737.5 KB (737526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a13c4904cbaa4d99c2637362978292476b6246bb08f3eea6970c3ad537c7aa63`  
		Last Modified: Mon, 21 Sep 2026 23:09:45 GMT  
		Size: 5.8 MB (5824191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8830487c6aa83e51d4ec5d813ddcb7aadc27139b53a9c20cff738a239ccded23`  
		Last Modified: Mon, 21 Sep 2026 23:09:45 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:082a4e8d20c421b9493be90f943394eb8347dffed7492b0b2c1eeecbba7e9685`  
		Last Modified: Mon, 21 Sep 2026 23:09:46 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:276be347c5e90f570905e9b32c002a1846fca373a66a2bed819d8068be3b6c61`  
		Last Modified: Mon, 21 Sep 2026 23:09:48 GMT  
		Size: 49.9 MB (49861095 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:576b9d94acf9dbb846985c4348aed5e620982b9cbb7bf73f340879d0adf9caef`  
		Last Modified: Mon, 21 Sep 2026 23:09:46 GMT  
		Size: 322.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98b07351ed0da678fbac358eeb53d3dc1db2cd457c525d00aee96982dcd32d65`  
		Last Modified: Mon, 21 Sep 2026 23:09:50 GMT  
		Size: 130.8 MB (130795734 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fceb48821d6070d6bd33f0e45b4fa4a9d2b308b9761305269a322f3a7cf0a2b0`  
		Last Modified: Mon, 21 Sep 2026 23:09:47 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8` - unknown; unknown

```console
$ docker pull mysql@sha256:7f2d35e34c05b0d4a96ddf1e81523e0a42639473c4a9dd81155e8eed0b287fbb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15743903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c311f4813fd6c8df59f88adf9810e1f9da071bbeec67ecaa21e2587618ea707c`

```dockerfile
```

-	Layers:
	-	`sha256:be4375cfb849c1eee5441a989c24dd28f3e87ff538da62d5ab462a8e3480a1e9`  
		Last Modified: Mon, 21 Sep 2026 23:09:46 GMT  
		Size: 15.7 MB (15710322 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e9843a70e143654ae8f78a7f33f40f02292e8572cc58d96e3144cf9886083700`  
		Last Modified: Mon, 21 Sep 2026 23:09:45 GMT  
		Size: 33.6 KB (33581 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:8-oracle`

```console
$ docker pull mysql@sha256:0744ee5ef89ce6ccfa13de3e579fe6b9e27f93dd70da9c06d2c908b1b193fb8d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:f015b98a954d6bb92c370d93f354b85f4bcea15642d9fb2975f841a00d400b65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.0 MB (239000036 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee241324a55f4651d8601d3dcd4a294c5d6c363c46263f7e8d542bbc9c0deacc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 21 Sep 2026 23:04:16 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 21 Sep 2026 23:04:16 GMT
CMD ["/bin/bash"]
# Mon, 21 Sep 2026 23:06:56 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 21 Sep 2026 23:06:58 GMT
ENV GOSU_VERSION=1.19
# Mon, 21 Sep 2026 23:06:58 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 21 Sep 2026 23:07:33 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 21 Sep 2026 23:07:34 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 21 Sep 2026 23:07:34 GMT
ENV MYSQL_MAJOR=8.4
# Mon, 21 Sep 2026 23:07:34 GMT
ENV MYSQL_VERSION=8.4.11-1.el9
# Mon, 21 Sep 2026 23:07:34 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 21 Sep 2026 23:08:12 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 21 Sep 2026 23:08:12 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 21 Sep 2026 23:08:12 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Mon, 21 Sep 2026 23:08:59 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 21 Sep 2026 23:08:59 GMT
VOLUME [/var/lib/mysql]
# Mon, 21 Sep 2026 23:08:59 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 21 Sep 2026 23:08:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Sep 2026 23:08:59 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 21 Sep 2026 23:08:59 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:6361e9307160bba9b9394334d9e85b77c416081e54c8ba8c6d0806dc0c4d5f4b`  
		Last Modified: Mon, 21 Sep 2026 23:04:27 GMT  
		Size: 47.9 MB (47941513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15f59927295129190c67d0046060cf7e283c88a4a307e494616dfa157a893cbd`  
		Last Modified: Mon, 21 Sep 2026 23:09:30 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:498923139fc5d8056a5758dbdcabb1d57b4d5da2d624d060d8bdaa71d1c790ff`  
		Last Modified: Mon, 21 Sep 2026 23:09:30 GMT  
		Size: 783.6 KB (783556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec3057ccf1dfd0ac315e9354cc4d4cf1ebfccf9601e980c8b4946a40f723208f`  
		Last Modified: Mon, 21 Sep 2026 23:09:30 GMT  
		Size: 6.2 MB (6197686 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e5c887f37fd8375a1f941b9559a99bedd107f645ca4d161800c58f968391a1e`  
		Last Modified: Mon, 21 Sep 2026 23:09:30 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07e2663acdf19b1155f06c372c3355cd4b47d9e718b2fab2330e51b5ca79153f`  
		Last Modified: Mon, 21 Sep 2026 23:09:31 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:897f02d4849771e86c2ec25e43d2c89ac37b37916c44d21c36ec2f1c7a54daa9`  
		Last Modified: Mon, 21 Sep 2026 23:09:33 GMT  
		Size: 51.6 MB (51634020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09f155b0d69c44586c08564ef9ab35d074c9aa453e14101930b87f0edcd591fe`  
		Last Modified: Mon, 21 Sep 2026 23:09:31 GMT  
		Size: 319.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b7a0feba03903601457304b334e447b1de41171e48793479d35710750bbcc1e`  
		Last Modified: Mon, 21 Sep 2026 23:09:35 GMT  
		Size: 132.4 MB (132433892 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8bcdeceabf7ccfd265723cdb1531564de1e34817e2b9e03562f510b2cc71c8b`  
		Last Modified: Mon, 21 Sep 2026 23:09:32 GMT  
		Size: 5.2 KB (5224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:0bbad2373d19e677ce0889a0b1bf455407db45d1056348118a3d8ea5eecd5300
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15745235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a691fcc21a9392408c8c6eb84e565ce86b983ae8b77ddb33b52bc55a38539d4c`

```dockerfile
```

-	Layers:
	-	`sha256:caea9d9474fc86f869a0fec43a9a3d98e3b1762129ccca274b0ef61bb5191b7b`  
		Last Modified: Mon, 21 Sep 2026 23:09:30 GMT  
		Size: 15.7 MB (15711922 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e9b3097bd3b92cfd4d687c2635e2defe595475e6446ab7c0e10ce57964e0ff63`  
		Last Modified: Mon, 21 Sep 2026 23:09:29 GMT  
		Size: 33.3 KB (33313 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:64a9d35fe6fed01159499be26c3279ac5ee16006c2ebb1f480d634bd5c61a053
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.7 MB (233714790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a2cc5e121fa5b68ec0965ea6d4f533d4c7f23b3216e788b1479857c377aae66`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 21 Sep 2026 23:04:02 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 21 Sep 2026 23:04:02 GMT
CMD ["/bin/bash"]
# Mon, 21 Sep 2026 23:07:01 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 21 Sep 2026 23:07:03 GMT
ENV GOSU_VERSION=1.19
# Mon, 21 Sep 2026 23:07:03 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 21 Sep 2026 23:07:41 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 21 Sep 2026 23:07:42 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 21 Sep 2026 23:07:42 GMT
ENV MYSQL_MAJOR=8.4
# Mon, 21 Sep 2026 23:07:42 GMT
ENV MYSQL_VERSION=8.4.11-1.el9
# Mon, 21 Sep 2026 23:07:42 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 21 Sep 2026 23:08:23 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 21 Sep 2026 23:08:23 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 21 Sep 2026 23:08:23 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Mon, 21 Sep 2026 23:09:14 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 21 Sep 2026 23:09:14 GMT
VOLUME [/var/lib/mysql]
# Mon, 21 Sep 2026 23:09:14 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 21 Sep 2026 23:09:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Sep 2026 23:09:14 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 21 Sep 2026 23:09:14 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b20e21573231a46ffd267a5791372e98726f9d11dd03deafc22fd5d18be5deea`  
		Last Modified: Mon, 21 Sep 2026 23:04:13 GMT  
		Size: 46.5 MB (46486872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3da5a8d5edbf0be97b026be4c1c5ddf681829d79a21674a06faf3d7b0411db3c`  
		Last Modified: Mon, 21 Sep 2026 23:09:45 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91aebaccc46af11c094b5617d0ac927d9fe9ecb520e73d562f698046bd567a58`  
		Last Modified: Mon, 21 Sep 2026 23:09:45 GMT  
		Size: 737.5 KB (737526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a13c4904cbaa4d99c2637362978292476b6246bb08f3eea6970c3ad537c7aa63`  
		Last Modified: Mon, 21 Sep 2026 23:09:45 GMT  
		Size: 5.8 MB (5824191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8830487c6aa83e51d4ec5d813ddcb7aadc27139b53a9c20cff738a239ccded23`  
		Last Modified: Mon, 21 Sep 2026 23:09:45 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:082a4e8d20c421b9493be90f943394eb8347dffed7492b0b2c1eeecbba7e9685`  
		Last Modified: Mon, 21 Sep 2026 23:09:46 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:276be347c5e90f570905e9b32c002a1846fca373a66a2bed819d8068be3b6c61`  
		Last Modified: Mon, 21 Sep 2026 23:09:48 GMT  
		Size: 49.9 MB (49861095 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:576b9d94acf9dbb846985c4348aed5e620982b9cbb7bf73f340879d0adf9caef`  
		Last Modified: Mon, 21 Sep 2026 23:09:46 GMT  
		Size: 322.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98b07351ed0da678fbac358eeb53d3dc1db2cd457c525d00aee96982dcd32d65`  
		Last Modified: Mon, 21 Sep 2026 23:09:50 GMT  
		Size: 130.8 MB (130795734 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fceb48821d6070d6bd33f0e45b4fa4a9d2b308b9761305269a322f3a7cf0a2b0`  
		Last Modified: Mon, 21 Sep 2026 23:09:47 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:7f2d35e34c05b0d4a96ddf1e81523e0a42639473c4a9dd81155e8eed0b287fbb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15743903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c311f4813fd6c8df59f88adf9810e1f9da071bbeec67ecaa21e2587618ea707c`

```dockerfile
```

-	Layers:
	-	`sha256:be4375cfb849c1eee5441a989c24dd28f3e87ff538da62d5ab462a8e3480a1e9`  
		Last Modified: Mon, 21 Sep 2026 23:09:46 GMT  
		Size: 15.7 MB (15710322 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e9843a70e143654ae8f78a7f33f40f02292e8572cc58d96e3144cf9886083700`  
		Last Modified: Mon, 21 Sep 2026 23:09:45 GMT  
		Size: 33.6 KB (33581 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:8-oraclelinux9`

```console
$ docker pull mysql@sha256:0744ee5ef89ce6ccfa13de3e579fe6b9e27f93dd70da9c06d2c908b1b193fb8d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:f015b98a954d6bb92c370d93f354b85f4bcea15642d9fb2975f841a00d400b65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.0 MB (239000036 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee241324a55f4651d8601d3dcd4a294c5d6c363c46263f7e8d542bbc9c0deacc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 21 Sep 2026 23:04:16 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 21 Sep 2026 23:04:16 GMT
CMD ["/bin/bash"]
# Mon, 21 Sep 2026 23:06:56 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 21 Sep 2026 23:06:58 GMT
ENV GOSU_VERSION=1.19
# Mon, 21 Sep 2026 23:06:58 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 21 Sep 2026 23:07:33 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 21 Sep 2026 23:07:34 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 21 Sep 2026 23:07:34 GMT
ENV MYSQL_MAJOR=8.4
# Mon, 21 Sep 2026 23:07:34 GMT
ENV MYSQL_VERSION=8.4.11-1.el9
# Mon, 21 Sep 2026 23:07:34 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 21 Sep 2026 23:08:12 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 21 Sep 2026 23:08:12 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 21 Sep 2026 23:08:12 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Mon, 21 Sep 2026 23:08:59 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 21 Sep 2026 23:08:59 GMT
VOLUME [/var/lib/mysql]
# Mon, 21 Sep 2026 23:08:59 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 21 Sep 2026 23:08:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Sep 2026 23:08:59 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 21 Sep 2026 23:08:59 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:6361e9307160bba9b9394334d9e85b77c416081e54c8ba8c6d0806dc0c4d5f4b`  
		Last Modified: Mon, 21 Sep 2026 23:04:27 GMT  
		Size: 47.9 MB (47941513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15f59927295129190c67d0046060cf7e283c88a4a307e494616dfa157a893cbd`  
		Last Modified: Mon, 21 Sep 2026 23:09:30 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:498923139fc5d8056a5758dbdcabb1d57b4d5da2d624d060d8bdaa71d1c790ff`  
		Last Modified: Mon, 21 Sep 2026 23:09:30 GMT  
		Size: 783.6 KB (783556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec3057ccf1dfd0ac315e9354cc4d4cf1ebfccf9601e980c8b4946a40f723208f`  
		Last Modified: Mon, 21 Sep 2026 23:09:30 GMT  
		Size: 6.2 MB (6197686 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e5c887f37fd8375a1f941b9559a99bedd107f645ca4d161800c58f968391a1e`  
		Last Modified: Mon, 21 Sep 2026 23:09:30 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07e2663acdf19b1155f06c372c3355cd4b47d9e718b2fab2330e51b5ca79153f`  
		Last Modified: Mon, 21 Sep 2026 23:09:31 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:897f02d4849771e86c2ec25e43d2c89ac37b37916c44d21c36ec2f1c7a54daa9`  
		Last Modified: Mon, 21 Sep 2026 23:09:33 GMT  
		Size: 51.6 MB (51634020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09f155b0d69c44586c08564ef9ab35d074c9aa453e14101930b87f0edcd591fe`  
		Last Modified: Mon, 21 Sep 2026 23:09:31 GMT  
		Size: 319.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b7a0feba03903601457304b334e447b1de41171e48793479d35710750bbcc1e`  
		Last Modified: Mon, 21 Sep 2026 23:09:35 GMT  
		Size: 132.4 MB (132433892 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8bcdeceabf7ccfd265723cdb1531564de1e34817e2b9e03562f510b2cc71c8b`  
		Last Modified: Mon, 21 Sep 2026 23:09:32 GMT  
		Size: 5.2 KB (5224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:0bbad2373d19e677ce0889a0b1bf455407db45d1056348118a3d8ea5eecd5300
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15745235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a691fcc21a9392408c8c6eb84e565ce86b983ae8b77ddb33b52bc55a38539d4c`

```dockerfile
```

-	Layers:
	-	`sha256:caea9d9474fc86f869a0fec43a9a3d98e3b1762129ccca274b0ef61bb5191b7b`  
		Last Modified: Mon, 21 Sep 2026 23:09:30 GMT  
		Size: 15.7 MB (15711922 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e9b3097bd3b92cfd4d687c2635e2defe595475e6446ab7c0e10ce57964e0ff63`  
		Last Modified: Mon, 21 Sep 2026 23:09:29 GMT  
		Size: 33.3 KB (33313 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:64a9d35fe6fed01159499be26c3279ac5ee16006c2ebb1f480d634bd5c61a053
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.7 MB (233714790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a2cc5e121fa5b68ec0965ea6d4f533d4c7f23b3216e788b1479857c377aae66`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 21 Sep 2026 23:04:02 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 21 Sep 2026 23:04:02 GMT
CMD ["/bin/bash"]
# Mon, 21 Sep 2026 23:07:01 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 21 Sep 2026 23:07:03 GMT
ENV GOSU_VERSION=1.19
# Mon, 21 Sep 2026 23:07:03 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 21 Sep 2026 23:07:41 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 21 Sep 2026 23:07:42 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 21 Sep 2026 23:07:42 GMT
ENV MYSQL_MAJOR=8.4
# Mon, 21 Sep 2026 23:07:42 GMT
ENV MYSQL_VERSION=8.4.11-1.el9
# Mon, 21 Sep 2026 23:07:42 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 21 Sep 2026 23:08:23 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 21 Sep 2026 23:08:23 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 21 Sep 2026 23:08:23 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Mon, 21 Sep 2026 23:09:14 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 21 Sep 2026 23:09:14 GMT
VOLUME [/var/lib/mysql]
# Mon, 21 Sep 2026 23:09:14 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 21 Sep 2026 23:09:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Sep 2026 23:09:14 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 21 Sep 2026 23:09:14 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b20e21573231a46ffd267a5791372e98726f9d11dd03deafc22fd5d18be5deea`  
		Last Modified: Mon, 21 Sep 2026 23:04:13 GMT  
		Size: 46.5 MB (46486872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3da5a8d5edbf0be97b026be4c1c5ddf681829d79a21674a06faf3d7b0411db3c`  
		Last Modified: Mon, 21 Sep 2026 23:09:45 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91aebaccc46af11c094b5617d0ac927d9fe9ecb520e73d562f698046bd567a58`  
		Last Modified: Mon, 21 Sep 2026 23:09:45 GMT  
		Size: 737.5 KB (737526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a13c4904cbaa4d99c2637362978292476b6246bb08f3eea6970c3ad537c7aa63`  
		Last Modified: Mon, 21 Sep 2026 23:09:45 GMT  
		Size: 5.8 MB (5824191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8830487c6aa83e51d4ec5d813ddcb7aadc27139b53a9c20cff738a239ccded23`  
		Last Modified: Mon, 21 Sep 2026 23:09:45 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:082a4e8d20c421b9493be90f943394eb8347dffed7492b0b2c1eeecbba7e9685`  
		Last Modified: Mon, 21 Sep 2026 23:09:46 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:276be347c5e90f570905e9b32c002a1846fca373a66a2bed819d8068be3b6c61`  
		Last Modified: Mon, 21 Sep 2026 23:09:48 GMT  
		Size: 49.9 MB (49861095 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:576b9d94acf9dbb846985c4348aed5e620982b9cbb7bf73f340879d0adf9caef`  
		Last Modified: Mon, 21 Sep 2026 23:09:46 GMT  
		Size: 322.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98b07351ed0da678fbac358eeb53d3dc1db2cd457c525d00aee96982dcd32d65`  
		Last Modified: Mon, 21 Sep 2026 23:09:50 GMT  
		Size: 130.8 MB (130795734 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fceb48821d6070d6bd33f0e45b4fa4a9d2b308b9761305269a322f3a7cf0a2b0`  
		Last Modified: Mon, 21 Sep 2026 23:09:47 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:7f2d35e34c05b0d4a96ddf1e81523e0a42639473c4a9dd81155e8eed0b287fbb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15743903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c311f4813fd6c8df59f88adf9810e1f9da071bbeec67ecaa21e2587618ea707c`

```dockerfile
```

-	Layers:
	-	`sha256:be4375cfb849c1eee5441a989c24dd28f3e87ff538da62d5ab462a8e3480a1e9`  
		Last Modified: Mon, 21 Sep 2026 23:09:46 GMT  
		Size: 15.7 MB (15710322 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e9843a70e143654ae8f78a7f33f40f02292e8572cc58d96e3144cf9886083700`  
		Last Modified: Mon, 21 Sep 2026 23:09:45 GMT  
		Size: 33.6 KB (33581 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:8.4`

```console
$ docker pull mysql@sha256:0744ee5ef89ce6ccfa13de3e579fe6b9e27f93dd70da9c06d2c908b1b193fb8d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8.4` - linux; amd64

```console
$ docker pull mysql@sha256:f015b98a954d6bb92c370d93f354b85f4bcea15642d9fb2975f841a00d400b65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.0 MB (239000036 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee241324a55f4651d8601d3dcd4a294c5d6c363c46263f7e8d542bbc9c0deacc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 21 Sep 2026 23:04:16 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 21 Sep 2026 23:04:16 GMT
CMD ["/bin/bash"]
# Mon, 21 Sep 2026 23:06:56 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 21 Sep 2026 23:06:58 GMT
ENV GOSU_VERSION=1.19
# Mon, 21 Sep 2026 23:06:58 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 21 Sep 2026 23:07:33 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 21 Sep 2026 23:07:34 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 21 Sep 2026 23:07:34 GMT
ENV MYSQL_MAJOR=8.4
# Mon, 21 Sep 2026 23:07:34 GMT
ENV MYSQL_VERSION=8.4.11-1.el9
# Mon, 21 Sep 2026 23:07:34 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 21 Sep 2026 23:08:12 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 21 Sep 2026 23:08:12 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 21 Sep 2026 23:08:12 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Mon, 21 Sep 2026 23:08:59 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 21 Sep 2026 23:08:59 GMT
VOLUME [/var/lib/mysql]
# Mon, 21 Sep 2026 23:08:59 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 21 Sep 2026 23:08:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Sep 2026 23:08:59 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 21 Sep 2026 23:08:59 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:6361e9307160bba9b9394334d9e85b77c416081e54c8ba8c6d0806dc0c4d5f4b`  
		Last Modified: Mon, 21 Sep 2026 23:04:27 GMT  
		Size: 47.9 MB (47941513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15f59927295129190c67d0046060cf7e283c88a4a307e494616dfa157a893cbd`  
		Last Modified: Mon, 21 Sep 2026 23:09:30 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:498923139fc5d8056a5758dbdcabb1d57b4d5da2d624d060d8bdaa71d1c790ff`  
		Last Modified: Mon, 21 Sep 2026 23:09:30 GMT  
		Size: 783.6 KB (783556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec3057ccf1dfd0ac315e9354cc4d4cf1ebfccf9601e980c8b4946a40f723208f`  
		Last Modified: Mon, 21 Sep 2026 23:09:30 GMT  
		Size: 6.2 MB (6197686 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e5c887f37fd8375a1f941b9559a99bedd107f645ca4d161800c58f968391a1e`  
		Last Modified: Mon, 21 Sep 2026 23:09:30 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07e2663acdf19b1155f06c372c3355cd4b47d9e718b2fab2330e51b5ca79153f`  
		Last Modified: Mon, 21 Sep 2026 23:09:31 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:897f02d4849771e86c2ec25e43d2c89ac37b37916c44d21c36ec2f1c7a54daa9`  
		Last Modified: Mon, 21 Sep 2026 23:09:33 GMT  
		Size: 51.6 MB (51634020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09f155b0d69c44586c08564ef9ab35d074c9aa453e14101930b87f0edcd591fe`  
		Last Modified: Mon, 21 Sep 2026 23:09:31 GMT  
		Size: 319.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b7a0feba03903601457304b334e447b1de41171e48793479d35710750bbcc1e`  
		Last Modified: Mon, 21 Sep 2026 23:09:35 GMT  
		Size: 132.4 MB (132433892 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8bcdeceabf7ccfd265723cdb1531564de1e34817e2b9e03562f510b2cc71c8b`  
		Last Modified: Mon, 21 Sep 2026 23:09:32 GMT  
		Size: 5.2 KB (5224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4` - unknown; unknown

```console
$ docker pull mysql@sha256:0bbad2373d19e677ce0889a0b1bf455407db45d1056348118a3d8ea5eecd5300
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15745235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a691fcc21a9392408c8c6eb84e565ce86b983ae8b77ddb33b52bc55a38539d4c`

```dockerfile
```

-	Layers:
	-	`sha256:caea9d9474fc86f869a0fec43a9a3d98e3b1762129ccca274b0ef61bb5191b7b`  
		Last Modified: Mon, 21 Sep 2026 23:09:30 GMT  
		Size: 15.7 MB (15711922 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e9b3097bd3b92cfd4d687c2635e2defe595475e6446ab7c0e10ce57964e0ff63`  
		Last Modified: Mon, 21 Sep 2026 23:09:29 GMT  
		Size: 33.3 KB (33313 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8.4` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:64a9d35fe6fed01159499be26c3279ac5ee16006c2ebb1f480d634bd5c61a053
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.7 MB (233714790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a2cc5e121fa5b68ec0965ea6d4f533d4c7f23b3216e788b1479857c377aae66`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 21 Sep 2026 23:04:02 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 21 Sep 2026 23:04:02 GMT
CMD ["/bin/bash"]
# Mon, 21 Sep 2026 23:07:01 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 21 Sep 2026 23:07:03 GMT
ENV GOSU_VERSION=1.19
# Mon, 21 Sep 2026 23:07:03 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 21 Sep 2026 23:07:41 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 21 Sep 2026 23:07:42 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 21 Sep 2026 23:07:42 GMT
ENV MYSQL_MAJOR=8.4
# Mon, 21 Sep 2026 23:07:42 GMT
ENV MYSQL_VERSION=8.4.11-1.el9
# Mon, 21 Sep 2026 23:07:42 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 21 Sep 2026 23:08:23 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 21 Sep 2026 23:08:23 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 21 Sep 2026 23:08:23 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Mon, 21 Sep 2026 23:09:14 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 21 Sep 2026 23:09:14 GMT
VOLUME [/var/lib/mysql]
# Mon, 21 Sep 2026 23:09:14 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 21 Sep 2026 23:09:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Sep 2026 23:09:14 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 21 Sep 2026 23:09:14 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b20e21573231a46ffd267a5791372e98726f9d11dd03deafc22fd5d18be5deea`  
		Last Modified: Mon, 21 Sep 2026 23:04:13 GMT  
		Size: 46.5 MB (46486872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3da5a8d5edbf0be97b026be4c1c5ddf681829d79a21674a06faf3d7b0411db3c`  
		Last Modified: Mon, 21 Sep 2026 23:09:45 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91aebaccc46af11c094b5617d0ac927d9fe9ecb520e73d562f698046bd567a58`  
		Last Modified: Mon, 21 Sep 2026 23:09:45 GMT  
		Size: 737.5 KB (737526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a13c4904cbaa4d99c2637362978292476b6246bb08f3eea6970c3ad537c7aa63`  
		Last Modified: Mon, 21 Sep 2026 23:09:45 GMT  
		Size: 5.8 MB (5824191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8830487c6aa83e51d4ec5d813ddcb7aadc27139b53a9c20cff738a239ccded23`  
		Last Modified: Mon, 21 Sep 2026 23:09:45 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:082a4e8d20c421b9493be90f943394eb8347dffed7492b0b2c1eeecbba7e9685`  
		Last Modified: Mon, 21 Sep 2026 23:09:46 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:276be347c5e90f570905e9b32c002a1846fca373a66a2bed819d8068be3b6c61`  
		Last Modified: Mon, 21 Sep 2026 23:09:48 GMT  
		Size: 49.9 MB (49861095 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:576b9d94acf9dbb846985c4348aed5e620982b9cbb7bf73f340879d0adf9caef`  
		Last Modified: Mon, 21 Sep 2026 23:09:46 GMT  
		Size: 322.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98b07351ed0da678fbac358eeb53d3dc1db2cd457c525d00aee96982dcd32d65`  
		Last Modified: Mon, 21 Sep 2026 23:09:50 GMT  
		Size: 130.8 MB (130795734 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fceb48821d6070d6bd33f0e45b4fa4a9d2b308b9761305269a322f3a7cf0a2b0`  
		Last Modified: Mon, 21 Sep 2026 23:09:47 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4` - unknown; unknown

```console
$ docker pull mysql@sha256:7f2d35e34c05b0d4a96ddf1e81523e0a42639473c4a9dd81155e8eed0b287fbb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15743903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c311f4813fd6c8df59f88adf9810e1f9da071bbeec67ecaa21e2587618ea707c`

```dockerfile
```

-	Layers:
	-	`sha256:be4375cfb849c1eee5441a989c24dd28f3e87ff538da62d5ab462a8e3480a1e9`  
		Last Modified: Mon, 21 Sep 2026 23:09:46 GMT  
		Size: 15.7 MB (15710322 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e9843a70e143654ae8f78a7f33f40f02292e8572cc58d96e3144cf9886083700`  
		Last Modified: Mon, 21 Sep 2026 23:09:45 GMT  
		Size: 33.6 KB (33581 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:8.4-oracle`

```console
$ docker pull mysql@sha256:0744ee5ef89ce6ccfa13de3e579fe6b9e27f93dd70da9c06d2c908b1b193fb8d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8.4-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:f015b98a954d6bb92c370d93f354b85f4bcea15642d9fb2975f841a00d400b65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.0 MB (239000036 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee241324a55f4651d8601d3dcd4a294c5d6c363c46263f7e8d542bbc9c0deacc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 21 Sep 2026 23:04:16 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 21 Sep 2026 23:04:16 GMT
CMD ["/bin/bash"]
# Mon, 21 Sep 2026 23:06:56 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 21 Sep 2026 23:06:58 GMT
ENV GOSU_VERSION=1.19
# Mon, 21 Sep 2026 23:06:58 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 21 Sep 2026 23:07:33 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 21 Sep 2026 23:07:34 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 21 Sep 2026 23:07:34 GMT
ENV MYSQL_MAJOR=8.4
# Mon, 21 Sep 2026 23:07:34 GMT
ENV MYSQL_VERSION=8.4.11-1.el9
# Mon, 21 Sep 2026 23:07:34 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 21 Sep 2026 23:08:12 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 21 Sep 2026 23:08:12 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 21 Sep 2026 23:08:12 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Mon, 21 Sep 2026 23:08:59 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 21 Sep 2026 23:08:59 GMT
VOLUME [/var/lib/mysql]
# Mon, 21 Sep 2026 23:08:59 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 21 Sep 2026 23:08:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Sep 2026 23:08:59 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 21 Sep 2026 23:08:59 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:6361e9307160bba9b9394334d9e85b77c416081e54c8ba8c6d0806dc0c4d5f4b`  
		Last Modified: Mon, 21 Sep 2026 23:04:27 GMT  
		Size: 47.9 MB (47941513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15f59927295129190c67d0046060cf7e283c88a4a307e494616dfa157a893cbd`  
		Last Modified: Mon, 21 Sep 2026 23:09:30 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:498923139fc5d8056a5758dbdcabb1d57b4d5da2d624d060d8bdaa71d1c790ff`  
		Last Modified: Mon, 21 Sep 2026 23:09:30 GMT  
		Size: 783.6 KB (783556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec3057ccf1dfd0ac315e9354cc4d4cf1ebfccf9601e980c8b4946a40f723208f`  
		Last Modified: Mon, 21 Sep 2026 23:09:30 GMT  
		Size: 6.2 MB (6197686 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e5c887f37fd8375a1f941b9559a99bedd107f645ca4d161800c58f968391a1e`  
		Last Modified: Mon, 21 Sep 2026 23:09:30 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07e2663acdf19b1155f06c372c3355cd4b47d9e718b2fab2330e51b5ca79153f`  
		Last Modified: Mon, 21 Sep 2026 23:09:31 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:897f02d4849771e86c2ec25e43d2c89ac37b37916c44d21c36ec2f1c7a54daa9`  
		Last Modified: Mon, 21 Sep 2026 23:09:33 GMT  
		Size: 51.6 MB (51634020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09f155b0d69c44586c08564ef9ab35d074c9aa453e14101930b87f0edcd591fe`  
		Last Modified: Mon, 21 Sep 2026 23:09:31 GMT  
		Size: 319.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b7a0feba03903601457304b334e447b1de41171e48793479d35710750bbcc1e`  
		Last Modified: Mon, 21 Sep 2026 23:09:35 GMT  
		Size: 132.4 MB (132433892 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8bcdeceabf7ccfd265723cdb1531564de1e34817e2b9e03562f510b2cc71c8b`  
		Last Modified: Mon, 21 Sep 2026 23:09:32 GMT  
		Size: 5.2 KB (5224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:0bbad2373d19e677ce0889a0b1bf455407db45d1056348118a3d8ea5eecd5300
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15745235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a691fcc21a9392408c8c6eb84e565ce86b983ae8b77ddb33b52bc55a38539d4c`

```dockerfile
```

-	Layers:
	-	`sha256:caea9d9474fc86f869a0fec43a9a3d98e3b1762129ccca274b0ef61bb5191b7b`  
		Last Modified: Mon, 21 Sep 2026 23:09:30 GMT  
		Size: 15.7 MB (15711922 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e9b3097bd3b92cfd4d687c2635e2defe595475e6446ab7c0e10ce57964e0ff63`  
		Last Modified: Mon, 21 Sep 2026 23:09:29 GMT  
		Size: 33.3 KB (33313 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8.4-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:64a9d35fe6fed01159499be26c3279ac5ee16006c2ebb1f480d634bd5c61a053
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.7 MB (233714790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a2cc5e121fa5b68ec0965ea6d4f533d4c7f23b3216e788b1479857c377aae66`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 21 Sep 2026 23:04:02 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 21 Sep 2026 23:04:02 GMT
CMD ["/bin/bash"]
# Mon, 21 Sep 2026 23:07:01 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 21 Sep 2026 23:07:03 GMT
ENV GOSU_VERSION=1.19
# Mon, 21 Sep 2026 23:07:03 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 21 Sep 2026 23:07:41 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 21 Sep 2026 23:07:42 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 21 Sep 2026 23:07:42 GMT
ENV MYSQL_MAJOR=8.4
# Mon, 21 Sep 2026 23:07:42 GMT
ENV MYSQL_VERSION=8.4.11-1.el9
# Mon, 21 Sep 2026 23:07:42 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 21 Sep 2026 23:08:23 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 21 Sep 2026 23:08:23 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 21 Sep 2026 23:08:23 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Mon, 21 Sep 2026 23:09:14 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 21 Sep 2026 23:09:14 GMT
VOLUME [/var/lib/mysql]
# Mon, 21 Sep 2026 23:09:14 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 21 Sep 2026 23:09:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Sep 2026 23:09:14 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 21 Sep 2026 23:09:14 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b20e21573231a46ffd267a5791372e98726f9d11dd03deafc22fd5d18be5deea`  
		Last Modified: Mon, 21 Sep 2026 23:04:13 GMT  
		Size: 46.5 MB (46486872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3da5a8d5edbf0be97b026be4c1c5ddf681829d79a21674a06faf3d7b0411db3c`  
		Last Modified: Mon, 21 Sep 2026 23:09:45 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91aebaccc46af11c094b5617d0ac927d9fe9ecb520e73d562f698046bd567a58`  
		Last Modified: Mon, 21 Sep 2026 23:09:45 GMT  
		Size: 737.5 KB (737526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a13c4904cbaa4d99c2637362978292476b6246bb08f3eea6970c3ad537c7aa63`  
		Last Modified: Mon, 21 Sep 2026 23:09:45 GMT  
		Size: 5.8 MB (5824191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8830487c6aa83e51d4ec5d813ddcb7aadc27139b53a9c20cff738a239ccded23`  
		Last Modified: Mon, 21 Sep 2026 23:09:45 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:082a4e8d20c421b9493be90f943394eb8347dffed7492b0b2c1eeecbba7e9685`  
		Last Modified: Mon, 21 Sep 2026 23:09:46 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:276be347c5e90f570905e9b32c002a1846fca373a66a2bed819d8068be3b6c61`  
		Last Modified: Mon, 21 Sep 2026 23:09:48 GMT  
		Size: 49.9 MB (49861095 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:576b9d94acf9dbb846985c4348aed5e620982b9cbb7bf73f340879d0adf9caef`  
		Last Modified: Mon, 21 Sep 2026 23:09:46 GMT  
		Size: 322.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98b07351ed0da678fbac358eeb53d3dc1db2cd457c525d00aee96982dcd32d65`  
		Last Modified: Mon, 21 Sep 2026 23:09:50 GMT  
		Size: 130.8 MB (130795734 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fceb48821d6070d6bd33f0e45b4fa4a9d2b308b9761305269a322f3a7cf0a2b0`  
		Last Modified: Mon, 21 Sep 2026 23:09:47 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:7f2d35e34c05b0d4a96ddf1e81523e0a42639473c4a9dd81155e8eed0b287fbb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15743903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c311f4813fd6c8df59f88adf9810e1f9da071bbeec67ecaa21e2587618ea707c`

```dockerfile
```

-	Layers:
	-	`sha256:be4375cfb849c1eee5441a989c24dd28f3e87ff538da62d5ab462a8e3480a1e9`  
		Last Modified: Mon, 21 Sep 2026 23:09:46 GMT  
		Size: 15.7 MB (15710322 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e9843a70e143654ae8f78a7f33f40f02292e8572cc58d96e3144cf9886083700`  
		Last Modified: Mon, 21 Sep 2026 23:09:45 GMT  
		Size: 33.6 KB (33581 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:8.4-oraclelinux9`

```console
$ docker pull mysql@sha256:0744ee5ef89ce6ccfa13de3e579fe6b9e27f93dd70da9c06d2c908b1b193fb8d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8.4-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:f015b98a954d6bb92c370d93f354b85f4bcea15642d9fb2975f841a00d400b65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.0 MB (239000036 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee241324a55f4651d8601d3dcd4a294c5d6c363c46263f7e8d542bbc9c0deacc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 21 Sep 2026 23:04:16 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 21 Sep 2026 23:04:16 GMT
CMD ["/bin/bash"]
# Mon, 21 Sep 2026 23:06:56 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 21 Sep 2026 23:06:58 GMT
ENV GOSU_VERSION=1.19
# Mon, 21 Sep 2026 23:06:58 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 21 Sep 2026 23:07:33 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 21 Sep 2026 23:07:34 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 21 Sep 2026 23:07:34 GMT
ENV MYSQL_MAJOR=8.4
# Mon, 21 Sep 2026 23:07:34 GMT
ENV MYSQL_VERSION=8.4.11-1.el9
# Mon, 21 Sep 2026 23:07:34 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 21 Sep 2026 23:08:12 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 21 Sep 2026 23:08:12 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 21 Sep 2026 23:08:12 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Mon, 21 Sep 2026 23:08:59 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 21 Sep 2026 23:08:59 GMT
VOLUME [/var/lib/mysql]
# Mon, 21 Sep 2026 23:08:59 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 21 Sep 2026 23:08:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Sep 2026 23:08:59 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 21 Sep 2026 23:08:59 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:6361e9307160bba9b9394334d9e85b77c416081e54c8ba8c6d0806dc0c4d5f4b`  
		Last Modified: Mon, 21 Sep 2026 23:04:27 GMT  
		Size: 47.9 MB (47941513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15f59927295129190c67d0046060cf7e283c88a4a307e494616dfa157a893cbd`  
		Last Modified: Mon, 21 Sep 2026 23:09:30 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:498923139fc5d8056a5758dbdcabb1d57b4d5da2d624d060d8bdaa71d1c790ff`  
		Last Modified: Mon, 21 Sep 2026 23:09:30 GMT  
		Size: 783.6 KB (783556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec3057ccf1dfd0ac315e9354cc4d4cf1ebfccf9601e980c8b4946a40f723208f`  
		Last Modified: Mon, 21 Sep 2026 23:09:30 GMT  
		Size: 6.2 MB (6197686 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e5c887f37fd8375a1f941b9559a99bedd107f645ca4d161800c58f968391a1e`  
		Last Modified: Mon, 21 Sep 2026 23:09:30 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07e2663acdf19b1155f06c372c3355cd4b47d9e718b2fab2330e51b5ca79153f`  
		Last Modified: Mon, 21 Sep 2026 23:09:31 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:897f02d4849771e86c2ec25e43d2c89ac37b37916c44d21c36ec2f1c7a54daa9`  
		Last Modified: Mon, 21 Sep 2026 23:09:33 GMT  
		Size: 51.6 MB (51634020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09f155b0d69c44586c08564ef9ab35d074c9aa453e14101930b87f0edcd591fe`  
		Last Modified: Mon, 21 Sep 2026 23:09:31 GMT  
		Size: 319.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b7a0feba03903601457304b334e447b1de41171e48793479d35710750bbcc1e`  
		Last Modified: Mon, 21 Sep 2026 23:09:35 GMT  
		Size: 132.4 MB (132433892 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8bcdeceabf7ccfd265723cdb1531564de1e34817e2b9e03562f510b2cc71c8b`  
		Last Modified: Mon, 21 Sep 2026 23:09:32 GMT  
		Size: 5.2 KB (5224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:0bbad2373d19e677ce0889a0b1bf455407db45d1056348118a3d8ea5eecd5300
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15745235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a691fcc21a9392408c8c6eb84e565ce86b983ae8b77ddb33b52bc55a38539d4c`

```dockerfile
```

-	Layers:
	-	`sha256:caea9d9474fc86f869a0fec43a9a3d98e3b1762129ccca274b0ef61bb5191b7b`  
		Last Modified: Mon, 21 Sep 2026 23:09:30 GMT  
		Size: 15.7 MB (15711922 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e9b3097bd3b92cfd4d687c2635e2defe595475e6446ab7c0e10ce57964e0ff63`  
		Last Modified: Mon, 21 Sep 2026 23:09:29 GMT  
		Size: 33.3 KB (33313 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8.4-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:64a9d35fe6fed01159499be26c3279ac5ee16006c2ebb1f480d634bd5c61a053
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.7 MB (233714790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a2cc5e121fa5b68ec0965ea6d4f533d4c7f23b3216e788b1479857c377aae66`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 21 Sep 2026 23:04:02 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 21 Sep 2026 23:04:02 GMT
CMD ["/bin/bash"]
# Mon, 21 Sep 2026 23:07:01 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 21 Sep 2026 23:07:03 GMT
ENV GOSU_VERSION=1.19
# Mon, 21 Sep 2026 23:07:03 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 21 Sep 2026 23:07:41 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 21 Sep 2026 23:07:42 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 21 Sep 2026 23:07:42 GMT
ENV MYSQL_MAJOR=8.4
# Mon, 21 Sep 2026 23:07:42 GMT
ENV MYSQL_VERSION=8.4.11-1.el9
# Mon, 21 Sep 2026 23:07:42 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 21 Sep 2026 23:08:23 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 21 Sep 2026 23:08:23 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 21 Sep 2026 23:08:23 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Mon, 21 Sep 2026 23:09:14 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 21 Sep 2026 23:09:14 GMT
VOLUME [/var/lib/mysql]
# Mon, 21 Sep 2026 23:09:14 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 21 Sep 2026 23:09:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Sep 2026 23:09:14 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 21 Sep 2026 23:09:14 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b20e21573231a46ffd267a5791372e98726f9d11dd03deafc22fd5d18be5deea`  
		Last Modified: Mon, 21 Sep 2026 23:04:13 GMT  
		Size: 46.5 MB (46486872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3da5a8d5edbf0be97b026be4c1c5ddf681829d79a21674a06faf3d7b0411db3c`  
		Last Modified: Mon, 21 Sep 2026 23:09:45 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91aebaccc46af11c094b5617d0ac927d9fe9ecb520e73d562f698046bd567a58`  
		Last Modified: Mon, 21 Sep 2026 23:09:45 GMT  
		Size: 737.5 KB (737526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a13c4904cbaa4d99c2637362978292476b6246bb08f3eea6970c3ad537c7aa63`  
		Last Modified: Mon, 21 Sep 2026 23:09:45 GMT  
		Size: 5.8 MB (5824191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8830487c6aa83e51d4ec5d813ddcb7aadc27139b53a9c20cff738a239ccded23`  
		Last Modified: Mon, 21 Sep 2026 23:09:45 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:082a4e8d20c421b9493be90f943394eb8347dffed7492b0b2c1eeecbba7e9685`  
		Last Modified: Mon, 21 Sep 2026 23:09:46 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:276be347c5e90f570905e9b32c002a1846fca373a66a2bed819d8068be3b6c61`  
		Last Modified: Mon, 21 Sep 2026 23:09:48 GMT  
		Size: 49.9 MB (49861095 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:576b9d94acf9dbb846985c4348aed5e620982b9cbb7bf73f340879d0adf9caef`  
		Last Modified: Mon, 21 Sep 2026 23:09:46 GMT  
		Size: 322.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98b07351ed0da678fbac358eeb53d3dc1db2cd457c525d00aee96982dcd32d65`  
		Last Modified: Mon, 21 Sep 2026 23:09:50 GMT  
		Size: 130.8 MB (130795734 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fceb48821d6070d6bd33f0e45b4fa4a9d2b308b9761305269a322f3a7cf0a2b0`  
		Last Modified: Mon, 21 Sep 2026 23:09:47 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:7f2d35e34c05b0d4a96ddf1e81523e0a42639473c4a9dd81155e8eed0b287fbb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15743903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c311f4813fd6c8df59f88adf9810e1f9da071bbeec67ecaa21e2587618ea707c`

```dockerfile
```

-	Layers:
	-	`sha256:be4375cfb849c1eee5441a989c24dd28f3e87ff538da62d5ab462a8e3480a1e9`  
		Last Modified: Mon, 21 Sep 2026 23:09:46 GMT  
		Size: 15.7 MB (15710322 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e9843a70e143654ae8f78a7f33f40f02292e8572cc58d96e3144cf9886083700`  
		Last Modified: Mon, 21 Sep 2026 23:09:45 GMT  
		Size: 33.6 KB (33581 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:8.4.11`

```console
$ docker pull mysql@sha256:0744ee5ef89ce6ccfa13de3e579fe6b9e27f93dd70da9c06d2c908b1b193fb8d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8.4.11` - linux; amd64

```console
$ docker pull mysql@sha256:f015b98a954d6bb92c370d93f354b85f4bcea15642d9fb2975f841a00d400b65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.0 MB (239000036 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee241324a55f4651d8601d3dcd4a294c5d6c363c46263f7e8d542bbc9c0deacc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 21 Sep 2026 23:04:16 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 21 Sep 2026 23:04:16 GMT
CMD ["/bin/bash"]
# Mon, 21 Sep 2026 23:06:56 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 21 Sep 2026 23:06:58 GMT
ENV GOSU_VERSION=1.19
# Mon, 21 Sep 2026 23:06:58 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 21 Sep 2026 23:07:33 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 21 Sep 2026 23:07:34 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 21 Sep 2026 23:07:34 GMT
ENV MYSQL_MAJOR=8.4
# Mon, 21 Sep 2026 23:07:34 GMT
ENV MYSQL_VERSION=8.4.11-1.el9
# Mon, 21 Sep 2026 23:07:34 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 21 Sep 2026 23:08:12 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 21 Sep 2026 23:08:12 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 21 Sep 2026 23:08:12 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Mon, 21 Sep 2026 23:08:59 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 21 Sep 2026 23:08:59 GMT
VOLUME [/var/lib/mysql]
# Mon, 21 Sep 2026 23:08:59 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 21 Sep 2026 23:08:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Sep 2026 23:08:59 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 21 Sep 2026 23:08:59 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:6361e9307160bba9b9394334d9e85b77c416081e54c8ba8c6d0806dc0c4d5f4b`  
		Last Modified: Mon, 21 Sep 2026 23:04:27 GMT  
		Size: 47.9 MB (47941513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15f59927295129190c67d0046060cf7e283c88a4a307e494616dfa157a893cbd`  
		Last Modified: Mon, 21 Sep 2026 23:09:30 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:498923139fc5d8056a5758dbdcabb1d57b4d5da2d624d060d8bdaa71d1c790ff`  
		Last Modified: Mon, 21 Sep 2026 23:09:30 GMT  
		Size: 783.6 KB (783556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec3057ccf1dfd0ac315e9354cc4d4cf1ebfccf9601e980c8b4946a40f723208f`  
		Last Modified: Mon, 21 Sep 2026 23:09:30 GMT  
		Size: 6.2 MB (6197686 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e5c887f37fd8375a1f941b9559a99bedd107f645ca4d161800c58f968391a1e`  
		Last Modified: Mon, 21 Sep 2026 23:09:30 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07e2663acdf19b1155f06c372c3355cd4b47d9e718b2fab2330e51b5ca79153f`  
		Last Modified: Mon, 21 Sep 2026 23:09:31 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:897f02d4849771e86c2ec25e43d2c89ac37b37916c44d21c36ec2f1c7a54daa9`  
		Last Modified: Mon, 21 Sep 2026 23:09:33 GMT  
		Size: 51.6 MB (51634020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09f155b0d69c44586c08564ef9ab35d074c9aa453e14101930b87f0edcd591fe`  
		Last Modified: Mon, 21 Sep 2026 23:09:31 GMT  
		Size: 319.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b7a0feba03903601457304b334e447b1de41171e48793479d35710750bbcc1e`  
		Last Modified: Mon, 21 Sep 2026 23:09:35 GMT  
		Size: 132.4 MB (132433892 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8bcdeceabf7ccfd265723cdb1531564de1e34817e2b9e03562f510b2cc71c8b`  
		Last Modified: Mon, 21 Sep 2026 23:09:32 GMT  
		Size: 5.2 KB (5224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4.11` - unknown; unknown

```console
$ docker pull mysql@sha256:0bbad2373d19e677ce0889a0b1bf455407db45d1056348118a3d8ea5eecd5300
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15745235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a691fcc21a9392408c8c6eb84e565ce86b983ae8b77ddb33b52bc55a38539d4c`

```dockerfile
```

-	Layers:
	-	`sha256:caea9d9474fc86f869a0fec43a9a3d98e3b1762129ccca274b0ef61bb5191b7b`  
		Last Modified: Mon, 21 Sep 2026 23:09:30 GMT  
		Size: 15.7 MB (15711922 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e9b3097bd3b92cfd4d687c2635e2defe595475e6446ab7c0e10ce57964e0ff63`  
		Last Modified: Mon, 21 Sep 2026 23:09:29 GMT  
		Size: 33.3 KB (33313 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8.4.11` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:64a9d35fe6fed01159499be26c3279ac5ee16006c2ebb1f480d634bd5c61a053
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.7 MB (233714790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a2cc5e121fa5b68ec0965ea6d4f533d4c7f23b3216e788b1479857c377aae66`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 21 Sep 2026 23:04:02 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 21 Sep 2026 23:04:02 GMT
CMD ["/bin/bash"]
# Mon, 21 Sep 2026 23:07:01 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 21 Sep 2026 23:07:03 GMT
ENV GOSU_VERSION=1.19
# Mon, 21 Sep 2026 23:07:03 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 21 Sep 2026 23:07:41 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 21 Sep 2026 23:07:42 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 21 Sep 2026 23:07:42 GMT
ENV MYSQL_MAJOR=8.4
# Mon, 21 Sep 2026 23:07:42 GMT
ENV MYSQL_VERSION=8.4.11-1.el9
# Mon, 21 Sep 2026 23:07:42 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 21 Sep 2026 23:08:23 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 21 Sep 2026 23:08:23 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 21 Sep 2026 23:08:23 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Mon, 21 Sep 2026 23:09:14 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 21 Sep 2026 23:09:14 GMT
VOLUME [/var/lib/mysql]
# Mon, 21 Sep 2026 23:09:14 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 21 Sep 2026 23:09:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Sep 2026 23:09:14 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 21 Sep 2026 23:09:14 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b20e21573231a46ffd267a5791372e98726f9d11dd03deafc22fd5d18be5deea`  
		Last Modified: Mon, 21 Sep 2026 23:04:13 GMT  
		Size: 46.5 MB (46486872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3da5a8d5edbf0be97b026be4c1c5ddf681829d79a21674a06faf3d7b0411db3c`  
		Last Modified: Mon, 21 Sep 2026 23:09:45 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91aebaccc46af11c094b5617d0ac927d9fe9ecb520e73d562f698046bd567a58`  
		Last Modified: Mon, 21 Sep 2026 23:09:45 GMT  
		Size: 737.5 KB (737526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a13c4904cbaa4d99c2637362978292476b6246bb08f3eea6970c3ad537c7aa63`  
		Last Modified: Mon, 21 Sep 2026 23:09:45 GMT  
		Size: 5.8 MB (5824191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8830487c6aa83e51d4ec5d813ddcb7aadc27139b53a9c20cff738a239ccded23`  
		Last Modified: Mon, 21 Sep 2026 23:09:45 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:082a4e8d20c421b9493be90f943394eb8347dffed7492b0b2c1eeecbba7e9685`  
		Last Modified: Mon, 21 Sep 2026 23:09:46 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:276be347c5e90f570905e9b32c002a1846fca373a66a2bed819d8068be3b6c61`  
		Last Modified: Mon, 21 Sep 2026 23:09:48 GMT  
		Size: 49.9 MB (49861095 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:576b9d94acf9dbb846985c4348aed5e620982b9cbb7bf73f340879d0adf9caef`  
		Last Modified: Mon, 21 Sep 2026 23:09:46 GMT  
		Size: 322.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98b07351ed0da678fbac358eeb53d3dc1db2cd457c525d00aee96982dcd32d65`  
		Last Modified: Mon, 21 Sep 2026 23:09:50 GMT  
		Size: 130.8 MB (130795734 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fceb48821d6070d6bd33f0e45b4fa4a9d2b308b9761305269a322f3a7cf0a2b0`  
		Last Modified: Mon, 21 Sep 2026 23:09:47 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4.11` - unknown; unknown

```console
$ docker pull mysql@sha256:7f2d35e34c05b0d4a96ddf1e81523e0a42639473c4a9dd81155e8eed0b287fbb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15743903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c311f4813fd6c8df59f88adf9810e1f9da071bbeec67ecaa21e2587618ea707c`

```dockerfile
```

-	Layers:
	-	`sha256:be4375cfb849c1eee5441a989c24dd28f3e87ff538da62d5ab462a8e3480a1e9`  
		Last Modified: Mon, 21 Sep 2026 23:09:46 GMT  
		Size: 15.7 MB (15710322 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e9843a70e143654ae8f78a7f33f40f02292e8572cc58d96e3144cf9886083700`  
		Last Modified: Mon, 21 Sep 2026 23:09:45 GMT  
		Size: 33.6 KB (33581 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:8.4.11-oracle`

```console
$ docker pull mysql@sha256:0744ee5ef89ce6ccfa13de3e579fe6b9e27f93dd70da9c06d2c908b1b193fb8d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8.4.11-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:f015b98a954d6bb92c370d93f354b85f4bcea15642d9fb2975f841a00d400b65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.0 MB (239000036 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee241324a55f4651d8601d3dcd4a294c5d6c363c46263f7e8d542bbc9c0deacc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 21 Sep 2026 23:04:16 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 21 Sep 2026 23:04:16 GMT
CMD ["/bin/bash"]
# Mon, 21 Sep 2026 23:06:56 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 21 Sep 2026 23:06:58 GMT
ENV GOSU_VERSION=1.19
# Mon, 21 Sep 2026 23:06:58 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 21 Sep 2026 23:07:33 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 21 Sep 2026 23:07:34 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 21 Sep 2026 23:07:34 GMT
ENV MYSQL_MAJOR=8.4
# Mon, 21 Sep 2026 23:07:34 GMT
ENV MYSQL_VERSION=8.4.11-1.el9
# Mon, 21 Sep 2026 23:07:34 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 21 Sep 2026 23:08:12 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 21 Sep 2026 23:08:12 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 21 Sep 2026 23:08:12 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Mon, 21 Sep 2026 23:08:59 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 21 Sep 2026 23:08:59 GMT
VOLUME [/var/lib/mysql]
# Mon, 21 Sep 2026 23:08:59 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 21 Sep 2026 23:08:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Sep 2026 23:08:59 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 21 Sep 2026 23:08:59 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:6361e9307160bba9b9394334d9e85b77c416081e54c8ba8c6d0806dc0c4d5f4b`  
		Last Modified: Mon, 21 Sep 2026 23:04:27 GMT  
		Size: 47.9 MB (47941513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15f59927295129190c67d0046060cf7e283c88a4a307e494616dfa157a893cbd`  
		Last Modified: Mon, 21 Sep 2026 23:09:30 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:498923139fc5d8056a5758dbdcabb1d57b4d5da2d624d060d8bdaa71d1c790ff`  
		Last Modified: Mon, 21 Sep 2026 23:09:30 GMT  
		Size: 783.6 KB (783556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec3057ccf1dfd0ac315e9354cc4d4cf1ebfccf9601e980c8b4946a40f723208f`  
		Last Modified: Mon, 21 Sep 2026 23:09:30 GMT  
		Size: 6.2 MB (6197686 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e5c887f37fd8375a1f941b9559a99bedd107f645ca4d161800c58f968391a1e`  
		Last Modified: Mon, 21 Sep 2026 23:09:30 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07e2663acdf19b1155f06c372c3355cd4b47d9e718b2fab2330e51b5ca79153f`  
		Last Modified: Mon, 21 Sep 2026 23:09:31 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:897f02d4849771e86c2ec25e43d2c89ac37b37916c44d21c36ec2f1c7a54daa9`  
		Last Modified: Mon, 21 Sep 2026 23:09:33 GMT  
		Size: 51.6 MB (51634020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09f155b0d69c44586c08564ef9ab35d074c9aa453e14101930b87f0edcd591fe`  
		Last Modified: Mon, 21 Sep 2026 23:09:31 GMT  
		Size: 319.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b7a0feba03903601457304b334e447b1de41171e48793479d35710750bbcc1e`  
		Last Modified: Mon, 21 Sep 2026 23:09:35 GMT  
		Size: 132.4 MB (132433892 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8bcdeceabf7ccfd265723cdb1531564de1e34817e2b9e03562f510b2cc71c8b`  
		Last Modified: Mon, 21 Sep 2026 23:09:32 GMT  
		Size: 5.2 KB (5224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4.11-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:0bbad2373d19e677ce0889a0b1bf455407db45d1056348118a3d8ea5eecd5300
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15745235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a691fcc21a9392408c8c6eb84e565ce86b983ae8b77ddb33b52bc55a38539d4c`

```dockerfile
```

-	Layers:
	-	`sha256:caea9d9474fc86f869a0fec43a9a3d98e3b1762129ccca274b0ef61bb5191b7b`  
		Last Modified: Mon, 21 Sep 2026 23:09:30 GMT  
		Size: 15.7 MB (15711922 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e9b3097bd3b92cfd4d687c2635e2defe595475e6446ab7c0e10ce57964e0ff63`  
		Last Modified: Mon, 21 Sep 2026 23:09:29 GMT  
		Size: 33.3 KB (33313 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8.4.11-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:64a9d35fe6fed01159499be26c3279ac5ee16006c2ebb1f480d634bd5c61a053
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.7 MB (233714790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a2cc5e121fa5b68ec0965ea6d4f533d4c7f23b3216e788b1479857c377aae66`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 21 Sep 2026 23:04:02 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 21 Sep 2026 23:04:02 GMT
CMD ["/bin/bash"]
# Mon, 21 Sep 2026 23:07:01 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 21 Sep 2026 23:07:03 GMT
ENV GOSU_VERSION=1.19
# Mon, 21 Sep 2026 23:07:03 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 21 Sep 2026 23:07:41 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 21 Sep 2026 23:07:42 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 21 Sep 2026 23:07:42 GMT
ENV MYSQL_MAJOR=8.4
# Mon, 21 Sep 2026 23:07:42 GMT
ENV MYSQL_VERSION=8.4.11-1.el9
# Mon, 21 Sep 2026 23:07:42 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 21 Sep 2026 23:08:23 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 21 Sep 2026 23:08:23 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 21 Sep 2026 23:08:23 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Mon, 21 Sep 2026 23:09:14 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 21 Sep 2026 23:09:14 GMT
VOLUME [/var/lib/mysql]
# Mon, 21 Sep 2026 23:09:14 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 21 Sep 2026 23:09:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Sep 2026 23:09:14 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 21 Sep 2026 23:09:14 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b20e21573231a46ffd267a5791372e98726f9d11dd03deafc22fd5d18be5deea`  
		Last Modified: Mon, 21 Sep 2026 23:04:13 GMT  
		Size: 46.5 MB (46486872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3da5a8d5edbf0be97b026be4c1c5ddf681829d79a21674a06faf3d7b0411db3c`  
		Last Modified: Mon, 21 Sep 2026 23:09:45 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91aebaccc46af11c094b5617d0ac927d9fe9ecb520e73d562f698046bd567a58`  
		Last Modified: Mon, 21 Sep 2026 23:09:45 GMT  
		Size: 737.5 KB (737526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a13c4904cbaa4d99c2637362978292476b6246bb08f3eea6970c3ad537c7aa63`  
		Last Modified: Mon, 21 Sep 2026 23:09:45 GMT  
		Size: 5.8 MB (5824191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8830487c6aa83e51d4ec5d813ddcb7aadc27139b53a9c20cff738a239ccded23`  
		Last Modified: Mon, 21 Sep 2026 23:09:45 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:082a4e8d20c421b9493be90f943394eb8347dffed7492b0b2c1eeecbba7e9685`  
		Last Modified: Mon, 21 Sep 2026 23:09:46 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:276be347c5e90f570905e9b32c002a1846fca373a66a2bed819d8068be3b6c61`  
		Last Modified: Mon, 21 Sep 2026 23:09:48 GMT  
		Size: 49.9 MB (49861095 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:576b9d94acf9dbb846985c4348aed5e620982b9cbb7bf73f340879d0adf9caef`  
		Last Modified: Mon, 21 Sep 2026 23:09:46 GMT  
		Size: 322.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98b07351ed0da678fbac358eeb53d3dc1db2cd457c525d00aee96982dcd32d65`  
		Last Modified: Mon, 21 Sep 2026 23:09:50 GMT  
		Size: 130.8 MB (130795734 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fceb48821d6070d6bd33f0e45b4fa4a9d2b308b9761305269a322f3a7cf0a2b0`  
		Last Modified: Mon, 21 Sep 2026 23:09:47 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4.11-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:7f2d35e34c05b0d4a96ddf1e81523e0a42639473c4a9dd81155e8eed0b287fbb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15743903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c311f4813fd6c8df59f88adf9810e1f9da071bbeec67ecaa21e2587618ea707c`

```dockerfile
```

-	Layers:
	-	`sha256:be4375cfb849c1eee5441a989c24dd28f3e87ff538da62d5ab462a8e3480a1e9`  
		Last Modified: Mon, 21 Sep 2026 23:09:46 GMT  
		Size: 15.7 MB (15710322 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e9843a70e143654ae8f78a7f33f40f02292e8572cc58d96e3144cf9886083700`  
		Last Modified: Mon, 21 Sep 2026 23:09:45 GMT  
		Size: 33.6 KB (33581 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:8.4.11-oraclelinux9`

```console
$ docker pull mysql@sha256:0744ee5ef89ce6ccfa13de3e579fe6b9e27f93dd70da9c06d2c908b1b193fb8d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8.4.11-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:f015b98a954d6bb92c370d93f354b85f4bcea15642d9fb2975f841a00d400b65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.0 MB (239000036 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee241324a55f4651d8601d3dcd4a294c5d6c363c46263f7e8d542bbc9c0deacc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 21 Sep 2026 23:04:16 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 21 Sep 2026 23:04:16 GMT
CMD ["/bin/bash"]
# Mon, 21 Sep 2026 23:06:56 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 21 Sep 2026 23:06:58 GMT
ENV GOSU_VERSION=1.19
# Mon, 21 Sep 2026 23:06:58 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 21 Sep 2026 23:07:33 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 21 Sep 2026 23:07:34 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 21 Sep 2026 23:07:34 GMT
ENV MYSQL_MAJOR=8.4
# Mon, 21 Sep 2026 23:07:34 GMT
ENV MYSQL_VERSION=8.4.11-1.el9
# Mon, 21 Sep 2026 23:07:34 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 21 Sep 2026 23:08:12 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 21 Sep 2026 23:08:12 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 21 Sep 2026 23:08:12 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Mon, 21 Sep 2026 23:08:59 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 21 Sep 2026 23:08:59 GMT
VOLUME [/var/lib/mysql]
# Mon, 21 Sep 2026 23:08:59 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 21 Sep 2026 23:08:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Sep 2026 23:08:59 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 21 Sep 2026 23:08:59 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:6361e9307160bba9b9394334d9e85b77c416081e54c8ba8c6d0806dc0c4d5f4b`  
		Last Modified: Mon, 21 Sep 2026 23:04:27 GMT  
		Size: 47.9 MB (47941513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15f59927295129190c67d0046060cf7e283c88a4a307e494616dfa157a893cbd`  
		Last Modified: Mon, 21 Sep 2026 23:09:30 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:498923139fc5d8056a5758dbdcabb1d57b4d5da2d624d060d8bdaa71d1c790ff`  
		Last Modified: Mon, 21 Sep 2026 23:09:30 GMT  
		Size: 783.6 KB (783556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec3057ccf1dfd0ac315e9354cc4d4cf1ebfccf9601e980c8b4946a40f723208f`  
		Last Modified: Mon, 21 Sep 2026 23:09:30 GMT  
		Size: 6.2 MB (6197686 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e5c887f37fd8375a1f941b9559a99bedd107f645ca4d161800c58f968391a1e`  
		Last Modified: Mon, 21 Sep 2026 23:09:30 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07e2663acdf19b1155f06c372c3355cd4b47d9e718b2fab2330e51b5ca79153f`  
		Last Modified: Mon, 21 Sep 2026 23:09:31 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:897f02d4849771e86c2ec25e43d2c89ac37b37916c44d21c36ec2f1c7a54daa9`  
		Last Modified: Mon, 21 Sep 2026 23:09:33 GMT  
		Size: 51.6 MB (51634020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09f155b0d69c44586c08564ef9ab35d074c9aa453e14101930b87f0edcd591fe`  
		Last Modified: Mon, 21 Sep 2026 23:09:31 GMT  
		Size: 319.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b7a0feba03903601457304b334e447b1de41171e48793479d35710750bbcc1e`  
		Last Modified: Mon, 21 Sep 2026 23:09:35 GMT  
		Size: 132.4 MB (132433892 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8bcdeceabf7ccfd265723cdb1531564de1e34817e2b9e03562f510b2cc71c8b`  
		Last Modified: Mon, 21 Sep 2026 23:09:32 GMT  
		Size: 5.2 KB (5224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4.11-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:0bbad2373d19e677ce0889a0b1bf455407db45d1056348118a3d8ea5eecd5300
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15745235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a691fcc21a9392408c8c6eb84e565ce86b983ae8b77ddb33b52bc55a38539d4c`

```dockerfile
```

-	Layers:
	-	`sha256:caea9d9474fc86f869a0fec43a9a3d98e3b1762129ccca274b0ef61bb5191b7b`  
		Last Modified: Mon, 21 Sep 2026 23:09:30 GMT  
		Size: 15.7 MB (15711922 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e9b3097bd3b92cfd4d687c2635e2defe595475e6446ab7c0e10ce57964e0ff63`  
		Last Modified: Mon, 21 Sep 2026 23:09:29 GMT  
		Size: 33.3 KB (33313 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8.4.11-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:64a9d35fe6fed01159499be26c3279ac5ee16006c2ebb1f480d634bd5c61a053
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.7 MB (233714790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a2cc5e121fa5b68ec0965ea6d4f533d4c7f23b3216e788b1479857c377aae66`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 21 Sep 2026 23:04:02 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 21 Sep 2026 23:04:02 GMT
CMD ["/bin/bash"]
# Mon, 21 Sep 2026 23:07:01 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 21 Sep 2026 23:07:03 GMT
ENV GOSU_VERSION=1.19
# Mon, 21 Sep 2026 23:07:03 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 21 Sep 2026 23:07:41 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 21 Sep 2026 23:07:42 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 21 Sep 2026 23:07:42 GMT
ENV MYSQL_MAJOR=8.4
# Mon, 21 Sep 2026 23:07:42 GMT
ENV MYSQL_VERSION=8.4.11-1.el9
# Mon, 21 Sep 2026 23:07:42 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 21 Sep 2026 23:08:23 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 21 Sep 2026 23:08:23 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 21 Sep 2026 23:08:23 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Mon, 21 Sep 2026 23:09:14 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 21 Sep 2026 23:09:14 GMT
VOLUME [/var/lib/mysql]
# Mon, 21 Sep 2026 23:09:14 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 21 Sep 2026 23:09:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Sep 2026 23:09:14 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 21 Sep 2026 23:09:14 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b20e21573231a46ffd267a5791372e98726f9d11dd03deafc22fd5d18be5deea`  
		Last Modified: Mon, 21 Sep 2026 23:04:13 GMT  
		Size: 46.5 MB (46486872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3da5a8d5edbf0be97b026be4c1c5ddf681829d79a21674a06faf3d7b0411db3c`  
		Last Modified: Mon, 21 Sep 2026 23:09:45 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91aebaccc46af11c094b5617d0ac927d9fe9ecb520e73d562f698046bd567a58`  
		Last Modified: Mon, 21 Sep 2026 23:09:45 GMT  
		Size: 737.5 KB (737526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a13c4904cbaa4d99c2637362978292476b6246bb08f3eea6970c3ad537c7aa63`  
		Last Modified: Mon, 21 Sep 2026 23:09:45 GMT  
		Size: 5.8 MB (5824191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8830487c6aa83e51d4ec5d813ddcb7aadc27139b53a9c20cff738a239ccded23`  
		Last Modified: Mon, 21 Sep 2026 23:09:45 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:082a4e8d20c421b9493be90f943394eb8347dffed7492b0b2c1eeecbba7e9685`  
		Last Modified: Mon, 21 Sep 2026 23:09:46 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:276be347c5e90f570905e9b32c002a1846fca373a66a2bed819d8068be3b6c61`  
		Last Modified: Mon, 21 Sep 2026 23:09:48 GMT  
		Size: 49.9 MB (49861095 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:576b9d94acf9dbb846985c4348aed5e620982b9cbb7bf73f340879d0adf9caef`  
		Last Modified: Mon, 21 Sep 2026 23:09:46 GMT  
		Size: 322.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98b07351ed0da678fbac358eeb53d3dc1db2cd457c525d00aee96982dcd32d65`  
		Last Modified: Mon, 21 Sep 2026 23:09:50 GMT  
		Size: 130.8 MB (130795734 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fceb48821d6070d6bd33f0e45b4fa4a9d2b308b9761305269a322f3a7cf0a2b0`  
		Last Modified: Mon, 21 Sep 2026 23:09:47 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4.11-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:7f2d35e34c05b0d4a96ddf1e81523e0a42639473c4a9dd81155e8eed0b287fbb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15743903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c311f4813fd6c8df59f88adf9810e1f9da071bbeec67ecaa21e2587618ea707c`

```dockerfile
```

-	Layers:
	-	`sha256:be4375cfb849c1eee5441a989c24dd28f3e87ff538da62d5ab462a8e3480a1e9`  
		Last Modified: Mon, 21 Sep 2026 23:09:46 GMT  
		Size: 15.7 MB (15710322 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e9843a70e143654ae8f78a7f33f40f02292e8572cc58d96e3144cf9886083700`  
		Last Modified: Mon, 21 Sep 2026 23:09:45 GMT  
		Size: 33.6 KB (33581 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9`

```console
$ docker pull mysql@sha256:30a0abfa7b502a496e12339b54cd07aaa70363396dc4b8e8a72a92804a505cd6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9` - linux; amd64

```console
$ docker pull mysql@sha256:d55f5ba0270ae9824697021ed8a3b651f952f79be366fea1816795850a1f53d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.9 MB (270918920 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ab50f3dea0edf3235cdac735e865e5778191d8eac4f579a068cc6f6233dd842`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 21 Sep 2026 23:04:16 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 21 Sep 2026 23:04:16 GMT
CMD ["/bin/bash"]
# Mon, 21 Sep 2026 23:06:55 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 21 Sep 2026 23:06:57 GMT
ENV GOSU_VERSION=1.19
# Mon, 21 Sep 2026 23:06:57 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 21 Sep 2026 23:07:32 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 21 Sep 2026 23:07:33 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 21 Sep 2026 23:07:33 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 21 Sep 2026 23:07:33 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Mon, 21 Sep 2026 23:07:33 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 21 Sep 2026 23:08:12 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 21 Sep 2026 23:08:12 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 21 Sep 2026 23:08:12 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 21 Sep 2026 23:09:00 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 21 Sep 2026 23:09:00 GMT
VOLUME [/var/lib/mysql]
# Mon, 21 Sep 2026 23:09:01 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 21 Sep 2026 23:09:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Sep 2026 23:09:01 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 21 Sep 2026 23:09:01 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:6361e9307160bba9b9394334d9e85b77c416081e54c8ba8c6d0806dc0c4d5f4b`  
		Last Modified: Mon, 21 Sep 2026 23:04:27 GMT  
		Size: 47.9 MB (47941513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3534c258aabac4c46b37947f2089c39baa310568391f96404233e4c9df894e3a`  
		Last Modified: Mon, 21 Sep 2026 23:09:29 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a7fe1a85aa5548d42fcb8c335f7444be477ed2e9c73b20c83e191abfc71e61e`  
		Last Modified: Mon, 21 Sep 2026 23:09:29 GMT  
		Size: 783.5 KB (783541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d3079708ede27d8bc1e8917a7a57d22a4f12dd52805a1edb06d88246f3e8d54`  
		Last Modified: Mon, 21 Sep 2026 23:09:36 GMT  
		Size: 6.2 MB (6197636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10425730d138d643e322a969dcad430d494d973f302c01a9b39d55264ab96898`  
		Last Modified: Mon, 21 Sep 2026 23:09:36 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:409c6fcbb48db28ec5f7e2bad1daadcf942c47000679bf160257ace550c1c8fd`  
		Last Modified: Mon, 21 Sep 2026 23:09:36 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12209f6c36967e427eb69bb9e0556ec90e9b890417c09aa5c6d1a52d639a9df4`  
		Last Modified: Mon, 21 Sep 2026 23:09:38 GMT  
		Size: 57.1 MB (57052021 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff5be3dcfc23f93bb57d41cac2d92deed02cfb67b6a8e8cdebd64b90cdda3711`  
		Last Modified: Mon, 21 Sep 2026 23:09:37 GMT  
		Size: 319.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:628e0550c24646e9b5f9d7f5b8b8b143e864d507b15a771bfa67dd6118dcd62c`  
		Last Modified: Mon, 21 Sep 2026 23:09:41 GMT  
		Size: 158.9 MB (158934845 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee6d08f141afbb57102bbc8cc155bfb9ef716ad1088815cee845351c665a0691`  
		Last Modified: Mon, 21 Sep 2026 23:09:38 GMT  
		Size: 5.2 KB (5220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9` - unknown; unknown

```console
$ docker pull mysql@sha256:75915e8bd520e25e7b0cc0c5bd1949ed9f8d974cd8e134298f67f57ba99245cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfd59e8115ba74a266ce7031414aabbfa445a51dfbc3e31316078083516796b6`

```dockerfile
```

-	Layers:
	-	`sha256:8b57eaf4e4d1086272271f0f9c6bc9cd24e4105bf006c9236220557129daded1`  
		Last Modified: Mon, 21 Sep 2026 23:09:37 GMT  
		Size: 16.8 MB (16799187 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:61d952e276ca7d14dbac94faa133a341a5734c620503b69eea04efec715380c7`  
		Last Modified: Mon, 21 Sep 2026 23:09:36 GMT  
		Size: 34.2 KB (34208 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:98b9662b31ea8c579318cc48951c6218a7f5c0c1cce6542f9f8a52955ce46f3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.4 MB (267394110 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32ee0ade16ddb58a8ee1e61c2535443abfcca0609797ccf1f0880f79fac867c2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 21 Sep 2026 23:04:02 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 21 Sep 2026 23:04:02 GMT
CMD ["/bin/bash"]
# Mon, 21 Sep 2026 23:07:01 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 21 Sep 2026 23:07:03 GMT
ENV GOSU_VERSION=1.19
# Mon, 21 Sep 2026 23:07:03 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 21 Sep 2026 23:07:41 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 21 Sep 2026 23:07:42 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 21 Sep 2026 23:07:42 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 21 Sep 2026 23:07:42 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Mon, 21 Sep 2026 23:07:42 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 21 Sep 2026 23:08:24 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 21 Sep 2026 23:08:24 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 21 Sep 2026 23:08:24 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 21 Sep 2026 23:09:15 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 21 Sep 2026 23:09:15 GMT
VOLUME [/var/lib/mysql]
# Mon, 21 Sep 2026 23:09:15 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 21 Sep 2026 23:09:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Sep 2026 23:09:15 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 21 Sep 2026 23:09:15 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b20e21573231a46ffd267a5791372e98726f9d11dd03deafc22fd5d18be5deea`  
		Last Modified: Mon, 21 Sep 2026 23:04:13 GMT  
		Size: 46.5 MB (46486872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3da5a8d5edbf0be97b026be4c1c5ddf681829d79a21674a06faf3d7b0411db3c`  
		Last Modified: Mon, 21 Sep 2026 23:09:45 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91aebaccc46af11c094b5617d0ac927d9fe9ecb520e73d562f698046bd567a58`  
		Last Modified: Mon, 21 Sep 2026 23:09:45 GMT  
		Size: 737.5 KB (737526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6a8b3fb25b368bfa25e5b63cfb765b1fd81c409f51a970d921915f720ec6c3b`  
		Last Modified: Mon, 21 Sep 2026 23:09:51 GMT  
		Size: 5.8 MB (5824044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8830487c6aa83e51d4ec5d813ddcb7aadc27139b53a9c20cff738a239ccded23`  
		Last Modified: Mon, 21 Sep 2026 23:09:45 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f4fea18d212f55b7f04a580dec0bfa6d9e011bdbb1f1525bc36ab71f2af1b6e`  
		Last Modified: Mon, 21 Sep 2026 23:09:51 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ca075ba196d95014ed9363176ecfe7793c5fc753fdd272155d6a6d2c4e348f0`  
		Last Modified: Mon, 21 Sep 2026 23:09:53 GMT  
		Size: 57.1 MB (57119142 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc4057ee530b0939143b17785a7ac14469b157321f8748b1be4f238e39ab7e57`  
		Last Modified: Mon, 21 Sep 2026 23:09:51 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:612c44fe0ce91ac2ddfa47a3f63948378ce63f1f6dcbe4e7f07df108ec3872b4`  
		Last Modified: Mon, 21 Sep 2026 23:09:55 GMT  
		Size: 157.2 MB (157217157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a705701f198b677e0bb69faec85e8b07571c056a68710b35b115db2aa538060c`  
		Last Modified: Mon, 21 Sep 2026 23:09:52 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9` - unknown; unknown

```console
$ docker pull mysql@sha256:f3c05898ce2a1651199fbea961c95f5188f0f602faa33f6459f2b5317c7d22c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16832136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b121c5036bb351473b555cb90be2302ca761b2337bc18e2c5aab027a5eb3324`

```dockerfile
```

-	Layers:
	-	`sha256:8a9bac6bfa8f8c3291e2e42162deae5205a31bb7f5cd7165142b402d20d92fa1`  
		Last Modified: Mon, 21 Sep 2026 23:09:51 GMT  
		Size: 16.8 MB (16797623 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:662ac4165e92d11ed035d6ab8fe449b5e0e9de7d7b53f9f91dc37d0916da12cf`  
		Last Modified: Mon, 21 Sep 2026 23:09:51 GMT  
		Size: 34.5 KB (34513 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9-oracle`

```console
$ docker pull mysql@sha256:30a0abfa7b502a496e12339b54cd07aaa70363396dc4b8e8a72a92804a505cd6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:d55f5ba0270ae9824697021ed8a3b651f952f79be366fea1816795850a1f53d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.9 MB (270918920 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ab50f3dea0edf3235cdac735e865e5778191d8eac4f579a068cc6f6233dd842`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 21 Sep 2026 23:04:16 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 21 Sep 2026 23:04:16 GMT
CMD ["/bin/bash"]
# Mon, 21 Sep 2026 23:06:55 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 21 Sep 2026 23:06:57 GMT
ENV GOSU_VERSION=1.19
# Mon, 21 Sep 2026 23:06:57 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 21 Sep 2026 23:07:32 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 21 Sep 2026 23:07:33 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 21 Sep 2026 23:07:33 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 21 Sep 2026 23:07:33 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Mon, 21 Sep 2026 23:07:33 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 21 Sep 2026 23:08:12 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 21 Sep 2026 23:08:12 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 21 Sep 2026 23:08:12 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 21 Sep 2026 23:09:00 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 21 Sep 2026 23:09:00 GMT
VOLUME [/var/lib/mysql]
# Mon, 21 Sep 2026 23:09:01 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 21 Sep 2026 23:09:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Sep 2026 23:09:01 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 21 Sep 2026 23:09:01 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:6361e9307160bba9b9394334d9e85b77c416081e54c8ba8c6d0806dc0c4d5f4b`  
		Last Modified: Mon, 21 Sep 2026 23:04:27 GMT  
		Size: 47.9 MB (47941513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3534c258aabac4c46b37947f2089c39baa310568391f96404233e4c9df894e3a`  
		Last Modified: Mon, 21 Sep 2026 23:09:29 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a7fe1a85aa5548d42fcb8c335f7444be477ed2e9c73b20c83e191abfc71e61e`  
		Last Modified: Mon, 21 Sep 2026 23:09:29 GMT  
		Size: 783.5 KB (783541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d3079708ede27d8bc1e8917a7a57d22a4f12dd52805a1edb06d88246f3e8d54`  
		Last Modified: Mon, 21 Sep 2026 23:09:36 GMT  
		Size: 6.2 MB (6197636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10425730d138d643e322a969dcad430d494d973f302c01a9b39d55264ab96898`  
		Last Modified: Mon, 21 Sep 2026 23:09:36 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:409c6fcbb48db28ec5f7e2bad1daadcf942c47000679bf160257ace550c1c8fd`  
		Last Modified: Mon, 21 Sep 2026 23:09:36 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12209f6c36967e427eb69bb9e0556ec90e9b890417c09aa5c6d1a52d639a9df4`  
		Last Modified: Mon, 21 Sep 2026 23:09:38 GMT  
		Size: 57.1 MB (57052021 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff5be3dcfc23f93bb57d41cac2d92deed02cfb67b6a8e8cdebd64b90cdda3711`  
		Last Modified: Mon, 21 Sep 2026 23:09:37 GMT  
		Size: 319.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:628e0550c24646e9b5f9d7f5b8b8b143e864d507b15a771bfa67dd6118dcd62c`  
		Last Modified: Mon, 21 Sep 2026 23:09:41 GMT  
		Size: 158.9 MB (158934845 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee6d08f141afbb57102bbc8cc155bfb9ef716ad1088815cee845351c665a0691`  
		Last Modified: Mon, 21 Sep 2026 23:09:38 GMT  
		Size: 5.2 KB (5220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:75915e8bd520e25e7b0cc0c5bd1949ed9f8d974cd8e134298f67f57ba99245cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfd59e8115ba74a266ce7031414aabbfa445a51dfbc3e31316078083516796b6`

```dockerfile
```

-	Layers:
	-	`sha256:8b57eaf4e4d1086272271f0f9c6bc9cd24e4105bf006c9236220557129daded1`  
		Last Modified: Mon, 21 Sep 2026 23:09:37 GMT  
		Size: 16.8 MB (16799187 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:61d952e276ca7d14dbac94faa133a341a5734c620503b69eea04efec715380c7`  
		Last Modified: Mon, 21 Sep 2026 23:09:36 GMT  
		Size: 34.2 KB (34208 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:98b9662b31ea8c579318cc48951c6218a7f5c0c1cce6542f9f8a52955ce46f3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.4 MB (267394110 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32ee0ade16ddb58a8ee1e61c2535443abfcca0609797ccf1f0880f79fac867c2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 21 Sep 2026 23:04:02 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 21 Sep 2026 23:04:02 GMT
CMD ["/bin/bash"]
# Mon, 21 Sep 2026 23:07:01 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 21 Sep 2026 23:07:03 GMT
ENV GOSU_VERSION=1.19
# Mon, 21 Sep 2026 23:07:03 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 21 Sep 2026 23:07:41 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 21 Sep 2026 23:07:42 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 21 Sep 2026 23:07:42 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 21 Sep 2026 23:07:42 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Mon, 21 Sep 2026 23:07:42 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 21 Sep 2026 23:08:24 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 21 Sep 2026 23:08:24 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 21 Sep 2026 23:08:24 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 21 Sep 2026 23:09:15 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 21 Sep 2026 23:09:15 GMT
VOLUME [/var/lib/mysql]
# Mon, 21 Sep 2026 23:09:15 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 21 Sep 2026 23:09:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Sep 2026 23:09:15 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 21 Sep 2026 23:09:15 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b20e21573231a46ffd267a5791372e98726f9d11dd03deafc22fd5d18be5deea`  
		Last Modified: Mon, 21 Sep 2026 23:04:13 GMT  
		Size: 46.5 MB (46486872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3da5a8d5edbf0be97b026be4c1c5ddf681829d79a21674a06faf3d7b0411db3c`  
		Last Modified: Mon, 21 Sep 2026 23:09:45 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91aebaccc46af11c094b5617d0ac927d9fe9ecb520e73d562f698046bd567a58`  
		Last Modified: Mon, 21 Sep 2026 23:09:45 GMT  
		Size: 737.5 KB (737526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6a8b3fb25b368bfa25e5b63cfb765b1fd81c409f51a970d921915f720ec6c3b`  
		Last Modified: Mon, 21 Sep 2026 23:09:51 GMT  
		Size: 5.8 MB (5824044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8830487c6aa83e51d4ec5d813ddcb7aadc27139b53a9c20cff738a239ccded23`  
		Last Modified: Mon, 21 Sep 2026 23:09:45 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f4fea18d212f55b7f04a580dec0bfa6d9e011bdbb1f1525bc36ab71f2af1b6e`  
		Last Modified: Mon, 21 Sep 2026 23:09:51 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ca075ba196d95014ed9363176ecfe7793c5fc753fdd272155d6a6d2c4e348f0`  
		Last Modified: Mon, 21 Sep 2026 23:09:53 GMT  
		Size: 57.1 MB (57119142 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc4057ee530b0939143b17785a7ac14469b157321f8748b1be4f238e39ab7e57`  
		Last Modified: Mon, 21 Sep 2026 23:09:51 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:612c44fe0ce91ac2ddfa47a3f63948378ce63f1f6dcbe4e7f07df108ec3872b4`  
		Last Modified: Mon, 21 Sep 2026 23:09:55 GMT  
		Size: 157.2 MB (157217157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a705701f198b677e0bb69faec85e8b07571c056a68710b35b115db2aa538060c`  
		Last Modified: Mon, 21 Sep 2026 23:09:52 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:f3c05898ce2a1651199fbea961c95f5188f0f602faa33f6459f2b5317c7d22c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16832136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b121c5036bb351473b555cb90be2302ca761b2337bc18e2c5aab027a5eb3324`

```dockerfile
```

-	Layers:
	-	`sha256:8a9bac6bfa8f8c3291e2e42162deae5205a31bb7f5cd7165142b402d20d92fa1`  
		Last Modified: Mon, 21 Sep 2026 23:09:51 GMT  
		Size: 16.8 MB (16797623 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:662ac4165e92d11ed035d6ab8fe449b5e0e9de7d7b53f9f91dc37d0916da12cf`  
		Last Modified: Mon, 21 Sep 2026 23:09:51 GMT  
		Size: 34.5 KB (34513 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9-oraclelinux9`

```console
$ docker pull mysql@sha256:30a0abfa7b502a496e12339b54cd07aaa70363396dc4b8e8a72a92804a505cd6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:d55f5ba0270ae9824697021ed8a3b651f952f79be366fea1816795850a1f53d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.9 MB (270918920 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ab50f3dea0edf3235cdac735e865e5778191d8eac4f579a068cc6f6233dd842`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 21 Sep 2026 23:04:16 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 21 Sep 2026 23:04:16 GMT
CMD ["/bin/bash"]
# Mon, 21 Sep 2026 23:06:55 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 21 Sep 2026 23:06:57 GMT
ENV GOSU_VERSION=1.19
# Mon, 21 Sep 2026 23:06:57 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 21 Sep 2026 23:07:32 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 21 Sep 2026 23:07:33 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 21 Sep 2026 23:07:33 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 21 Sep 2026 23:07:33 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Mon, 21 Sep 2026 23:07:33 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 21 Sep 2026 23:08:12 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 21 Sep 2026 23:08:12 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 21 Sep 2026 23:08:12 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 21 Sep 2026 23:09:00 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 21 Sep 2026 23:09:00 GMT
VOLUME [/var/lib/mysql]
# Mon, 21 Sep 2026 23:09:01 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 21 Sep 2026 23:09:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Sep 2026 23:09:01 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 21 Sep 2026 23:09:01 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:6361e9307160bba9b9394334d9e85b77c416081e54c8ba8c6d0806dc0c4d5f4b`  
		Last Modified: Mon, 21 Sep 2026 23:04:27 GMT  
		Size: 47.9 MB (47941513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3534c258aabac4c46b37947f2089c39baa310568391f96404233e4c9df894e3a`  
		Last Modified: Mon, 21 Sep 2026 23:09:29 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a7fe1a85aa5548d42fcb8c335f7444be477ed2e9c73b20c83e191abfc71e61e`  
		Last Modified: Mon, 21 Sep 2026 23:09:29 GMT  
		Size: 783.5 KB (783541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d3079708ede27d8bc1e8917a7a57d22a4f12dd52805a1edb06d88246f3e8d54`  
		Last Modified: Mon, 21 Sep 2026 23:09:36 GMT  
		Size: 6.2 MB (6197636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10425730d138d643e322a969dcad430d494d973f302c01a9b39d55264ab96898`  
		Last Modified: Mon, 21 Sep 2026 23:09:36 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:409c6fcbb48db28ec5f7e2bad1daadcf942c47000679bf160257ace550c1c8fd`  
		Last Modified: Mon, 21 Sep 2026 23:09:36 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12209f6c36967e427eb69bb9e0556ec90e9b890417c09aa5c6d1a52d639a9df4`  
		Last Modified: Mon, 21 Sep 2026 23:09:38 GMT  
		Size: 57.1 MB (57052021 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff5be3dcfc23f93bb57d41cac2d92deed02cfb67b6a8e8cdebd64b90cdda3711`  
		Last Modified: Mon, 21 Sep 2026 23:09:37 GMT  
		Size: 319.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:628e0550c24646e9b5f9d7f5b8b8b143e864d507b15a771bfa67dd6118dcd62c`  
		Last Modified: Mon, 21 Sep 2026 23:09:41 GMT  
		Size: 158.9 MB (158934845 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee6d08f141afbb57102bbc8cc155bfb9ef716ad1088815cee845351c665a0691`  
		Last Modified: Mon, 21 Sep 2026 23:09:38 GMT  
		Size: 5.2 KB (5220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:75915e8bd520e25e7b0cc0c5bd1949ed9f8d974cd8e134298f67f57ba99245cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfd59e8115ba74a266ce7031414aabbfa445a51dfbc3e31316078083516796b6`

```dockerfile
```

-	Layers:
	-	`sha256:8b57eaf4e4d1086272271f0f9c6bc9cd24e4105bf006c9236220557129daded1`  
		Last Modified: Mon, 21 Sep 2026 23:09:37 GMT  
		Size: 16.8 MB (16799187 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:61d952e276ca7d14dbac94faa133a341a5734c620503b69eea04efec715380c7`  
		Last Modified: Mon, 21 Sep 2026 23:09:36 GMT  
		Size: 34.2 KB (34208 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:98b9662b31ea8c579318cc48951c6218a7f5c0c1cce6542f9f8a52955ce46f3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.4 MB (267394110 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32ee0ade16ddb58a8ee1e61c2535443abfcca0609797ccf1f0880f79fac867c2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 21 Sep 2026 23:04:02 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 21 Sep 2026 23:04:02 GMT
CMD ["/bin/bash"]
# Mon, 21 Sep 2026 23:07:01 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 21 Sep 2026 23:07:03 GMT
ENV GOSU_VERSION=1.19
# Mon, 21 Sep 2026 23:07:03 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 21 Sep 2026 23:07:41 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 21 Sep 2026 23:07:42 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 21 Sep 2026 23:07:42 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 21 Sep 2026 23:07:42 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Mon, 21 Sep 2026 23:07:42 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 21 Sep 2026 23:08:24 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 21 Sep 2026 23:08:24 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 21 Sep 2026 23:08:24 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 21 Sep 2026 23:09:15 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 21 Sep 2026 23:09:15 GMT
VOLUME [/var/lib/mysql]
# Mon, 21 Sep 2026 23:09:15 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 21 Sep 2026 23:09:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Sep 2026 23:09:15 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 21 Sep 2026 23:09:15 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b20e21573231a46ffd267a5791372e98726f9d11dd03deafc22fd5d18be5deea`  
		Last Modified: Mon, 21 Sep 2026 23:04:13 GMT  
		Size: 46.5 MB (46486872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3da5a8d5edbf0be97b026be4c1c5ddf681829d79a21674a06faf3d7b0411db3c`  
		Last Modified: Mon, 21 Sep 2026 23:09:45 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91aebaccc46af11c094b5617d0ac927d9fe9ecb520e73d562f698046bd567a58`  
		Last Modified: Mon, 21 Sep 2026 23:09:45 GMT  
		Size: 737.5 KB (737526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6a8b3fb25b368bfa25e5b63cfb765b1fd81c409f51a970d921915f720ec6c3b`  
		Last Modified: Mon, 21 Sep 2026 23:09:51 GMT  
		Size: 5.8 MB (5824044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8830487c6aa83e51d4ec5d813ddcb7aadc27139b53a9c20cff738a239ccded23`  
		Last Modified: Mon, 21 Sep 2026 23:09:45 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f4fea18d212f55b7f04a580dec0bfa6d9e011bdbb1f1525bc36ab71f2af1b6e`  
		Last Modified: Mon, 21 Sep 2026 23:09:51 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ca075ba196d95014ed9363176ecfe7793c5fc753fdd272155d6a6d2c4e348f0`  
		Last Modified: Mon, 21 Sep 2026 23:09:53 GMT  
		Size: 57.1 MB (57119142 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc4057ee530b0939143b17785a7ac14469b157321f8748b1be4f238e39ab7e57`  
		Last Modified: Mon, 21 Sep 2026 23:09:51 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:612c44fe0ce91ac2ddfa47a3f63948378ce63f1f6dcbe4e7f07df108ec3872b4`  
		Last Modified: Mon, 21 Sep 2026 23:09:55 GMT  
		Size: 157.2 MB (157217157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a705701f198b677e0bb69faec85e8b07571c056a68710b35b115db2aa538060c`  
		Last Modified: Mon, 21 Sep 2026 23:09:52 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:f3c05898ce2a1651199fbea961c95f5188f0f602faa33f6459f2b5317c7d22c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16832136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b121c5036bb351473b555cb90be2302ca761b2337bc18e2c5aab027a5eb3324`

```dockerfile
```

-	Layers:
	-	`sha256:8a9bac6bfa8f8c3291e2e42162deae5205a31bb7f5cd7165142b402d20d92fa1`  
		Last Modified: Mon, 21 Sep 2026 23:09:51 GMT  
		Size: 16.8 MB (16797623 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:662ac4165e92d11ed035d6ab8fe449b5e0e9de7d7b53f9f91dc37d0916da12cf`  
		Last Modified: Mon, 21 Sep 2026 23:09:51 GMT  
		Size: 34.5 KB (34513 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9.7`

```console
$ docker pull mysql@sha256:30a0abfa7b502a496e12339b54cd07aaa70363396dc4b8e8a72a92804a505cd6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9.7` - linux; amd64

```console
$ docker pull mysql@sha256:d55f5ba0270ae9824697021ed8a3b651f952f79be366fea1816795850a1f53d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.9 MB (270918920 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ab50f3dea0edf3235cdac735e865e5778191d8eac4f579a068cc6f6233dd842`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 21 Sep 2026 23:04:16 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 21 Sep 2026 23:04:16 GMT
CMD ["/bin/bash"]
# Mon, 21 Sep 2026 23:06:55 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 21 Sep 2026 23:06:57 GMT
ENV GOSU_VERSION=1.19
# Mon, 21 Sep 2026 23:06:57 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 21 Sep 2026 23:07:32 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 21 Sep 2026 23:07:33 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 21 Sep 2026 23:07:33 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 21 Sep 2026 23:07:33 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Mon, 21 Sep 2026 23:07:33 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 21 Sep 2026 23:08:12 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 21 Sep 2026 23:08:12 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 21 Sep 2026 23:08:12 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 21 Sep 2026 23:09:00 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 21 Sep 2026 23:09:00 GMT
VOLUME [/var/lib/mysql]
# Mon, 21 Sep 2026 23:09:01 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 21 Sep 2026 23:09:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Sep 2026 23:09:01 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 21 Sep 2026 23:09:01 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:6361e9307160bba9b9394334d9e85b77c416081e54c8ba8c6d0806dc0c4d5f4b`  
		Last Modified: Mon, 21 Sep 2026 23:04:27 GMT  
		Size: 47.9 MB (47941513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3534c258aabac4c46b37947f2089c39baa310568391f96404233e4c9df894e3a`  
		Last Modified: Mon, 21 Sep 2026 23:09:29 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a7fe1a85aa5548d42fcb8c335f7444be477ed2e9c73b20c83e191abfc71e61e`  
		Last Modified: Mon, 21 Sep 2026 23:09:29 GMT  
		Size: 783.5 KB (783541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d3079708ede27d8bc1e8917a7a57d22a4f12dd52805a1edb06d88246f3e8d54`  
		Last Modified: Mon, 21 Sep 2026 23:09:36 GMT  
		Size: 6.2 MB (6197636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10425730d138d643e322a969dcad430d494d973f302c01a9b39d55264ab96898`  
		Last Modified: Mon, 21 Sep 2026 23:09:36 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:409c6fcbb48db28ec5f7e2bad1daadcf942c47000679bf160257ace550c1c8fd`  
		Last Modified: Mon, 21 Sep 2026 23:09:36 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12209f6c36967e427eb69bb9e0556ec90e9b890417c09aa5c6d1a52d639a9df4`  
		Last Modified: Mon, 21 Sep 2026 23:09:38 GMT  
		Size: 57.1 MB (57052021 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff5be3dcfc23f93bb57d41cac2d92deed02cfb67b6a8e8cdebd64b90cdda3711`  
		Last Modified: Mon, 21 Sep 2026 23:09:37 GMT  
		Size: 319.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:628e0550c24646e9b5f9d7f5b8b8b143e864d507b15a771bfa67dd6118dcd62c`  
		Last Modified: Mon, 21 Sep 2026 23:09:41 GMT  
		Size: 158.9 MB (158934845 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee6d08f141afbb57102bbc8cc155bfb9ef716ad1088815cee845351c665a0691`  
		Last Modified: Mon, 21 Sep 2026 23:09:38 GMT  
		Size: 5.2 KB (5220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7` - unknown; unknown

```console
$ docker pull mysql@sha256:75915e8bd520e25e7b0cc0c5bd1949ed9f8d974cd8e134298f67f57ba99245cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfd59e8115ba74a266ce7031414aabbfa445a51dfbc3e31316078083516796b6`

```dockerfile
```

-	Layers:
	-	`sha256:8b57eaf4e4d1086272271f0f9c6bc9cd24e4105bf006c9236220557129daded1`  
		Last Modified: Mon, 21 Sep 2026 23:09:37 GMT  
		Size: 16.8 MB (16799187 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:61d952e276ca7d14dbac94faa133a341a5734c620503b69eea04efec715380c7`  
		Last Modified: Mon, 21 Sep 2026 23:09:36 GMT  
		Size: 34.2 KB (34208 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9.7` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:98b9662b31ea8c579318cc48951c6218a7f5c0c1cce6542f9f8a52955ce46f3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.4 MB (267394110 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32ee0ade16ddb58a8ee1e61c2535443abfcca0609797ccf1f0880f79fac867c2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 21 Sep 2026 23:04:02 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 21 Sep 2026 23:04:02 GMT
CMD ["/bin/bash"]
# Mon, 21 Sep 2026 23:07:01 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 21 Sep 2026 23:07:03 GMT
ENV GOSU_VERSION=1.19
# Mon, 21 Sep 2026 23:07:03 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 21 Sep 2026 23:07:41 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 21 Sep 2026 23:07:42 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 21 Sep 2026 23:07:42 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 21 Sep 2026 23:07:42 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Mon, 21 Sep 2026 23:07:42 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 21 Sep 2026 23:08:24 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 21 Sep 2026 23:08:24 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 21 Sep 2026 23:08:24 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 21 Sep 2026 23:09:15 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 21 Sep 2026 23:09:15 GMT
VOLUME [/var/lib/mysql]
# Mon, 21 Sep 2026 23:09:15 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 21 Sep 2026 23:09:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Sep 2026 23:09:15 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 21 Sep 2026 23:09:15 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b20e21573231a46ffd267a5791372e98726f9d11dd03deafc22fd5d18be5deea`  
		Last Modified: Mon, 21 Sep 2026 23:04:13 GMT  
		Size: 46.5 MB (46486872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3da5a8d5edbf0be97b026be4c1c5ddf681829d79a21674a06faf3d7b0411db3c`  
		Last Modified: Mon, 21 Sep 2026 23:09:45 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91aebaccc46af11c094b5617d0ac927d9fe9ecb520e73d562f698046bd567a58`  
		Last Modified: Mon, 21 Sep 2026 23:09:45 GMT  
		Size: 737.5 KB (737526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6a8b3fb25b368bfa25e5b63cfb765b1fd81c409f51a970d921915f720ec6c3b`  
		Last Modified: Mon, 21 Sep 2026 23:09:51 GMT  
		Size: 5.8 MB (5824044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8830487c6aa83e51d4ec5d813ddcb7aadc27139b53a9c20cff738a239ccded23`  
		Last Modified: Mon, 21 Sep 2026 23:09:45 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f4fea18d212f55b7f04a580dec0bfa6d9e011bdbb1f1525bc36ab71f2af1b6e`  
		Last Modified: Mon, 21 Sep 2026 23:09:51 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ca075ba196d95014ed9363176ecfe7793c5fc753fdd272155d6a6d2c4e348f0`  
		Last Modified: Mon, 21 Sep 2026 23:09:53 GMT  
		Size: 57.1 MB (57119142 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc4057ee530b0939143b17785a7ac14469b157321f8748b1be4f238e39ab7e57`  
		Last Modified: Mon, 21 Sep 2026 23:09:51 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:612c44fe0ce91ac2ddfa47a3f63948378ce63f1f6dcbe4e7f07df108ec3872b4`  
		Last Modified: Mon, 21 Sep 2026 23:09:55 GMT  
		Size: 157.2 MB (157217157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a705701f198b677e0bb69faec85e8b07571c056a68710b35b115db2aa538060c`  
		Last Modified: Mon, 21 Sep 2026 23:09:52 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7` - unknown; unknown

```console
$ docker pull mysql@sha256:f3c05898ce2a1651199fbea961c95f5188f0f602faa33f6459f2b5317c7d22c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16832136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b121c5036bb351473b555cb90be2302ca761b2337bc18e2c5aab027a5eb3324`

```dockerfile
```

-	Layers:
	-	`sha256:8a9bac6bfa8f8c3291e2e42162deae5205a31bb7f5cd7165142b402d20d92fa1`  
		Last Modified: Mon, 21 Sep 2026 23:09:51 GMT  
		Size: 16.8 MB (16797623 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:662ac4165e92d11ed035d6ab8fe449b5e0e9de7d7b53f9f91dc37d0916da12cf`  
		Last Modified: Mon, 21 Sep 2026 23:09:51 GMT  
		Size: 34.5 KB (34513 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9.7-oracle`

```console
$ docker pull mysql@sha256:30a0abfa7b502a496e12339b54cd07aaa70363396dc4b8e8a72a92804a505cd6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9.7-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:d55f5ba0270ae9824697021ed8a3b651f952f79be366fea1816795850a1f53d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.9 MB (270918920 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ab50f3dea0edf3235cdac735e865e5778191d8eac4f579a068cc6f6233dd842`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 21 Sep 2026 23:04:16 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 21 Sep 2026 23:04:16 GMT
CMD ["/bin/bash"]
# Mon, 21 Sep 2026 23:06:55 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 21 Sep 2026 23:06:57 GMT
ENV GOSU_VERSION=1.19
# Mon, 21 Sep 2026 23:06:57 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 21 Sep 2026 23:07:32 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 21 Sep 2026 23:07:33 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 21 Sep 2026 23:07:33 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 21 Sep 2026 23:07:33 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Mon, 21 Sep 2026 23:07:33 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 21 Sep 2026 23:08:12 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 21 Sep 2026 23:08:12 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 21 Sep 2026 23:08:12 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 21 Sep 2026 23:09:00 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 21 Sep 2026 23:09:00 GMT
VOLUME [/var/lib/mysql]
# Mon, 21 Sep 2026 23:09:01 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 21 Sep 2026 23:09:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Sep 2026 23:09:01 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 21 Sep 2026 23:09:01 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:6361e9307160bba9b9394334d9e85b77c416081e54c8ba8c6d0806dc0c4d5f4b`  
		Last Modified: Mon, 21 Sep 2026 23:04:27 GMT  
		Size: 47.9 MB (47941513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3534c258aabac4c46b37947f2089c39baa310568391f96404233e4c9df894e3a`  
		Last Modified: Mon, 21 Sep 2026 23:09:29 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a7fe1a85aa5548d42fcb8c335f7444be477ed2e9c73b20c83e191abfc71e61e`  
		Last Modified: Mon, 21 Sep 2026 23:09:29 GMT  
		Size: 783.5 KB (783541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d3079708ede27d8bc1e8917a7a57d22a4f12dd52805a1edb06d88246f3e8d54`  
		Last Modified: Mon, 21 Sep 2026 23:09:36 GMT  
		Size: 6.2 MB (6197636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10425730d138d643e322a969dcad430d494d973f302c01a9b39d55264ab96898`  
		Last Modified: Mon, 21 Sep 2026 23:09:36 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:409c6fcbb48db28ec5f7e2bad1daadcf942c47000679bf160257ace550c1c8fd`  
		Last Modified: Mon, 21 Sep 2026 23:09:36 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12209f6c36967e427eb69bb9e0556ec90e9b890417c09aa5c6d1a52d639a9df4`  
		Last Modified: Mon, 21 Sep 2026 23:09:38 GMT  
		Size: 57.1 MB (57052021 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff5be3dcfc23f93bb57d41cac2d92deed02cfb67b6a8e8cdebd64b90cdda3711`  
		Last Modified: Mon, 21 Sep 2026 23:09:37 GMT  
		Size: 319.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:628e0550c24646e9b5f9d7f5b8b8b143e864d507b15a771bfa67dd6118dcd62c`  
		Last Modified: Mon, 21 Sep 2026 23:09:41 GMT  
		Size: 158.9 MB (158934845 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee6d08f141afbb57102bbc8cc155bfb9ef716ad1088815cee845351c665a0691`  
		Last Modified: Mon, 21 Sep 2026 23:09:38 GMT  
		Size: 5.2 KB (5220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:75915e8bd520e25e7b0cc0c5bd1949ed9f8d974cd8e134298f67f57ba99245cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfd59e8115ba74a266ce7031414aabbfa445a51dfbc3e31316078083516796b6`

```dockerfile
```

-	Layers:
	-	`sha256:8b57eaf4e4d1086272271f0f9c6bc9cd24e4105bf006c9236220557129daded1`  
		Last Modified: Mon, 21 Sep 2026 23:09:37 GMT  
		Size: 16.8 MB (16799187 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:61d952e276ca7d14dbac94faa133a341a5734c620503b69eea04efec715380c7`  
		Last Modified: Mon, 21 Sep 2026 23:09:36 GMT  
		Size: 34.2 KB (34208 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9.7-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:98b9662b31ea8c579318cc48951c6218a7f5c0c1cce6542f9f8a52955ce46f3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.4 MB (267394110 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32ee0ade16ddb58a8ee1e61c2535443abfcca0609797ccf1f0880f79fac867c2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 21 Sep 2026 23:04:02 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 21 Sep 2026 23:04:02 GMT
CMD ["/bin/bash"]
# Mon, 21 Sep 2026 23:07:01 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 21 Sep 2026 23:07:03 GMT
ENV GOSU_VERSION=1.19
# Mon, 21 Sep 2026 23:07:03 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 21 Sep 2026 23:07:41 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 21 Sep 2026 23:07:42 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 21 Sep 2026 23:07:42 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 21 Sep 2026 23:07:42 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Mon, 21 Sep 2026 23:07:42 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 21 Sep 2026 23:08:24 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 21 Sep 2026 23:08:24 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 21 Sep 2026 23:08:24 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 21 Sep 2026 23:09:15 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 21 Sep 2026 23:09:15 GMT
VOLUME [/var/lib/mysql]
# Mon, 21 Sep 2026 23:09:15 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 21 Sep 2026 23:09:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Sep 2026 23:09:15 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 21 Sep 2026 23:09:15 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b20e21573231a46ffd267a5791372e98726f9d11dd03deafc22fd5d18be5deea`  
		Last Modified: Mon, 21 Sep 2026 23:04:13 GMT  
		Size: 46.5 MB (46486872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3da5a8d5edbf0be97b026be4c1c5ddf681829d79a21674a06faf3d7b0411db3c`  
		Last Modified: Mon, 21 Sep 2026 23:09:45 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91aebaccc46af11c094b5617d0ac927d9fe9ecb520e73d562f698046bd567a58`  
		Last Modified: Mon, 21 Sep 2026 23:09:45 GMT  
		Size: 737.5 KB (737526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6a8b3fb25b368bfa25e5b63cfb765b1fd81c409f51a970d921915f720ec6c3b`  
		Last Modified: Mon, 21 Sep 2026 23:09:51 GMT  
		Size: 5.8 MB (5824044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8830487c6aa83e51d4ec5d813ddcb7aadc27139b53a9c20cff738a239ccded23`  
		Last Modified: Mon, 21 Sep 2026 23:09:45 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f4fea18d212f55b7f04a580dec0bfa6d9e011bdbb1f1525bc36ab71f2af1b6e`  
		Last Modified: Mon, 21 Sep 2026 23:09:51 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ca075ba196d95014ed9363176ecfe7793c5fc753fdd272155d6a6d2c4e348f0`  
		Last Modified: Mon, 21 Sep 2026 23:09:53 GMT  
		Size: 57.1 MB (57119142 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc4057ee530b0939143b17785a7ac14469b157321f8748b1be4f238e39ab7e57`  
		Last Modified: Mon, 21 Sep 2026 23:09:51 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:612c44fe0ce91ac2ddfa47a3f63948378ce63f1f6dcbe4e7f07df108ec3872b4`  
		Last Modified: Mon, 21 Sep 2026 23:09:55 GMT  
		Size: 157.2 MB (157217157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a705701f198b677e0bb69faec85e8b07571c056a68710b35b115db2aa538060c`  
		Last Modified: Mon, 21 Sep 2026 23:09:52 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:f3c05898ce2a1651199fbea961c95f5188f0f602faa33f6459f2b5317c7d22c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16832136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b121c5036bb351473b555cb90be2302ca761b2337bc18e2c5aab027a5eb3324`

```dockerfile
```

-	Layers:
	-	`sha256:8a9bac6bfa8f8c3291e2e42162deae5205a31bb7f5cd7165142b402d20d92fa1`  
		Last Modified: Mon, 21 Sep 2026 23:09:51 GMT  
		Size: 16.8 MB (16797623 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:662ac4165e92d11ed035d6ab8fe449b5e0e9de7d7b53f9f91dc37d0916da12cf`  
		Last Modified: Mon, 21 Sep 2026 23:09:51 GMT  
		Size: 34.5 KB (34513 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9.7-oraclelinux9`

```console
$ docker pull mysql@sha256:30a0abfa7b502a496e12339b54cd07aaa70363396dc4b8e8a72a92804a505cd6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9.7-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:d55f5ba0270ae9824697021ed8a3b651f952f79be366fea1816795850a1f53d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.9 MB (270918920 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ab50f3dea0edf3235cdac735e865e5778191d8eac4f579a068cc6f6233dd842`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 21 Sep 2026 23:04:16 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 21 Sep 2026 23:04:16 GMT
CMD ["/bin/bash"]
# Mon, 21 Sep 2026 23:06:55 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 21 Sep 2026 23:06:57 GMT
ENV GOSU_VERSION=1.19
# Mon, 21 Sep 2026 23:06:57 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 21 Sep 2026 23:07:32 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 21 Sep 2026 23:07:33 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 21 Sep 2026 23:07:33 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 21 Sep 2026 23:07:33 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Mon, 21 Sep 2026 23:07:33 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 21 Sep 2026 23:08:12 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 21 Sep 2026 23:08:12 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 21 Sep 2026 23:08:12 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 21 Sep 2026 23:09:00 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 21 Sep 2026 23:09:00 GMT
VOLUME [/var/lib/mysql]
# Mon, 21 Sep 2026 23:09:01 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 21 Sep 2026 23:09:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Sep 2026 23:09:01 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 21 Sep 2026 23:09:01 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:6361e9307160bba9b9394334d9e85b77c416081e54c8ba8c6d0806dc0c4d5f4b`  
		Last Modified: Mon, 21 Sep 2026 23:04:27 GMT  
		Size: 47.9 MB (47941513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3534c258aabac4c46b37947f2089c39baa310568391f96404233e4c9df894e3a`  
		Last Modified: Mon, 21 Sep 2026 23:09:29 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a7fe1a85aa5548d42fcb8c335f7444be477ed2e9c73b20c83e191abfc71e61e`  
		Last Modified: Mon, 21 Sep 2026 23:09:29 GMT  
		Size: 783.5 KB (783541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d3079708ede27d8bc1e8917a7a57d22a4f12dd52805a1edb06d88246f3e8d54`  
		Last Modified: Mon, 21 Sep 2026 23:09:36 GMT  
		Size: 6.2 MB (6197636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10425730d138d643e322a969dcad430d494d973f302c01a9b39d55264ab96898`  
		Last Modified: Mon, 21 Sep 2026 23:09:36 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:409c6fcbb48db28ec5f7e2bad1daadcf942c47000679bf160257ace550c1c8fd`  
		Last Modified: Mon, 21 Sep 2026 23:09:36 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12209f6c36967e427eb69bb9e0556ec90e9b890417c09aa5c6d1a52d639a9df4`  
		Last Modified: Mon, 21 Sep 2026 23:09:38 GMT  
		Size: 57.1 MB (57052021 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff5be3dcfc23f93bb57d41cac2d92deed02cfb67b6a8e8cdebd64b90cdda3711`  
		Last Modified: Mon, 21 Sep 2026 23:09:37 GMT  
		Size: 319.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:628e0550c24646e9b5f9d7f5b8b8b143e864d507b15a771bfa67dd6118dcd62c`  
		Last Modified: Mon, 21 Sep 2026 23:09:41 GMT  
		Size: 158.9 MB (158934845 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee6d08f141afbb57102bbc8cc155bfb9ef716ad1088815cee845351c665a0691`  
		Last Modified: Mon, 21 Sep 2026 23:09:38 GMT  
		Size: 5.2 KB (5220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:75915e8bd520e25e7b0cc0c5bd1949ed9f8d974cd8e134298f67f57ba99245cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfd59e8115ba74a266ce7031414aabbfa445a51dfbc3e31316078083516796b6`

```dockerfile
```

-	Layers:
	-	`sha256:8b57eaf4e4d1086272271f0f9c6bc9cd24e4105bf006c9236220557129daded1`  
		Last Modified: Mon, 21 Sep 2026 23:09:37 GMT  
		Size: 16.8 MB (16799187 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:61d952e276ca7d14dbac94faa133a341a5734c620503b69eea04efec715380c7`  
		Last Modified: Mon, 21 Sep 2026 23:09:36 GMT  
		Size: 34.2 KB (34208 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9.7-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:98b9662b31ea8c579318cc48951c6218a7f5c0c1cce6542f9f8a52955ce46f3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.4 MB (267394110 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32ee0ade16ddb58a8ee1e61c2535443abfcca0609797ccf1f0880f79fac867c2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 21 Sep 2026 23:04:02 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 21 Sep 2026 23:04:02 GMT
CMD ["/bin/bash"]
# Mon, 21 Sep 2026 23:07:01 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 21 Sep 2026 23:07:03 GMT
ENV GOSU_VERSION=1.19
# Mon, 21 Sep 2026 23:07:03 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 21 Sep 2026 23:07:41 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 21 Sep 2026 23:07:42 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 21 Sep 2026 23:07:42 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 21 Sep 2026 23:07:42 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Mon, 21 Sep 2026 23:07:42 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 21 Sep 2026 23:08:24 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 21 Sep 2026 23:08:24 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 21 Sep 2026 23:08:24 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 21 Sep 2026 23:09:15 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 21 Sep 2026 23:09:15 GMT
VOLUME [/var/lib/mysql]
# Mon, 21 Sep 2026 23:09:15 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 21 Sep 2026 23:09:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Sep 2026 23:09:15 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 21 Sep 2026 23:09:15 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b20e21573231a46ffd267a5791372e98726f9d11dd03deafc22fd5d18be5deea`  
		Last Modified: Mon, 21 Sep 2026 23:04:13 GMT  
		Size: 46.5 MB (46486872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3da5a8d5edbf0be97b026be4c1c5ddf681829d79a21674a06faf3d7b0411db3c`  
		Last Modified: Mon, 21 Sep 2026 23:09:45 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91aebaccc46af11c094b5617d0ac927d9fe9ecb520e73d562f698046bd567a58`  
		Last Modified: Mon, 21 Sep 2026 23:09:45 GMT  
		Size: 737.5 KB (737526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6a8b3fb25b368bfa25e5b63cfb765b1fd81c409f51a970d921915f720ec6c3b`  
		Last Modified: Mon, 21 Sep 2026 23:09:51 GMT  
		Size: 5.8 MB (5824044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8830487c6aa83e51d4ec5d813ddcb7aadc27139b53a9c20cff738a239ccded23`  
		Last Modified: Mon, 21 Sep 2026 23:09:45 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f4fea18d212f55b7f04a580dec0bfa6d9e011bdbb1f1525bc36ab71f2af1b6e`  
		Last Modified: Mon, 21 Sep 2026 23:09:51 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ca075ba196d95014ed9363176ecfe7793c5fc753fdd272155d6a6d2c4e348f0`  
		Last Modified: Mon, 21 Sep 2026 23:09:53 GMT  
		Size: 57.1 MB (57119142 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc4057ee530b0939143b17785a7ac14469b157321f8748b1be4f238e39ab7e57`  
		Last Modified: Mon, 21 Sep 2026 23:09:51 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:612c44fe0ce91ac2ddfa47a3f63948378ce63f1f6dcbe4e7f07df108ec3872b4`  
		Last Modified: Mon, 21 Sep 2026 23:09:55 GMT  
		Size: 157.2 MB (157217157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a705701f198b677e0bb69faec85e8b07571c056a68710b35b115db2aa538060c`  
		Last Modified: Mon, 21 Sep 2026 23:09:52 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:f3c05898ce2a1651199fbea961c95f5188f0f602faa33f6459f2b5317c7d22c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16832136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b121c5036bb351473b555cb90be2302ca761b2337bc18e2c5aab027a5eb3324`

```dockerfile
```

-	Layers:
	-	`sha256:8a9bac6bfa8f8c3291e2e42162deae5205a31bb7f5cd7165142b402d20d92fa1`  
		Last Modified: Mon, 21 Sep 2026 23:09:51 GMT  
		Size: 16.8 MB (16797623 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:662ac4165e92d11ed035d6ab8fe449b5e0e9de7d7b53f9f91dc37d0916da12cf`  
		Last Modified: Mon, 21 Sep 2026 23:09:51 GMT  
		Size: 34.5 KB (34513 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9.7.2`

```console
$ docker pull mysql@sha256:30a0abfa7b502a496e12339b54cd07aaa70363396dc4b8e8a72a92804a505cd6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9.7.2` - linux; amd64

```console
$ docker pull mysql@sha256:d55f5ba0270ae9824697021ed8a3b651f952f79be366fea1816795850a1f53d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.9 MB (270918920 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ab50f3dea0edf3235cdac735e865e5778191d8eac4f579a068cc6f6233dd842`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 21 Sep 2026 23:04:16 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 21 Sep 2026 23:04:16 GMT
CMD ["/bin/bash"]
# Mon, 21 Sep 2026 23:06:55 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 21 Sep 2026 23:06:57 GMT
ENV GOSU_VERSION=1.19
# Mon, 21 Sep 2026 23:06:57 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 21 Sep 2026 23:07:32 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 21 Sep 2026 23:07:33 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 21 Sep 2026 23:07:33 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 21 Sep 2026 23:07:33 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Mon, 21 Sep 2026 23:07:33 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 21 Sep 2026 23:08:12 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 21 Sep 2026 23:08:12 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 21 Sep 2026 23:08:12 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 21 Sep 2026 23:09:00 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 21 Sep 2026 23:09:00 GMT
VOLUME [/var/lib/mysql]
# Mon, 21 Sep 2026 23:09:01 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 21 Sep 2026 23:09:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Sep 2026 23:09:01 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 21 Sep 2026 23:09:01 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:6361e9307160bba9b9394334d9e85b77c416081e54c8ba8c6d0806dc0c4d5f4b`  
		Last Modified: Mon, 21 Sep 2026 23:04:27 GMT  
		Size: 47.9 MB (47941513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3534c258aabac4c46b37947f2089c39baa310568391f96404233e4c9df894e3a`  
		Last Modified: Mon, 21 Sep 2026 23:09:29 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a7fe1a85aa5548d42fcb8c335f7444be477ed2e9c73b20c83e191abfc71e61e`  
		Last Modified: Mon, 21 Sep 2026 23:09:29 GMT  
		Size: 783.5 KB (783541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d3079708ede27d8bc1e8917a7a57d22a4f12dd52805a1edb06d88246f3e8d54`  
		Last Modified: Mon, 21 Sep 2026 23:09:36 GMT  
		Size: 6.2 MB (6197636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10425730d138d643e322a969dcad430d494d973f302c01a9b39d55264ab96898`  
		Last Modified: Mon, 21 Sep 2026 23:09:36 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:409c6fcbb48db28ec5f7e2bad1daadcf942c47000679bf160257ace550c1c8fd`  
		Last Modified: Mon, 21 Sep 2026 23:09:36 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12209f6c36967e427eb69bb9e0556ec90e9b890417c09aa5c6d1a52d639a9df4`  
		Last Modified: Mon, 21 Sep 2026 23:09:38 GMT  
		Size: 57.1 MB (57052021 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff5be3dcfc23f93bb57d41cac2d92deed02cfb67b6a8e8cdebd64b90cdda3711`  
		Last Modified: Mon, 21 Sep 2026 23:09:37 GMT  
		Size: 319.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:628e0550c24646e9b5f9d7f5b8b8b143e864d507b15a771bfa67dd6118dcd62c`  
		Last Modified: Mon, 21 Sep 2026 23:09:41 GMT  
		Size: 158.9 MB (158934845 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee6d08f141afbb57102bbc8cc155bfb9ef716ad1088815cee845351c665a0691`  
		Last Modified: Mon, 21 Sep 2026 23:09:38 GMT  
		Size: 5.2 KB (5220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7.2` - unknown; unknown

```console
$ docker pull mysql@sha256:75915e8bd520e25e7b0cc0c5bd1949ed9f8d974cd8e134298f67f57ba99245cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfd59e8115ba74a266ce7031414aabbfa445a51dfbc3e31316078083516796b6`

```dockerfile
```

-	Layers:
	-	`sha256:8b57eaf4e4d1086272271f0f9c6bc9cd24e4105bf006c9236220557129daded1`  
		Last Modified: Mon, 21 Sep 2026 23:09:37 GMT  
		Size: 16.8 MB (16799187 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:61d952e276ca7d14dbac94faa133a341a5734c620503b69eea04efec715380c7`  
		Last Modified: Mon, 21 Sep 2026 23:09:36 GMT  
		Size: 34.2 KB (34208 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9.7.2` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:98b9662b31ea8c579318cc48951c6218a7f5c0c1cce6542f9f8a52955ce46f3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.4 MB (267394110 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32ee0ade16ddb58a8ee1e61c2535443abfcca0609797ccf1f0880f79fac867c2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 21 Sep 2026 23:04:02 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 21 Sep 2026 23:04:02 GMT
CMD ["/bin/bash"]
# Mon, 21 Sep 2026 23:07:01 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 21 Sep 2026 23:07:03 GMT
ENV GOSU_VERSION=1.19
# Mon, 21 Sep 2026 23:07:03 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 21 Sep 2026 23:07:41 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 21 Sep 2026 23:07:42 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 21 Sep 2026 23:07:42 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 21 Sep 2026 23:07:42 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Mon, 21 Sep 2026 23:07:42 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 21 Sep 2026 23:08:24 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 21 Sep 2026 23:08:24 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 21 Sep 2026 23:08:24 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 21 Sep 2026 23:09:15 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 21 Sep 2026 23:09:15 GMT
VOLUME [/var/lib/mysql]
# Mon, 21 Sep 2026 23:09:15 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 21 Sep 2026 23:09:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Sep 2026 23:09:15 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 21 Sep 2026 23:09:15 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b20e21573231a46ffd267a5791372e98726f9d11dd03deafc22fd5d18be5deea`  
		Last Modified: Mon, 21 Sep 2026 23:04:13 GMT  
		Size: 46.5 MB (46486872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3da5a8d5edbf0be97b026be4c1c5ddf681829d79a21674a06faf3d7b0411db3c`  
		Last Modified: Mon, 21 Sep 2026 23:09:45 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91aebaccc46af11c094b5617d0ac927d9fe9ecb520e73d562f698046bd567a58`  
		Last Modified: Mon, 21 Sep 2026 23:09:45 GMT  
		Size: 737.5 KB (737526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6a8b3fb25b368bfa25e5b63cfb765b1fd81c409f51a970d921915f720ec6c3b`  
		Last Modified: Mon, 21 Sep 2026 23:09:51 GMT  
		Size: 5.8 MB (5824044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8830487c6aa83e51d4ec5d813ddcb7aadc27139b53a9c20cff738a239ccded23`  
		Last Modified: Mon, 21 Sep 2026 23:09:45 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f4fea18d212f55b7f04a580dec0bfa6d9e011bdbb1f1525bc36ab71f2af1b6e`  
		Last Modified: Mon, 21 Sep 2026 23:09:51 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ca075ba196d95014ed9363176ecfe7793c5fc753fdd272155d6a6d2c4e348f0`  
		Last Modified: Mon, 21 Sep 2026 23:09:53 GMT  
		Size: 57.1 MB (57119142 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc4057ee530b0939143b17785a7ac14469b157321f8748b1be4f238e39ab7e57`  
		Last Modified: Mon, 21 Sep 2026 23:09:51 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:612c44fe0ce91ac2ddfa47a3f63948378ce63f1f6dcbe4e7f07df108ec3872b4`  
		Last Modified: Mon, 21 Sep 2026 23:09:55 GMT  
		Size: 157.2 MB (157217157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a705701f198b677e0bb69faec85e8b07571c056a68710b35b115db2aa538060c`  
		Last Modified: Mon, 21 Sep 2026 23:09:52 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7.2` - unknown; unknown

```console
$ docker pull mysql@sha256:f3c05898ce2a1651199fbea961c95f5188f0f602faa33f6459f2b5317c7d22c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16832136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b121c5036bb351473b555cb90be2302ca761b2337bc18e2c5aab027a5eb3324`

```dockerfile
```

-	Layers:
	-	`sha256:8a9bac6bfa8f8c3291e2e42162deae5205a31bb7f5cd7165142b402d20d92fa1`  
		Last Modified: Mon, 21 Sep 2026 23:09:51 GMT  
		Size: 16.8 MB (16797623 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:662ac4165e92d11ed035d6ab8fe449b5e0e9de7d7b53f9f91dc37d0916da12cf`  
		Last Modified: Mon, 21 Sep 2026 23:09:51 GMT  
		Size: 34.5 KB (34513 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9.7.2-oracle`

```console
$ docker pull mysql@sha256:30a0abfa7b502a496e12339b54cd07aaa70363396dc4b8e8a72a92804a505cd6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9.7.2-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:d55f5ba0270ae9824697021ed8a3b651f952f79be366fea1816795850a1f53d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.9 MB (270918920 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ab50f3dea0edf3235cdac735e865e5778191d8eac4f579a068cc6f6233dd842`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 21 Sep 2026 23:04:16 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 21 Sep 2026 23:04:16 GMT
CMD ["/bin/bash"]
# Mon, 21 Sep 2026 23:06:55 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 21 Sep 2026 23:06:57 GMT
ENV GOSU_VERSION=1.19
# Mon, 21 Sep 2026 23:06:57 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 21 Sep 2026 23:07:32 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 21 Sep 2026 23:07:33 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 21 Sep 2026 23:07:33 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 21 Sep 2026 23:07:33 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Mon, 21 Sep 2026 23:07:33 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 21 Sep 2026 23:08:12 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 21 Sep 2026 23:08:12 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 21 Sep 2026 23:08:12 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 21 Sep 2026 23:09:00 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 21 Sep 2026 23:09:00 GMT
VOLUME [/var/lib/mysql]
# Mon, 21 Sep 2026 23:09:01 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 21 Sep 2026 23:09:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Sep 2026 23:09:01 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 21 Sep 2026 23:09:01 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:6361e9307160bba9b9394334d9e85b77c416081e54c8ba8c6d0806dc0c4d5f4b`  
		Last Modified: Mon, 21 Sep 2026 23:04:27 GMT  
		Size: 47.9 MB (47941513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3534c258aabac4c46b37947f2089c39baa310568391f96404233e4c9df894e3a`  
		Last Modified: Mon, 21 Sep 2026 23:09:29 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a7fe1a85aa5548d42fcb8c335f7444be477ed2e9c73b20c83e191abfc71e61e`  
		Last Modified: Mon, 21 Sep 2026 23:09:29 GMT  
		Size: 783.5 KB (783541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d3079708ede27d8bc1e8917a7a57d22a4f12dd52805a1edb06d88246f3e8d54`  
		Last Modified: Mon, 21 Sep 2026 23:09:36 GMT  
		Size: 6.2 MB (6197636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10425730d138d643e322a969dcad430d494d973f302c01a9b39d55264ab96898`  
		Last Modified: Mon, 21 Sep 2026 23:09:36 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:409c6fcbb48db28ec5f7e2bad1daadcf942c47000679bf160257ace550c1c8fd`  
		Last Modified: Mon, 21 Sep 2026 23:09:36 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12209f6c36967e427eb69bb9e0556ec90e9b890417c09aa5c6d1a52d639a9df4`  
		Last Modified: Mon, 21 Sep 2026 23:09:38 GMT  
		Size: 57.1 MB (57052021 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff5be3dcfc23f93bb57d41cac2d92deed02cfb67b6a8e8cdebd64b90cdda3711`  
		Last Modified: Mon, 21 Sep 2026 23:09:37 GMT  
		Size: 319.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:628e0550c24646e9b5f9d7f5b8b8b143e864d507b15a771bfa67dd6118dcd62c`  
		Last Modified: Mon, 21 Sep 2026 23:09:41 GMT  
		Size: 158.9 MB (158934845 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee6d08f141afbb57102bbc8cc155bfb9ef716ad1088815cee845351c665a0691`  
		Last Modified: Mon, 21 Sep 2026 23:09:38 GMT  
		Size: 5.2 KB (5220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7.2-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:75915e8bd520e25e7b0cc0c5bd1949ed9f8d974cd8e134298f67f57ba99245cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfd59e8115ba74a266ce7031414aabbfa445a51dfbc3e31316078083516796b6`

```dockerfile
```

-	Layers:
	-	`sha256:8b57eaf4e4d1086272271f0f9c6bc9cd24e4105bf006c9236220557129daded1`  
		Last Modified: Mon, 21 Sep 2026 23:09:37 GMT  
		Size: 16.8 MB (16799187 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:61d952e276ca7d14dbac94faa133a341a5734c620503b69eea04efec715380c7`  
		Last Modified: Mon, 21 Sep 2026 23:09:36 GMT  
		Size: 34.2 KB (34208 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9.7.2-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:98b9662b31ea8c579318cc48951c6218a7f5c0c1cce6542f9f8a52955ce46f3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.4 MB (267394110 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32ee0ade16ddb58a8ee1e61c2535443abfcca0609797ccf1f0880f79fac867c2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 21 Sep 2026 23:04:02 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 21 Sep 2026 23:04:02 GMT
CMD ["/bin/bash"]
# Mon, 21 Sep 2026 23:07:01 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 21 Sep 2026 23:07:03 GMT
ENV GOSU_VERSION=1.19
# Mon, 21 Sep 2026 23:07:03 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 21 Sep 2026 23:07:41 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 21 Sep 2026 23:07:42 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 21 Sep 2026 23:07:42 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 21 Sep 2026 23:07:42 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Mon, 21 Sep 2026 23:07:42 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 21 Sep 2026 23:08:24 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 21 Sep 2026 23:08:24 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 21 Sep 2026 23:08:24 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 21 Sep 2026 23:09:15 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 21 Sep 2026 23:09:15 GMT
VOLUME [/var/lib/mysql]
# Mon, 21 Sep 2026 23:09:15 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 21 Sep 2026 23:09:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Sep 2026 23:09:15 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 21 Sep 2026 23:09:15 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b20e21573231a46ffd267a5791372e98726f9d11dd03deafc22fd5d18be5deea`  
		Last Modified: Mon, 21 Sep 2026 23:04:13 GMT  
		Size: 46.5 MB (46486872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3da5a8d5edbf0be97b026be4c1c5ddf681829d79a21674a06faf3d7b0411db3c`  
		Last Modified: Mon, 21 Sep 2026 23:09:45 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91aebaccc46af11c094b5617d0ac927d9fe9ecb520e73d562f698046bd567a58`  
		Last Modified: Mon, 21 Sep 2026 23:09:45 GMT  
		Size: 737.5 KB (737526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6a8b3fb25b368bfa25e5b63cfb765b1fd81c409f51a970d921915f720ec6c3b`  
		Last Modified: Mon, 21 Sep 2026 23:09:51 GMT  
		Size: 5.8 MB (5824044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8830487c6aa83e51d4ec5d813ddcb7aadc27139b53a9c20cff738a239ccded23`  
		Last Modified: Mon, 21 Sep 2026 23:09:45 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f4fea18d212f55b7f04a580dec0bfa6d9e011bdbb1f1525bc36ab71f2af1b6e`  
		Last Modified: Mon, 21 Sep 2026 23:09:51 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ca075ba196d95014ed9363176ecfe7793c5fc753fdd272155d6a6d2c4e348f0`  
		Last Modified: Mon, 21 Sep 2026 23:09:53 GMT  
		Size: 57.1 MB (57119142 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc4057ee530b0939143b17785a7ac14469b157321f8748b1be4f238e39ab7e57`  
		Last Modified: Mon, 21 Sep 2026 23:09:51 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:612c44fe0ce91ac2ddfa47a3f63948378ce63f1f6dcbe4e7f07df108ec3872b4`  
		Last Modified: Mon, 21 Sep 2026 23:09:55 GMT  
		Size: 157.2 MB (157217157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a705701f198b677e0bb69faec85e8b07571c056a68710b35b115db2aa538060c`  
		Last Modified: Mon, 21 Sep 2026 23:09:52 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7.2-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:f3c05898ce2a1651199fbea961c95f5188f0f602faa33f6459f2b5317c7d22c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16832136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b121c5036bb351473b555cb90be2302ca761b2337bc18e2c5aab027a5eb3324`

```dockerfile
```

-	Layers:
	-	`sha256:8a9bac6bfa8f8c3291e2e42162deae5205a31bb7f5cd7165142b402d20d92fa1`  
		Last Modified: Mon, 21 Sep 2026 23:09:51 GMT  
		Size: 16.8 MB (16797623 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:662ac4165e92d11ed035d6ab8fe449b5e0e9de7d7b53f9f91dc37d0916da12cf`  
		Last Modified: Mon, 21 Sep 2026 23:09:51 GMT  
		Size: 34.5 KB (34513 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9.7.2-oraclelinux9`

```console
$ docker pull mysql@sha256:30a0abfa7b502a496e12339b54cd07aaa70363396dc4b8e8a72a92804a505cd6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9.7.2-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:d55f5ba0270ae9824697021ed8a3b651f952f79be366fea1816795850a1f53d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.9 MB (270918920 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ab50f3dea0edf3235cdac735e865e5778191d8eac4f579a068cc6f6233dd842`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 21 Sep 2026 23:04:16 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 21 Sep 2026 23:04:16 GMT
CMD ["/bin/bash"]
# Mon, 21 Sep 2026 23:06:55 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 21 Sep 2026 23:06:57 GMT
ENV GOSU_VERSION=1.19
# Mon, 21 Sep 2026 23:06:57 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 21 Sep 2026 23:07:32 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 21 Sep 2026 23:07:33 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 21 Sep 2026 23:07:33 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 21 Sep 2026 23:07:33 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Mon, 21 Sep 2026 23:07:33 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 21 Sep 2026 23:08:12 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 21 Sep 2026 23:08:12 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 21 Sep 2026 23:08:12 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 21 Sep 2026 23:09:00 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 21 Sep 2026 23:09:00 GMT
VOLUME [/var/lib/mysql]
# Mon, 21 Sep 2026 23:09:01 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 21 Sep 2026 23:09:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Sep 2026 23:09:01 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 21 Sep 2026 23:09:01 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:6361e9307160bba9b9394334d9e85b77c416081e54c8ba8c6d0806dc0c4d5f4b`  
		Last Modified: Mon, 21 Sep 2026 23:04:27 GMT  
		Size: 47.9 MB (47941513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3534c258aabac4c46b37947f2089c39baa310568391f96404233e4c9df894e3a`  
		Last Modified: Mon, 21 Sep 2026 23:09:29 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a7fe1a85aa5548d42fcb8c335f7444be477ed2e9c73b20c83e191abfc71e61e`  
		Last Modified: Mon, 21 Sep 2026 23:09:29 GMT  
		Size: 783.5 KB (783541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d3079708ede27d8bc1e8917a7a57d22a4f12dd52805a1edb06d88246f3e8d54`  
		Last Modified: Mon, 21 Sep 2026 23:09:36 GMT  
		Size: 6.2 MB (6197636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10425730d138d643e322a969dcad430d494d973f302c01a9b39d55264ab96898`  
		Last Modified: Mon, 21 Sep 2026 23:09:36 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:409c6fcbb48db28ec5f7e2bad1daadcf942c47000679bf160257ace550c1c8fd`  
		Last Modified: Mon, 21 Sep 2026 23:09:36 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12209f6c36967e427eb69bb9e0556ec90e9b890417c09aa5c6d1a52d639a9df4`  
		Last Modified: Mon, 21 Sep 2026 23:09:38 GMT  
		Size: 57.1 MB (57052021 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff5be3dcfc23f93bb57d41cac2d92deed02cfb67b6a8e8cdebd64b90cdda3711`  
		Last Modified: Mon, 21 Sep 2026 23:09:37 GMT  
		Size: 319.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:628e0550c24646e9b5f9d7f5b8b8b143e864d507b15a771bfa67dd6118dcd62c`  
		Last Modified: Mon, 21 Sep 2026 23:09:41 GMT  
		Size: 158.9 MB (158934845 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee6d08f141afbb57102bbc8cc155bfb9ef716ad1088815cee845351c665a0691`  
		Last Modified: Mon, 21 Sep 2026 23:09:38 GMT  
		Size: 5.2 KB (5220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7.2-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:75915e8bd520e25e7b0cc0c5bd1949ed9f8d974cd8e134298f67f57ba99245cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfd59e8115ba74a266ce7031414aabbfa445a51dfbc3e31316078083516796b6`

```dockerfile
```

-	Layers:
	-	`sha256:8b57eaf4e4d1086272271f0f9c6bc9cd24e4105bf006c9236220557129daded1`  
		Last Modified: Mon, 21 Sep 2026 23:09:37 GMT  
		Size: 16.8 MB (16799187 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:61d952e276ca7d14dbac94faa133a341a5734c620503b69eea04efec715380c7`  
		Last Modified: Mon, 21 Sep 2026 23:09:36 GMT  
		Size: 34.2 KB (34208 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9.7.2-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:98b9662b31ea8c579318cc48951c6218a7f5c0c1cce6542f9f8a52955ce46f3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.4 MB (267394110 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32ee0ade16ddb58a8ee1e61c2535443abfcca0609797ccf1f0880f79fac867c2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 21 Sep 2026 23:04:02 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 21 Sep 2026 23:04:02 GMT
CMD ["/bin/bash"]
# Mon, 21 Sep 2026 23:07:01 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 21 Sep 2026 23:07:03 GMT
ENV GOSU_VERSION=1.19
# Mon, 21 Sep 2026 23:07:03 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 21 Sep 2026 23:07:41 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 21 Sep 2026 23:07:42 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 21 Sep 2026 23:07:42 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 21 Sep 2026 23:07:42 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Mon, 21 Sep 2026 23:07:42 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 21 Sep 2026 23:08:24 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 21 Sep 2026 23:08:24 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 21 Sep 2026 23:08:24 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 21 Sep 2026 23:09:15 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 21 Sep 2026 23:09:15 GMT
VOLUME [/var/lib/mysql]
# Mon, 21 Sep 2026 23:09:15 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 21 Sep 2026 23:09:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Sep 2026 23:09:15 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 21 Sep 2026 23:09:15 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b20e21573231a46ffd267a5791372e98726f9d11dd03deafc22fd5d18be5deea`  
		Last Modified: Mon, 21 Sep 2026 23:04:13 GMT  
		Size: 46.5 MB (46486872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3da5a8d5edbf0be97b026be4c1c5ddf681829d79a21674a06faf3d7b0411db3c`  
		Last Modified: Mon, 21 Sep 2026 23:09:45 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91aebaccc46af11c094b5617d0ac927d9fe9ecb520e73d562f698046bd567a58`  
		Last Modified: Mon, 21 Sep 2026 23:09:45 GMT  
		Size: 737.5 KB (737526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6a8b3fb25b368bfa25e5b63cfb765b1fd81c409f51a970d921915f720ec6c3b`  
		Last Modified: Mon, 21 Sep 2026 23:09:51 GMT  
		Size: 5.8 MB (5824044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8830487c6aa83e51d4ec5d813ddcb7aadc27139b53a9c20cff738a239ccded23`  
		Last Modified: Mon, 21 Sep 2026 23:09:45 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f4fea18d212f55b7f04a580dec0bfa6d9e011bdbb1f1525bc36ab71f2af1b6e`  
		Last Modified: Mon, 21 Sep 2026 23:09:51 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ca075ba196d95014ed9363176ecfe7793c5fc753fdd272155d6a6d2c4e348f0`  
		Last Modified: Mon, 21 Sep 2026 23:09:53 GMT  
		Size: 57.1 MB (57119142 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc4057ee530b0939143b17785a7ac14469b157321f8748b1be4f238e39ab7e57`  
		Last Modified: Mon, 21 Sep 2026 23:09:51 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:612c44fe0ce91ac2ddfa47a3f63948378ce63f1f6dcbe4e7f07df108ec3872b4`  
		Last Modified: Mon, 21 Sep 2026 23:09:55 GMT  
		Size: 157.2 MB (157217157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a705701f198b677e0bb69faec85e8b07571c056a68710b35b115db2aa538060c`  
		Last Modified: Mon, 21 Sep 2026 23:09:52 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7.2-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:f3c05898ce2a1651199fbea961c95f5188f0f602faa33f6459f2b5317c7d22c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16832136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b121c5036bb351473b555cb90be2302ca761b2337bc18e2c5aab027a5eb3324`

```dockerfile
```

-	Layers:
	-	`sha256:8a9bac6bfa8f8c3291e2e42162deae5205a31bb7f5cd7165142b402d20d92fa1`  
		Last Modified: Mon, 21 Sep 2026 23:09:51 GMT  
		Size: 16.8 MB (16797623 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:662ac4165e92d11ed035d6ab8fe449b5e0e9de7d7b53f9f91dc37d0916da12cf`  
		Last Modified: Mon, 21 Sep 2026 23:09:51 GMT  
		Size: 34.5 KB (34513 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:innovation`

```console
$ docker pull mysql@sha256:ade067ae2fb15eeb6143e81185afe22573e3b3addc58aaf90c41999fa6883991
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:innovation` - linux; amd64

```console
$ docker pull mysql@sha256:74849bf6226b8dafdb1258e90fab588de1e597a80487e744986d9d85d6a65836
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.4 MB (272359450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0485e3d5a3f3cb2cfd593047ab321a420f7026ec4ea0adc20e65eb42d420db68`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 21 Sep 2026 23:04:16 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 21 Sep 2026 23:04:16 GMT
CMD ["/bin/bash"]
# Mon, 21 Sep 2026 23:06:56 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 21 Sep 2026 23:06:57 GMT
ENV GOSU_VERSION=1.19
# Mon, 21 Sep 2026 23:06:57 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 21 Sep 2026 23:07:31 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 21 Sep 2026 23:07:31 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 21 Sep 2026 23:07:31 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 21 Sep 2026 23:07:31 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Mon, 21 Sep 2026 23:07:32 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 21 Sep 2026 23:08:08 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 21 Sep 2026 23:08:08 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 21 Sep 2026 23:08:08 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Mon, 21 Sep 2026 23:08:55 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 21 Sep 2026 23:08:55 GMT
VOLUME [/var/lib/mysql]
# Mon, 21 Sep 2026 23:08:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 21 Sep 2026 23:08:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Sep 2026 23:08:55 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 21 Sep 2026 23:08:55 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:6361e9307160bba9b9394334d9e85b77c416081e54c8ba8c6d0806dc0c4d5f4b`  
		Last Modified: Mon, 21 Sep 2026 23:04:27 GMT  
		Size: 47.9 MB (47941513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3534c258aabac4c46b37947f2089c39baa310568391f96404233e4c9df894e3a`  
		Last Modified: Mon, 21 Sep 2026 23:09:29 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a7fe1a85aa5548d42fcb8c335f7444be477ed2e9c73b20c83e191abfc71e61e`  
		Last Modified: Mon, 21 Sep 2026 23:09:29 GMT  
		Size: 783.5 KB (783541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30e12685077b4e92fbc033480c85f54689f367be5135b9e03aff46b36c09d2a3`  
		Last Modified: Mon, 21 Sep 2026 23:09:29 GMT  
		Size: 6.2 MB (6197645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb5715bbbeccb7f7385fa58362ba085fbf743725a960a1357d8f232e731716d8`  
		Last Modified: Mon, 21 Sep 2026 23:09:29 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59270b130aec3d2cdff3fc51e1058cd7b3faecd61bb4461ec3c17b6494a1ebdc`  
		Last Modified: Mon, 21 Sep 2026 23:09:30 GMT  
		Size: 341.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6de6b644e38e2677f72d5e17463e85fa1383d4425b4a4e731aa8799a4d666c80`  
		Last Modified: Mon, 21 Sep 2026 23:09:32 GMT  
		Size: 57.5 MB (57455040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:115b4caa98402fb25e0f4d1897406e658770f9c71967ee6ad98a120b51ce7d3c`  
		Last Modified: Mon, 21 Sep 2026 23:09:30 GMT  
		Size: 326.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e394e0b2e6500fe3fda549e1ab6ed1645db3882670433888ffa6126aa3f83c70`  
		Last Modified: Mon, 21 Sep 2026 23:09:34 GMT  
		Size: 160.0 MB (159972331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f7644b7ee9b3f7889f3fe5cf3c86f2cae37492fafd58e298846aa1122751a41`  
		Last Modified: Mon, 21 Sep 2026 23:09:31 GMT  
		Size: 5.2 KB (5223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:innovation` - unknown; unknown

```console
$ docker pull mysql@sha256:da9f9956c561a82558cf5b75587eccaa3517bff02b94594b9438fba32d303e9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17452709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23c12b5d4c80cb4e0484d94eff80749e14d89a1993cd025ec8207b3587783064`

```dockerfile
```

-	Layers:
	-	`sha256:8b2919a887f80355a9f9687687048641fb52398a9e06e216fa82eef029f2cbd2`  
		Last Modified: Mon, 21 Sep 2026 23:09:30 GMT  
		Size: 17.4 MB (17417411 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ef1d56738a4a943ed88423c36741edee4314969e32c404c124852fde2dfbc3f7`  
		Last Modified: Mon, 21 Sep 2026 23:09:29 GMT  
		Size: 35.3 KB (35298 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:innovation` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:082788c625f6691d3dc3fde8669340cfb8bc0377c06e88889382f5f28e1bb81b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.7 MB (268735017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1ebb12281ad097d611394946626b6baf897511844d9a684d2cb39b15b83c117`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 21 Sep 2026 23:04:02 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 21 Sep 2026 23:04:02 GMT
CMD ["/bin/bash"]
# Mon, 21 Sep 2026 23:07:01 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 21 Sep 2026 23:07:03 GMT
ENV GOSU_VERSION=1.19
# Mon, 21 Sep 2026 23:07:03 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 21 Sep 2026 23:07:40 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 21 Sep 2026 23:07:41 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 21 Sep 2026 23:07:41 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 21 Sep 2026 23:07:41 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Mon, 21 Sep 2026 23:07:41 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 21 Sep 2026 23:08:23 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 21 Sep 2026 23:08:24 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 21 Sep 2026 23:08:24 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Mon, 21 Sep 2026 23:09:17 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 21 Sep 2026 23:09:17 GMT
VOLUME [/var/lib/mysql]
# Mon, 21 Sep 2026 23:09:17 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 21 Sep 2026 23:09:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Sep 2026 23:09:17 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 21 Sep 2026 23:09:17 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b20e21573231a46ffd267a5791372e98726f9d11dd03deafc22fd5d18be5deea`  
		Last Modified: Mon, 21 Sep 2026 23:04:13 GMT  
		Size: 46.5 MB (46486872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3da5a8d5edbf0be97b026be4c1c5ddf681829d79a21674a06faf3d7b0411db3c`  
		Last Modified: Mon, 21 Sep 2026 23:09:45 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b9f295eb849b2eb074a1c710e56992483657e9232651464245d0e591987db5a`  
		Last Modified: Mon, 21 Sep 2026 23:09:53 GMT  
		Size: 737.5 KB (737526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6be4adf735ca3632e65d150709806245be650fbf48e7e1986b77788a8146c359`  
		Last Modified: Mon, 21 Sep 2026 23:09:53 GMT  
		Size: 5.8 MB (5824191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f1ace268c37904c174f19891793114adc47a8fe347da7be4bb38f60480831da`  
		Last Modified: Mon, 21 Sep 2026 23:09:53 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eebc42e6f78939280abe7dc0a2930177e00e424cbf2e5f3294c5169a8d5647c0`  
		Last Modified: Mon, 21 Sep 2026 23:09:53 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb58f96fe4494fe31e39a842757b541e4efe827ae9a6bf23ea3b83e4c6e39294`  
		Last Modified: Mon, 21 Sep 2026 23:09:56 GMT  
		Size: 57.4 MB (57434784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:070dfb8de89b2a3e04a78e5e31ebf3105edc9b7ade18f2fe95f626be2fdd6a0f`  
		Last Modified: Mon, 21 Sep 2026 23:09:54 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2621ba5f41b09b2da5c3a9079448554687e1ed6536981107eec7bac27e1bcde2`  
		Last Modified: Mon, 21 Sep 2026 23:09:58 GMT  
		Size: 158.2 MB (158242261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25e22dbe9362df1586bc53875635061ed6fd5c9bbeba7c5775d6a03299a825e8`  
		Last Modified: Mon, 21 Sep 2026 23:09:55 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:innovation` - unknown; unknown

```console
$ docker pull mysql@sha256:f73d97e9599d81b9e43ce58653e3235678c9c77588da26952bb3591ca690a03b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17451523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f532b4002427f61d42e950d4d0f687a12ee5368503c38ef4d4c734f3c123937b`

```dockerfile
```

-	Layers:
	-	`sha256:8cf9b4d364d54a9696eeb34026b479a9c9a295c2df6532b6efaf5ac94de11cb7`  
		Last Modified: Mon, 21 Sep 2026 23:09:53 GMT  
		Size: 17.4 MB (17415884 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b578572a81a0dd188969c7964ee2ac2245afaee051337e913e6a6797db526ecc`  
		Last Modified: Mon, 21 Sep 2026 23:09:53 GMT  
		Size: 35.6 KB (35639 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:innovation-oracle`

```console
$ docker pull mysql@sha256:ade067ae2fb15eeb6143e81185afe22573e3b3addc58aaf90c41999fa6883991
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:innovation-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:74849bf6226b8dafdb1258e90fab588de1e597a80487e744986d9d85d6a65836
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.4 MB (272359450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0485e3d5a3f3cb2cfd593047ab321a420f7026ec4ea0adc20e65eb42d420db68`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 21 Sep 2026 23:04:16 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 21 Sep 2026 23:04:16 GMT
CMD ["/bin/bash"]
# Mon, 21 Sep 2026 23:06:56 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 21 Sep 2026 23:06:57 GMT
ENV GOSU_VERSION=1.19
# Mon, 21 Sep 2026 23:06:57 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 21 Sep 2026 23:07:31 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 21 Sep 2026 23:07:31 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 21 Sep 2026 23:07:31 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 21 Sep 2026 23:07:31 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Mon, 21 Sep 2026 23:07:32 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 21 Sep 2026 23:08:08 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 21 Sep 2026 23:08:08 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 21 Sep 2026 23:08:08 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Mon, 21 Sep 2026 23:08:55 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 21 Sep 2026 23:08:55 GMT
VOLUME [/var/lib/mysql]
# Mon, 21 Sep 2026 23:08:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 21 Sep 2026 23:08:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Sep 2026 23:08:55 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 21 Sep 2026 23:08:55 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:6361e9307160bba9b9394334d9e85b77c416081e54c8ba8c6d0806dc0c4d5f4b`  
		Last Modified: Mon, 21 Sep 2026 23:04:27 GMT  
		Size: 47.9 MB (47941513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3534c258aabac4c46b37947f2089c39baa310568391f96404233e4c9df894e3a`  
		Last Modified: Mon, 21 Sep 2026 23:09:29 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a7fe1a85aa5548d42fcb8c335f7444be477ed2e9c73b20c83e191abfc71e61e`  
		Last Modified: Mon, 21 Sep 2026 23:09:29 GMT  
		Size: 783.5 KB (783541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30e12685077b4e92fbc033480c85f54689f367be5135b9e03aff46b36c09d2a3`  
		Last Modified: Mon, 21 Sep 2026 23:09:29 GMT  
		Size: 6.2 MB (6197645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb5715bbbeccb7f7385fa58362ba085fbf743725a960a1357d8f232e731716d8`  
		Last Modified: Mon, 21 Sep 2026 23:09:29 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59270b130aec3d2cdff3fc51e1058cd7b3faecd61bb4461ec3c17b6494a1ebdc`  
		Last Modified: Mon, 21 Sep 2026 23:09:30 GMT  
		Size: 341.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6de6b644e38e2677f72d5e17463e85fa1383d4425b4a4e731aa8799a4d666c80`  
		Last Modified: Mon, 21 Sep 2026 23:09:32 GMT  
		Size: 57.5 MB (57455040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:115b4caa98402fb25e0f4d1897406e658770f9c71967ee6ad98a120b51ce7d3c`  
		Last Modified: Mon, 21 Sep 2026 23:09:30 GMT  
		Size: 326.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e394e0b2e6500fe3fda549e1ab6ed1645db3882670433888ffa6126aa3f83c70`  
		Last Modified: Mon, 21 Sep 2026 23:09:34 GMT  
		Size: 160.0 MB (159972331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f7644b7ee9b3f7889f3fe5cf3c86f2cae37492fafd58e298846aa1122751a41`  
		Last Modified: Mon, 21 Sep 2026 23:09:31 GMT  
		Size: 5.2 KB (5223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:innovation-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:da9f9956c561a82558cf5b75587eccaa3517bff02b94594b9438fba32d303e9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17452709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23c12b5d4c80cb4e0484d94eff80749e14d89a1993cd025ec8207b3587783064`

```dockerfile
```

-	Layers:
	-	`sha256:8b2919a887f80355a9f9687687048641fb52398a9e06e216fa82eef029f2cbd2`  
		Last Modified: Mon, 21 Sep 2026 23:09:30 GMT  
		Size: 17.4 MB (17417411 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ef1d56738a4a943ed88423c36741edee4314969e32c404c124852fde2dfbc3f7`  
		Last Modified: Mon, 21 Sep 2026 23:09:29 GMT  
		Size: 35.3 KB (35298 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:innovation-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:082788c625f6691d3dc3fde8669340cfb8bc0377c06e88889382f5f28e1bb81b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.7 MB (268735017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1ebb12281ad097d611394946626b6baf897511844d9a684d2cb39b15b83c117`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 21 Sep 2026 23:04:02 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 21 Sep 2026 23:04:02 GMT
CMD ["/bin/bash"]
# Mon, 21 Sep 2026 23:07:01 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 21 Sep 2026 23:07:03 GMT
ENV GOSU_VERSION=1.19
# Mon, 21 Sep 2026 23:07:03 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 21 Sep 2026 23:07:40 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 21 Sep 2026 23:07:41 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 21 Sep 2026 23:07:41 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 21 Sep 2026 23:07:41 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Mon, 21 Sep 2026 23:07:41 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 21 Sep 2026 23:08:23 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 21 Sep 2026 23:08:24 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 21 Sep 2026 23:08:24 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Mon, 21 Sep 2026 23:09:17 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 21 Sep 2026 23:09:17 GMT
VOLUME [/var/lib/mysql]
# Mon, 21 Sep 2026 23:09:17 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 21 Sep 2026 23:09:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Sep 2026 23:09:17 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 21 Sep 2026 23:09:17 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b20e21573231a46ffd267a5791372e98726f9d11dd03deafc22fd5d18be5deea`  
		Last Modified: Mon, 21 Sep 2026 23:04:13 GMT  
		Size: 46.5 MB (46486872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3da5a8d5edbf0be97b026be4c1c5ddf681829d79a21674a06faf3d7b0411db3c`  
		Last Modified: Mon, 21 Sep 2026 23:09:45 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b9f295eb849b2eb074a1c710e56992483657e9232651464245d0e591987db5a`  
		Last Modified: Mon, 21 Sep 2026 23:09:53 GMT  
		Size: 737.5 KB (737526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6be4adf735ca3632e65d150709806245be650fbf48e7e1986b77788a8146c359`  
		Last Modified: Mon, 21 Sep 2026 23:09:53 GMT  
		Size: 5.8 MB (5824191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f1ace268c37904c174f19891793114adc47a8fe347da7be4bb38f60480831da`  
		Last Modified: Mon, 21 Sep 2026 23:09:53 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eebc42e6f78939280abe7dc0a2930177e00e424cbf2e5f3294c5169a8d5647c0`  
		Last Modified: Mon, 21 Sep 2026 23:09:53 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb58f96fe4494fe31e39a842757b541e4efe827ae9a6bf23ea3b83e4c6e39294`  
		Last Modified: Mon, 21 Sep 2026 23:09:56 GMT  
		Size: 57.4 MB (57434784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:070dfb8de89b2a3e04a78e5e31ebf3105edc9b7ade18f2fe95f626be2fdd6a0f`  
		Last Modified: Mon, 21 Sep 2026 23:09:54 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2621ba5f41b09b2da5c3a9079448554687e1ed6536981107eec7bac27e1bcde2`  
		Last Modified: Mon, 21 Sep 2026 23:09:58 GMT  
		Size: 158.2 MB (158242261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25e22dbe9362df1586bc53875635061ed6fd5c9bbeba7c5775d6a03299a825e8`  
		Last Modified: Mon, 21 Sep 2026 23:09:55 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:innovation-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:f73d97e9599d81b9e43ce58653e3235678c9c77588da26952bb3591ca690a03b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17451523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f532b4002427f61d42e950d4d0f687a12ee5368503c38ef4d4c734f3c123937b`

```dockerfile
```

-	Layers:
	-	`sha256:8cf9b4d364d54a9696eeb34026b479a9c9a295c2df6532b6efaf5ac94de11cb7`  
		Last Modified: Mon, 21 Sep 2026 23:09:53 GMT  
		Size: 17.4 MB (17415884 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b578572a81a0dd188969c7964ee2ac2245afaee051337e913e6a6797db526ecc`  
		Last Modified: Mon, 21 Sep 2026 23:09:53 GMT  
		Size: 35.6 KB (35639 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:innovation-oraclelinux9`

```console
$ docker pull mysql@sha256:ade067ae2fb15eeb6143e81185afe22573e3b3addc58aaf90c41999fa6883991
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:innovation-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:74849bf6226b8dafdb1258e90fab588de1e597a80487e744986d9d85d6a65836
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.4 MB (272359450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0485e3d5a3f3cb2cfd593047ab321a420f7026ec4ea0adc20e65eb42d420db68`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 21 Sep 2026 23:04:16 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 21 Sep 2026 23:04:16 GMT
CMD ["/bin/bash"]
# Mon, 21 Sep 2026 23:06:56 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 21 Sep 2026 23:06:57 GMT
ENV GOSU_VERSION=1.19
# Mon, 21 Sep 2026 23:06:57 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 21 Sep 2026 23:07:31 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 21 Sep 2026 23:07:31 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 21 Sep 2026 23:07:31 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 21 Sep 2026 23:07:31 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Mon, 21 Sep 2026 23:07:32 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 21 Sep 2026 23:08:08 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 21 Sep 2026 23:08:08 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 21 Sep 2026 23:08:08 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Mon, 21 Sep 2026 23:08:55 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 21 Sep 2026 23:08:55 GMT
VOLUME [/var/lib/mysql]
# Mon, 21 Sep 2026 23:08:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 21 Sep 2026 23:08:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Sep 2026 23:08:55 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 21 Sep 2026 23:08:55 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:6361e9307160bba9b9394334d9e85b77c416081e54c8ba8c6d0806dc0c4d5f4b`  
		Last Modified: Mon, 21 Sep 2026 23:04:27 GMT  
		Size: 47.9 MB (47941513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3534c258aabac4c46b37947f2089c39baa310568391f96404233e4c9df894e3a`  
		Last Modified: Mon, 21 Sep 2026 23:09:29 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a7fe1a85aa5548d42fcb8c335f7444be477ed2e9c73b20c83e191abfc71e61e`  
		Last Modified: Mon, 21 Sep 2026 23:09:29 GMT  
		Size: 783.5 KB (783541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30e12685077b4e92fbc033480c85f54689f367be5135b9e03aff46b36c09d2a3`  
		Last Modified: Mon, 21 Sep 2026 23:09:29 GMT  
		Size: 6.2 MB (6197645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb5715bbbeccb7f7385fa58362ba085fbf743725a960a1357d8f232e731716d8`  
		Last Modified: Mon, 21 Sep 2026 23:09:29 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59270b130aec3d2cdff3fc51e1058cd7b3faecd61bb4461ec3c17b6494a1ebdc`  
		Last Modified: Mon, 21 Sep 2026 23:09:30 GMT  
		Size: 341.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6de6b644e38e2677f72d5e17463e85fa1383d4425b4a4e731aa8799a4d666c80`  
		Last Modified: Mon, 21 Sep 2026 23:09:32 GMT  
		Size: 57.5 MB (57455040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:115b4caa98402fb25e0f4d1897406e658770f9c71967ee6ad98a120b51ce7d3c`  
		Last Modified: Mon, 21 Sep 2026 23:09:30 GMT  
		Size: 326.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e394e0b2e6500fe3fda549e1ab6ed1645db3882670433888ffa6126aa3f83c70`  
		Last Modified: Mon, 21 Sep 2026 23:09:34 GMT  
		Size: 160.0 MB (159972331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f7644b7ee9b3f7889f3fe5cf3c86f2cae37492fafd58e298846aa1122751a41`  
		Last Modified: Mon, 21 Sep 2026 23:09:31 GMT  
		Size: 5.2 KB (5223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:innovation-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:da9f9956c561a82558cf5b75587eccaa3517bff02b94594b9438fba32d303e9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17452709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23c12b5d4c80cb4e0484d94eff80749e14d89a1993cd025ec8207b3587783064`

```dockerfile
```

-	Layers:
	-	`sha256:8b2919a887f80355a9f9687687048641fb52398a9e06e216fa82eef029f2cbd2`  
		Last Modified: Mon, 21 Sep 2026 23:09:30 GMT  
		Size: 17.4 MB (17417411 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ef1d56738a4a943ed88423c36741edee4314969e32c404c124852fde2dfbc3f7`  
		Last Modified: Mon, 21 Sep 2026 23:09:29 GMT  
		Size: 35.3 KB (35298 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:innovation-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:082788c625f6691d3dc3fde8669340cfb8bc0377c06e88889382f5f28e1bb81b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.7 MB (268735017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1ebb12281ad097d611394946626b6baf897511844d9a684d2cb39b15b83c117`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 21 Sep 2026 23:04:02 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 21 Sep 2026 23:04:02 GMT
CMD ["/bin/bash"]
# Mon, 21 Sep 2026 23:07:01 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 21 Sep 2026 23:07:03 GMT
ENV GOSU_VERSION=1.19
# Mon, 21 Sep 2026 23:07:03 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 21 Sep 2026 23:07:40 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 21 Sep 2026 23:07:41 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 21 Sep 2026 23:07:41 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 21 Sep 2026 23:07:41 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Mon, 21 Sep 2026 23:07:41 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 21 Sep 2026 23:08:23 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 21 Sep 2026 23:08:24 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 21 Sep 2026 23:08:24 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Mon, 21 Sep 2026 23:09:17 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 21 Sep 2026 23:09:17 GMT
VOLUME [/var/lib/mysql]
# Mon, 21 Sep 2026 23:09:17 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 21 Sep 2026 23:09:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Sep 2026 23:09:17 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 21 Sep 2026 23:09:17 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b20e21573231a46ffd267a5791372e98726f9d11dd03deafc22fd5d18be5deea`  
		Last Modified: Mon, 21 Sep 2026 23:04:13 GMT  
		Size: 46.5 MB (46486872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3da5a8d5edbf0be97b026be4c1c5ddf681829d79a21674a06faf3d7b0411db3c`  
		Last Modified: Mon, 21 Sep 2026 23:09:45 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b9f295eb849b2eb074a1c710e56992483657e9232651464245d0e591987db5a`  
		Last Modified: Mon, 21 Sep 2026 23:09:53 GMT  
		Size: 737.5 KB (737526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6be4adf735ca3632e65d150709806245be650fbf48e7e1986b77788a8146c359`  
		Last Modified: Mon, 21 Sep 2026 23:09:53 GMT  
		Size: 5.8 MB (5824191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f1ace268c37904c174f19891793114adc47a8fe347da7be4bb38f60480831da`  
		Last Modified: Mon, 21 Sep 2026 23:09:53 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eebc42e6f78939280abe7dc0a2930177e00e424cbf2e5f3294c5169a8d5647c0`  
		Last Modified: Mon, 21 Sep 2026 23:09:53 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb58f96fe4494fe31e39a842757b541e4efe827ae9a6bf23ea3b83e4c6e39294`  
		Last Modified: Mon, 21 Sep 2026 23:09:56 GMT  
		Size: 57.4 MB (57434784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:070dfb8de89b2a3e04a78e5e31ebf3105edc9b7ade18f2fe95f626be2fdd6a0f`  
		Last Modified: Mon, 21 Sep 2026 23:09:54 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2621ba5f41b09b2da5c3a9079448554687e1ed6536981107eec7bac27e1bcde2`  
		Last Modified: Mon, 21 Sep 2026 23:09:58 GMT  
		Size: 158.2 MB (158242261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25e22dbe9362df1586bc53875635061ed6fd5c9bbeba7c5775d6a03299a825e8`  
		Last Modified: Mon, 21 Sep 2026 23:09:55 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:innovation-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:f73d97e9599d81b9e43ce58653e3235678c9c77588da26952bb3591ca690a03b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17451523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f532b4002427f61d42e950d4d0f687a12ee5368503c38ef4d4c734f3c123937b`

```dockerfile
```

-	Layers:
	-	`sha256:8cf9b4d364d54a9696eeb34026b479a9c9a295c2df6532b6efaf5ac94de11cb7`  
		Last Modified: Mon, 21 Sep 2026 23:09:53 GMT  
		Size: 17.4 MB (17415884 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b578572a81a0dd188969c7964ee2ac2245afaee051337e913e6a6797db526ecc`  
		Last Modified: Mon, 21 Sep 2026 23:09:53 GMT  
		Size: 35.6 KB (35639 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:latest`

```console
$ docker pull mysql@sha256:ade067ae2fb15eeb6143e81185afe22573e3b3addc58aaf90c41999fa6883991
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:latest` - linux; amd64

```console
$ docker pull mysql@sha256:74849bf6226b8dafdb1258e90fab588de1e597a80487e744986d9d85d6a65836
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.4 MB (272359450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0485e3d5a3f3cb2cfd593047ab321a420f7026ec4ea0adc20e65eb42d420db68`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 21 Sep 2026 23:04:16 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 21 Sep 2026 23:04:16 GMT
CMD ["/bin/bash"]
# Mon, 21 Sep 2026 23:06:56 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 21 Sep 2026 23:06:57 GMT
ENV GOSU_VERSION=1.19
# Mon, 21 Sep 2026 23:06:57 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 21 Sep 2026 23:07:31 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 21 Sep 2026 23:07:31 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 21 Sep 2026 23:07:31 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 21 Sep 2026 23:07:31 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Mon, 21 Sep 2026 23:07:32 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 21 Sep 2026 23:08:08 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 21 Sep 2026 23:08:08 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 21 Sep 2026 23:08:08 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Mon, 21 Sep 2026 23:08:55 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 21 Sep 2026 23:08:55 GMT
VOLUME [/var/lib/mysql]
# Mon, 21 Sep 2026 23:08:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 21 Sep 2026 23:08:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Sep 2026 23:08:55 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 21 Sep 2026 23:08:55 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:6361e9307160bba9b9394334d9e85b77c416081e54c8ba8c6d0806dc0c4d5f4b`  
		Last Modified: Mon, 21 Sep 2026 23:04:27 GMT  
		Size: 47.9 MB (47941513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3534c258aabac4c46b37947f2089c39baa310568391f96404233e4c9df894e3a`  
		Last Modified: Mon, 21 Sep 2026 23:09:29 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a7fe1a85aa5548d42fcb8c335f7444be477ed2e9c73b20c83e191abfc71e61e`  
		Last Modified: Mon, 21 Sep 2026 23:09:29 GMT  
		Size: 783.5 KB (783541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30e12685077b4e92fbc033480c85f54689f367be5135b9e03aff46b36c09d2a3`  
		Last Modified: Mon, 21 Sep 2026 23:09:29 GMT  
		Size: 6.2 MB (6197645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb5715bbbeccb7f7385fa58362ba085fbf743725a960a1357d8f232e731716d8`  
		Last Modified: Mon, 21 Sep 2026 23:09:29 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59270b130aec3d2cdff3fc51e1058cd7b3faecd61bb4461ec3c17b6494a1ebdc`  
		Last Modified: Mon, 21 Sep 2026 23:09:30 GMT  
		Size: 341.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6de6b644e38e2677f72d5e17463e85fa1383d4425b4a4e731aa8799a4d666c80`  
		Last Modified: Mon, 21 Sep 2026 23:09:32 GMT  
		Size: 57.5 MB (57455040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:115b4caa98402fb25e0f4d1897406e658770f9c71967ee6ad98a120b51ce7d3c`  
		Last Modified: Mon, 21 Sep 2026 23:09:30 GMT  
		Size: 326.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e394e0b2e6500fe3fda549e1ab6ed1645db3882670433888ffa6126aa3f83c70`  
		Last Modified: Mon, 21 Sep 2026 23:09:34 GMT  
		Size: 160.0 MB (159972331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f7644b7ee9b3f7889f3fe5cf3c86f2cae37492fafd58e298846aa1122751a41`  
		Last Modified: Mon, 21 Sep 2026 23:09:31 GMT  
		Size: 5.2 KB (5223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:latest` - unknown; unknown

```console
$ docker pull mysql@sha256:da9f9956c561a82558cf5b75587eccaa3517bff02b94594b9438fba32d303e9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17452709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23c12b5d4c80cb4e0484d94eff80749e14d89a1993cd025ec8207b3587783064`

```dockerfile
```

-	Layers:
	-	`sha256:8b2919a887f80355a9f9687687048641fb52398a9e06e216fa82eef029f2cbd2`  
		Last Modified: Mon, 21 Sep 2026 23:09:30 GMT  
		Size: 17.4 MB (17417411 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ef1d56738a4a943ed88423c36741edee4314969e32c404c124852fde2dfbc3f7`  
		Last Modified: Mon, 21 Sep 2026 23:09:29 GMT  
		Size: 35.3 KB (35298 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:latest` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:082788c625f6691d3dc3fde8669340cfb8bc0377c06e88889382f5f28e1bb81b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.7 MB (268735017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1ebb12281ad097d611394946626b6baf897511844d9a684d2cb39b15b83c117`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 21 Sep 2026 23:04:02 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 21 Sep 2026 23:04:02 GMT
CMD ["/bin/bash"]
# Mon, 21 Sep 2026 23:07:01 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 21 Sep 2026 23:07:03 GMT
ENV GOSU_VERSION=1.19
# Mon, 21 Sep 2026 23:07:03 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 21 Sep 2026 23:07:40 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 21 Sep 2026 23:07:41 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 21 Sep 2026 23:07:41 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 21 Sep 2026 23:07:41 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Mon, 21 Sep 2026 23:07:41 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 21 Sep 2026 23:08:23 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 21 Sep 2026 23:08:24 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 21 Sep 2026 23:08:24 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Mon, 21 Sep 2026 23:09:17 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 21 Sep 2026 23:09:17 GMT
VOLUME [/var/lib/mysql]
# Mon, 21 Sep 2026 23:09:17 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 21 Sep 2026 23:09:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Sep 2026 23:09:17 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 21 Sep 2026 23:09:17 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b20e21573231a46ffd267a5791372e98726f9d11dd03deafc22fd5d18be5deea`  
		Last Modified: Mon, 21 Sep 2026 23:04:13 GMT  
		Size: 46.5 MB (46486872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3da5a8d5edbf0be97b026be4c1c5ddf681829d79a21674a06faf3d7b0411db3c`  
		Last Modified: Mon, 21 Sep 2026 23:09:45 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b9f295eb849b2eb074a1c710e56992483657e9232651464245d0e591987db5a`  
		Last Modified: Mon, 21 Sep 2026 23:09:53 GMT  
		Size: 737.5 KB (737526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6be4adf735ca3632e65d150709806245be650fbf48e7e1986b77788a8146c359`  
		Last Modified: Mon, 21 Sep 2026 23:09:53 GMT  
		Size: 5.8 MB (5824191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f1ace268c37904c174f19891793114adc47a8fe347da7be4bb38f60480831da`  
		Last Modified: Mon, 21 Sep 2026 23:09:53 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eebc42e6f78939280abe7dc0a2930177e00e424cbf2e5f3294c5169a8d5647c0`  
		Last Modified: Mon, 21 Sep 2026 23:09:53 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb58f96fe4494fe31e39a842757b541e4efe827ae9a6bf23ea3b83e4c6e39294`  
		Last Modified: Mon, 21 Sep 2026 23:09:56 GMT  
		Size: 57.4 MB (57434784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:070dfb8de89b2a3e04a78e5e31ebf3105edc9b7ade18f2fe95f626be2fdd6a0f`  
		Last Modified: Mon, 21 Sep 2026 23:09:54 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2621ba5f41b09b2da5c3a9079448554687e1ed6536981107eec7bac27e1bcde2`  
		Last Modified: Mon, 21 Sep 2026 23:09:58 GMT  
		Size: 158.2 MB (158242261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25e22dbe9362df1586bc53875635061ed6fd5c9bbeba7c5775d6a03299a825e8`  
		Last Modified: Mon, 21 Sep 2026 23:09:55 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:latest` - unknown; unknown

```console
$ docker pull mysql@sha256:f73d97e9599d81b9e43ce58653e3235678c9c77588da26952bb3591ca690a03b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17451523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f532b4002427f61d42e950d4d0f687a12ee5368503c38ef4d4c734f3c123937b`

```dockerfile
```

-	Layers:
	-	`sha256:8cf9b4d364d54a9696eeb34026b479a9c9a295c2df6532b6efaf5ac94de11cb7`  
		Last Modified: Mon, 21 Sep 2026 23:09:53 GMT  
		Size: 17.4 MB (17415884 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b578572a81a0dd188969c7964ee2ac2245afaee051337e913e6a6797db526ecc`  
		Last Modified: Mon, 21 Sep 2026 23:09:53 GMT  
		Size: 35.6 KB (35639 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:lts`

```console
$ docker pull mysql@sha256:30a0abfa7b502a496e12339b54cd07aaa70363396dc4b8e8a72a92804a505cd6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:lts` - linux; amd64

```console
$ docker pull mysql@sha256:d55f5ba0270ae9824697021ed8a3b651f952f79be366fea1816795850a1f53d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.9 MB (270918920 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ab50f3dea0edf3235cdac735e865e5778191d8eac4f579a068cc6f6233dd842`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 21 Sep 2026 23:04:16 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 21 Sep 2026 23:04:16 GMT
CMD ["/bin/bash"]
# Mon, 21 Sep 2026 23:06:55 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 21 Sep 2026 23:06:57 GMT
ENV GOSU_VERSION=1.19
# Mon, 21 Sep 2026 23:06:57 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 21 Sep 2026 23:07:32 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 21 Sep 2026 23:07:33 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 21 Sep 2026 23:07:33 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 21 Sep 2026 23:07:33 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Mon, 21 Sep 2026 23:07:33 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 21 Sep 2026 23:08:12 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 21 Sep 2026 23:08:12 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 21 Sep 2026 23:08:12 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 21 Sep 2026 23:09:00 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 21 Sep 2026 23:09:00 GMT
VOLUME [/var/lib/mysql]
# Mon, 21 Sep 2026 23:09:01 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 21 Sep 2026 23:09:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Sep 2026 23:09:01 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 21 Sep 2026 23:09:01 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:6361e9307160bba9b9394334d9e85b77c416081e54c8ba8c6d0806dc0c4d5f4b`  
		Last Modified: Mon, 21 Sep 2026 23:04:27 GMT  
		Size: 47.9 MB (47941513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3534c258aabac4c46b37947f2089c39baa310568391f96404233e4c9df894e3a`  
		Last Modified: Mon, 21 Sep 2026 23:09:29 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a7fe1a85aa5548d42fcb8c335f7444be477ed2e9c73b20c83e191abfc71e61e`  
		Last Modified: Mon, 21 Sep 2026 23:09:29 GMT  
		Size: 783.5 KB (783541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d3079708ede27d8bc1e8917a7a57d22a4f12dd52805a1edb06d88246f3e8d54`  
		Last Modified: Mon, 21 Sep 2026 23:09:36 GMT  
		Size: 6.2 MB (6197636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10425730d138d643e322a969dcad430d494d973f302c01a9b39d55264ab96898`  
		Last Modified: Mon, 21 Sep 2026 23:09:36 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:409c6fcbb48db28ec5f7e2bad1daadcf942c47000679bf160257ace550c1c8fd`  
		Last Modified: Mon, 21 Sep 2026 23:09:36 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12209f6c36967e427eb69bb9e0556ec90e9b890417c09aa5c6d1a52d639a9df4`  
		Last Modified: Mon, 21 Sep 2026 23:09:38 GMT  
		Size: 57.1 MB (57052021 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff5be3dcfc23f93bb57d41cac2d92deed02cfb67b6a8e8cdebd64b90cdda3711`  
		Last Modified: Mon, 21 Sep 2026 23:09:37 GMT  
		Size: 319.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:628e0550c24646e9b5f9d7f5b8b8b143e864d507b15a771bfa67dd6118dcd62c`  
		Last Modified: Mon, 21 Sep 2026 23:09:41 GMT  
		Size: 158.9 MB (158934845 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee6d08f141afbb57102bbc8cc155bfb9ef716ad1088815cee845351c665a0691`  
		Last Modified: Mon, 21 Sep 2026 23:09:38 GMT  
		Size: 5.2 KB (5220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:lts` - unknown; unknown

```console
$ docker pull mysql@sha256:75915e8bd520e25e7b0cc0c5bd1949ed9f8d974cd8e134298f67f57ba99245cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfd59e8115ba74a266ce7031414aabbfa445a51dfbc3e31316078083516796b6`

```dockerfile
```

-	Layers:
	-	`sha256:8b57eaf4e4d1086272271f0f9c6bc9cd24e4105bf006c9236220557129daded1`  
		Last Modified: Mon, 21 Sep 2026 23:09:37 GMT  
		Size: 16.8 MB (16799187 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:61d952e276ca7d14dbac94faa133a341a5734c620503b69eea04efec715380c7`  
		Last Modified: Mon, 21 Sep 2026 23:09:36 GMT  
		Size: 34.2 KB (34208 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:lts` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:98b9662b31ea8c579318cc48951c6218a7f5c0c1cce6542f9f8a52955ce46f3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.4 MB (267394110 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32ee0ade16ddb58a8ee1e61c2535443abfcca0609797ccf1f0880f79fac867c2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 21 Sep 2026 23:04:02 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 21 Sep 2026 23:04:02 GMT
CMD ["/bin/bash"]
# Mon, 21 Sep 2026 23:07:01 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 21 Sep 2026 23:07:03 GMT
ENV GOSU_VERSION=1.19
# Mon, 21 Sep 2026 23:07:03 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 21 Sep 2026 23:07:41 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 21 Sep 2026 23:07:42 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 21 Sep 2026 23:07:42 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 21 Sep 2026 23:07:42 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Mon, 21 Sep 2026 23:07:42 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 21 Sep 2026 23:08:24 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 21 Sep 2026 23:08:24 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 21 Sep 2026 23:08:24 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 21 Sep 2026 23:09:15 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 21 Sep 2026 23:09:15 GMT
VOLUME [/var/lib/mysql]
# Mon, 21 Sep 2026 23:09:15 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 21 Sep 2026 23:09:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Sep 2026 23:09:15 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 21 Sep 2026 23:09:15 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b20e21573231a46ffd267a5791372e98726f9d11dd03deafc22fd5d18be5deea`  
		Last Modified: Mon, 21 Sep 2026 23:04:13 GMT  
		Size: 46.5 MB (46486872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3da5a8d5edbf0be97b026be4c1c5ddf681829d79a21674a06faf3d7b0411db3c`  
		Last Modified: Mon, 21 Sep 2026 23:09:45 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91aebaccc46af11c094b5617d0ac927d9fe9ecb520e73d562f698046bd567a58`  
		Last Modified: Mon, 21 Sep 2026 23:09:45 GMT  
		Size: 737.5 KB (737526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6a8b3fb25b368bfa25e5b63cfb765b1fd81c409f51a970d921915f720ec6c3b`  
		Last Modified: Mon, 21 Sep 2026 23:09:51 GMT  
		Size: 5.8 MB (5824044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8830487c6aa83e51d4ec5d813ddcb7aadc27139b53a9c20cff738a239ccded23`  
		Last Modified: Mon, 21 Sep 2026 23:09:45 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f4fea18d212f55b7f04a580dec0bfa6d9e011bdbb1f1525bc36ab71f2af1b6e`  
		Last Modified: Mon, 21 Sep 2026 23:09:51 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ca075ba196d95014ed9363176ecfe7793c5fc753fdd272155d6a6d2c4e348f0`  
		Last Modified: Mon, 21 Sep 2026 23:09:53 GMT  
		Size: 57.1 MB (57119142 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc4057ee530b0939143b17785a7ac14469b157321f8748b1be4f238e39ab7e57`  
		Last Modified: Mon, 21 Sep 2026 23:09:51 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:612c44fe0ce91ac2ddfa47a3f63948378ce63f1f6dcbe4e7f07df108ec3872b4`  
		Last Modified: Mon, 21 Sep 2026 23:09:55 GMT  
		Size: 157.2 MB (157217157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a705701f198b677e0bb69faec85e8b07571c056a68710b35b115db2aa538060c`  
		Last Modified: Mon, 21 Sep 2026 23:09:52 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:lts` - unknown; unknown

```console
$ docker pull mysql@sha256:f3c05898ce2a1651199fbea961c95f5188f0f602faa33f6459f2b5317c7d22c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16832136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b121c5036bb351473b555cb90be2302ca761b2337bc18e2c5aab027a5eb3324`

```dockerfile
```

-	Layers:
	-	`sha256:8a9bac6bfa8f8c3291e2e42162deae5205a31bb7f5cd7165142b402d20d92fa1`  
		Last Modified: Mon, 21 Sep 2026 23:09:51 GMT  
		Size: 16.8 MB (16797623 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:662ac4165e92d11ed035d6ab8fe449b5e0e9de7d7b53f9f91dc37d0916da12cf`  
		Last Modified: Mon, 21 Sep 2026 23:09:51 GMT  
		Size: 34.5 KB (34513 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:lts-oracle`

```console
$ docker pull mysql@sha256:30a0abfa7b502a496e12339b54cd07aaa70363396dc4b8e8a72a92804a505cd6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:lts-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:d55f5ba0270ae9824697021ed8a3b651f952f79be366fea1816795850a1f53d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.9 MB (270918920 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ab50f3dea0edf3235cdac735e865e5778191d8eac4f579a068cc6f6233dd842`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 21 Sep 2026 23:04:16 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 21 Sep 2026 23:04:16 GMT
CMD ["/bin/bash"]
# Mon, 21 Sep 2026 23:06:55 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 21 Sep 2026 23:06:57 GMT
ENV GOSU_VERSION=1.19
# Mon, 21 Sep 2026 23:06:57 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 21 Sep 2026 23:07:32 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 21 Sep 2026 23:07:33 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 21 Sep 2026 23:07:33 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 21 Sep 2026 23:07:33 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Mon, 21 Sep 2026 23:07:33 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 21 Sep 2026 23:08:12 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 21 Sep 2026 23:08:12 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 21 Sep 2026 23:08:12 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 21 Sep 2026 23:09:00 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 21 Sep 2026 23:09:00 GMT
VOLUME [/var/lib/mysql]
# Mon, 21 Sep 2026 23:09:01 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 21 Sep 2026 23:09:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Sep 2026 23:09:01 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 21 Sep 2026 23:09:01 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:6361e9307160bba9b9394334d9e85b77c416081e54c8ba8c6d0806dc0c4d5f4b`  
		Last Modified: Mon, 21 Sep 2026 23:04:27 GMT  
		Size: 47.9 MB (47941513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3534c258aabac4c46b37947f2089c39baa310568391f96404233e4c9df894e3a`  
		Last Modified: Mon, 21 Sep 2026 23:09:29 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a7fe1a85aa5548d42fcb8c335f7444be477ed2e9c73b20c83e191abfc71e61e`  
		Last Modified: Mon, 21 Sep 2026 23:09:29 GMT  
		Size: 783.5 KB (783541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d3079708ede27d8bc1e8917a7a57d22a4f12dd52805a1edb06d88246f3e8d54`  
		Last Modified: Mon, 21 Sep 2026 23:09:36 GMT  
		Size: 6.2 MB (6197636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10425730d138d643e322a969dcad430d494d973f302c01a9b39d55264ab96898`  
		Last Modified: Mon, 21 Sep 2026 23:09:36 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:409c6fcbb48db28ec5f7e2bad1daadcf942c47000679bf160257ace550c1c8fd`  
		Last Modified: Mon, 21 Sep 2026 23:09:36 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12209f6c36967e427eb69bb9e0556ec90e9b890417c09aa5c6d1a52d639a9df4`  
		Last Modified: Mon, 21 Sep 2026 23:09:38 GMT  
		Size: 57.1 MB (57052021 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff5be3dcfc23f93bb57d41cac2d92deed02cfb67b6a8e8cdebd64b90cdda3711`  
		Last Modified: Mon, 21 Sep 2026 23:09:37 GMT  
		Size: 319.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:628e0550c24646e9b5f9d7f5b8b8b143e864d507b15a771bfa67dd6118dcd62c`  
		Last Modified: Mon, 21 Sep 2026 23:09:41 GMT  
		Size: 158.9 MB (158934845 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee6d08f141afbb57102bbc8cc155bfb9ef716ad1088815cee845351c665a0691`  
		Last Modified: Mon, 21 Sep 2026 23:09:38 GMT  
		Size: 5.2 KB (5220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:lts-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:75915e8bd520e25e7b0cc0c5bd1949ed9f8d974cd8e134298f67f57ba99245cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfd59e8115ba74a266ce7031414aabbfa445a51dfbc3e31316078083516796b6`

```dockerfile
```

-	Layers:
	-	`sha256:8b57eaf4e4d1086272271f0f9c6bc9cd24e4105bf006c9236220557129daded1`  
		Last Modified: Mon, 21 Sep 2026 23:09:37 GMT  
		Size: 16.8 MB (16799187 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:61d952e276ca7d14dbac94faa133a341a5734c620503b69eea04efec715380c7`  
		Last Modified: Mon, 21 Sep 2026 23:09:36 GMT  
		Size: 34.2 KB (34208 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:lts-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:98b9662b31ea8c579318cc48951c6218a7f5c0c1cce6542f9f8a52955ce46f3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.4 MB (267394110 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32ee0ade16ddb58a8ee1e61c2535443abfcca0609797ccf1f0880f79fac867c2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 21 Sep 2026 23:04:02 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 21 Sep 2026 23:04:02 GMT
CMD ["/bin/bash"]
# Mon, 21 Sep 2026 23:07:01 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 21 Sep 2026 23:07:03 GMT
ENV GOSU_VERSION=1.19
# Mon, 21 Sep 2026 23:07:03 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 21 Sep 2026 23:07:41 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 21 Sep 2026 23:07:42 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 21 Sep 2026 23:07:42 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 21 Sep 2026 23:07:42 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Mon, 21 Sep 2026 23:07:42 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 21 Sep 2026 23:08:24 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 21 Sep 2026 23:08:24 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 21 Sep 2026 23:08:24 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 21 Sep 2026 23:09:15 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 21 Sep 2026 23:09:15 GMT
VOLUME [/var/lib/mysql]
# Mon, 21 Sep 2026 23:09:15 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 21 Sep 2026 23:09:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Sep 2026 23:09:15 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 21 Sep 2026 23:09:15 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b20e21573231a46ffd267a5791372e98726f9d11dd03deafc22fd5d18be5deea`  
		Last Modified: Mon, 21 Sep 2026 23:04:13 GMT  
		Size: 46.5 MB (46486872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3da5a8d5edbf0be97b026be4c1c5ddf681829d79a21674a06faf3d7b0411db3c`  
		Last Modified: Mon, 21 Sep 2026 23:09:45 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91aebaccc46af11c094b5617d0ac927d9fe9ecb520e73d562f698046bd567a58`  
		Last Modified: Mon, 21 Sep 2026 23:09:45 GMT  
		Size: 737.5 KB (737526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6a8b3fb25b368bfa25e5b63cfb765b1fd81c409f51a970d921915f720ec6c3b`  
		Last Modified: Mon, 21 Sep 2026 23:09:51 GMT  
		Size: 5.8 MB (5824044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8830487c6aa83e51d4ec5d813ddcb7aadc27139b53a9c20cff738a239ccded23`  
		Last Modified: Mon, 21 Sep 2026 23:09:45 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f4fea18d212f55b7f04a580dec0bfa6d9e011bdbb1f1525bc36ab71f2af1b6e`  
		Last Modified: Mon, 21 Sep 2026 23:09:51 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ca075ba196d95014ed9363176ecfe7793c5fc753fdd272155d6a6d2c4e348f0`  
		Last Modified: Mon, 21 Sep 2026 23:09:53 GMT  
		Size: 57.1 MB (57119142 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc4057ee530b0939143b17785a7ac14469b157321f8748b1be4f238e39ab7e57`  
		Last Modified: Mon, 21 Sep 2026 23:09:51 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:612c44fe0ce91ac2ddfa47a3f63948378ce63f1f6dcbe4e7f07df108ec3872b4`  
		Last Modified: Mon, 21 Sep 2026 23:09:55 GMT  
		Size: 157.2 MB (157217157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a705701f198b677e0bb69faec85e8b07571c056a68710b35b115db2aa538060c`  
		Last Modified: Mon, 21 Sep 2026 23:09:52 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:lts-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:f3c05898ce2a1651199fbea961c95f5188f0f602faa33f6459f2b5317c7d22c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16832136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b121c5036bb351473b555cb90be2302ca761b2337bc18e2c5aab027a5eb3324`

```dockerfile
```

-	Layers:
	-	`sha256:8a9bac6bfa8f8c3291e2e42162deae5205a31bb7f5cd7165142b402d20d92fa1`  
		Last Modified: Mon, 21 Sep 2026 23:09:51 GMT  
		Size: 16.8 MB (16797623 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:662ac4165e92d11ed035d6ab8fe449b5e0e9de7d7b53f9f91dc37d0916da12cf`  
		Last Modified: Mon, 21 Sep 2026 23:09:51 GMT  
		Size: 34.5 KB (34513 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:lts-oraclelinux9`

```console
$ docker pull mysql@sha256:30a0abfa7b502a496e12339b54cd07aaa70363396dc4b8e8a72a92804a505cd6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:lts-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:d55f5ba0270ae9824697021ed8a3b651f952f79be366fea1816795850a1f53d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.9 MB (270918920 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ab50f3dea0edf3235cdac735e865e5778191d8eac4f579a068cc6f6233dd842`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 21 Sep 2026 23:04:16 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 21 Sep 2026 23:04:16 GMT
CMD ["/bin/bash"]
# Mon, 21 Sep 2026 23:06:55 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 21 Sep 2026 23:06:57 GMT
ENV GOSU_VERSION=1.19
# Mon, 21 Sep 2026 23:06:57 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 21 Sep 2026 23:07:32 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 21 Sep 2026 23:07:33 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 21 Sep 2026 23:07:33 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 21 Sep 2026 23:07:33 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Mon, 21 Sep 2026 23:07:33 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 21 Sep 2026 23:08:12 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 21 Sep 2026 23:08:12 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 21 Sep 2026 23:08:12 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 21 Sep 2026 23:09:00 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 21 Sep 2026 23:09:00 GMT
VOLUME [/var/lib/mysql]
# Mon, 21 Sep 2026 23:09:01 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 21 Sep 2026 23:09:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Sep 2026 23:09:01 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 21 Sep 2026 23:09:01 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:6361e9307160bba9b9394334d9e85b77c416081e54c8ba8c6d0806dc0c4d5f4b`  
		Last Modified: Mon, 21 Sep 2026 23:04:27 GMT  
		Size: 47.9 MB (47941513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3534c258aabac4c46b37947f2089c39baa310568391f96404233e4c9df894e3a`  
		Last Modified: Mon, 21 Sep 2026 23:09:29 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a7fe1a85aa5548d42fcb8c335f7444be477ed2e9c73b20c83e191abfc71e61e`  
		Last Modified: Mon, 21 Sep 2026 23:09:29 GMT  
		Size: 783.5 KB (783541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d3079708ede27d8bc1e8917a7a57d22a4f12dd52805a1edb06d88246f3e8d54`  
		Last Modified: Mon, 21 Sep 2026 23:09:36 GMT  
		Size: 6.2 MB (6197636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10425730d138d643e322a969dcad430d494d973f302c01a9b39d55264ab96898`  
		Last Modified: Mon, 21 Sep 2026 23:09:36 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:409c6fcbb48db28ec5f7e2bad1daadcf942c47000679bf160257ace550c1c8fd`  
		Last Modified: Mon, 21 Sep 2026 23:09:36 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12209f6c36967e427eb69bb9e0556ec90e9b890417c09aa5c6d1a52d639a9df4`  
		Last Modified: Mon, 21 Sep 2026 23:09:38 GMT  
		Size: 57.1 MB (57052021 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff5be3dcfc23f93bb57d41cac2d92deed02cfb67b6a8e8cdebd64b90cdda3711`  
		Last Modified: Mon, 21 Sep 2026 23:09:37 GMT  
		Size: 319.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:628e0550c24646e9b5f9d7f5b8b8b143e864d507b15a771bfa67dd6118dcd62c`  
		Last Modified: Mon, 21 Sep 2026 23:09:41 GMT  
		Size: 158.9 MB (158934845 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee6d08f141afbb57102bbc8cc155bfb9ef716ad1088815cee845351c665a0691`  
		Last Modified: Mon, 21 Sep 2026 23:09:38 GMT  
		Size: 5.2 KB (5220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:lts-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:75915e8bd520e25e7b0cc0c5bd1949ed9f8d974cd8e134298f67f57ba99245cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16833395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfd59e8115ba74a266ce7031414aabbfa445a51dfbc3e31316078083516796b6`

```dockerfile
```

-	Layers:
	-	`sha256:8b57eaf4e4d1086272271f0f9c6bc9cd24e4105bf006c9236220557129daded1`  
		Last Modified: Mon, 21 Sep 2026 23:09:37 GMT  
		Size: 16.8 MB (16799187 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:61d952e276ca7d14dbac94faa133a341a5734c620503b69eea04efec715380c7`  
		Last Modified: Mon, 21 Sep 2026 23:09:36 GMT  
		Size: 34.2 KB (34208 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:lts-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:98b9662b31ea8c579318cc48951c6218a7f5c0c1cce6542f9f8a52955ce46f3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.4 MB (267394110 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32ee0ade16ddb58a8ee1e61c2535443abfcca0609797ccf1f0880f79fac867c2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 21 Sep 2026 23:04:02 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 21 Sep 2026 23:04:02 GMT
CMD ["/bin/bash"]
# Mon, 21 Sep 2026 23:07:01 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 21 Sep 2026 23:07:03 GMT
ENV GOSU_VERSION=1.19
# Mon, 21 Sep 2026 23:07:03 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 21 Sep 2026 23:07:41 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 21 Sep 2026 23:07:42 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 21 Sep 2026 23:07:42 GMT
ENV MYSQL_MAJOR=9.7
# Mon, 21 Sep 2026 23:07:42 GMT
ENV MYSQL_VERSION=9.7.2-1.el9
# Mon, 21 Sep 2026 23:07:42 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 21 Sep 2026 23:08:24 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 21 Sep 2026 23:08:24 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 21 Sep 2026 23:08:24 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Mon, 21 Sep 2026 23:09:15 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 21 Sep 2026 23:09:15 GMT
VOLUME [/var/lib/mysql]
# Mon, 21 Sep 2026 23:09:15 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 21 Sep 2026 23:09:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Sep 2026 23:09:15 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 21 Sep 2026 23:09:15 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b20e21573231a46ffd267a5791372e98726f9d11dd03deafc22fd5d18be5deea`  
		Last Modified: Mon, 21 Sep 2026 23:04:13 GMT  
		Size: 46.5 MB (46486872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3da5a8d5edbf0be97b026be4c1c5ddf681829d79a21674a06faf3d7b0411db3c`  
		Last Modified: Mon, 21 Sep 2026 23:09:45 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91aebaccc46af11c094b5617d0ac927d9fe9ecb520e73d562f698046bd567a58`  
		Last Modified: Mon, 21 Sep 2026 23:09:45 GMT  
		Size: 737.5 KB (737526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6a8b3fb25b368bfa25e5b63cfb765b1fd81c409f51a970d921915f720ec6c3b`  
		Last Modified: Mon, 21 Sep 2026 23:09:51 GMT  
		Size: 5.8 MB (5824044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8830487c6aa83e51d4ec5d813ddcb7aadc27139b53a9c20cff738a239ccded23`  
		Last Modified: Mon, 21 Sep 2026 23:09:45 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f4fea18d212f55b7f04a580dec0bfa6d9e011bdbb1f1525bc36ab71f2af1b6e`  
		Last Modified: Mon, 21 Sep 2026 23:09:51 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ca075ba196d95014ed9363176ecfe7793c5fc753fdd272155d6a6d2c4e348f0`  
		Last Modified: Mon, 21 Sep 2026 23:09:53 GMT  
		Size: 57.1 MB (57119142 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc4057ee530b0939143b17785a7ac14469b157321f8748b1be4f238e39ab7e57`  
		Last Modified: Mon, 21 Sep 2026 23:09:51 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:612c44fe0ce91ac2ddfa47a3f63948378ce63f1f6dcbe4e7f07df108ec3872b4`  
		Last Modified: Mon, 21 Sep 2026 23:09:55 GMT  
		Size: 157.2 MB (157217157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a705701f198b677e0bb69faec85e8b07571c056a68710b35b115db2aa538060c`  
		Last Modified: Mon, 21 Sep 2026 23:09:52 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:lts-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:f3c05898ce2a1651199fbea961c95f5188f0f602faa33f6459f2b5317c7d22c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16832136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b121c5036bb351473b555cb90be2302ca761b2337bc18e2c5aab027a5eb3324`

```dockerfile
```

-	Layers:
	-	`sha256:8a9bac6bfa8f8c3291e2e42162deae5205a31bb7f5cd7165142b402d20d92fa1`  
		Last Modified: Mon, 21 Sep 2026 23:09:51 GMT  
		Size: 16.8 MB (16797623 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:662ac4165e92d11ed035d6ab8fe449b5e0e9de7d7b53f9f91dc37d0916da12cf`  
		Last Modified: Mon, 21 Sep 2026 23:09:51 GMT  
		Size: 34.5 KB (34513 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:oracle`

```console
$ docker pull mysql@sha256:ade067ae2fb15eeb6143e81185afe22573e3b3addc58aaf90c41999fa6883991
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:oracle` - linux; amd64

```console
$ docker pull mysql@sha256:74849bf6226b8dafdb1258e90fab588de1e597a80487e744986d9d85d6a65836
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.4 MB (272359450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0485e3d5a3f3cb2cfd593047ab321a420f7026ec4ea0adc20e65eb42d420db68`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 21 Sep 2026 23:04:16 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 21 Sep 2026 23:04:16 GMT
CMD ["/bin/bash"]
# Mon, 21 Sep 2026 23:06:56 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 21 Sep 2026 23:06:57 GMT
ENV GOSU_VERSION=1.19
# Mon, 21 Sep 2026 23:06:57 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 21 Sep 2026 23:07:31 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 21 Sep 2026 23:07:31 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 21 Sep 2026 23:07:31 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 21 Sep 2026 23:07:31 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Mon, 21 Sep 2026 23:07:32 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 21 Sep 2026 23:08:08 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 21 Sep 2026 23:08:08 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 21 Sep 2026 23:08:08 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Mon, 21 Sep 2026 23:08:55 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 21 Sep 2026 23:08:55 GMT
VOLUME [/var/lib/mysql]
# Mon, 21 Sep 2026 23:08:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 21 Sep 2026 23:08:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Sep 2026 23:08:55 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 21 Sep 2026 23:08:55 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:6361e9307160bba9b9394334d9e85b77c416081e54c8ba8c6d0806dc0c4d5f4b`  
		Last Modified: Mon, 21 Sep 2026 23:04:27 GMT  
		Size: 47.9 MB (47941513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3534c258aabac4c46b37947f2089c39baa310568391f96404233e4c9df894e3a`  
		Last Modified: Mon, 21 Sep 2026 23:09:29 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a7fe1a85aa5548d42fcb8c335f7444be477ed2e9c73b20c83e191abfc71e61e`  
		Last Modified: Mon, 21 Sep 2026 23:09:29 GMT  
		Size: 783.5 KB (783541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30e12685077b4e92fbc033480c85f54689f367be5135b9e03aff46b36c09d2a3`  
		Last Modified: Mon, 21 Sep 2026 23:09:29 GMT  
		Size: 6.2 MB (6197645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb5715bbbeccb7f7385fa58362ba085fbf743725a960a1357d8f232e731716d8`  
		Last Modified: Mon, 21 Sep 2026 23:09:29 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59270b130aec3d2cdff3fc51e1058cd7b3faecd61bb4461ec3c17b6494a1ebdc`  
		Last Modified: Mon, 21 Sep 2026 23:09:30 GMT  
		Size: 341.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6de6b644e38e2677f72d5e17463e85fa1383d4425b4a4e731aa8799a4d666c80`  
		Last Modified: Mon, 21 Sep 2026 23:09:32 GMT  
		Size: 57.5 MB (57455040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:115b4caa98402fb25e0f4d1897406e658770f9c71967ee6ad98a120b51ce7d3c`  
		Last Modified: Mon, 21 Sep 2026 23:09:30 GMT  
		Size: 326.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e394e0b2e6500fe3fda549e1ab6ed1645db3882670433888ffa6126aa3f83c70`  
		Last Modified: Mon, 21 Sep 2026 23:09:34 GMT  
		Size: 160.0 MB (159972331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f7644b7ee9b3f7889f3fe5cf3c86f2cae37492fafd58e298846aa1122751a41`  
		Last Modified: Mon, 21 Sep 2026 23:09:31 GMT  
		Size: 5.2 KB (5223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:da9f9956c561a82558cf5b75587eccaa3517bff02b94594b9438fba32d303e9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17452709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23c12b5d4c80cb4e0484d94eff80749e14d89a1993cd025ec8207b3587783064`

```dockerfile
```

-	Layers:
	-	`sha256:8b2919a887f80355a9f9687687048641fb52398a9e06e216fa82eef029f2cbd2`  
		Last Modified: Mon, 21 Sep 2026 23:09:30 GMT  
		Size: 17.4 MB (17417411 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ef1d56738a4a943ed88423c36741edee4314969e32c404c124852fde2dfbc3f7`  
		Last Modified: Mon, 21 Sep 2026 23:09:29 GMT  
		Size: 35.3 KB (35298 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:082788c625f6691d3dc3fde8669340cfb8bc0377c06e88889382f5f28e1bb81b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.7 MB (268735017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1ebb12281ad097d611394946626b6baf897511844d9a684d2cb39b15b83c117`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 21 Sep 2026 23:04:02 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 21 Sep 2026 23:04:02 GMT
CMD ["/bin/bash"]
# Mon, 21 Sep 2026 23:07:01 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 21 Sep 2026 23:07:03 GMT
ENV GOSU_VERSION=1.19
# Mon, 21 Sep 2026 23:07:03 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 21 Sep 2026 23:07:40 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 21 Sep 2026 23:07:41 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 21 Sep 2026 23:07:41 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 21 Sep 2026 23:07:41 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Mon, 21 Sep 2026 23:07:41 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 21 Sep 2026 23:08:23 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 21 Sep 2026 23:08:24 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 21 Sep 2026 23:08:24 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Mon, 21 Sep 2026 23:09:17 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 21 Sep 2026 23:09:17 GMT
VOLUME [/var/lib/mysql]
# Mon, 21 Sep 2026 23:09:17 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 21 Sep 2026 23:09:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Sep 2026 23:09:17 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 21 Sep 2026 23:09:17 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b20e21573231a46ffd267a5791372e98726f9d11dd03deafc22fd5d18be5deea`  
		Last Modified: Mon, 21 Sep 2026 23:04:13 GMT  
		Size: 46.5 MB (46486872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3da5a8d5edbf0be97b026be4c1c5ddf681829d79a21674a06faf3d7b0411db3c`  
		Last Modified: Mon, 21 Sep 2026 23:09:45 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b9f295eb849b2eb074a1c710e56992483657e9232651464245d0e591987db5a`  
		Last Modified: Mon, 21 Sep 2026 23:09:53 GMT  
		Size: 737.5 KB (737526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6be4adf735ca3632e65d150709806245be650fbf48e7e1986b77788a8146c359`  
		Last Modified: Mon, 21 Sep 2026 23:09:53 GMT  
		Size: 5.8 MB (5824191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f1ace268c37904c174f19891793114adc47a8fe347da7be4bb38f60480831da`  
		Last Modified: Mon, 21 Sep 2026 23:09:53 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eebc42e6f78939280abe7dc0a2930177e00e424cbf2e5f3294c5169a8d5647c0`  
		Last Modified: Mon, 21 Sep 2026 23:09:53 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb58f96fe4494fe31e39a842757b541e4efe827ae9a6bf23ea3b83e4c6e39294`  
		Last Modified: Mon, 21 Sep 2026 23:09:56 GMT  
		Size: 57.4 MB (57434784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:070dfb8de89b2a3e04a78e5e31ebf3105edc9b7ade18f2fe95f626be2fdd6a0f`  
		Last Modified: Mon, 21 Sep 2026 23:09:54 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2621ba5f41b09b2da5c3a9079448554687e1ed6536981107eec7bac27e1bcde2`  
		Last Modified: Mon, 21 Sep 2026 23:09:58 GMT  
		Size: 158.2 MB (158242261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25e22dbe9362df1586bc53875635061ed6fd5c9bbeba7c5775d6a03299a825e8`  
		Last Modified: Mon, 21 Sep 2026 23:09:55 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:f73d97e9599d81b9e43ce58653e3235678c9c77588da26952bb3591ca690a03b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17451523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f532b4002427f61d42e950d4d0f687a12ee5368503c38ef4d4c734f3c123937b`

```dockerfile
```

-	Layers:
	-	`sha256:8cf9b4d364d54a9696eeb34026b479a9c9a295c2df6532b6efaf5ac94de11cb7`  
		Last Modified: Mon, 21 Sep 2026 23:09:53 GMT  
		Size: 17.4 MB (17415884 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b578572a81a0dd188969c7964ee2ac2245afaee051337e913e6a6797db526ecc`  
		Last Modified: Mon, 21 Sep 2026 23:09:53 GMT  
		Size: 35.6 KB (35639 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:oraclelinux9`

```console
$ docker pull mysql@sha256:ade067ae2fb15eeb6143e81185afe22573e3b3addc58aaf90c41999fa6883991
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:74849bf6226b8dafdb1258e90fab588de1e597a80487e744986d9d85d6a65836
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.4 MB (272359450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0485e3d5a3f3cb2cfd593047ab321a420f7026ec4ea0adc20e65eb42d420db68`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 21 Sep 2026 23:04:16 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 21 Sep 2026 23:04:16 GMT
CMD ["/bin/bash"]
# Mon, 21 Sep 2026 23:06:56 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 21 Sep 2026 23:06:57 GMT
ENV GOSU_VERSION=1.19
# Mon, 21 Sep 2026 23:06:57 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 21 Sep 2026 23:07:31 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 21 Sep 2026 23:07:31 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 21 Sep 2026 23:07:31 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 21 Sep 2026 23:07:31 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Mon, 21 Sep 2026 23:07:32 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 21 Sep 2026 23:08:08 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 21 Sep 2026 23:08:08 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 21 Sep 2026 23:08:08 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Mon, 21 Sep 2026 23:08:55 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 21 Sep 2026 23:08:55 GMT
VOLUME [/var/lib/mysql]
# Mon, 21 Sep 2026 23:08:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 21 Sep 2026 23:08:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Sep 2026 23:08:55 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 21 Sep 2026 23:08:55 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:6361e9307160bba9b9394334d9e85b77c416081e54c8ba8c6d0806dc0c4d5f4b`  
		Last Modified: Mon, 21 Sep 2026 23:04:27 GMT  
		Size: 47.9 MB (47941513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3534c258aabac4c46b37947f2089c39baa310568391f96404233e4c9df894e3a`  
		Last Modified: Mon, 21 Sep 2026 23:09:29 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a7fe1a85aa5548d42fcb8c335f7444be477ed2e9c73b20c83e191abfc71e61e`  
		Last Modified: Mon, 21 Sep 2026 23:09:29 GMT  
		Size: 783.5 KB (783541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30e12685077b4e92fbc033480c85f54689f367be5135b9e03aff46b36c09d2a3`  
		Last Modified: Mon, 21 Sep 2026 23:09:29 GMT  
		Size: 6.2 MB (6197645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb5715bbbeccb7f7385fa58362ba085fbf743725a960a1357d8f232e731716d8`  
		Last Modified: Mon, 21 Sep 2026 23:09:29 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59270b130aec3d2cdff3fc51e1058cd7b3faecd61bb4461ec3c17b6494a1ebdc`  
		Last Modified: Mon, 21 Sep 2026 23:09:30 GMT  
		Size: 341.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6de6b644e38e2677f72d5e17463e85fa1383d4425b4a4e731aa8799a4d666c80`  
		Last Modified: Mon, 21 Sep 2026 23:09:32 GMT  
		Size: 57.5 MB (57455040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:115b4caa98402fb25e0f4d1897406e658770f9c71967ee6ad98a120b51ce7d3c`  
		Last Modified: Mon, 21 Sep 2026 23:09:30 GMT  
		Size: 326.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e394e0b2e6500fe3fda549e1ab6ed1645db3882670433888ffa6126aa3f83c70`  
		Last Modified: Mon, 21 Sep 2026 23:09:34 GMT  
		Size: 160.0 MB (159972331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f7644b7ee9b3f7889f3fe5cf3c86f2cae37492fafd58e298846aa1122751a41`  
		Last Modified: Mon, 21 Sep 2026 23:09:31 GMT  
		Size: 5.2 KB (5223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:da9f9956c561a82558cf5b75587eccaa3517bff02b94594b9438fba32d303e9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17452709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23c12b5d4c80cb4e0484d94eff80749e14d89a1993cd025ec8207b3587783064`

```dockerfile
```

-	Layers:
	-	`sha256:8b2919a887f80355a9f9687687048641fb52398a9e06e216fa82eef029f2cbd2`  
		Last Modified: Mon, 21 Sep 2026 23:09:30 GMT  
		Size: 17.4 MB (17417411 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ef1d56738a4a943ed88423c36741edee4314969e32c404c124852fde2dfbc3f7`  
		Last Modified: Mon, 21 Sep 2026 23:09:29 GMT  
		Size: 35.3 KB (35298 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:082788c625f6691d3dc3fde8669340cfb8bc0377c06e88889382f5f28e1bb81b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.7 MB (268735017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1ebb12281ad097d611394946626b6baf897511844d9a684d2cb39b15b83c117`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 21 Sep 2026 23:04:02 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 21 Sep 2026 23:04:02 GMT
CMD ["/bin/bash"]
# Mon, 21 Sep 2026 23:07:01 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Mon, 21 Sep 2026 23:07:03 GMT
ENV GOSU_VERSION=1.19
# Mon, 21 Sep 2026 23:07:03 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 21 Sep 2026 23:07:40 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Mon, 21 Sep 2026 23:07:41 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Mon, 21 Sep 2026 23:07:41 GMT
ENV MYSQL_MAJOR=innovation
# Mon, 21 Sep 2026 23:07:41 GMT
ENV MYSQL_VERSION=26.7.0-1.el9
# Mon, 21 Sep 2026 23:07:41 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Mon, 21 Sep 2026 23:08:23 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Mon, 21 Sep 2026 23:08:24 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Mon, 21 Sep 2026 23:08:24 GMT
ENV MYSQL_SHELL_VERSION=26.7.0-1.el9
# Mon, 21 Sep 2026 23:09:17 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Mon, 21 Sep 2026 23:09:17 GMT
VOLUME [/var/lib/mysql]
# Mon, 21 Sep 2026 23:09:17 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 21 Sep 2026 23:09:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Sep 2026 23:09:17 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Mon, 21 Sep 2026 23:09:17 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b20e21573231a46ffd267a5791372e98726f9d11dd03deafc22fd5d18be5deea`  
		Last Modified: Mon, 21 Sep 2026 23:04:13 GMT  
		Size: 46.5 MB (46486872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3da5a8d5edbf0be97b026be4c1c5ddf681829d79a21674a06faf3d7b0411db3c`  
		Last Modified: Mon, 21 Sep 2026 23:09:45 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b9f295eb849b2eb074a1c710e56992483657e9232651464245d0e591987db5a`  
		Last Modified: Mon, 21 Sep 2026 23:09:53 GMT  
		Size: 737.5 KB (737526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6be4adf735ca3632e65d150709806245be650fbf48e7e1986b77788a8146c359`  
		Last Modified: Mon, 21 Sep 2026 23:09:53 GMT  
		Size: 5.8 MB (5824191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f1ace268c37904c174f19891793114adc47a8fe347da7be4bb38f60480831da`  
		Last Modified: Mon, 21 Sep 2026 23:09:53 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eebc42e6f78939280abe7dc0a2930177e00e424cbf2e5f3294c5169a8d5647c0`  
		Last Modified: Mon, 21 Sep 2026 23:09:53 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb58f96fe4494fe31e39a842757b541e4efe827ae9a6bf23ea3b83e4c6e39294`  
		Last Modified: Mon, 21 Sep 2026 23:09:56 GMT  
		Size: 57.4 MB (57434784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:070dfb8de89b2a3e04a78e5e31ebf3105edc9b7ade18f2fe95f626be2fdd6a0f`  
		Last Modified: Mon, 21 Sep 2026 23:09:54 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2621ba5f41b09b2da5c3a9079448554687e1ed6536981107eec7bac27e1bcde2`  
		Last Modified: Mon, 21 Sep 2026 23:09:58 GMT  
		Size: 158.2 MB (158242261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25e22dbe9362df1586bc53875635061ed6fd5c9bbeba7c5775d6a03299a825e8`  
		Last Modified: Mon, 21 Sep 2026 23:09:55 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:f73d97e9599d81b9e43ce58653e3235678c9c77588da26952bb3591ca690a03b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17451523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f532b4002427f61d42e950d4d0f687a12ee5368503c38ef4d4c734f3c123937b`

```dockerfile
```

-	Layers:
	-	`sha256:8cf9b4d364d54a9696eeb34026b479a9c9a295c2df6532b6efaf5ac94de11cb7`  
		Last Modified: Mon, 21 Sep 2026 23:09:53 GMT  
		Size: 17.4 MB (17415884 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b578572a81a0dd188969c7964ee2ac2245afaee051337e913e6a6797db526ecc`  
		Last Modified: Mon, 21 Sep 2026 23:09:53 GMT  
		Size: 35.6 KB (35639 bytes)  
		MIME: application/vnd.in-toto+json
