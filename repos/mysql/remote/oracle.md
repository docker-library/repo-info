## `mysql:oracle`

```console
$ docker pull mysql@sha256:6f54880f928070a036aa3874d4a3fa203adc28688eb89e9f926a0dcacbce3378
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `mysql:oracle` - linux; amd64

```console
$ docker pull mysql@sha256:56b3754c827c12d583689a3c619b49653d0b22cc19e341511544685ffcd6037d
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.0 MB (151990282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b939d379d46e321d25bfdf1d695e0a3178225c14ad27b7d9da27f26774965610`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jan 2023 21:49:30 GMT
ADD file:599abbad96e264361b1bc5a7643f88354e406a2a1f55256af8a67e5a71ac3044 in / 
# Tue, 17 Jan 2023 21:49:31 GMT
CMD ["/bin/bash"]
# Wed, 18 Jan 2023 04:23:19 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql
# Wed, 18 Jan 2023 04:23:19 GMT
ENV GOSU_VERSION=1.14
# Wed, 18 Jan 2023 04:23:22 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true
# Wed, 18 Jan 2023 04:23:47 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all
# Wed, 18 Jan 2023 04:23:48 GMT
RUN set -eux; 	key='859BE8D7C586F538430B19C2467B942D3A79BD29'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME"
# Wed, 18 Jan 2023 04:23:48 GMT
ENV MYSQL_MAJOR=8.0
# Wed, 18 Jan 2023 04:23:49 GMT
ENV MYSQL_VERSION=8.0.32-1.el8
# Wed, 18 Jan 2023 04:23:49 GMT
RUN set -eu; 	. /etc/os-release; 	{ 		echo '[mysql8.0-server-minimal]'; 		echo 'name=MySQL 8.0 Server Minimal'; 		echo 'enabled=1'; 		echo "baseurl=https://repo.mysql.com/yum/mysql-8.0-community/docker/el/${VERSION_ID%%[.-]*}/\$basearch/"; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo
# Wed, 18 Jan 2023 04:24:21 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version
# Wed, 18 Jan 2023 04:24:22 GMT
RUN set -eu; 	. /etc/os-release; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo "baseurl=https://repo.mysql.com/yum/mysql-tools-community/el/${VERSION_ID%%[.-]*}/\$basearch/"; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo
# Wed, 18 Jan 2023 04:24:22 GMT
ENV MYSQL_SHELL_VERSION=8.0.32-1.el8
# Wed, 18 Jan 2023 04:24:56 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version
# Wed, 18 Jan 2023 04:24:57 GMT
VOLUME [/var/lib/mysql]
# Wed, 18 Jan 2023 04:24:57 GMT
COPY file:e9c22353a1133b89c5bca24ecacd348acd094e50e5e5c45375a997c6b1f07192 in /usr/local/bin/ 
# Wed, 18 Jan 2023 04:24:58 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 18 Jan 2023 04:24:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 18 Jan 2023 04:24:58 GMT
EXPOSE 3306 33060
# Wed, 18 Jan 2023 04:24:58 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:2c57acc5afca507dabd7a22ed8ab1a978dad73d90dacad7b0b4668750f8fca64`  
		Last Modified: Tue, 17 Jan 2023 21:50:21 GMT  
		Size: 43.9 MB (43885845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a990ab965c1a17353b03fe6dce91a254e60d6c538d1b96f07a00f59e453040a`  
		Last Modified: Wed, 18 Jan 2023 04:25:40 GMT  
		Size: 886.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7acb6a84f0f1d428eef6fddd00a40c17af6d7243aad24b24c00419131fbcc3eb`  
		Last Modified: Wed, 18 Jan 2023 04:25:40 GMT  
		Size: 928.8 KB (928834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a2351a691a4eff44fb36d32ec8fae01e31c317fd12cb1e809d53d91a6a49ec0`  
		Last Modified: Wed, 18 Jan 2023 04:25:39 GMT  
		Size: 4.6 MB (4611685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdd0aae0ac1aab54b8542a6b3dae06c9d5d87b938dfb17f844aec8ae93656326`  
		Last Modified: Wed, 18 Jan 2023 04:25:38 GMT  
		Size: 2.6 KB (2629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c024d6bf8696ed590c8036ce54267e4d751ed07456c7b1e8c3986890537652b`  
		Last Modified: Wed, 18 Jan 2023 04:25:38 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e536ea8ecf65f0f75fa2f36ffc55a01ba3fa07679ec68a86c4662aa2228b62f1`  
		Last Modified: Wed, 18 Jan 2023 04:25:45 GMT  
		Size: 56.2 MB (56219390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d24661dff86babe92647cb6318c868144fdd78e9c9b2f41306a297e1bc3c2ec1`  
		Last Modified: Wed, 18 Jan 2023 04:25:36 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95ef82dfce7a8ea5dabee70624ebc4868bdf5f7b9763f4e6e321794894c3b668`  
		Last Modified: Wed, 18 Jan 2023 04:25:45 GMT  
		Size: 46.3 MB (46334851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9a31e1bffa14a806ea1004ffade681ee55e7156ce5046431afe06124aa9ea1d`  
		Last Modified: Wed, 18 Jan 2023 04:25:36 GMT  
		Size: 5.4 KB (5392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4edb4789da39734202cad306a26f4f5f7237e6c2b1f7e2477e9b3b191ce6391e`  
		Last Modified: Wed, 18 Jan 2023 04:25:36 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mysql:oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:6a94943fe1d6b3a56549a5b9fa4da9b537cee27029b678ce50b5de4b2407cd0d
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.9 MB (150859798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be430b9d80e5ef5e90157802e67682746e2aa81870e71ddeab465cfc3b6e947f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jan 2023 22:11:15 GMT
ADD file:dc09c8b8bd2fd3e0439792a21b95984ec8104b2a384f5ea2ef173918c105da9c in / 
# Tue, 17 Jan 2023 22:11:15 GMT
CMD ["/bin/bash"]
# Wed, 18 Jan 2023 04:08:00 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql
# Wed, 18 Jan 2023 04:08:00 GMT
ENV GOSU_VERSION=1.14
# Wed, 18 Jan 2023 04:08:03 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true
# Wed, 18 Jan 2023 04:08:24 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all
# Wed, 18 Jan 2023 04:08:25 GMT
RUN set -eux; 	key='859BE8D7C586F538430B19C2467B942D3A79BD29'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME"
# Wed, 18 Jan 2023 04:08:25 GMT
ENV MYSQL_MAJOR=8.0
# Wed, 18 Jan 2023 04:08:25 GMT
ENV MYSQL_VERSION=8.0.32-1.el8
# Wed, 18 Jan 2023 04:08:26 GMT
RUN set -eu; 	. /etc/os-release; 	{ 		echo '[mysql8.0-server-minimal]'; 		echo 'name=MySQL 8.0 Server Minimal'; 		echo 'enabled=1'; 		echo "baseurl=https://repo.mysql.com/yum/mysql-8.0-community/docker/el/${VERSION_ID%%[.-]*}/\$basearch/"; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo
# Wed, 18 Jan 2023 04:08:51 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version
# Wed, 18 Jan 2023 04:08:52 GMT
RUN set -eu; 	. /etc/os-release; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo "baseurl=https://repo.mysql.com/yum/mysql-tools-community/el/${VERSION_ID%%[.-]*}/\$basearch/"; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo
# Wed, 18 Jan 2023 04:08:52 GMT
ENV MYSQL_SHELL_VERSION=8.0.32-1.el8
# Wed, 18 Jan 2023 04:09:20 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version
# Wed, 18 Jan 2023 04:09:21 GMT
VOLUME [/var/lib/mysql]
# Wed, 18 Jan 2023 04:09:22 GMT
COPY file:e9c22353a1133b89c5bca24ecacd348acd094e50e5e5c45375a997c6b1f07192 in /usr/local/bin/ 
# Wed, 18 Jan 2023 04:09:22 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 18 Jan 2023 04:09:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 18 Jan 2023 04:09:22 GMT
EXPOSE 3306 33060
# Wed, 18 Jan 2023 04:09:22 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:002eb071499b5ede36f617906154b8933e643acc41d2993585876528939fb80f`  
		Last Modified: Tue, 17 Jan 2023 22:11:59 GMT  
		Size: 42.8 MB (42775871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d086f781cc89a58af108ca9c9449f425c9724f4c3496221162553df1a1b93b1`  
		Last Modified: Wed, 18 Jan 2023 04:09:53 GMT  
		Size: 887.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9862ebf65785aaef0ba9fa963b094263bb3e293b5a640890222ed7acd5af7db`  
		Last Modified: Wed, 18 Jan 2023 04:09:53 GMT  
		Size: 857.2 KB (857170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:634ee10338cf0d6caa64c412f5cc43406154529eeb00e1d9b3f2f702764ea0e1`  
		Last Modified: Wed, 18 Jan 2023 04:09:51 GMT  
		Size: 4.5 MB (4470630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12e6eec09d9e27159233c7a5c3600283a097266c0c1915898d998c1a1637ef63`  
		Last Modified: Wed, 18 Jan 2023 04:09:51 GMT  
		Size: 2.6 KB (2629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8522115b118748a78ad34acc06d9e7fc3c2137eda9d9af267f0e92dd31fa8d82`  
		Last Modified: Wed, 18 Jan 2023 04:09:51 GMT  
		Size: 337.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b4c61ee2638a33fc07df80ba8aa339b5a77f9fd7abb0176cb08b6003e76403c`  
		Last Modified: Wed, 18 Jan 2023 04:09:55 GMT  
		Size: 55.6 MB (55609188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a2290170fc5408e0ea017d5388f3c23e2a8e4ffa45b69beb6fdeb306e804b31`  
		Last Modified: Wed, 18 Jan 2023 04:09:49 GMT  
		Size: 316.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85bd91cf82a7606dd4ff63ca12449b72c6ddbf0838dc6c051218968a76902bd2`  
		Last Modified: Wed, 18 Jan 2023 04:09:55 GMT  
		Size: 47.1 MB (47137256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02c9209f2d6217ac08e2d235f266452ce7c38dcd9f753d0cb449632f9f1c47bb`  
		Last Modified: Wed, 18 Jan 2023 04:09:49 GMT  
		Size: 5.4 KB (5393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c39ab326bc024f6a0bbf4e6d1bf4dc1f2f2e9049403b9082e90e71a0ec041e0a`  
		Last Modified: Wed, 18 Jan 2023 04:09:49 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
