<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `mysql`

-	[`mysql:26`](#mysql26)
-	[`mysql:26-oracle`](#mysql26-oracle)
-	[`mysql:26-oraclelinux9`](#mysql26-oraclelinux9)
-	[`mysql:26.10`](#mysql2610)
-	[`mysql:26.10-oracle`](#mysql2610-oracle)
-	[`mysql:26.10-oraclelinux9`](#mysql2610-oraclelinux9)
-	[`mysql:26.10.0`](#mysql26100)
-	[`mysql:26.10.0-oracle`](#mysql26100-oracle)
-	[`mysql:26.10.0-oraclelinux9`](#mysql26100-oraclelinux9)
-	[`mysql:8`](#mysql8)
-	[`mysql:8-oracle`](#mysql8-oracle)
-	[`mysql:8-oraclelinux9`](#mysql8-oraclelinux9)
-	[`mysql:8.4`](#mysql84)
-	[`mysql:8.4-oracle`](#mysql84-oracle)
-	[`mysql:8.4-oraclelinux9`](#mysql84-oraclelinux9)
-	[`mysql:8.4.13`](#mysql8413)
-	[`mysql:8.4.13-oracle`](#mysql8413-oracle)
-	[`mysql:8.4.13-oraclelinux9`](#mysql8413-oraclelinux9)
-	[`mysql:9`](#mysql9)
-	[`mysql:9-oracle`](#mysql9-oracle)
-	[`mysql:9-oraclelinux9`](#mysql9-oraclelinux9)
-	[`mysql:9.7`](#mysql97)
-	[`mysql:9.7-oracle`](#mysql97-oracle)
-	[`mysql:9.7-oraclelinux9`](#mysql97-oraclelinux9)
-	[`mysql:9.7.4`](#mysql974)
-	[`mysql:9.7.4-oracle`](#mysql974-oracle)
-	[`mysql:9.7.4-oraclelinux9`](#mysql974-oraclelinux9)
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
$ docker pull mysql@sha256:7b16ec7caa94ca7e92f4c5ec287de69d2e8738db056ceb629022951a6f6d910b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:26` - linux; amd64

```console
$ docker pull mysql@sha256:633e1a8f622f84e9dbd604ab0be4b95211f9f153fdb9832a47c54982d2d43c54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.0 MB (299034565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd99e7baa0197cef65b56edc498c0b098918c875aa0047e0b6f2b56e3b6dd45a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 27 Oct 2026 23:05:41 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 27 Oct 2026 23:05:41 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 23:07:41 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 27 Oct 2026 23:07:43 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 23:07:43 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 23:08:17 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 27 Oct 2026 23:08:17 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 27 Oct 2026 23:08:17 GMT
ENV MYSQL_MAJOR=innovation
# Tue, 27 Oct 2026 23:08:17 GMT
ENV MYSQL_VERSION=26.10.0-1.el9
# Tue, 27 Oct 2026 23:08:17 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 27 Oct 2026 23:08:54 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 27 Oct 2026 23:08:54 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 27 Oct 2026 23:08:54 GMT
ENV MYSQL_SHELL_VERSION=26.10.0-1.el9
# Tue, 27 Oct 2026 23:09:39 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 27 Oct 2026 23:09:39 GMT
VOLUME [/var/lib/mysql]
# Tue, 27 Oct 2026 23:09:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 23:09:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 23:09:39 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 27 Oct 2026 23:09:39 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:1610bd8e525d37f7b01147980f0f660538a95e978eee8351a908a00d143c2910`  
		Last Modified: Tue, 27 Oct 2026 23:05:52 GMT  
		Size: 47.2 MB (47188107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac16b2e289d5e3b3f467ebc4e9a0bcf7f86912e39fae80a3c564f15a88c2466b`  
		Last Modified: Tue, 27 Oct 2026 23:10:04 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c61a0b298231054a50162fd8ba5f1663d9575339fda1abfa97cfea17bd5e8f87`  
		Last Modified: Tue, 27 Oct 2026 23:10:04 GMT  
		Size: 783.6 KB (783565 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2801c41ee6ad0d666bc4309612d991d09531f3297dd8ddbb463813c8967325c1`  
		Last Modified: Tue, 27 Oct 2026 23:10:04 GMT  
		Size: 6.2 MB (6186741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:def0bf29cc7b751404f7f318d68ec3aa529a8beda7975fcf62dbb9a8caa7fbab`  
		Last Modified: Tue, 27 Oct 2026 23:10:04 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ad863d106ceb7d3f7b41654346e301454334b7e494c49d03608dfd53ea74c0a`  
		Last Modified: Tue, 27 Oct 2026 23:10:05 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6e8373886396224aa79aacfa24c7067210b3b03249af3d15df749586398d458`  
		Last Modified: Tue, 27 Oct 2026 23:10:07 GMT  
		Size: 63.8 MB (63787570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:618abfb0ceb2f256a50c49283e301ffe6d90bf670639af6c3285bc316dde4a9a`  
		Last Modified: Tue, 27 Oct 2026 23:10:05 GMT  
		Size: 326.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53add8b74cb923c03864601ead8537c16e654fbdbeab2dcf44019ce56afda85e`  
		Last Modified: Tue, 27 Oct 2026 23:10:10 GMT  
		Size: 181.1 MB (181079201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f031910ef3c1d0e215ef20ed21e6aca465b9a868e5458ef2b096921e8b15d309`  
		Last Modified: Tue, 27 Oct 2026 23:10:06 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26` - unknown; unknown

```console
$ docker pull mysql@sha256:d0adcc86cc3bfc192c2dd8911f9d2ffa55eef14f97df509d5c61492c99aae422
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5334085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a51f02baf4a3a1bfdbd9ee424383a9147d6cc7207546a3b0deb7fafffddb200`

```dockerfile
```

-	Layers:
	-	`sha256:c1808d28dcbc17eb640423e5603d0a2be0c0faa45da0114f3a5f738ad7d8e3b1`  
		Last Modified: Tue, 27 Oct 2026 23:10:04 GMT  
		Size: 5.3 MB (5298766 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f27adb461b49aebbacd4550ea3751e7d8d4ce0328115dc5a6084889a6fc42e7a`  
		Last Modified: Tue, 27 Oct 2026 23:10:04 GMT  
		Size: 35.3 KB (35319 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:26` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:b58efd11d883b862f7dd1077966de3a443d00c126952bc29023368927b6f92f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.5 MB (295459639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2dc3a37aad4fba70b9e8521751c7fb3146267829fb37fe54a717eea4c76d47b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 27 Oct 2026 23:05:32 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 27 Oct 2026 23:05:32 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 23:07:11 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 27 Oct 2026 23:07:13 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 23:07:13 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 23:07:54 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 27 Oct 2026 23:07:55 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 27 Oct 2026 23:07:55 GMT
ENV MYSQL_MAJOR=innovation
# Tue, 27 Oct 2026 23:07:55 GMT
ENV MYSQL_VERSION=26.10.0-1.el9
# Tue, 27 Oct 2026 23:07:55 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 27 Oct 2026 23:08:40 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 27 Oct 2026 23:08:40 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 27 Oct 2026 23:08:40 GMT
ENV MYSQL_SHELL_VERSION=26.10.0-1.el9
# Tue, 27 Oct 2026 23:09:33 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 27 Oct 2026 23:09:33 GMT
VOLUME [/var/lib/mysql]
# Tue, 27 Oct 2026 23:09:33 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 23:09:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 23:09:33 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 27 Oct 2026 23:09:33 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:11f62504eea6ae8bacf9c501835f2547c0d6c7f6ff85fd7a67912c41a123c561`  
		Last Modified: Tue, 27 Oct 2026 23:05:43 GMT  
		Size: 45.7 MB (45732830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4e5d43c68979146dbb3b749889e44c0df6b13705a3f8d77363860f1948855d1`  
		Last Modified: Tue, 27 Oct 2026 23:09:59 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4aa276b8ad98ea5a94a307c51cfa087e983a9a3b2b3493fcfa4ebe1a2ca4ca6`  
		Last Modified: Tue, 27 Oct 2026 23:09:59 GMT  
		Size: 737.5 KB (737531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0d59f31e167a0280a1abacc18ded1666cf09b143e77c2fe75430221fcf88b97`  
		Last Modified: Tue, 27 Oct 2026 23:09:59 GMT  
		Size: 5.8 MB (5806804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dd2e8db297eaf92240eaee30a70e6ac6d0327b710ccf1916e12e9f1aba94003`  
		Last Modified: Tue, 27 Oct 2026 23:09:59 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dbfa79bc208c00ab3ce9eb587872ead8aa0409625ab0388ec466292a35e689e`  
		Last Modified: Tue, 27 Oct 2026 23:10:00 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3740231fab18490409e308e9566caf7c08fef0b9fa26a794dc399cd8785bc3e`  
		Last Modified: Tue, 27 Oct 2026 23:10:03 GMT  
		Size: 63.8 MB (63821777 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f641eea4863ab02c549bd4aec1451b6852cf50c885a71dd2993969a83f0b4e10`  
		Last Modified: Tue, 27 Oct 2026 23:10:00 GMT  
		Size: 326.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9bc9578e067546beeda8a1e501e1850f1f7f152b5331e613df3a2dc565a7b42`  
		Last Modified: Tue, 27 Oct 2026 23:10:06 GMT  
		Size: 179.4 MB (179351313 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30c35ea3883909773fc3524f62d1dd027bb8c7e05ae0d6e9bd6bb481d9414b86`  
		Last Modified: Tue, 27 Oct 2026 23:10:01 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26` - unknown; unknown

```console
$ docker pull mysql@sha256:38be110e6029f2834125e096980b80c780800c82084b29754ad5e66bd7a453ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5332899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b00daf0ce3011b7bb69edcf8bc471ad09a83978c2a9d02764e2839d1c5fb5be`

```dockerfile
```

-	Layers:
	-	`sha256:eec04a9714639f43626432e4538d76f2eb6fb83e0f9b1ddaffded5e78eba31c8`  
		Last Modified: Tue, 27 Oct 2026 23:09:59 GMT  
		Size: 5.3 MB (5297239 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:def8b01477cff5561c2af633ec66f08daff73e75686692bc550778886e66baba`  
		Last Modified: Tue, 27 Oct 2026 23:09:58 GMT  
		Size: 35.7 KB (35660 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:26-oracle`

```console
$ docker pull mysql@sha256:7b16ec7caa94ca7e92f4c5ec287de69d2e8738db056ceb629022951a6f6d910b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:26-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:633e1a8f622f84e9dbd604ab0be4b95211f9f153fdb9832a47c54982d2d43c54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.0 MB (299034565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd99e7baa0197cef65b56edc498c0b098918c875aa0047e0b6f2b56e3b6dd45a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 27 Oct 2026 23:05:41 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 27 Oct 2026 23:05:41 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 23:07:41 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 27 Oct 2026 23:07:43 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 23:07:43 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 23:08:17 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 27 Oct 2026 23:08:17 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 27 Oct 2026 23:08:17 GMT
ENV MYSQL_MAJOR=innovation
# Tue, 27 Oct 2026 23:08:17 GMT
ENV MYSQL_VERSION=26.10.0-1.el9
# Tue, 27 Oct 2026 23:08:17 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 27 Oct 2026 23:08:54 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 27 Oct 2026 23:08:54 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 27 Oct 2026 23:08:54 GMT
ENV MYSQL_SHELL_VERSION=26.10.0-1.el9
# Tue, 27 Oct 2026 23:09:39 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 27 Oct 2026 23:09:39 GMT
VOLUME [/var/lib/mysql]
# Tue, 27 Oct 2026 23:09:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 23:09:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 23:09:39 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 27 Oct 2026 23:09:39 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:1610bd8e525d37f7b01147980f0f660538a95e978eee8351a908a00d143c2910`  
		Last Modified: Tue, 27 Oct 2026 23:05:52 GMT  
		Size: 47.2 MB (47188107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac16b2e289d5e3b3f467ebc4e9a0bcf7f86912e39fae80a3c564f15a88c2466b`  
		Last Modified: Tue, 27 Oct 2026 23:10:04 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c61a0b298231054a50162fd8ba5f1663d9575339fda1abfa97cfea17bd5e8f87`  
		Last Modified: Tue, 27 Oct 2026 23:10:04 GMT  
		Size: 783.6 KB (783565 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2801c41ee6ad0d666bc4309612d991d09531f3297dd8ddbb463813c8967325c1`  
		Last Modified: Tue, 27 Oct 2026 23:10:04 GMT  
		Size: 6.2 MB (6186741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:def0bf29cc7b751404f7f318d68ec3aa529a8beda7975fcf62dbb9a8caa7fbab`  
		Last Modified: Tue, 27 Oct 2026 23:10:04 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ad863d106ceb7d3f7b41654346e301454334b7e494c49d03608dfd53ea74c0a`  
		Last Modified: Tue, 27 Oct 2026 23:10:05 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6e8373886396224aa79aacfa24c7067210b3b03249af3d15df749586398d458`  
		Last Modified: Tue, 27 Oct 2026 23:10:07 GMT  
		Size: 63.8 MB (63787570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:618abfb0ceb2f256a50c49283e301ffe6d90bf670639af6c3285bc316dde4a9a`  
		Last Modified: Tue, 27 Oct 2026 23:10:05 GMT  
		Size: 326.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53add8b74cb923c03864601ead8537c16e654fbdbeab2dcf44019ce56afda85e`  
		Last Modified: Tue, 27 Oct 2026 23:10:10 GMT  
		Size: 181.1 MB (181079201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f031910ef3c1d0e215ef20ed21e6aca465b9a868e5458ef2b096921e8b15d309`  
		Last Modified: Tue, 27 Oct 2026 23:10:06 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:d0adcc86cc3bfc192c2dd8911f9d2ffa55eef14f97df509d5c61492c99aae422
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5334085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a51f02baf4a3a1bfdbd9ee424383a9147d6cc7207546a3b0deb7fafffddb200`

```dockerfile
```

-	Layers:
	-	`sha256:c1808d28dcbc17eb640423e5603d0a2be0c0faa45da0114f3a5f738ad7d8e3b1`  
		Last Modified: Tue, 27 Oct 2026 23:10:04 GMT  
		Size: 5.3 MB (5298766 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f27adb461b49aebbacd4550ea3751e7d8d4ce0328115dc5a6084889a6fc42e7a`  
		Last Modified: Tue, 27 Oct 2026 23:10:04 GMT  
		Size: 35.3 KB (35319 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:26-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:b58efd11d883b862f7dd1077966de3a443d00c126952bc29023368927b6f92f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.5 MB (295459639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2dc3a37aad4fba70b9e8521751c7fb3146267829fb37fe54a717eea4c76d47b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 27 Oct 2026 23:05:32 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 27 Oct 2026 23:05:32 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 23:07:11 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 27 Oct 2026 23:07:13 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 23:07:13 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 23:07:54 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 27 Oct 2026 23:07:55 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 27 Oct 2026 23:07:55 GMT
ENV MYSQL_MAJOR=innovation
# Tue, 27 Oct 2026 23:07:55 GMT
ENV MYSQL_VERSION=26.10.0-1.el9
# Tue, 27 Oct 2026 23:07:55 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 27 Oct 2026 23:08:40 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 27 Oct 2026 23:08:40 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 27 Oct 2026 23:08:40 GMT
ENV MYSQL_SHELL_VERSION=26.10.0-1.el9
# Tue, 27 Oct 2026 23:09:33 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 27 Oct 2026 23:09:33 GMT
VOLUME [/var/lib/mysql]
# Tue, 27 Oct 2026 23:09:33 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 23:09:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 23:09:33 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 27 Oct 2026 23:09:33 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:11f62504eea6ae8bacf9c501835f2547c0d6c7f6ff85fd7a67912c41a123c561`  
		Last Modified: Tue, 27 Oct 2026 23:05:43 GMT  
		Size: 45.7 MB (45732830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4e5d43c68979146dbb3b749889e44c0df6b13705a3f8d77363860f1948855d1`  
		Last Modified: Tue, 27 Oct 2026 23:09:59 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4aa276b8ad98ea5a94a307c51cfa087e983a9a3b2b3493fcfa4ebe1a2ca4ca6`  
		Last Modified: Tue, 27 Oct 2026 23:09:59 GMT  
		Size: 737.5 KB (737531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0d59f31e167a0280a1abacc18ded1666cf09b143e77c2fe75430221fcf88b97`  
		Last Modified: Tue, 27 Oct 2026 23:09:59 GMT  
		Size: 5.8 MB (5806804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dd2e8db297eaf92240eaee30a70e6ac6d0327b710ccf1916e12e9f1aba94003`  
		Last Modified: Tue, 27 Oct 2026 23:09:59 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dbfa79bc208c00ab3ce9eb587872ead8aa0409625ab0388ec466292a35e689e`  
		Last Modified: Tue, 27 Oct 2026 23:10:00 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3740231fab18490409e308e9566caf7c08fef0b9fa26a794dc399cd8785bc3e`  
		Last Modified: Tue, 27 Oct 2026 23:10:03 GMT  
		Size: 63.8 MB (63821777 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f641eea4863ab02c549bd4aec1451b6852cf50c885a71dd2993969a83f0b4e10`  
		Last Modified: Tue, 27 Oct 2026 23:10:00 GMT  
		Size: 326.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9bc9578e067546beeda8a1e501e1850f1f7f152b5331e613df3a2dc565a7b42`  
		Last Modified: Tue, 27 Oct 2026 23:10:06 GMT  
		Size: 179.4 MB (179351313 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30c35ea3883909773fc3524f62d1dd027bb8c7e05ae0d6e9bd6bb481d9414b86`  
		Last Modified: Tue, 27 Oct 2026 23:10:01 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:38be110e6029f2834125e096980b80c780800c82084b29754ad5e66bd7a453ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5332899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b00daf0ce3011b7bb69edcf8bc471ad09a83978c2a9d02764e2839d1c5fb5be`

```dockerfile
```

-	Layers:
	-	`sha256:eec04a9714639f43626432e4538d76f2eb6fb83e0f9b1ddaffded5e78eba31c8`  
		Last Modified: Tue, 27 Oct 2026 23:09:59 GMT  
		Size: 5.3 MB (5297239 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:def8b01477cff5561c2af633ec66f08daff73e75686692bc550778886e66baba`  
		Last Modified: Tue, 27 Oct 2026 23:09:58 GMT  
		Size: 35.7 KB (35660 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:26-oraclelinux9`

```console
$ docker pull mysql@sha256:7b16ec7caa94ca7e92f4c5ec287de69d2e8738db056ceb629022951a6f6d910b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:26-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:633e1a8f622f84e9dbd604ab0be4b95211f9f153fdb9832a47c54982d2d43c54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.0 MB (299034565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd99e7baa0197cef65b56edc498c0b098918c875aa0047e0b6f2b56e3b6dd45a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 27 Oct 2026 23:05:41 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 27 Oct 2026 23:05:41 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 23:07:41 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 27 Oct 2026 23:07:43 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 23:07:43 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 23:08:17 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 27 Oct 2026 23:08:17 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 27 Oct 2026 23:08:17 GMT
ENV MYSQL_MAJOR=innovation
# Tue, 27 Oct 2026 23:08:17 GMT
ENV MYSQL_VERSION=26.10.0-1.el9
# Tue, 27 Oct 2026 23:08:17 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 27 Oct 2026 23:08:54 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 27 Oct 2026 23:08:54 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 27 Oct 2026 23:08:54 GMT
ENV MYSQL_SHELL_VERSION=26.10.0-1.el9
# Tue, 27 Oct 2026 23:09:39 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 27 Oct 2026 23:09:39 GMT
VOLUME [/var/lib/mysql]
# Tue, 27 Oct 2026 23:09:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 23:09:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 23:09:39 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 27 Oct 2026 23:09:39 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:1610bd8e525d37f7b01147980f0f660538a95e978eee8351a908a00d143c2910`  
		Last Modified: Tue, 27 Oct 2026 23:05:52 GMT  
		Size: 47.2 MB (47188107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac16b2e289d5e3b3f467ebc4e9a0bcf7f86912e39fae80a3c564f15a88c2466b`  
		Last Modified: Tue, 27 Oct 2026 23:10:04 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c61a0b298231054a50162fd8ba5f1663d9575339fda1abfa97cfea17bd5e8f87`  
		Last Modified: Tue, 27 Oct 2026 23:10:04 GMT  
		Size: 783.6 KB (783565 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2801c41ee6ad0d666bc4309612d991d09531f3297dd8ddbb463813c8967325c1`  
		Last Modified: Tue, 27 Oct 2026 23:10:04 GMT  
		Size: 6.2 MB (6186741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:def0bf29cc7b751404f7f318d68ec3aa529a8beda7975fcf62dbb9a8caa7fbab`  
		Last Modified: Tue, 27 Oct 2026 23:10:04 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ad863d106ceb7d3f7b41654346e301454334b7e494c49d03608dfd53ea74c0a`  
		Last Modified: Tue, 27 Oct 2026 23:10:05 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6e8373886396224aa79aacfa24c7067210b3b03249af3d15df749586398d458`  
		Last Modified: Tue, 27 Oct 2026 23:10:07 GMT  
		Size: 63.8 MB (63787570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:618abfb0ceb2f256a50c49283e301ffe6d90bf670639af6c3285bc316dde4a9a`  
		Last Modified: Tue, 27 Oct 2026 23:10:05 GMT  
		Size: 326.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53add8b74cb923c03864601ead8537c16e654fbdbeab2dcf44019ce56afda85e`  
		Last Modified: Tue, 27 Oct 2026 23:10:10 GMT  
		Size: 181.1 MB (181079201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f031910ef3c1d0e215ef20ed21e6aca465b9a868e5458ef2b096921e8b15d309`  
		Last Modified: Tue, 27 Oct 2026 23:10:06 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:d0adcc86cc3bfc192c2dd8911f9d2ffa55eef14f97df509d5c61492c99aae422
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5334085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a51f02baf4a3a1bfdbd9ee424383a9147d6cc7207546a3b0deb7fafffddb200`

```dockerfile
```

-	Layers:
	-	`sha256:c1808d28dcbc17eb640423e5603d0a2be0c0faa45da0114f3a5f738ad7d8e3b1`  
		Last Modified: Tue, 27 Oct 2026 23:10:04 GMT  
		Size: 5.3 MB (5298766 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f27adb461b49aebbacd4550ea3751e7d8d4ce0328115dc5a6084889a6fc42e7a`  
		Last Modified: Tue, 27 Oct 2026 23:10:04 GMT  
		Size: 35.3 KB (35319 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:26-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:b58efd11d883b862f7dd1077966de3a443d00c126952bc29023368927b6f92f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.5 MB (295459639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2dc3a37aad4fba70b9e8521751c7fb3146267829fb37fe54a717eea4c76d47b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 27 Oct 2026 23:05:32 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 27 Oct 2026 23:05:32 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 23:07:11 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 27 Oct 2026 23:07:13 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 23:07:13 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 23:07:54 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 27 Oct 2026 23:07:55 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 27 Oct 2026 23:07:55 GMT
ENV MYSQL_MAJOR=innovation
# Tue, 27 Oct 2026 23:07:55 GMT
ENV MYSQL_VERSION=26.10.0-1.el9
# Tue, 27 Oct 2026 23:07:55 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 27 Oct 2026 23:08:40 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 27 Oct 2026 23:08:40 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 27 Oct 2026 23:08:40 GMT
ENV MYSQL_SHELL_VERSION=26.10.0-1.el9
# Tue, 27 Oct 2026 23:09:33 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 27 Oct 2026 23:09:33 GMT
VOLUME [/var/lib/mysql]
# Tue, 27 Oct 2026 23:09:33 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 23:09:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 23:09:33 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 27 Oct 2026 23:09:33 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:11f62504eea6ae8bacf9c501835f2547c0d6c7f6ff85fd7a67912c41a123c561`  
		Last Modified: Tue, 27 Oct 2026 23:05:43 GMT  
		Size: 45.7 MB (45732830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4e5d43c68979146dbb3b749889e44c0df6b13705a3f8d77363860f1948855d1`  
		Last Modified: Tue, 27 Oct 2026 23:09:59 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4aa276b8ad98ea5a94a307c51cfa087e983a9a3b2b3493fcfa4ebe1a2ca4ca6`  
		Last Modified: Tue, 27 Oct 2026 23:09:59 GMT  
		Size: 737.5 KB (737531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0d59f31e167a0280a1abacc18ded1666cf09b143e77c2fe75430221fcf88b97`  
		Last Modified: Tue, 27 Oct 2026 23:09:59 GMT  
		Size: 5.8 MB (5806804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dd2e8db297eaf92240eaee30a70e6ac6d0327b710ccf1916e12e9f1aba94003`  
		Last Modified: Tue, 27 Oct 2026 23:09:59 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dbfa79bc208c00ab3ce9eb587872ead8aa0409625ab0388ec466292a35e689e`  
		Last Modified: Tue, 27 Oct 2026 23:10:00 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3740231fab18490409e308e9566caf7c08fef0b9fa26a794dc399cd8785bc3e`  
		Last Modified: Tue, 27 Oct 2026 23:10:03 GMT  
		Size: 63.8 MB (63821777 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f641eea4863ab02c549bd4aec1451b6852cf50c885a71dd2993969a83f0b4e10`  
		Last Modified: Tue, 27 Oct 2026 23:10:00 GMT  
		Size: 326.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9bc9578e067546beeda8a1e501e1850f1f7f152b5331e613df3a2dc565a7b42`  
		Last Modified: Tue, 27 Oct 2026 23:10:06 GMT  
		Size: 179.4 MB (179351313 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30c35ea3883909773fc3524f62d1dd027bb8c7e05ae0d6e9bd6bb481d9414b86`  
		Last Modified: Tue, 27 Oct 2026 23:10:01 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:38be110e6029f2834125e096980b80c780800c82084b29754ad5e66bd7a453ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5332899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b00daf0ce3011b7bb69edcf8bc471ad09a83978c2a9d02764e2839d1c5fb5be`

```dockerfile
```

-	Layers:
	-	`sha256:eec04a9714639f43626432e4538d76f2eb6fb83e0f9b1ddaffded5e78eba31c8`  
		Last Modified: Tue, 27 Oct 2026 23:09:59 GMT  
		Size: 5.3 MB (5297239 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:def8b01477cff5561c2af633ec66f08daff73e75686692bc550778886e66baba`  
		Last Modified: Tue, 27 Oct 2026 23:09:58 GMT  
		Size: 35.7 KB (35660 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:26.10`

```console
$ docker pull mysql@sha256:7b16ec7caa94ca7e92f4c5ec287de69d2e8738db056ceb629022951a6f6d910b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:26.10` - linux; amd64

```console
$ docker pull mysql@sha256:633e1a8f622f84e9dbd604ab0be4b95211f9f153fdb9832a47c54982d2d43c54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.0 MB (299034565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd99e7baa0197cef65b56edc498c0b098918c875aa0047e0b6f2b56e3b6dd45a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 27 Oct 2026 23:05:41 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 27 Oct 2026 23:05:41 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 23:07:41 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 27 Oct 2026 23:07:43 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 23:07:43 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 23:08:17 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 27 Oct 2026 23:08:17 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 27 Oct 2026 23:08:17 GMT
ENV MYSQL_MAJOR=innovation
# Tue, 27 Oct 2026 23:08:17 GMT
ENV MYSQL_VERSION=26.10.0-1.el9
# Tue, 27 Oct 2026 23:08:17 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 27 Oct 2026 23:08:54 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 27 Oct 2026 23:08:54 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 27 Oct 2026 23:08:54 GMT
ENV MYSQL_SHELL_VERSION=26.10.0-1.el9
# Tue, 27 Oct 2026 23:09:39 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 27 Oct 2026 23:09:39 GMT
VOLUME [/var/lib/mysql]
# Tue, 27 Oct 2026 23:09:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 23:09:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 23:09:39 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 27 Oct 2026 23:09:39 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:1610bd8e525d37f7b01147980f0f660538a95e978eee8351a908a00d143c2910`  
		Last Modified: Tue, 27 Oct 2026 23:05:52 GMT  
		Size: 47.2 MB (47188107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac16b2e289d5e3b3f467ebc4e9a0bcf7f86912e39fae80a3c564f15a88c2466b`  
		Last Modified: Tue, 27 Oct 2026 23:10:04 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c61a0b298231054a50162fd8ba5f1663d9575339fda1abfa97cfea17bd5e8f87`  
		Last Modified: Tue, 27 Oct 2026 23:10:04 GMT  
		Size: 783.6 KB (783565 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2801c41ee6ad0d666bc4309612d991d09531f3297dd8ddbb463813c8967325c1`  
		Last Modified: Tue, 27 Oct 2026 23:10:04 GMT  
		Size: 6.2 MB (6186741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:def0bf29cc7b751404f7f318d68ec3aa529a8beda7975fcf62dbb9a8caa7fbab`  
		Last Modified: Tue, 27 Oct 2026 23:10:04 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ad863d106ceb7d3f7b41654346e301454334b7e494c49d03608dfd53ea74c0a`  
		Last Modified: Tue, 27 Oct 2026 23:10:05 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6e8373886396224aa79aacfa24c7067210b3b03249af3d15df749586398d458`  
		Last Modified: Tue, 27 Oct 2026 23:10:07 GMT  
		Size: 63.8 MB (63787570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:618abfb0ceb2f256a50c49283e301ffe6d90bf670639af6c3285bc316dde4a9a`  
		Last Modified: Tue, 27 Oct 2026 23:10:05 GMT  
		Size: 326.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53add8b74cb923c03864601ead8537c16e654fbdbeab2dcf44019ce56afda85e`  
		Last Modified: Tue, 27 Oct 2026 23:10:10 GMT  
		Size: 181.1 MB (181079201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f031910ef3c1d0e215ef20ed21e6aca465b9a868e5458ef2b096921e8b15d309`  
		Last Modified: Tue, 27 Oct 2026 23:10:06 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26.10` - unknown; unknown

```console
$ docker pull mysql@sha256:d0adcc86cc3bfc192c2dd8911f9d2ffa55eef14f97df509d5c61492c99aae422
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5334085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a51f02baf4a3a1bfdbd9ee424383a9147d6cc7207546a3b0deb7fafffddb200`

```dockerfile
```

-	Layers:
	-	`sha256:c1808d28dcbc17eb640423e5603d0a2be0c0faa45da0114f3a5f738ad7d8e3b1`  
		Last Modified: Tue, 27 Oct 2026 23:10:04 GMT  
		Size: 5.3 MB (5298766 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f27adb461b49aebbacd4550ea3751e7d8d4ce0328115dc5a6084889a6fc42e7a`  
		Last Modified: Tue, 27 Oct 2026 23:10:04 GMT  
		Size: 35.3 KB (35319 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:26.10` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:b58efd11d883b862f7dd1077966de3a443d00c126952bc29023368927b6f92f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.5 MB (295459639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2dc3a37aad4fba70b9e8521751c7fb3146267829fb37fe54a717eea4c76d47b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 27 Oct 2026 23:05:32 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 27 Oct 2026 23:05:32 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 23:07:11 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 27 Oct 2026 23:07:13 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 23:07:13 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 23:07:54 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 27 Oct 2026 23:07:55 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 27 Oct 2026 23:07:55 GMT
ENV MYSQL_MAJOR=innovation
# Tue, 27 Oct 2026 23:07:55 GMT
ENV MYSQL_VERSION=26.10.0-1.el9
# Tue, 27 Oct 2026 23:07:55 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 27 Oct 2026 23:08:40 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 27 Oct 2026 23:08:40 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 27 Oct 2026 23:08:40 GMT
ENV MYSQL_SHELL_VERSION=26.10.0-1.el9
# Tue, 27 Oct 2026 23:09:33 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 27 Oct 2026 23:09:33 GMT
VOLUME [/var/lib/mysql]
# Tue, 27 Oct 2026 23:09:33 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 23:09:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 23:09:33 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 27 Oct 2026 23:09:33 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:11f62504eea6ae8bacf9c501835f2547c0d6c7f6ff85fd7a67912c41a123c561`  
		Last Modified: Tue, 27 Oct 2026 23:05:43 GMT  
		Size: 45.7 MB (45732830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4e5d43c68979146dbb3b749889e44c0df6b13705a3f8d77363860f1948855d1`  
		Last Modified: Tue, 27 Oct 2026 23:09:59 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4aa276b8ad98ea5a94a307c51cfa087e983a9a3b2b3493fcfa4ebe1a2ca4ca6`  
		Last Modified: Tue, 27 Oct 2026 23:09:59 GMT  
		Size: 737.5 KB (737531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0d59f31e167a0280a1abacc18ded1666cf09b143e77c2fe75430221fcf88b97`  
		Last Modified: Tue, 27 Oct 2026 23:09:59 GMT  
		Size: 5.8 MB (5806804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dd2e8db297eaf92240eaee30a70e6ac6d0327b710ccf1916e12e9f1aba94003`  
		Last Modified: Tue, 27 Oct 2026 23:09:59 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dbfa79bc208c00ab3ce9eb587872ead8aa0409625ab0388ec466292a35e689e`  
		Last Modified: Tue, 27 Oct 2026 23:10:00 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3740231fab18490409e308e9566caf7c08fef0b9fa26a794dc399cd8785bc3e`  
		Last Modified: Tue, 27 Oct 2026 23:10:03 GMT  
		Size: 63.8 MB (63821777 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f641eea4863ab02c549bd4aec1451b6852cf50c885a71dd2993969a83f0b4e10`  
		Last Modified: Tue, 27 Oct 2026 23:10:00 GMT  
		Size: 326.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9bc9578e067546beeda8a1e501e1850f1f7f152b5331e613df3a2dc565a7b42`  
		Last Modified: Tue, 27 Oct 2026 23:10:06 GMT  
		Size: 179.4 MB (179351313 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30c35ea3883909773fc3524f62d1dd027bb8c7e05ae0d6e9bd6bb481d9414b86`  
		Last Modified: Tue, 27 Oct 2026 23:10:01 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26.10` - unknown; unknown

```console
$ docker pull mysql@sha256:38be110e6029f2834125e096980b80c780800c82084b29754ad5e66bd7a453ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5332899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b00daf0ce3011b7bb69edcf8bc471ad09a83978c2a9d02764e2839d1c5fb5be`

```dockerfile
```

-	Layers:
	-	`sha256:eec04a9714639f43626432e4538d76f2eb6fb83e0f9b1ddaffded5e78eba31c8`  
		Last Modified: Tue, 27 Oct 2026 23:09:59 GMT  
		Size: 5.3 MB (5297239 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:def8b01477cff5561c2af633ec66f08daff73e75686692bc550778886e66baba`  
		Last Modified: Tue, 27 Oct 2026 23:09:58 GMT  
		Size: 35.7 KB (35660 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:26.10-oracle`

```console
$ docker pull mysql@sha256:7b16ec7caa94ca7e92f4c5ec287de69d2e8738db056ceb629022951a6f6d910b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:26.10-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:633e1a8f622f84e9dbd604ab0be4b95211f9f153fdb9832a47c54982d2d43c54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.0 MB (299034565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd99e7baa0197cef65b56edc498c0b098918c875aa0047e0b6f2b56e3b6dd45a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 27 Oct 2026 23:05:41 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 27 Oct 2026 23:05:41 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 23:07:41 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 27 Oct 2026 23:07:43 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 23:07:43 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 23:08:17 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 27 Oct 2026 23:08:17 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 27 Oct 2026 23:08:17 GMT
ENV MYSQL_MAJOR=innovation
# Tue, 27 Oct 2026 23:08:17 GMT
ENV MYSQL_VERSION=26.10.0-1.el9
# Tue, 27 Oct 2026 23:08:17 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 27 Oct 2026 23:08:54 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 27 Oct 2026 23:08:54 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 27 Oct 2026 23:08:54 GMT
ENV MYSQL_SHELL_VERSION=26.10.0-1.el9
# Tue, 27 Oct 2026 23:09:39 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 27 Oct 2026 23:09:39 GMT
VOLUME [/var/lib/mysql]
# Tue, 27 Oct 2026 23:09:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 23:09:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 23:09:39 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 27 Oct 2026 23:09:39 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:1610bd8e525d37f7b01147980f0f660538a95e978eee8351a908a00d143c2910`  
		Last Modified: Tue, 27 Oct 2026 23:05:52 GMT  
		Size: 47.2 MB (47188107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac16b2e289d5e3b3f467ebc4e9a0bcf7f86912e39fae80a3c564f15a88c2466b`  
		Last Modified: Tue, 27 Oct 2026 23:10:04 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c61a0b298231054a50162fd8ba5f1663d9575339fda1abfa97cfea17bd5e8f87`  
		Last Modified: Tue, 27 Oct 2026 23:10:04 GMT  
		Size: 783.6 KB (783565 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2801c41ee6ad0d666bc4309612d991d09531f3297dd8ddbb463813c8967325c1`  
		Last Modified: Tue, 27 Oct 2026 23:10:04 GMT  
		Size: 6.2 MB (6186741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:def0bf29cc7b751404f7f318d68ec3aa529a8beda7975fcf62dbb9a8caa7fbab`  
		Last Modified: Tue, 27 Oct 2026 23:10:04 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ad863d106ceb7d3f7b41654346e301454334b7e494c49d03608dfd53ea74c0a`  
		Last Modified: Tue, 27 Oct 2026 23:10:05 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6e8373886396224aa79aacfa24c7067210b3b03249af3d15df749586398d458`  
		Last Modified: Tue, 27 Oct 2026 23:10:07 GMT  
		Size: 63.8 MB (63787570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:618abfb0ceb2f256a50c49283e301ffe6d90bf670639af6c3285bc316dde4a9a`  
		Last Modified: Tue, 27 Oct 2026 23:10:05 GMT  
		Size: 326.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53add8b74cb923c03864601ead8537c16e654fbdbeab2dcf44019ce56afda85e`  
		Last Modified: Tue, 27 Oct 2026 23:10:10 GMT  
		Size: 181.1 MB (181079201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f031910ef3c1d0e215ef20ed21e6aca465b9a868e5458ef2b096921e8b15d309`  
		Last Modified: Tue, 27 Oct 2026 23:10:06 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26.10-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:d0adcc86cc3bfc192c2dd8911f9d2ffa55eef14f97df509d5c61492c99aae422
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5334085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a51f02baf4a3a1bfdbd9ee424383a9147d6cc7207546a3b0deb7fafffddb200`

```dockerfile
```

-	Layers:
	-	`sha256:c1808d28dcbc17eb640423e5603d0a2be0c0faa45da0114f3a5f738ad7d8e3b1`  
		Last Modified: Tue, 27 Oct 2026 23:10:04 GMT  
		Size: 5.3 MB (5298766 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f27adb461b49aebbacd4550ea3751e7d8d4ce0328115dc5a6084889a6fc42e7a`  
		Last Modified: Tue, 27 Oct 2026 23:10:04 GMT  
		Size: 35.3 KB (35319 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:26.10-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:b58efd11d883b862f7dd1077966de3a443d00c126952bc29023368927b6f92f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.5 MB (295459639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2dc3a37aad4fba70b9e8521751c7fb3146267829fb37fe54a717eea4c76d47b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 27 Oct 2026 23:05:32 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 27 Oct 2026 23:05:32 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 23:07:11 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 27 Oct 2026 23:07:13 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 23:07:13 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 23:07:54 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 27 Oct 2026 23:07:55 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 27 Oct 2026 23:07:55 GMT
ENV MYSQL_MAJOR=innovation
# Tue, 27 Oct 2026 23:07:55 GMT
ENV MYSQL_VERSION=26.10.0-1.el9
# Tue, 27 Oct 2026 23:07:55 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 27 Oct 2026 23:08:40 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 27 Oct 2026 23:08:40 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 27 Oct 2026 23:08:40 GMT
ENV MYSQL_SHELL_VERSION=26.10.0-1.el9
# Tue, 27 Oct 2026 23:09:33 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 27 Oct 2026 23:09:33 GMT
VOLUME [/var/lib/mysql]
# Tue, 27 Oct 2026 23:09:33 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 23:09:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 23:09:33 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 27 Oct 2026 23:09:33 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:11f62504eea6ae8bacf9c501835f2547c0d6c7f6ff85fd7a67912c41a123c561`  
		Last Modified: Tue, 27 Oct 2026 23:05:43 GMT  
		Size: 45.7 MB (45732830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4e5d43c68979146dbb3b749889e44c0df6b13705a3f8d77363860f1948855d1`  
		Last Modified: Tue, 27 Oct 2026 23:09:59 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4aa276b8ad98ea5a94a307c51cfa087e983a9a3b2b3493fcfa4ebe1a2ca4ca6`  
		Last Modified: Tue, 27 Oct 2026 23:09:59 GMT  
		Size: 737.5 KB (737531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0d59f31e167a0280a1abacc18ded1666cf09b143e77c2fe75430221fcf88b97`  
		Last Modified: Tue, 27 Oct 2026 23:09:59 GMT  
		Size: 5.8 MB (5806804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dd2e8db297eaf92240eaee30a70e6ac6d0327b710ccf1916e12e9f1aba94003`  
		Last Modified: Tue, 27 Oct 2026 23:09:59 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dbfa79bc208c00ab3ce9eb587872ead8aa0409625ab0388ec466292a35e689e`  
		Last Modified: Tue, 27 Oct 2026 23:10:00 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3740231fab18490409e308e9566caf7c08fef0b9fa26a794dc399cd8785bc3e`  
		Last Modified: Tue, 27 Oct 2026 23:10:03 GMT  
		Size: 63.8 MB (63821777 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f641eea4863ab02c549bd4aec1451b6852cf50c885a71dd2993969a83f0b4e10`  
		Last Modified: Tue, 27 Oct 2026 23:10:00 GMT  
		Size: 326.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9bc9578e067546beeda8a1e501e1850f1f7f152b5331e613df3a2dc565a7b42`  
		Last Modified: Tue, 27 Oct 2026 23:10:06 GMT  
		Size: 179.4 MB (179351313 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30c35ea3883909773fc3524f62d1dd027bb8c7e05ae0d6e9bd6bb481d9414b86`  
		Last Modified: Tue, 27 Oct 2026 23:10:01 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26.10-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:38be110e6029f2834125e096980b80c780800c82084b29754ad5e66bd7a453ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5332899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b00daf0ce3011b7bb69edcf8bc471ad09a83978c2a9d02764e2839d1c5fb5be`

```dockerfile
```

-	Layers:
	-	`sha256:eec04a9714639f43626432e4538d76f2eb6fb83e0f9b1ddaffded5e78eba31c8`  
		Last Modified: Tue, 27 Oct 2026 23:09:59 GMT  
		Size: 5.3 MB (5297239 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:def8b01477cff5561c2af633ec66f08daff73e75686692bc550778886e66baba`  
		Last Modified: Tue, 27 Oct 2026 23:09:58 GMT  
		Size: 35.7 KB (35660 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:26.10-oraclelinux9`

```console
$ docker pull mysql@sha256:7b16ec7caa94ca7e92f4c5ec287de69d2e8738db056ceb629022951a6f6d910b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:26.10-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:633e1a8f622f84e9dbd604ab0be4b95211f9f153fdb9832a47c54982d2d43c54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.0 MB (299034565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd99e7baa0197cef65b56edc498c0b098918c875aa0047e0b6f2b56e3b6dd45a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 27 Oct 2026 23:05:41 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 27 Oct 2026 23:05:41 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 23:07:41 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 27 Oct 2026 23:07:43 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 23:07:43 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 23:08:17 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 27 Oct 2026 23:08:17 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 27 Oct 2026 23:08:17 GMT
ENV MYSQL_MAJOR=innovation
# Tue, 27 Oct 2026 23:08:17 GMT
ENV MYSQL_VERSION=26.10.0-1.el9
# Tue, 27 Oct 2026 23:08:17 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 27 Oct 2026 23:08:54 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 27 Oct 2026 23:08:54 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 27 Oct 2026 23:08:54 GMT
ENV MYSQL_SHELL_VERSION=26.10.0-1.el9
# Tue, 27 Oct 2026 23:09:39 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 27 Oct 2026 23:09:39 GMT
VOLUME [/var/lib/mysql]
# Tue, 27 Oct 2026 23:09:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 23:09:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 23:09:39 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 27 Oct 2026 23:09:39 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:1610bd8e525d37f7b01147980f0f660538a95e978eee8351a908a00d143c2910`  
		Last Modified: Tue, 27 Oct 2026 23:05:52 GMT  
		Size: 47.2 MB (47188107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac16b2e289d5e3b3f467ebc4e9a0bcf7f86912e39fae80a3c564f15a88c2466b`  
		Last Modified: Tue, 27 Oct 2026 23:10:04 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c61a0b298231054a50162fd8ba5f1663d9575339fda1abfa97cfea17bd5e8f87`  
		Last Modified: Tue, 27 Oct 2026 23:10:04 GMT  
		Size: 783.6 KB (783565 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2801c41ee6ad0d666bc4309612d991d09531f3297dd8ddbb463813c8967325c1`  
		Last Modified: Tue, 27 Oct 2026 23:10:04 GMT  
		Size: 6.2 MB (6186741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:def0bf29cc7b751404f7f318d68ec3aa529a8beda7975fcf62dbb9a8caa7fbab`  
		Last Modified: Tue, 27 Oct 2026 23:10:04 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ad863d106ceb7d3f7b41654346e301454334b7e494c49d03608dfd53ea74c0a`  
		Last Modified: Tue, 27 Oct 2026 23:10:05 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6e8373886396224aa79aacfa24c7067210b3b03249af3d15df749586398d458`  
		Last Modified: Tue, 27 Oct 2026 23:10:07 GMT  
		Size: 63.8 MB (63787570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:618abfb0ceb2f256a50c49283e301ffe6d90bf670639af6c3285bc316dde4a9a`  
		Last Modified: Tue, 27 Oct 2026 23:10:05 GMT  
		Size: 326.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53add8b74cb923c03864601ead8537c16e654fbdbeab2dcf44019ce56afda85e`  
		Last Modified: Tue, 27 Oct 2026 23:10:10 GMT  
		Size: 181.1 MB (181079201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f031910ef3c1d0e215ef20ed21e6aca465b9a868e5458ef2b096921e8b15d309`  
		Last Modified: Tue, 27 Oct 2026 23:10:06 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26.10-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:d0adcc86cc3bfc192c2dd8911f9d2ffa55eef14f97df509d5c61492c99aae422
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5334085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a51f02baf4a3a1bfdbd9ee424383a9147d6cc7207546a3b0deb7fafffddb200`

```dockerfile
```

-	Layers:
	-	`sha256:c1808d28dcbc17eb640423e5603d0a2be0c0faa45da0114f3a5f738ad7d8e3b1`  
		Last Modified: Tue, 27 Oct 2026 23:10:04 GMT  
		Size: 5.3 MB (5298766 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f27adb461b49aebbacd4550ea3751e7d8d4ce0328115dc5a6084889a6fc42e7a`  
		Last Modified: Tue, 27 Oct 2026 23:10:04 GMT  
		Size: 35.3 KB (35319 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:26.10-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:b58efd11d883b862f7dd1077966de3a443d00c126952bc29023368927b6f92f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.5 MB (295459639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2dc3a37aad4fba70b9e8521751c7fb3146267829fb37fe54a717eea4c76d47b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 27 Oct 2026 23:05:32 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 27 Oct 2026 23:05:32 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 23:07:11 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 27 Oct 2026 23:07:13 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 23:07:13 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 23:07:54 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 27 Oct 2026 23:07:55 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 27 Oct 2026 23:07:55 GMT
ENV MYSQL_MAJOR=innovation
# Tue, 27 Oct 2026 23:07:55 GMT
ENV MYSQL_VERSION=26.10.0-1.el9
# Tue, 27 Oct 2026 23:07:55 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 27 Oct 2026 23:08:40 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 27 Oct 2026 23:08:40 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 27 Oct 2026 23:08:40 GMT
ENV MYSQL_SHELL_VERSION=26.10.0-1.el9
# Tue, 27 Oct 2026 23:09:33 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 27 Oct 2026 23:09:33 GMT
VOLUME [/var/lib/mysql]
# Tue, 27 Oct 2026 23:09:33 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 23:09:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 23:09:33 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 27 Oct 2026 23:09:33 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:11f62504eea6ae8bacf9c501835f2547c0d6c7f6ff85fd7a67912c41a123c561`  
		Last Modified: Tue, 27 Oct 2026 23:05:43 GMT  
		Size: 45.7 MB (45732830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4e5d43c68979146dbb3b749889e44c0df6b13705a3f8d77363860f1948855d1`  
		Last Modified: Tue, 27 Oct 2026 23:09:59 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4aa276b8ad98ea5a94a307c51cfa087e983a9a3b2b3493fcfa4ebe1a2ca4ca6`  
		Last Modified: Tue, 27 Oct 2026 23:09:59 GMT  
		Size: 737.5 KB (737531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0d59f31e167a0280a1abacc18ded1666cf09b143e77c2fe75430221fcf88b97`  
		Last Modified: Tue, 27 Oct 2026 23:09:59 GMT  
		Size: 5.8 MB (5806804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dd2e8db297eaf92240eaee30a70e6ac6d0327b710ccf1916e12e9f1aba94003`  
		Last Modified: Tue, 27 Oct 2026 23:09:59 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dbfa79bc208c00ab3ce9eb587872ead8aa0409625ab0388ec466292a35e689e`  
		Last Modified: Tue, 27 Oct 2026 23:10:00 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3740231fab18490409e308e9566caf7c08fef0b9fa26a794dc399cd8785bc3e`  
		Last Modified: Tue, 27 Oct 2026 23:10:03 GMT  
		Size: 63.8 MB (63821777 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f641eea4863ab02c549bd4aec1451b6852cf50c885a71dd2993969a83f0b4e10`  
		Last Modified: Tue, 27 Oct 2026 23:10:00 GMT  
		Size: 326.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9bc9578e067546beeda8a1e501e1850f1f7f152b5331e613df3a2dc565a7b42`  
		Last Modified: Tue, 27 Oct 2026 23:10:06 GMT  
		Size: 179.4 MB (179351313 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30c35ea3883909773fc3524f62d1dd027bb8c7e05ae0d6e9bd6bb481d9414b86`  
		Last Modified: Tue, 27 Oct 2026 23:10:01 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26.10-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:38be110e6029f2834125e096980b80c780800c82084b29754ad5e66bd7a453ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5332899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b00daf0ce3011b7bb69edcf8bc471ad09a83978c2a9d02764e2839d1c5fb5be`

```dockerfile
```

-	Layers:
	-	`sha256:eec04a9714639f43626432e4538d76f2eb6fb83e0f9b1ddaffded5e78eba31c8`  
		Last Modified: Tue, 27 Oct 2026 23:09:59 GMT  
		Size: 5.3 MB (5297239 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:def8b01477cff5561c2af633ec66f08daff73e75686692bc550778886e66baba`  
		Last Modified: Tue, 27 Oct 2026 23:09:58 GMT  
		Size: 35.7 KB (35660 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:26.10.0`

```console
$ docker pull mysql@sha256:7b16ec7caa94ca7e92f4c5ec287de69d2e8738db056ceb629022951a6f6d910b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:26.10.0` - linux; amd64

```console
$ docker pull mysql@sha256:633e1a8f622f84e9dbd604ab0be4b95211f9f153fdb9832a47c54982d2d43c54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.0 MB (299034565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd99e7baa0197cef65b56edc498c0b098918c875aa0047e0b6f2b56e3b6dd45a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 27 Oct 2026 23:05:41 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 27 Oct 2026 23:05:41 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 23:07:41 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 27 Oct 2026 23:07:43 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 23:07:43 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 23:08:17 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 27 Oct 2026 23:08:17 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 27 Oct 2026 23:08:17 GMT
ENV MYSQL_MAJOR=innovation
# Tue, 27 Oct 2026 23:08:17 GMT
ENV MYSQL_VERSION=26.10.0-1.el9
# Tue, 27 Oct 2026 23:08:17 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 27 Oct 2026 23:08:54 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 27 Oct 2026 23:08:54 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 27 Oct 2026 23:08:54 GMT
ENV MYSQL_SHELL_VERSION=26.10.0-1.el9
# Tue, 27 Oct 2026 23:09:39 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 27 Oct 2026 23:09:39 GMT
VOLUME [/var/lib/mysql]
# Tue, 27 Oct 2026 23:09:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 23:09:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 23:09:39 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 27 Oct 2026 23:09:39 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:1610bd8e525d37f7b01147980f0f660538a95e978eee8351a908a00d143c2910`  
		Last Modified: Tue, 27 Oct 2026 23:05:52 GMT  
		Size: 47.2 MB (47188107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac16b2e289d5e3b3f467ebc4e9a0bcf7f86912e39fae80a3c564f15a88c2466b`  
		Last Modified: Tue, 27 Oct 2026 23:10:04 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c61a0b298231054a50162fd8ba5f1663d9575339fda1abfa97cfea17bd5e8f87`  
		Last Modified: Tue, 27 Oct 2026 23:10:04 GMT  
		Size: 783.6 KB (783565 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2801c41ee6ad0d666bc4309612d991d09531f3297dd8ddbb463813c8967325c1`  
		Last Modified: Tue, 27 Oct 2026 23:10:04 GMT  
		Size: 6.2 MB (6186741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:def0bf29cc7b751404f7f318d68ec3aa529a8beda7975fcf62dbb9a8caa7fbab`  
		Last Modified: Tue, 27 Oct 2026 23:10:04 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ad863d106ceb7d3f7b41654346e301454334b7e494c49d03608dfd53ea74c0a`  
		Last Modified: Tue, 27 Oct 2026 23:10:05 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6e8373886396224aa79aacfa24c7067210b3b03249af3d15df749586398d458`  
		Last Modified: Tue, 27 Oct 2026 23:10:07 GMT  
		Size: 63.8 MB (63787570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:618abfb0ceb2f256a50c49283e301ffe6d90bf670639af6c3285bc316dde4a9a`  
		Last Modified: Tue, 27 Oct 2026 23:10:05 GMT  
		Size: 326.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53add8b74cb923c03864601ead8537c16e654fbdbeab2dcf44019ce56afda85e`  
		Last Modified: Tue, 27 Oct 2026 23:10:10 GMT  
		Size: 181.1 MB (181079201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f031910ef3c1d0e215ef20ed21e6aca465b9a868e5458ef2b096921e8b15d309`  
		Last Modified: Tue, 27 Oct 2026 23:10:06 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26.10.0` - unknown; unknown

```console
$ docker pull mysql@sha256:d0adcc86cc3bfc192c2dd8911f9d2ffa55eef14f97df509d5c61492c99aae422
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5334085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a51f02baf4a3a1bfdbd9ee424383a9147d6cc7207546a3b0deb7fafffddb200`

```dockerfile
```

-	Layers:
	-	`sha256:c1808d28dcbc17eb640423e5603d0a2be0c0faa45da0114f3a5f738ad7d8e3b1`  
		Last Modified: Tue, 27 Oct 2026 23:10:04 GMT  
		Size: 5.3 MB (5298766 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f27adb461b49aebbacd4550ea3751e7d8d4ce0328115dc5a6084889a6fc42e7a`  
		Last Modified: Tue, 27 Oct 2026 23:10:04 GMT  
		Size: 35.3 KB (35319 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:26.10.0` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:b58efd11d883b862f7dd1077966de3a443d00c126952bc29023368927b6f92f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.5 MB (295459639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2dc3a37aad4fba70b9e8521751c7fb3146267829fb37fe54a717eea4c76d47b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 27 Oct 2026 23:05:32 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 27 Oct 2026 23:05:32 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 23:07:11 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 27 Oct 2026 23:07:13 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 23:07:13 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 23:07:54 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 27 Oct 2026 23:07:55 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 27 Oct 2026 23:07:55 GMT
ENV MYSQL_MAJOR=innovation
# Tue, 27 Oct 2026 23:07:55 GMT
ENV MYSQL_VERSION=26.10.0-1.el9
# Tue, 27 Oct 2026 23:07:55 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 27 Oct 2026 23:08:40 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 27 Oct 2026 23:08:40 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 27 Oct 2026 23:08:40 GMT
ENV MYSQL_SHELL_VERSION=26.10.0-1.el9
# Tue, 27 Oct 2026 23:09:33 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 27 Oct 2026 23:09:33 GMT
VOLUME [/var/lib/mysql]
# Tue, 27 Oct 2026 23:09:33 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 23:09:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 23:09:33 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 27 Oct 2026 23:09:33 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:11f62504eea6ae8bacf9c501835f2547c0d6c7f6ff85fd7a67912c41a123c561`  
		Last Modified: Tue, 27 Oct 2026 23:05:43 GMT  
		Size: 45.7 MB (45732830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4e5d43c68979146dbb3b749889e44c0df6b13705a3f8d77363860f1948855d1`  
		Last Modified: Tue, 27 Oct 2026 23:09:59 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4aa276b8ad98ea5a94a307c51cfa087e983a9a3b2b3493fcfa4ebe1a2ca4ca6`  
		Last Modified: Tue, 27 Oct 2026 23:09:59 GMT  
		Size: 737.5 KB (737531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0d59f31e167a0280a1abacc18ded1666cf09b143e77c2fe75430221fcf88b97`  
		Last Modified: Tue, 27 Oct 2026 23:09:59 GMT  
		Size: 5.8 MB (5806804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dd2e8db297eaf92240eaee30a70e6ac6d0327b710ccf1916e12e9f1aba94003`  
		Last Modified: Tue, 27 Oct 2026 23:09:59 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dbfa79bc208c00ab3ce9eb587872ead8aa0409625ab0388ec466292a35e689e`  
		Last Modified: Tue, 27 Oct 2026 23:10:00 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3740231fab18490409e308e9566caf7c08fef0b9fa26a794dc399cd8785bc3e`  
		Last Modified: Tue, 27 Oct 2026 23:10:03 GMT  
		Size: 63.8 MB (63821777 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f641eea4863ab02c549bd4aec1451b6852cf50c885a71dd2993969a83f0b4e10`  
		Last Modified: Tue, 27 Oct 2026 23:10:00 GMT  
		Size: 326.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9bc9578e067546beeda8a1e501e1850f1f7f152b5331e613df3a2dc565a7b42`  
		Last Modified: Tue, 27 Oct 2026 23:10:06 GMT  
		Size: 179.4 MB (179351313 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30c35ea3883909773fc3524f62d1dd027bb8c7e05ae0d6e9bd6bb481d9414b86`  
		Last Modified: Tue, 27 Oct 2026 23:10:01 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26.10.0` - unknown; unknown

```console
$ docker pull mysql@sha256:38be110e6029f2834125e096980b80c780800c82084b29754ad5e66bd7a453ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5332899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b00daf0ce3011b7bb69edcf8bc471ad09a83978c2a9d02764e2839d1c5fb5be`

```dockerfile
```

-	Layers:
	-	`sha256:eec04a9714639f43626432e4538d76f2eb6fb83e0f9b1ddaffded5e78eba31c8`  
		Last Modified: Tue, 27 Oct 2026 23:09:59 GMT  
		Size: 5.3 MB (5297239 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:def8b01477cff5561c2af633ec66f08daff73e75686692bc550778886e66baba`  
		Last Modified: Tue, 27 Oct 2026 23:09:58 GMT  
		Size: 35.7 KB (35660 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:26.10.0-oracle`

```console
$ docker pull mysql@sha256:7b16ec7caa94ca7e92f4c5ec287de69d2e8738db056ceb629022951a6f6d910b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:26.10.0-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:633e1a8f622f84e9dbd604ab0be4b95211f9f153fdb9832a47c54982d2d43c54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.0 MB (299034565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd99e7baa0197cef65b56edc498c0b098918c875aa0047e0b6f2b56e3b6dd45a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 27 Oct 2026 23:05:41 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 27 Oct 2026 23:05:41 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 23:07:41 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 27 Oct 2026 23:07:43 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 23:07:43 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 23:08:17 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 27 Oct 2026 23:08:17 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 27 Oct 2026 23:08:17 GMT
ENV MYSQL_MAJOR=innovation
# Tue, 27 Oct 2026 23:08:17 GMT
ENV MYSQL_VERSION=26.10.0-1.el9
# Tue, 27 Oct 2026 23:08:17 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 27 Oct 2026 23:08:54 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 27 Oct 2026 23:08:54 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 27 Oct 2026 23:08:54 GMT
ENV MYSQL_SHELL_VERSION=26.10.0-1.el9
# Tue, 27 Oct 2026 23:09:39 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 27 Oct 2026 23:09:39 GMT
VOLUME [/var/lib/mysql]
# Tue, 27 Oct 2026 23:09:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 23:09:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 23:09:39 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 27 Oct 2026 23:09:39 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:1610bd8e525d37f7b01147980f0f660538a95e978eee8351a908a00d143c2910`  
		Last Modified: Tue, 27 Oct 2026 23:05:52 GMT  
		Size: 47.2 MB (47188107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac16b2e289d5e3b3f467ebc4e9a0bcf7f86912e39fae80a3c564f15a88c2466b`  
		Last Modified: Tue, 27 Oct 2026 23:10:04 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c61a0b298231054a50162fd8ba5f1663d9575339fda1abfa97cfea17bd5e8f87`  
		Last Modified: Tue, 27 Oct 2026 23:10:04 GMT  
		Size: 783.6 KB (783565 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2801c41ee6ad0d666bc4309612d991d09531f3297dd8ddbb463813c8967325c1`  
		Last Modified: Tue, 27 Oct 2026 23:10:04 GMT  
		Size: 6.2 MB (6186741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:def0bf29cc7b751404f7f318d68ec3aa529a8beda7975fcf62dbb9a8caa7fbab`  
		Last Modified: Tue, 27 Oct 2026 23:10:04 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ad863d106ceb7d3f7b41654346e301454334b7e494c49d03608dfd53ea74c0a`  
		Last Modified: Tue, 27 Oct 2026 23:10:05 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6e8373886396224aa79aacfa24c7067210b3b03249af3d15df749586398d458`  
		Last Modified: Tue, 27 Oct 2026 23:10:07 GMT  
		Size: 63.8 MB (63787570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:618abfb0ceb2f256a50c49283e301ffe6d90bf670639af6c3285bc316dde4a9a`  
		Last Modified: Tue, 27 Oct 2026 23:10:05 GMT  
		Size: 326.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53add8b74cb923c03864601ead8537c16e654fbdbeab2dcf44019ce56afda85e`  
		Last Modified: Tue, 27 Oct 2026 23:10:10 GMT  
		Size: 181.1 MB (181079201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f031910ef3c1d0e215ef20ed21e6aca465b9a868e5458ef2b096921e8b15d309`  
		Last Modified: Tue, 27 Oct 2026 23:10:06 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26.10.0-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:d0adcc86cc3bfc192c2dd8911f9d2ffa55eef14f97df509d5c61492c99aae422
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5334085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a51f02baf4a3a1bfdbd9ee424383a9147d6cc7207546a3b0deb7fafffddb200`

```dockerfile
```

-	Layers:
	-	`sha256:c1808d28dcbc17eb640423e5603d0a2be0c0faa45da0114f3a5f738ad7d8e3b1`  
		Last Modified: Tue, 27 Oct 2026 23:10:04 GMT  
		Size: 5.3 MB (5298766 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f27adb461b49aebbacd4550ea3751e7d8d4ce0328115dc5a6084889a6fc42e7a`  
		Last Modified: Tue, 27 Oct 2026 23:10:04 GMT  
		Size: 35.3 KB (35319 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:26.10.0-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:b58efd11d883b862f7dd1077966de3a443d00c126952bc29023368927b6f92f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.5 MB (295459639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2dc3a37aad4fba70b9e8521751c7fb3146267829fb37fe54a717eea4c76d47b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 27 Oct 2026 23:05:32 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 27 Oct 2026 23:05:32 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 23:07:11 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 27 Oct 2026 23:07:13 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 23:07:13 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 23:07:54 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 27 Oct 2026 23:07:55 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 27 Oct 2026 23:07:55 GMT
ENV MYSQL_MAJOR=innovation
# Tue, 27 Oct 2026 23:07:55 GMT
ENV MYSQL_VERSION=26.10.0-1.el9
# Tue, 27 Oct 2026 23:07:55 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 27 Oct 2026 23:08:40 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 27 Oct 2026 23:08:40 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 27 Oct 2026 23:08:40 GMT
ENV MYSQL_SHELL_VERSION=26.10.0-1.el9
# Tue, 27 Oct 2026 23:09:33 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 27 Oct 2026 23:09:33 GMT
VOLUME [/var/lib/mysql]
# Tue, 27 Oct 2026 23:09:33 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 23:09:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 23:09:33 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 27 Oct 2026 23:09:33 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:11f62504eea6ae8bacf9c501835f2547c0d6c7f6ff85fd7a67912c41a123c561`  
		Last Modified: Tue, 27 Oct 2026 23:05:43 GMT  
		Size: 45.7 MB (45732830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4e5d43c68979146dbb3b749889e44c0df6b13705a3f8d77363860f1948855d1`  
		Last Modified: Tue, 27 Oct 2026 23:09:59 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4aa276b8ad98ea5a94a307c51cfa087e983a9a3b2b3493fcfa4ebe1a2ca4ca6`  
		Last Modified: Tue, 27 Oct 2026 23:09:59 GMT  
		Size: 737.5 KB (737531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0d59f31e167a0280a1abacc18ded1666cf09b143e77c2fe75430221fcf88b97`  
		Last Modified: Tue, 27 Oct 2026 23:09:59 GMT  
		Size: 5.8 MB (5806804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dd2e8db297eaf92240eaee30a70e6ac6d0327b710ccf1916e12e9f1aba94003`  
		Last Modified: Tue, 27 Oct 2026 23:09:59 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dbfa79bc208c00ab3ce9eb587872ead8aa0409625ab0388ec466292a35e689e`  
		Last Modified: Tue, 27 Oct 2026 23:10:00 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3740231fab18490409e308e9566caf7c08fef0b9fa26a794dc399cd8785bc3e`  
		Last Modified: Tue, 27 Oct 2026 23:10:03 GMT  
		Size: 63.8 MB (63821777 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f641eea4863ab02c549bd4aec1451b6852cf50c885a71dd2993969a83f0b4e10`  
		Last Modified: Tue, 27 Oct 2026 23:10:00 GMT  
		Size: 326.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9bc9578e067546beeda8a1e501e1850f1f7f152b5331e613df3a2dc565a7b42`  
		Last Modified: Tue, 27 Oct 2026 23:10:06 GMT  
		Size: 179.4 MB (179351313 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30c35ea3883909773fc3524f62d1dd027bb8c7e05ae0d6e9bd6bb481d9414b86`  
		Last Modified: Tue, 27 Oct 2026 23:10:01 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26.10.0-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:38be110e6029f2834125e096980b80c780800c82084b29754ad5e66bd7a453ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5332899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b00daf0ce3011b7bb69edcf8bc471ad09a83978c2a9d02764e2839d1c5fb5be`

```dockerfile
```

-	Layers:
	-	`sha256:eec04a9714639f43626432e4538d76f2eb6fb83e0f9b1ddaffded5e78eba31c8`  
		Last Modified: Tue, 27 Oct 2026 23:09:59 GMT  
		Size: 5.3 MB (5297239 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:def8b01477cff5561c2af633ec66f08daff73e75686692bc550778886e66baba`  
		Last Modified: Tue, 27 Oct 2026 23:09:58 GMT  
		Size: 35.7 KB (35660 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:26.10.0-oraclelinux9`

```console
$ docker pull mysql@sha256:7b16ec7caa94ca7e92f4c5ec287de69d2e8738db056ceb629022951a6f6d910b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:26.10.0-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:633e1a8f622f84e9dbd604ab0be4b95211f9f153fdb9832a47c54982d2d43c54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.0 MB (299034565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd99e7baa0197cef65b56edc498c0b098918c875aa0047e0b6f2b56e3b6dd45a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 27 Oct 2026 23:05:41 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 27 Oct 2026 23:05:41 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 23:07:41 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 27 Oct 2026 23:07:43 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 23:07:43 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 23:08:17 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 27 Oct 2026 23:08:17 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 27 Oct 2026 23:08:17 GMT
ENV MYSQL_MAJOR=innovation
# Tue, 27 Oct 2026 23:08:17 GMT
ENV MYSQL_VERSION=26.10.0-1.el9
# Tue, 27 Oct 2026 23:08:17 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 27 Oct 2026 23:08:54 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 27 Oct 2026 23:08:54 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 27 Oct 2026 23:08:54 GMT
ENV MYSQL_SHELL_VERSION=26.10.0-1.el9
# Tue, 27 Oct 2026 23:09:39 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 27 Oct 2026 23:09:39 GMT
VOLUME [/var/lib/mysql]
# Tue, 27 Oct 2026 23:09:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 23:09:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 23:09:39 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 27 Oct 2026 23:09:39 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:1610bd8e525d37f7b01147980f0f660538a95e978eee8351a908a00d143c2910`  
		Last Modified: Tue, 27 Oct 2026 23:05:52 GMT  
		Size: 47.2 MB (47188107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac16b2e289d5e3b3f467ebc4e9a0bcf7f86912e39fae80a3c564f15a88c2466b`  
		Last Modified: Tue, 27 Oct 2026 23:10:04 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c61a0b298231054a50162fd8ba5f1663d9575339fda1abfa97cfea17bd5e8f87`  
		Last Modified: Tue, 27 Oct 2026 23:10:04 GMT  
		Size: 783.6 KB (783565 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2801c41ee6ad0d666bc4309612d991d09531f3297dd8ddbb463813c8967325c1`  
		Last Modified: Tue, 27 Oct 2026 23:10:04 GMT  
		Size: 6.2 MB (6186741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:def0bf29cc7b751404f7f318d68ec3aa529a8beda7975fcf62dbb9a8caa7fbab`  
		Last Modified: Tue, 27 Oct 2026 23:10:04 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ad863d106ceb7d3f7b41654346e301454334b7e494c49d03608dfd53ea74c0a`  
		Last Modified: Tue, 27 Oct 2026 23:10:05 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6e8373886396224aa79aacfa24c7067210b3b03249af3d15df749586398d458`  
		Last Modified: Tue, 27 Oct 2026 23:10:07 GMT  
		Size: 63.8 MB (63787570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:618abfb0ceb2f256a50c49283e301ffe6d90bf670639af6c3285bc316dde4a9a`  
		Last Modified: Tue, 27 Oct 2026 23:10:05 GMT  
		Size: 326.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53add8b74cb923c03864601ead8537c16e654fbdbeab2dcf44019ce56afda85e`  
		Last Modified: Tue, 27 Oct 2026 23:10:10 GMT  
		Size: 181.1 MB (181079201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f031910ef3c1d0e215ef20ed21e6aca465b9a868e5458ef2b096921e8b15d309`  
		Last Modified: Tue, 27 Oct 2026 23:10:06 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26.10.0-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:d0adcc86cc3bfc192c2dd8911f9d2ffa55eef14f97df509d5c61492c99aae422
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5334085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a51f02baf4a3a1bfdbd9ee424383a9147d6cc7207546a3b0deb7fafffddb200`

```dockerfile
```

-	Layers:
	-	`sha256:c1808d28dcbc17eb640423e5603d0a2be0c0faa45da0114f3a5f738ad7d8e3b1`  
		Last Modified: Tue, 27 Oct 2026 23:10:04 GMT  
		Size: 5.3 MB (5298766 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f27adb461b49aebbacd4550ea3751e7d8d4ce0328115dc5a6084889a6fc42e7a`  
		Last Modified: Tue, 27 Oct 2026 23:10:04 GMT  
		Size: 35.3 KB (35319 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:26.10.0-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:b58efd11d883b862f7dd1077966de3a443d00c126952bc29023368927b6f92f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.5 MB (295459639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2dc3a37aad4fba70b9e8521751c7fb3146267829fb37fe54a717eea4c76d47b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 27 Oct 2026 23:05:32 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 27 Oct 2026 23:05:32 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 23:07:11 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 27 Oct 2026 23:07:13 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 23:07:13 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 23:07:54 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 27 Oct 2026 23:07:55 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 27 Oct 2026 23:07:55 GMT
ENV MYSQL_MAJOR=innovation
# Tue, 27 Oct 2026 23:07:55 GMT
ENV MYSQL_VERSION=26.10.0-1.el9
# Tue, 27 Oct 2026 23:07:55 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 27 Oct 2026 23:08:40 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 27 Oct 2026 23:08:40 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 27 Oct 2026 23:08:40 GMT
ENV MYSQL_SHELL_VERSION=26.10.0-1.el9
# Tue, 27 Oct 2026 23:09:33 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 27 Oct 2026 23:09:33 GMT
VOLUME [/var/lib/mysql]
# Tue, 27 Oct 2026 23:09:33 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 23:09:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 23:09:33 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 27 Oct 2026 23:09:33 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:11f62504eea6ae8bacf9c501835f2547c0d6c7f6ff85fd7a67912c41a123c561`  
		Last Modified: Tue, 27 Oct 2026 23:05:43 GMT  
		Size: 45.7 MB (45732830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4e5d43c68979146dbb3b749889e44c0df6b13705a3f8d77363860f1948855d1`  
		Last Modified: Tue, 27 Oct 2026 23:09:59 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4aa276b8ad98ea5a94a307c51cfa087e983a9a3b2b3493fcfa4ebe1a2ca4ca6`  
		Last Modified: Tue, 27 Oct 2026 23:09:59 GMT  
		Size: 737.5 KB (737531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0d59f31e167a0280a1abacc18ded1666cf09b143e77c2fe75430221fcf88b97`  
		Last Modified: Tue, 27 Oct 2026 23:09:59 GMT  
		Size: 5.8 MB (5806804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dd2e8db297eaf92240eaee30a70e6ac6d0327b710ccf1916e12e9f1aba94003`  
		Last Modified: Tue, 27 Oct 2026 23:09:59 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dbfa79bc208c00ab3ce9eb587872ead8aa0409625ab0388ec466292a35e689e`  
		Last Modified: Tue, 27 Oct 2026 23:10:00 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3740231fab18490409e308e9566caf7c08fef0b9fa26a794dc399cd8785bc3e`  
		Last Modified: Tue, 27 Oct 2026 23:10:03 GMT  
		Size: 63.8 MB (63821777 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f641eea4863ab02c549bd4aec1451b6852cf50c885a71dd2993969a83f0b4e10`  
		Last Modified: Tue, 27 Oct 2026 23:10:00 GMT  
		Size: 326.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9bc9578e067546beeda8a1e501e1850f1f7f152b5331e613df3a2dc565a7b42`  
		Last Modified: Tue, 27 Oct 2026 23:10:06 GMT  
		Size: 179.4 MB (179351313 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30c35ea3883909773fc3524f62d1dd027bb8c7e05ae0d6e9bd6bb481d9414b86`  
		Last Modified: Tue, 27 Oct 2026 23:10:01 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26.10.0-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:38be110e6029f2834125e096980b80c780800c82084b29754ad5e66bd7a453ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5332899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b00daf0ce3011b7bb69edcf8bc471ad09a83978c2a9d02764e2839d1c5fb5be`

```dockerfile
```

-	Layers:
	-	`sha256:eec04a9714639f43626432e4538d76f2eb6fb83e0f9b1ddaffded5e78eba31c8`  
		Last Modified: Tue, 27 Oct 2026 23:09:59 GMT  
		Size: 5.3 MB (5297239 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:def8b01477cff5561c2af633ec66f08daff73e75686692bc550778886e66baba`  
		Last Modified: Tue, 27 Oct 2026 23:09:58 GMT  
		Size: 35.7 KB (35660 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:8`

```console
$ docker pull mysql@sha256:a0225d1ea6631c8bc2385dc4c2faba17bbf1834ecf369e1659a9a382bd8d5dd7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8` - linux; amd64

```console
$ docker pull mysql@sha256:5cf1e1293ea42e077e6a22114e6773b9aae3bb8f9933a2acd5a9721518ff8f5b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.3 MB (238252878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2a0d367629f5b5dcd6cdabc53fe9183a0a3c313f9bd354e368290ba6fbf6d3f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 27 Oct 2026 23:05:41 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 27 Oct 2026 23:05:41 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 23:07:17 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 27 Oct 2026 23:07:19 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 23:07:19 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 23:07:53 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 27 Oct 2026 23:07:54 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 27 Oct 2026 23:07:54 GMT
ENV MYSQL_MAJOR=8.4
# Tue, 27 Oct 2026 23:07:54 GMT
ENV MYSQL_VERSION=8.4.13-1.el9
# Tue, 27 Oct 2026 23:07:54 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 27 Oct 2026 23:08:30 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 27 Oct 2026 23:08:30 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 27 Oct 2026 23:08:30 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Tue, 27 Oct 2026 23:09:13 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 27 Oct 2026 23:09:13 GMT
VOLUME [/var/lib/mysql]
# Tue, 27 Oct 2026 23:09:13 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 23:09:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 23:09:13 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 27 Oct 2026 23:09:13 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:1610bd8e525d37f7b01147980f0f660538a95e978eee8351a908a00d143c2910`  
		Last Modified: Tue, 27 Oct 2026 23:05:52 GMT  
		Size: 47.2 MB (47188107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4143b5578588023307b710623d1362a77af4557a51c1c72983aca1fe5d5969b4`  
		Last Modified: Tue, 27 Oct 2026 23:09:41 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e752cc14300e79365e777ca9f56fdd5049e87964f423ca9b30cfc2f34d998130`  
		Last Modified: Tue, 27 Oct 2026 23:09:41 GMT  
		Size: 783.6 KB (783565 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2c76224d19e141c050f669edb6788d78760198453320fd6cb3bbc7720911e1b`  
		Last Modified: Tue, 27 Oct 2026 23:09:41 GMT  
		Size: 6.2 MB (6186780 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a4f18e225a8e100697eefb85ef71bc2675ac5fc5c7d233725b2557ec3a6e682`  
		Last Modified: Tue, 27 Oct 2026 23:09:41 GMT  
		Size: 2.6 KB (2609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28cc43b6d59c8dd0f25c63f26ea3ded99e9e6ee8b2f7b7e92c1b43134d3016ae`  
		Last Modified: Tue, 27 Oct 2026 23:09:42 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35515671e46bf4c664fac114fd102c80f36a9971371c823d86de5030b2cc925e`  
		Last Modified: Tue, 27 Oct 2026 23:09:45 GMT  
		Size: 51.7 MB (51673729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c12829836f3e8bd1303c214219cfd711c907a9e832ef748c16171bfd773d9dd6`  
		Last Modified: Tue, 27 Oct 2026 23:09:42 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb258f8898e780972b965e2ecc1f62a83446b1706654fe6efddf0887a9fc61a6`  
		Last Modified: Tue, 27 Oct 2026 23:09:47 GMT  
		Size: 132.4 MB (132411320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9ef008e7b8be94229f420751e8b23b4f2fe460f16976757be7c2d766d4c2ed1`  
		Last Modified: Tue, 27 Oct 2026 23:09:44 GMT  
		Size: 5.2 KB (5229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8` - unknown; unknown

```console
$ docker pull mysql@sha256:b4cbb134db78c0c4507c478bfda0ee704db240efc6cf3702604046cc565c94d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15726728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ba27b4814552ca60c9c5758cc912566ed3329561275c72831e3d2e057520f3d`

```dockerfile
```

-	Layers:
	-	`sha256:f95cea338c517fd21f1294c91255bdd1b63d3186bacd703382e0de03131d54ef`  
		Last Modified: Tue, 27 Oct 2026 23:09:42 GMT  
		Size: 15.7 MB (15693415 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:12e251ee6074adc0f126917b5d5e4ffe8100317c5d398cc3c625b639562f684f`  
		Last Modified: Tue, 27 Oct 2026 23:09:41 GMT  
		Size: 33.3 KB (33313 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:8ab2115abe8ca3d2745962f4e75f2f86fb8182ae19908773cd4cce811f3c106e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.9 MB (232911891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be17a932c0bb78fa5ecc359eb22ec3ba3f53b9b2b6c5260485df4c0eee27771f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 27 Oct 2026 23:05:32 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 27 Oct 2026 23:05:32 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 23:07:18 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 27 Oct 2026 23:07:20 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 23:07:20 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 23:08:01 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 27 Oct 2026 23:08:02 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 27 Oct 2026 23:08:02 GMT
ENV MYSQL_MAJOR=8.4
# Tue, 27 Oct 2026 23:08:02 GMT
ENV MYSQL_VERSION=8.4.13-1.el9
# Tue, 27 Oct 2026 23:08:02 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 27 Oct 2026 23:08:46 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 27 Oct 2026 23:08:46 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 27 Oct 2026 23:08:46 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Tue, 27 Oct 2026 23:09:38 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 27 Oct 2026 23:09:38 GMT
VOLUME [/var/lib/mysql]
# Tue, 27 Oct 2026 23:09:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 23:09:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 23:09:38 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 27 Oct 2026 23:09:38 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:11f62504eea6ae8bacf9c501835f2547c0d6c7f6ff85fd7a67912c41a123c561`  
		Last Modified: Tue, 27 Oct 2026 23:05:43 GMT  
		Size: 45.7 MB (45732830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcc2860add9bcc0dcbb1daf59940d1987499023b9b255d75b7d2413138f4fb4f`  
		Last Modified: Tue, 27 Oct 2026 23:10:10 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:537139ce24ecb9a6435abb29f8bb1608083cff20446c0c589f123c4e4fd85a8f`  
		Last Modified: Tue, 27 Oct 2026 23:10:10 GMT  
		Size: 737.5 KB (737531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d8008949683580853c72be0bf533a577ff3ab201893a4a9d37f0a14f6a92f6f`  
		Last Modified: Tue, 27 Oct 2026 23:10:10 GMT  
		Size: 5.8 MB (5806716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:061847e2e7e03c3facc7c6fc9173794c792598dadb9f3e23d856677fa719acfb`  
		Last Modified: Tue, 27 Oct 2026 23:10:10 GMT  
		Size: 2.6 KB (2609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7594687b0cc0ee2bf01231d5c81fcaf3f60808d220d3c64693a22343448ffd81`  
		Last Modified: Tue, 27 Oct 2026 23:10:11 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d311624a035c26df92292202cd61849ec2ac205d34b727faac2ff8302b2bb72`  
		Last Modified: Tue, 27 Oct 2026 23:10:13 GMT  
		Size: 49.9 MB (49855220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84c3133e6ba07b7451381dfd3759f4357aa6761570b376ad124b6a6158298668`  
		Last Modified: Tue, 27 Oct 2026 23:10:11 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dca13af25e782ce98f51541bdd30eed794d75c892b668ff10cc57768c12298cc`  
		Last Modified: Tue, 27 Oct 2026 23:10:14 GMT  
		Size: 130.8 MB (130770217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82c1018a5ca0bdffdfecdf67b7460c1938b5b1b4e6de8f2775608592728058b1`  
		Last Modified: Tue, 27 Oct 2026 23:10:12 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8` - unknown; unknown

```console
$ docker pull mysql@sha256:720bd91371e732633312953fbc3cc8004a11ebc5a101b42eaf6ea869b7a1a986
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15725397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ca81e517b2e9eaad9165bc7a3161a56128a3e230bed347cee2365f30dbc8b9c`

```dockerfile
```

-	Layers:
	-	`sha256:6655f9e2cb3f914cc9c1ddc824a51d6e9857a56aa91830c10e22fc95cea26587`  
		Last Modified: Tue, 27 Oct 2026 23:10:10 GMT  
		Size: 15.7 MB (15691815 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0f0ce162a89e4fdc1b04f4408ee3362cf1429f98a8b8b31f54bb9f28173714e0`  
		Last Modified: Tue, 27 Oct 2026 23:10:09 GMT  
		Size: 33.6 KB (33582 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:8-oracle`

```console
$ docker pull mysql@sha256:a0225d1ea6631c8bc2385dc4c2faba17bbf1834ecf369e1659a9a382bd8d5dd7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:5cf1e1293ea42e077e6a22114e6773b9aae3bb8f9933a2acd5a9721518ff8f5b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.3 MB (238252878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2a0d367629f5b5dcd6cdabc53fe9183a0a3c313f9bd354e368290ba6fbf6d3f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 27 Oct 2026 23:05:41 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 27 Oct 2026 23:05:41 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 23:07:17 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 27 Oct 2026 23:07:19 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 23:07:19 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 23:07:53 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 27 Oct 2026 23:07:54 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 27 Oct 2026 23:07:54 GMT
ENV MYSQL_MAJOR=8.4
# Tue, 27 Oct 2026 23:07:54 GMT
ENV MYSQL_VERSION=8.4.13-1.el9
# Tue, 27 Oct 2026 23:07:54 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 27 Oct 2026 23:08:30 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 27 Oct 2026 23:08:30 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 27 Oct 2026 23:08:30 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Tue, 27 Oct 2026 23:09:13 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 27 Oct 2026 23:09:13 GMT
VOLUME [/var/lib/mysql]
# Tue, 27 Oct 2026 23:09:13 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 23:09:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 23:09:13 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 27 Oct 2026 23:09:13 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:1610bd8e525d37f7b01147980f0f660538a95e978eee8351a908a00d143c2910`  
		Last Modified: Tue, 27 Oct 2026 23:05:52 GMT  
		Size: 47.2 MB (47188107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4143b5578588023307b710623d1362a77af4557a51c1c72983aca1fe5d5969b4`  
		Last Modified: Tue, 27 Oct 2026 23:09:41 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e752cc14300e79365e777ca9f56fdd5049e87964f423ca9b30cfc2f34d998130`  
		Last Modified: Tue, 27 Oct 2026 23:09:41 GMT  
		Size: 783.6 KB (783565 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2c76224d19e141c050f669edb6788d78760198453320fd6cb3bbc7720911e1b`  
		Last Modified: Tue, 27 Oct 2026 23:09:41 GMT  
		Size: 6.2 MB (6186780 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a4f18e225a8e100697eefb85ef71bc2675ac5fc5c7d233725b2557ec3a6e682`  
		Last Modified: Tue, 27 Oct 2026 23:09:41 GMT  
		Size: 2.6 KB (2609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28cc43b6d59c8dd0f25c63f26ea3ded99e9e6ee8b2f7b7e92c1b43134d3016ae`  
		Last Modified: Tue, 27 Oct 2026 23:09:42 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35515671e46bf4c664fac114fd102c80f36a9971371c823d86de5030b2cc925e`  
		Last Modified: Tue, 27 Oct 2026 23:09:45 GMT  
		Size: 51.7 MB (51673729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c12829836f3e8bd1303c214219cfd711c907a9e832ef748c16171bfd773d9dd6`  
		Last Modified: Tue, 27 Oct 2026 23:09:42 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb258f8898e780972b965e2ecc1f62a83446b1706654fe6efddf0887a9fc61a6`  
		Last Modified: Tue, 27 Oct 2026 23:09:47 GMT  
		Size: 132.4 MB (132411320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9ef008e7b8be94229f420751e8b23b4f2fe460f16976757be7c2d766d4c2ed1`  
		Last Modified: Tue, 27 Oct 2026 23:09:44 GMT  
		Size: 5.2 KB (5229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:b4cbb134db78c0c4507c478bfda0ee704db240efc6cf3702604046cc565c94d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15726728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ba27b4814552ca60c9c5758cc912566ed3329561275c72831e3d2e057520f3d`

```dockerfile
```

-	Layers:
	-	`sha256:f95cea338c517fd21f1294c91255bdd1b63d3186bacd703382e0de03131d54ef`  
		Last Modified: Tue, 27 Oct 2026 23:09:42 GMT  
		Size: 15.7 MB (15693415 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:12e251ee6074adc0f126917b5d5e4ffe8100317c5d398cc3c625b639562f684f`  
		Last Modified: Tue, 27 Oct 2026 23:09:41 GMT  
		Size: 33.3 KB (33313 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:8ab2115abe8ca3d2745962f4e75f2f86fb8182ae19908773cd4cce811f3c106e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.9 MB (232911891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be17a932c0bb78fa5ecc359eb22ec3ba3f53b9b2b6c5260485df4c0eee27771f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 27 Oct 2026 23:05:32 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 27 Oct 2026 23:05:32 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 23:07:18 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 27 Oct 2026 23:07:20 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 23:07:20 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 23:08:01 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 27 Oct 2026 23:08:02 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 27 Oct 2026 23:08:02 GMT
ENV MYSQL_MAJOR=8.4
# Tue, 27 Oct 2026 23:08:02 GMT
ENV MYSQL_VERSION=8.4.13-1.el9
# Tue, 27 Oct 2026 23:08:02 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 27 Oct 2026 23:08:46 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 27 Oct 2026 23:08:46 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 27 Oct 2026 23:08:46 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Tue, 27 Oct 2026 23:09:38 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 27 Oct 2026 23:09:38 GMT
VOLUME [/var/lib/mysql]
# Tue, 27 Oct 2026 23:09:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 23:09:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 23:09:38 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 27 Oct 2026 23:09:38 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:11f62504eea6ae8bacf9c501835f2547c0d6c7f6ff85fd7a67912c41a123c561`  
		Last Modified: Tue, 27 Oct 2026 23:05:43 GMT  
		Size: 45.7 MB (45732830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcc2860add9bcc0dcbb1daf59940d1987499023b9b255d75b7d2413138f4fb4f`  
		Last Modified: Tue, 27 Oct 2026 23:10:10 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:537139ce24ecb9a6435abb29f8bb1608083cff20446c0c589f123c4e4fd85a8f`  
		Last Modified: Tue, 27 Oct 2026 23:10:10 GMT  
		Size: 737.5 KB (737531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d8008949683580853c72be0bf533a577ff3ab201893a4a9d37f0a14f6a92f6f`  
		Last Modified: Tue, 27 Oct 2026 23:10:10 GMT  
		Size: 5.8 MB (5806716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:061847e2e7e03c3facc7c6fc9173794c792598dadb9f3e23d856677fa719acfb`  
		Last Modified: Tue, 27 Oct 2026 23:10:10 GMT  
		Size: 2.6 KB (2609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7594687b0cc0ee2bf01231d5c81fcaf3f60808d220d3c64693a22343448ffd81`  
		Last Modified: Tue, 27 Oct 2026 23:10:11 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d311624a035c26df92292202cd61849ec2ac205d34b727faac2ff8302b2bb72`  
		Last Modified: Tue, 27 Oct 2026 23:10:13 GMT  
		Size: 49.9 MB (49855220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84c3133e6ba07b7451381dfd3759f4357aa6761570b376ad124b6a6158298668`  
		Last Modified: Tue, 27 Oct 2026 23:10:11 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dca13af25e782ce98f51541bdd30eed794d75c892b668ff10cc57768c12298cc`  
		Last Modified: Tue, 27 Oct 2026 23:10:14 GMT  
		Size: 130.8 MB (130770217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82c1018a5ca0bdffdfecdf67b7460c1938b5b1b4e6de8f2775608592728058b1`  
		Last Modified: Tue, 27 Oct 2026 23:10:12 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:720bd91371e732633312953fbc3cc8004a11ebc5a101b42eaf6ea869b7a1a986
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15725397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ca81e517b2e9eaad9165bc7a3161a56128a3e230bed347cee2365f30dbc8b9c`

```dockerfile
```

-	Layers:
	-	`sha256:6655f9e2cb3f914cc9c1ddc824a51d6e9857a56aa91830c10e22fc95cea26587`  
		Last Modified: Tue, 27 Oct 2026 23:10:10 GMT  
		Size: 15.7 MB (15691815 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0f0ce162a89e4fdc1b04f4408ee3362cf1429f98a8b8b31f54bb9f28173714e0`  
		Last Modified: Tue, 27 Oct 2026 23:10:09 GMT  
		Size: 33.6 KB (33582 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:8-oraclelinux9`

```console
$ docker pull mysql@sha256:a0225d1ea6631c8bc2385dc4c2faba17bbf1834ecf369e1659a9a382bd8d5dd7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:5cf1e1293ea42e077e6a22114e6773b9aae3bb8f9933a2acd5a9721518ff8f5b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.3 MB (238252878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2a0d367629f5b5dcd6cdabc53fe9183a0a3c313f9bd354e368290ba6fbf6d3f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 27 Oct 2026 23:05:41 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 27 Oct 2026 23:05:41 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 23:07:17 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 27 Oct 2026 23:07:19 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 23:07:19 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 23:07:53 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 27 Oct 2026 23:07:54 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 27 Oct 2026 23:07:54 GMT
ENV MYSQL_MAJOR=8.4
# Tue, 27 Oct 2026 23:07:54 GMT
ENV MYSQL_VERSION=8.4.13-1.el9
# Tue, 27 Oct 2026 23:07:54 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 27 Oct 2026 23:08:30 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 27 Oct 2026 23:08:30 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 27 Oct 2026 23:08:30 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Tue, 27 Oct 2026 23:09:13 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 27 Oct 2026 23:09:13 GMT
VOLUME [/var/lib/mysql]
# Tue, 27 Oct 2026 23:09:13 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 23:09:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 23:09:13 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 27 Oct 2026 23:09:13 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:1610bd8e525d37f7b01147980f0f660538a95e978eee8351a908a00d143c2910`  
		Last Modified: Tue, 27 Oct 2026 23:05:52 GMT  
		Size: 47.2 MB (47188107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4143b5578588023307b710623d1362a77af4557a51c1c72983aca1fe5d5969b4`  
		Last Modified: Tue, 27 Oct 2026 23:09:41 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e752cc14300e79365e777ca9f56fdd5049e87964f423ca9b30cfc2f34d998130`  
		Last Modified: Tue, 27 Oct 2026 23:09:41 GMT  
		Size: 783.6 KB (783565 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2c76224d19e141c050f669edb6788d78760198453320fd6cb3bbc7720911e1b`  
		Last Modified: Tue, 27 Oct 2026 23:09:41 GMT  
		Size: 6.2 MB (6186780 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a4f18e225a8e100697eefb85ef71bc2675ac5fc5c7d233725b2557ec3a6e682`  
		Last Modified: Tue, 27 Oct 2026 23:09:41 GMT  
		Size: 2.6 KB (2609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28cc43b6d59c8dd0f25c63f26ea3ded99e9e6ee8b2f7b7e92c1b43134d3016ae`  
		Last Modified: Tue, 27 Oct 2026 23:09:42 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35515671e46bf4c664fac114fd102c80f36a9971371c823d86de5030b2cc925e`  
		Last Modified: Tue, 27 Oct 2026 23:09:45 GMT  
		Size: 51.7 MB (51673729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c12829836f3e8bd1303c214219cfd711c907a9e832ef748c16171bfd773d9dd6`  
		Last Modified: Tue, 27 Oct 2026 23:09:42 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb258f8898e780972b965e2ecc1f62a83446b1706654fe6efddf0887a9fc61a6`  
		Last Modified: Tue, 27 Oct 2026 23:09:47 GMT  
		Size: 132.4 MB (132411320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9ef008e7b8be94229f420751e8b23b4f2fe460f16976757be7c2d766d4c2ed1`  
		Last Modified: Tue, 27 Oct 2026 23:09:44 GMT  
		Size: 5.2 KB (5229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:b4cbb134db78c0c4507c478bfda0ee704db240efc6cf3702604046cc565c94d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15726728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ba27b4814552ca60c9c5758cc912566ed3329561275c72831e3d2e057520f3d`

```dockerfile
```

-	Layers:
	-	`sha256:f95cea338c517fd21f1294c91255bdd1b63d3186bacd703382e0de03131d54ef`  
		Last Modified: Tue, 27 Oct 2026 23:09:42 GMT  
		Size: 15.7 MB (15693415 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:12e251ee6074adc0f126917b5d5e4ffe8100317c5d398cc3c625b639562f684f`  
		Last Modified: Tue, 27 Oct 2026 23:09:41 GMT  
		Size: 33.3 KB (33313 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:8ab2115abe8ca3d2745962f4e75f2f86fb8182ae19908773cd4cce811f3c106e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.9 MB (232911891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be17a932c0bb78fa5ecc359eb22ec3ba3f53b9b2b6c5260485df4c0eee27771f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 27 Oct 2026 23:05:32 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 27 Oct 2026 23:05:32 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 23:07:18 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 27 Oct 2026 23:07:20 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 23:07:20 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 23:08:01 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 27 Oct 2026 23:08:02 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 27 Oct 2026 23:08:02 GMT
ENV MYSQL_MAJOR=8.4
# Tue, 27 Oct 2026 23:08:02 GMT
ENV MYSQL_VERSION=8.4.13-1.el9
# Tue, 27 Oct 2026 23:08:02 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 27 Oct 2026 23:08:46 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 27 Oct 2026 23:08:46 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 27 Oct 2026 23:08:46 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Tue, 27 Oct 2026 23:09:38 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 27 Oct 2026 23:09:38 GMT
VOLUME [/var/lib/mysql]
# Tue, 27 Oct 2026 23:09:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 23:09:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 23:09:38 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 27 Oct 2026 23:09:38 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:11f62504eea6ae8bacf9c501835f2547c0d6c7f6ff85fd7a67912c41a123c561`  
		Last Modified: Tue, 27 Oct 2026 23:05:43 GMT  
		Size: 45.7 MB (45732830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcc2860add9bcc0dcbb1daf59940d1987499023b9b255d75b7d2413138f4fb4f`  
		Last Modified: Tue, 27 Oct 2026 23:10:10 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:537139ce24ecb9a6435abb29f8bb1608083cff20446c0c589f123c4e4fd85a8f`  
		Last Modified: Tue, 27 Oct 2026 23:10:10 GMT  
		Size: 737.5 KB (737531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d8008949683580853c72be0bf533a577ff3ab201893a4a9d37f0a14f6a92f6f`  
		Last Modified: Tue, 27 Oct 2026 23:10:10 GMT  
		Size: 5.8 MB (5806716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:061847e2e7e03c3facc7c6fc9173794c792598dadb9f3e23d856677fa719acfb`  
		Last Modified: Tue, 27 Oct 2026 23:10:10 GMT  
		Size: 2.6 KB (2609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7594687b0cc0ee2bf01231d5c81fcaf3f60808d220d3c64693a22343448ffd81`  
		Last Modified: Tue, 27 Oct 2026 23:10:11 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d311624a035c26df92292202cd61849ec2ac205d34b727faac2ff8302b2bb72`  
		Last Modified: Tue, 27 Oct 2026 23:10:13 GMT  
		Size: 49.9 MB (49855220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84c3133e6ba07b7451381dfd3759f4357aa6761570b376ad124b6a6158298668`  
		Last Modified: Tue, 27 Oct 2026 23:10:11 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dca13af25e782ce98f51541bdd30eed794d75c892b668ff10cc57768c12298cc`  
		Last Modified: Tue, 27 Oct 2026 23:10:14 GMT  
		Size: 130.8 MB (130770217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82c1018a5ca0bdffdfecdf67b7460c1938b5b1b4e6de8f2775608592728058b1`  
		Last Modified: Tue, 27 Oct 2026 23:10:12 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:720bd91371e732633312953fbc3cc8004a11ebc5a101b42eaf6ea869b7a1a986
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15725397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ca81e517b2e9eaad9165bc7a3161a56128a3e230bed347cee2365f30dbc8b9c`

```dockerfile
```

-	Layers:
	-	`sha256:6655f9e2cb3f914cc9c1ddc824a51d6e9857a56aa91830c10e22fc95cea26587`  
		Last Modified: Tue, 27 Oct 2026 23:10:10 GMT  
		Size: 15.7 MB (15691815 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0f0ce162a89e4fdc1b04f4408ee3362cf1429f98a8b8b31f54bb9f28173714e0`  
		Last Modified: Tue, 27 Oct 2026 23:10:09 GMT  
		Size: 33.6 KB (33582 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:8.4`

```console
$ docker pull mysql@sha256:a0225d1ea6631c8bc2385dc4c2faba17bbf1834ecf369e1659a9a382bd8d5dd7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8.4` - linux; amd64

```console
$ docker pull mysql@sha256:5cf1e1293ea42e077e6a22114e6773b9aae3bb8f9933a2acd5a9721518ff8f5b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.3 MB (238252878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2a0d367629f5b5dcd6cdabc53fe9183a0a3c313f9bd354e368290ba6fbf6d3f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 27 Oct 2026 23:05:41 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 27 Oct 2026 23:05:41 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 23:07:17 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 27 Oct 2026 23:07:19 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 23:07:19 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 23:07:53 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 27 Oct 2026 23:07:54 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 27 Oct 2026 23:07:54 GMT
ENV MYSQL_MAJOR=8.4
# Tue, 27 Oct 2026 23:07:54 GMT
ENV MYSQL_VERSION=8.4.13-1.el9
# Tue, 27 Oct 2026 23:07:54 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 27 Oct 2026 23:08:30 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 27 Oct 2026 23:08:30 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 27 Oct 2026 23:08:30 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Tue, 27 Oct 2026 23:09:13 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 27 Oct 2026 23:09:13 GMT
VOLUME [/var/lib/mysql]
# Tue, 27 Oct 2026 23:09:13 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 23:09:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 23:09:13 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 27 Oct 2026 23:09:13 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:1610bd8e525d37f7b01147980f0f660538a95e978eee8351a908a00d143c2910`  
		Last Modified: Tue, 27 Oct 2026 23:05:52 GMT  
		Size: 47.2 MB (47188107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4143b5578588023307b710623d1362a77af4557a51c1c72983aca1fe5d5969b4`  
		Last Modified: Tue, 27 Oct 2026 23:09:41 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e752cc14300e79365e777ca9f56fdd5049e87964f423ca9b30cfc2f34d998130`  
		Last Modified: Tue, 27 Oct 2026 23:09:41 GMT  
		Size: 783.6 KB (783565 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2c76224d19e141c050f669edb6788d78760198453320fd6cb3bbc7720911e1b`  
		Last Modified: Tue, 27 Oct 2026 23:09:41 GMT  
		Size: 6.2 MB (6186780 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a4f18e225a8e100697eefb85ef71bc2675ac5fc5c7d233725b2557ec3a6e682`  
		Last Modified: Tue, 27 Oct 2026 23:09:41 GMT  
		Size: 2.6 KB (2609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28cc43b6d59c8dd0f25c63f26ea3ded99e9e6ee8b2f7b7e92c1b43134d3016ae`  
		Last Modified: Tue, 27 Oct 2026 23:09:42 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35515671e46bf4c664fac114fd102c80f36a9971371c823d86de5030b2cc925e`  
		Last Modified: Tue, 27 Oct 2026 23:09:45 GMT  
		Size: 51.7 MB (51673729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c12829836f3e8bd1303c214219cfd711c907a9e832ef748c16171bfd773d9dd6`  
		Last Modified: Tue, 27 Oct 2026 23:09:42 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb258f8898e780972b965e2ecc1f62a83446b1706654fe6efddf0887a9fc61a6`  
		Last Modified: Tue, 27 Oct 2026 23:09:47 GMT  
		Size: 132.4 MB (132411320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9ef008e7b8be94229f420751e8b23b4f2fe460f16976757be7c2d766d4c2ed1`  
		Last Modified: Tue, 27 Oct 2026 23:09:44 GMT  
		Size: 5.2 KB (5229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4` - unknown; unknown

```console
$ docker pull mysql@sha256:b4cbb134db78c0c4507c478bfda0ee704db240efc6cf3702604046cc565c94d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15726728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ba27b4814552ca60c9c5758cc912566ed3329561275c72831e3d2e057520f3d`

```dockerfile
```

-	Layers:
	-	`sha256:f95cea338c517fd21f1294c91255bdd1b63d3186bacd703382e0de03131d54ef`  
		Last Modified: Tue, 27 Oct 2026 23:09:42 GMT  
		Size: 15.7 MB (15693415 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:12e251ee6074adc0f126917b5d5e4ffe8100317c5d398cc3c625b639562f684f`  
		Last Modified: Tue, 27 Oct 2026 23:09:41 GMT  
		Size: 33.3 KB (33313 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8.4` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:8ab2115abe8ca3d2745962f4e75f2f86fb8182ae19908773cd4cce811f3c106e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.9 MB (232911891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be17a932c0bb78fa5ecc359eb22ec3ba3f53b9b2b6c5260485df4c0eee27771f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 27 Oct 2026 23:05:32 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 27 Oct 2026 23:05:32 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 23:07:18 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 27 Oct 2026 23:07:20 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 23:07:20 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 23:08:01 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 27 Oct 2026 23:08:02 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 27 Oct 2026 23:08:02 GMT
ENV MYSQL_MAJOR=8.4
# Tue, 27 Oct 2026 23:08:02 GMT
ENV MYSQL_VERSION=8.4.13-1.el9
# Tue, 27 Oct 2026 23:08:02 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 27 Oct 2026 23:08:46 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 27 Oct 2026 23:08:46 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 27 Oct 2026 23:08:46 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Tue, 27 Oct 2026 23:09:38 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 27 Oct 2026 23:09:38 GMT
VOLUME [/var/lib/mysql]
# Tue, 27 Oct 2026 23:09:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 23:09:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 23:09:38 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 27 Oct 2026 23:09:38 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:11f62504eea6ae8bacf9c501835f2547c0d6c7f6ff85fd7a67912c41a123c561`  
		Last Modified: Tue, 27 Oct 2026 23:05:43 GMT  
		Size: 45.7 MB (45732830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcc2860add9bcc0dcbb1daf59940d1987499023b9b255d75b7d2413138f4fb4f`  
		Last Modified: Tue, 27 Oct 2026 23:10:10 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:537139ce24ecb9a6435abb29f8bb1608083cff20446c0c589f123c4e4fd85a8f`  
		Last Modified: Tue, 27 Oct 2026 23:10:10 GMT  
		Size: 737.5 KB (737531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d8008949683580853c72be0bf533a577ff3ab201893a4a9d37f0a14f6a92f6f`  
		Last Modified: Tue, 27 Oct 2026 23:10:10 GMT  
		Size: 5.8 MB (5806716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:061847e2e7e03c3facc7c6fc9173794c792598dadb9f3e23d856677fa719acfb`  
		Last Modified: Tue, 27 Oct 2026 23:10:10 GMT  
		Size: 2.6 KB (2609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7594687b0cc0ee2bf01231d5c81fcaf3f60808d220d3c64693a22343448ffd81`  
		Last Modified: Tue, 27 Oct 2026 23:10:11 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d311624a035c26df92292202cd61849ec2ac205d34b727faac2ff8302b2bb72`  
		Last Modified: Tue, 27 Oct 2026 23:10:13 GMT  
		Size: 49.9 MB (49855220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84c3133e6ba07b7451381dfd3759f4357aa6761570b376ad124b6a6158298668`  
		Last Modified: Tue, 27 Oct 2026 23:10:11 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dca13af25e782ce98f51541bdd30eed794d75c892b668ff10cc57768c12298cc`  
		Last Modified: Tue, 27 Oct 2026 23:10:14 GMT  
		Size: 130.8 MB (130770217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82c1018a5ca0bdffdfecdf67b7460c1938b5b1b4e6de8f2775608592728058b1`  
		Last Modified: Tue, 27 Oct 2026 23:10:12 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4` - unknown; unknown

```console
$ docker pull mysql@sha256:720bd91371e732633312953fbc3cc8004a11ebc5a101b42eaf6ea869b7a1a986
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15725397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ca81e517b2e9eaad9165bc7a3161a56128a3e230bed347cee2365f30dbc8b9c`

```dockerfile
```

-	Layers:
	-	`sha256:6655f9e2cb3f914cc9c1ddc824a51d6e9857a56aa91830c10e22fc95cea26587`  
		Last Modified: Tue, 27 Oct 2026 23:10:10 GMT  
		Size: 15.7 MB (15691815 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0f0ce162a89e4fdc1b04f4408ee3362cf1429f98a8b8b31f54bb9f28173714e0`  
		Last Modified: Tue, 27 Oct 2026 23:10:09 GMT  
		Size: 33.6 KB (33582 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:8.4-oracle`

```console
$ docker pull mysql@sha256:a0225d1ea6631c8bc2385dc4c2faba17bbf1834ecf369e1659a9a382bd8d5dd7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8.4-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:5cf1e1293ea42e077e6a22114e6773b9aae3bb8f9933a2acd5a9721518ff8f5b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.3 MB (238252878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2a0d367629f5b5dcd6cdabc53fe9183a0a3c313f9bd354e368290ba6fbf6d3f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 27 Oct 2026 23:05:41 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 27 Oct 2026 23:05:41 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 23:07:17 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 27 Oct 2026 23:07:19 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 23:07:19 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 23:07:53 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 27 Oct 2026 23:07:54 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 27 Oct 2026 23:07:54 GMT
ENV MYSQL_MAJOR=8.4
# Tue, 27 Oct 2026 23:07:54 GMT
ENV MYSQL_VERSION=8.4.13-1.el9
# Tue, 27 Oct 2026 23:07:54 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 27 Oct 2026 23:08:30 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 27 Oct 2026 23:08:30 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 27 Oct 2026 23:08:30 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Tue, 27 Oct 2026 23:09:13 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 27 Oct 2026 23:09:13 GMT
VOLUME [/var/lib/mysql]
# Tue, 27 Oct 2026 23:09:13 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 23:09:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 23:09:13 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 27 Oct 2026 23:09:13 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:1610bd8e525d37f7b01147980f0f660538a95e978eee8351a908a00d143c2910`  
		Last Modified: Tue, 27 Oct 2026 23:05:52 GMT  
		Size: 47.2 MB (47188107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4143b5578588023307b710623d1362a77af4557a51c1c72983aca1fe5d5969b4`  
		Last Modified: Tue, 27 Oct 2026 23:09:41 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e752cc14300e79365e777ca9f56fdd5049e87964f423ca9b30cfc2f34d998130`  
		Last Modified: Tue, 27 Oct 2026 23:09:41 GMT  
		Size: 783.6 KB (783565 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2c76224d19e141c050f669edb6788d78760198453320fd6cb3bbc7720911e1b`  
		Last Modified: Tue, 27 Oct 2026 23:09:41 GMT  
		Size: 6.2 MB (6186780 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a4f18e225a8e100697eefb85ef71bc2675ac5fc5c7d233725b2557ec3a6e682`  
		Last Modified: Tue, 27 Oct 2026 23:09:41 GMT  
		Size: 2.6 KB (2609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28cc43b6d59c8dd0f25c63f26ea3ded99e9e6ee8b2f7b7e92c1b43134d3016ae`  
		Last Modified: Tue, 27 Oct 2026 23:09:42 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35515671e46bf4c664fac114fd102c80f36a9971371c823d86de5030b2cc925e`  
		Last Modified: Tue, 27 Oct 2026 23:09:45 GMT  
		Size: 51.7 MB (51673729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c12829836f3e8bd1303c214219cfd711c907a9e832ef748c16171bfd773d9dd6`  
		Last Modified: Tue, 27 Oct 2026 23:09:42 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb258f8898e780972b965e2ecc1f62a83446b1706654fe6efddf0887a9fc61a6`  
		Last Modified: Tue, 27 Oct 2026 23:09:47 GMT  
		Size: 132.4 MB (132411320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9ef008e7b8be94229f420751e8b23b4f2fe460f16976757be7c2d766d4c2ed1`  
		Last Modified: Tue, 27 Oct 2026 23:09:44 GMT  
		Size: 5.2 KB (5229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:b4cbb134db78c0c4507c478bfda0ee704db240efc6cf3702604046cc565c94d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15726728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ba27b4814552ca60c9c5758cc912566ed3329561275c72831e3d2e057520f3d`

```dockerfile
```

-	Layers:
	-	`sha256:f95cea338c517fd21f1294c91255bdd1b63d3186bacd703382e0de03131d54ef`  
		Last Modified: Tue, 27 Oct 2026 23:09:42 GMT  
		Size: 15.7 MB (15693415 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:12e251ee6074adc0f126917b5d5e4ffe8100317c5d398cc3c625b639562f684f`  
		Last Modified: Tue, 27 Oct 2026 23:09:41 GMT  
		Size: 33.3 KB (33313 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8.4-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:8ab2115abe8ca3d2745962f4e75f2f86fb8182ae19908773cd4cce811f3c106e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.9 MB (232911891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be17a932c0bb78fa5ecc359eb22ec3ba3f53b9b2b6c5260485df4c0eee27771f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 27 Oct 2026 23:05:32 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 27 Oct 2026 23:05:32 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 23:07:18 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 27 Oct 2026 23:07:20 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 23:07:20 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 23:08:01 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 27 Oct 2026 23:08:02 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 27 Oct 2026 23:08:02 GMT
ENV MYSQL_MAJOR=8.4
# Tue, 27 Oct 2026 23:08:02 GMT
ENV MYSQL_VERSION=8.4.13-1.el9
# Tue, 27 Oct 2026 23:08:02 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 27 Oct 2026 23:08:46 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 27 Oct 2026 23:08:46 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 27 Oct 2026 23:08:46 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Tue, 27 Oct 2026 23:09:38 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 27 Oct 2026 23:09:38 GMT
VOLUME [/var/lib/mysql]
# Tue, 27 Oct 2026 23:09:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 23:09:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 23:09:38 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 27 Oct 2026 23:09:38 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:11f62504eea6ae8bacf9c501835f2547c0d6c7f6ff85fd7a67912c41a123c561`  
		Last Modified: Tue, 27 Oct 2026 23:05:43 GMT  
		Size: 45.7 MB (45732830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcc2860add9bcc0dcbb1daf59940d1987499023b9b255d75b7d2413138f4fb4f`  
		Last Modified: Tue, 27 Oct 2026 23:10:10 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:537139ce24ecb9a6435abb29f8bb1608083cff20446c0c589f123c4e4fd85a8f`  
		Last Modified: Tue, 27 Oct 2026 23:10:10 GMT  
		Size: 737.5 KB (737531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d8008949683580853c72be0bf533a577ff3ab201893a4a9d37f0a14f6a92f6f`  
		Last Modified: Tue, 27 Oct 2026 23:10:10 GMT  
		Size: 5.8 MB (5806716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:061847e2e7e03c3facc7c6fc9173794c792598dadb9f3e23d856677fa719acfb`  
		Last Modified: Tue, 27 Oct 2026 23:10:10 GMT  
		Size: 2.6 KB (2609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7594687b0cc0ee2bf01231d5c81fcaf3f60808d220d3c64693a22343448ffd81`  
		Last Modified: Tue, 27 Oct 2026 23:10:11 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d311624a035c26df92292202cd61849ec2ac205d34b727faac2ff8302b2bb72`  
		Last Modified: Tue, 27 Oct 2026 23:10:13 GMT  
		Size: 49.9 MB (49855220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84c3133e6ba07b7451381dfd3759f4357aa6761570b376ad124b6a6158298668`  
		Last Modified: Tue, 27 Oct 2026 23:10:11 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dca13af25e782ce98f51541bdd30eed794d75c892b668ff10cc57768c12298cc`  
		Last Modified: Tue, 27 Oct 2026 23:10:14 GMT  
		Size: 130.8 MB (130770217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82c1018a5ca0bdffdfecdf67b7460c1938b5b1b4e6de8f2775608592728058b1`  
		Last Modified: Tue, 27 Oct 2026 23:10:12 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:720bd91371e732633312953fbc3cc8004a11ebc5a101b42eaf6ea869b7a1a986
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15725397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ca81e517b2e9eaad9165bc7a3161a56128a3e230bed347cee2365f30dbc8b9c`

```dockerfile
```

-	Layers:
	-	`sha256:6655f9e2cb3f914cc9c1ddc824a51d6e9857a56aa91830c10e22fc95cea26587`  
		Last Modified: Tue, 27 Oct 2026 23:10:10 GMT  
		Size: 15.7 MB (15691815 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0f0ce162a89e4fdc1b04f4408ee3362cf1429f98a8b8b31f54bb9f28173714e0`  
		Last Modified: Tue, 27 Oct 2026 23:10:09 GMT  
		Size: 33.6 KB (33582 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:8.4-oraclelinux9`

```console
$ docker pull mysql@sha256:a0225d1ea6631c8bc2385dc4c2faba17bbf1834ecf369e1659a9a382bd8d5dd7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8.4-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:5cf1e1293ea42e077e6a22114e6773b9aae3bb8f9933a2acd5a9721518ff8f5b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.3 MB (238252878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2a0d367629f5b5dcd6cdabc53fe9183a0a3c313f9bd354e368290ba6fbf6d3f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 27 Oct 2026 23:05:41 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 27 Oct 2026 23:05:41 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 23:07:17 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 27 Oct 2026 23:07:19 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 23:07:19 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 23:07:53 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 27 Oct 2026 23:07:54 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 27 Oct 2026 23:07:54 GMT
ENV MYSQL_MAJOR=8.4
# Tue, 27 Oct 2026 23:07:54 GMT
ENV MYSQL_VERSION=8.4.13-1.el9
# Tue, 27 Oct 2026 23:07:54 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 27 Oct 2026 23:08:30 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 27 Oct 2026 23:08:30 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 27 Oct 2026 23:08:30 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Tue, 27 Oct 2026 23:09:13 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 27 Oct 2026 23:09:13 GMT
VOLUME [/var/lib/mysql]
# Tue, 27 Oct 2026 23:09:13 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 23:09:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 23:09:13 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 27 Oct 2026 23:09:13 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:1610bd8e525d37f7b01147980f0f660538a95e978eee8351a908a00d143c2910`  
		Last Modified: Tue, 27 Oct 2026 23:05:52 GMT  
		Size: 47.2 MB (47188107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4143b5578588023307b710623d1362a77af4557a51c1c72983aca1fe5d5969b4`  
		Last Modified: Tue, 27 Oct 2026 23:09:41 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e752cc14300e79365e777ca9f56fdd5049e87964f423ca9b30cfc2f34d998130`  
		Last Modified: Tue, 27 Oct 2026 23:09:41 GMT  
		Size: 783.6 KB (783565 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2c76224d19e141c050f669edb6788d78760198453320fd6cb3bbc7720911e1b`  
		Last Modified: Tue, 27 Oct 2026 23:09:41 GMT  
		Size: 6.2 MB (6186780 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a4f18e225a8e100697eefb85ef71bc2675ac5fc5c7d233725b2557ec3a6e682`  
		Last Modified: Tue, 27 Oct 2026 23:09:41 GMT  
		Size: 2.6 KB (2609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28cc43b6d59c8dd0f25c63f26ea3ded99e9e6ee8b2f7b7e92c1b43134d3016ae`  
		Last Modified: Tue, 27 Oct 2026 23:09:42 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35515671e46bf4c664fac114fd102c80f36a9971371c823d86de5030b2cc925e`  
		Last Modified: Tue, 27 Oct 2026 23:09:45 GMT  
		Size: 51.7 MB (51673729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c12829836f3e8bd1303c214219cfd711c907a9e832ef748c16171bfd773d9dd6`  
		Last Modified: Tue, 27 Oct 2026 23:09:42 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb258f8898e780972b965e2ecc1f62a83446b1706654fe6efddf0887a9fc61a6`  
		Last Modified: Tue, 27 Oct 2026 23:09:47 GMT  
		Size: 132.4 MB (132411320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9ef008e7b8be94229f420751e8b23b4f2fe460f16976757be7c2d766d4c2ed1`  
		Last Modified: Tue, 27 Oct 2026 23:09:44 GMT  
		Size: 5.2 KB (5229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:b4cbb134db78c0c4507c478bfda0ee704db240efc6cf3702604046cc565c94d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15726728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ba27b4814552ca60c9c5758cc912566ed3329561275c72831e3d2e057520f3d`

```dockerfile
```

-	Layers:
	-	`sha256:f95cea338c517fd21f1294c91255bdd1b63d3186bacd703382e0de03131d54ef`  
		Last Modified: Tue, 27 Oct 2026 23:09:42 GMT  
		Size: 15.7 MB (15693415 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:12e251ee6074adc0f126917b5d5e4ffe8100317c5d398cc3c625b639562f684f`  
		Last Modified: Tue, 27 Oct 2026 23:09:41 GMT  
		Size: 33.3 KB (33313 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8.4-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:8ab2115abe8ca3d2745962f4e75f2f86fb8182ae19908773cd4cce811f3c106e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.9 MB (232911891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be17a932c0bb78fa5ecc359eb22ec3ba3f53b9b2b6c5260485df4c0eee27771f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 27 Oct 2026 23:05:32 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 27 Oct 2026 23:05:32 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 23:07:18 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 27 Oct 2026 23:07:20 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 23:07:20 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 23:08:01 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 27 Oct 2026 23:08:02 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 27 Oct 2026 23:08:02 GMT
ENV MYSQL_MAJOR=8.4
# Tue, 27 Oct 2026 23:08:02 GMT
ENV MYSQL_VERSION=8.4.13-1.el9
# Tue, 27 Oct 2026 23:08:02 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 27 Oct 2026 23:08:46 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 27 Oct 2026 23:08:46 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 27 Oct 2026 23:08:46 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Tue, 27 Oct 2026 23:09:38 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 27 Oct 2026 23:09:38 GMT
VOLUME [/var/lib/mysql]
# Tue, 27 Oct 2026 23:09:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 23:09:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 23:09:38 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 27 Oct 2026 23:09:38 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:11f62504eea6ae8bacf9c501835f2547c0d6c7f6ff85fd7a67912c41a123c561`  
		Last Modified: Tue, 27 Oct 2026 23:05:43 GMT  
		Size: 45.7 MB (45732830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcc2860add9bcc0dcbb1daf59940d1987499023b9b255d75b7d2413138f4fb4f`  
		Last Modified: Tue, 27 Oct 2026 23:10:10 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:537139ce24ecb9a6435abb29f8bb1608083cff20446c0c589f123c4e4fd85a8f`  
		Last Modified: Tue, 27 Oct 2026 23:10:10 GMT  
		Size: 737.5 KB (737531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d8008949683580853c72be0bf533a577ff3ab201893a4a9d37f0a14f6a92f6f`  
		Last Modified: Tue, 27 Oct 2026 23:10:10 GMT  
		Size: 5.8 MB (5806716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:061847e2e7e03c3facc7c6fc9173794c792598dadb9f3e23d856677fa719acfb`  
		Last Modified: Tue, 27 Oct 2026 23:10:10 GMT  
		Size: 2.6 KB (2609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7594687b0cc0ee2bf01231d5c81fcaf3f60808d220d3c64693a22343448ffd81`  
		Last Modified: Tue, 27 Oct 2026 23:10:11 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d311624a035c26df92292202cd61849ec2ac205d34b727faac2ff8302b2bb72`  
		Last Modified: Tue, 27 Oct 2026 23:10:13 GMT  
		Size: 49.9 MB (49855220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84c3133e6ba07b7451381dfd3759f4357aa6761570b376ad124b6a6158298668`  
		Last Modified: Tue, 27 Oct 2026 23:10:11 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dca13af25e782ce98f51541bdd30eed794d75c892b668ff10cc57768c12298cc`  
		Last Modified: Tue, 27 Oct 2026 23:10:14 GMT  
		Size: 130.8 MB (130770217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82c1018a5ca0bdffdfecdf67b7460c1938b5b1b4e6de8f2775608592728058b1`  
		Last Modified: Tue, 27 Oct 2026 23:10:12 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:720bd91371e732633312953fbc3cc8004a11ebc5a101b42eaf6ea869b7a1a986
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15725397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ca81e517b2e9eaad9165bc7a3161a56128a3e230bed347cee2365f30dbc8b9c`

```dockerfile
```

-	Layers:
	-	`sha256:6655f9e2cb3f914cc9c1ddc824a51d6e9857a56aa91830c10e22fc95cea26587`  
		Last Modified: Tue, 27 Oct 2026 23:10:10 GMT  
		Size: 15.7 MB (15691815 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0f0ce162a89e4fdc1b04f4408ee3362cf1429f98a8b8b31f54bb9f28173714e0`  
		Last Modified: Tue, 27 Oct 2026 23:10:09 GMT  
		Size: 33.6 KB (33582 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:8.4.13`

```console
$ docker pull mysql@sha256:a0225d1ea6631c8bc2385dc4c2faba17bbf1834ecf369e1659a9a382bd8d5dd7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8.4.13` - linux; amd64

```console
$ docker pull mysql@sha256:5cf1e1293ea42e077e6a22114e6773b9aae3bb8f9933a2acd5a9721518ff8f5b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.3 MB (238252878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2a0d367629f5b5dcd6cdabc53fe9183a0a3c313f9bd354e368290ba6fbf6d3f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 27 Oct 2026 23:05:41 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 27 Oct 2026 23:05:41 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 23:07:17 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 27 Oct 2026 23:07:19 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 23:07:19 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 23:07:53 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 27 Oct 2026 23:07:54 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 27 Oct 2026 23:07:54 GMT
ENV MYSQL_MAJOR=8.4
# Tue, 27 Oct 2026 23:07:54 GMT
ENV MYSQL_VERSION=8.4.13-1.el9
# Tue, 27 Oct 2026 23:07:54 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 27 Oct 2026 23:08:30 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 27 Oct 2026 23:08:30 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 27 Oct 2026 23:08:30 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Tue, 27 Oct 2026 23:09:13 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 27 Oct 2026 23:09:13 GMT
VOLUME [/var/lib/mysql]
# Tue, 27 Oct 2026 23:09:13 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 23:09:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 23:09:13 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 27 Oct 2026 23:09:13 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:1610bd8e525d37f7b01147980f0f660538a95e978eee8351a908a00d143c2910`  
		Last Modified: Tue, 27 Oct 2026 23:05:52 GMT  
		Size: 47.2 MB (47188107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4143b5578588023307b710623d1362a77af4557a51c1c72983aca1fe5d5969b4`  
		Last Modified: Tue, 27 Oct 2026 23:09:41 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e752cc14300e79365e777ca9f56fdd5049e87964f423ca9b30cfc2f34d998130`  
		Last Modified: Tue, 27 Oct 2026 23:09:41 GMT  
		Size: 783.6 KB (783565 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2c76224d19e141c050f669edb6788d78760198453320fd6cb3bbc7720911e1b`  
		Last Modified: Tue, 27 Oct 2026 23:09:41 GMT  
		Size: 6.2 MB (6186780 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a4f18e225a8e100697eefb85ef71bc2675ac5fc5c7d233725b2557ec3a6e682`  
		Last Modified: Tue, 27 Oct 2026 23:09:41 GMT  
		Size: 2.6 KB (2609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28cc43b6d59c8dd0f25c63f26ea3ded99e9e6ee8b2f7b7e92c1b43134d3016ae`  
		Last Modified: Tue, 27 Oct 2026 23:09:42 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35515671e46bf4c664fac114fd102c80f36a9971371c823d86de5030b2cc925e`  
		Last Modified: Tue, 27 Oct 2026 23:09:45 GMT  
		Size: 51.7 MB (51673729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c12829836f3e8bd1303c214219cfd711c907a9e832ef748c16171bfd773d9dd6`  
		Last Modified: Tue, 27 Oct 2026 23:09:42 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb258f8898e780972b965e2ecc1f62a83446b1706654fe6efddf0887a9fc61a6`  
		Last Modified: Tue, 27 Oct 2026 23:09:47 GMT  
		Size: 132.4 MB (132411320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9ef008e7b8be94229f420751e8b23b4f2fe460f16976757be7c2d766d4c2ed1`  
		Last Modified: Tue, 27 Oct 2026 23:09:44 GMT  
		Size: 5.2 KB (5229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4.13` - unknown; unknown

```console
$ docker pull mysql@sha256:b4cbb134db78c0c4507c478bfda0ee704db240efc6cf3702604046cc565c94d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15726728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ba27b4814552ca60c9c5758cc912566ed3329561275c72831e3d2e057520f3d`

```dockerfile
```

-	Layers:
	-	`sha256:f95cea338c517fd21f1294c91255bdd1b63d3186bacd703382e0de03131d54ef`  
		Last Modified: Tue, 27 Oct 2026 23:09:42 GMT  
		Size: 15.7 MB (15693415 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:12e251ee6074adc0f126917b5d5e4ffe8100317c5d398cc3c625b639562f684f`  
		Last Modified: Tue, 27 Oct 2026 23:09:41 GMT  
		Size: 33.3 KB (33313 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8.4.13` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:8ab2115abe8ca3d2745962f4e75f2f86fb8182ae19908773cd4cce811f3c106e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.9 MB (232911891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be17a932c0bb78fa5ecc359eb22ec3ba3f53b9b2b6c5260485df4c0eee27771f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 27 Oct 2026 23:05:32 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 27 Oct 2026 23:05:32 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 23:07:18 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 27 Oct 2026 23:07:20 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 23:07:20 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 23:08:01 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 27 Oct 2026 23:08:02 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 27 Oct 2026 23:08:02 GMT
ENV MYSQL_MAJOR=8.4
# Tue, 27 Oct 2026 23:08:02 GMT
ENV MYSQL_VERSION=8.4.13-1.el9
# Tue, 27 Oct 2026 23:08:02 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 27 Oct 2026 23:08:46 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 27 Oct 2026 23:08:46 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 27 Oct 2026 23:08:46 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Tue, 27 Oct 2026 23:09:38 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 27 Oct 2026 23:09:38 GMT
VOLUME [/var/lib/mysql]
# Tue, 27 Oct 2026 23:09:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 23:09:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 23:09:38 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 27 Oct 2026 23:09:38 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:11f62504eea6ae8bacf9c501835f2547c0d6c7f6ff85fd7a67912c41a123c561`  
		Last Modified: Tue, 27 Oct 2026 23:05:43 GMT  
		Size: 45.7 MB (45732830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcc2860add9bcc0dcbb1daf59940d1987499023b9b255d75b7d2413138f4fb4f`  
		Last Modified: Tue, 27 Oct 2026 23:10:10 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:537139ce24ecb9a6435abb29f8bb1608083cff20446c0c589f123c4e4fd85a8f`  
		Last Modified: Tue, 27 Oct 2026 23:10:10 GMT  
		Size: 737.5 KB (737531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d8008949683580853c72be0bf533a577ff3ab201893a4a9d37f0a14f6a92f6f`  
		Last Modified: Tue, 27 Oct 2026 23:10:10 GMT  
		Size: 5.8 MB (5806716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:061847e2e7e03c3facc7c6fc9173794c792598dadb9f3e23d856677fa719acfb`  
		Last Modified: Tue, 27 Oct 2026 23:10:10 GMT  
		Size: 2.6 KB (2609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7594687b0cc0ee2bf01231d5c81fcaf3f60808d220d3c64693a22343448ffd81`  
		Last Modified: Tue, 27 Oct 2026 23:10:11 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d311624a035c26df92292202cd61849ec2ac205d34b727faac2ff8302b2bb72`  
		Last Modified: Tue, 27 Oct 2026 23:10:13 GMT  
		Size: 49.9 MB (49855220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84c3133e6ba07b7451381dfd3759f4357aa6761570b376ad124b6a6158298668`  
		Last Modified: Tue, 27 Oct 2026 23:10:11 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dca13af25e782ce98f51541bdd30eed794d75c892b668ff10cc57768c12298cc`  
		Last Modified: Tue, 27 Oct 2026 23:10:14 GMT  
		Size: 130.8 MB (130770217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82c1018a5ca0bdffdfecdf67b7460c1938b5b1b4e6de8f2775608592728058b1`  
		Last Modified: Tue, 27 Oct 2026 23:10:12 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4.13` - unknown; unknown

```console
$ docker pull mysql@sha256:720bd91371e732633312953fbc3cc8004a11ebc5a101b42eaf6ea869b7a1a986
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15725397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ca81e517b2e9eaad9165bc7a3161a56128a3e230bed347cee2365f30dbc8b9c`

```dockerfile
```

-	Layers:
	-	`sha256:6655f9e2cb3f914cc9c1ddc824a51d6e9857a56aa91830c10e22fc95cea26587`  
		Last Modified: Tue, 27 Oct 2026 23:10:10 GMT  
		Size: 15.7 MB (15691815 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0f0ce162a89e4fdc1b04f4408ee3362cf1429f98a8b8b31f54bb9f28173714e0`  
		Last Modified: Tue, 27 Oct 2026 23:10:09 GMT  
		Size: 33.6 KB (33582 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:8.4.13-oracle`

```console
$ docker pull mysql@sha256:a0225d1ea6631c8bc2385dc4c2faba17bbf1834ecf369e1659a9a382bd8d5dd7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8.4.13-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:5cf1e1293ea42e077e6a22114e6773b9aae3bb8f9933a2acd5a9721518ff8f5b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.3 MB (238252878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2a0d367629f5b5dcd6cdabc53fe9183a0a3c313f9bd354e368290ba6fbf6d3f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 27 Oct 2026 23:05:41 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 27 Oct 2026 23:05:41 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 23:07:17 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 27 Oct 2026 23:07:19 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 23:07:19 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 23:07:53 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 27 Oct 2026 23:07:54 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 27 Oct 2026 23:07:54 GMT
ENV MYSQL_MAJOR=8.4
# Tue, 27 Oct 2026 23:07:54 GMT
ENV MYSQL_VERSION=8.4.13-1.el9
# Tue, 27 Oct 2026 23:07:54 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 27 Oct 2026 23:08:30 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 27 Oct 2026 23:08:30 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 27 Oct 2026 23:08:30 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Tue, 27 Oct 2026 23:09:13 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 27 Oct 2026 23:09:13 GMT
VOLUME [/var/lib/mysql]
# Tue, 27 Oct 2026 23:09:13 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 23:09:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 23:09:13 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 27 Oct 2026 23:09:13 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:1610bd8e525d37f7b01147980f0f660538a95e978eee8351a908a00d143c2910`  
		Last Modified: Tue, 27 Oct 2026 23:05:52 GMT  
		Size: 47.2 MB (47188107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4143b5578588023307b710623d1362a77af4557a51c1c72983aca1fe5d5969b4`  
		Last Modified: Tue, 27 Oct 2026 23:09:41 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e752cc14300e79365e777ca9f56fdd5049e87964f423ca9b30cfc2f34d998130`  
		Last Modified: Tue, 27 Oct 2026 23:09:41 GMT  
		Size: 783.6 KB (783565 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2c76224d19e141c050f669edb6788d78760198453320fd6cb3bbc7720911e1b`  
		Last Modified: Tue, 27 Oct 2026 23:09:41 GMT  
		Size: 6.2 MB (6186780 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a4f18e225a8e100697eefb85ef71bc2675ac5fc5c7d233725b2557ec3a6e682`  
		Last Modified: Tue, 27 Oct 2026 23:09:41 GMT  
		Size: 2.6 KB (2609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28cc43b6d59c8dd0f25c63f26ea3ded99e9e6ee8b2f7b7e92c1b43134d3016ae`  
		Last Modified: Tue, 27 Oct 2026 23:09:42 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35515671e46bf4c664fac114fd102c80f36a9971371c823d86de5030b2cc925e`  
		Last Modified: Tue, 27 Oct 2026 23:09:45 GMT  
		Size: 51.7 MB (51673729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c12829836f3e8bd1303c214219cfd711c907a9e832ef748c16171bfd773d9dd6`  
		Last Modified: Tue, 27 Oct 2026 23:09:42 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb258f8898e780972b965e2ecc1f62a83446b1706654fe6efddf0887a9fc61a6`  
		Last Modified: Tue, 27 Oct 2026 23:09:47 GMT  
		Size: 132.4 MB (132411320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9ef008e7b8be94229f420751e8b23b4f2fe460f16976757be7c2d766d4c2ed1`  
		Last Modified: Tue, 27 Oct 2026 23:09:44 GMT  
		Size: 5.2 KB (5229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4.13-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:b4cbb134db78c0c4507c478bfda0ee704db240efc6cf3702604046cc565c94d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15726728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ba27b4814552ca60c9c5758cc912566ed3329561275c72831e3d2e057520f3d`

```dockerfile
```

-	Layers:
	-	`sha256:f95cea338c517fd21f1294c91255bdd1b63d3186bacd703382e0de03131d54ef`  
		Last Modified: Tue, 27 Oct 2026 23:09:42 GMT  
		Size: 15.7 MB (15693415 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:12e251ee6074adc0f126917b5d5e4ffe8100317c5d398cc3c625b639562f684f`  
		Last Modified: Tue, 27 Oct 2026 23:09:41 GMT  
		Size: 33.3 KB (33313 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8.4.13-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:8ab2115abe8ca3d2745962f4e75f2f86fb8182ae19908773cd4cce811f3c106e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.9 MB (232911891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be17a932c0bb78fa5ecc359eb22ec3ba3f53b9b2b6c5260485df4c0eee27771f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 27 Oct 2026 23:05:32 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 27 Oct 2026 23:05:32 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 23:07:18 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 27 Oct 2026 23:07:20 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 23:07:20 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 23:08:01 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 27 Oct 2026 23:08:02 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 27 Oct 2026 23:08:02 GMT
ENV MYSQL_MAJOR=8.4
# Tue, 27 Oct 2026 23:08:02 GMT
ENV MYSQL_VERSION=8.4.13-1.el9
# Tue, 27 Oct 2026 23:08:02 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 27 Oct 2026 23:08:46 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 27 Oct 2026 23:08:46 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 27 Oct 2026 23:08:46 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Tue, 27 Oct 2026 23:09:38 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 27 Oct 2026 23:09:38 GMT
VOLUME [/var/lib/mysql]
# Tue, 27 Oct 2026 23:09:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 23:09:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 23:09:38 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 27 Oct 2026 23:09:38 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:11f62504eea6ae8bacf9c501835f2547c0d6c7f6ff85fd7a67912c41a123c561`  
		Last Modified: Tue, 27 Oct 2026 23:05:43 GMT  
		Size: 45.7 MB (45732830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcc2860add9bcc0dcbb1daf59940d1987499023b9b255d75b7d2413138f4fb4f`  
		Last Modified: Tue, 27 Oct 2026 23:10:10 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:537139ce24ecb9a6435abb29f8bb1608083cff20446c0c589f123c4e4fd85a8f`  
		Last Modified: Tue, 27 Oct 2026 23:10:10 GMT  
		Size: 737.5 KB (737531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d8008949683580853c72be0bf533a577ff3ab201893a4a9d37f0a14f6a92f6f`  
		Last Modified: Tue, 27 Oct 2026 23:10:10 GMT  
		Size: 5.8 MB (5806716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:061847e2e7e03c3facc7c6fc9173794c792598dadb9f3e23d856677fa719acfb`  
		Last Modified: Tue, 27 Oct 2026 23:10:10 GMT  
		Size: 2.6 KB (2609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7594687b0cc0ee2bf01231d5c81fcaf3f60808d220d3c64693a22343448ffd81`  
		Last Modified: Tue, 27 Oct 2026 23:10:11 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d311624a035c26df92292202cd61849ec2ac205d34b727faac2ff8302b2bb72`  
		Last Modified: Tue, 27 Oct 2026 23:10:13 GMT  
		Size: 49.9 MB (49855220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84c3133e6ba07b7451381dfd3759f4357aa6761570b376ad124b6a6158298668`  
		Last Modified: Tue, 27 Oct 2026 23:10:11 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dca13af25e782ce98f51541bdd30eed794d75c892b668ff10cc57768c12298cc`  
		Last Modified: Tue, 27 Oct 2026 23:10:14 GMT  
		Size: 130.8 MB (130770217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82c1018a5ca0bdffdfecdf67b7460c1938b5b1b4e6de8f2775608592728058b1`  
		Last Modified: Tue, 27 Oct 2026 23:10:12 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4.13-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:720bd91371e732633312953fbc3cc8004a11ebc5a101b42eaf6ea869b7a1a986
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15725397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ca81e517b2e9eaad9165bc7a3161a56128a3e230bed347cee2365f30dbc8b9c`

```dockerfile
```

-	Layers:
	-	`sha256:6655f9e2cb3f914cc9c1ddc824a51d6e9857a56aa91830c10e22fc95cea26587`  
		Last Modified: Tue, 27 Oct 2026 23:10:10 GMT  
		Size: 15.7 MB (15691815 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0f0ce162a89e4fdc1b04f4408ee3362cf1429f98a8b8b31f54bb9f28173714e0`  
		Last Modified: Tue, 27 Oct 2026 23:10:09 GMT  
		Size: 33.6 KB (33582 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:8.4.13-oraclelinux9`

```console
$ docker pull mysql@sha256:a0225d1ea6631c8bc2385dc4c2faba17bbf1834ecf369e1659a9a382bd8d5dd7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8.4.13-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:5cf1e1293ea42e077e6a22114e6773b9aae3bb8f9933a2acd5a9721518ff8f5b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.3 MB (238252878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2a0d367629f5b5dcd6cdabc53fe9183a0a3c313f9bd354e368290ba6fbf6d3f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 27 Oct 2026 23:05:41 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 27 Oct 2026 23:05:41 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 23:07:17 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 27 Oct 2026 23:07:19 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 23:07:19 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 23:07:53 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 27 Oct 2026 23:07:54 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 27 Oct 2026 23:07:54 GMT
ENV MYSQL_MAJOR=8.4
# Tue, 27 Oct 2026 23:07:54 GMT
ENV MYSQL_VERSION=8.4.13-1.el9
# Tue, 27 Oct 2026 23:07:54 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 27 Oct 2026 23:08:30 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 27 Oct 2026 23:08:30 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 27 Oct 2026 23:08:30 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Tue, 27 Oct 2026 23:09:13 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 27 Oct 2026 23:09:13 GMT
VOLUME [/var/lib/mysql]
# Tue, 27 Oct 2026 23:09:13 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 23:09:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 23:09:13 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 27 Oct 2026 23:09:13 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:1610bd8e525d37f7b01147980f0f660538a95e978eee8351a908a00d143c2910`  
		Last Modified: Tue, 27 Oct 2026 23:05:52 GMT  
		Size: 47.2 MB (47188107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4143b5578588023307b710623d1362a77af4557a51c1c72983aca1fe5d5969b4`  
		Last Modified: Tue, 27 Oct 2026 23:09:41 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e752cc14300e79365e777ca9f56fdd5049e87964f423ca9b30cfc2f34d998130`  
		Last Modified: Tue, 27 Oct 2026 23:09:41 GMT  
		Size: 783.6 KB (783565 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2c76224d19e141c050f669edb6788d78760198453320fd6cb3bbc7720911e1b`  
		Last Modified: Tue, 27 Oct 2026 23:09:41 GMT  
		Size: 6.2 MB (6186780 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a4f18e225a8e100697eefb85ef71bc2675ac5fc5c7d233725b2557ec3a6e682`  
		Last Modified: Tue, 27 Oct 2026 23:09:41 GMT  
		Size: 2.6 KB (2609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28cc43b6d59c8dd0f25c63f26ea3ded99e9e6ee8b2f7b7e92c1b43134d3016ae`  
		Last Modified: Tue, 27 Oct 2026 23:09:42 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35515671e46bf4c664fac114fd102c80f36a9971371c823d86de5030b2cc925e`  
		Last Modified: Tue, 27 Oct 2026 23:09:45 GMT  
		Size: 51.7 MB (51673729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c12829836f3e8bd1303c214219cfd711c907a9e832ef748c16171bfd773d9dd6`  
		Last Modified: Tue, 27 Oct 2026 23:09:42 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb258f8898e780972b965e2ecc1f62a83446b1706654fe6efddf0887a9fc61a6`  
		Last Modified: Tue, 27 Oct 2026 23:09:47 GMT  
		Size: 132.4 MB (132411320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9ef008e7b8be94229f420751e8b23b4f2fe460f16976757be7c2d766d4c2ed1`  
		Last Modified: Tue, 27 Oct 2026 23:09:44 GMT  
		Size: 5.2 KB (5229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4.13-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:b4cbb134db78c0c4507c478bfda0ee704db240efc6cf3702604046cc565c94d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15726728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ba27b4814552ca60c9c5758cc912566ed3329561275c72831e3d2e057520f3d`

```dockerfile
```

-	Layers:
	-	`sha256:f95cea338c517fd21f1294c91255bdd1b63d3186bacd703382e0de03131d54ef`  
		Last Modified: Tue, 27 Oct 2026 23:09:42 GMT  
		Size: 15.7 MB (15693415 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:12e251ee6074adc0f126917b5d5e4ffe8100317c5d398cc3c625b639562f684f`  
		Last Modified: Tue, 27 Oct 2026 23:09:41 GMT  
		Size: 33.3 KB (33313 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8.4.13-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:8ab2115abe8ca3d2745962f4e75f2f86fb8182ae19908773cd4cce811f3c106e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.9 MB (232911891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be17a932c0bb78fa5ecc359eb22ec3ba3f53b9b2b6c5260485df4c0eee27771f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 27 Oct 2026 23:05:32 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 27 Oct 2026 23:05:32 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 23:07:18 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 27 Oct 2026 23:07:20 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 23:07:20 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 23:08:01 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 27 Oct 2026 23:08:02 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 27 Oct 2026 23:08:02 GMT
ENV MYSQL_MAJOR=8.4
# Tue, 27 Oct 2026 23:08:02 GMT
ENV MYSQL_VERSION=8.4.13-1.el9
# Tue, 27 Oct 2026 23:08:02 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 27 Oct 2026 23:08:46 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 27 Oct 2026 23:08:46 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 27 Oct 2026 23:08:46 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Tue, 27 Oct 2026 23:09:38 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 27 Oct 2026 23:09:38 GMT
VOLUME [/var/lib/mysql]
# Tue, 27 Oct 2026 23:09:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 23:09:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 23:09:38 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 27 Oct 2026 23:09:38 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:11f62504eea6ae8bacf9c501835f2547c0d6c7f6ff85fd7a67912c41a123c561`  
		Last Modified: Tue, 27 Oct 2026 23:05:43 GMT  
		Size: 45.7 MB (45732830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcc2860add9bcc0dcbb1daf59940d1987499023b9b255d75b7d2413138f4fb4f`  
		Last Modified: Tue, 27 Oct 2026 23:10:10 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:537139ce24ecb9a6435abb29f8bb1608083cff20446c0c589f123c4e4fd85a8f`  
		Last Modified: Tue, 27 Oct 2026 23:10:10 GMT  
		Size: 737.5 KB (737531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d8008949683580853c72be0bf533a577ff3ab201893a4a9d37f0a14f6a92f6f`  
		Last Modified: Tue, 27 Oct 2026 23:10:10 GMT  
		Size: 5.8 MB (5806716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:061847e2e7e03c3facc7c6fc9173794c792598dadb9f3e23d856677fa719acfb`  
		Last Modified: Tue, 27 Oct 2026 23:10:10 GMT  
		Size: 2.6 KB (2609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7594687b0cc0ee2bf01231d5c81fcaf3f60808d220d3c64693a22343448ffd81`  
		Last Modified: Tue, 27 Oct 2026 23:10:11 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d311624a035c26df92292202cd61849ec2ac205d34b727faac2ff8302b2bb72`  
		Last Modified: Tue, 27 Oct 2026 23:10:13 GMT  
		Size: 49.9 MB (49855220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84c3133e6ba07b7451381dfd3759f4357aa6761570b376ad124b6a6158298668`  
		Last Modified: Tue, 27 Oct 2026 23:10:11 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dca13af25e782ce98f51541bdd30eed794d75c892b668ff10cc57768c12298cc`  
		Last Modified: Tue, 27 Oct 2026 23:10:14 GMT  
		Size: 130.8 MB (130770217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82c1018a5ca0bdffdfecdf67b7460c1938b5b1b4e6de8f2775608592728058b1`  
		Last Modified: Tue, 27 Oct 2026 23:10:12 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4.13-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:720bd91371e732633312953fbc3cc8004a11ebc5a101b42eaf6ea869b7a1a986
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15725397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ca81e517b2e9eaad9165bc7a3161a56128a3e230bed347cee2365f30dbc8b9c`

```dockerfile
```

-	Layers:
	-	`sha256:6655f9e2cb3f914cc9c1ddc824a51d6e9857a56aa91830c10e22fc95cea26587`  
		Last Modified: Tue, 27 Oct 2026 23:10:10 GMT  
		Size: 15.7 MB (15691815 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0f0ce162a89e4fdc1b04f4408ee3362cf1429f98a8b8b31f54bb9f28173714e0`  
		Last Modified: Tue, 27 Oct 2026 23:10:09 GMT  
		Size: 33.6 KB (33582 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9`

```console
$ docker pull mysql@sha256:86b390ef642f89a0157d6215dee33ddc928b8b0ecab173117f56f6c40cb24eab
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9` - linux; amd64

```console
$ docker pull mysql@sha256:b055723a00649bde974d2e3d3ba486725f279c4a4bb4d24d69f36b11fafa7b79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.3 MB (270272911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7e157ee39fae2805d803f0d73e1fa116a6b9d2c2d1eeafcce15dcb0409595a1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 27 Oct 2026 23:05:41 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 27 Oct 2026 23:05:41 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 23:07:17 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 27 Oct 2026 23:07:19 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 23:07:19 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 23:07:53 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 27 Oct 2026 23:07:54 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 27 Oct 2026 23:07:54 GMT
ENV MYSQL_MAJOR=9.7
# Tue, 27 Oct 2026 23:07:54 GMT
ENV MYSQL_VERSION=9.7.4-1.el9
# Tue, 27 Oct 2026 23:07:54 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 27 Oct 2026 23:08:30 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 27 Oct 2026 23:08:30 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 27 Oct 2026 23:08:30 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Tue, 27 Oct 2026 23:09:16 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 27 Oct 2026 23:09:16 GMT
VOLUME [/var/lib/mysql]
# Tue, 27 Oct 2026 23:09:16 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 23:09:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 23:09:16 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 27 Oct 2026 23:09:16 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:1610bd8e525d37f7b01147980f0f660538a95e978eee8351a908a00d143c2910`  
		Last Modified: Tue, 27 Oct 2026 23:05:52 GMT  
		Size: 47.2 MB (47188107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4143b5578588023307b710623d1362a77af4557a51c1c72983aca1fe5d5969b4`  
		Last Modified: Tue, 27 Oct 2026 23:09:41 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e752cc14300e79365e777ca9f56fdd5049e87964f423ca9b30cfc2f34d998130`  
		Last Modified: Tue, 27 Oct 2026 23:09:41 GMT  
		Size: 783.6 KB (783565 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f86c3ea7eb65233d3623889207c2fa59578ff8f3f96cb8021ac1cad5c71905e1`  
		Last Modified: Tue, 27 Oct 2026 23:09:47 GMT  
		Size: 6.2 MB (6186670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a4f18e225a8e100697eefb85ef71bc2675ac5fc5c7d233725b2557ec3a6e682`  
		Last Modified: Tue, 27 Oct 2026 23:09:41 GMT  
		Size: 2.6 KB (2609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccf592e9f5f03d475e62afe08b3171011df9b5688d2972563490cfe84463bb92`  
		Last Modified: Tue, 27 Oct 2026 23:09:47 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbf530c6006f922cc50611fcc08b3d661b97b60f70b7812a85a09d1d90cc9df8`  
		Last Modified: Tue, 27 Oct 2026 23:09:49 GMT  
		Size: 57.2 MB (57181336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0f6e161442abaa2d8353dc6a5643b48b36705e3ca04e3a0cd0666d6abac10ac`  
		Last Modified: Tue, 27 Oct 2026 23:09:47 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b0d638b2c56561298687d818755099b61e2fb2c2b285ee624476deb5c31725c`  
		Last Modified: Tue, 27 Oct 2026 23:09:52 GMT  
		Size: 158.9 MB (158923859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a529268c9003a190ebea0213fdc76732c21965775903a726f491e0f98a8747e8`  
		Last Modified: Tue, 27 Oct 2026 23:09:49 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9` - unknown; unknown

```console
$ docker pull mysql@sha256:60977bfa48c5ae98f08d7da9951934958df47dbfae3cd87c53bbd3d473f77671
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16815691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0d3c779315f822c7b868c21bcf1f5e4e1e53a8bce2c1a8df0c8bd9a2c431eb8`

```dockerfile
```

-	Layers:
	-	`sha256:519b68ff55d399ca735abe64138b535101bc250eb7c1af73e5bc065760c6e0fc`  
		Last Modified: Tue, 27 Oct 2026 23:09:48 GMT  
		Size: 16.8 MB (16781483 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:94790361c0b481c83428a0fe9c9cea270e64f65d4290c95ff7fed1cc2641ad7c`  
		Last Modified: Tue, 27 Oct 2026 23:09:47 GMT  
		Size: 34.2 KB (34208 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:90ef00bc43b35a8e156262dda9b778a6d2862fe44c547e63c606f0f75950bcc6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.7 MB (266650280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63dc4a41ae6ad18bfb110c38099a7de06e2836f4a24914334e18eb8bf53cb80d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 27 Oct 2026 23:05:32 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 27 Oct 2026 23:05:32 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 23:07:18 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 27 Oct 2026 23:07:19 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 23:07:19 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 23:07:59 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 27 Oct 2026 23:08:00 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 27 Oct 2026 23:08:00 GMT
ENV MYSQL_MAJOR=9.7
# Tue, 27 Oct 2026 23:08:00 GMT
ENV MYSQL_VERSION=9.7.4-1.el9
# Tue, 27 Oct 2026 23:08:00 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 27 Oct 2026 23:08:44 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 27 Oct 2026 23:08:44 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 27 Oct 2026 23:08:44 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Tue, 27 Oct 2026 23:09:36 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 27 Oct 2026 23:09:36 GMT
VOLUME [/var/lib/mysql]
# Tue, 27 Oct 2026 23:09:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 23:09:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 23:09:36 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 27 Oct 2026 23:09:36 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:11f62504eea6ae8bacf9c501835f2547c0d6c7f6ff85fd7a67912c41a123c561`  
		Last Modified: Tue, 27 Oct 2026 23:05:43 GMT  
		Size: 45.7 MB (45732830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4143b5578588023307b710623d1362a77af4557a51c1c72983aca1fe5d5969b4`  
		Last Modified: Tue, 27 Oct 2026 23:09:41 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f72bb6509d0749be9a66b9a85f6b2b256f14fc9ab3310db6598455b74237e1d7`  
		Last Modified: Tue, 27 Oct 2026 23:10:12 GMT  
		Size: 737.5 KB (737532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b52f52bdb8bb122c799204bccede6e80791492b685c4002bbeda01f23091f7f`  
		Last Modified: Tue, 27 Oct 2026 23:10:12 GMT  
		Size: 5.8 MB (5806801 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64e8d0c7a96903ff3d09cade02dd5b956d1a25aaa1f1588cf2f458718724e321`  
		Last Modified: Tue, 27 Oct 2026 23:10:12 GMT  
		Size: 2.6 KB (2610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12a7e8fa1fb5c56844009c0c11b13843607d6446dbecea9b41ab993befbe055c`  
		Last Modified: Tue, 27 Oct 2026 23:10:13 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3128d823d4dcb2f2b3314c5da9d17a718550eb1afbf809f9cfaca5253fb7c67`  
		Last Modified: Tue, 27 Oct 2026 23:10:15 GMT  
		Size: 57.2 MB (57170568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:520c0a00d2782aabc7ffcdbcb07db648dcd659856b996a4ed3012540159f3b47`  
		Last Modified: Tue, 27 Oct 2026 23:10:13 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93259a0074dd506958d450a6bc944af9c2fbd7850642316e8455831713daae69`  
		Last Modified: Tue, 27 Oct 2026 23:10:17 GMT  
		Size: 157.2 MB (157193173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:622bdd2ecae67951f979472c66f3193952889fc4ee144891cbe3956ebbcf64b0`  
		Last Modified: Tue, 27 Oct 2026 23:10:14 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9` - unknown; unknown

```console
$ docker pull mysql@sha256:4d72b7aebf1d9a14b302939d7a3c10f4e5c5b155258208c46c539d75d24bc032
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16814431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d092267b5652df3217e5ea2366f34fd4bbf90a79ee05df45750ca5988f8a14d7`

```dockerfile
```

-	Layers:
	-	`sha256:ebc21913389c0ea1958fe6c96646c33d303fa63823c8de8a44eaa7f67c075986`  
		Last Modified: Tue, 27 Oct 2026 23:10:12 GMT  
		Size: 16.8 MB (16779919 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0ed6a31c94185469dcab7b6eff8595d89f69e057c13f387947416857a142bba0`  
		Last Modified: Tue, 27 Oct 2026 23:10:12 GMT  
		Size: 34.5 KB (34512 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9-oracle`

```console
$ docker pull mysql@sha256:86b390ef642f89a0157d6215dee33ddc928b8b0ecab173117f56f6c40cb24eab
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:b055723a00649bde974d2e3d3ba486725f279c4a4bb4d24d69f36b11fafa7b79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.3 MB (270272911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7e157ee39fae2805d803f0d73e1fa116a6b9d2c2d1eeafcce15dcb0409595a1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 27 Oct 2026 23:05:41 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 27 Oct 2026 23:05:41 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 23:07:17 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 27 Oct 2026 23:07:19 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 23:07:19 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 23:07:53 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 27 Oct 2026 23:07:54 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 27 Oct 2026 23:07:54 GMT
ENV MYSQL_MAJOR=9.7
# Tue, 27 Oct 2026 23:07:54 GMT
ENV MYSQL_VERSION=9.7.4-1.el9
# Tue, 27 Oct 2026 23:07:54 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 27 Oct 2026 23:08:30 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 27 Oct 2026 23:08:30 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 27 Oct 2026 23:08:30 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Tue, 27 Oct 2026 23:09:16 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 27 Oct 2026 23:09:16 GMT
VOLUME [/var/lib/mysql]
# Tue, 27 Oct 2026 23:09:16 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 23:09:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 23:09:16 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 27 Oct 2026 23:09:16 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:1610bd8e525d37f7b01147980f0f660538a95e978eee8351a908a00d143c2910`  
		Last Modified: Tue, 27 Oct 2026 23:05:52 GMT  
		Size: 47.2 MB (47188107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4143b5578588023307b710623d1362a77af4557a51c1c72983aca1fe5d5969b4`  
		Last Modified: Tue, 27 Oct 2026 23:09:41 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e752cc14300e79365e777ca9f56fdd5049e87964f423ca9b30cfc2f34d998130`  
		Last Modified: Tue, 27 Oct 2026 23:09:41 GMT  
		Size: 783.6 KB (783565 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f86c3ea7eb65233d3623889207c2fa59578ff8f3f96cb8021ac1cad5c71905e1`  
		Last Modified: Tue, 27 Oct 2026 23:09:47 GMT  
		Size: 6.2 MB (6186670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a4f18e225a8e100697eefb85ef71bc2675ac5fc5c7d233725b2557ec3a6e682`  
		Last Modified: Tue, 27 Oct 2026 23:09:41 GMT  
		Size: 2.6 KB (2609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccf592e9f5f03d475e62afe08b3171011df9b5688d2972563490cfe84463bb92`  
		Last Modified: Tue, 27 Oct 2026 23:09:47 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbf530c6006f922cc50611fcc08b3d661b97b60f70b7812a85a09d1d90cc9df8`  
		Last Modified: Tue, 27 Oct 2026 23:09:49 GMT  
		Size: 57.2 MB (57181336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0f6e161442abaa2d8353dc6a5643b48b36705e3ca04e3a0cd0666d6abac10ac`  
		Last Modified: Tue, 27 Oct 2026 23:09:47 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b0d638b2c56561298687d818755099b61e2fb2c2b285ee624476deb5c31725c`  
		Last Modified: Tue, 27 Oct 2026 23:09:52 GMT  
		Size: 158.9 MB (158923859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a529268c9003a190ebea0213fdc76732c21965775903a726f491e0f98a8747e8`  
		Last Modified: Tue, 27 Oct 2026 23:09:49 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:60977bfa48c5ae98f08d7da9951934958df47dbfae3cd87c53bbd3d473f77671
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16815691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0d3c779315f822c7b868c21bcf1f5e4e1e53a8bce2c1a8df0c8bd9a2c431eb8`

```dockerfile
```

-	Layers:
	-	`sha256:519b68ff55d399ca735abe64138b535101bc250eb7c1af73e5bc065760c6e0fc`  
		Last Modified: Tue, 27 Oct 2026 23:09:48 GMT  
		Size: 16.8 MB (16781483 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:94790361c0b481c83428a0fe9c9cea270e64f65d4290c95ff7fed1cc2641ad7c`  
		Last Modified: Tue, 27 Oct 2026 23:09:47 GMT  
		Size: 34.2 KB (34208 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:90ef00bc43b35a8e156262dda9b778a6d2862fe44c547e63c606f0f75950bcc6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.7 MB (266650280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63dc4a41ae6ad18bfb110c38099a7de06e2836f4a24914334e18eb8bf53cb80d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 27 Oct 2026 23:05:32 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 27 Oct 2026 23:05:32 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 23:07:18 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 27 Oct 2026 23:07:19 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 23:07:19 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 23:07:59 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 27 Oct 2026 23:08:00 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 27 Oct 2026 23:08:00 GMT
ENV MYSQL_MAJOR=9.7
# Tue, 27 Oct 2026 23:08:00 GMT
ENV MYSQL_VERSION=9.7.4-1.el9
# Tue, 27 Oct 2026 23:08:00 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 27 Oct 2026 23:08:44 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 27 Oct 2026 23:08:44 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 27 Oct 2026 23:08:44 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Tue, 27 Oct 2026 23:09:36 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 27 Oct 2026 23:09:36 GMT
VOLUME [/var/lib/mysql]
# Tue, 27 Oct 2026 23:09:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 23:09:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 23:09:36 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 27 Oct 2026 23:09:36 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:11f62504eea6ae8bacf9c501835f2547c0d6c7f6ff85fd7a67912c41a123c561`  
		Last Modified: Tue, 27 Oct 2026 23:05:43 GMT  
		Size: 45.7 MB (45732830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4143b5578588023307b710623d1362a77af4557a51c1c72983aca1fe5d5969b4`  
		Last Modified: Tue, 27 Oct 2026 23:09:41 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f72bb6509d0749be9a66b9a85f6b2b256f14fc9ab3310db6598455b74237e1d7`  
		Last Modified: Tue, 27 Oct 2026 23:10:12 GMT  
		Size: 737.5 KB (737532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b52f52bdb8bb122c799204bccede6e80791492b685c4002bbeda01f23091f7f`  
		Last Modified: Tue, 27 Oct 2026 23:10:12 GMT  
		Size: 5.8 MB (5806801 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64e8d0c7a96903ff3d09cade02dd5b956d1a25aaa1f1588cf2f458718724e321`  
		Last Modified: Tue, 27 Oct 2026 23:10:12 GMT  
		Size: 2.6 KB (2610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12a7e8fa1fb5c56844009c0c11b13843607d6446dbecea9b41ab993befbe055c`  
		Last Modified: Tue, 27 Oct 2026 23:10:13 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3128d823d4dcb2f2b3314c5da9d17a718550eb1afbf809f9cfaca5253fb7c67`  
		Last Modified: Tue, 27 Oct 2026 23:10:15 GMT  
		Size: 57.2 MB (57170568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:520c0a00d2782aabc7ffcdbcb07db648dcd659856b996a4ed3012540159f3b47`  
		Last Modified: Tue, 27 Oct 2026 23:10:13 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93259a0074dd506958d450a6bc944af9c2fbd7850642316e8455831713daae69`  
		Last Modified: Tue, 27 Oct 2026 23:10:17 GMT  
		Size: 157.2 MB (157193173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:622bdd2ecae67951f979472c66f3193952889fc4ee144891cbe3956ebbcf64b0`  
		Last Modified: Tue, 27 Oct 2026 23:10:14 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:4d72b7aebf1d9a14b302939d7a3c10f4e5c5b155258208c46c539d75d24bc032
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16814431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d092267b5652df3217e5ea2366f34fd4bbf90a79ee05df45750ca5988f8a14d7`

```dockerfile
```

-	Layers:
	-	`sha256:ebc21913389c0ea1958fe6c96646c33d303fa63823c8de8a44eaa7f67c075986`  
		Last Modified: Tue, 27 Oct 2026 23:10:12 GMT  
		Size: 16.8 MB (16779919 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0ed6a31c94185469dcab7b6eff8595d89f69e057c13f387947416857a142bba0`  
		Last Modified: Tue, 27 Oct 2026 23:10:12 GMT  
		Size: 34.5 KB (34512 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9-oraclelinux9`

```console
$ docker pull mysql@sha256:86b390ef642f89a0157d6215dee33ddc928b8b0ecab173117f56f6c40cb24eab
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:b055723a00649bde974d2e3d3ba486725f279c4a4bb4d24d69f36b11fafa7b79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.3 MB (270272911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7e157ee39fae2805d803f0d73e1fa116a6b9d2c2d1eeafcce15dcb0409595a1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 27 Oct 2026 23:05:41 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 27 Oct 2026 23:05:41 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 23:07:17 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 27 Oct 2026 23:07:19 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 23:07:19 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 23:07:53 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 27 Oct 2026 23:07:54 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 27 Oct 2026 23:07:54 GMT
ENV MYSQL_MAJOR=9.7
# Tue, 27 Oct 2026 23:07:54 GMT
ENV MYSQL_VERSION=9.7.4-1.el9
# Tue, 27 Oct 2026 23:07:54 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 27 Oct 2026 23:08:30 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 27 Oct 2026 23:08:30 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 27 Oct 2026 23:08:30 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Tue, 27 Oct 2026 23:09:16 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 27 Oct 2026 23:09:16 GMT
VOLUME [/var/lib/mysql]
# Tue, 27 Oct 2026 23:09:16 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 23:09:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 23:09:16 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 27 Oct 2026 23:09:16 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:1610bd8e525d37f7b01147980f0f660538a95e978eee8351a908a00d143c2910`  
		Last Modified: Tue, 27 Oct 2026 23:05:52 GMT  
		Size: 47.2 MB (47188107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4143b5578588023307b710623d1362a77af4557a51c1c72983aca1fe5d5969b4`  
		Last Modified: Tue, 27 Oct 2026 23:09:41 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e752cc14300e79365e777ca9f56fdd5049e87964f423ca9b30cfc2f34d998130`  
		Last Modified: Tue, 27 Oct 2026 23:09:41 GMT  
		Size: 783.6 KB (783565 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f86c3ea7eb65233d3623889207c2fa59578ff8f3f96cb8021ac1cad5c71905e1`  
		Last Modified: Tue, 27 Oct 2026 23:09:47 GMT  
		Size: 6.2 MB (6186670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a4f18e225a8e100697eefb85ef71bc2675ac5fc5c7d233725b2557ec3a6e682`  
		Last Modified: Tue, 27 Oct 2026 23:09:41 GMT  
		Size: 2.6 KB (2609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccf592e9f5f03d475e62afe08b3171011df9b5688d2972563490cfe84463bb92`  
		Last Modified: Tue, 27 Oct 2026 23:09:47 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbf530c6006f922cc50611fcc08b3d661b97b60f70b7812a85a09d1d90cc9df8`  
		Last Modified: Tue, 27 Oct 2026 23:09:49 GMT  
		Size: 57.2 MB (57181336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0f6e161442abaa2d8353dc6a5643b48b36705e3ca04e3a0cd0666d6abac10ac`  
		Last Modified: Tue, 27 Oct 2026 23:09:47 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b0d638b2c56561298687d818755099b61e2fb2c2b285ee624476deb5c31725c`  
		Last Modified: Tue, 27 Oct 2026 23:09:52 GMT  
		Size: 158.9 MB (158923859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a529268c9003a190ebea0213fdc76732c21965775903a726f491e0f98a8747e8`  
		Last Modified: Tue, 27 Oct 2026 23:09:49 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:60977bfa48c5ae98f08d7da9951934958df47dbfae3cd87c53bbd3d473f77671
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16815691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0d3c779315f822c7b868c21bcf1f5e4e1e53a8bce2c1a8df0c8bd9a2c431eb8`

```dockerfile
```

-	Layers:
	-	`sha256:519b68ff55d399ca735abe64138b535101bc250eb7c1af73e5bc065760c6e0fc`  
		Last Modified: Tue, 27 Oct 2026 23:09:48 GMT  
		Size: 16.8 MB (16781483 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:94790361c0b481c83428a0fe9c9cea270e64f65d4290c95ff7fed1cc2641ad7c`  
		Last Modified: Tue, 27 Oct 2026 23:09:47 GMT  
		Size: 34.2 KB (34208 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:90ef00bc43b35a8e156262dda9b778a6d2862fe44c547e63c606f0f75950bcc6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.7 MB (266650280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63dc4a41ae6ad18bfb110c38099a7de06e2836f4a24914334e18eb8bf53cb80d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 27 Oct 2026 23:05:32 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 27 Oct 2026 23:05:32 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 23:07:18 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 27 Oct 2026 23:07:19 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 23:07:19 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 23:07:59 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 27 Oct 2026 23:08:00 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 27 Oct 2026 23:08:00 GMT
ENV MYSQL_MAJOR=9.7
# Tue, 27 Oct 2026 23:08:00 GMT
ENV MYSQL_VERSION=9.7.4-1.el9
# Tue, 27 Oct 2026 23:08:00 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 27 Oct 2026 23:08:44 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 27 Oct 2026 23:08:44 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 27 Oct 2026 23:08:44 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Tue, 27 Oct 2026 23:09:36 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 27 Oct 2026 23:09:36 GMT
VOLUME [/var/lib/mysql]
# Tue, 27 Oct 2026 23:09:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 23:09:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 23:09:36 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 27 Oct 2026 23:09:36 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:11f62504eea6ae8bacf9c501835f2547c0d6c7f6ff85fd7a67912c41a123c561`  
		Last Modified: Tue, 27 Oct 2026 23:05:43 GMT  
		Size: 45.7 MB (45732830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4143b5578588023307b710623d1362a77af4557a51c1c72983aca1fe5d5969b4`  
		Last Modified: Tue, 27 Oct 2026 23:09:41 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f72bb6509d0749be9a66b9a85f6b2b256f14fc9ab3310db6598455b74237e1d7`  
		Last Modified: Tue, 27 Oct 2026 23:10:12 GMT  
		Size: 737.5 KB (737532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b52f52bdb8bb122c799204bccede6e80791492b685c4002bbeda01f23091f7f`  
		Last Modified: Tue, 27 Oct 2026 23:10:12 GMT  
		Size: 5.8 MB (5806801 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64e8d0c7a96903ff3d09cade02dd5b956d1a25aaa1f1588cf2f458718724e321`  
		Last Modified: Tue, 27 Oct 2026 23:10:12 GMT  
		Size: 2.6 KB (2610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12a7e8fa1fb5c56844009c0c11b13843607d6446dbecea9b41ab993befbe055c`  
		Last Modified: Tue, 27 Oct 2026 23:10:13 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3128d823d4dcb2f2b3314c5da9d17a718550eb1afbf809f9cfaca5253fb7c67`  
		Last Modified: Tue, 27 Oct 2026 23:10:15 GMT  
		Size: 57.2 MB (57170568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:520c0a00d2782aabc7ffcdbcb07db648dcd659856b996a4ed3012540159f3b47`  
		Last Modified: Tue, 27 Oct 2026 23:10:13 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93259a0074dd506958d450a6bc944af9c2fbd7850642316e8455831713daae69`  
		Last Modified: Tue, 27 Oct 2026 23:10:17 GMT  
		Size: 157.2 MB (157193173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:622bdd2ecae67951f979472c66f3193952889fc4ee144891cbe3956ebbcf64b0`  
		Last Modified: Tue, 27 Oct 2026 23:10:14 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:4d72b7aebf1d9a14b302939d7a3c10f4e5c5b155258208c46c539d75d24bc032
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16814431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d092267b5652df3217e5ea2366f34fd4bbf90a79ee05df45750ca5988f8a14d7`

```dockerfile
```

-	Layers:
	-	`sha256:ebc21913389c0ea1958fe6c96646c33d303fa63823c8de8a44eaa7f67c075986`  
		Last Modified: Tue, 27 Oct 2026 23:10:12 GMT  
		Size: 16.8 MB (16779919 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0ed6a31c94185469dcab7b6eff8595d89f69e057c13f387947416857a142bba0`  
		Last Modified: Tue, 27 Oct 2026 23:10:12 GMT  
		Size: 34.5 KB (34512 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9.7`

```console
$ docker pull mysql@sha256:86b390ef642f89a0157d6215dee33ddc928b8b0ecab173117f56f6c40cb24eab
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9.7` - linux; amd64

```console
$ docker pull mysql@sha256:b055723a00649bde974d2e3d3ba486725f279c4a4bb4d24d69f36b11fafa7b79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.3 MB (270272911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7e157ee39fae2805d803f0d73e1fa116a6b9d2c2d1eeafcce15dcb0409595a1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 27 Oct 2026 23:05:41 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 27 Oct 2026 23:05:41 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 23:07:17 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 27 Oct 2026 23:07:19 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 23:07:19 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 23:07:53 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 27 Oct 2026 23:07:54 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 27 Oct 2026 23:07:54 GMT
ENV MYSQL_MAJOR=9.7
# Tue, 27 Oct 2026 23:07:54 GMT
ENV MYSQL_VERSION=9.7.4-1.el9
# Tue, 27 Oct 2026 23:07:54 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 27 Oct 2026 23:08:30 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 27 Oct 2026 23:08:30 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 27 Oct 2026 23:08:30 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Tue, 27 Oct 2026 23:09:16 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 27 Oct 2026 23:09:16 GMT
VOLUME [/var/lib/mysql]
# Tue, 27 Oct 2026 23:09:16 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 23:09:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 23:09:16 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 27 Oct 2026 23:09:16 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:1610bd8e525d37f7b01147980f0f660538a95e978eee8351a908a00d143c2910`  
		Last Modified: Tue, 27 Oct 2026 23:05:52 GMT  
		Size: 47.2 MB (47188107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4143b5578588023307b710623d1362a77af4557a51c1c72983aca1fe5d5969b4`  
		Last Modified: Tue, 27 Oct 2026 23:09:41 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e752cc14300e79365e777ca9f56fdd5049e87964f423ca9b30cfc2f34d998130`  
		Last Modified: Tue, 27 Oct 2026 23:09:41 GMT  
		Size: 783.6 KB (783565 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f86c3ea7eb65233d3623889207c2fa59578ff8f3f96cb8021ac1cad5c71905e1`  
		Last Modified: Tue, 27 Oct 2026 23:09:47 GMT  
		Size: 6.2 MB (6186670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a4f18e225a8e100697eefb85ef71bc2675ac5fc5c7d233725b2557ec3a6e682`  
		Last Modified: Tue, 27 Oct 2026 23:09:41 GMT  
		Size: 2.6 KB (2609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccf592e9f5f03d475e62afe08b3171011df9b5688d2972563490cfe84463bb92`  
		Last Modified: Tue, 27 Oct 2026 23:09:47 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbf530c6006f922cc50611fcc08b3d661b97b60f70b7812a85a09d1d90cc9df8`  
		Last Modified: Tue, 27 Oct 2026 23:09:49 GMT  
		Size: 57.2 MB (57181336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0f6e161442abaa2d8353dc6a5643b48b36705e3ca04e3a0cd0666d6abac10ac`  
		Last Modified: Tue, 27 Oct 2026 23:09:47 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b0d638b2c56561298687d818755099b61e2fb2c2b285ee624476deb5c31725c`  
		Last Modified: Tue, 27 Oct 2026 23:09:52 GMT  
		Size: 158.9 MB (158923859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a529268c9003a190ebea0213fdc76732c21965775903a726f491e0f98a8747e8`  
		Last Modified: Tue, 27 Oct 2026 23:09:49 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7` - unknown; unknown

```console
$ docker pull mysql@sha256:60977bfa48c5ae98f08d7da9951934958df47dbfae3cd87c53bbd3d473f77671
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16815691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0d3c779315f822c7b868c21bcf1f5e4e1e53a8bce2c1a8df0c8bd9a2c431eb8`

```dockerfile
```

-	Layers:
	-	`sha256:519b68ff55d399ca735abe64138b535101bc250eb7c1af73e5bc065760c6e0fc`  
		Last Modified: Tue, 27 Oct 2026 23:09:48 GMT  
		Size: 16.8 MB (16781483 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:94790361c0b481c83428a0fe9c9cea270e64f65d4290c95ff7fed1cc2641ad7c`  
		Last Modified: Tue, 27 Oct 2026 23:09:47 GMT  
		Size: 34.2 KB (34208 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9.7` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:90ef00bc43b35a8e156262dda9b778a6d2862fe44c547e63c606f0f75950bcc6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.7 MB (266650280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63dc4a41ae6ad18bfb110c38099a7de06e2836f4a24914334e18eb8bf53cb80d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 27 Oct 2026 23:05:32 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 27 Oct 2026 23:05:32 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 23:07:18 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 27 Oct 2026 23:07:19 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 23:07:19 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 23:07:59 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 27 Oct 2026 23:08:00 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 27 Oct 2026 23:08:00 GMT
ENV MYSQL_MAJOR=9.7
# Tue, 27 Oct 2026 23:08:00 GMT
ENV MYSQL_VERSION=9.7.4-1.el9
# Tue, 27 Oct 2026 23:08:00 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 27 Oct 2026 23:08:44 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 27 Oct 2026 23:08:44 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 27 Oct 2026 23:08:44 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Tue, 27 Oct 2026 23:09:36 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 27 Oct 2026 23:09:36 GMT
VOLUME [/var/lib/mysql]
# Tue, 27 Oct 2026 23:09:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 23:09:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 23:09:36 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 27 Oct 2026 23:09:36 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:11f62504eea6ae8bacf9c501835f2547c0d6c7f6ff85fd7a67912c41a123c561`  
		Last Modified: Tue, 27 Oct 2026 23:05:43 GMT  
		Size: 45.7 MB (45732830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4143b5578588023307b710623d1362a77af4557a51c1c72983aca1fe5d5969b4`  
		Last Modified: Tue, 27 Oct 2026 23:09:41 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f72bb6509d0749be9a66b9a85f6b2b256f14fc9ab3310db6598455b74237e1d7`  
		Last Modified: Tue, 27 Oct 2026 23:10:12 GMT  
		Size: 737.5 KB (737532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b52f52bdb8bb122c799204bccede6e80791492b685c4002bbeda01f23091f7f`  
		Last Modified: Tue, 27 Oct 2026 23:10:12 GMT  
		Size: 5.8 MB (5806801 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64e8d0c7a96903ff3d09cade02dd5b956d1a25aaa1f1588cf2f458718724e321`  
		Last Modified: Tue, 27 Oct 2026 23:10:12 GMT  
		Size: 2.6 KB (2610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12a7e8fa1fb5c56844009c0c11b13843607d6446dbecea9b41ab993befbe055c`  
		Last Modified: Tue, 27 Oct 2026 23:10:13 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3128d823d4dcb2f2b3314c5da9d17a718550eb1afbf809f9cfaca5253fb7c67`  
		Last Modified: Tue, 27 Oct 2026 23:10:15 GMT  
		Size: 57.2 MB (57170568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:520c0a00d2782aabc7ffcdbcb07db648dcd659856b996a4ed3012540159f3b47`  
		Last Modified: Tue, 27 Oct 2026 23:10:13 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93259a0074dd506958d450a6bc944af9c2fbd7850642316e8455831713daae69`  
		Last Modified: Tue, 27 Oct 2026 23:10:17 GMT  
		Size: 157.2 MB (157193173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:622bdd2ecae67951f979472c66f3193952889fc4ee144891cbe3956ebbcf64b0`  
		Last Modified: Tue, 27 Oct 2026 23:10:14 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7` - unknown; unknown

```console
$ docker pull mysql@sha256:4d72b7aebf1d9a14b302939d7a3c10f4e5c5b155258208c46c539d75d24bc032
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16814431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d092267b5652df3217e5ea2366f34fd4bbf90a79ee05df45750ca5988f8a14d7`

```dockerfile
```

-	Layers:
	-	`sha256:ebc21913389c0ea1958fe6c96646c33d303fa63823c8de8a44eaa7f67c075986`  
		Last Modified: Tue, 27 Oct 2026 23:10:12 GMT  
		Size: 16.8 MB (16779919 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0ed6a31c94185469dcab7b6eff8595d89f69e057c13f387947416857a142bba0`  
		Last Modified: Tue, 27 Oct 2026 23:10:12 GMT  
		Size: 34.5 KB (34512 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9.7-oracle`

```console
$ docker pull mysql@sha256:86b390ef642f89a0157d6215dee33ddc928b8b0ecab173117f56f6c40cb24eab
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9.7-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:b055723a00649bde974d2e3d3ba486725f279c4a4bb4d24d69f36b11fafa7b79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.3 MB (270272911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7e157ee39fae2805d803f0d73e1fa116a6b9d2c2d1eeafcce15dcb0409595a1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 27 Oct 2026 23:05:41 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 27 Oct 2026 23:05:41 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 23:07:17 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 27 Oct 2026 23:07:19 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 23:07:19 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 23:07:53 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 27 Oct 2026 23:07:54 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 27 Oct 2026 23:07:54 GMT
ENV MYSQL_MAJOR=9.7
# Tue, 27 Oct 2026 23:07:54 GMT
ENV MYSQL_VERSION=9.7.4-1.el9
# Tue, 27 Oct 2026 23:07:54 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 27 Oct 2026 23:08:30 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 27 Oct 2026 23:08:30 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 27 Oct 2026 23:08:30 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Tue, 27 Oct 2026 23:09:16 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 27 Oct 2026 23:09:16 GMT
VOLUME [/var/lib/mysql]
# Tue, 27 Oct 2026 23:09:16 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 23:09:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 23:09:16 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 27 Oct 2026 23:09:16 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:1610bd8e525d37f7b01147980f0f660538a95e978eee8351a908a00d143c2910`  
		Last Modified: Tue, 27 Oct 2026 23:05:52 GMT  
		Size: 47.2 MB (47188107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4143b5578588023307b710623d1362a77af4557a51c1c72983aca1fe5d5969b4`  
		Last Modified: Tue, 27 Oct 2026 23:09:41 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e752cc14300e79365e777ca9f56fdd5049e87964f423ca9b30cfc2f34d998130`  
		Last Modified: Tue, 27 Oct 2026 23:09:41 GMT  
		Size: 783.6 KB (783565 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f86c3ea7eb65233d3623889207c2fa59578ff8f3f96cb8021ac1cad5c71905e1`  
		Last Modified: Tue, 27 Oct 2026 23:09:47 GMT  
		Size: 6.2 MB (6186670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a4f18e225a8e100697eefb85ef71bc2675ac5fc5c7d233725b2557ec3a6e682`  
		Last Modified: Tue, 27 Oct 2026 23:09:41 GMT  
		Size: 2.6 KB (2609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccf592e9f5f03d475e62afe08b3171011df9b5688d2972563490cfe84463bb92`  
		Last Modified: Tue, 27 Oct 2026 23:09:47 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbf530c6006f922cc50611fcc08b3d661b97b60f70b7812a85a09d1d90cc9df8`  
		Last Modified: Tue, 27 Oct 2026 23:09:49 GMT  
		Size: 57.2 MB (57181336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0f6e161442abaa2d8353dc6a5643b48b36705e3ca04e3a0cd0666d6abac10ac`  
		Last Modified: Tue, 27 Oct 2026 23:09:47 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b0d638b2c56561298687d818755099b61e2fb2c2b285ee624476deb5c31725c`  
		Last Modified: Tue, 27 Oct 2026 23:09:52 GMT  
		Size: 158.9 MB (158923859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a529268c9003a190ebea0213fdc76732c21965775903a726f491e0f98a8747e8`  
		Last Modified: Tue, 27 Oct 2026 23:09:49 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:60977bfa48c5ae98f08d7da9951934958df47dbfae3cd87c53bbd3d473f77671
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16815691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0d3c779315f822c7b868c21bcf1f5e4e1e53a8bce2c1a8df0c8bd9a2c431eb8`

```dockerfile
```

-	Layers:
	-	`sha256:519b68ff55d399ca735abe64138b535101bc250eb7c1af73e5bc065760c6e0fc`  
		Last Modified: Tue, 27 Oct 2026 23:09:48 GMT  
		Size: 16.8 MB (16781483 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:94790361c0b481c83428a0fe9c9cea270e64f65d4290c95ff7fed1cc2641ad7c`  
		Last Modified: Tue, 27 Oct 2026 23:09:47 GMT  
		Size: 34.2 KB (34208 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9.7-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:90ef00bc43b35a8e156262dda9b778a6d2862fe44c547e63c606f0f75950bcc6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.7 MB (266650280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63dc4a41ae6ad18bfb110c38099a7de06e2836f4a24914334e18eb8bf53cb80d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 27 Oct 2026 23:05:32 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 27 Oct 2026 23:05:32 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 23:07:18 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 27 Oct 2026 23:07:19 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 23:07:19 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 23:07:59 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 27 Oct 2026 23:08:00 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 27 Oct 2026 23:08:00 GMT
ENV MYSQL_MAJOR=9.7
# Tue, 27 Oct 2026 23:08:00 GMT
ENV MYSQL_VERSION=9.7.4-1.el9
# Tue, 27 Oct 2026 23:08:00 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 27 Oct 2026 23:08:44 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 27 Oct 2026 23:08:44 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 27 Oct 2026 23:08:44 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Tue, 27 Oct 2026 23:09:36 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 27 Oct 2026 23:09:36 GMT
VOLUME [/var/lib/mysql]
# Tue, 27 Oct 2026 23:09:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 23:09:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 23:09:36 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 27 Oct 2026 23:09:36 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:11f62504eea6ae8bacf9c501835f2547c0d6c7f6ff85fd7a67912c41a123c561`  
		Last Modified: Tue, 27 Oct 2026 23:05:43 GMT  
		Size: 45.7 MB (45732830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4143b5578588023307b710623d1362a77af4557a51c1c72983aca1fe5d5969b4`  
		Last Modified: Tue, 27 Oct 2026 23:09:41 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f72bb6509d0749be9a66b9a85f6b2b256f14fc9ab3310db6598455b74237e1d7`  
		Last Modified: Tue, 27 Oct 2026 23:10:12 GMT  
		Size: 737.5 KB (737532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b52f52bdb8bb122c799204bccede6e80791492b685c4002bbeda01f23091f7f`  
		Last Modified: Tue, 27 Oct 2026 23:10:12 GMT  
		Size: 5.8 MB (5806801 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64e8d0c7a96903ff3d09cade02dd5b956d1a25aaa1f1588cf2f458718724e321`  
		Last Modified: Tue, 27 Oct 2026 23:10:12 GMT  
		Size: 2.6 KB (2610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12a7e8fa1fb5c56844009c0c11b13843607d6446dbecea9b41ab993befbe055c`  
		Last Modified: Tue, 27 Oct 2026 23:10:13 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3128d823d4dcb2f2b3314c5da9d17a718550eb1afbf809f9cfaca5253fb7c67`  
		Last Modified: Tue, 27 Oct 2026 23:10:15 GMT  
		Size: 57.2 MB (57170568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:520c0a00d2782aabc7ffcdbcb07db648dcd659856b996a4ed3012540159f3b47`  
		Last Modified: Tue, 27 Oct 2026 23:10:13 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93259a0074dd506958d450a6bc944af9c2fbd7850642316e8455831713daae69`  
		Last Modified: Tue, 27 Oct 2026 23:10:17 GMT  
		Size: 157.2 MB (157193173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:622bdd2ecae67951f979472c66f3193952889fc4ee144891cbe3956ebbcf64b0`  
		Last Modified: Tue, 27 Oct 2026 23:10:14 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:4d72b7aebf1d9a14b302939d7a3c10f4e5c5b155258208c46c539d75d24bc032
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16814431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d092267b5652df3217e5ea2366f34fd4bbf90a79ee05df45750ca5988f8a14d7`

```dockerfile
```

-	Layers:
	-	`sha256:ebc21913389c0ea1958fe6c96646c33d303fa63823c8de8a44eaa7f67c075986`  
		Last Modified: Tue, 27 Oct 2026 23:10:12 GMT  
		Size: 16.8 MB (16779919 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0ed6a31c94185469dcab7b6eff8595d89f69e057c13f387947416857a142bba0`  
		Last Modified: Tue, 27 Oct 2026 23:10:12 GMT  
		Size: 34.5 KB (34512 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9.7-oraclelinux9`

```console
$ docker pull mysql@sha256:86b390ef642f89a0157d6215dee33ddc928b8b0ecab173117f56f6c40cb24eab
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9.7-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:b055723a00649bde974d2e3d3ba486725f279c4a4bb4d24d69f36b11fafa7b79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.3 MB (270272911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7e157ee39fae2805d803f0d73e1fa116a6b9d2c2d1eeafcce15dcb0409595a1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 27 Oct 2026 23:05:41 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 27 Oct 2026 23:05:41 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 23:07:17 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 27 Oct 2026 23:07:19 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 23:07:19 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 23:07:53 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 27 Oct 2026 23:07:54 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 27 Oct 2026 23:07:54 GMT
ENV MYSQL_MAJOR=9.7
# Tue, 27 Oct 2026 23:07:54 GMT
ENV MYSQL_VERSION=9.7.4-1.el9
# Tue, 27 Oct 2026 23:07:54 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 27 Oct 2026 23:08:30 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 27 Oct 2026 23:08:30 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 27 Oct 2026 23:08:30 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Tue, 27 Oct 2026 23:09:16 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 27 Oct 2026 23:09:16 GMT
VOLUME [/var/lib/mysql]
# Tue, 27 Oct 2026 23:09:16 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 23:09:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 23:09:16 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 27 Oct 2026 23:09:16 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:1610bd8e525d37f7b01147980f0f660538a95e978eee8351a908a00d143c2910`  
		Last Modified: Tue, 27 Oct 2026 23:05:52 GMT  
		Size: 47.2 MB (47188107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4143b5578588023307b710623d1362a77af4557a51c1c72983aca1fe5d5969b4`  
		Last Modified: Tue, 27 Oct 2026 23:09:41 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e752cc14300e79365e777ca9f56fdd5049e87964f423ca9b30cfc2f34d998130`  
		Last Modified: Tue, 27 Oct 2026 23:09:41 GMT  
		Size: 783.6 KB (783565 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f86c3ea7eb65233d3623889207c2fa59578ff8f3f96cb8021ac1cad5c71905e1`  
		Last Modified: Tue, 27 Oct 2026 23:09:47 GMT  
		Size: 6.2 MB (6186670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a4f18e225a8e100697eefb85ef71bc2675ac5fc5c7d233725b2557ec3a6e682`  
		Last Modified: Tue, 27 Oct 2026 23:09:41 GMT  
		Size: 2.6 KB (2609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccf592e9f5f03d475e62afe08b3171011df9b5688d2972563490cfe84463bb92`  
		Last Modified: Tue, 27 Oct 2026 23:09:47 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbf530c6006f922cc50611fcc08b3d661b97b60f70b7812a85a09d1d90cc9df8`  
		Last Modified: Tue, 27 Oct 2026 23:09:49 GMT  
		Size: 57.2 MB (57181336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0f6e161442abaa2d8353dc6a5643b48b36705e3ca04e3a0cd0666d6abac10ac`  
		Last Modified: Tue, 27 Oct 2026 23:09:47 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b0d638b2c56561298687d818755099b61e2fb2c2b285ee624476deb5c31725c`  
		Last Modified: Tue, 27 Oct 2026 23:09:52 GMT  
		Size: 158.9 MB (158923859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a529268c9003a190ebea0213fdc76732c21965775903a726f491e0f98a8747e8`  
		Last Modified: Tue, 27 Oct 2026 23:09:49 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:60977bfa48c5ae98f08d7da9951934958df47dbfae3cd87c53bbd3d473f77671
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16815691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0d3c779315f822c7b868c21bcf1f5e4e1e53a8bce2c1a8df0c8bd9a2c431eb8`

```dockerfile
```

-	Layers:
	-	`sha256:519b68ff55d399ca735abe64138b535101bc250eb7c1af73e5bc065760c6e0fc`  
		Last Modified: Tue, 27 Oct 2026 23:09:48 GMT  
		Size: 16.8 MB (16781483 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:94790361c0b481c83428a0fe9c9cea270e64f65d4290c95ff7fed1cc2641ad7c`  
		Last Modified: Tue, 27 Oct 2026 23:09:47 GMT  
		Size: 34.2 KB (34208 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9.7-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:90ef00bc43b35a8e156262dda9b778a6d2862fe44c547e63c606f0f75950bcc6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.7 MB (266650280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63dc4a41ae6ad18bfb110c38099a7de06e2836f4a24914334e18eb8bf53cb80d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 27 Oct 2026 23:05:32 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 27 Oct 2026 23:05:32 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 23:07:18 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 27 Oct 2026 23:07:19 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 23:07:19 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 23:07:59 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 27 Oct 2026 23:08:00 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 27 Oct 2026 23:08:00 GMT
ENV MYSQL_MAJOR=9.7
# Tue, 27 Oct 2026 23:08:00 GMT
ENV MYSQL_VERSION=9.7.4-1.el9
# Tue, 27 Oct 2026 23:08:00 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 27 Oct 2026 23:08:44 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 27 Oct 2026 23:08:44 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 27 Oct 2026 23:08:44 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Tue, 27 Oct 2026 23:09:36 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 27 Oct 2026 23:09:36 GMT
VOLUME [/var/lib/mysql]
# Tue, 27 Oct 2026 23:09:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 23:09:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 23:09:36 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 27 Oct 2026 23:09:36 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:11f62504eea6ae8bacf9c501835f2547c0d6c7f6ff85fd7a67912c41a123c561`  
		Last Modified: Tue, 27 Oct 2026 23:05:43 GMT  
		Size: 45.7 MB (45732830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4143b5578588023307b710623d1362a77af4557a51c1c72983aca1fe5d5969b4`  
		Last Modified: Tue, 27 Oct 2026 23:09:41 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f72bb6509d0749be9a66b9a85f6b2b256f14fc9ab3310db6598455b74237e1d7`  
		Last Modified: Tue, 27 Oct 2026 23:10:12 GMT  
		Size: 737.5 KB (737532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b52f52bdb8bb122c799204bccede6e80791492b685c4002bbeda01f23091f7f`  
		Last Modified: Tue, 27 Oct 2026 23:10:12 GMT  
		Size: 5.8 MB (5806801 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64e8d0c7a96903ff3d09cade02dd5b956d1a25aaa1f1588cf2f458718724e321`  
		Last Modified: Tue, 27 Oct 2026 23:10:12 GMT  
		Size: 2.6 KB (2610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12a7e8fa1fb5c56844009c0c11b13843607d6446dbecea9b41ab993befbe055c`  
		Last Modified: Tue, 27 Oct 2026 23:10:13 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3128d823d4dcb2f2b3314c5da9d17a718550eb1afbf809f9cfaca5253fb7c67`  
		Last Modified: Tue, 27 Oct 2026 23:10:15 GMT  
		Size: 57.2 MB (57170568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:520c0a00d2782aabc7ffcdbcb07db648dcd659856b996a4ed3012540159f3b47`  
		Last Modified: Tue, 27 Oct 2026 23:10:13 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93259a0074dd506958d450a6bc944af9c2fbd7850642316e8455831713daae69`  
		Last Modified: Tue, 27 Oct 2026 23:10:17 GMT  
		Size: 157.2 MB (157193173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:622bdd2ecae67951f979472c66f3193952889fc4ee144891cbe3956ebbcf64b0`  
		Last Modified: Tue, 27 Oct 2026 23:10:14 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:4d72b7aebf1d9a14b302939d7a3c10f4e5c5b155258208c46c539d75d24bc032
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16814431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d092267b5652df3217e5ea2366f34fd4bbf90a79ee05df45750ca5988f8a14d7`

```dockerfile
```

-	Layers:
	-	`sha256:ebc21913389c0ea1958fe6c96646c33d303fa63823c8de8a44eaa7f67c075986`  
		Last Modified: Tue, 27 Oct 2026 23:10:12 GMT  
		Size: 16.8 MB (16779919 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0ed6a31c94185469dcab7b6eff8595d89f69e057c13f387947416857a142bba0`  
		Last Modified: Tue, 27 Oct 2026 23:10:12 GMT  
		Size: 34.5 KB (34512 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9.7.4`

```console
$ docker pull mysql@sha256:86b390ef642f89a0157d6215dee33ddc928b8b0ecab173117f56f6c40cb24eab
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9.7.4` - linux; amd64

```console
$ docker pull mysql@sha256:b055723a00649bde974d2e3d3ba486725f279c4a4bb4d24d69f36b11fafa7b79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.3 MB (270272911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7e157ee39fae2805d803f0d73e1fa116a6b9d2c2d1eeafcce15dcb0409595a1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 27 Oct 2026 23:05:41 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 27 Oct 2026 23:05:41 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 23:07:17 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 27 Oct 2026 23:07:19 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 23:07:19 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 23:07:53 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 27 Oct 2026 23:07:54 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 27 Oct 2026 23:07:54 GMT
ENV MYSQL_MAJOR=9.7
# Tue, 27 Oct 2026 23:07:54 GMT
ENV MYSQL_VERSION=9.7.4-1.el9
# Tue, 27 Oct 2026 23:07:54 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 27 Oct 2026 23:08:30 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 27 Oct 2026 23:08:30 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 27 Oct 2026 23:08:30 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Tue, 27 Oct 2026 23:09:16 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 27 Oct 2026 23:09:16 GMT
VOLUME [/var/lib/mysql]
# Tue, 27 Oct 2026 23:09:16 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 23:09:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 23:09:16 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 27 Oct 2026 23:09:16 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:1610bd8e525d37f7b01147980f0f660538a95e978eee8351a908a00d143c2910`  
		Last Modified: Tue, 27 Oct 2026 23:05:52 GMT  
		Size: 47.2 MB (47188107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4143b5578588023307b710623d1362a77af4557a51c1c72983aca1fe5d5969b4`  
		Last Modified: Tue, 27 Oct 2026 23:09:41 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e752cc14300e79365e777ca9f56fdd5049e87964f423ca9b30cfc2f34d998130`  
		Last Modified: Tue, 27 Oct 2026 23:09:41 GMT  
		Size: 783.6 KB (783565 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f86c3ea7eb65233d3623889207c2fa59578ff8f3f96cb8021ac1cad5c71905e1`  
		Last Modified: Tue, 27 Oct 2026 23:09:47 GMT  
		Size: 6.2 MB (6186670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a4f18e225a8e100697eefb85ef71bc2675ac5fc5c7d233725b2557ec3a6e682`  
		Last Modified: Tue, 27 Oct 2026 23:09:41 GMT  
		Size: 2.6 KB (2609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccf592e9f5f03d475e62afe08b3171011df9b5688d2972563490cfe84463bb92`  
		Last Modified: Tue, 27 Oct 2026 23:09:47 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbf530c6006f922cc50611fcc08b3d661b97b60f70b7812a85a09d1d90cc9df8`  
		Last Modified: Tue, 27 Oct 2026 23:09:49 GMT  
		Size: 57.2 MB (57181336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0f6e161442abaa2d8353dc6a5643b48b36705e3ca04e3a0cd0666d6abac10ac`  
		Last Modified: Tue, 27 Oct 2026 23:09:47 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b0d638b2c56561298687d818755099b61e2fb2c2b285ee624476deb5c31725c`  
		Last Modified: Tue, 27 Oct 2026 23:09:52 GMT  
		Size: 158.9 MB (158923859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a529268c9003a190ebea0213fdc76732c21965775903a726f491e0f98a8747e8`  
		Last Modified: Tue, 27 Oct 2026 23:09:49 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7.4` - unknown; unknown

```console
$ docker pull mysql@sha256:60977bfa48c5ae98f08d7da9951934958df47dbfae3cd87c53bbd3d473f77671
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16815691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0d3c779315f822c7b868c21bcf1f5e4e1e53a8bce2c1a8df0c8bd9a2c431eb8`

```dockerfile
```

-	Layers:
	-	`sha256:519b68ff55d399ca735abe64138b535101bc250eb7c1af73e5bc065760c6e0fc`  
		Last Modified: Tue, 27 Oct 2026 23:09:48 GMT  
		Size: 16.8 MB (16781483 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:94790361c0b481c83428a0fe9c9cea270e64f65d4290c95ff7fed1cc2641ad7c`  
		Last Modified: Tue, 27 Oct 2026 23:09:47 GMT  
		Size: 34.2 KB (34208 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9.7.4` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:90ef00bc43b35a8e156262dda9b778a6d2862fe44c547e63c606f0f75950bcc6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.7 MB (266650280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63dc4a41ae6ad18bfb110c38099a7de06e2836f4a24914334e18eb8bf53cb80d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 27 Oct 2026 23:05:32 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 27 Oct 2026 23:05:32 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 23:07:18 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 27 Oct 2026 23:07:19 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 23:07:19 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 23:07:59 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 27 Oct 2026 23:08:00 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 27 Oct 2026 23:08:00 GMT
ENV MYSQL_MAJOR=9.7
# Tue, 27 Oct 2026 23:08:00 GMT
ENV MYSQL_VERSION=9.7.4-1.el9
# Tue, 27 Oct 2026 23:08:00 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 27 Oct 2026 23:08:44 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 27 Oct 2026 23:08:44 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 27 Oct 2026 23:08:44 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Tue, 27 Oct 2026 23:09:36 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 27 Oct 2026 23:09:36 GMT
VOLUME [/var/lib/mysql]
# Tue, 27 Oct 2026 23:09:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 23:09:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 23:09:36 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 27 Oct 2026 23:09:36 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:11f62504eea6ae8bacf9c501835f2547c0d6c7f6ff85fd7a67912c41a123c561`  
		Last Modified: Tue, 27 Oct 2026 23:05:43 GMT  
		Size: 45.7 MB (45732830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4143b5578588023307b710623d1362a77af4557a51c1c72983aca1fe5d5969b4`  
		Last Modified: Tue, 27 Oct 2026 23:09:41 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f72bb6509d0749be9a66b9a85f6b2b256f14fc9ab3310db6598455b74237e1d7`  
		Last Modified: Tue, 27 Oct 2026 23:10:12 GMT  
		Size: 737.5 KB (737532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b52f52bdb8bb122c799204bccede6e80791492b685c4002bbeda01f23091f7f`  
		Last Modified: Tue, 27 Oct 2026 23:10:12 GMT  
		Size: 5.8 MB (5806801 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64e8d0c7a96903ff3d09cade02dd5b956d1a25aaa1f1588cf2f458718724e321`  
		Last Modified: Tue, 27 Oct 2026 23:10:12 GMT  
		Size: 2.6 KB (2610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12a7e8fa1fb5c56844009c0c11b13843607d6446dbecea9b41ab993befbe055c`  
		Last Modified: Tue, 27 Oct 2026 23:10:13 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3128d823d4dcb2f2b3314c5da9d17a718550eb1afbf809f9cfaca5253fb7c67`  
		Last Modified: Tue, 27 Oct 2026 23:10:15 GMT  
		Size: 57.2 MB (57170568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:520c0a00d2782aabc7ffcdbcb07db648dcd659856b996a4ed3012540159f3b47`  
		Last Modified: Tue, 27 Oct 2026 23:10:13 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93259a0074dd506958d450a6bc944af9c2fbd7850642316e8455831713daae69`  
		Last Modified: Tue, 27 Oct 2026 23:10:17 GMT  
		Size: 157.2 MB (157193173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:622bdd2ecae67951f979472c66f3193952889fc4ee144891cbe3956ebbcf64b0`  
		Last Modified: Tue, 27 Oct 2026 23:10:14 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7.4` - unknown; unknown

```console
$ docker pull mysql@sha256:4d72b7aebf1d9a14b302939d7a3c10f4e5c5b155258208c46c539d75d24bc032
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16814431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d092267b5652df3217e5ea2366f34fd4bbf90a79ee05df45750ca5988f8a14d7`

```dockerfile
```

-	Layers:
	-	`sha256:ebc21913389c0ea1958fe6c96646c33d303fa63823c8de8a44eaa7f67c075986`  
		Last Modified: Tue, 27 Oct 2026 23:10:12 GMT  
		Size: 16.8 MB (16779919 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0ed6a31c94185469dcab7b6eff8595d89f69e057c13f387947416857a142bba0`  
		Last Modified: Tue, 27 Oct 2026 23:10:12 GMT  
		Size: 34.5 KB (34512 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9.7.4-oracle`

```console
$ docker pull mysql@sha256:86b390ef642f89a0157d6215dee33ddc928b8b0ecab173117f56f6c40cb24eab
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9.7.4-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:b055723a00649bde974d2e3d3ba486725f279c4a4bb4d24d69f36b11fafa7b79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.3 MB (270272911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7e157ee39fae2805d803f0d73e1fa116a6b9d2c2d1eeafcce15dcb0409595a1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 27 Oct 2026 23:05:41 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 27 Oct 2026 23:05:41 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 23:07:17 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 27 Oct 2026 23:07:19 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 23:07:19 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 23:07:53 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 27 Oct 2026 23:07:54 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 27 Oct 2026 23:07:54 GMT
ENV MYSQL_MAJOR=9.7
# Tue, 27 Oct 2026 23:07:54 GMT
ENV MYSQL_VERSION=9.7.4-1.el9
# Tue, 27 Oct 2026 23:07:54 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 27 Oct 2026 23:08:30 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 27 Oct 2026 23:08:30 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 27 Oct 2026 23:08:30 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Tue, 27 Oct 2026 23:09:16 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 27 Oct 2026 23:09:16 GMT
VOLUME [/var/lib/mysql]
# Tue, 27 Oct 2026 23:09:16 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 23:09:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 23:09:16 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 27 Oct 2026 23:09:16 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:1610bd8e525d37f7b01147980f0f660538a95e978eee8351a908a00d143c2910`  
		Last Modified: Tue, 27 Oct 2026 23:05:52 GMT  
		Size: 47.2 MB (47188107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4143b5578588023307b710623d1362a77af4557a51c1c72983aca1fe5d5969b4`  
		Last Modified: Tue, 27 Oct 2026 23:09:41 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e752cc14300e79365e777ca9f56fdd5049e87964f423ca9b30cfc2f34d998130`  
		Last Modified: Tue, 27 Oct 2026 23:09:41 GMT  
		Size: 783.6 KB (783565 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f86c3ea7eb65233d3623889207c2fa59578ff8f3f96cb8021ac1cad5c71905e1`  
		Last Modified: Tue, 27 Oct 2026 23:09:47 GMT  
		Size: 6.2 MB (6186670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a4f18e225a8e100697eefb85ef71bc2675ac5fc5c7d233725b2557ec3a6e682`  
		Last Modified: Tue, 27 Oct 2026 23:09:41 GMT  
		Size: 2.6 KB (2609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccf592e9f5f03d475e62afe08b3171011df9b5688d2972563490cfe84463bb92`  
		Last Modified: Tue, 27 Oct 2026 23:09:47 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbf530c6006f922cc50611fcc08b3d661b97b60f70b7812a85a09d1d90cc9df8`  
		Last Modified: Tue, 27 Oct 2026 23:09:49 GMT  
		Size: 57.2 MB (57181336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0f6e161442abaa2d8353dc6a5643b48b36705e3ca04e3a0cd0666d6abac10ac`  
		Last Modified: Tue, 27 Oct 2026 23:09:47 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b0d638b2c56561298687d818755099b61e2fb2c2b285ee624476deb5c31725c`  
		Last Modified: Tue, 27 Oct 2026 23:09:52 GMT  
		Size: 158.9 MB (158923859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a529268c9003a190ebea0213fdc76732c21965775903a726f491e0f98a8747e8`  
		Last Modified: Tue, 27 Oct 2026 23:09:49 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7.4-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:60977bfa48c5ae98f08d7da9951934958df47dbfae3cd87c53bbd3d473f77671
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16815691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0d3c779315f822c7b868c21bcf1f5e4e1e53a8bce2c1a8df0c8bd9a2c431eb8`

```dockerfile
```

-	Layers:
	-	`sha256:519b68ff55d399ca735abe64138b535101bc250eb7c1af73e5bc065760c6e0fc`  
		Last Modified: Tue, 27 Oct 2026 23:09:48 GMT  
		Size: 16.8 MB (16781483 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:94790361c0b481c83428a0fe9c9cea270e64f65d4290c95ff7fed1cc2641ad7c`  
		Last Modified: Tue, 27 Oct 2026 23:09:47 GMT  
		Size: 34.2 KB (34208 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9.7.4-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:90ef00bc43b35a8e156262dda9b778a6d2862fe44c547e63c606f0f75950bcc6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.7 MB (266650280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63dc4a41ae6ad18bfb110c38099a7de06e2836f4a24914334e18eb8bf53cb80d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 27 Oct 2026 23:05:32 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 27 Oct 2026 23:05:32 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 23:07:18 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 27 Oct 2026 23:07:19 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 23:07:19 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 23:07:59 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 27 Oct 2026 23:08:00 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 27 Oct 2026 23:08:00 GMT
ENV MYSQL_MAJOR=9.7
# Tue, 27 Oct 2026 23:08:00 GMT
ENV MYSQL_VERSION=9.7.4-1.el9
# Tue, 27 Oct 2026 23:08:00 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 27 Oct 2026 23:08:44 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 27 Oct 2026 23:08:44 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 27 Oct 2026 23:08:44 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Tue, 27 Oct 2026 23:09:36 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 27 Oct 2026 23:09:36 GMT
VOLUME [/var/lib/mysql]
# Tue, 27 Oct 2026 23:09:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 23:09:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 23:09:36 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 27 Oct 2026 23:09:36 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:11f62504eea6ae8bacf9c501835f2547c0d6c7f6ff85fd7a67912c41a123c561`  
		Last Modified: Tue, 27 Oct 2026 23:05:43 GMT  
		Size: 45.7 MB (45732830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4143b5578588023307b710623d1362a77af4557a51c1c72983aca1fe5d5969b4`  
		Last Modified: Tue, 27 Oct 2026 23:09:41 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f72bb6509d0749be9a66b9a85f6b2b256f14fc9ab3310db6598455b74237e1d7`  
		Last Modified: Tue, 27 Oct 2026 23:10:12 GMT  
		Size: 737.5 KB (737532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b52f52bdb8bb122c799204bccede6e80791492b685c4002bbeda01f23091f7f`  
		Last Modified: Tue, 27 Oct 2026 23:10:12 GMT  
		Size: 5.8 MB (5806801 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64e8d0c7a96903ff3d09cade02dd5b956d1a25aaa1f1588cf2f458718724e321`  
		Last Modified: Tue, 27 Oct 2026 23:10:12 GMT  
		Size: 2.6 KB (2610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12a7e8fa1fb5c56844009c0c11b13843607d6446dbecea9b41ab993befbe055c`  
		Last Modified: Tue, 27 Oct 2026 23:10:13 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3128d823d4dcb2f2b3314c5da9d17a718550eb1afbf809f9cfaca5253fb7c67`  
		Last Modified: Tue, 27 Oct 2026 23:10:15 GMT  
		Size: 57.2 MB (57170568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:520c0a00d2782aabc7ffcdbcb07db648dcd659856b996a4ed3012540159f3b47`  
		Last Modified: Tue, 27 Oct 2026 23:10:13 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93259a0074dd506958d450a6bc944af9c2fbd7850642316e8455831713daae69`  
		Last Modified: Tue, 27 Oct 2026 23:10:17 GMT  
		Size: 157.2 MB (157193173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:622bdd2ecae67951f979472c66f3193952889fc4ee144891cbe3956ebbcf64b0`  
		Last Modified: Tue, 27 Oct 2026 23:10:14 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7.4-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:4d72b7aebf1d9a14b302939d7a3c10f4e5c5b155258208c46c539d75d24bc032
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16814431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d092267b5652df3217e5ea2366f34fd4bbf90a79ee05df45750ca5988f8a14d7`

```dockerfile
```

-	Layers:
	-	`sha256:ebc21913389c0ea1958fe6c96646c33d303fa63823c8de8a44eaa7f67c075986`  
		Last Modified: Tue, 27 Oct 2026 23:10:12 GMT  
		Size: 16.8 MB (16779919 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0ed6a31c94185469dcab7b6eff8595d89f69e057c13f387947416857a142bba0`  
		Last Modified: Tue, 27 Oct 2026 23:10:12 GMT  
		Size: 34.5 KB (34512 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9.7.4-oraclelinux9`

```console
$ docker pull mysql@sha256:86b390ef642f89a0157d6215dee33ddc928b8b0ecab173117f56f6c40cb24eab
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9.7.4-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:b055723a00649bde974d2e3d3ba486725f279c4a4bb4d24d69f36b11fafa7b79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.3 MB (270272911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7e157ee39fae2805d803f0d73e1fa116a6b9d2c2d1eeafcce15dcb0409595a1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 27 Oct 2026 23:05:41 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 27 Oct 2026 23:05:41 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 23:07:17 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 27 Oct 2026 23:07:19 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 23:07:19 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 23:07:53 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 27 Oct 2026 23:07:54 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 27 Oct 2026 23:07:54 GMT
ENV MYSQL_MAJOR=9.7
# Tue, 27 Oct 2026 23:07:54 GMT
ENV MYSQL_VERSION=9.7.4-1.el9
# Tue, 27 Oct 2026 23:07:54 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 27 Oct 2026 23:08:30 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 27 Oct 2026 23:08:30 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 27 Oct 2026 23:08:30 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Tue, 27 Oct 2026 23:09:16 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 27 Oct 2026 23:09:16 GMT
VOLUME [/var/lib/mysql]
# Tue, 27 Oct 2026 23:09:16 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 23:09:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 23:09:16 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 27 Oct 2026 23:09:16 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:1610bd8e525d37f7b01147980f0f660538a95e978eee8351a908a00d143c2910`  
		Last Modified: Tue, 27 Oct 2026 23:05:52 GMT  
		Size: 47.2 MB (47188107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4143b5578588023307b710623d1362a77af4557a51c1c72983aca1fe5d5969b4`  
		Last Modified: Tue, 27 Oct 2026 23:09:41 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e752cc14300e79365e777ca9f56fdd5049e87964f423ca9b30cfc2f34d998130`  
		Last Modified: Tue, 27 Oct 2026 23:09:41 GMT  
		Size: 783.6 KB (783565 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f86c3ea7eb65233d3623889207c2fa59578ff8f3f96cb8021ac1cad5c71905e1`  
		Last Modified: Tue, 27 Oct 2026 23:09:47 GMT  
		Size: 6.2 MB (6186670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a4f18e225a8e100697eefb85ef71bc2675ac5fc5c7d233725b2557ec3a6e682`  
		Last Modified: Tue, 27 Oct 2026 23:09:41 GMT  
		Size: 2.6 KB (2609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccf592e9f5f03d475e62afe08b3171011df9b5688d2972563490cfe84463bb92`  
		Last Modified: Tue, 27 Oct 2026 23:09:47 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbf530c6006f922cc50611fcc08b3d661b97b60f70b7812a85a09d1d90cc9df8`  
		Last Modified: Tue, 27 Oct 2026 23:09:49 GMT  
		Size: 57.2 MB (57181336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0f6e161442abaa2d8353dc6a5643b48b36705e3ca04e3a0cd0666d6abac10ac`  
		Last Modified: Tue, 27 Oct 2026 23:09:47 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b0d638b2c56561298687d818755099b61e2fb2c2b285ee624476deb5c31725c`  
		Last Modified: Tue, 27 Oct 2026 23:09:52 GMT  
		Size: 158.9 MB (158923859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a529268c9003a190ebea0213fdc76732c21965775903a726f491e0f98a8747e8`  
		Last Modified: Tue, 27 Oct 2026 23:09:49 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7.4-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:60977bfa48c5ae98f08d7da9951934958df47dbfae3cd87c53bbd3d473f77671
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16815691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0d3c779315f822c7b868c21bcf1f5e4e1e53a8bce2c1a8df0c8bd9a2c431eb8`

```dockerfile
```

-	Layers:
	-	`sha256:519b68ff55d399ca735abe64138b535101bc250eb7c1af73e5bc065760c6e0fc`  
		Last Modified: Tue, 27 Oct 2026 23:09:48 GMT  
		Size: 16.8 MB (16781483 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:94790361c0b481c83428a0fe9c9cea270e64f65d4290c95ff7fed1cc2641ad7c`  
		Last Modified: Tue, 27 Oct 2026 23:09:47 GMT  
		Size: 34.2 KB (34208 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9.7.4-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:90ef00bc43b35a8e156262dda9b778a6d2862fe44c547e63c606f0f75950bcc6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.7 MB (266650280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63dc4a41ae6ad18bfb110c38099a7de06e2836f4a24914334e18eb8bf53cb80d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 27 Oct 2026 23:05:32 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 27 Oct 2026 23:05:32 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 23:07:18 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 27 Oct 2026 23:07:19 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 23:07:19 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 23:07:59 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 27 Oct 2026 23:08:00 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 27 Oct 2026 23:08:00 GMT
ENV MYSQL_MAJOR=9.7
# Tue, 27 Oct 2026 23:08:00 GMT
ENV MYSQL_VERSION=9.7.4-1.el9
# Tue, 27 Oct 2026 23:08:00 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 27 Oct 2026 23:08:44 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 27 Oct 2026 23:08:44 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 27 Oct 2026 23:08:44 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Tue, 27 Oct 2026 23:09:36 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 27 Oct 2026 23:09:36 GMT
VOLUME [/var/lib/mysql]
# Tue, 27 Oct 2026 23:09:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 23:09:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 23:09:36 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 27 Oct 2026 23:09:36 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:11f62504eea6ae8bacf9c501835f2547c0d6c7f6ff85fd7a67912c41a123c561`  
		Last Modified: Tue, 27 Oct 2026 23:05:43 GMT  
		Size: 45.7 MB (45732830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4143b5578588023307b710623d1362a77af4557a51c1c72983aca1fe5d5969b4`  
		Last Modified: Tue, 27 Oct 2026 23:09:41 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f72bb6509d0749be9a66b9a85f6b2b256f14fc9ab3310db6598455b74237e1d7`  
		Last Modified: Tue, 27 Oct 2026 23:10:12 GMT  
		Size: 737.5 KB (737532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b52f52bdb8bb122c799204bccede6e80791492b685c4002bbeda01f23091f7f`  
		Last Modified: Tue, 27 Oct 2026 23:10:12 GMT  
		Size: 5.8 MB (5806801 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64e8d0c7a96903ff3d09cade02dd5b956d1a25aaa1f1588cf2f458718724e321`  
		Last Modified: Tue, 27 Oct 2026 23:10:12 GMT  
		Size: 2.6 KB (2610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12a7e8fa1fb5c56844009c0c11b13843607d6446dbecea9b41ab993befbe055c`  
		Last Modified: Tue, 27 Oct 2026 23:10:13 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3128d823d4dcb2f2b3314c5da9d17a718550eb1afbf809f9cfaca5253fb7c67`  
		Last Modified: Tue, 27 Oct 2026 23:10:15 GMT  
		Size: 57.2 MB (57170568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:520c0a00d2782aabc7ffcdbcb07db648dcd659856b996a4ed3012540159f3b47`  
		Last Modified: Tue, 27 Oct 2026 23:10:13 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93259a0074dd506958d450a6bc944af9c2fbd7850642316e8455831713daae69`  
		Last Modified: Tue, 27 Oct 2026 23:10:17 GMT  
		Size: 157.2 MB (157193173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:622bdd2ecae67951f979472c66f3193952889fc4ee144891cbe3956ebbcf64b0`  
		Last Modified: Tue, 27 Oct 2026 23:10:14 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7.4-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:4d72b7aebf1d9a14b302939d7a3c10f4e5c5b155258208c46c539d75d24bc032
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16814431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d092267b5652df3217e5ea2366f34fd4bbf90a79ee05df45750ca5988f8a14d7`

```dockerfile
```

-	Layers:
	-	`sha256:ebc21913389c0ea1958fe6c96646c33d303fa63823c8de8a44eaa7f67c075986`  
		Last Modified: Tue, 27 Oct 2026 23:10:12 GMT  
		Size: 16.8 MB (16779919 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0ed6a31c94185469dcab7b6eff8595d89f69e057c13f387947416857a142bba0`  
		Last Modified: Tue, 27 Oct 2026 23:10:12 GMT  
		Size: 34.5 KB (34512 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:innovation`

```console
$ docker pull mysql@sha256:7b16ec7caa94ca7e92f4c5ec287de69d2e8738db056ceb629022951a6f6d910b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:innovation` - linux; amd64

```console
$ docker pull mysql@sha256:633e1a8f622f84e9dbd604ab0be4b95211f9f153fdb9832a47c54982d2d43c54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.0 MB (299034565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd99e7baa0197cef65b56edc498c0b098918c875aa0047e0b6f2b56e3b6dd45a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 27 Oct 2026 23:05:41 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 27 Oct 2026 23:05:41 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 23:07:41 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 27 Oct 2026 23:07:43 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 23:07:43 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 23:08:17 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 27 Oct 2026 23:08:17 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 27 Oct 2026 23:08:17 GMT
ENV MYSQL_MAJOR=innovation
# Tue, 27 Oct 2026 23:08:17 GMT
ENV MYSQL_VERSION=26.10.0-1.el9
# Tue, 27 Oct 2026 23:08:17 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 27 Oct 2026 23:08:54 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 27 Oct 2026 23:08:54 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 27 Oct 2026 23:08:54 GMT
ENV MYSQL_SHELL_VERSION=26.10.0-1.el9
# Tue, 27 Oct 2026 23:09:39 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 27 Oct 2026 23:09:39 GMT
VOLUME [/var/lib/mysql]
# Tue, 27 Oct 2026 23:09:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 23:09:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 23:09:39 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 27 Oct 2026 23:09:39 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:1610bd8e525d37f7b01147980f0f660538a95e978eee8351a908a00d143c2910`  
		Last Modified: Tue, 27 Oct 2026 23:05:52 GMT  
		Size: 47.2 MB (47188107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac16b2e289d5e3b3f467ebc4e9a0bcf7f86912e39fae80a3c564f15a88c2466b`  
		Last Modified: Tue, 27 Oct 2026 23:10:04 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c61a0b298231054a50162fd8ba5f1663d9575339fda1abfa97cfea17bd5e8f87`  
		Last Modified: Tue, 27 Oct 2026 23:10:04 GMT  
		Size: 783.6 KB (783565 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2801c41ee6ad0d666bc4309612d991d09531f3297dd8ddbb463813c8967325c1`  
		Last Modified: Tue, 27 Oct 2026 23:10:04 GMT  
		Size: 6.2 MB (6186741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:def0bf29cc7b751404f7f318d68ec3aa529a8beda7975fcf62dbb9a8caa7fbab`  
		Last Modified: Tue, 27 Oct 2026 23:10:04 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ad863d106ceb7d3f7b41654346e301454334b7e494c49d03608dfd53ea74c0a`  
		Last Modified: Tue, 27 Oct 2026 23:10:05 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6e8373886396224aa79aacfa24c7067210b3b03249af3d15df749586398d458`  
		Last Modified: Tue, 27 Oct 2026 23:10:07 GMT  
		Size: 63.8 MB (63787570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:618abfb0ceb2f256a50c49283e301ffe6d90bf670639af6c3285bc316dde4a9a`  
		Last Modified: Tue, 27 Oct 2026 23:10:05 GMT  
		Size: 326.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53add8b74cb923c03864601ead8537c16e654fbdbeab2dcf44019ce56afda85e`  
		Last Modified: Tue, 27 Oct 2026 23:10:10 GMT  
		Size: 181.1 MB (181079201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f031910ef3c1d0e215ef20ed21e6aca465b9a868e5458ef2b096921e8b15d309`  
		Last Modified: Tue, 27 Oct 2026 23:10:06 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:innovation` - unknown; unknown

```console
$ docker pull mysql@sha256:d0adcc86cc3bfc192c2dd8911f9d2ffa55eef14f97df509d5c61492c99aae422
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5334085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a51f02baf4a3a1bfdbd9ee424383a9147d6cc7207546a3b0deb7fafffddb200`

```dockerfile
```

-	Layers:
	-	`sha256:c1808d28dcbc17eb640423e5603d0a2be0c0faa45da0114f3a5f738ad7d8e3b1`  
		Last Modified: Tue, 27 Oct 2026 23:10:04 GMT  
		Size: 5.3 MB (5298766 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f27adb461b49aebbacd4550ea3751e7d8d4ce0328115dc5a6084889a6fc42e7a`  
		Last Modified: Tue, 27 Oct 2026 23:10:04 GMT  
		Size: 35.3 KB (35319 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:innovation` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:b58efd11d883b862f7dd1077966de3a443d00c126952bc29023368927b6f92f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.5 MB (295459639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2dc3a37aad4fba70b9e8521751c7fb3146267829fb37fe54a717eea4c76d47b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 27 Oct 2026 23:05:32 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 27 Oct 2026 23:05:32 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 23:07:11 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 27 Oct 2026 23:07:13 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 23:07:13 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 23:07:54 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 27 Oct 2026 23:07:55 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 27 Oct 2026 23:07:55 GMT
ENV MYSQL_MAJOR=innovation
# Tue, 27 Oct 2026 23:07:55 GMT
ENV MYSQL_VERSION=26.10.0-1.el9
# Tue, 27 Oct 2026 23:07:55 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 27 Oct 2026 23:08:40 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 27 Oct 2026 23:08:40 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 27 Oct 2026 23:08:40 GMT
ENV MYSQL_SHELL_VERSION=26.10.0-1.el9
# Tue, 27 Oct 2026 23:09:33 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 27 Oct 2026 23:09:33 GMT
VOLUME [/var/lib/mysql]
# Tue, 27 Oct 2026 23:09:33 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 23:09:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 23:09:33 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 27 Oct 2026 23:09:33 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:11f62504eea6ae8bacf9c501835f2547c0d6c7f6ff85fd7a67912c41a123c561`  
		Last Modified: Tue, 27 Oct 2026 23:05:43 GMT  
		Size: 45.7 MB (45732830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4e5d43c68979146dbb3b749889e44c0df6b13705a3f8d77363860f1948855d1`  
		Last Modified: Tue, 27 Oct 2026 23:09:59 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4aa276b8ad98ea5a94a307c51cfa087e983a9a3b2b3493fcfa4ebe1a2ca4ca6`  
		Last Modified: Tue, 27 Oct 2026 23:09:59 GMT  
		Size: 737.5 KB (737531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0d59f31e167a0280a1abacc18ded1666cf09b143e77c2fe75430221fcf88b97`  
		Last Modified: Tue, 27 Oct 2026 23:09:59 GMT  
		Size: 5.8 MB (5806804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dd2e8db297eaf92240eaee30a70e6ac6d0327b710ccf1916e12e9f1aba94003`  
		Last Modified: Tue, 27 Oct 2026 23:09:59 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dbfa79bc208c00ab3ce9eb587872ead8aa0409625ab0388ec466292a35e689e`  
		Last Modified: Tue, 27 Oct 2026 23:10:00 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3740231fab18490409e308e9566caf7c08fef0b9fa26a794dc399cd8785bc3e`  
		Last Modified: Tue, 27 Oct 2026 23:10:03 GMT  
		Size: 63.8 MB (63821777 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f641eea4863ab02c549bd4aec1451b6852cf50c885a71dd2993969a83f0b4e10`  
		Last Modified: Tue, 27 Oct 2026 23:10:00 GMT  
		Size: 326.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9bc9578e067546beeda8a1e501e1850f1f7f152b5331e613df3a2dc565a7b42`  
		Last Modified: Tue, 27 Oct 2026 23:10:06 GMT  
		Size: 179.4 MB (179351313 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30c35ea3883909773fc3524f62d1dd027bb8c7e05ae0d6e9bd6bb481d9414b86`  
		Last Modified: Tue, 27 Oct 2026 23:10:01 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:innovation` - unknown; unknown

```console
$ docker pull mysql@sha256:38be110e6029f2834125e096980b80c780800c82084b29754ad5e66bd7a453ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5332899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b00daf0ce3011b7bb69edcf8bc471ad09a83978c2a9d02764e2839d1c5fb5be`

```dockerfile
```

-	Layers:
	-	`sha256:eec04a9714639f43626432e4538d76f2eb6fb83e0f9b1ddaffded5e78eba31c8`  
		Last Modified: Tue, 27 Oct 2026 23:09:59 GMT  
		Size: 5.3 MB (5297239 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:def8b01477cff5561c2af633ec66f08daff73e75686692bc550778886e66baba`  
		Last Modified: Tue, 27 Oct 2026 23:09:58 GMT  
		Size: 35.7 KB (35660 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:innovation-oracle`

```console
$ docker pull mysql@sha256:7b16ec7caa94ca7e92f4c5ec287de69d2e8738db056ceb629022951a6f6d910b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:innovation-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:633e1a8f622f84e9dbd604ab0be4b95211f9f153fdb9832a47c54982d2d43c54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.0 MB (299034565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd99e7baa0197cef65b56edc498c0b098918c875aa0047e0b6f2b56e3b6dd45a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 27 Oct 2026 23:05:41 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 27 Oct 2026 23:05:41 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 23:07:41 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 27 Oct 2026 23:07:43 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 23:07:43 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 23:08:17 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 27 Oct 2026 23:08:17 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 27 Oct 2026 23:08:17 GMT
ENV MYSQL_MAJOR=innovation
# Tue, 27 Oct 2026 23:08:17 GMT
ENV MYSQL_VERSION=26.10.0-1.el9
# Tue, 27 Oct 2026 23:08:17 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 27 Oct 2026 23:08:54 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 27 Oct 2026 23:08:54 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 27 Oct 2026 23:08:54 GMT
ENV MYSQL_SHELL_VERSION=26.10.0-1.el9
# Tue, 27 Oct 2026 23:09:39 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 27 Oct 2026 23:09:39 GMT
VOLUME [/var/lib/mysql]
# Tue, 27 Oct 2026 23:09:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 23:09:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 23:09:39 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 27 Oct 2026 23:09:39 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:1610bd8e525d37f7b01147980f0f660538a95e978eee8351a908a00d143c2910`  
		Last Modified: Tue, 27 Oct 2026 23:05:52 GMT  
		Size: 47.2 MB (47188107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac16b2e289d5e3b3f467ebc4e9a0bcf7f86912e39fae80a3c564f15a88c2466b`  
		Last Modified: Tue, 27 Oct 2026 23:10:04 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c61a0b298231054a50162fd8ba5f1663d9575339fda1abfa97cfea17bd5e8f87`  
		Last Modified: Tue, 27 Oct 2026 23:10:04 GMT  
		Size: 783.6 KB (783565 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2801c41ee6ad0d666bc4309612d991d09531f3297dd8ddbb463813c8967325c1`  
		Last Modified: Tue, 27 Oct 2026 23:10:04 GMT  
		Size: 6.2 MB (6186741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:def0bf29cc7b751404f7f318d68ec3aa529a8beda7975fcf62dbb9a8caa7fbab`  
		Last Modified: Tue, 27 Oct 2026 23:10:04 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ad863d106ceb7d3f7b41654346e301454334b7e494c49d03608dfd53ea74c0a`  
		Last Modified: Tue, 27 Oct 2026 23:10:05 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6e8373886396224aa79aacfa24c7067210b3b03249af3d15df749586398d458`  
		Last Modified: Tue, 27 Oct 2026 23:10:07 GMT  
		Size: 63.8 MB (63787570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:618abfb0ceb2f256a50c49283e301ffe6d90bf670639af6c3285bc316dde4a9a`  
		Last Modified: Tue, 27 Oct 2026 23:10:05 GMT  
		Size: 326.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53add8b74cb923c03864601ead8537c16e654fbdbeab2dcf44019ce56afda85e`  
		Last Modified: Tue, 27 Oct 2026 23:10:10 GMT  
		Size: 181.1 MB (181079201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f031910ef3c1d0e215ef20ed21e6aca465b9a868e5458ef2b096921e8b15d309`  
		Last Modified: Tue, 27 Oct 2026 23:10:06 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:innovation-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:d0adcc86cc3bfc192c2dd8911f9d2ffa55eef14f97df509d5c61492c99aae422
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5334085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a51f02baf4a3a1bfdbd9ee424383a9147d6cc7207546a3b0deb7fafffddb200`

```dockerfile
```

-	Layers:
	-	`sha256:c1808d28dcbc17eb640423e5603d0a2be0c0faa45da0114f3a5f738ad7d8e3b1`  
		Last Modified: Tue, 27 Oct 2026 23:10:04 GMT  
		Size: 5.3 MB (5298766 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f27adb461b49aebbacd4550ea3751e7d8d4ce0328115dc5a6084889a6fc42e7a`  
		Last Modified: Tue, 27 Oct 2026 23:10:04 GMT  
		Size: 35.3 KB (35319 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:innovation-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:b58efd11d883b862f7dd1077966de3a443d00c126952bc29023368927b6f92f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.5 MB (295459639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2dc3a37aad4fba70b9e8521751c7fb3146267829fb37fe54a717eea4c76d47b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 27 Oct 2026 23:05:32 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 27 Oct 2026 23:05:32 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 23:07:11 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 27 Oct 2026 23:07:13 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 23:07:13 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 23:07:54 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 27 Oct 2026 23:07:55 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 27 Oct 2026 23:07:55 GMT
ENV MYSQL_MAJOR=innovation
# Tue, 27 Oct 2026 23:07:55 GMT
ENV MYSQL_VERSION=26.10.0-1.el9
# Tue, 27 Oct 2026 23:07:55 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 27 Oct 2026 23:08:40 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 27 Oct 2026 23:08:40 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 27 Oct 2026 23:08:40 GMT
ENV MYSQL_SHELL_VERSION=26.10.0-1.el9
# Tue, 27 Oct 2026 23:09:33 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 27 Oct 2026 23:09:33 GMT
VOLUME [/var/lib/mysql]
# Tue, 27 Oct 2026 23:09:33 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 23:09:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 23:09:33 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 27 Oct 2026 23:09:33 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:11f62504eea6ae8bacf9c501835f2547c0d6c7f6ff85fd7a67912c41a123c561`  
		Last Modified: Tue, 27 Oct 2026 23:05:43 GMT  
		Size: 45.7 MB (45732830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4e5d43c68979146dbb3b749889e44c0df6b13705a3f8d77363860f1948855d1`  
		Last Modified: Tue, 27 Oct 2026 23:09:59 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4aa276b8ad98ea5a94a307c51cfa087e983a9a3b2b3493fcfa4ebe1a2ca4ca6`  
		Last Modified: Tue, 27 Oct 2026 23:09:59 GMT  
		Size: 737.5 KB (737531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0d59f31e167a0280a1abacc18ded1666cf09b143e77c2fe75430221fcf88b97`  
		Last Modified: Tue, 27 Oct 2026 23:09:59 GMT  
		Size: 5.8 MB (5806804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dd2e8db297eaf92240eaee30a70e6ac6d0327b710ccf1916e12e9f1aba94003`  
		Last Modified: Tue, 27 Oct 2026 23:09:59 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dbfa79bc208c00ab3ce9eb587872ead8aa0409625ab0388ec466292a35e689e`  
		Last Modified: Tue, 27 Oct 2026 23:10:00 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3740231fab18490409e308e9566caf7c08fef0b9fa26a794dc399cd8785bc3e`  
		Last Modified: Tue, 27 Oct 2026 23:10:03 GMT  
		Size: 63.8 MB (63821777 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f641eea4863ab02c549bd4aec1451b6852cf50c885a71dd2993969a83f0b4e10`  
		Last Modified: Tue, 27 Oct 2026 23:10:00 GMT  
		Size: 326.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9bc9578e067546beeda8a1e501e1850f1f7f152b5331e613df3a2dc565a7b42`  
		Last Modified: Tue, 27 Oct 2026 23:10:06 GMT  
		Size: 179.4 MB (179351313 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30c35ea3883909773fc3524f62d1dd027bb8c7e05ae0d6e9bd6bb481d9414b86`  
		Last Modified: Tue, 27 Oct 2026 23:10:01 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:innovation-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:38be110e6029f2834125e096980b80c780800c82084b29754ad5e66bd7a453ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5332899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b00daf0ce3011b7bb69edcf8bc471ad09a83978c2a9d02764e2839d1c5fb5be`

```dockerfile
```

-	Layers:
	-	`sha256:eec04a9714639f43626432e4538d76f2eb6fb83e0f9b1ddaffded5e78eba31c8`  
		Last Modified: Tue, 27 Oct 2026 23:09:59 GMT  
		Size: 5.3 MB (5297239 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:def8b01477cff5561c2af633ec66f08daff73e75686692bc550778886e66baba`  
		Last Modified: Tue, 27 Oct 2026 23:09:58 GMT  
		Size: 35.7 KB (35660 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:innovation-oraclelinux9`

```console
$ docker pull mysql@sha256:7b16ec7caa94ca7e92f4c5ec287de69d2e8738db056ceb629022951a6f6d910b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:innovation-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:633e1a8f622f84e9dbd604ab0be4b95211f9f153fdb9832a47c54982d2d43c54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.0 MB (299034565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd99e7baa0197cef65b56edc498c0b098918c875aa0047e0b6f2b56e3b6dd45a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 27 Oct 2026 23:05:41 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 27 Oct 2026 23:05:41 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 23:07:41 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 27 Oct 2026 23:07:43 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 23:07:43 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 23:08:17 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 27 Oct 2026 23:08:17 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 27 Oct 2026 23:08:17 GMT
ENV MYSQL_MAJOR=innovation
# Tue, 27 Oct 2026 23:08:17 GMT
ENV MYSQL_VERSION=26.10.0-1.el9
# Tue, 27 Oct 2026 23:08:17 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 27 Oct 2026 23:08:54 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 27 Oct 2026 23:08:54 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 27 Oct 2026 23:08:54 GMT
ENV MYSQL_SHELL_VERSION=26.10.0-1.el9
# Tue, 27 Oct 2026 23:09:39 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 27 Oct 2026 23:09:39 GMT
VOLUME [/var/lib/mysql]
# Tue, 27 Oct 2026 23:09:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 23:09:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 23:09:39 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 27 Oct 2026 23:09:39 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:1610bd8e525d37f7b01147980f0f660538a95e978eee8351a908a00d143c2910`  
		Last Modified: Tue, 27 Oct 2026 23:05:52 GMT  
		Size: 47.2 MB (47188107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac16b2e289d5e3b3f467ebc4e9a0bcf7f86912e39fae80a3c564f15a88c2466b`  
		Last Modified: Tue, 27 Oct 2026 23:10:04 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c61a0b298231054a50162fd8ba5f1663d9575339fda1abfa97cfea17bd5e8f87`  
		Last Modified: Tue, 27 Oct 2026 23:10:04 GMT  
		Size: 783.6 KB (783565 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2801c41ee6ad0d666bc4309612d991d09531f3297dd8ddbb463813c8967325c1`  
		Last Modified: Tue, 27 Oct 2026 23:10:04 GMT  
		Size: 6.2 MB (6186741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:def0bf29cc7b751404f7f318d68ec3aa529a8beda7975fcf62dbb9a8caa7fbab`  
		Last Modified: Tue, 27 Oct 2026 23:10:04 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ad863d106ceb7d3f7b41654346e301454334b7e494c49d03608dfd53ea74c0a`  
		Last Modified: Tue, 27 Oct 2026 23:10:05 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6e8373886396224aa79aacfa24c7067210b3b03249af3d15df749586398d458`  
		Last Modified: Tue, 27 Oct 2026 23:10:07 GMT  
		Size: 63.8 MB (63787570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:618abfb0ceb2f256a50c49283e301ffe6d90bf670639af6c3285bc316dde4a9a`  
		Last Modified: Tue, 27 Oct 2026 23:10:05 GMT  
		Size: 326.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53add8b74cb923c03864601ead8537c16e654fbdbeab2dcf44019ce56afda85e`  
		Last Modified: Tue, 27 Oct 2026 23:10:10 GMT  
		Size: 181.1 MB (181079201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f031910ef3c1d0e215ef20ed21e6aca465b9a868e5458ef2b096921e8b15d309`  
		Last Modified: Tue, 27 Oct 2026 23:10:06 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:innovation-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:d0adcc86cc3bfc192c2dd8911f9d2ffa55eef14f97df509d5c61492c99aae422
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5334085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a51f02baf4a3a1bfdbd9ee424383a9147d6cc7207546a3b0deb7fafffddb200`

```dockerfile
```

-	Layers:
	-	`sha256:c1808d28dcbc17eb640423e5603d0a2be0c0faa45da0114f3a5f738ad7d8e3b1`  
		Last Modified: Tue, 27 Oct 2026 23:10:04 GMT  
		Size: 5.3 MB (5298766 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f27adb461b49aebbacd4550ea3751e7d8d4ce0328115dc5a6084889a6fc42e7a`  
		Last Modified: Tue, 27 Oct 2026 23:10:04 GMT  
		Size: 35.3 KB (35319 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:innovation-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:b58efd11d883b862f7dd1077966de3a443d00c126952bc29023368927b6f92f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.5 MB (295459639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2dc3a37aad4fba70b9e8521751c7fb3146267829fb37fe54a717eea4c76d47b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 27 Oct 2026 23:05:32 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 27 Oct 2026 23:05:32 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 23:07:11 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 27 Oct 2026 23:07:13 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 23:07:13 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 23:07:54 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 27 Oct 2026 23:07:55 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 27 Oct 2026 23:07:55 GMT
ENV MYSQL_MAJOR=innovation
# Tue, 27 Oct 2026 23:07:55 GMT
ENV MYSQL_VERSION=26.10.0-1.el9
# Tue, 27 Oct 2026 23:07:55 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 27 Oct 2026 23:08:40 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 27 Oct 2026 23:08:40 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 27 Oct 2026 23:08:40 GMT
ENV MYSQL_SHELL_VERSION=26.10.0-1.el9
# Tue, 27 Oct 2026 23:09:33 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 27 Oct 2026 23:09:33 GMT
VOLUME [/var/lib/mysql]
# Tue, 27 Oct 2026 23:09:33 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 23:09:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 23:09:33 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 27 Oct 2026 23:09:33 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:11f62504eea6ae8bacf9c501835f2547c0d6c7f6ff85fd7a67912c41a123c561`  
		Last Modified: Tue, 27 Oct 2026 23:05:43 GMT  
		Size: 45.7 MB (45732830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4e5d43c68979146dbb3b749889e44c0df6b13705a3f8d77363860f1948855d1`  
		Last Modified: Tue, 27 Oct 2026 23:09:59 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4aa276b8ad98ea5a94a307c51cfa087e983a9a3b2b3493fcfa4ebe1a2ca4ca6`  
		Last Modified: Tue, 27 Oct 2026 23:09:59 GMT  
		Size: 737.5 KB (737531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0d59f31e167a0280a1abacc18ded1666cf09b143e77c2fe75430221fcf88b97`  
		Last Modified: Tue, 27 Oct 2026 23:09:59 GMT  
		Size: 5.8 MB (5806804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dd2e8db297eaf92240eaee30a70e6ac6d0327b710ccf1916e12e9f1aba94003`  
		Last Modified: Tue, 27 Oct 2026 23:09:59 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dbfa79bc208c00ab3ce9eb587872ead8aa0409625ab0388ec466292a35e689e`  
		Last Modified: Tue, 27 Oct 2026 23:10:00 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3740231fab18490409e308e9566caf7c08fef0b9fa26a794dc399cd8785bc3e`  
		Last Modified: Tue, 27 Oct 2026 23:10:03 GMT  
		Size: 63.8 MB (63821777 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f641eea4863ab02c549bd4aec1451b6852cf50c885a71dd2993969a83f0b4e10`  
		Last Modified: Tue, 27 Oct 2026 23:10:00 GMT  
		Size: 326.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9bc9578e067546beeda8a1e501e1850f1f7f152b5331e613df3a2dc565a7b42`  
		Last Modified: Tue, 27 Oct 2026 23:10:06 GMT  
		Size: 179.4 MB (179351313 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30c35ea3883909773fc3524f62d1dd027bb8c7e05ae0d6e9bd6bb481d9414b86`  
		Last Modified: Tue, 27 Oct 2026 23:10:01 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:innovation-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:38be110e6029f2834125e096980b80c780800c82084b29754ad5e66bd7a453ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5332899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b00daf0ce3011b7bb69edcf8bc471ad09a83978c2a9d02764e2839d1c5fb5be`

```dockerfile
```

-	Layers:
	-	`sha256:eec04a9714639f43626432e4538d76f2eb6fb83e0f9b1ddaffded5e78eba31c8`  
		Last Modified: Tue, 27 Oct 2026 23:09:59 GMT  
		Size: 5.3 MB (5297239 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:def8b01477cff5561c2af633ec66f08daff73e75686692bc550778886e66baba`  
		Last Modified: Tue, 27 Oct 2026 23:09:58 GMT  
		Size: 35.7 KB (35660 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:latest`

```console
$ docker pull mysql@sha256:7b16ec7caa94ca7e92f4c5ec287de69d2e8738db056ceb629022951a6f6d910b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:latest` - linux; amd64

```console
$ docker pull mysql@sha256:633e1a8f622f84e9dbd604ab0be4b95211f9f153fdb9832a47c54982d2d43c54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.0 MB (299034565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd99e7baa0197cef65b56edc498c0b098918c875aa0047e0b6f2b56e3b6dd45a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 27 Oct 2026 23:05:41 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 27 Oct 2026 23:05:41 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 23:07:41 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 27 Oct 2026 23:07:43 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 23:07:43 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 23:08:17 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 27 Oct 2026 23:08:17 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 27 Oct 2026 23:08:17 GMT
ENV MYSQL_MAJOR=innovation
# Tue, 27 Oct 2026 23:08:17 GMT
ENV MYSQL_VERSION=26.10.0-1.el9
# Tue, 27 Oct 2026 23:08:17 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 27 Oct 2026 23:08:54 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 27 Oct 2026 23:08:54 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 27 Oct 2026 23:08:54 GMT
ENV MYSQL_SHELL_VERSION=26.10.0-1.el9
# Tue, 27 Oct 2026 23:09:39 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 27 Oct 2026 23:09:39 GMT
VOLUME [/var/lib/mysql]
# Tue, 27 Oct 2026 23:09:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 23:09:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 23:09:39 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 27 Oct 2026 23:09:39 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:1610bd8e525d37f7b01147980f0f660538a95e978eee8351a908a00d143c2910`  
		Last Modified: Tue, 27 Oct 2026 23:05:52 GMT  
		Size: 47.2 MB (47188107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac16b2e289d5e3b3f467ebc4e9a0bcf7f86912e39fae80a3c564f15a88c2466b`  
		Last Modified: Tue, 27 Oct 2026 23:10:04 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c61a0b298231054a50162fd8ba5f1663d9575339fda1abfa97cfea17bd5e8f87`  
		Last Modified: Tue, 27 Oct 2026 23:10:04 GMT  
		Size: 783.6 KB (783565 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2801c41ee6ad0d666bc4309612d991d09531f3297dd8ddbb463813c8967325c1`  
		Last Modified: Tue, 27 Oct 2026 23:10:04 GMT  
		Size: 6.2 MB (6186741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:def0bf29cc7b751404f7f318d68ec3aa529a8beda7975fcf62dbb9a8caa7fbab`  
		Last Modified: Tue, 27 Oct 2026 23:10:04 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ad863d106ceb7d3f7b41654346e301454334b7e494c49d03608dfd53ea74c0a`  
		Last Modified: Tue, 27 Oct 2026 23:10:05 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6e8373886396224aa79aacfa24c7067210b3b03249af3d15df749586398d458`  
		Last Modified: Tue, 27 Oct 2026 23:10:07 GMT  
		Size: 63.8 MB (63787570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:618abfb0ceb2f256a50c49283e301ffe6d90bf670639af6c3285bc316dde4a9a`  
		Last Modified: Tue, 27 Oct 2026 23:10:05 GMT  
		Size: 326.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53add8b74cb923c03864601ead8537c16e654fbdbeab2dcf44019ce56afda85e`  
		Last Modified: Tue, 27 Oct 2026 23:10:10 GMT  
		Size: 181.1 MB (181079201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f031910ef3c1d0e215ef20ed21e6aca465b9a868e5458ef2b096921e8b15d309`  
		Last Modified: Tue, 27 Oct 2026 23:10:06 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:latest` - unknown; unknown

```console
$ docker pull mysql@sha256:d0adcc86cc3bfc192c2dd8911f9d2ffa55eef14f97df509d5c61492c99aae422
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5334085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a51f02baf4a3a1bfdbd9ee424383a9147d6cc7207546a3b0deb7fafffddb200`

```dockerfile
```

-	Layers:
	-	`sha256:c1808d28dcbc17eb640423e5603d0a2be0c0faa45da0114f3a5f738ad7d8e3b1`  
		Last Modified: Tue, 27 Oct 2026 23:10:04 GMT  
		Size: 5.3 MB (5298766 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f27adb461b49aebbacd4550ea3751e7d8d4ce0328115dc5a6084889a6fc42e7a`  
		Last Modified: Tue, 27 Oct 2026 23:10:04 GMT  
		Size: 35.3 KB (35319 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:latest` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:b58efd11d883b862f7dd1077966de3a443d00c126952bc29023368927b6f92f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.5 MB (295459639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2dc3a37aad4fba70b9e8521751c7fb3146267829fb37fe54a717eea4c76d47b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 27 Oct 2026 23:05:32 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 27 Oct 2026 23:05:32 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 23:07:11 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 27 Oct 2026 23:07:13 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 23:07:13 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 23:07:54 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 27 Oct 2026 23:07:55 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 27 Oct 2026 23:07:55 GMT
ENV MYSQL_MAJOR=innovation
# Tue, 27 Oct 2026 23:07:55 GMT
ENV MYSQL_VERSION=26.10.0-1.el9
# Tue, 27 Oct 2026 23:07:55 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 27 Oct 2026 23:08:40 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 27 Oct 2026 23:08:40 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 27 Oct 2026 23:08:40 GMT
ENV MYSQL_SHELL_VERSION=26.10.0-1.el9
# Tue, 27 Oct 2026 23:09:33 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 27 Oct 2026 23:09:33 GMT
VOLUME [/var/lib/mysql]
# Tue, 27 Oct 2026 23:09:33 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 23:09:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 23:09:33 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 27 Oct 2026 23:09:33 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:11f62504eea6ae8bacf9c501835f2547c0d6c7f6ff85fd7a67912c41a123c561`  
		Last Modified: Tue, 27 Oct 2026 23:05:43 GMT  
		Size: 45.7 MB (45732830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4e5d43c68979146dbb3b749889e44c0df6b13705a3f8d77363860f1948855d1`  
		Last Modified: Tue, 27 Oct 2026 23:09:59 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4aa276b8ad98ea5a94a307c51cfa087e983a9a3b2b3493fcfa4ebe1a2ca4ca6`  
		Last Modified: Tue, 27 Oct 2026 23:09:59 GMT  
		Size: 737.5 KB (737531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0d59f31e167a0280a1abacc18ded1666cf09b143e77c2fe75430221fcf88b97`  
		Last Modified: Tue, 27 Oct 2026 23:09:59 GMT  
		Size: 5.8 MB (5806804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dd2e8db297eaf92240eaee30a70e6ac6d0327b710ccf1916e12e9f1aba94003`  
		Last Modified: Tue, 27 Oct 2026 23:09:59 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dbfa79bc208c00ab3ce9eb587872ead8aa0409625ab0388ec466292a35e689e`  
		Last Modified: Tue, 27 Oct 2026 23:10:00 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3740231fab18490409e308e9566caf7c08fef0b9fa26a794dc399cd8785bc3e`  
		Last Modified: Tue, 27 Oct 2026 23:10:03 GMT  
		Size: 63.8 MB (63821777 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f641eea4863ab02c549bd4aec1451b6852cf50c885a71dd2993969a83f0b4e10`  
		Last Modified: Tue, 27 Oct 2026 23:10:00 GMT  
		Size: 326.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9bc9578e067546beeda8a1e501e1850f1f7f152b5331e613df3a2dc565a7b42`  
		Last Modified: Tue, 27 Oct 2026 23:10:06 GMT  
		Size: 179.4 MB (179351313 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30c35ea3883909773fc3524f62d1dd027bb8c7e05ae0d6e9bd6bb481d9414b86`  
		Last Modified: Tue, 27 Oct 2026 23:10:01 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:latest` - unknown; unknown

```console
$ docker pull mysql@sha256:38be110e6029f2834125e096980b80c780800c82084b29754ad5e66bd7a453ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5332899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b00daf0ce3011b7bb69edcf8bc471ad09a83978c2a9d02764e2839d1c5fb5be`

```dockerfile
```

-	Layers:
	-	`sha256:eec04a9714639f43626432e4538d76f2eb6fb83e0f9b1ddaffded5e78eba31c8`  
		Last Modified: Tue, 27 Oct 2026 23:09:59 GMT  
		Size: 5.3 MB (5297239 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:def8b01477cff5561c2af633ec66f08daff73e75686692bc550778886e66baba`  
		Last Modified: Tue, 27 Oct 2026 23:09:58 GMT  
		Size: 35.7 KB (35660 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:lts`

```console
$ docker pull mysql@sha256:86b390ef642f89a0157d6215dee33ddc928b8b0ecab173117f56f6c40cb24eab
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:lts` - linux; amd64

```console
$ docker pull mysql@sha256:b055723a00649bde974d2e3d3ba486725f279c4a4bb4d24d69f36b11fafa7b79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.3 MB (270272911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7e157ee39fae2805d803f0d73e1fa116a6b9d2c2d1eeafcce15dcb0409595a1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 27 Oct 2026 23:05:41 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 27 Oct 2026 23:05:41 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 23:07:17 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 27 Oct 2026 23:07:19 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 23:07:19 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 23:07:53 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 27 Oct 2026 23:07:54 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 27 Oct 2026 23:07:54 GMT
ENV MYSQL_MAJOR=9.7
# Tue, 27 Oct 2026 23:07:54 GMT
ENV MYSQL_VERSION=9.7.4-1.el9
# Tue, 27 Oct 2026 23:07:54 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 27 Oct 2026 23:08:30 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 27 Oct 2026 23:08:30 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 27 Oct 2026 23:08:30 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Tue, 27 Oct 2026 23:09:16 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 27 Oct 2026 23:09:16 GMT
VOLUME [/var/lib/mysql]
# Tue, 27 Oct 2026 23:09:16 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 23:09:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 23:09:16 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 27 Oct 2026 23:09:16 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:1610bd8e525d37f7b01147980f0f660538a95e978eee8351a908a00d143c2910`  
		Last Modified: Tue, 27 Oct 2026 23:05:52 GMT  
		Size: 47.2 MB (47188107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4143b5578588023307b710623d1362a77af4557a51c1c72983aca1fe5d5969b4`  
		Last Modified: Tue, 27 Oct 2026 23:09:41 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e752cc14300e79365e777ca9f56fdd5049e87964f423ca9b30cfc2f34d998130`  
		Last Modified: Tue, 27 Oct 2026 23:09:41 GMT  
		Size: 783.6 KB (783565 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f86c3ea7eb65233d3623889207c2fa59578ff8f3f96cb8021ac1cad5c71905e1`  
		Last Modified: Tue, 27 Oct 2026 23:09:47 GMT  
		Size: 6.2 MB (6186670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a4f18e225a8e100697eefb85ef71bc2675ac5fc5c7d233725b2557ec3a6e682`  
		Last Modified: Tue, 27 Oct 2026 23:09:41 GMT  
		Size: 2.6 KB (2609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccf592e9f5f03d475e62afe08b3171011df9b5688d2972563490cfe84463bb92`  
		Last Modified: Tue, 27 Oct 2026 23:09:47 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbf530c6006f922cc50611fcc08b3d661b97b60f70b7812a85a09d1d90cc9df8`  
		Last Modified: Tue, 27 Oct 2026 23:09:49 GMT  
		Size: 57.2 MB (57181336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0f6e161442abaa2d8353dc6a5643b48b36705e3ca04e3a0cd0666d6abac10ac`  
		Last Modified: Tue, 27 Oct 2026 23:09:47 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b0d638b2c56561298687d818755099b61e2fb2c2b285ee624476deb5c31725c`  
		Last Modified: Tue, 27 Oct 2026 23:09:52 GMT  
		Size: 158.9 MB (158923859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a529268c9003a190ebea0213fdc76732c21965775903a726f491e0f98a8747e8`  
		Last Modified: Tue, 27 Oct 2026 23:09:49 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:lts` - unknown; unknown

```console
$ docker pull mysql@sha256:60977bfa48c5ae98f08d7da9951934958df47dbfae3cd87c53bbd3d473f77671
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16815691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0d3c779315f822c7b868c21bcf1f5e4e1e53a8bce2c1a8df0c8bd9a2c431eb8`

```dockerfile
```

-	Layers:
	-	`sha256:519b68ff55d399ca735abe64138b535101bc250eb7c1af73e5bc065760c6e0fc`  
		Last Modified: Tue, 27 Oct 2026 23:09:48 GMT  
		Size: 16.8 MB (16781483 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:94790361c0b481c83428a0fe9c9cea270e64f65d4290c95ff7fed1cc2641ad7c`  
		Last Modified: Tue, 27 Oct 2026 23:09:47 GMT  
		Size: 34.2 KB (34208 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:lts` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:90ef00bc43b35a8e156262dda9b778a6d2862fe44c547e63c606f0f75950bcc6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.7 MB (266650280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63dc4a41ae6ad18bfb110c38099a7de06e2836f4a24914334e18eb8bf53cb80d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 27 Oct 2026 23:05:32 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 27 Oct 2026 23:05:32 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 23:07:18 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 27 Oct 2026 23:07:19 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 23:07:19 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 23:07:59 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 27 Oct 2026 23:08:00 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 27 Oct 2026 23:08:00 GMT
ENV MYSQL_MAJOR=9.7
# Tue, 27 Oct 2026 23:08:00 GMT
ENV MYSQL_VERSION=9.7.4-1.el9
# Tue, 27 Oct 2026 23:08:00 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 27 Oct 2026 23:08:44 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 27 Oct 2026 23:08:44 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 27 Oct 2026 23:08:44 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Tue, 27 Oct 2026 23:09:36 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 27 Oct 2026 23:09:36 GMT
VOLUME [/var/lib/mysql]
# Tue, 27 Oct 2026 23:09:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 23:09:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 23:09:36 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 27 Oct 2026 23:09:36 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:11f62504eea6ae8bacf9c501835f2547c0d6c7f6ff85fd7a67912c41a123c561`  
		Last Modified: Tue, 27 Oct 2026 23:05:43 GMT  
		Size: 45.7 MB (45732830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4143b5578588023307b710623d1362a77af4557a51c1c72983aca1fe5d5969b4`  
		Last Modified: Tue, 27 Oct 2026 23:09:41 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f72bb6509d0749be9a66b9a85f6b2b256f14fc9ab3310db6598455b74237e1d7`  
		Last Modified: Tue, 27 Oct 2026 23:10:12 GMT  
		Size: 737.5 KB (737532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b52f52bdb8bb122c799204bccede6e80791492b685c4002bbeda01f23091f7f`  
		Last Modified: Tue, 27 Oct 2026 23:10:12 GMT  
		Size: 5.8 MB (5806801 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64e8d0c7a96903ff3d09cade02dd5b956d1a25aaa1f1588cf2f458718724e321`  
		Last Modified: Tue, 27 Oct 2026 23:10:12 GMT  
		Size: 2.6 KB (2610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12a7e8fa1fb5c56844009c0c11b13843607d6446dbecea9b41ab993befbe055c`  
		Last Modified: Tue, 27 Oct 2026 23:10:13 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3128d823d4dcb2f2b3314c5da9d17a718550eb1afbf809f9cfaca5253fb7c67`  
		Last Modified: Tue, 27 Oct 2026 23:10:15 GMT  
		Size: 57.2 MB (57170568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:520c0a00d2782aabc7ffcdbcb07db648dcd659856b996a4ed3012540159f3b47`  
		Last Modified: Tue, 27 Oct 2026 23:10:13 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93259a0074dd506958d450a6bc944af9c2fbd7850642316e8455831713daae69`  
		Last Modified: Tue, 27 Oct 2026 23:10:17 GMT  
		Size: 157.2 MB (157193173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:622bdd2ecae67951f979472c66f3193952889fc4ee144891cbe3956ebbcf64b0`  
		Last Modified: Tue, 27 Oct 2026 23:10:14 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:lts` - unknown; unknown

```console
$ docker pull mysql@sha256:4d72b7aebf1d9a14b302939d7a3c10f4e5c5b155258208c46c539d75d24bc032
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16814431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d092267b5652df3217e5ea2366f34fd4bbf90a79ee05df45750ca5988f8a14d7`

```dockerfile
```

-	Layers:
	-	`sha256:ebc21913389c0ea1958fe6c96646c33d303fa63823c8de8a44eaa7f67c075986`  
		Last Modified: Tue, 27 Oct 2026 23:10:12 GMT  
		Size: 16.8 MB (16779919 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0ed6a31c94185469dcab7b6eff8595d89f69e057c13f387947416857a142bba0`  
		Last Modified: Tue, 27 Oct 2026 23:10:12 GMT  
		Size: 34.5 KB (34512 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:lts-oracle`

```console
$ docker pull mysql@sha256:86b390ef642f89a0157d6215dee33ddc928b8b0ecab173117f56f6c40cb24eab
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:lts-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:b055723a00649bde974d2e3d3ba486725f279c4a4bb4d24d69f36b11fafa7b79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.3 MB (270272911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7e157ee39fae2805d803f0d73e1fa116a6b9d2c2d1eeafcce15dcb0409595a1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 27 Oct 2026 23:05:41 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 27 Oct 2026 23:05:41 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 23:07:17 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 27 Oct 2026 23:07:19 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 23:07:19 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 23:07:53 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 27 Oct 2026 23:07:54 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 27 Oct 2026 23:07:54 GMT
ENV MYSQL_MAJOR=9.7
# Tue, 27 Oct 2026 23:07:54 GMT
ENV MYSQL_VERSION=9.7.4-1.el9
# Tue, 27 Oct 2026 23:07:54 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 27 Oct 2026 23:08:30 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 27 Oct 2026 23:08:30 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 27 Oct 2026 23:08:30 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Tue, 27 Oct 2026 23:09:16 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 27 Oct 2026 23:09:16 GMT
VOLUME [/var/lib/mysql]
# Tue, 27 Oct 2026 23:09:16 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 23:09:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 23:09:16 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 27 Oct 2026 23:09:16 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:1610bd8e525d37f7b01147980f0f660538a95e978eee8351a908a00d143c2910`  
		Last Modified: Tue, 27 Oct 2026 23:05:52 GMT  
		Size: 47.2 MB (47188107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4143b5578588023307b710623d1362a77af4557a51c1c72983aca1fe5d5969b4`  
		Last Modified: Tue, 27 Oct 2026 23:09:41 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e752cc14300e79365e777ca9f56fdd5049e87964f423ca9b30cfc2f34d998130`  
		Last Modified: Tue, 27 Oct 2026 23:09:41 GMT  
		Size: 783.6 KB (783565 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f86c3ea7eb65233d3623889207c2fa59578ff8f3f96cb8021ac1cad5c71905e1`  
		Last Modified: Tue, 27 Oct 2026 23:09:47 GMT  
		Size: 6.2 MB (6186670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a4f18e225a8e100697eefb85ef71bc2675ac5fc5c7d233725b2557ec3a6e682`  
		Last Modified: Tue, 27 Oct 2026 23:09:41 GMT  
		Size: 2.6 KB (2609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccf592e9f5f03d475e62afe08b3171011df9b5688d2972563490cfe84463bb92`  
		Last Modified: Tue, 27 Oct 2026 23:09:47 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbf530c6006f922cc50611fcc08b3d661b97b60f70b7812a85a09d1d90cc9df8`  
		Last Modified: Tue, 27 Oct 2026 23:09:49 GMT  
		Size: 57.2 MB (57181336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0f6e161442abaa2d8353dc6a5643b48b36705e3ca04e3a0cd0666d6abac10ac`  
		Last Modified: Tue, 27 Oct 2026 23:09:47 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b0d638b2c56561298687d818755099b61e2fb2c2b285ee624476deb5c31725c`  
		Last Modified: Tue, 27 Oct 2026 23:09:52 GMT  
		Size: 158.9 MB (158923859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a529268c9003a190ebea0213fdc76732c21965775903a726f491e0f98a8747e8`  
		Last Modified: Tue, 27 Oct 2026 23:09:49 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:lts-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:60977bfa48c5ae98f08d7da9951934958df47dbfae3cd87c53bbd3d473f77671
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16815691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0d3c779315f822c7b868c21bcf1f5e4e1e53a8bce2c1a8df0c8bd9a2c431eb8`

```dockerfile
```

-	Layers:
	-	`sha256:519b68ff55d399ca735abe64138b535101bc250eb7c1af73e5bc065760c6e0fc`  
		Last Modified: Tue, 27 Oct 2026 23:09:48 GMT  
		Size: 16.8 MB (16781483 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:94790361c0b481c83428a0fe9c9cea270e64f65d4290c95ff7fed1cc2641ad7c`  
		Last Modified: Tue, 27 Oct 2026 23:09:47 GMT  
		Size: 34.2 KB (34208 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:lts-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:90ef00bc43b35a8e156262dda9b778a6d2862fe44c547e63c606f0f75950bcc6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.7 MB (266650280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63dc4a41ae6ad18bfb110c38099a7de06e2836f4a24914334e18eb8bf53cb80d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 27 Oct 2026 23:05:32 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 27 Oct 2026 23:05:32 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 23:07:18 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 27 Oct 2026 23:07:19 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 23:07:19 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 23:07:59 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 27 Oct 2026 23:08:00 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 27 Oct 2026 23:08:00 GMT
ENV MYSQL_MAJOR=9.7
# Tue, 27 Oct 2026 23:08:00 GMT
ENV MYSQL_VERSION=9.7.4-1.el9
# Tue, 27 Oct 2026 23:08:00 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 27 Oct 2026 23:08:44 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 27 Oct 2026 23:08:44 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 27 Oct 2026 23:08:44 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Tue, 27 Oct 2026 23:09:36 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 27 Oct 2026 23:09:36 GMT
VOLUME [/var/lib/mysql]
# Tue, 27 Oct 2026 23:09:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 23:09:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 23:09:36 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 27 Oct 2026 23:09:36 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:11f62504eea6ae8bacf9c501835f2547c0d6c7f6ff85fd7a67912c41a123c561`  
		Last Modified: Tue, 27 Oct 2026 23:05:43 GMT  
		Size: 45.7 MB (45732830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4143b5578588023307b710623d1362a77af4557a51c1c72983aca1fe5d5969b4`  
		Last Modified: Tue, 27 Oct 2026 23:09:41 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f72bb6509d0749be9a66b9a85f6b2b256f14fc9ab3310db6598455b74237e1d7`  
		Last Modified: Tue, 27 Oct 2026 23:10:12 GMT  
		Size: 737.5 KB (737532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b52f52bdb8bb122c799204bccede6e80791492b685c4002bbeda01f23091f7f`  
		Last Modified: Tue, 27 Oct 2026 23:10:12 GMT  
		Size: 5.8 MB (5806801 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64e8d0c7a96903ff3d09cade02dd5b956d1a25aaa1f1588cf2f458718724e321`  
		Last Modified: Tue, 27 Oct 2026 23:10:12 GMT  
		Size: 2.6 KB (2610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12a7e8fa1fb5c56844009c0c11b13843607d6446dbecea9b41ab993befbe055c`  
		Last Modified: Tue, 27 Oct 2026 23:10:13 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3128d823d4dcb2f2b3314c5da9d17a718550eb1afbf809f9cfaca5253fb7c67`  
		Last Modified: Tue, 27 Oct 2026 23:10:15 GMT  
		Size: 57.2 MB (57170568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:520c0a00d2782aabc7ffcdbcb07db648dcd659856b996a4ed3012540159f3b47`  
		Last Modified: Tue, 27 Oct 2026 23:10:13 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93259a0074dd506958d450a6bc944af9c2fbd7850642316e8455831713daae69`  
		Last Modified: Tue, 27 Oct 2026 23:10:17 GMT  
		Size: 157.2 MB (157193173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:622bdd2ecae67951f979472c66f3193952889fc4ee144891cbe3956ebbcf64b0`  
		Last Modified: Tue, 27 Oct 2026 23:10:14 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:lts-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:4d72b7aebf1d9a14b302939d7a3c10f4e5c5b155258208c46c539d75d24bc032
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16814431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d092267b5652df3217e5ea2366f34fd4bbf90a79ee05df45750ca5988f8a14d7`

```dockerfile
```

-	Layers:
	-	`sha256:ebc21913389c0ea1958fe6c96646c33d303fa63823c8de8a44eaa7f67c075986`  
		Last Modified: Tue, 27 Oct 2026 23:10:12 GMT  
		Size: 16.8 MB (16779919 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0ed6a31c94185469dcab7b6eff8595d89f69e057c13f387947416857a142bba0`  
		Last Modified: Tue, 27 Oct 2026 23:10:12 GMT  
		Size: 34.5 KB (34512 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:lts-oraclelinux9`

```console
$ docker pull mysql@sha256:86b390ef642f89a0157d6215dee33ddc928b8b0ecab173117f56f6c40cb24eab
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:lts-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:b055723a00649bde974d2e3d3ba486725f279c4a4bb4d24d69f36b11fafa7b79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.3 MB (270272911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7e157ee39fae2805d803f0d73e1fa116a6b9d2c2d1eeafcce15dcb0409595a1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 27 Oct 2026 23:05:41 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 27 Oct 2026 23:05:41 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 23:07:17 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 27 Oct 2026 23:07:19 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 23:07:19 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 23:07:53 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 27 Oct 2026 23:07:54 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 27 Oct 2026 23:07:54 GMT
ENV MYSQL_MAJOR=9.7
# Tue, 27 Oct 2026 23:07:54 GMT
ENV MYSQL_VERSION=9.7.4-1.el9
# Tue, 27 Oct 2026 23:07:54 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 27 Oct 2026 23:08:30 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 27 Oct 2026 23:08:30 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 27 Oct 2026 23:08:30 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Tue, 27 Oct 2026 23:09:16 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 27 Oct 2026 23:09:16 GMT
VOLUME [/var/lib/mysql]
# Tue, 27 Oct 2026 23:09:16 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 23:09:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 23:09:16 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 27 Oct 2026 23:09:16 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:1610bd8e525d37f7b01147980f0f660538a95e978eee8351a908a00d143c2910`  
		Last Modified: Tue, 27 Oct 2026 23:05:52 GMT  
		Size: 47.2 MB (47188107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4143b5578588023307b710623d1362a77af4557a51c1c72983aca1fe5d5969b4`  
		Last Modified: Tue, 27 Oct 2026 23:09:41 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e752cc14300e79365e777ca9f56fdd5049e87964f423ca9b30cfc2f34d998130`  
		Last Modified: Tue, 27 Oct 2026 23:09:41 GMT  
		Size: 783.6 KB (783565 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f86c3ea7eb65233d3623889207c2fa59578ff8f3f96cb8021ac1cad5c71905e1`  
		Last Modified: Tue, 27 Oct 2026 23:09:47 GMT  
		Size: 6.2 MB (6186670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a4f18e225a8e100697eefb85ef71bc2675ac5fc5c7d233725b2557ec3a6e682`  
		Last Modified: Tue, 27 Oct 2026 23:09:41 GMT  
		Size: 2.6 KB (2609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccf592e9f5f03d475e62afe08b3171011df9b5688d2972563490cfe84463bb92`  
		Last Modified: Tue, 27 Oct 2026 23:09:47 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbf530c6006f922cc50611fcc08b3d661b97b60f70b7812a85a09d1d90cc9df8`  
		Last Modified: Tue, 27 Oct 2026 23:09:49 GMT  
		Size: 57.2 MB (57181336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0f6e161442abaa2d8353dc6a5643b48b36705e3ca04e3a0cd0666d6abac10ac`  
		Last Modified: Tue, 27 Oct 2026 23:09:47 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b0d638b2c56561298687d818755099b61e2fb2c2b285ee624476deb5c31725c`  
		Last Modified: Tue, 27 Oct 2026 23:09:52 GMT  
		Size: 158.9 MB (158923859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a529268c9003a190ebea0213fdc76732c21965775903a726f491e0f98a8747e8`  
		Last Modified: Tue, 27 Oct 2026 23:09:49 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:lts-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:60977bfa48c5ae98f08d7da9951934958df47dbfae3cd87c53bbd3d473f77671
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16815691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0d3c779315f822c7b868c21bcf1f5e4e1e53a8bce2c1a8df0c8bd9a2c431eb8`

```dockerfile
```

-	Layers:
	-	`sha256:519b68ff55d399ca735abe64138b535101bc250eb7c1af73e5bc065760c6e0fc`  
		Last Modified: Tue, 27 Oct 2026 23:09:48 GMT  
		Size: 16.8 MB (16781483 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:94790361c0b481c83428a0fe9c9cea270e64f65d4290c95ff7fed1cc2641ad7c`  
		Last Modified: Tue, 27 Oct 2026 23:09:47 GMT  
		Size: 34.2 KB (34208 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:lts-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:90ef00bc43b35a8e156262dda9b778a6d2862fe44c547e63c606f0f75950bcc6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.7 MB (266650280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63dc4a41ae6ad18bfb110c38099a7de06e2836f4a24914334e18eb8bf53cb80d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 27 Oct 2026 23:05:32 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 27 Oct 2026 23:05:32 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 23:07:18 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 27 Oct 2026 23:07:19 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 23:07:19 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 23:07:59 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 27 Oct 2026 23:08:00 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 27 Oct 2026 23:08:00 GMT
ENV MYSQL_MAJOR=9.7
# Tue, 27 Oct 2026 23:08:00 GMT
ENV MYSQL_VERSION=9.7.4-1.el9
# Tue, 27 Oct 2026 23:08:00 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 27 Oct 2026 23:08:44 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 27 Oct 2026 23:08:44 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 27 Oct 2026 23:08:44 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Tue, 27 Oct 2026 23:09:36 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 27 Oct 2026 23:09:36 GMT
VOLUME [/var/lib/mysql]
# Tue, 27 Oct 2026 23:09:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 23:09:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 23:09:36 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 27 Oct 2026 23:09:36 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:11f62504eea6ae8bacf9c501835f2547c0d6c7f6ff85fd7a67912c41a123c561`  
		Last Modified: Tue, 27 Oct 2026 23:05:43 GMT  
		Size: 45.7 MB (45732830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4143b5578588023307b710623d1362a77af4557a51c1c72983aca1fe5d5969b4`  
		Last Modified: Tue, 27 Oct 2026 23:09:41 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f72bb6509d0749be9a66b9a85f6b2b256f14fc9ab3310db6598455b74237e1d7`  
		Last Modified: Tue, 27 Oct 2026 23:10:12 GMT  
		Size: 737.5 KB (737532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b52f52bdb8bb122c799204bccede6e80791492b685c4002bbeda01f23091f7f`  
		Last Modified: Tue, 27 Oct 2026 23:10:12 GMT  
		Size: 5.8 MB (5806801 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64e8d0c7a96903ff3d09cade02dd5b956d1a25aaa1f1588cf2f458718724e321`  
		Last Modified: Tue, 27 Oct 2026 23:10:12 GMT  
		Size: 2.6 KB (2610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12a7e8fa1fb5c56844009c0c11b13843607d6446dbecea9b41ab993befbe055c`  
		Last Modified: Tue, 27 Oct 2026 23:10:13 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3128d823d4dcb2f2b3314c5da9d17a718550eb1afbf809f9cfaca5253fb7c67`  
		Last Modified: Tue, 27 Oct 2026 23:10:15 GMT  
		Size: 57.2 MB (57170568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:520c0a00d2782aabc7ffcdbcb07db648dcd659856b996a4ed3012540159f3b47`  
		Last Modified: Tue, 27 Oct 2026 23:10:13 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93259a0074dd506958d450a6bc944af9c2fbd7850642316e8455831713daae69`  
		Last Modified: Tue, 27 Oct 2026 23:10:17 GMT  
		Size: 157.2 MB (157193173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:622bdd2ecae67951f979472c66f3193952889fc4ee144891cbe3956ebbcf64b0`  
		Last Modified: Tue, 27 Oct 2026 23:10:14 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:lts-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:4d72b7aebf1d9a14b302939d7a3c10f4e5c5b155258208c46c539d75d24bc032
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16814431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d092267b5652df3217e5ea2366f34fd4bbf90a79ee05df45750ca5988f8a14d7`

```dockerfile
```

-	Layers:
	-	`sha256:ebc21913389c0ea1958fe6c96646c33d303fa63823c8de8a44eaa7f67c075986`  
		Last Modified: Tue, 27 Oct 2026 23:10:12 GMT  
		Size: 16.8 MB (16779919 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0ed6a31c94185469dcab7b6eff8595d89f69e057c13f387947416857a142bba0`  
		Last Modified: Tue, 27 Oct 2026 23:10:12 GMT  
		Size: 34.5 KB (34512 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:oracle`

```console
$ docker pull mysql@sha256:7b16ec7caa94ca7e92f4c5ec287de69d2e8738db056ceb629022951a6f6d910b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:oracle` - linux; amd64

```console
$ docker pull mysql@sha256:633e1a8f622f84e9dbd604ab0be4b95211f9f153fdb9832a47c54982d2d43c54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.0 MB (299034565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd99e7baa0197cef65b56edc498c0b098918c875aa0047e0b6f2b56e3b6dd45a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 27 Oct 2026 23:05:41 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 27 Oct 2026 23:05:41 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 23:07:41 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 27 Oct 2026 23:07:43 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 23:07:43 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 23:08:17 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 27 Oct 2026 23:08:17 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 27 Oct 2026 23:08:17 GMT
ENV MYSQL_MAJOR=innovation
# Tue, 27 Oct 2026 23:08:17 GMT
ENV MYSQL_VERSION=26.10.0-1.el9
# Tue, 27 Oct 2026 23:08:17 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 27 Oct 2026 23:08:54 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 27 Oct 2026 23:08:54 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 27 Oct 2026 23:08:54 GMT
ENV MYSQL_SHELL_VERSION=26.10.0-1.el9
# Tue, 27 Oct 2026 23:09:39 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 27 Oct 2026 23:09:39 GMT
VOLUME [/var/lib/mysql]
# Tue, 27 Oct 2026 23:09:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 23:09:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 23:09:39 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 27 Oct 2026 23:09:39 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:1610bd8e525d37f7b01147980f0f660538a95e978eee8351a908a00d143c2910`  
		Last Modified: Tue, 27 Oct 2026 23:05:52 GMT  
		Size: 47.2 MB (47188107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac16b2e289d5e3b3f467ebc4e9a0bcf7f86912e39fae80a3c564f15a88c2466b`  
		Last Modified: Tue, 27 Oct 2026 23:10:04 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c61a0b298231054a50162fd8ba5f1663d9575339fda1abfa97cfea17bd5e8f87`  
		Last Modified: Tue, 27 Oct 2026 23:10:04 GMT  
		Size: 783.6 KB (783565 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2801c41ee6ad0d666bc4309612d991d09531f3297dd8ddbb463813c8967325c1`  
		Last Modified: Tue, 27 Oct 2026 23:10:04 GMT  
		Size: 6.2 MB (6186741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:def0bf29cc7b751404f7f318d68ec3aa529a8beda7975fcf62dbb9a8caa7fbab`  
		Last Modified: Tue, 27 Oct 2026 23:10:04 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ad863d106ceb7d3f7b41654346e301454334b7e494c49d03608dfd53ea74c0a`  
		Last Modified: Tue, 27 Oct 2026 23:10:05 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6e8373886396224aa79aacfa24c7067210b3b03249af3d15df749586398d458`  
		Last Modified: Tue, 27 Oct 2026 23:10:07 GMT  
		Size: 63.8 MB (63787570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:618abfb0ceb2f256a50c49283e301ffe6d90bf670639af6c3285bc316dde4a9a`  
		Last Modified: Tue, 27 Oct 2026 23:10:05 GMT  
		Size: 326.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53add8b74cb923c03864601ead8537c16e654fbdbeab2dcf44019ce56afda85e`  
		Last Modified: Tue, 27 Oct 2026 23:10:10 GMT  
		Size: 181.1 MB (181079201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f031910ef3c1d0e215ef20ed21e6aca465b9a868e5458ef2b096921e8b15d309`  
		Last Modified: Tue, 27 Oct 2026 23:10:06 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:d0adcc86cc3bfc192c2dd8911f9d2ffa55eef14f97df509d5c61492c99aae422
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5334085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a51f02baf4a3a1bfdbd9ee424383a9147d6cc7207546a3b0deb7fafffddb200`

```dockerfile
```

-	Layers:
	-	`sha256:c1808d28dcbc17eb640423e5603d0a2be0c0faa45da0114f3a5f738ad7d8e3b1`  
		Last Modified: Tue, 27 Oct 2026 23:10:04 GMT  
		Size: 5.3 MB (5298766 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f27adb461b49aebbacd4550ea3751e7d8d4ce0328115dc5a6084889a6fc42e7a`  
		Last Modified: Tue, 27 Oct 2026 23:10:04 GMT  
		Size: 35.3 KB (35319 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:b58efd11d883b862f7dd1077966de3a443d00c126952bc29023368927b6f92f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.5 MB (295459639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2dc3a37aad4fba70b9e8521751c7fb3146267829fb37fe54a717eea4c76d47b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 27 Oct 2026 23:05:32 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 27 Oct 2026 23:05:32 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 23:07:11 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 27 Oct 2026 23:07:13 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 23:07:13 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 23:07:54 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 27 Oct 2026 23:07:55 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 27 Oct 2026 23:07:55 GMT
ENV MYSQL_MAJOR=innovation
# Tue, 27 Oct 2026 23:07:55 GMT
ENV MYSQL_VERSION=26.10.0-1.el9
# Tue, 27 Oct 2026 23:07:55 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 27 Oct 2026 23:08:40 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 27 Oct 2026 23:08:40 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 27 Oct 2026 23:08:40 GMT
ENV MYSQL_SHELL_VERSION=26.10.0-1.el9
# Tue, 27 Oct 2026 23:09:33 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 27 Oct 2026 23:09:33 GMT
VOLUME [/var/lib/mysql]
# Tue, 27 Oct 2026 23:09:33 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 23:09:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 23:09:33 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 27 Oct 2026 23:09:33 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:11f62504eea6ae8bacf9c501835f2547c0d6c7f6ff85fd7a67912c41a123c561`  
		Last Modified: Tue, 27 Oct 2026 23:05:43 GMT  
		Size: 45.7 MB (45732830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4e5d43c68979146dbb3b749889e44c0df6b13705a3f8d77363860f1948855d1`  
		Last Modified: Tue, 27 Oct 2026 23:09:59 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4aa276b8ad98ea5a94a307c51cfa087e983a9a3b2b3493fcfa4ebe1a2ca4ca6`  
		Last Modified: Tue, 27 Oct 2026 23:09:59 GMT  
		Size: 737.5 KB (737531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0d59f31e167a0280a1abacc18ded1666cf09b143e77c2fe75430221fcf88b97`  
		Last Modified: Tue, 27 Oct 2026 23:09:59 GMT  
		Size: 5.8 MB (5806804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dd2e8db297eaf92240eaee30a70e6ac6d0327b710ccf1916e12e9f1aba94003`  
		Last Modified: Tue, 27 Oct 2026 23:09:59 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dbfa79bc208c00ab3ce9eb587872ead8aa0409625ab0388ec466292a35e689e`  
		Last Modified: Tue, 27 Oct 2026 23:10:00 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3740231fab18490409e308e9566caf7c08fef0b9fa26a794dc399cd8785bc3e`  
		Last Modified: Tue, 27 Oct 2026 23:10:03 GMT  
		Size: 63.8 MB (63821777 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f641eea4863ab02c549bd4aec1451b6852cf50c885a71dd2993969a83f0b4e10`  
		Last Modified: Tue, 27 Oct 2026 23:10:00 GMT  
		Size: 326.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9bc9578e067546beeda8a1e501e1850f1f7f152b5331e613df3a2dc565a7b42`  
		Last Modified: Tue, 27 Oct 2026 23:10:06 GMT  
		Size: 179.4 MB (179351313 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30c35ea3883909773fc3524f62d1dd027bb8c7e05ae0d6e9bd6bb481d9414b86`  
		Last Modified: Tue, 27 Oct 2026 23:10:01 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:38be110e6029f2834125e096980b80c780800c82084b29754ad5e66bd7a453ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5332899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b00daf0ce3011b7bb69edcf8bc471ad09a83978c2a9d02764e2839d1c5fb5be`

```dockerfile
```

-	Layers:
	-	`sha256:eec04a9714639f43626432e4538d76f2eb6fb83e0f9b1ddaffded5e78eba31c8`  
		Last Modified: Tue, 27 Oct 2026 23:09:59 GMT  
		Size: 5.3 MB (5297239 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:def8b01477cff5561c2af633ec66f08daff73e75686692bc550778886e66baba`  
		Last Modified: Tue, 27 Oct 2026 23:09:58 GMT  
		Size: 35.7 KB (35660 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:oraclelinux9`

```console
$ docker pull mysql@sha256:7b16ec7caa94ca7e92f4c5ec287de69d2e8738db056ceb629022951a6f6d910b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:633e1a8f622f84e9dbd604ab0be4b95211f9f153fdb9832a47c54982d2d43c54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.0 MB (299034565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd99e7baa0197cef65b56edc498c0b098918c875aa0047e0b6f2b56e3b6dd45a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 27 Oct 2026 23:05:41 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 27 Oct 2026 23:05:41 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 23:07:41 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 27 Oct 2026 23:07:43 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 23:07:43 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 23:08:17 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 27 Oct 2026 23:08:17 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 27 Oct 2026 23:08:17 GMT
ENV MYSQL_MAJOR=innovation
# Tue, 27 Oct 2026 23:08:17 GMT
ENV MYSQL_VERSION=26.10.0-1.el9
# Tue, 27 Oct 2026 23:08:17 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 27 Oct 2026 23:08:54 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 27 Oct 2026 23:08:54 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 27 Oct 2026 23:08:54 GMT
ENV MYSQL_SHELL_VERSION=26.10.0-1.el9
# Tue, 27 Oct 2026 23:09:39 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 27 Oct 2026 23:09:39 GMT
VOLUME [/var/lib/mysql]
# Tue, 27 Oct 2026 23:09:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 23:09:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 23:09:39 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 27 Oct 2026 23:09:39 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:1610bd8e525d37f7b01147980f0f660538a95e978eee8351a908a00d143c2910`  
		Last Modified: Tue, 27 Oct 2026 23:05:52 GMT  
		Size: 47.2 MB (47188107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac16b2e289d5e3b3f467ebc4e9a0bcf7f86912e39fae80a3c564f15a88c2466b`  
		Last Modified: Tue, 27 Oct 2026 23:10:04 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c61a0b298231054a50162fd8ba5f1663d9575339fda1abfa97cfea17bd5e8f87`  
		Last Modified: Tue, 27 Oct 2026 23:10:04 GMT  
		Size: 783.6 KB (783565 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2801c41ee6ad0d666bc4309612d991d09531f3297dd8ddbb463813c8967325c1`  
		Last Modified: Tue, 27 Oct 2026 23:10:04 GMT  
		Size: 6.2 MB (6186741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:def0bf29cc7b751404f7f318d68ec3aa529a8beda7975fcf62dbb9a8caa7fbab`  
		Last Modified: Tue, 27 Oct 2026 23:10:04 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ad863d106ceb7d3f7b41654346e301454334b7e494c49d03608dfd53ea74c0a`  
		Last Modified: Tue, 27 Oct 2026 23:10:05 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6e8373886396224aa79aacfa24c7067210b3b03249af3d15df749586398d458`  
		Last Modified: Tue, 27 Oct 2026 23:10:07 GMT  
		Size: 63.8 MB (63787570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:618abfb0ceb2f256a50c49283e301ffe6d90bf670639af6c3285bc316dde4a9a`  
		Last Modified: Tue, 27 Oct 2026 23:10:05 GMT  
		Size: 326.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53add8b74cb923c03864601ead8537c16e654fbdbeab2dcf44019ce56afda85e`  
		Last Modified: Tue, 27 Oct 2026 23:10:10 GMT  
		Size: 181.1 MB (181079201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f031910ef3c1d0e215ef20ed21e6aca465b9a868e5458ef2b096921e8b15d309`  
		Last Modified: Tue, 27 Oct 2026 23:10:06 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:d0adcc86cc3bfc192c2dd8911f9d2ffa55eef14f97df509d5c61492c99aae422
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5334085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a51f02baf4a3a1bfdbd9ee424383a9147d6cc7207546a3b0deb7fafffddb200`

```dockerfile
```

-	Layers:
	-	`sha256:c1808d28dcbc17eb640423e5603d0a2be0c0faa45da0114f3a5f738ad7d8e3b1`  
		Last Modified: Tue, 27 Oct 2026 23:10:04 GMT  
		Size: 5.3 MB (5298766 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f27adb461b49aebbacd4550ea3751e7d8d4ce0328115dc5a6084889a6fc42e7a`  
		Last Modified: Tue, 27 Oct 2026 23:10:04 GMT  
		Size: 35.3 KB (35319 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:b58efd11d883b862f7dd1077966de3a443d00c126952bc29023368927b6f92f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.5 MB (295459639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2dc3a37aad4fba70b9e8521751c7fb3146267829fb37fe54a717eea4c76d47b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 27 Oct 2026 23:05:32 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 27 Oct 2026 23:05:32 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 23:07:11 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Tue, 27 Oct 2026 23:07:13 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 23:07:13 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 23:07:54 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Tue, 27 Oct 2026 23:07:55 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 27 Oct 2026 23:07:55 GMT
ENV MYSQL_MAJOR=innovation
# Tue, 27 Oct 2026 23:07:55 GMT
ENV MYSQL_VERSION=26.10.0-1.el9
# Tue, 27 Oct 2026 23:07:55 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Tue, 27 Oct 2026 23:08:40 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Tue, 27 Oct 2026 23:08:40 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Tue, 27 Oct 2026 23:08:40 GMT
ENV MYSQL_SHELL_VERSION=26.10.0-1.el9
# Tue, 27 Oct 2026 23:09:33 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Tue, 27 Oct 2026 23:09:33 GMT
VOLUME [/var/lib/mysql]
# Tue, 27 Oct 2026 23:09:33 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 23:09:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 23:09:33 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Tue, 27 Oct 2026 23:09:33 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:11f62504eea6ae8bacf9c501835f2547c0d6c7f6ff85fd7a67912c41a123c561`  
		Last Modified: Tue, 27 Oct 2026 23:05:43 GMT  
		Size: 45.7 MB (45732830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4e5d43c68979146dbb3b749889e44c0df6b13705a3f8d77363860f1948855d1`  
		Last Modified: Tue, 27 Oct 2026 23:09:59 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4aa276b8ad98ea5a94a307c51cfa087e983a9a3b2b3493fcfa4ebe1a2ca4ca6`  
		Last Modified: Tue, 27 Oct 2026 23:09:59 GMT  
		Size: 737.5 KB (737531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0d59f31e167a0280a1abacc18ded1666cf09b143e77c2fe75430221fcf88b97`  
		Last Modified: Tue, 27 Oct 2026 23:09:59 GMT  
		Size: 5.8 MB (5806804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dd2e8db297eaf92240eaee30a70e6ac6d0327b710ccf1916e12e9f1aba94003`  
		Last Modified: Tue, 27 Oct 2026 23:09:59 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dbfa79bc208c00ab3ce9eb587872ead8aa0409625ab0388ec466292a35e689e`  
		Last Modified: Tue, 27 Oct 2026 23:10:00 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3740231fab18490409e308e9566caf7c08fef0b9fa26a794dc399cd8785bc3e`  
		Last Modified: Tue, 27 Oct 2026 23:10:03 GMT  
		Size: 63.8 MB (63821777 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f641eea4863ab02c549bd4aec1451b6852cf50c885a71dd2993969a83f0b4e10`  
		Last Modified: Tue, 27 Oct 2026 23:10:00 GMT  
		Size: 326.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9bc9578e067546beeda8a1e501e1850f1f7f152b5331e613df3a2dc565a7b42`  
		Last Modified: Tue, 27 Oct 2026 23:10:06 GMT  
		Size: 179.4 MB (179351313 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30c35ea3883909773fc3524f62d1dd027bb8c7e05ae0d6e9bd6bb481d9414b86`  
		Last Modified: Tue, 27 Oct 2026 23:10:01 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:38be110e6029f2834125e096980b80c780800c82084b29754ad5e66bd7a453ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5332899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b00daf0ce3011b7bb69edcf8bc471ad09a83978c2a9d02764e2839d1c5fb5be`

```dockerfile
```

-	Layers:
	-	`sha256:eec04a9714639f43626432e4538d76f2eb6fb83e0f9b1ddaffded5e78eba31c8`  
		Last Modified: Tue, 27 Oct 2026 23:09:59 GMT  
		Size: 5.3 MB (5297239 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:def8b01477cff5561c2af633ec66f08daff73e75686692bc550778886e66baba`  
		Last Modified: Tue, 27 Oct 2026 23:09:58 GMT  
		Size: 35.7 KB (35660 bytes)  
		MIME: application/vnd.in-toto+json
