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
