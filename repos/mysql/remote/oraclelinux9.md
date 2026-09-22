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
