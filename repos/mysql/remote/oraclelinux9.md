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
