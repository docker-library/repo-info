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
