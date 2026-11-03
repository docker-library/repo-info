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
