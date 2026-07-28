## `mysql:innovation-oracle`

```console
$ docker pull mysql@sha256:c5df04bee1a42b74a5841c6409e669cf62126cd0416f00c1cea8ab933b9361b9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:innovation-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:da26407911eac4c4fcff99ef11b9ae975540ff3ad9b5677c4d85a347c14b188d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.3 MB (266343873 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4bf110498531f91e80936e0181b8b63bac636481065a63df2e63e1aac2b1548`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 17 Apr 2026 23:39:18 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Fri, 17 Apr 2026 23:39:18 GMT
CMD ["/bin/bash"]
# Sat, 18 Apr 2026 00:11:47 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Sat, 18 Apr 2026 00:11:49 GMT
ENV GOSU_VERSION=1.19
# Sat, 18 Apr 2026 00:11:49 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 18 Apr 2026 00:12:16 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Sat, 18 Apr 2026 00:12:17 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Sat, 18 Apr 2026 00:12:17 GMT
ENV MYSQL_MAJOR=innovation
# Sat, 18 Apr 2026 00:12:17 GMT
ENV MYSQL_VERSION=9.6.0-1.el9
# Sat, 18 Apr 2026 00:12:17 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Sat, 18 Apr 2026 00:12:47 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Sat, 18 Apr 2026 00:12:47 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Sat, 18 Apr 2026 00:12:47 GMT
ENV MYSQL_SHELL_VERSION=9.6.0-1.el9
# Sat, 18 Apr 2026 00:13:29 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Sat, 18 Apr 2026 00:13:29 GMT
VOLUME [/var/lib/mysql]
# Sat, 18 Apr 2026 00:13:29 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 18 Apr 2026 00:13:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 18 Apr 2026 00:13:29 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Sat, 18 Apr 2026 00:13:29 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:bb5107df7baaf29d90d3f3cd5c8b8d9bb0e9786e901a49be069e0d37e4c07bae`  
		Last Modified: Fri, 17 Apr 2026 23:39:29 GMT  
		Size: 47.3 MB (47309813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e639cd467a9761616d6de8a409cb209d411f2f7ac84577b64566973d75ac5fa2`  
		Last Modified: Sat, 18 Apr 2026 00:14:04 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84e79c47b3010a916b04df087a57f16c399eec48d8080cb50a0f45d889323471`  
		Last Modified: Sat, 18 Apr 2026 00:14:04 GMT  
		Size: 783.6 KB (783562 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c28152004afeb0fef135bc7f72c9c3f8605fa7f970ed9b908d8304af3ea29244`  
		Last Modified: Sat, 18 Apr 2026 00:14:04 GMT  
		Size: 6.2 MB (6170281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c97bec1a3486df0287c44424237160304e8efa58d3d1ee5a191ccb45fa25303`  
		Last Modified: Sat, 18 Apr 2026 00:14:04 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e885080b838ed1c6b7b5a9cb5427937014dee091f74f7371b01d9b538b636dbe`  
		Last Modified: Sat, 18 Apr 2026 00:14:05 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6497d062da4fa91bf366b76e736a978762cb698b9ff1e12230118d43b124c820`  
		Last Modified: Sat, 18 Apr 2026 00:14:08 GMT  
		Size: 51.4 MB (51442459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:980d6178a9105eb0d5e61411f96f39c4d6500b46654be8fd130bd3bfbc6432eb`  
		Last Modified: Sat, 18 Apr 2026 00:14:06 GMT  
		Size: 326.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:664c1f1ffcc8492f4c05894e234ba3577253cfa08919ad60b2a3323d52e7cac8`  
		Last Modified: Sat, 18 Apr 2026 00:14:10 GMT  
		Size: 160.6 MB (160628269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8faff6d2a6d2f55b7cf1230e6b98303036b47e0817dfce3c5ca8ff65fd996cb5`  
		Last Modified: Sat, 18 Apr 2026 00:14:07 GMT  
		Size: 5.3 KB (5334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:innovation-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:200c99f4fd2adb80e59f9b5ddde5cc8b3b7e2c90fa4b568da17a87f05c43841a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.3 MB (16332727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a2f9dca420dd5d35f90a57ddc98c3bad21d241f0fc6c7f274c4debffda4d610`

```dockerfile
```

-	Layers:
	-	`sha256:6b65aba3f1f64e1d29ed5c0f839788403aeaec80bd07e669614ad67d695642d0`  
		Last Modified: Sat, 18 Apr 2026 00:14:05 GMT  
		Size: 16.3 MB (16297452 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1b038cfc7980164d5219693a0827211109ac800244906ce3b65d883686d6612c`  
		Last Modified: Sat, 18 Apr 2026 00:14:04 GMT  
		Size: 35.3 KB (35275 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:innovation-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:d36eff8bce9626a30d9a53067fbc3f3929b3406fe4548c296ce2990585e58abc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.4 MB (261447241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06ca5ab30bf4ee9e428b79662b2e440e93912fc72f6408f1c5243dab5d554460`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 17 Apr 2026 23:38:52 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Fri, 17 Apr 2026 23:38:52 GMT
CMD ["/bin/bash"]
# Sat, 18 Apr 2026 00:11:16 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Sat, 18 Apr 2026 00:11:18 GMT
ENV GOSU_VERSION=1.19
# Sat, 18 Apr 2026 00:11:18 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 18 Apr 2026 00:11:46 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Sat, 18 Apr 2026 00:11:46 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Sat, 18 Apr 2026 00:11:46 GMT
ENV MYSQL_MAJOR=innovation
# Sat, 18 Apr 2026 00:11:46 GMT
ENV MYSQL_VERSION=9.6.0-1.el9
# Sat, 18 Apr 2026 00:11:46 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Sat, 18 Apr 2026 00:12:21 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Sat, 18 Apr 2026 00:12:21 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Sat, 18 Apr 2026 00:12:21 GMT
ENV MYSQL_SHELL_VERSION=9.6.0-1.el9
# Sat, 18 Apr 2026 00:13:05 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Sat, 18 Apr 2026 00:13:05 GMT
VOLUME [/var/lib/mysql]
# Sat, 18 Apr 2026 00:13:05 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 18 Apr 2026 00:13:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 18 Apr 2026 00:13:05 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Sat, 18 Apr 2026 00:13:05 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b35b830a608cfc2dcaa5da71abe9012e9157f6732d8d283a866aa979b3d292be`  
		Last Modified: Fri, 17 Apr 2026 23:39:03 GMT  
		Size: 45.9 MB (45899787 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efd414fac5cad07f393cbace2273171bff2f71ff6228b9118e8b6b72d195055f`  
		Last Modified: Sat, 18 Apr 2026 00:13:40 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3fde8c58f5021cf570a07a88e4dc7b3a2c01c772e5af1d20bbfd4cfcc8e3db9`  
		Last Modified: Sat, 18 Apr 2026 00:13:40 GMT  
		Size: 737.5 KB (737526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:175ca4a36287d2506f12dd65b36c1e5269084cfd865815c70e4c09f94382745c`  
		Last Modified: Sat, 18 Apr 2026 00:13:41 GMT  
		Size: 5.8 MB (5793264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f921be051e0c6462756bb035889736e272fd01828a8abdd1f13e16dcf3de3297`  
		Last Modified: Sat, 18 Apr 2026 00:13:41 GMT  
		Size: 2.6 KB (2604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58f1167dd93878509d66f2e3f08528ea12ceb9a823e45d5bca27e20199873a05`  
		Last Modified: Sat, 18 Apr 2026 00:13:42 GMT  
		Size: 338.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bb5786475529b351b067fec5c959deb8b048266b7885b434b176c782ac478d0`  
		Last Modified: Sat, 18 Apr 2026 00:13:43 GMT  
		Size: 50.1 MB (50080397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18d295fbc6d41d027458ae9f6b9479c90a58c714db1c208f57b5ef7f8a8ab282`  
		Last Modified: Sat, 18 Apr 2026 00:13:42 GMT  
		Size: 326.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e994635adec80593755e571049efab4ba4bc1a7468498702e56bda9b84da85b`  
		Last Modified: Sat, 18 Apr 2026 00:13:51 GMT  
		Size: 158.9 MB (158926780 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1274e1258c8e15a7c0aed082b7ac4f47dd327dabcc6774f39ae591e419f117b3`  
		Last Modified: Sat, 18 Apr 2026 00:13:43 GMT  
		Size: 5.3 KB (5335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:innovation-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:9c82cc9b29ee178010cb60478cfea7696743e49f94710329120952b3e45f45f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.3 MB (16331523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1f26768fe11299baa6669694b24d81a2b0d67daa498a46903111e1eedeefab6`

```dockerfile
```

-	Layers:
	-	`sha256:c06da225b9122f111fb64ccd9c8441b8c4aee1f59835b3be6673afa2b0296105`  
		Last Modified: Sat, 18 Apr 2026 00:13:41 GMT  
		Size: 16.3 MB (16295908 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0a03073ece591c34e951f68d29baf88f8e7dcc3ca40235a0df3b02e2d9029ec1`  
		Last Modified: Sat, 18 Apr 2026 00:13:40 GMT  
		Size: 35.6 KB (35615 bytes)  
		MIME: application/vnd.in-toto+json
