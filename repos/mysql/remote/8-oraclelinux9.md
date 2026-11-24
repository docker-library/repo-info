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
