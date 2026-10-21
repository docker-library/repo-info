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
$ docker pull mysql@sha256:f51c9c01c16b0eb5d81bb70ab7e7fcb3b96abc6a54114be3a94e8e569cae7815
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:26` - linux; amd64

```console
$ docker pull mysql@sha256:82491f3359e91c23f65055033529ed3367b4a48e5f94d25144096fa1b6ca5ef3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.1 MB (299105288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:190f292a926af3f102331e424e729d3e3fd56dc0c4266dbced65de518262c0a8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:48 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:48 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 21:56:17 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Wed, 21 Oct 2026 21:56:19 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 21:56:19 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 21:56:50 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Wed, 21 Oct 2026 21:56:51 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 21 Oct 2026 21:56:51 GMT
ENV MYSQL_MAJOR=innovation
# Wed, 21 Oct 2026 21:56:51 GMT
ENV MYSQL_VERSION=26.10.0-1.el9
# Wed, 21 Oct 2026 21:56:51 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Wed, 21 Oct 2026 21:57:30 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Wed, 21 Oct 2026 21:57:30 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Wed, 21 Oct 2026 21:57:30 GMT
ENV MYSQL_SHELL_VERSION=26.10.0-1.el9
# Wed, 21 Oct 2026 21:58:13 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Wed, 21 Oct 2026 21:58:13 GMT
VOLUME [/var/lib/mysql]
# Wed, 21 Oct 2026 21:58:13 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 21:58:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:58:13 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Wed, 21 Oct 2026 21:58:13 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:97347cf073b19c00bee840fa47d2cd0537dbf5eb581be49840c203f71c0a5c75`  
		Last Modified: Mon, 19 Oct 2026 21:33:00 GMT  
		Size: 47.2 MB (47249168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f94d19cb2000ec18ab44ea7c0431d3a382b56f7aadac47930de9870782f47cb6`  
		Last Modified: Wed, 21 Oct 2026 21:58:37 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a585709eedb3bdf12dc10f66701a96f14c3ae3ddc5014446075d6f3bc5c6008f`  
		Last Modified: Wed, 21 Oct 2026 21:58:37 GMT  
		Size: 783.6 KB (783561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b93f6218baf819d65f2ec44453a53fb3799034b621da7b5846be2604961d3a7e`  
		Last Modified: Wed, 21 Oct 2026 21:58:38 GMT  
		Size: 6.2 MB (6191944 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f627afc3dcfa5b4af70874e198851d988cf3299d1a3c94a4e50a521bddcfad7`  
		Last Modified: Wed, 21 Oct 2026 21:58:37 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:205d9d6acf3e6390a82d75366fffaa7dd70faaf8f077f80730adcb4c6a0ffd7c`  
		Last Modified: Wed, 21 Oct 2026 21:58:39 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:914f9525bedd5a22569a18b1096157dee17e1de24a4804b1ef9ff09b5ddb507f`  
		Last Modified: Wed, 21 Oct 2026 21:58:42 GMT  
		Size: 63.8 MB (63790338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7419b3490447a2b6019bd821b1fc3b8736ff2d1bda0dcb0f0574ec9bac7d1409`  
		Last Modified: Wed, 21 Oct 2026 21:58:39 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d88e4392a3b0f547e870128f9801f5d9a9ba90ff3cea816a312b0e55459e68eb`  
		Last Modified: Wed, 21 Oct 2026 21:58:44 GMT  
		Size: 181.1 MB (181080895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa5981637f05e00e89139c4b57df4d0abfd478a47ff83306b2f39a679581e0da`  
		Last Modified: Wed, 21 Oct 2026 21:58:40 GMT  
		Size: 5.2 KB (5228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26` - unknown; unknown

```console
$ docker pull mysql@sha256:9cf8a5a6ecc3855e9f0b940dc8a09b0652904888350c3d0348d0c2cbc0532ea8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5352612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03b10ada5bcce44d2b7b98fa4bbed89fd73e6a7b2b79f18f962929987a993527`

```dockerfile
```

-	Layers:
	-	`sha256:8dceb28f73721bb09d4e382a17ce16abd8db54d287e4f76c46e7cba2de4ca740`  
		Last Modified: Wed, 21 Oct 2026 21:58:38 GMT  
		Size: 5.3 MB (5317293 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0c048e487f09df72927f5a6852edb1eed474a4a7a2e682ec8f2ed89b210c7d1e`  
		Last Modified: Wed, 21 Oct 2026 21:58:37 GMT  
		Size: 35.3 KB (35319 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:26` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:d28721bf25d84a6c14049972b2bb9375a8a5b249f54cf58518c863d9901b4ab9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.5 MB (295538702 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7f5260bcf3774d253076481d8a28c4e4d125cea1e40a8b663fd654d7375d555`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:44 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:44 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 22:25:07 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Wed, 21 Oct 2026 22:25:08 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 22:25:08 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 22:25:46 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Wed, 21 Oct 2026 22:25:47 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 21 Oct 2026 22:25:47 GMT
ENV MYSQL_MAJOR=innovation
# Wed, 21 Oct 2026 22:25:47 GMT
ENV MYSQL_VERSION=26.10.0-1.el9
# Wed, 21 Oct 2026 22:25:47 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Wed, 21 Oct 2026 22:26:32 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Wed, 21 Oct 2026 22:26:32 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Wed, 21 Oct 2026 22:26:32 GMT
ENV MYSQL_SHELL_VERSION=26.10.0-1.el9
# Wed, 21 Oct 2026 22:27:23 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Wed, 21 Oct 2026 22:27:23 GMT
VOLUME [/var/lib/mysql]
# Wed, 21 Oct 2026 22:27:23 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 22:27:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 22:27:23 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Wed, 21 Oct 2026 22:27:23 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ec733952651fc70d299ac3951cabb9fafd032cc96e2ff71bdfd675ac20ca9c93`  
		Last Modified: Mon, 19 Oct 2026 21:32:56 GMT  
		Size: 45.8 MB (45800185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78eaa3a880f9d1cc19e7aff89d0bed22d25d5a59ad885b4c02ce948d8236aaf2`  
		Last Modified: Wed, 21 Oct 2026 22:27:50 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c5ac5f92e1354555b93ed5f9b09cee2d09bbb1a34a5ee4f4ed8c5547c210835`  
		Last Modified: Wed, 21 Oct 2026 22:27:50 GMT  
		Size: 737.5 KB (737530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:492ad916207b0e403d38f4927d83a0de369ab704eb76c58f382668475b98c1f3`  
		Last Modified: Wed, 21 Oct 2026 22:27:50 GMT  
		Size: 5.8 MB (5810099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e28e6a3a5a7220bc491fee32ec2019a6373d5c12ff818a4cd6a1453e37972be3`  
		Last Modified: Wed, 21 Oct 2026 22:27:50 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bd14e67f63fda428007bcd7a63d3ffb55b0d4973719da57d68d18661d6bdacf`  
		Last Modified: Wed, 21 Oct 2026 22:27:51 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08a8ef31b348846a60bcde2513ccf76937bfad94eda4dfcfdbf693473329c7d8`  
		Last Modified: Wed, 21 Oct 2026 22:27:53 GMT  
		Size: 63.8 MB (63828948 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c5bbe02c32fc0461f1bb139ba0dfef719993394926ae75adaafb69279316771`  
		Last Modified: Wed, 21 Oct 2026 22:27:51 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c589b229d807557537717ebb4fc51604e961a870b490885bd0049a89fcad0686`  
		Last Modified: Wed, 21 Oct 2026 22:27:56 GMT  
		Size: 179.4 MB (179352553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2519c685ee5fbc7da56b4531f2aa4e9b61c84578f5ed765956d806372dc8965`  
		Last Modified: Wed, 21 Oct 2026 22:27:52 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26` - unknown; unknown

```console
$ docker pull mysql@sha256:3cd0d122684f8cc7f01a62de394d6b3437a04c6fd377f8023d4440e311fbe9bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5351426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14b6d0a735190ed0c9719be69207d1e860b4f0a933fc8cd60c807aa6dd347bef`

```dockerfile
```

-	Layers:
	-	`sha256:04bd4352edbf28bda13855733c1781745bf30fec471f6742f1c4236ba0f65b7e`  
		Last Modified: Wed, 21 Oct 2026 22:27:50 GMT  
		Size: 5.3 MB (5315766 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a8c1f7f032339039df58648d5057e9d63e8edf0252f49b2421ec47b8d8ee7f70`  
		Last Modified: Wed, 21 Oct 2026 22:27:50 GMT  
		Size: 35.7 KB (35660 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:26-oracle`

```console
$ docker pull mysql@sha256:f51c9c01c16b0eb5d81bb70ab7e7fcb3b96abc6a54114be3a94e8e569cae7815
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:26-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:82491f3359e91c23f65055033529ed3367b4a48e5f94d25144096fa1b6ca5ef3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.1 MB (299105288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:190f292a926af3f102331e424e729d3e3fd56dc0c4266dbced65de518262c0a8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:48 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:48 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 21:56:17 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Wed, 21 Oct 2026 21:56:19 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 21:56:19 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 21:56:50 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Wed, 21 Oct 2026 21:56:51 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 21 Oct 2026 21:56:51 GMT
ENV MYSQL_MAJOR=innovation
# Wed, 21 Oct 2026 21:56:51 GMT
ENV MYSQL_VERSION=26.10.0-1.el9
# Wed, 21 Oct 2026 21:56:51 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Wed, 21 Oct 2026 21:57:30 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Wed, 21 Oct 2026 21:57:30 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Wed, 21 Oct 2026 21:57:30 GMT
ENV MYSQL_SHELL_VERSION=26.10.0-1.el9
# Wed, 21 Oct 2026 21:58:13 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Wed, 21 Oct 2026 21:58:13 GMT
VOLUME [/var/lib/mysql]
# Wed, 21 Oct 2026 21:58:13 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 21:58:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:58:13 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Wed, 21 Oct 2026 21:58:13 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:97347cf073b19c00bee840fa47d2cd0537dbf5eb581be49840c203f71c0a5c75`  
		Last Modified: Mon, 19 Oct 2026 21:33:00 GMT  
		Size: 47.2 MB (47249168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f94d19cb2000ec18ab44ea7c0431d3a382b56f7aadac47930de9870782f47cb6`  
		Last Modified: Wed, 21 Oct 2026 21:58:37 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a585709eedb3bdf12dc10f66701a96f14c3ae3ddc5014446075d6f3bc5c6008f`  
		Last Modified: Wed, 21 Oct 2026 21:58:37 GMT  
		Size: 783.6 KB (783561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b93f6218baf819d65f2ec44453a53fb3799034b621da7b5846be2604961d3a7e`  
		Last Modified: Wed, 21 Oct 2026 21:58:38 GMT  
		Size: 6.2 MB (6191944 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f627afc3dcfa5b4af70874e198851d988cf3299d1a3c94a4e50a521bddcfad7`  
		Last Modified: Wed, 21 Oct 2026 21:58:37 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:205d9d6acf3e6390a82d75366fffaa7dd70faaf8f077f80730adcb4c6a0ffd7c`  
		Last Modified: Wed, 21 Oct 2026 21:58:39 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:914f9525bedd5a22569a18b1096157dee17e1de24a4804b1ef9ff09b5ddb507f`  
		Last Modified: Wed, 21 Oct 2026 21:58:42 GMT  
		Size: 63.8 MB (63790338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7419b3490447a2b6019bd821b1fc3b8736ff2d1bda0dcb0f0574ec9bac7d1409`  
		Last Modified: Wed, 21 Oct 2026 21:58:39 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d88e4392a3b0f547e870128f9801f5d9a9ba90ff3cea816a312b0e55459e68eb`  
		Last Modified: Wed, 21 Oct 2026 21:58:44 GMT  
		Size: 181.1 MB (181080895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa5981637f05e00e89139c4b57df4d0abfd478a47ff83306b2f39a679581e0da`  
		Last Modified: Wed, 21 Oct 2026 21:58:40 GMT  
		Size: 5.2 KB (5228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:9cf8a5a6ecc3855e9f0b940dc8a09b0652904888350c3d0348d0c2cbc0532ea8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5352612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03b10ada5bcce44d2b7b98fa4bbed89fd73e6a7b2b79f18f962929987a993527`

```dockerfile
```

-	Layers:
	-	`sha256:8dceb28f73721bb09d4e382a17ce16abd8db54d287e4f76c46e7cba2de4ca740`  
		Last Modified: Wed, 21 Oct 2026 21:58:38 GMT  
		Size: 5.3 MB (5317293 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0c048e487f09df72927f5a6852edb1eed474a4a7a2e682ec8f2ed89b210c7d1e`  
		Last Modified: Wed, 21 Oct 2026 21:58:37 GMT  
		Size: 35.3 KB (35319 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:26-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:d28721bf25d84a6c14049972b2bb9375a8a5b249f54cf58518c863d9901b4ab9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.5 MB (295538702 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7f5260bcf3774d253076481d8a28c4e4d125cea1e40a8b663fd654d7375d555`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:44 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:44 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 22:25:07 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Wed, 21 Oct 2026 22:25:08 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 22:25:08 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 22:25:46 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Wed, 21 Oct 2026 22:25:47 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 21 Oct 2026 22:25:47 GMT
ENV MYSQL_MAJOR=innovation
# Wed, 21 Oct 2026 22:25:47 GMT
ENV MYSQL_VERSION=26.10.0-1.el9
# Wed, 21 Oct 2026 22:25:47 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Wed, 21 Oct 2026 22:26:32 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Wed, 21 Oct 2026 22:26:32 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Wed, 21 Oct 2026 22:26:32 GMT
ENV MYSQL_SHELL_VERSION=26.10.0-1.el9
# Wed, 21 Oct 2026 22:27:23 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Wed, 21 Oct 2026 22:27:23 GMT
VOLUME [/var/lib/mysql]
# Wed, 21 Oct 2026 22:27:23 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 22:27:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 22:27:23 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Wed, 21 Oct 2026 22:27:23 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ec733952651fc70d299ac3951cabb9fafd032cc96e2ff71bdfd675ac20ca9c93`  
		Last Modified: Mon, 19 Oct 2026 21:32:56 GMT  
		Size: 45.8 MB (45800185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78eaa3a880f9d1cc19e7aff89d0bed22d25d5a59ad885b4c02ce948d8236aaf2`  
		Last Modified: Wed, 21 Oct 2026 22:27:50 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c5ac5f92e1354555b93ed5f9b09cee2d09bbb1a34a5ee4f4ed8c5547c210835`  
		Last Modified: Wed, 21 Oct 2026 22:27:50 GMT  
		Size: 737.5 KB (737530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:492ad916207b0e403d38f4927d83a0de369ab704eb76c58f382668475b98c1f3`  
		Last Modified: Wed, 21 Oct 2026 22:27:50 GMT  
		Size: 5.8 MB (5810099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e28e6a3a5a7220bc491fee32ec2019a6373d5c12ff818a4cd6a1453e37972be3`  
		Last Modified: Wed, 21 Oct 2026 22:27:50 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bd14e67f63fda428007bcd7a63d3ffb55b0d4973719da57d68d18661d6bdacf`  
		Last Modified: Wed, 21 Oct 2026 22:27:51 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08a8ef31b348846a60bcde2513ccf76937bfad94eda4dfcfdbf693473329c7d8`  
		Last Modified: Wed, 21 Oct 2026 22:27:53 GMT  
		Size: 63.8 MB (63828948 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c5bbe02c32fc0461f1bb139ba0dfef719993394926ae75adaafb69279316771`  
		Last Modified: Wed, 21 Oct 2026 22:27:51 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c589b229d807557537717ebb4fc51604e961a870b490885bd0049a89fcad0686`  
		Last Modified: Wed, 21 Oct 2026 22:27:56 GMT  
		Size: 179.4 MB (179352553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2519c685ee5fbc7da56b4531f2aa4e9b61c84578f5ed765956d806372dc8965`  
		Last Modified: Wed, 21 Oct 2026 22:27:52 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:3cd0d122684f8cc7f01a62de394d6b3437a04c6fd377f8023d4440e311fbe9bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5351426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14b6d0a735190ed0c9719be69207d1e860b4f0a933fc8cd60c807aa6dd347bef`

```dockerfile
```

-	Layers:
	-	`sha256:04bd4352edbf28bda13855733c1781745bf30fec471f6742f1c4236ba0f65b7e`  
		Last Modified: Wed, 21 Oct 2026 22:27:50 GMT  
		Size: 5.3 MB (5315766 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a8c1f7f032339039df58648d5057e9d63e8edf0252f49b2421ec47b8d8ee7f70`  
		Last Modified: Wed, 21 Oct 2026 22:27:50 GMT  
		Size: 35.7 KB (35660 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:26-oraclelinux9`

```console
$ docker pull mysql@sha256:f51c9c01c16b0eb5d81bb70ab7e7fcb3b96abc6a54114be3a94e8e569cae7815
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:26-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:82491f3359e91c23f65055033529ed3367b4a48e5f94d25144096fa1b6ca5ef3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.1 MB (299105288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:190f292a926af3f102331e424e729d3e3fd56dc0c4266dbced65de518262c0a8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:48 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:48 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 21:56:17 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Wed, 21 Oct 2026 21:56:19 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 21:56:19 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 21:56:50 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Wed, 21 Oct 2026 21:56:51 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 21 Oct 2026 21:56:51 GMT
ENV MYSQL_MAJOR=innovation
# Wed, 21 Oct 2026 21:56:51 GMT
ENV MYSQL_VERSION=26.10.0-1.el9
# Wed, 21 Oct 2026 21:56:51 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Wed, 21 Oct 2026 21:57:30 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Wed, 21 Oct 2026 21:57:30 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Wed, 21 Oct 2026 21:57:30 GMT
ENV MYSQL_SHELL_VERSION=26.10.0-1.el9
# Wed, 21 Oct 2026 21:58:13 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Wed, 21 Oct 2026 21:58:13 GMT
VOLUME [/var/lib/mysql]
# Wed, 21 Oct 2026 21:58:13 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 21:58:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:58:13 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Wed, 21 Oct 2026 21:58:13 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:97347cf073b19c00bee840fa47d2cd0537dbf5eb581be49840c203f71c0a5c75`  
		Last Modified: Mon, 19 Oct 2026 21:33:00 GMT  
		Size: 47.2 MB (47249168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f94d19cb2000ec18ab44ea7c0431d3a382b56f7aadac47930de9870782f47cb6`  
		Last Modified: Wed, 21 Oct 2026 21:58:37 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a585709eedb3bdf12dc10f66701a96f14c3ae3ddc5014446075d6f3bc5c6008f`  
		Last Modified: Wed, 21 Oct 2026 21:58:37 GMT  
		Size: 783.6 KB (783561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b93f6218baf819d65f2ec44453a53fb3799034b621da7b5846be2604961d3a7e`  
		Last Modified: Wed, 21 Oct 2026 21:58:38 GMT  
		Size: 6.2 MB (6191944 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f627afc3dcfa5b4af70874e198851d988cf3299d1a3c94a4e50a521bddcfad7`  
		Last Modified: Wed, 21 Oct 2026 21:58:37 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:205d9d6acf3e6390a82d75366fffaa7dd70faaf8f077f80730adcb4c6a0ffd7c`  
		Last Modified: Wed, 21 Oct 2026 21:58:39 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:914f9525bedd5a22569a18b1096157dee17e1de24a4804b1ef9ff09b5ddb507f`  
		Last Modified: Wed, 21 Oct 2026 21:58:42 GMT  
		Size: 63.8 MB (63790338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7419b3490447a2b6019bd821b1fc3b8736ff2d1bda0dcb0f0574ec9bac7d1409`  
		Last Modified: Wed, 21 Oct 2026 21:58:39 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d88e4392a3b0f547e870128f9801f5d9a9ba90ff3cea816a312b0e55459e68eb`  
		Last Modified: Wed, 21 Oct 2026 21:58:44 GMT  
		Size: 181.1 MB (181080895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa5981637f05e00e89139c4b57df4d0abfd478a47ff83306b2f39a679581e0da`  
		Last Modified: Wed, 21 Oct 2026 21:58:40 GMT  
		Size: 5.2 KB (5228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:9cf8a5a6ecc3855e9f0b940dc8a09b0652904888350c3d0348d0c2cbc0532ea8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5352612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03b10ada5bcce44d2b7b98fa4bbed89fd73e6a7b2b79f18f962929987a993527`

```dockerfile
```

-	Layers:
	-	`sha256:8dceb28f73721bb09d4e382a17ce16abd8db54d287e4f76c46e7cba2de4ca740`  
		Last Modified: Wed, 21 Oct 2026 21:58:38 GMT  
		Size: 5.3 MB (5317293 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0c048e487f09df72927f5a6852edb1eed474a4a7a2e682ec8f2ed89b210c7d1e`  
		Last Modified: Wed, 21 Oct 2026 21:58:37 GMT  
		Size: 35.3 KB (35319 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:26-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:d28721bf25d84a6c14049972b2bb9375a8a5b249f54cf58518c863d9901b4ab9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.5 MB (295538702 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7f5260bcf3774d253076481d8a28c4e4d125cea1e40a8b663fd654d7375d555`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:44 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:44 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 22:25:07 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Wed, 21 Oct 2026 22:25:08 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 22:25:08 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 22:25:46 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Wed, 21 Oct 2026 22:25:47 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 21 Oct 2026 22:25:47 GMT
ENV MYSQL_MAJOR=innovation
# Wed, 21 Oct 2026 22:25:47 GMT
ENV MYSQL_VERSION=26.10.0-1.el9
# Wed, 21 Oct 2026 22:25:47 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Wed, 21 Oct 2026 22:26:32 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Wed, 21 Oct 2026 22:26:32 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Wed, 21 Oct 2026 22:26:32 GMT
ENV MYSQL_SHELL_VERSION=26.10.0-1.el9
# Wed, 21 Oct 2026 22:27:23 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Wed, 21 Oct 2026 22:27:23 GMT
VOLUME [/var/lib/mysql]
# Wed, 21 Oct 2026 22:27:23 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 22:27:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 22:27:23 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Wed, 21 Oct 2026 22:27:23 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ec733952651fc70d299ac3951cabb9fafd032cc96e2ff71bdfd675ac20ca9c93`  
		Last Modified: Mon, 19 Oct 2026 21:32:56 GMT  
		Size: 45.8 MB (45800185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78eaa3a880f9d1cc19e7aff89d0bed22d25d5a59ad885b4c02ce948d8236aaf2`  
		Last Modified: Wed, 21 Oct 2026 22:27:50 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c5ac5f92e1354555b93ed5f9b09cee2d09bbb1a34a5ee4f4ed8c5547c210835`  
		Last Modified: Wed, 21 Oct 2026 22:27:50 GMT  
		Size: 737.5 KB (737530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:492ad916207b0e403d38f4927d83a0de369ab704eb76c58f382668475b98c1f3`  
		Last Modified: Wed, 21 Oct 2026 22:27:50 GMT  
		Size: 5.8 MB (5810099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e28e6a3a5a7220bc491fee32ec2019a6373d5c12ff818a4cd6a1453e37972be3`  
		Last Modified: Wed, 21 Oct 2026 22:27:50 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bd14e67f63fda428007bcd7a63d3ffb55b0d4973719da57d68d18661d6bdacf`  
		Last Modified: Wed, 21 Oct 2026 22:27:51 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08a8ef31b348846a60bcde2513ccf76937bfad94eda4dfcfdbf693473329c7d8`  
		Last Modified: Wed, 21 Oct 2026 22:27:53 GMT  
		Size: 63.8 MB (63828948 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c5bbe02c32fc0461f1bb139ba0dfef719993394926ae75adaafb69279316771`  
		Last Modified: Wed, 21 Oct 2026 22:27:51 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c589b229d807557537717ebb4fc51604e961a870b490885bd0049a89fcad0686`  
		Last Modified: Wed, 21 Oct 2026 22:27:56 GMT  
		Size: 179.4 MB (179352553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2519c685ee5fbc7da56b4531f2aa4e9b61c84578f5ed765956d806372dc8965`  
		Last Modified: Wed, 21 Oct 2026 22:27:52 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:3cd0d122684f8cc7f01a62de394d6b3437a04c6fd377f8023d4440e311fbe9bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5351426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14b6d0a735190ed0c9719be69207d1e860b4f0a933fc8cd60c807aa6dd347bef`

```dockerfile
```

-	Layers:
	-	`sha256:04bd4352edbf28bda13855733c1781745bf30fec471f6742f1c4236ba0f65b7e`  
		Last Modified: Wed, 21 Oct 2026 22:27:50 GMT  
		Size: 5.3 MB (5315766 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a8c1f7f032339039df58648d5057e9d63e8edf0252f49b2421ec47b8d8ee7f70`  
		Last Modified: Wed, 21 Oct 2026 22:27:50 GMT  
		Size: 35.7 KB (35660 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:26.10`

```console
$ docker pull mysql@sha256:f51c9c01c16b0eb5d81bb70ab7e7fcb3b96abc6a54114be3a94e8e569cae7815
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:26.10` - linux; amd64

```console
$ docker pull mysql@sha256:82491f3359e91c23f65055033529ed3367b4a48e5f94d25144096fa1b6ca5ef3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.1 MB (299105288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:190f292a926af3f102331e424e729d3e3fd56dc0c4266dbced65de518262c0a8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:48 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:48 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 21:56:17 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Wed, 21 Oct 2026 21:56:19 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 21:56:19 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 21:56:50 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Wed, 21 Oct 2026 21:56:51 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 21 Oct 2026 21:56:51 GMT
ENV MYSQL_MAJOR=innovation
# Wed, 21 Oct 2026 21:56:51 GMT
ENV MYSQL_VERSION=26.10.0-1.el9
# Wed, 21 Oct 2026 21:56:51 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Wed, 21 Oct 2026 21:57:30 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Wed, 21 Oct 2026 21:57:30 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Wed, 21 Oct 2026 21:57:30 GMT
ENV MYSQL_SHELL_VERSION=26.10.0-1.el9
# Wed, 21 Oct 2026 21:58:13 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Wed, 21 Oct 2026 21:58:13 GMT
VOLUME [/var/lib/mysql]
# Wed, 21 Oct 2026 21:58:13 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 21:58:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:58:13 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Wed, 21 Oct 2026 21:58:13 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:97347cf073b19c00bee840fa47d2cd0537dbf5eb581be49840c203f71c0a5c75`  
		Last Modified: Mon, 19 Oct 2026 21:33:00 GMT  
		Size: 47.2 MB (47249168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f94d19cb2000ec18ab44ea7c0431d3a382b56f7aadac47930de9870782f47cb6`  
		Last Modified: Wed, 21 Oct 2026 21:58:37 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a585709eedb3bdf12dc10f66701a96f14c3ae3ddc5014446075d6f3bc5c6008f`  
		Last Modified: Wed, 21 Oct 2026 21:58:37 GMT  
		Size: 783.6 KB (783561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b93f6218baf819d65f2ec44453a53fb3799034b621da7b5846be2604961d3a7e`  
		Last Modified: Wed, 21 Oct 2026 21:58:38 GMT  
		Size: 6.2 MB (6191944 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f627afc3dcfa5b4af70874e198851d988cf3299d1a3c94a4e50a521bddcfad7`  
		Last Modified: Wed, 21 Oct 2026 21:58:37 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:205d9d6acf3e6390a82d75366fffaa7dd70faaf8f077f80730adcb4c6a0ffd7c`  
		Last Modified: Wed, 21 Oct 2026 21:58:39 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:914f9525bedd5a22569a18b1096157dee17e1de24a4804b1ef9ff09b5ddb507f`  
		Last Modified: Wed, 21 Oct 2026 21:58:42 GMT  
		Size: 63.8 MB (63790338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7419b3490447a2b6019bd821b1fc3b8736ff2d1bda0dcb0f0574ec9bac7d1409`  
		Last Modified: Wed, 21 Oct 2026 21:58:39 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d88e4392a3b0f547e870128f9801f5d9a9ba90ff3cea816a312b0e55459e68eb`  
		Last Modified: Wed, 21 Oct 2026 21:58:44 GMT  
		Size: 181.1 MB (181080895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa5981637f05e00e89139c4b57df4d0abfd478a47ff83306b2f39a679581e0da`  
		Last Modified: Wed, 21 Oct 2026 21:58:40 GMT  
		Size: 5.2 KB (5228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26.10` - unknown; unknown

```console
$ docker pull mysql@sha256:9cf8a5a6ecc3855e9f0b940dc8a09b0652904888350c3d0348d0c2cbc0532ea8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5352612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03b10ada5bcce44d2b7b98fa4bbed89fd73e6a7b2b79f18f962929987a993527`

```dockerfile
```

-	Layers:
	-	`sha256:8dceb28f73721bb09d4e382a17ce16abd8db54d287e4f76c46e7cba2de4ca740`  
		Last Modified: Wed, 21 Oct 2026 21:58:38 GMT  
		Size: 5.3 MB (5317293 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0c048e487f09df72927f5a6852edb1eed474a4a7a2e682ec8f2ed89b210c7d1e`  
		Last Modified: Wed, 21 Oct 2026 21:58:37 GMT  
		Size: 35.3 KB (35319 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:26.10` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:d28721bf25d84a6c14049972b2bb9375a8a5b249f54cf58518c863d9901b4ab9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.5 MB (295538702 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7f5260bcf3774d253076481d8a28c4e4d125cea1e40a8b663fd654d7375d555`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:44 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:44 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 22:25:07 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Wed, 21 Oct 2026 22:25:08 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 22:25:08 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 22:25:46 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Wed, 21 Oct 2026 22:25:47 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 21 Oct 2026 22:25:47 GMT
ENV MYSQL_MAJOR=innovation
# Wed, 21 Oct 2026 22:25:47 GMT
ENV MYSQL_VERSION=26.10.0-1.el9
# Wed, 21 Oct 2026 22:25:47 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Wed, 21 Oct 2026 22:26:32 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Wed, 21 Oct 2026 22:26:32 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Wed, 21 Oct 2026 22:26:32 GMT
ENV MYSQL_SHELL_VERSION=26.10.0-1.el9
# Wed, 21 Oct 2026 22:27:23 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Wed, 21 Oct 2026 22:27:23 GMT
VOLUME [/var/lib/mysql]
# Wed, 21 Oct 2026 22:27:23 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 22:27:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 22:27:23 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Wed, 21 Oct 2026 22:27:23 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ec733952651fc70d299ac3951cabb9fafd032cc96e2ff71bdfd675ac20ca9c93`  
		Last Modified: Mon, 19 Oct 2026 21:32:56 GMT  
		Size: 45.8 MB (45800185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78eaa3a880f9d1cc19e7aff89d0bed22d25d5a59ad885b4c02ce948d8236aaf2`  
		Last Modified: Wed, 21 Oct 2026 22:27:50 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c5ac5f92e1354555b93ed5f9b09cee2d09bbb1a34a5ee4f4ed8c5547c210835`  
		Last Modified: Wed, 21 Oct 2026 22:27:50 GMT  
		Size: 737.5 KB (737530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:492ad916207b0e403d38f4927d83a0de369ab704eb76c58f382668475b98c1f3`  
		Last Modified: Wed, 21 Oct 2026 22:27:50 GMT  
		Size: 5.8 MB (5810099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e28e6a3a5a7220bc491fee32ec2019a6373d5c12ff818a4cd6a1453e37972be3`  
		Last Modified: Wed, 21 Oct 2026 22:27:50 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bd14e67f63fda428007bcd7a63d3ffb55b0d4973719da57d68d18661d6bdacf`  
		Last Modified: Wed, 21 Oct 2026 22:27:51 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08a8ef31b348846a60bcde2513ccf76937bfad94eda4dfcfdbf693473329c7d8`  
		Last Modified: Wed, 21 Oct 2026 22:27:53 GMT  
		Size: 63.8 MB (63828948 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c5bbe02c32fc0461f1bb139ba0dfef719993394926ae75adaafb69279316771`  
		Last Modified: Wed, 21 Oct 2026 22:27:51 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c589b229d807557537717ebb4fc51604e961a870b490885bd0049a89fcad0686`  
		Last Modified: Wed, 21 Oct 2026 22:27:56 GMT  
		Size: 179.4 MB (179352553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2519c685ee5fbc7da56b4531f2aa4e9b61c84578f5ed765956d806372dc8965`  
		Last Modified: Wed, 21 Oct 2026 22:27:52 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26.10` - unknown; unknown

```console
$ docker pull mysql@sha256:3cd0d122684f8cc7f01a62de394d6b3437a04c6fd377f8023d4440e311fbe9bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5351426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14b6d0a735190ed0c9719be69207d1e860b4f0a933fc8cd60c807aa6dd347bef`

```dockerfile
```

-	Layers:
	-	`sha256:04bd4352edbf28bda13855733c1781745bf30fec471f6742f1c4236ba0f65b7e`  
		Last Modified: Wed, 21 Oct 2026 22:27:50 GMT  
		Size: 5.3 MB (5315766 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a8c1f7f032339039df58648d5057e9d63e8edf0252f49b2421ec47b8d8ee7f70`  
		Last Modified: Wed, 21 Oct 2026 22:27:50 GMT  
		Size: 35.7 KB (35660 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:26.10-oracle`

```console
$ docker pull mysql@sha256:f51c9c01c16b0eb5d81bb70ab7e7fcb3b96abc6a54114be3a94e8e569cae7815
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:26.10-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:82491f3359e91c23f65055033529ed3367b4a48e5f94d25144096fa1b6ca5ef3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.1 MB (299105288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:190f292a926af3f102331e424e729d3e3fd56dc0c4266dbced65de518262c0a8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:48 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:48 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 21:56:17 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Wed, 21 Oct 2026 21:56:19 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 21:56:19 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 21:56:50 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Wed, 21 Oct 2026 21:56:51 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 21 Oct 2026 21:56:51 GMT
ENV MYSQL_MAJOR=innovation
# Wed, 21 Oct 2026 21:56:51 GMT
ENV MYSQL_VERSION=26.10.0-1.el9
# Wed, 21 Oct 2026 21:56:51 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Wed, 21 Oct 2026 21:57:30 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Wed, 21 Oct 2026 21:57:30 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Wed, 21 Oct 2026 21:57:30 GMT
ENV MYSQL_SHELL_VERSION=26.10.0-1.el9
# Wed, 21 Oct 2026 21:58:13 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Wed, 21 Oct 2026 21:58:13 GMT
VOLUME [/var/lib/mysql]
# Wed, 21 Oct 2026 21:58:13 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 21:58:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:58:13 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Wed, 21 Oct 2026 21:58:13 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:97347cf073b19c00bee840fa47d2cd0537dbf5eb581be49840c203f71c0a5c75`  
		Last Modified: Mon, 19 Oct 2026 21:33:00 GMT  
		Size: 47.2 MB (47249168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f94d19cb2000ec18ab44ea7c0431d3a382b56f7aadac47930de9870782f47cb6`  
		Last Modified: Wed, 21 Oct 2026 21:58:37 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a585709eedb3bdf12dc10f66701a96f14c3ae3ddc5014446075d6f3bc5c6008f`  
		Last Modified: Wed, 21 Oct 2026 21:58:37 GMT  
		Size: 783.6 KB (783561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b93f6218baf819d65f2ec44453a53fb3799034b621da7b5846be2604961d3a7e`  
		Last Modified: Wed, 21 Oct 2026 21:58:38 GMT  
		Size: 6.2 MB (6191944 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f627afc3dcfa5b4af70874e198851d988cf3299d1a3c94a4e50a521bddcfad7`  
		Last Modified: Wed, 21 Oct 2026 21:58:37 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:205d9d6acf3e6390a82d75366fffaa7dd70faaf8f077f80730adcb4c6a0ffd7c`  
		Last Modified: Wed, 21 Oct 2026 21:58:39 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:914f9525bedd5a22569a18b1096157dee17e1de24a4804b1ef9ff09b5ddb507f`  
		Last Modified: Wed, 21 Oct 2026 21:58:42 GMT  
		Size: 63.8 MB (63790338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7419b3490447a2b6019bd821b1fc3b8736ff2d1bda0dcb0f0574ec9bac7d1409`  
		Last Modified: Wed, 21 Oct 2026 21:58:39 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d88e4392a3b0f547e870128f9801f5d9a9ba90ff3cea816a312b0e55459e68eb`  
		Last Modified: Wed, 21 Oct 2026 21:58:44 GMT  
		Size: 181.1 MB (181080895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa5981637f05e00e89139c4b57df4d0abfd478a47ff83306b2f39a679581e0da`  
		Last Modified: Wed, 21 Oct 2026 21:58:40 GMT  
		Size: 5.2 KB (5228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26.10-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:9cf8a5a6ecc3855e9f0b940dc8a09b0652904888350c3d0348d0c2cbc0532ea8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5352612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03b10ada5bcce44d2b7b98fa4bbed89fd73e6a7b2b79f18f962929987a993527`

```dockerfile
```

-	Layers:
	-	`sha256:8dceb28f73721bb09d4e382a17ce16abd8db54d287e4f76c46e7cba2de4ca740`  
		Last Modified: Wed, 21 Oct 2026 21:58:38 GMT  
		Size: 5.3 MB (5317293 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0c048e487f09df72927f5a6852edb1eed474a4a7a2e682ec8f2ed89b210c7d1e`  
		Last Modified: Wed, 21 Oct 2026 21:58:37 GMT  
		Size: 35.3 KB (35319 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:26.10-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:d28721bf25d84a6c14049972b2bb9375a8a5b249f54cf58518c863d9901b4ab9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.5 MB (295538702 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7f5260bcf3774d253076481d8a28c4e4d125cea1e40a8b663fd654d7375d555`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:44 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:44 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 22:25:07 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Wed, 21 Oct 2026 22:25:08 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 22:25:08 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 22:25:46 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Wed, 21 Oct 2026 22:25:47 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 21 Oct 2026 22:25:47 GMT
ENV MYSQL_MAJOR=innovation
# Wed, 21 Oct 2026 22:25:47 GMT
ENV MYSQL_VERSION=26.10.0-1.el9
# Wed, 21 Oct 2026 22:25:47 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Wed, 21 Oct 2026 22:26:32 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Wed, 21 Oct 2026 22:26:32 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Wed, 21 Oct 2026 22:26:32 GMT
ENV MYSQL_SHELL_VERSION=26.10.0-1.el9
# Wed, 21 Oct 2026 22:27:23 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Wed, 21 Oct 2026 22:27:23 GMT
VOLUME [/var/lib/mysql]
# Wed, 21 Oct 2026 22:27:23 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 22:27:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 22:27:23 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Wed, 21 Oct 2026 22:27:23 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ec733952651fc70d299ac3951cabb9fafd032cc96e2ff71bdfd675ac20ca9c93`  
		Last Modified: Mon, 19 Oct 2026 21:32:56 GMT  
		Size: 45.8 MB (45800185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78eaa3a880f9d1cc19e7aff89d0bed22d25d5a59ad885b4c02ce948d8236aaf2`  
		Last Modified: Wed, 21 Oct 2026 22:27:50 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c5ac5f92e1354555b93ed5f9b09cee2d09bbb1a34a5ee4f4ed8c5547c210835`  
		Last Modified: Wed, 21 Oct 2026 22:27:50 GMT  
		Size: 737.5 KB (737530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:492ad916207b0e403d38f4927d83a0de369ab704eb76c58f382668475b98c1f3`  
		Last Modified: Wed, 21 Oct 2026 22:27:50 GMT  
		Size: 5.8 MB (5810099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e28e6a3a5a7220bc491fee32ec2019a6373d5c12ff818a4cd6a1453e37972be3`  
		Last Modified: Wed, 21 Oct 2026 22:27:50 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bd14e67f63fda428007bcd7a63d3ffb55b0d4973719da57d68d18661d6bdacf`  
		Last Modified: Wed, 21 Oct 2026 22:27:51 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08a8ef31b348846a60bcde2513ccf76937bfad94eda4dfcfdbf693473329c7d8`  
		Last Modified: Wed, 21 Oct 2026 22:27:53 GMT  
		Size: 63.8 MB (63828948 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c5bbe02c32fc0461f1bb139ba0dfef719993394926ae75adaafb69279316771`  
		Last Modified: Wed, 21 Oct 2026 22:27:51 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c589b229d807557537717ebb4fc51604e961a870b490885bd0049a89fcad0686`  
		Last Modified: Wed, 21 Oct 2026 22:27:56 GMT  
		Size: 179.4 MB (179352553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2519c685ee5fbc7da56b4531f2aa4e9b61c84578f5ed765956d806372dc8965`  
		Last Modified: Wed, 21 Oct 2026 22:27:52 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26.10-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:3cd0d122684f8cc7f01a62de394d6b3437a04c6fd377f8023d4440e311fbe9bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5351426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14b6d0a735190ed0c9719be69207d1e860b4f0a933fc8cd60c807aa6dd347bef`

```dockerfile
```

-	Layers:
	-	`sha256:04bd4352edbf28bda13855733c1781745bf30fec471f6742f1c4236ba0f65b7e`  
		Last Modified: Wed, 21 Oct 2026 22:27:50 GMT  
		Size: 5.3 MB (5315766 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a8c1f7f032339039df58648d5057e9d63e8edf0252f49b2421ec47b8d8ee7f70`  
		Last Modified: Wed, 21 Oct 2026 22:27:50 GMT  
		Size: 35.7 KB (35660 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:26.10-oraclelinux9`

```console
$ docker pull mysql@sha256:f51c9c01c16b0eb5d81bb70ab7e7fcb3b96abc6a54114be3a94e8e569cae7815
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:26.10-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:82491f3359e91c23f65055033529ed3367b4a48e5f94d25144096fa1b6ca5ef3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.1 MB (299105288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:190f292a926af3f102331e424e729d3e3fd56dc0c4266dbced65de518262c0a8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:48 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:48 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 21:56:17 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Wed, 21 Oct 2026 21:56:19 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 21:56:19 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 21:56:50 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Wed, 21 Oct 2026 21:56:51 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 21 Oct 2026 21:56:51 GMT
ENV MYSQL_MAJOR=innovation
# Wed, 21 Oct 2026 21:56:51 GMT
ENV MYSQL_VERSION=26.10.0-1.el9
# Wed, 21 Oct 2026 21:56:51 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Wed, 21 Oct 2026 21:57:30 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Wed, 21 Oct 2026 21:57:30 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Wed, 21 Oct 2026 21:57:30 GMT
ENV MYSQL_SHELL_VERSION=26.10.0-1.el9
# Wed, 21 Oct 2026 21:58:13 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Wed, 21 Oct 2026 21:58:13 GMT
VOLUME [/var/lib/mysql]
# Wed, 21 Oct 2026 21:58:13 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 21:58:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:58:13 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Wed, 21 Oct 2026 21:58:13 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:97347cf073b19c00bee840fa47d2cd0537dbf5eb581be49840c203f71c0a5c75`  
		Last Modified: Mon, 19 Oct 2026 21:33:00 GMT  
		Size: 47.2 MB (47249168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f94d19cb2000ec18ab44ea7c0431d3a382b56f7aadac47930de9870782f47cb6`  
		Last Modified: Wed, 21 Oct 2026 21:58:37 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a585709eedb3bdf12dc10f66701a96f14c3ae3ddc5014446075d6f3bc5c6008f`  
		Last Modified: Wed, 21 Oct 2026 21:58:37 GMT  
		Size: 783.6 KB (783561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b93f6218baf819d65f2ec44453a53fb3799034b621da7b5846be2604961d3a7e`  
		Last Modified: Wed, 21 Oct 2026 21:58:38 GMT  
		Size: 6.2 MB (6191944 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f627afc3dcfa5b4af70874e198851d988cf3299d1a3c94a4e50a521bddcfad7`  
		Last Modified: Wed, 21 Oct 2026 21:58:37 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:205d9d6acf3e6390a82d75366fffaa7dd70faaf8f077f80730adcb4c6a0ffd7c`  
		Last Modified: Wed, 21 Oct 2026 21:58:39 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:914f9525bedd5a22569a18b1096157dee17e1de24a4804b1ef9ff09b5ddb507f`  
		Last Modified: Wed, 21 Oct 2026 21:58:42 GMT  
		Size: 63.8 MB (63790338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7419b3490447a2b6019bd821b1fc3b8736ff2d1bda0dcb0f0574ec9bac7d1409`  
		Last Modified: Wed, 21 Oct 2026 21:58:39 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d88e4392a3b0f547e870128f9801f5d9a9ba90ff3cea816a312b0e55459e68eb`  
		Last Modified: Wed, 21 Oct 2026 21:58:44 GMT  
		Size: 181.1 MB (181080895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa5981637f05e00e89139c4b57df4d0abfd478a47ff83306b2f39a679581e0da`  
		Last Modified: Wed, 21 Oct 2026 21:58:40 GMT  
		Size: 5.2 KB (5228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26.10-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:9cf8a5a6ecc3855e9f0b940dc8a09b0652904888350c3d0348d0c2cbc0532ea8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5352612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03b10ada5bcce44d2b7b98fa4bbed89fd73e6a7b2b79f18f962929987a993527`

```dockerfile
```

-	Layers:
	-	`sha256:8dceb28f73721bb09d4e382a17ce16abd8db54d287e4f76c46e7cba2de4ca740`  
		Last Modified: Wed, 21 Oct 2026 21:58:38 GMT  
		Size: 5.3 MB (5317293 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0c048e487f09df72927f5a6852edb1eed474a4a7a2e682ec8f2ed89b210c7d1e`  
		Last Modified: Wed, 21 Oct 2026 21:58:37 GMT  
		Size: 35.3 KB (35319 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:26.10-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:d28721bf25d84a6c14049972b2bb9375a8a5b249f54cf58518c863d9901b4ab9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.5 MB (295538702 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7f5260bcf3774d253076481d8a28c4e4d125cea1e40a8b663fd654d7375d555`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:44 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:44 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 22:25:07 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Wed, 21 Oct 2026 22:25:08 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 22:25:08 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 22:25:46 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Wed, 21 Oct 2026 22:25:47 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 21 Oct 2026 22:25:47 GMT
ENV MYSQL_MAJOR=innovation
# Wed, 21 Oct 2026 22:25:47 GMT
ENV MYSQL_VERSION=26.10.0-1.el9
# Wed, 21 Oct 2026 22:25:47 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Wed, 21 Oct 2026 22:26:32 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Wed, 21 Oct 2026 22:26:32 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Wed, 21 Oct 2026 22:26:32 GMT
ENV MYSQL_SHELL_VERSION=26.10.0-1.el9
# Wed, 21 Oct 2026 22:27:23 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Wed, 21 Oct 2026 22:27:23 GMT
VOLUME [/var/lib/mysql]
# Wed, 21 Oct 2026 22:27:23 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 22:27:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 22:27:23 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Wed, 21 Oct 2026 22:27:23 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ec733952651fc70d299ac3951cabb9fafd032cc96e2ff71bdfd675ac20ca9c93`  
		Last Modified: Mon, 19 Oct 2026 21:32:56 GMT  
		Size: 45.8 MB (45800185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78eaa3a880f9d1cc19e7aff89d0bed22d25d5a59ad885b4c02ce948d8236aaf2`  
		Last Modified: Wed, 21 Oct 2026 22:27:50 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c5ac5f92e1354555b93ed5f9b09cee2d09bbb1a34a5ee4f4ed8c5547c210835`  
		Last Modified: Wed, 21 Oct 2026 22:27:50 GMT  
		Size: 737.5 KB (737530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:492ad916207b0e403d38f4927d83a0de369ab704eb76c58f382668475b98c1f3`  
		Last Modified: Wed, 21 Oct 2026 22:27:50 GMT  
		Size: 5.8 MB (5810099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e28e6a3a5a7220bc491fee32ec2019a6373d5c12ff818a4cd6a1453e37972be3`  
		Last Modified: Wed, 21 Oct 2026 22:27:50 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bd14e67f63fda428007bcd7a63d3ffb55b0d4973719da57d68d18661d6bdacf`  
		Last Modified: Wed, 21 Oct 2026 22:27:51 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08a8ef31b348846a60bcde2513ccf76937bfad94eda4dfcfdbf693473329c7d8`  
		Last Modified: Wed, 21 Oct 2026 22:27:53 GMT  
		Size: 63.8 MB (63828948 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c5bbe02c32fc0461f1bb139ba0dfef719993394926ae75adaafb69279316771`  
		Last Modified: Wed, 21 Oct 2026 22:27:51 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c589b229d807557537717ebb4fc51604e961a870b490885bd0049a89fcad0686`  
		Last Modified: Wed, 21 Oct 2026 22:27:56 GMT  
		Size: 179.4 MB (179352553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2519c685ee5fbc7da56b4531f2aa4e9b61c84578f5ed765956d806372dc8965`  
		Last Modified: Wed, 21 Oct 2026 22:27:52 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26.10-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:3cd0d122684f8cc7f01a62de394d6b3437a04c6fd377f8023d4440e311fbe9bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5351426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14b6d0a735190ed0c9719be69207d1e860b4f0a933fc8cd60c807aa6dd347bef`

```dockerfile
```

-	Layers:
	-	`sha256:04bd4352edbf28bda13855733c1781745bf30fec471f6742f1c4236ba0f65b7e`  
		Last Modified: Wed, 21 Oct 2026 22:27:50 GMT  
		Size: 5.3 MB (5315766 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a8c1f7f032339039df58648d5057e9d63e8edf0252f49b2421ec47b8d8ee7f70`  
		Last Modified: Wed, 21 Oct 2026 22:27:50 GMT  
		Size: 35.7 KB (35660 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:26.10.0`

```console
$ docker pull mysql@sha256:f51c9c01c16b0eb5d81bb70ab7e7fcb3b96abc6a54114be3a94e8e569cae7815
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:26.10.0` - linux; amd64

```console
$ docker pull mysql@sha256:82491f3359e91c23f65055033529ed3367b4a48e5f94d25144096fa1b6ca5ef3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.1 MB (299105288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:190f292a926af3f102331e424e729d3e3fd56dc0c4266dbced65de518262c0a8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:48 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:48 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 21:56:17 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Wed, 21 Oct 2026 21:56:19 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 21:56:19 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 21:56:50 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Wed, 21 Oct 2026 21:56:51 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 21 Oct 2026 21:56:51 GMT
ENV MYSQL_MAJOR=innovation
# Wed, 21 Oct 2026 21:56:51 GMT
ENV MYSQL_VERSION=26.10.0-1.el9
# Wed, 21 Oct 2026 21:56:51 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Wed, 21 Oct 2026 21:57:30 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Wed, 21 Oct 2026 21:57:30 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Wed, 21 Oct 2026 21:57:30 GMT
ENV MYSQL_SHELL_VERSION=26.10.0-1.el9
# Wed, 21 Oct 2026 21:58:13 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Wed, 21 Oct 2026 21:58:13 GMT
VOLUME [/var/lib/mysql]
# Wed, 21 Oct 2026 21:58:13 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 21:58:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:58:13 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Wed, 21 Oct 2026 21:58:13 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:97347cf073b19c00bee840fa47d2cd0537dbf5eb581be49840c203f71c0a5c75`  
		Last Modified: Mon, 19 Oct 2026 21:33:00 GMT  
		Size: 47.2 MB (47249168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f94d19cb2000ec18ab44ea7c0431d3a382b56f7aadac47930de9870782f47cb6`  
		Last Modified: Wed, 21 Oct 2026 21:58:37 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a585709eedb3bdf12dc10f66701a96f14c3ae3ddc5014446075d6f3bc5c6008f`  
		Last Modified: Wed, 21 Oct 2026 21:58:37 GMT  
		Size: 783.6 KB (783561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b93f6218baf819d65f2ec44453a53fb3799034b621da7b5846be2604961d3a7e`  
		Last Modified: Wed, 21 Oct 2026 21:58:38 GMT  
		Size: 6.2 MB (6191944 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f627afc3dcfa5b4af70874e198851d988cf3299d1a3c94a4e50a521bddcfad7`  
		Last Modified: Wed, 21 Oct 2026 21:58:37 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:205d9d6acf3e6390a82d75366fffaa7dd70faaf8f077f80730adcb4c6a0ffd7c`  
		Last Modified: Wed, 21 Oct 2026 21:58:39 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:914f9525bedd5a22569a18b1096157dee17e1de24a4804b1ef9ff09b5ddb507f`  
		Last Modified: Wed, 21 Oct 2026 21:58:42 GMT  
		Size: 63.8 MB (63790338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7419b3490447a2b6019bd821b1fc3b8736ff2d1bda0dcb0f0574ec9bac7d1409`  
		Last Modified: Wed, 21 Oct 2026 21:58:39 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d88e4392a3b0f547e870128f9801f5d9a9ba90ff3cea816a312b0e55459e68eb`  
		Last Modified: Wed, 21 Oct 2026 21:58:44 GMT  
		Size: 181.1 MB (181080895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa5981637f05e00e89139c4b57df4d0abfd478a47ff83306b2f39a679581e0da`  
		Last Modified: Wed, 21 Oct 2026 21:58:40 GMT  
		Size: 5.2 KB (5228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26.10.0` - unknown; unknown

```console
$ docker pull mysql@sha256:9cf8a5a6ecc3855e9f0b940dc8a09b0652904888350c3d0348d0c2cbc0532ea8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5352612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03b10ada5bcce44d2b7b98fa4bbed89fd73e6a7b2b79f18f962929987a993527`

```dockerfile
```

-	Layers:
	-	`sha256:8dceb28f73721bb09d4e382a17ce16abd8db54d287e4f76c46e7cba2de4ca740`  
		Last Modified: Wed, 21 Oct 2026 21:58:38 GMT  
		Size: 5.3 MB (5317293 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0c048e487f09df72927f5a6852edb1eed474a4a7a2e682ec8f2ed89b210c7d1e`  
		Last Modified: Wed, 21 Oct 2026 21:58:37 GMT  
		Size: 35.3 KB (35319 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:26.10.0` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:d28721bf25d84a6c14049972b2bb9375a8a5b249f54cf58518c863d9901b4ab9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.5 MB (295538702 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7f5260bcf3774d253076481d8a28c4e4d125cea1e40a8b663fd654d7375d555`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:44 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:44 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 22:25:07 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Wed, 21 Oct 2026 22:25:08 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 22:25:08 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 22:25:46 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Wed, 21 Oct 2026 22:25:47 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 21 Oct 2026 22:25:47 GMT
ENV MYSQL_MAJOR=innovation
# Wed, 21 Oct 2026 22:25:47 GMT
ENV MYSQL_VERSION=26.10.0-1.el9
# Wed, 21 Oct 2026 22:25:47 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Wed, 21 Oct 2026 22:26:32 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Wed, 21 Oct 2026 22:26:32 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Wed, 21 Oct 2026 22:26:32 GMT
ENV MYSQL_SHELL_VERSION=26.10.0-1.el9
# Wed, 21 Oct 2026 22:27:23 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Wed, 21 Oct 2026 22:27:23 GMT
VOLUME [/var/lib/mysql]
# Wed, 21 Oct 2026 22:27:23 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 22:27:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 22:27:23 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Wed, 21 Oct 2026 22:27:23 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ec733952651fc70d299ac3951cabb9fafd032cc96e2ff71bdfd675ac20ca9c93`  
		Last Modified: Mon, 19 Oct 2026 21:32:56 GMT  
		Size: 45.8 MB (45800185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78eaa3a880f9d1cc19e7aff89d0bed22d25d5a59ad885b4c02ce948d8236aaf2`  
		Last Modified: Wed, 21 Oct 2026 22:27:50 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c5ac5f92e1354555b93ed5f9b09cee2d09bbb1a34a5ee4f4ed8c5547c210835`  
		Last Modified: Wed, 21 Oct 2026 22:27:50 GMT  
		Size: 737.5 KB (737530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:492ad916207b0e403d38f4927d83a0de369ab704eb76c58f382668475b98c1f3`  
		Last Modified: Wed, 21 Oct 2026 22:27:50 GMT  
		Size: 5.8 MB (5810099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e28e6a3a5a7220bc491fee32ec2019a6373d5c12ff818a4cd6a1453e37972be3`  
		Last Modified: Wed, 21 Oct 2026 22:27:50 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bd14e67f63fda428007bcd7a63d3ffb55b0d4973719da57d68d18661d6bdacf`  
		Last Modified: Wed, 21 Oct 2026 22:27:51 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08a8ef31b348846a60bcde2513ccf76937bfad94eda4dfcfdbf693473329c7d8`  
		Last Modified: Wed, 21 Oct 2026 22:27:53 GMT  
		Size: 63.8 MB (63828948 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c5bbe02c32fc0461f1bb139ba0dfef719993394926ae75adaafb69279316771`  
		Last Modified: Wed, 21 Oct 2026 22:27:51 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c589b229d807557537717ebb4fc51604e961a870b490885bd0049a89fcad0686`  
		Last Modified: Wed, 21 Oct 2026 22:27:56 GMT  
		Size: 179.4 MB (179352553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2519c685ee5fbc7da56b4531f2aa4e9b61c84578f5ed765956d806372dc8965`  
		Last Modified: Wed, 21 Oct 2026 22:27:52 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26.10.0` - unknown; unknown

```console
$ docker pull mysql@sha256:3cd0d122684f8cc7f01a62de394d6b3437a04c6fd377f8023d4440e311fbe9bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5351426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14b6d0a735190ed0c9719be69207d1e860b4f0a933fc8cd60c807aa6dd347bef`

```dockerfile
```

-	Layers:
	-	`sha256:04bd4352edbf28bda13855733c1781745bf30fec471f6742f1c4236ba0f65b7e`  
		Last Modified: Wed, 21 Oct 2026 22:27:50 GMT  
		Size: 5.3 MB (5315766 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a8c1f7f032339039df58648d5057e9d63e8edf0252f49b2421ec47b8d8ee7f70`  
		Last Modified: Wed, 21 Oct 2026 22:27:50 GMT  
		Size: 35.7 KB (35660 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:26.10.0-oracle`

```console
$ docker pull mysql@sha256:f51c9c01c16b0eb5d81bb70ab7e7fcb3b96abc6a54114be3a94e8e569cae7815
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:26.10.0-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:82491f3359e91c23f65055033529ed3367b4a48e5f94d25144096fa1b6ca5ef3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.1 MB (299105288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:190f292a926af3f102331e424e729d3e3fd56dc0c4266dbced65de518262c0a8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:48 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:48 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 21:56:17 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Wed, 21 Oct 2026 21:56:19 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 21:56:19 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 21:56:50 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Wed, 21 Oct 2026 21:56:51 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 21 Oct 2026 21:56:51 GMT
ENV MYSQL_MAJOR=innovation
# Wed, 21 Oct 2026 21:56:51 GMT
ENV MYSQL_VERSION=26.10.0-1.el9
# Wed, 21 Oct 2026 21:56:51 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Wed, 21 Oct 2026 21:57:30 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Wed, 21 Oct 2026 21:57:30 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Wed, 21 Oct 2026 21:57:30 GMT
ENV MYSQL_SHELL_VERSION=26.10.0-1.el9
# Wed, 21 Oct 2026 21:58:13 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Wed, 21 Oct 2026 21:58:13 GMT
VOLUME [/var/lib/mysql]
# Wed, 21 Oct 2026 21:58:13 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 21:58:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:58:13 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Wed, 21 Oct 2026 21:58:13 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:97347cf073b19c00bee840fa47d2cd0537dbf5eb581be49840c203f71c0a5c75`  
		Last Modified: Mon, 19 Oct 2026 21:33:00 GMT  
		Size: 47.2 MB (47249168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f94d19cb2000ec18ab44ea7c0431d3a382b56f7aadac47930de9870782f47cb6`  
		Last Modified: Wed, 21 Oct 2026 21:58:37 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a585709eedb3bdf12dc10f66701a96f14c3ae3ddc5014446075d6f3bc5c6008f`  
		Last Modified: Wed, 21 Oct 2026 21:58:37 GMT  
		Size: 783.6 KB (783561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b93f6218baf819d65f2ec44453a53fb3799034b621da7b5846be2604961d3a7e`  
		Last Modified: Wed, 21 Oct 2026 21:58:38 GMT  
		Size: 6.2 MB (6191944 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f627afc3dcfa5b4af70874e198851d988cf3299d1a3c94a4e50a521bddcfad7`  
		Last Modified: Wed, 21 Oct 2026 21:58:37 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:205d9d6acf3e6390a82d75366fffaa7dd70faaf8f077f80730adcb4c6a0ffd7c`  
		Last Modified: Wed, 21 Oct 2026 21:58:39 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:914f9525bedd5a22569a18b1096157dee17e1de24a4804b1ef9ff09b5ddb507f`  
		Last Modified: Wed, 21 Oct 2026 21:58:42 GMT  
		Size: 63.8 MB (63790338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7419b3490447a2b6019bd821b1fc3b8736ff2d1bda0dcb0f0574ec9bac7d1409`  
		Last Modified: Wed, 21 Oct 2026 21:58:39 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d88e4392a3b0f547e870128f9801f5d9a9ba90ff3cea816a312b0e55459e68eb`  
		Last Modified: Wed, 21 Oct 2026 21:58:44 GMT  
		Size: 181.1 MB (181080895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa5981637f05e00e89139c4b57df4d0abfd478a47ff83306b2f39a679581e0da`  
		Last Modified: Wed, 21 Oct 2026 21:58:40 GMT  
		Size: 5.2 KB (5228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26.10.0-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:9cf8a5a6ecc3855e9f0b940dc8a09b0652904888350c3d0348d0c2cbc0532ea8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5352612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03b10ada5bcce44d2b7b98fa4bbed89fd73e6a7b2b79f18f962929987a993527`

```dockerfile
```

-	Layers:
	-	`sha256:8dceb28f73721bb09d4e382a17ce16abd8db54d287e4f76c46e7cba2de4ca740`  
		Last Modified: Wed, 21 Oct 2026 21:58:38 GMT  
		Size: 5.3 MB (5317293 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0c048e487f09df72927f5a6852edb1eed474a4a7a2e682ec8f2ed89b210c7d1e`  
		Last Modified: Wed, 21 Oct 2026 21:58:37 GMT  
		Size: 35.3 KB (35319 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:26.10.0-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:d28721bf25d84a6c14049972b2bb9375a8a5b249f54cf58518c863d9901b4ab9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.5 MB (295538702 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7f5260bcf3774d253076481d8a28c4e4d125cea1e40a8b663fd654d7375d555`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:44 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:44 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 22:25:07 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Wed, 21 Oct 2026 22:25:08 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 22:25:08 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 22:25:46 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Wed, 21 Oct 2026 22:25:47 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 21 Oct 2026 22:25:47 GMT
ENV MYSQL_MAJOR=innovation
# Wed, 21 Oct 2026 22:25:47 GMT
ENV MYSQL_VERSION=26.10.0-1.el9
# Wed, 21 Oct 2026 22:25:47 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Wed, 21 Oct 2026 22:26:32 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Wed, 21 Oct 2026 22:26:32 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Wed, 21 Oct 2026 22:26:32 GMT
ENV MYSQL_SHELL_VERSION=26.10.0-1.el9
# Wed, 21 Oct 2026 22:27:23 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Wed, 21 Oct 2026 22:27:23 GMT
VOLUME [/var/lib/mysql]
# Wed, 21 Oct 2026 22:27:23 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 22:27:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 22:27:23 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Wed, 21 Oct 2026 22:27:23 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ec733952651fc70d299ac3951cabb9fafd032cc96e2ff71bdfd675ac20ca9c93`  
		Last Modified: Mon, 19 Oct 2026 21:32:56 GMT  
		Size: 45.8 MB (45800185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78eaa3a880f9d1cc19e7aff89d0bed22d25d5a59ad885b4c02ce948d8236aaf2`  
		Last Modified: Wed, 21 Oct 2026 22:27:50 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c5ac5f92e1354555b93ed5f9b09cee2d09bbb1a34a5ee4f4ed8c5547c210835`  
		Last Modified: Wed, 21 Oct 2026 22:27:50 GMT  
		Size: 737.5 KB (737530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:492ad916207b0e403d38f4927d83a0de369ab704eb76c58f382668475b98c1f3`  
		Last Modified: Wed, 21 Oct 2026 22:27:50 GMT  
		Size: 5.8 MB (5810099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e28e6a3a5a7220bc491fee32ec2019a6373d5c12ff818a4cd6a1453e37972be3`  
		Last Modified: Wed, 21 Oct 2026 22:27:50 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bd14e67f63fda428007bcd7a63d3ffb55b0d4973719da57d68d18661d6bdacf`  
		Last Modified: Wed, 21 Oct 2026 22:27:51 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08a8ef31b348846a60bcde2513ccf76937bfad94eda4dfcfdbf693473329c7d8`  
		Last Modified: Wed, 21 Oct 2026 22:27:53 GMT  
		Size: 63.8 MB (63828948 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c5bbe02c32fc0461f1bb139ba0dfef719993394926ae75adaafb69279316771`  
		Last Modified: Wed, 21 Oct 2026 22:27:51 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c589b229d807557537717ebb4fc51604e961a870b490885bd0049a89fcad0686`  
		Last Modified: Wed, 21 Oct 2026 22:27:56 GMT  
		Size: 179.4 MB (179352553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2519c685ee5fbc7da56b4531f2aa4e9b61c84578f5ed765956d806372dc8965`  
		Last Modified: Wed, 21 Oct 2026 22:27:52 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26.10.0-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:3cd0d122684f8cc7f01a62de394d6b3437a04c6fd377f8023d4440e311fbe9bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5351426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14b6d0a735190ed0c9719be69207d1e860b4f0a933fc8cd60c807aa6dd347bef`

```dockerfile
```

-	Layers:
	-	`sha256:04bd4352edbf28bda13855733c1781745bf30fec471f6742f1c4236ba0f65b7e`  
		Last Modified: Wed, 21 Oct 2026 22:27:50 GMT  
		Size: 5.3 MB (5315766 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a8c1f7f032339039df58648d5057e9d63e8edf0252f49b2421ec47b8d8ee7f70`  
		Last Modified: Wed, 21 Oct 2026 22:27:50 GMT  
		Size: 35.7 KB (35660 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:26.10.0-oraclelinux9`

```console
$ docker pull mysql@sha256:f51c9c01c16b0eb5d81bb70ab7e7fcb3b96abc6a54114be3a94e8e569cae7815
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:26.10.0-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:82491f3359e91c23f65055033529ed3367b4a48e5f94d25144096fa1b6ca5ef3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.1 MB (299105288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:190f292a926af3f102331e424e729d3e3fd56dc0c4266dbced65de518262c0a8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:48 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:48 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 21:56:17 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Wed, 21 Oct 2026 21:56:19 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 21:56:19 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 21:56:50 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Wed, 21 Oct 2026 21:56:51 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 21 Oct 2026 21:56:51 GMT
ENV MYSQL_MAJOR=innovation
# Wed, 21 Oct 2026 21:56:51 GMT
ENV MYSQL_VERSION=26.10.0-1.el9
# Wed, 21 Oct 2026 21:56:51 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Wed, 21 Oct 2026 21:57:30 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Wed, 21 Oct 2026 21:57:30 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Wed, 21 Oct 2026 21:57:30 GMT
ENV MYSQL_SHELL_VERSION=26.10.0-1.el9
# Wed, 21 Oct 2026 21:58:13 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Wed, 21 Oct 2026 21:58:13 GMT
VOLUME [/var/lib/mysql]
# Wed, 21 Oct 2026 21:58:13 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 21:58:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:58:13 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Wed, 21 Oct 2026 21:58:13 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:97347cf073b19c00bee840fa47d2cd0537dbf5eb581be49840c203f71c0a5c75`  
		Last Modified: Mon, 19 Oct 2026 21:33:00 GMT  
		Size: 47.2 MB (47249168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f94d19cb2000ec18ab44ea7c0431d3a382b56f7aadac47930de9870782f47cb6`  
		Last Modified: Wed, 21 Oct 2026 21:58:37 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a585709eedb3bdf12dc10f66701a96f14c3ae3ddc5014446075d6f3bc5c6008f`  
		Last Modified: Wed, 21 Oct 2026 21:58:37 GMT  
		Size: 783.6 KB (783561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b93f6218baf819d65f2ec44453a53fb3799034b621da7b5846be2604961d3a7e`  
		Last Modified: Wed, 21 Oct 2026 21:58:38 GMT  
		Size: 6.2 MB (6191944 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f627afc3dcfa5b4af70874e198851d988cf3299d1a3c94a4e50a521bddcfad7`  
		Last Modified: Wed, 21 Oct 2026 21:58:37 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:205d9d6acf3e6390a82d75366fffaa7dd70faaf8f077f80730adcb4c6a0ffd7c`  
		Last Modified: Wed, 21 Oct 2026 21:58:39 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:914f9525bedd5a22569a18b1096157dee17e1de24a4804b1ef9ff09b5ddb507f`  
		Last Modified: Wed, 21 Oct 2026 21:58:42 GMT  
		Size: 63.8 MB (63790338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7419b3490447a2b6019bd821b1fc3b8736ff2d1bda0dcb0f0574ec9bac7d1409`  
		Last Modified: Wed, 21 Oct 2026 21:58:39 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d88e4392a3b0f547e870128f9801f5d9a9ba90ff3cea816a312b0e55459e68eb`  
		Last Modified: Wed, 21 Oct 2026 21:58:44 GMT  
		Size: 181.1 MB (181080895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa5981637f05e00e89139c4b57df4d0abfd478a47ff83306b2f39a679581e0da`  
		Last Modified: Wed, 21 Oct 2026 21:58:40 GMT  
		Size: 5.2 KB (5228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26.10.0-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:9cf8a5a6ecc3855e9f0b940dc8a09b0652904888350c3d0348d0c2cbc0532ea8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5352612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03b10ada5bcce44d2b7b98fa4bbed89fd73e6a7b2b79f18f962929987a993527`

```dockerfile
```

-	Layers:
	-	`sha256:8dceb28f73721bb09d4e382a17ce16abd8db54d287e4f76c46e7cba2de4ca740`  
		Last Modified: Wed, 21 Oct 2026 21:58:38 GMT  
		Size: 5.3 MB (5317293 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0c048e487f09df72927f5a6852edb1eed474a4a7a2e682ec8f2ed89b210c7d1e`  
		Last Modified: Wed, 21 Oct 2026 21:58:37 GMT  
		Size: 35.3 KB (35319 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:26.10.0-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:d28721bf25d84a6c14049972b2bb9375a8a5b249f54cf58518c863d9901b4ab9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.5 MB (295538702 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7f5260bcf3774d253076481d8a28c4e4d125cea1e40a8b663fd654d7375d555`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:44 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:44 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 22:25:07 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Wed, 21 Oct 2026 22:25:08 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 22:25:08 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 22:25:46 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Wed, 21 Oct 2026 22:25:47 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 21 Oct 2026 22:25:47 GMT
ENV MYSQL_MAJOR=innovation
# Wed, 21 Oct 2026 22:25:47 GMT
ENV MYSQL_VERSION=26.10.0-1.el9
# Wed, 21 Oct 2026 22:25:47 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Wed, 21 Oct 2026 22:26:32 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Wed, 21 Oct 2026 22:26:32 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Wed, 21 Oct 2026 22:26:32 GMT
ENV MYSQL_SHELL_VERSION=26.10.0-1.el9
# Wed, 21 Oct 2026 22:27:23 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Wed, 21 Oct 2026 22:27:23 GMT
VOLUME [/var/lib/mysql]
# Wed, 21 Oct 2026 22:27:23 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 22:27:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 22:27:23 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Wed, 21 Oct 2026 22:27:23 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ec733952651fc70d299ac3951cabb9fafd032cc96e2ff71bdfd675ac20ca9c93`  
		Last Modified: Mon, 19 Oct 2026 21:32:56 GMT  
		Size: 45.8 MB (45800185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78eaa3a880f9d1cc19e7aff89d0bed22d25d5a59ad885b4c02ce948d8236aaf2`  
		Last Modified: Wed, 21 Oct 2026 22:27:50 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c5ac5f92e1354555b93ed5f9b09cee2d09bbb1a34a5ee4f4ed8c5547c210835`  
		Last Modified: Wed, 21 Oct 2026 22:27:50 GMT  
		Size: 737.5 KB (737530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:492ad916207b0e403d38f4927d83a0de369ab704eb76c58f382668475b98c1f3`  
		Last Modified: Wed, 21 Oct 2026 22:27:50 GMT  
		Size: 5.8 MB (5810099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e28e6a3a5a7220bc491fee32ec2019a6373d5c12ff818a4cd6a1453e37972be3`  
		Last Modified: Wed, 21 Oct 2026 22:27:50 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bd14e67f63fda428007bcd7a63d3ffb55b0d4973719da57d68d18661d6bdacf`  
		Last Modified: Wed, 21 Oct 2026 22:27:51 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08a8ef31b348846a60bcde2513ccf76937bfad94eda4dfcfdbf693473329c7d8`  
		Last Modified: Wed, 21 Oct 2026 22:27:53 GMT  
		Size: 63.8 MB (63828948 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c5bbe02c32fc0461f1bb139ba0dfef719993394926ae75adaafb69279316771`  
		Last Modified: Wed, 21 Oct 2026 22:27:51 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c589b229d807557537717ebb4fc51604e961a870b490885bd0049a89fcad0686`  
		Last Modified: Wed, 21 Oct 2026 22:27:56 GMT  
		Size: 179.4 MB (179352553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2519c685ee5fbc7da56b4531f2aa4e9b61c84578f5ed765956d806372dc8965`  
		Last Modified: Wed, 21 Oct 2026 22:27:52 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:26.10.0-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:3cd0d122684f8cc7f01a62de394d6b3437a04c6fd377f8023d4440e311fbe9bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5351426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14b6d0a735190ed0c9719be69207d1e860b4f0a933fc8cd60c807aa6dd347bef`

```dockerfile
```

-	Layers:
	-	`sha256:04bd4352edbf28bda13855733c1781745bf30fec471f6742f1c4236ba0f65b7e`  
		Last Modified: Wed, 21 Oct 2026 22:27:50 GMT  
		Size: 5.3 MB (5315766 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a8c1f7f032339039df58648d5057e9d63e8edf0252f49b2421ec47b8d8ee7f70`  
		Last Modified: Wed, 21 Oct 2026 22:27:50 GMT  
		Size: 35.7 KB (35660 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:8`

```console
$ docker pull mysql@sha256:76f0358884cb92d9a086d24e5671c38048d3fef40f2588703d73eb55392d6b69
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8` - linux; amd64

```console
$ docker pull mysql@sha256:2068651a18ac6048578647ea57b940ca2daed3f504ebe7fba6a93beeb39aaa1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.3 MB (238319598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b35575a03e5327131916eb8d39222c4c89590881fb44ed69b5814910e5fefa34`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:48 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:48 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 21:56:58 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Wed, 21 Oct 2026 21:57:00 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 21:57:00 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 21:57:31 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Wed, 21 Oct 2026 21:57:32 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 21 Oct 2026 21:57:32 GMT
ENV MYSQL_MAJOR=8.4
# Wed, 21 Oct 2026 21:57:32 GMT
ENV MYSQL_VERSION=8.4.13-1.el9
# Wed, 21 Oct 2026 21:57:32 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Wed, 21 Oct 2026 21:58:05 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Wed, 21 Oct 2026 21:58:05 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Wed, 21 Oct 2026 21:58:05 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Wed, 21 Oct 2026 21:58:46 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Wed, 21 Oct 2026 21:58:46 GMT
VOLUME [/var/lib/mysql]
# Wed, 21 Oct 2026 21:58:46 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 21:58:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:58:46 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Wed, 21 Oct 2026 21:58:46 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:97347cf073b19c00bee840fa47d2cd0537dbf5eb581be49840c203f71c0a5c75`  
		Last Modified: Mon, 19 Oct 2026 21:33:00 GMT  
		Size: 47.2 MB (47249168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8d4024251a9b49facba97bb0aed945e8d63e85d170a9cec2df4a8f4c7716774`  
		Last Modified: Wed, 21 Oct 2026 21:59:14 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea1749d53e24f2a4e09743036953ca84c7f557fbe3b39e674e1a8b9d4b3ffabd`  
		Last Modified: Wed, 21 Oct 2026 21:59:14 GMT  
		Size: 783.6 KB (783561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e99723a8598510f46aa20c766c66a627d33cb26cdf6ac8e1aa29e40068c0df2c`  
		Last Modified: Wed, 21 Oct 2026 21:59:15 GMT  
		Size: 6.2 MB (6191925 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c9ac1647849ed1704c0bea832f295638bbc043181f5d32b7c60f180350e4b29`  
		Last Modified: Wed, 21 Oct 2026 21:59:14 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4730445dfdddb06e816d7ace9bbec9193fae570d76b17c0642ed5e845fc5c277`  
		Last Modified: Wed, 21 Oct 2026 21:59:15 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3274015618bea6c41f30ee42e929ae30de410e574cf21a1a717250c69a7434c`  
		Last Modified: Wed, 21 Oct 2026 21:59:18 GMT  
		Size: 51.7 MB (51672396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65fb9e68a2acd6fcbf0406363203ff4bb4ec4c0b12953702936b1a792a9bd327`  
		Last Modified: Wed, 21 Oct 2026 21:59:16 GMT  
		Size: 319.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ba383bbcb8048d53bc154b78c7fc93ae3f1bfb2338eae44df4c9f08678c1723`  
		Last Modified: Wed, 21 Oct 2026 21:59:19 GMT  
		Size: 132.4 MB (132413173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d14dbab656324943f3b284ead2f30b659361f845c1c9e5ffe146f68489a04bd4`  
		Last Modified: Wed, 21 Oct 2026 21:59:17 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8` - unknown; unknown

```console
$ docker pull mysql@sha256:e6d380465ceb5184167bc1c1681203dd5b841411a6bcdc49f4cfede1df50ecda
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15745255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbce1f9ec0c98d5308812fa852af45ae82452d4e2a96e67896e517edc9bef551`

```dockerfile
```

-	Layers:
	-	`sha256:bb103901fbb75902a79e2a314e4b4a0b848ce77b131ff2b5599574a8cdce9841`  
		Last Modified: Wed, 21 Oct 2026 21:59:15 GMT  
		Size: 15.7 MB (15711942 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8ac39cbaf10f1b8006dfc05ac825c64080beefab9dee94f6478671ad78ed30a7`  
		Last Modified: Wed, 21 Oct 2026 21:59:14 GMT  
		Size: 33.3 KB (33313 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:b265fd63b9c8168801c1628b0b21e915846e81192f5a493682a1184cbd70d896
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.0 MB (232986515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92b836d4601d5328ab07d2d25e45d0d06d4e6515834cc7a2f3cb0f12c598dd79`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:44 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:44 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 22:25:18 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Wed, 21 Oct 2026 22:25:20 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 22:25:20 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 22:25:57 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Wed, 21 Oct 2026 22:25:58 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 21 Oct 2026 22:25:58 GMT
ENV MYSQL_MAJOR=8.4
# Wed, 21 Oct 2026 22:25:58 GMT
ENV MYSQL_VERSION=8.4.13-1.el9
# Wed, 21 Oct 2026 22:25:58 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Wed, 21 Oct 2026 22:26:39 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Wed, 21 Oct 2026 22:26:39 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Wed, 21 Oct 2026 22:26:39 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Wed, 21 Oct 2026 22:27:26 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Wed, 21 Oct 2026 22:27:26 GMT
VOLUME [/var/lib/mysql]
# Wed, 21 Oct 2026 22:27:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 22:27:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 22:27:26 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Wed, 21 Oct 2026 22:27:26 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ec733952651fc70d299ac3951cabb9fafd032cc96e2ff71bdfd675ac20ca9c93`  
		Last Modified: Mon, 19 Oct 2026 21:32:56 GMT  
		Size: 45.8 MB (45800185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1aecbd7ade894843f1e6b564492606f764ded2827eed8c2de4bc85434d54d68`  
		Last Modified: Wed, 21 Oct 2026 22:27:57 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3b7fac9789c71bf0e149d521b68182e899866b2a4e41796a91740016b9e8b83`  
		Last Modified: Wed, 21 Oct 2026 22:27:58 GMT  
		Size: 737.5 KB (737530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12954209daddfd97c71978b1787c7b1cc3163e6e8d9fb23b18ce719b18608314`  
		Last Modified: Wed, 21 Oct 2026 22:27:58 GMT  
		Size: 5.8 MB (5810216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b410cd370066afbd7a46cf38a6b58e6d6489188b270f5e88004efc9c313b38c4`  
		Last Modified: Wed, 21 Oct 2026 22:27:58 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d53037f0864f600a40af15695a1e210807e08a4d77f4ef8320a52bb8f2c3d0dd`  
		Last Modified: Wed, 21 Oct 2026 22:27:59 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d96b00f66e3b4e84555ee6f3618ecf42d53480a4923bc190422c9b0b9482a03e`  
		Last Modified: Wed, 21 Oct 2026 22:28:01 GMT  
		Size: 49.9 MB (49857559 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83fdc73d861e3439d13493c9c49c14585feeac95573e428698f9ef3d3055e479`  
		Last Modified: Wed, 21 Oct 2026 22:27:59 GMT  
		Size: 319.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fa0a82bb9852084d80aa95e7280b2b2146e782fa58f6253022ed25799a6539b`  
		Last Modified: Wed, 21 Oct 2026 22:28:02 GMT  
		Size: 130.8 MB (130771651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9427845f29b05ca6a93eaecf52e603bf54186fef308ed6a5b677d8cb95f8f024`  
		Last Modified: Wed, 21 Oct 2026 22:28:00 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8` - unknown; unknown

```console
$ docker pull mysql@sha256:b66e3f9a44d1cb733ab3ebb8df8c31f2721f489d387b715796c349c76d67ce79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15743924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7c53489fc81b0e9ad9e69a21196b217e50126fdd2de3306c0f03c5324ca53a5`

```dockerfile
```

-	Layers:
	-	`sha256:1b22baf835dc48060a74263c2badf114b2068075f86d54ded9f58aff4889c111`  
		Last Modified: Wed, 21 Oct 2026 22:27:58 GMT  
		Size: 15.7 MB (15710342 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b2cf846bf1792f697c69bea65ca687bcf6dca581a7b162a7e9882008d69c6b71`  
		Last Modified: Wed, 21 Oct 2026 22:27:57 GMT  
		Size: 33.6 KB (33582 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:8-oracle`

```console
$ docker pull mysql@sha256:76f0358884cb92d9a086d24e5671c38048d3fef40f2588703d73eb55392d6b69
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:2068651a18ac6048578647ea57b940ca2daed3f504ebe7fba6a93beeb39aaa1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.3 MB (238319598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b35575a03e5327131916eb8d39222c4c89590881fb44ed69b5814910e5fefa34`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:48 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:48 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 21:56:58 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Wed, 21 Oct 2026 21:57:00 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 21:57:00 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 21:57:31 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Wed, 21 Oct 2026 21:57:32 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 21 Oct 2026 21:57:32 GMT
ENV MYSQL_MAJOR=8.4
# Wed, 21 Oct 2026 21:57:32 GMT
ENV MYSQL_VERSION=8.4.13-1.el9
# Wed, 21 Oct 2026 21:57:32 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Wed, 21 Oct 2026 21:58:05 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Wed, 21 Oct 2026 21:58:05 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Wed, 21 Oct 2026 21:58:05 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Wed, 21 Oct 2026 21:58:46 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Wed, 21 Oct 2026 21:58:46 GMT
VOLUME [/var/lib/mysql]
# Wed, 21 Oct 2026 21:58:46 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 21:58:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:58:46 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Wed, 21 Oct 2026 21:58:46 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:97347cf073b19c00bee840fa47d2cd0537dbf5eb581be49840c203f71c0a5c75`  
		Last Modified: Mon, 19 Oct 2026 21:33:00 GMT  
		Size: 47.2 MB (47249168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8d4024251a9b49facba97bb0aed945e8d63e85d170a9cec2df4a8f4c7716774`  
		Last Modified: Wed, 21 Oct 2026 21:59:14 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea1749d53e24f2a4e09743036953ca84c7f557fbe3b39e674e1a8b9d4b3ffabd`  
		Last Modified: Wed, 21 Oct 2026 21:59:14 GMT  
		Size: 783.6 KB (783561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e99723a8598510f46aa20c766c66a627d33cb26cdf6ac8e1aa29e40068c0df2c`  
		Last Modified: Wed, 21 Oct 2026 21:59:15 GMT  
		Size: 6.2 MB (6191925 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c9ac1647849ed1704c0bea832f295638bbc043181f5d32b7c60f180350e4b29`  
		Last Modified: Wed, 21 Oct 2026 21:59:14 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4730445dfdddb06e816d7ace9bbec9193fae570d76b17c0642ed5e845fc5c277`  
		Last Modified: Wed, 21 Oct 2026 21:59:15 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3274015618bea6c41f30ee42e929ae30de410e574cf21a1a717250c69a7434c`  
		Last Modified: Wed, 21 Oct 2026 21:59:18 GMT  
		Size: 51.7 MB (51672396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65fb9e68a2acd6fcbf0406363203ff4bb4ec4c0b12953702936b1a792a9bd327`  
		Last Modified: Wed, 21 Oct 2026 21:59:16 GMT  
		Size: 319.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ba383bbcb8048d53bc154b78c7fc93ae3f1bfb2338eae44df4c9f08678c1723`  
		Last Modified: Wed, 21 Oct 2026 21:59:19 GMT  
		Size: 132.4 MB (132413173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d14dbab656324943f3b284ead2f30b659361f845c1c9e5ffe146f68489a04bd4`  
		Last Modified: Wed, 21 Oct 2026 21:59:17 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:e6d380465ceb5184167bc1c1681203dd5b841411a6bcdc49f4cfede1df50ecda
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15745255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbce1f9ec0c98d5308812fa852af45ae82452d4e2a96e67896e517edc9bef551`

```dockerfile
```

-	Layers:
	-	`sha256:bb103901fbb75902a79e2a314e4b4a0b848ce77b131ff2b5599574a8cdce9841`  
		Last Modified: Wed, 21 Oct 2026 21:59:15 GMT  
		Size: 15.7 MB (15711942 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8ac39cbaf10f1b8006dfc05ac825c64080beefab9dee94f6478671ad78ed30a7`  
		Last Modified: Wed, 21 Oct 2026 21:59:14 GMT  
		Size: 33.3 KB (33313 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:b265fd63b9c8168801c1628b0b21e915846e81192f5a493682a1184cbd70d896
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.0 MB (232986515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92b836d4601d5328ab07d2d25e45d0d06d4e6515834cc7a2f3cb0f12c598dd79`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:44 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:44 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 22:25:18 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Wed, 21 Oct 2026 22:25:20 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 22:25:20 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 22:25:57 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Wed, 21 Oct 2026 22:25:58 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 21 Oct 2026 22:25:58 GMT
ENV MYSQL_MAJOR=8.4
# Wed, 21 Oct 2026 22:25:58 GMT
ENV MYSQL_VERSION=8.4.13-1.el9
# Wed, 21 Oct 2026 22:25:58 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Wed, 21 Oct 2026 22:26:39 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Wed, 21 Oct 2026 22:26:39 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Wed, 21 Oct 2026 22:26:39 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Wed, 21 Oct 2026 22:27:26 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Wed, 21 Oct 2026 22:27:26 GMT
VOLUME [/var/lib/mysql]
# Wed, 21 Oct 2026 22:27:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 22:27:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 22:27:26 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Wed, 21 Oct 2026 22:27:26 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ec733952651fc70d299ac3951cabb9fafd032cc96e2ff71bdfd675ac20ca9c93`  
		Last Modified: Mon, 19 Oct 2026 21:32:56 GMT  
		Size: 45.8 MB (45800185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1aecbd7ade894843f1e6b564492606f764ded2827eed8c2de4bc85434d54d68`  
		Last Modified: Wed, 21 Oct 2026 22:27:57 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3b7fac9789c71bf0e149d521b68182e899866b2a4e41796a91740016b9e8b83`  
		Last Modified: Wed, 21 Oct 2026 22:27:58 GMT  
		Size: 737.5 KB (737530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12954209daddfd97c71978b1787c7b1cc3163e6e8d9fb23b18ce719b18608314`  
		Last Modified: Wed, 21 Oct 2026 22:27:58 GMT  
		Size: 5.8 MB (5810216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b410cd370066afbd7a46cf38a6b58e6d6489188b270f5e88004efc9c313b38c4`  
		Last Modified: Wed, 21 Oct 2026 22:27:58 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d53037f0864f600a40af15695a1e210807e08a4d77f4ef8320a52bb8f2c3d0dd`  
		Last Modified: Wed, 21 Oct 2026 22:27:59 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d96b00f66e3b4e84555ee6f3618ecf42d53480a4923bc190422c9b0b9482a03e`  
		Last Modified: Wed, 21 Oct 2026 22:28:01 GMT  
		Size: 49.9 MB (49857559 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83fdc73d861e3439d13493c9c49c14585feeac95573e428698f9ef3d3055e479`  
		Last Modified: Wed, 21 Oct 2026 22:27:59 GMT  
		Size: 319.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fa0a82bb9852084d80aa95e7280b2b2146e782fa58f6253022ed25799a6539b`  
		Last Modified: Wed, 21 Oct 2026 22:28:02 GMT  
		Size: 130.8 MB (130771651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9427845f29b05ca6a93eaecf52e603bf54186fef308ed6a5b677d8cb95f8f024`  
		Last Modified: Wed, 21 Oct 2026 22:28:00 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:b66e3f9a44d1cb733ab3ebb8df8c31f2721f489d387b715796c349c76d67ce79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15743924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7c53489fc81b0e9ad9e69a21196b217e50126fdd2de3306c0f03c5324ca53a5`

```dockerfile
```

-	Layers:
	-	`sha256:1b22baf835dc48060a74263c2badf114b2068075f86d54ded9f58aff4889c111`  
		Last Modified: Wed, 21 Oct 2026 22:27:58 GMT  
		Size: 15.7 MB (15710342 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b2cf846bf1792f697c69bea65ca687bcf6dca581a7b162a7e9882008d69c6b71`  
		Last Modified: Wed, 21 Oct 2026 22:27:57 GMT  
		Size: 33.6 KB (33582 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:8-oraclelinux9`

```console
$ docker pull mysql@sha256:76f0358884cb92d9a086d24e5671c38048d3fef40f2588703d73eb55392d6b69
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:2068651a18ac6048578647ea57b940ca2daed3f504ebe7fba6a93beeb39aaa1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.3 MB (238319598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b35575a03e5327131916eb8d39222c4c89590881fb44ed69b5814910e5fefa34`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:48 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:48 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 21:56:58 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Wed, 21 Oct 2026 21:57:00 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 21:57:00 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 21:57:31 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Wed, 21 Oct 2026 21:57:32 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 21 Oct 2026 21:57:32 GMT
ENV MYSQL_MAJOR=8.4
# Wed, 21 Oct 2026 21:57:32 GMT
ENV MYSQL_VERSION=8.4.13-1.el9
# Wed, 21 Oct 2026 21:57:32 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Wed, 21 Oct 2026 21:58:05 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Wed, 21 Oct 2026 21:58:05 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Wed, 21 Oct 2026 21:58:05 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Wed, 21 Oct 2026 21:58:46 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Wed, 21 Oct 2026 21:58:46 GMT
VOLUME [/var/lib/mysql]
# Wed, 21 Oct 2026 21:58:46 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 21:58:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:58:46 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Wed, 21 Oct 2026 21:58:46 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:97347cf073b19c00bee840fa47d2cd0537dbf5eb581be49840c203f71c0a5c75`  
		Last Modified: Mon, 19 Oct 2026 21:33:00 GMT  
		Size: 47.2 MB (47249168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8d4024251a9b49facba97bb0aed945e8d63e85d170a9cec2df4a8f4c7716774`  
		Last Modified: Wed, 21 Oct 2026 21:59:14 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea1749d53e24f2a4e09743036953ca84c7f557fbe3b39e674e1a8b9d4b3ffabd`  
		Last Modified: Wed, 21 Oct 2026 21:59:14 GMT  
		Size: 783.6 KB (783561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e99723a8598510f46aa20c766c66a627d33cb26cdf6ac8e1aa29e40068c0df2c`  
		Last Modified: Wed, 21 Oct 2026 21:59:15 GMT  
		Size: 6.2 MB (6191925 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c9ac1647849ed1704c0bea832f295638bbc043181f5d32b7c60f180350e4b29`  
		Last Modified: Wed, 21 Oct 2026 21:59:14 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4730445dfdddb06e816d7ace9bbec9193fae570d76b17c0642ed5e845fc5c277`  
		Last Modified: Wed, 21 Oct 2026 21:59:15 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3274015618bea6c41f30ee42e929ae30de410e574cf21a1a717250c69a7434c`  
		Last Modified: Wed, 21 Oct 2026 21:59:18 GMT  
		Size: 51.7 MB (51672396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65fb9e68a2acd6fcbf0406363203ff4bb4ec4c0b12953702936b1a792a9bd327`  
		Last Modified: Wed, 21 Oct 2026 21:59:16 GMT  
		Size: 319.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ba383bbcb8048d53bc154b78c7fc93ae3f1bfb2338eae44df4c9f08678c1723`  
		Last Modified: Wed, 21 Oct 2026 21:59:19 GMT  
		Size: 132.4 MB (132413173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d14dbab656324943f3b284ead2f30b659361f845c1c9e5ffe146f68489a04bd4`  
		Last Modified: Wed, 21 Oct 2026 21:59:17 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:e6d380465ceb5184167bc1c1681203dd5b841411a6bcdc49f4cfede1df50ecda
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15745255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbce1f9ec0c98d5308812fa852af45ae82452d4e2a96e67896e517edc9bef551`

```dockerfile
```

-	Layers:
	-	`sha256:bb103901fbb75902a79e2a314e4b4a0b848ce77b131ff2b5599574a8cdce9841`  
		Last Modified: Wed, 21 Oct 2026 21:59:15 GMT  
		Size: 15.7 MB (15711942 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8ac39cbaf10f1b8006dfc05ac825c64080beefab9dee94f6478671ad78ed30a7`  
		Last Modified: Wed, 21 Oct 2026 21:59:14 GMT  
		Size: 33.3 KB (33313 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:b265fd63b9c8168801c1628b0b21e915846e81192f5a493682a1184cbd70d896
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.0 MB (232986515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92b836d4601d5328ab07d2d25e45d0d06d4e6515834cc7a2f3cb0f12c598dd79`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:44 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:44 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 22:25:18 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Wed, 21 Oct 2026 22:25:20 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 22:25:20 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 22:25:57 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Wed, 21 Oct 2026 22:25:58 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 21 Oct 2026 22:25:58 GMT
ENV MYSQL_MAJOR=8.4
# Wed, 21 Oct 2026 22:25:58 GMT
ENV MYSQL_VERSION=8.4.13-1.el9
# Wed, 21 Oct 2026 22:25:58 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Wed, 21 Oct 2026 22:26:39 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Wed, 21 Oct 2026 22:26:39 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Wed, 21 Oct 2026 22:26:39 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Wed, 21 Oct 2026 22:27:26 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Wed, 21 Oct 2026 22:27:26 GMT
VOLUME [/var/lib/mysql]
# Wed, 21 Oct 2026 22:27:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 22:27:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 22:27:26 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Wed, 21 Oct 2026 22:27:26 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ec733952651fc70d299ac3951cabb9fafd032cc96e2ff71bdfd675ac20ca9c93`  
		Last Modified: Mon, 19 Oct 2026 21:32:56 GMT  
		Size: 45.8 MB (45800185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1aecbd7ade894843f1e6b564492606f764ded2827eed8c2de4bc85434d54d68`  
		Last Modified: Wed, 21 Oct 2026 22:27:57 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3b7fac9789c71bf0e149d521b68182e899866b2a4e41796a91740016b9e8b83`  
		Last Modified: Wed, 21 Oct 2026 22:27:58 GMT  
		Size: 737.5 KB (737530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12954209daddfd97c71978b1787c7b1cc3163e6e8d9fb23b18ce719b18608314`  
		Last Modified: Wed, 21 Oct 2026 22:27:58 GMT  
		Size: 5.8 MB (5810216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b410cd370066afbd7a46cf38a6b58e6d6489188b270f5e88004efc9c313b38c4`  
		Last Modified: Wed, 21 Oct 2026 22:27:58 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d53037f0864f600a40af15695a1e210807e08a4d77f4ef8320a52bb8f2c3d0dd`  
		Last Modified: Wed, 21 Oct 2026 22:27:59 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d96b00f66e3b4e84555ee6f3618ecf42d53480a4923bc190422c9b0b9482a03e`  
		Last Modified: Wed, 21 Oct 2026 22:28:01 GMT  
		Size: 49.9 MB (49857559 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83fdc73d861e3439d13493c9c49c14585feeac95573e428698f9ef3d3055e479`  
		Last Modified: Wed, 21 Oct 2026 22:27:59 GMT  
		Size: 319.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fa0a82bb9852084d80aa95e7280b2b2146e782fa58f6253022ed25799a6539b`  
		Last Modified: Wed, 21 Oct 2026 22:28:02 GMT  
		Size: 130.8 MB (130771651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9427845f29b05ca6a93eaecf52e603bf54186fef308ed6a5b677d8cb95f8f024`  
		Last Modified: Wed, 21 Oct 2026 22:28:00 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:b66e3f9a44d1cb733ab3ebb8df8c31f2721f489d387b715796c349c76d67ce79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15743924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7c53489fc81b0e9ad9e69a21196b217e50126fdd2de3306c0f03c5324ca53a5`

```dockerfile
```

-	Layers:
	-	`sha256:1b22baf835dc48060a74263c2badf114b2068075f86d54ded9f58aff4889c111`  
		Last Modified: Wed, 21 Oct 2026 22:27:58 GMT  
		Size: 15.7 MB (15710342 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b2cf846bf1792f697c69bea65ca687bcf6dca581a7b162a7e9882008d69c6b71`  
		Last Modified: Wed, 21 Oct 2026 22:27:57 GMT  
		Size: 33.6 KB (33582 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:8.4`

```console
$ docker pull mysql@sha256:76f0358884cb92d9a086d24e5671c38048d3fef40f2588703d73eb55392d6b69
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8.4` - linux; amd64

```console
$ docker pull mysql@sha256:2068651a18ac6048578647ea57b940ca2daed3f504ebe7fba6a93beeb39aaa1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.3 MB (238319598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b35575a03e5327131916eb8d39222c4c89590881fb44ed69b5814910e5fefa34`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:48 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:48 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 21:56:58 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Wed, 21 Oct 2026 21:57:00 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 21:57:00 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 21:57:31 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Wed, 21 Oct 2026 21:57:32 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 21 Oct 2026 21:57:32 GMT
ENV MYSQL_MAJOR=8.4
# Wed, 21 Oct 2026 21:57:32 GMT
ENV MYSQL_VERSION=8.4.13-1.el9
# Wed, 21 Oct 2026 21:57:32 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Wed, 21 Oct 2026 21:58:05 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Wed, 21 Oct 2026 21:58:05 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Wed, 21 Oct 2026 21:58:05 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Wed, 21 Oct 2026 21:58:46 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Wed, 21 Oct 2026 21:58:46 GMT
VOLUME [/var/lib/mysql]
# Wed, 21 Oct 2026 21:58:46 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 21:58:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:58:46 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Wed, 21 Oct 2026 21:58:46 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:97347cf073b19c00bee840fa47d2cd0537dbf5eb581be49840c203f71c0a5c75`  
		Last Modified: Mon, 19 Oct 2026 21:33:00 GMT  
		Size: 47.2 MB (47249168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8d4024251a9b49facba97bb0aed945e8d63e85d170a9cec2df4a8f4c7716774`  
		Last Modified: Wed, 21 Oct 2026 21:59:14 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea1749d53e24f2a4e09743036953ca84c7f557fbe3b39e674e1a8b9d4b3ffabd`  
		Last Modified: Wed, 21 Oct 2026 21:59:14 GMT  
		Size: 783.6 KB (783561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e99723a8598510f46aa20c766c66a627d33cb26cdf6ac8e1aa29e40068c0df2c`  
		Last Modified: Wed, 21 Oct 2026 21:59:15 GMT  
		Size: 6.2 MB (6191925 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c9ac1647849ed1704c0bea832f295638bbc043181f5d32b7c60f180350e4b29`  
		Last Modified: Wed, 21 Oct 2026 21:59:14 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4730445dfdddb06e816d7ace9bbec9193fae570d76b17c0642ed5e845fc5c277`  
		Last Modified: Wed, 21 Oct 2026 21:59:15 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3274015618bea6c41f30ee42e929ae30de410e574cf21a1a717250c69a7434c`  
		Last Modified: Wed, 21 Oct 2026 21:59:18 GMT  
		Size: 51.7 MB (51672396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65fb9e68a2acd6fcbf0406363203ff4bb4ec4c0b12953702936b1a792a9bd327`  
		Last Modified: Wed, 21 Oct 2026 21:59:16 GMT  
		Size: 319.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ba383bbcb8048d53bc154b78c7fc93ae3f1bfb2338eae44df4c9f08678c1723`  
		Last Modified: Wed, 21 Oct 2026 21:59:19 GMT  
		Size: 132.4 MB (132413173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d14dbab656324943f3b284ead2f30b659361f845c1c9e5ffe146f68489a04bd4`  
		Last Modified: Wed, 21 Oct 2026 21:59:17 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4` - unknown; unknown

```console
$ docker pull mysql@sha256:e6d380465ceb5184167bc1c1681203dd5b841411a6bcdc49f4cfede1df50ecda
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15745255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbce1f9ec0c98d5308812fa852af45ae82452d4e2a96e67896e517edc9bef551`

```dockerfile
```

-	Layers:
	-	`sha256:bb103901fbb75902a79e2a314e4b4a0b848ce77b131ff2b5599574a8cdce9841`  
		Last Modified: Wed, 21 Oct 2026 21:59:15 GMT  
		Size: 15.7 MB (15711942 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8ac39cbaf10f1b8006dfc05ac825c64080beefab9dee94f6478671ad78ed30a7`  
		Last Modified: Wed, 21 Oct 2026 21:59:14 GMT  
		Size: 33.3 KB (33313 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8.4` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:b265fd63b9c8168801c1628b0b21e915846e81192f5a493682a1184cbd70d896
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.0 MB (232986515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92b836d4601d5328ab07d2d25e45d0d06d4e6515834cc7a2f3cb0f12c598dd79`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:44 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:44 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 22:25:18 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Wed, 21 Oct 2026 22:25:20 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 22:25:20 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 22:25:57 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Wed, 21 Oct 2026 22:25:58 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 21 Oct 2026 22:25:58 GMT
ENV MYSQL_MAJOR=8.4
# Wed, 21 Oct 2026 22:25:58 GMT
ENV MYSQL_VERSION=8.4.13-1.el9
# Wed, 21 Oct 2026 22:25:58 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Wed, 21 Oct 2026 22:26:39 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Wed, 21 Oct 2026 22:26:39 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Wed, 21 Oct 2026 22:26:39 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Wed, 21 Oct 2026 22:27:26 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Wed, 21 Oct 2026 22:27:26 GMT
VOLUME [/var/lib/mysql]
# Wed, 21 Oct 2026 22:27:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 22:27:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 22:27:26 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Wed, 21 Oct 2026 22:27:26 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ec733952651fc70d299ac3951cabb9fafd032cc96e2ff71bdfd675ac20ca9c93`  
		Last Modified: Mon, 19 Oct 2026 21:32:56 GMT  
		Size: 45.8 MB (45800185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1aecbd7ade894843f1e6b564492606f764ded2827eed8c2de4bc85434d54d68`  
		Last Modified: Wed, 21 Oct 2026 22:27:57 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3b7fac9789c71bf0e149d521b68182e899866b2a4e41796a91740016b9e8b83`  
		Last Modified: Wed, 21 Oct 2026 22:27:58 GMT  
		Size: 737.5 KB (737530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12954209daddfd97c71978b1787c7b1cc3163e6e8d9fb23b18ce719b18608314`  
		Last Modified: Wed, 21 Oct 2026 22:27:58 GMT  
		Size: 5.8 MB (5810216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b410cd370066afbd7a46cf38a6b58e6d6489188b270f5e88004efc9c313b38c4`  
		Last Modified: Wed, 21 Oct 2026 22:27:58 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d53037f0864f600a40af15695a1e210807e08a4d77f4ef8320a52bb8f2c3d0dd`  
		Last Modified: Wed, 21 Oct 2026 22:27:59 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d96b00f66e3b4e84555ee6f3618ecf42d53480a4923bc190422c9b0b9482a03e`  
		Last Modified: Wed, 21 Oct 2026 22:28:01 GMT  
		Size: 49.9 MB (49857559 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83fdc73d861e3439d13493c9c49c14585feeac95573e428698f9ef3d3055e479`  
		Last Modified: Wed, 21 Oct 2026 22:27:59 GMT  
		Size: 319.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fa0a82bb9852084d80aa95e7280b2b2146e782fa58f6253022ed25799a6539b`  
		Last Modified: Wed, 21 Oct 2026 22:28:02 GMT  
		Size: 130.8 MB (130771651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9427845f29b05ca6a93eaecf52e603bf54186fef308ed6a5b677d8cb95f8f024`  
		Last Modified: Wed, 21 Oct 2026 22:28:00 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4` - unknown; unknown

```console
$ docker pull mysql@sha256:b66e3f9a44d1cb733ab3ebb8df8c31f2721f489d387b715796c349c76d67ce79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15743924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7c53489fc81b0e9ad9e69a21196b217e50126fdd2de3306c0f03c5324ca53a5`

```dockerfile
```

-	Layers:
	-	`sha256:1b22baf835dc48060a74263c2badf114b2068075f86d54ded9f58aff4889c111`  
		Last Modified: Wed, 21 Oct 2026 22:27:58 GMT  
		Size: 15.7 MB (15710342 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b2cf846bf1792f697c69bea65ca687bcf6dca581a7b162a7e9882008d69c6b71`  
		Last Modified: Wed, 21 Oct 2026 22:27:57 GMT  
		Size: 33.6 KB (33582 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:8.4-oracle`

```console
$ docker pull mysql@sha256:76f0358884cb92d9a086d24e5671c38048d3fef40f2588703d73eb55392d6b69
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8.4-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:2068651a18ac6048578647ea57b940ca2daed3f504ebe7fba6a93beeb39aaa1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.3 MB (238319598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b35575a03e5327131916eb8d39222c4c89590881fb44ed69b5814910e5fefa34`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:48 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:48 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 21:56:58 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Wed, 21 Oct 2026 21:57:00 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 21:57:00 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 21:57:31 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Wed, 21 Oct 2026 21:57:32 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 21 Oct 2026 21:57:32 GMT
ENV MYSQL_MAJOR=8.4
# Wed, 21 Oct 2026 21:57:32 GMT
ENV MYSQL_VERSION=8.4.13-1.el9
# Wed, 21 Oct 2026 21:57:32 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Wed, 21 Oct 2026 21:58:05 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Wed, 21 Oct 2026 21:58:05 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Wed, 21 Oct 2026 21:58:05 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Wed, 21 Oct 2026 21:58:46 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Wed, 21 Oct 2026 21:58:46 GMT
VOLUME [/var/lib/mysql]
# Wed, 21 Oct 2026 21:58:46 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 21:58:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:58:46 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Wed, 21 Oct 2026 21:58:46 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:97347cf073b19c00bee840fa47d2cd0537dbf5eb581be49840c203f71c0a5c75`  
		Last Modified: Mon, 19 Oct 2026 21:33:00 GMT  
		Size: 47.2 MB (47249168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8d4024251a9b49facba97bb0aed945e8d63e85d170a9cec2df4a8f4c7716774`  
		Last Modified: Wed, 21 Oct 2026 21:59:14 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea1749d53e24f2a4e09743036953ca84c7f557fbe3b39e674e1a8b9d4b3ffabd`  
		Last Modified: Wed, 21 Oct 2026 21:59:14 GMT  
		Size: 783.6 KB (783561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e99723a8598510f46aa20c766c66a627d33cb26cdf6ac8e1aa29e40068c0df2c`  
		Last Modified: Wed, 21 Oct 2026 21:59:15 GMT  
		Size: 6.2 MB (6191925 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c9ac1647849ed1704c0bea832f295638bbc043181f5d32b7c60f180350e4b29`  
		Last Modified: Wed, 21 Oct 2026 21:59:14 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4730445dfdddb06e816d7ace9bbec9193fae570d76b17c0642ed5e845fc5c277`  
		Last Modified: Wed, 21 Oct 2026 21:59:15 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3274015618bea6c41f30ee42e929ae30de410e574cf21a1a717250c69a7434c`  
		Last Modified: Wed, 21 Oct 2026 21:59:18 GMT  
		Size: 51.7 MB (51672396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65fb9e68a2acd6fcbf0406363203ff4bb4ec4c0b12953702936b1a792a9bd327`  
		Last Modified: Wed, 21 Oct 2026 21:59:16 GMT  
		Size: 319.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ba383bbcb8048d53bc154b78c7fc93ae3f1bfb2338eae44df4c9f08678c1723`  
		Last Modified: Wed, 21 Oct 2026 21:59:19 GMT  
		Size: 132.4 MB (132413173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d14dbab656324943f3b284ead2f30b659361f845c1c9e5ffe146f68489a04bd4`  
		Last Modified: Wed, 21 Oct 2026 21:59:17 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:e6d380465ceb5184167bc1c1681203dd5b841411a6bcdc49f4cfede1df50ecda
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15745255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbce1f9ec0c98d5308812fa852af45ae82452d4e2a96e67896e517edc9bef551`

```dockerfile
```

-	Layers:
	-	`sha256:bb103901fbb75902a79e2a314e4b4a0b848ce77b131ff2b5599574a8cdce9841`  
		Last Modified: Wed, 21 Oct 2026 21:59:15 GMT  
		Size: 15.7 MB (15711942 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8ac39cbaf10f1b8006dfc05ac825c64080beefab9dee94f6478671ad78ed30a7`  
		Last Modified: Wed, 21 Oct 2026 21:59:14 GMT  
		Size: 33.3 KB (33313 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8.4-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:b265fd63b9c8168801c1628b0b21e915846e81192f5a493682a1184cbd70d896
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.0 MB (232986515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92b836d4601d5328ab07d2d25e45d0d06d4e6515834cc7a2f3cb0f12c598dd79`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:44 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:44 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 22:25:18 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Wed, 21 Oct 2026 22:25:20 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 22:25:20 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 22:25:57 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Wed, 21 Oct 2026 22:25:58 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 21 Oct 2026 22:25:58 GMT
ENV MYSQL_MAJOR=8.4
# Wed, 21 Oct 2026 22:25:58 GMT
ENV MYSQL_VERSION=8.4.13-1.el9
# Wed, 21 Oct 2026 22:25:58 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Wed, 21 Oct 2026 22:26:39 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Wed, 21 Oct 2026 22:26:39 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Wed, 21 Oct 2026 22:26:39 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Wed, 21 Oct 2026 22:27:26 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Wed, 21 Oct 2026 22:27:26 GMT
VOLUME [/var/lib/mysql]
# Wed, 21 Oct 2026 22:27:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 22:27:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 22:27:26 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Wed, 21 Oct 2026 22:27:26 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ec733952651fc70d299ac3951cabb9fafd032cc96e2ff71bdfd675ac20ca9c93`  
		Last Modified: Mon, 19 Oct 2026 21:32:56 GMT  
		Size: 45.8 MB (45800185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1aecbd7ade894843f1e6b564492606f764ded2827eed8c2de4bc85434d54d68`  
		Last Modified: Wed, 21 Oct 2026 22:27:57 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3b7fac9789c71bf0e149d521b68182e899866b2a4e41796a91740016b9e8b83`  
		Last Modified: Wed, 21 Oct 2026 22:27:58 GMT  
		Size: 737.5 KB (737530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12954209daddfd97c71978b1787c7b1cc3163e6e8d9fb23b18ce719b18608314`  
		Last Modified: Wed, 21 Oct 2026 22:27:58 GMT  
		Size: 5.8 MB (5810216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b410cd370066afbd7a46cf38a6b58e6d6489188b270f5e88004efc9c313b38c4`  
		Last Modified: Wed, 21 Oct 2026 22:27:58 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d53037f0864f600a40af15695a1e210807e08a4d77f4ef8320a52bb8f2c3d0dd`  
		Last Modified: Wed, 21 Oct 2026 22:27:59 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d96b00f66e3b4e84555ee6f3618ecf42d53480a4923bc190422c9b0b9482a03e`  
		Last Modified: Wed, 21 Oct 2026 22:28:01 GMT  
		Size: 49.9 MB (49857559 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83fdc73d861e3439d13493c9c49c14585feeac95573e428698f9ef3d3055e479`  
		Last Modified: Wed, 21 Oct 2026 22:27:59 GMT  
		Size: 319.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fa0a82bb9852084d80aa95e7280b2b2146e782fa58f6253022ed25799a6539b`  
		Last Modified: Wed, 21 Oct 2026 22:28:02 GMT  
		Size: 130.8 MB (130771651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9427845f29b05ca6a93eaecf52e603bf54186fef308ed6a5b677d8cb95f8f024`  
		Last Modified: Wed, 21 Oct 2026 22:28:00 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:b66e3f9a44d1cb733ab3ebb8df8c31f2721f489d387b715796c349c76d67ce79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15743924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7c53489fc81b0e9ad9e69a21196b217e50126fdd2de3306c0f03c5324ca53a5`

```dockerfile
```

-	Layers:
	-	`sha256:1b22baf835dc48060a74263c2badf114b2068075f86d54ded9f58aff4889c111`  
		Last Modified: Wed, 21 Oct 2026 22:27:58 GMT  
		Size: 15.7 MB (15710342 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b2cf846bf1792f697c69bea65ca687bcf6dca581a7b162a7e9882008d69c6b71`  
		Last Modified: Wed, 21 Oct 2026 22:27:57 GMT  
		Size: 33.6 KB (33582 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:8.4-oraclelinux9`

```console
$ docker pull mysql@sha256:76f0358884cb92d9a086d24e5671c38048d3fef40f2588703d73eb55392d6b69
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8.4-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:2068651a18ac6048578647ea57b940ca2daed3f504ebe7fba6a93beeb39aaa1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.3 MB (238319598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b35575a03e5327131916eb8d39222c4c89590881fb44ed69b5814910e5fefa34`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:48 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:48 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 21:56:58 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Wed, 21 Oct 2026 21:57:00 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 21:57:00 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 21:57:31 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Wed, 21 Oct 2026 21:57:32 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 21 Oct 2026 21:57:32 GMT
ENV MYSQL_MAJOR=8.4
# Wed, 21 Oct 2026 21:57:32 GMT
ENV MYSQL_VERSION=8.4.13-1.el9
# Wed, 21 Oct 2026 21:57:32 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Wed, 21 Oct 2026 21:58:05 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Wed, 21 Oct 2026 21:58:05 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Wed, 21 Oct 2026 21:58:05 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Wed, 21 Oct 2026 21:58:46 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Wed, 21 Oct 2026 21:58:46 GMT
VOLUME [/var/lib/mysql]
# Wed, 21 Oct 2026 21:58:46 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 21:58:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:58:46 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Wed, 21 Oct 2026 21:58:46 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:97347cf073b19c00bee840fa47d2cd0537dbf5eb581be49840c203f71c0a5c75`  
		Last Modified: Mon, 19 Oct 2026 21:33:00 GMT  
		Size: 47.2 MB (47249168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8d4024251a9b49facba97bb0aed945e8d63e85d170a9cec2df4a8f4c7716774`  
		Last Modified: Wed, 21 Oct 2026 21:59:14 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea1749d53e24f2a4e09743036953ca84c7f557fbe3b39e674e1a8b9d4b3ffabd`  
		Last Modified: Wed, 21 Oct 2026 21:59:14 GMT  
		Size: 783.6 KB (783561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e99723a8598510f46aa20c766c66a627d33cb26cdf6ac8e1aa29e40068c0df2c`  
		Last Modified: Wed, 21 Oct 2026 21:59:15 GMT  
		Size: 6.2 MB (6191925 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c9ac1647849ed1704c0bea832f295638bbc043181f5d32b7c60f180350e4b29`  
		Last Modified: Wed, 21 Oct 2026 21:59:14 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4730445dfdddb06e816d7ace9bbec9193fae570d76b17c0642ed5e845fc5c277`  
		Last Modified: Wed, 21 Oct 2026 21:59:15 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3274015618bea6c41f30ee42e929ae30de410e574cf21a1a717250c69a7434c`  
		Last Modified: Wed, 21 Oct 2026 21:59:18 GMT  
		Size: 51.7 MB (51672396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65fb9e68a2acd6fcbf0406363203ff4bb4ec4c0b12953702936b1a792a9bd327`  
		Last Modified: Wed, 21 Oct 2026 21:59:16 GMT  
		Size: 319.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ba383bbcb8048d53bc154b78c7fc93ae3f1bfb2338eae44df4c9f08678c1723`  
		Last Modified: Wed, 21 Oct 2026 21:59:19 GMT  
		Size: 132.4 MB (132413173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d14dbab656324943f3b284ead2f30b659361f845c1c9e5ffe146f68489a04bd4`  
		Last Modified: Wed, 21 Oct 2026 21:59:17 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:e6d380465ceb5184167bc1c1681203dd5b841411a6bcdc49f4cfede1df50ecda
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15745255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbce1f9ec0c98d5308812fa852af45ae82452d4e2a96e67896e517edc9bef551`

```dockerfile
```

-	Layers:
	-	`sha256:bb103901fbb75902a79e2a314e4b4a0b848ce77b131ff2b5599574a8cdce9841`  
		Last Modified: Wed, 21 Oct 2026 21:59:15 GMT  
		Size: 15.7 MB (15711942 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8ac39cbaf10f1b8006dfc05ac825c64080beefab9dee94f6478671ad78ed30a7`  
		Last Modified: Wed, 21 Oct 2026 21:59:14 GMT  
		Size: 33.3 KB (33313 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8.4-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:b265fd63b9c8168801c1628b0b21e915846e81192f5a493682a1184cbd70d896
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.0 MB (232986515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92b836d4601d5328ab07d2d25e45d0d06d4e6515834cc7a2f3cb0f12c598dd79`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:44 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:44 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 22:25:18 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Wed, 21 Oct 2026 22:25:20 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 22:25:20 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 22:25:57 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Wed, 21 Oct 2026 22:25:58 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 21 Oct 2026 22:25:58 GMT
ENV MYSQL_MAJOR=8.4
# Wed, 21 Oct 2026 22:25:58 GMT
ENV MYSQL_VERSION=8.4.13-1.el9
# Wed, 21 Oct 2026 22:25:58 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Wed, 21 Oct 2026 22:26:39 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Wed, 21 Oct 2026 22:26:39 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Wed, 21 Oct 2026 22:26:39 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Wed, 21 Oct 2026 22:27:26 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Wed, 21 Oct 2026 22:27:26 GMT
VOLUME [/var/lib/mysql]
# Wed, 21 Oct 2026 22:27:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 22:27:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 22:27:26 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Wed, 21 Oct 2026 22:27:26 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ec733952651fc70d299ac3951cabb9fafd032cc96e2ff71bdfd675ac20ca9c93`  
		Last Modified: Mon, 19 Oct 2026 21:32:56 GMT  
		Size: 45.8 MB (45800185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1aecbd7ade894843f1e6b564492606f764ded2827eed8c2de4bc85434d54d68`  
		Last Modified: Wed, 21 Oct 2026 22:27:57 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3b7fac9789c71bf0e149d521b68182e899866b2a4e41796a91740016b9e8b83`  
		Last Modified: Wed, 21 Oct 2026 22:27:58 GMT  
		Size: 737.5 KB (737530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12954209daddfd97c71978b1787c7b1cc3163e6e8d9fb23b18ce719b18608314`  
		Last Modified: Wed, 21 Oct 2026 22:27:58 GMT  
		Size: 5.8 MB (5810216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b410cd370066afbd7a46cf38a6b58e6d6489188b270f5e88004efc9c313b38c4`  
		Last Modified: Wed, 21 Oct 2026 22:27:58 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d53037f0864f600a40af15695a1e210807e08a4d77f4ef8320a52bb8f2c3d0dd`  
		Last Modified: Wed, 21 Oct 2026 22:27:59 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d96b00f66e3b4e84555ee6f3618ecf42d53480a4923bc190422c9b0b9482a03e`  
		Last Modified: Wed, 21 Oct 2026 22:28:01 GMT  
		Size: 49.9 MB (49857559 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83fdc73d861e3439d13493c9c49c14585feeac95573e428698f9ef3d3055e479`  
		Last Modified: Wed, 21 Oct 2026 22:27:59 GMT  
		Size: 319.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fa0a82bb9852084d80aa95e7280b2b2146e782fa58f6253022ed25799a6539b`  
		Last Modified: Wed, 21 Oct 2026 22:28:02 GMT  
		Size: 130.8 MB (130771651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9427845f29b05ca6a93eaecf52e603bf54186fef308ed6a5b677d8cb95f8f024`  
		Last Modified: Wed, 21 Oct 2026 22:28:00 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:b66e3f9a44d1cb733ab3ebb8df8c31f2721f489d387b715796c349c76d67ce79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15743924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7c53489fc81b0e9ad9e69a21196b217e50126fdd2de3306c0f03c5324ca53a5`

```dockerfile
```

-	Layers:
	-	`sha256:1b22baf835dc48060a74263c2badf114b2068075f86d54ded9f58aff4889c111`  
		Last Modified: Wed, 21 Oct 2026 22:27:58 GMT  
		Size: 15.7 MB (15710342 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b2cf846bf1792f697c69bea65ca687bcf6dca581a7b162a7e9882008d69c6b71`  
		Last Modified: Wed, 21 Oct 2026 22:27:57 GMT  
		Size: 33.6 KB (33582 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:8.4.13`

```console
$ docker pull mysql@sha256:76f0358884cb92d9a086d24e5671c38048d3fef40f2588703d73eb55392d6b69
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8.4.13` - linux; amd64

```console
$ docker pull mysql@sha256:2068651a18ac6048578647ea57b940ca2daed3f504ebe7fba6a93beeb39aaa1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.3 MB (238319598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b35575a03e5327131916eb8d39222c4c89590881fb44ed69b5814910e5fefa34`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:48 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:48 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 21:56:58 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Wed, 21 Oct 2026 21:57:00 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 21:57:00 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 21:57:31 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Wed, 21 Oct 2026 21:57:32 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 21 Oct 2026 21:57:32 GMT
ENV MYSQL_MAJOR=8.4
# Wed, 21 Oct 2026 21:57:32 GMT
ENV MYSQL_VERSION=8.4.13-1.el9
# Wed, 21 Oct 2026 21:57:32 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Wed, 21 Oct 2026 21:58:05 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Wed, 21 Oct 2026 21:58:05 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Wed, 21 Oct 2026 21:58:05 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Wed, 21 Oct 2026 21:58:46 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Wed, 21 Oct 2026 21:58:46 GMT
VOLUME [/var/lib/mysql]
# Wed, 21 Oct 2026 21:58:46 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 21:58:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:58:46 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Wed, 21 Oct 2026 21:58:46 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:97347cf073b19c00bee840fa47d2cd0537dbf5eb581be49840c203f71c0a5c75`  
		Last Modified: Mon, 19 Oct 2026 21:33:00 GMT  
		Size: 47.2 MB (47249168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8d4024251a9b49facba97bb0aed945e8d63e85d170a9cec2df4a8f4c7716774`  
		Last Modified: Wed, 21 Oct 2026 21:59:14 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea1749d53e24f2a4e09743036953ca84c7f557fbe3b39e674e1a8b9d4b3ffabd`  
		Last Modified: Wed, 21 Oct 2026 21:59:14 GMT  
		Size: 783.6 KB (783561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e99723a8598510f46aa20c766c66a627d33cb26cdf6ac8e1aa29e40068c0df2c`  
		Last Modified: Wed, 21 Oct 2026 21:59:15 GMT  
		Size: 6.2 MB (6191925 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c9ac1647849ed1704c0bea832f295638bbc043181f5d32b7c60f180350e4b29`  
		Last Modified: Wed, 21 Oct 2026 21:59:14 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4730445dfdddb06e816d7ace9bbec9193fae570d76b17c0642ed5e845fc5c277`  
		Last Modified: Wed, 21 Oct 2026 21:59:15 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3274015618bea6c41f30ee42e929ae30de410e574cf21a1a717250c69a7434c`  
		Last Modified: Wed, 21 Oct 2026 21:59:18 GMT  
		Size: 51.7 MB (51672396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65fb9e68a2acd6fcbf0406363203ff4bb4ec4c0b12953702936b1a792a9bd327`  
		Last Modified: Wed, 21 Oct 2026 21:59:16 GMT  
		Size: 319.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ba383bbcb8048d53bc154b78c7fc93ae3f1bfb2338eae44df4c9f08678c1723`  
		Last Modified: Wed, 21 Oct 2026 21:59:19 GMT  
		Size: 132.4 MB (132413173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d14dbab656324943f3b284ead2f30b659361f845c1c9e5ffe146f68489a04bd4`  
		Last Modified: Wed, 21 Oct 2026 21:59:17 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4.13` - unknown; unknown

```console
$ docker pull mysql@sha256:e6d380465ceb5184167bc1c1681203dd5b841411a6bcdc49f4cfede1df50ecda
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15745255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbce1f9ec0c98d5308812fa852af45ae82452d4e2a96e67896e517edc9bef551`

```dockerfile
```

-	Layers:
	-	`sha256:bb103901fbb75902a79e2a314e4b4a0b848ce77b131ff2b5599574a8cdce9841`  
		Last Modified: Wed, 21 Oct 2026 21:59:15 GMT  
		Size: 15.7 MB (15711942 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8ac39cbaf10f1b8006dfc05ac825c64080beefab9dee94f6478671ad78ed30a7`  
		Last Modified: Wed, 21 Oct 2026 21:59:14 GMT  
		Size: 33.3 KB (33313 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8.4.13` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:b265fd63b9c8168801c1628b0b21e915846e81192f5a493682a1184cbd70d896
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.0 MB (232986515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92b836d4601d5328ab07d2d25e45d0d06d4e6515834cc7a2f3cb0f12c598dd79`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:44 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:44 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 22:25:18 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Wed, 21 Oct 2026 22:25:20 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 22:25:20 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 22:25:57 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Wed, 21 Oct 2026 22:25:58 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 21 Oct 2026 22:25:58 GMT
ENV MYSQL_MAJOR=8.4
# Wed, 21 Oct 2026 22:25:58 GMT
ENV MYSQL_VERSION=8.4.13-1.el9
# Wed, 21 Oct 2026 22:25:58 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Wed, 21 Oct 2026 22:26:39 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Wed, 21 Oct 2026 22:26:39 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Wed, 21 Oct 2026 22:26:39 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Wed, 21 Oct 2026 22:27:26 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Wed, 21 Oct 2026 22:27:26 GMT
VOLUME [/var/lib/mysql]
# Wed, 21 Oct 2026 22:27:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 22:27:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 22:27:26 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Wed, 21 Oct 2026 22:27:26 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ec733952651fc70d299ac3951cabb9fafd032cc96e2ff71bdfd675ac20ca9c93`  
		Last Modified: Mon, 19 Oct 2026 21:32:56 GMT  
		Size: 45.8 MB (45800185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1aecbd7ade894843f1e6b564492606f764ded2827eed8c2de4bc85434d54d68`  
		Last Modified: Wed, 21 Oct 2026 22:27:57 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3b7fac9789c71bf0e149d521b68182e899866b2a4e41796a91740016b9e8b83`  
		Last Modified: Wed, 21 Oct 2026 22:27:58 GMT  
		Size: 737.5 KB (737530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12954209daddfd97c71978b1787c7b1cc3163e6e8d9fb23b18ce719b18608314`  
		Last Modified: Wed, 21 Oct 2026 22:27:58 GMT  
		Size: 5.8 MB (5810216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b410cd370066afbd7a46cf38a6b58e6d6489188b270f5e88004efc9c313b38c4`  
		Last Modified: Wed, 21 Oct 2026 22:27:58 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d53037f0864f600a40af15695a1e210807e08a4d77f4ef8320a52bb8f2c3d0dd`  
		Last Modified: Wed, 21 Oct 2026 22:27:59 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d96b00f66e3b4e84555ee6f3618ecf42d53480a4923bc190422c9b0b9482a03e`  
		Last Modified: Wed, 21 Oct 2026 22:28:01 GMT  
		Size: 49.9 MB (49857559 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83fdc73d861e3439d13493c9c49c14585feeac95573e428698f9ef3d3055e479`  
		Last Modified: Wed, 21 Oct 2026 22:27:59 GMT  
		Size: 319.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fa0a82bb9852084d80aa95e7280b2b2146e782fa58f6253022ed25799a6539b`  
		Last Modified: Wed, 21 Oct 2026 22:28:02 GMT  
		Size: 130.8 MB (130771651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9427845f29b05ca6a93eaecf52e603bf54186fef308ed6a5b677d8cb95f8f024`  
		Last Modified: Wed, 21 Oct 2026 22:28:00 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4.13` - unknown; unknown

```console
$ docker pull mysql@sha256:b66e3f9a44d1cb733ab3ebb8df8c31f2721f489d387b715796c349c76d67ce79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15743924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7c53489fc81b0e9ad9e69a21196b217e50126fdd2de3306c0f03c5324ca53a5`

```dockerfile
```

-	Layers:
	-	`sha256:1b22baf835dc48060a74263c2badf114b2068075f86d54ded9f58aff4889c111`  
		Last Modified: Wed, 21 Oct 2026 22:27:58 GMT  
		Size: 15.7 MB (15710342 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b2cf846bf1792f697c69bea65ca687bcf6dca581a7b162a7e9882008d69c6b71`  
		Last Modified: Wed, 21 Oct 2026 22:27:57 GMT  
		Size: 33.6 KB (33582 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:8.4.13-oracle`

```console
$ docker pull mysql@sha256:76f0358884cb92d9a086d24e5671c38048d3fef40f2588703d73eb55392d6b69
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8.4.13-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:2068651a18ac6048578647ea57b940ca2daed3f504ebe7fba6a93beeb39aaa1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.3 MB (238319598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b35575a03e5327131916eb8d39222c4c89590881fb44ed69b5814910e5fefa34`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:48 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:48 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 21:56:58 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Wed, 21 Oct 2026 21:57:00 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 21:57:00 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 21:57:31 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Wed, 21 Oct 2026 21:57:32 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 21 Oct 2026 21:57:32 GMT
ENV MYSQL_MAJOR=8.4
# Wed, 21 Oct 2026 21:57:32 GMT
ENV MYSQL_VERSION=8.4.13-1.el9
# Wed, 21 Oct 2026 21:57:32 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Wed, 21 Oct 2026 21:58:05 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Wed, 21 Oct 2026 21:58:05 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Wed, 21 Oct 2026 21:58:05 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Wed, 21 Oct 2026 21:58:46 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Wed, 21 Oct 2026 21:58:46 GMT
VOLUME [/var/lib/mysql]
# Wed, 21 Oct 2026 21:58:46 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 21:58:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:58:46 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Wed, 21 Oct 2026 21:58:46 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:97347cf073b19c00bee840fa47d2cd0537dbf5eb581be49840c203f71c0a5c75`  
		Last Modified: Mon, 19 Oct 2026 21:33:00 GMT  
		Size: 47.2 MB (47249168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8d4024251a9b49facba97bb0aed945e8d63e85d170a9cec2df4a8f4c7716774`  
		Last Modified: Wed, 21 Oct 2026 21:59:14 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea1749d53e24f2a4e09743036953ca84c7f557fbe3b39e674e1a8b9d4b3ffabd`  
		Last Modified: Wed, 21 Oct 2026 21:59:14 GMT  
		Size: 783.6 KB (783561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e99723a8598510f46aa20c766c66a627d33cb26cdf6ac8e1aa29e40068c0df2c`  
		Last Modified: Wed, 21 Oct 2026 21:59:15 GMT  
		Size: 6.2 MB (6191925 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c9ac1647849ed1704c0bea832f295638bbc043181f5d32b7c60f180350e4b29`  
		Last Modified: Wed, 21 Oct 2026 21:59:14 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4730445dfdddb06e816d7ace9bbec9193fae570d76b17c0642ed5e845fc5c277`  
		Last Modified: Wed, 21 Oct 2026 21:59:15 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3274015618bea6c41f30ee42e929ae30de410e574cf21a1a717250c69a7434c`  
		Last Modified: Wed, 21 Oct 2026 21:59:18 GMT  
		Size: 51.7 MB (51672396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65fb9e68a2acd6fcbf0406363203ff4bb4ec4c0b12953702936b1a792a9bd327`  
		Last Modified: Wed, 21 Oct 2026 21:59:16 GMT  
		Size: 319.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ba383bbcb8048d53bc154b78c7fc93ae3f1bfb2338eae44df4c9f08678c1723`  
		Last Modified: Wed, 21 Oct 2026 21:59:19 GMT  
		Size: 132.4 MB (132413173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d14dbab656324943f3b284ead2f30b659361f845c1c9e5ffe146f68489a04bd4`  
		Last Modified: Wed, 21 Oct 2026 21:59:17 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4.13-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:e6d380465ceb5184167bc1c1681203dd5b841411a6bcdc49f4cfede1df50ecda
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15745255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbce1f9ec0c98d5308812fa852af45ae82452d4e2a96e67896e517edc9bef551`

```dockerfile
```

-	Layers:
	-	`sha256:bb103901fbb75902a79e2a314e4b4a0b848ce77b131ff2b5599574a8cdce9841`  
		Last Modified: Wed, 21 Oct 2026 21:59:15 GMT  
		Size: 15.7 MB (15711942 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8ac39cbaf10f1b8006dfc05ac825c64080beefab9dee94f6478671ad78ed30a7`  
		Last Modified: Wed, 21 Oct 2026 21:59:14 GMT  
		Size: 33.3 KB (33313 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8.4.13-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:b265fd63b9c8168801c1628b0b21e915846e81192f5a493682a1184cbd70d896
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.0 MB (232986515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92b836d4601d5328ab07d2d25e45d0d06d4e6515834cc7a2f3cb0f12c598dd79`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:44 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:44 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 22:25:18 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Wed, 21 Oct 2026 22:25:20 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 22:25:20 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 22:25:57 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Wed, 21 Oct 2026 22:25:58 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 21 Oct 2026 22:25:58 GMT
ENV MYSQL_MAJOR=8.4
# Wed, 21 Oct 2026 22:25:58 GMT
ENV MYSQL_VERSION=8.4.13-1.el9
# Wed, 21 Oct 2026 22:25:58 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Wed, 21 Oct 2026 22:26:39 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Wed, 21 Oct 2026 22:26:39 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Wed, 21 Oct 2026 22:26:39 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Wed, 21 Oct 2026 22:27:26 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Wed, 21 Oct 2026 22:27:26 GMT
VOLUME [/var/lib/mysql]
# Wed, 21 Oct 2026 22:27:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 22:27:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 22:27:26 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Wed, 21 Oct 2026 22:27:26 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ec733952651fc70d299ac3951cabb9fafd032cc96e2ff71bdfd675ac20ca9c93`  
		Last Modified: Mon, 19 Oct 2026 21:32:56 GMT  
		Size: 45.8 MB (45800185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1aecbd7ade894843f1e6b564492606f764ded2827eed8c2de4bc85434d54d68`  
		Last Modified: Wed, 21 Oct 2026 22:27:57 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3b7fac9789c71bf0e149d521b68182e899866b2a4e41796a91740016b9e8b83`  
		Last Modified: Wed, 21 Oct 2026 22:27:58 GMT  
		Size: 737.5 KB (737530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12954209daddfd97c71978b1787c7b1cc3163e6e8d9fb23b18ce719b18608314`  
		Last Modified: Wed, 21 Oct 2026 22:27:58 GMT  
		Size: 5.8 MB (5810216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b410cd370066afbd7a46cf38a6b58e6d6489188b270f5e88004efc9c313b38c4`  
		Last Modified: Wed, 21 Oct 2026 22:27:58 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d53037f0864f600a40af15695a1e210807e08a4d77f4ef8320a52bb8f2c3d0dd`  
		Last Modified: Wed, 21 Oct 2026 22:27:59 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d96b00f66e3b4e84555ee6f3618ecf42d53480a4923bc190422c9b0b9482a03e`  
		Last Modified: Wed, 21 Oct 2026 22:28:01 GMT  
		Size: 49.9 MB (49857559 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83fdc73d861e3439d13493c9c49c14585feeac95573e428698f9ef3d3055e479`  
		Last Modified: Wed, 21 Oct 2026 22:27:59 GMT  
		Size: 319.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fa0a82bb9852084d80aa95e7280b2b2146e782fa58f6253022ed25799a6539b`  
		Last Modified: Wed, 21 Oct 2026 22:28:02 GMT  
		Size: 130.8 MB (130771651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9427845f29b05ca6a93eaecf52e603bf54186fef308ed6a5b677d8cb95f8f024`  
		Last Modified: Wed, 21 Oct 2026 22:28:00 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4.13-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:b66e3f9a44d1cb733ab3ebb8df8c31f2721f489d387b715796c349c76d67ce79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15743924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7c53489fc81b0e9ad9e69a21196b217e50126fdd2de3306c0f03c5324ca53a5`

```dockerfile
```

-	Layers:
	-	`sha256:1b22baf835dc48060a74263c2badf114b2068075f86d54ded9f58aff4889c111`  
		Last Modified: Wed, 21 Oct 2026 22:27:58 GMT  
		Size: 15.7 MB (15710342 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b2cf846bf1792f697c69bea65ca687bcf6dca581a7b162a7e9882008d69c6b71`  
		Last Modified: Wed, 21 Oct 2026 22:27:57 GMT  
		Size: 33.6 KB (33582 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:8.4.13-oraclelinux9`

```console
$ docker pull mysql@sha256:76f0358884cb92d9a086d24e5671c38048d3fef40f2588703d73eb55392d6b69
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:8.4.13-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:2068651a18ac6048578647ea57b940ca2daed3f504ebe7fba6a93beeb39aaa1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.3 MB (238319598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b35575a03e5327131916eb8d39222c4c89590881fb44ed69b5814910e5fefa34`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:48 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:48 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 21:56:58 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Wed, 21 Oct 2026 21:57:00 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 21:57:00 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 21:57:31 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Wed, 21 Oct 2026 21:57:32 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 21 Oct 2026 21:57:32 GMT
ENV MYSQL_MAJOR=8.4
# Wed, 21 Oct 2026 21:57:32 GMT
ENV MYSQL_VERSION=8.4.13-1.el9
# Wed, 21 Oct 2026 21:57:32 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Wed, 21 Oct 2026 21:58:05 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Wed, 21 Oct 2026 21:58:05 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Wed, 21 Oct 2026 21:58:05 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Wed, 21 Oct 2026 21:58:46 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Wed, 21 Oct 2026 21:58:46 GMT
VOLUME [/var/lib/mysql]
# Wed, 21 Oct 2026 21:58:46 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 21:58:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:58:46 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Wed, 21 Oct 2026 21:58:46 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:97347cf073b19c00bee840fa47d2cd0537dbf5eb581be49840c203f71c0a5c75`  
		Last Modified: Mon, 19 Oct 2026 21:33:00 GMT  
		Size: 47.2 MB (47249168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8d4024251a9b49facba97bb0aed945e8d63e85d170a9cec2df4a8f4c7716774`  
		Last Modified: Wed, 21 Oct 2026 21:59:14 GMT  
		Size: 884.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea1749d53e24f2a4e09743036953ca84c7f557fbe3b39e674e1a8b9d4b3ffabd`  
		Last Modified: Wed, 21 Oct 2026 21:59:14 GMT  
		Size: 783.6 KB (783561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e99723a8598510f46aa20c766c66a627d33cb26cdf6ac8e1aa29e40068c0df2c`  
		Last Modified: Wed, 21 Oct 2026 21:59:15 GMT  
		Size: 6.2 MB (6191925 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c9ac1647849ed1704c0bea832f295638bbc043181f5d32b7c60f180350e4b29`  
		Last Modified: Wed, 21 Oct 2026 21:59:14 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4730445dfdddb06e816d7ace9bbec9193fae570d76b17c0642ed5e845fc5c277`  
		Last Modified: Wed, 21 Oct 2026 21:59:15 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3274015618bea6c41f30ee42e929ae30de410e574cf21a1a717250c69a7434c`  
		Last Modified: Wed, 21 Oct 2026 21:59:18 GMT  
		Size: 51.7 MB (51672396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65fb9e68a2acd6fcbf0406363203ff4bb4ec4c0b12953702936b1a792a9bd327`  
		Last Modified: Wed, 21 Oct 2026 21:59:16 GMT  
		Size: 319.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ba383bbcb8048d53bc154b78c7fc93ae3f1bfb2338eae44df4c9f08678c1723`  
		Last Modified: Wed, 21 Oct 2026 21:59:19 GMT  
		Size: 132.4 MB (132413173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d14dbab656324943f3b284ead2f30b659361f845c1c9e5ffe146f68489a04bd4`  
		Last Modified: Wed, 21 Oct 2026 21:59:17 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4.13-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:e6d380465ceb5184167bc1c1681203dd5b841411a6bcdc49f4cfede1df50ecda
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15745255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbce1f9ec0c98d5308812fa852af45ae82452d4e2a96e67896e517edc9bef551`

```dockerfile
```

-	Layers:
	-	`sha256:bb103901fbb75902a79e2a314e4b4a0b848ce77b131ff2b5599574a8cdce9841`  
		Last Modified: Wed, 21 Oct 2026 21:59:15 GMT  
		Size: 15.7 MB (15711942 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8ac39cbaf10f1b8006dfc05ac825c64080beefab9dee94f6478671ad78ed30a7`  
		Last Modified: Wed, 21 Oct 2026 21:59:14 GMT  
		Size: 33.3 KB (33313 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:8.4.13-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:b265fd63b9c8168801c1628b0b21e915846e81192f5a493682a1184cbd70d896
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.0 MB (232986515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92b836d4601d5328ab07d2d25e45d0d06d4e6515834cc7a2f3cb0f12c598dd79`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:44 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:44 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 22:25:18 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Wed, 21 Oct 2026 22:25:20 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 22:25:20 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 22:25:57 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Wed, 21 Oct 2026 22:25:58 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 21 Oct 2026 22:25:58 GMT
ENV MYSQL_MAJOR=8.4
# Wed, 21 Oct 2026 22:25:58 GMT
ENV MYSQL_VERSION=8.4.13-1.el9
# Wed, 21 Oct 2026 22:25:58 GMT
RUN set -eu; 	{ 		echo '[mysql8.4-server-minimal]'; 		echo 'name=MySQL 8.4 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Wed, 21 Oct 2026 22:26:39 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Wed, 21 Oct 2026 22:26:39 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Wed, 21 Oct 2026 22:26:39 GMT
ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
# Wed, 21 Oct 2026 22:27:26 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Wed, 21 Oct 2026 22:27:26 GMT
VOLUME [/var/lib/mysql]
# Wed, 21 Oct 2026 22:27:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 22:27:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 22:27:26 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Wed, 21 Oct 2026 22:27:26 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ec733952651fc70d299ac3951cabb9fafd032cc96e2ff71bdfd675ac20ca9c93`  
		Last Modified: Mon, 19 Oct 2026 21:32:56 GMT  
		Size: 45.8 MB (45800185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1aecbd7ade894843f1e6b564492606f764ded2827eed8c2de4bc85434d54d68`  
		Last Modified: Wed, 21 Oct 2026 22:27:57 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3b7fac9789c71bf0e149d521b68182e899866b2a4e41796a91740016b9e8b83`  
		Last Modified: Wed, 21 Oct 2026 22:27:58 GMT  
		Size: 737.5 KB (737530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12954209daddfd97c71978b1787c7b1cc3163e6e8d9fb23b18ce719b18608314`  
		Last Modified: Wed, 21 Oct 2026 22:27:58 GMT  
		Size: 5.8 MB (5810216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b410cd370066afbd7a46cf38a6b58e6d6489188b270f5e88004efc9c313b38c4`  
		Last Modified: Wed, 21 Oct 2026 22:27:58 GMT  
		Size: 2.6 KB (2608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d53037f0864f600a40af15695a1e210807e08a4d77f4ef8320a52bb8f2c3d0dd`  
		Last Modified: Wed, 21 Oct 2026 22:27:59 GMT  
		Size: 334.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d96b00f66e3b4e84555ee6f3618ecf42d53480a4923bc190422c9b0b9482a03e`  
		Last Modified: Wed, 21 Oct 2026 22:28:01 GMT  
		Size: 49.9 MB (49857559 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83fdc73d861e3439d13493c9c49c14585feeac95573e428698f9ef3d3055e479`  
		Last Modified: Wed, 21 Oct 2026 22:27:59 GMT  
		Size: 319.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fa0a82bb9852084d80aa95e7280b2b2146e782fa58f6253022ed25799a6539b`  
		Last Modified: Wed, 21 Oct 2026 22:28:02 GMT  
		Size: 130.8 MB (130771651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9427845f29b05ca6a93eaecf52e603bf54186fef308ed6a5b677d8cb95f8f024`  
		Last Modified: Wed, 21 Oct 2026 22:28:00 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:8.4.13-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:b66e3f9a44d1cb733ab3ebb8df8c31f2721f489d387b715796c349c76d67ce79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15743924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7c53489fc81b0e9ad9e69a21196b217e50126fdd2de3306c0f03c5324ca53a5`

```dockerfile
```

-	Layers:
	-	`sha256:1b22baf835dc48060a74263c2badf114b2068075f86d54ded9f58aff4889c111`  
		Last Modified: Wed, 21 Oct 2026 22:27:58 GMT  
		Size: 15.7 MB (15710342 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b2cf846bf1792f697c69bea65ca687bcf6dca581a7b162a7e9882008d69c6b71`  
		Last Modified: Wed, 21 Oct 2026 22:27:57 GMT  
		Size: 33.6 KB (33582 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9`

```console
$ docker pull mysql@sha256:8fb11c38b3551e22d50adbb688f027f8ff4ea2d2445aa277c1cc97b4af85ec54
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9` - linux; amd64

```console
$ docker pull mysql@sha256:ef50288bcf1daa57ea9f7cb8ad48ea077c30c5dfbef2ae3aee8dae0f1eef205c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.3 MB (270337634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:311dc96f8652388814088c745d37e4aaa842cbe37dfcdbaf5311c7dd3edd8da4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:48 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:48 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 21:56:38 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Wed, 21 Oct 2026 21:56:40 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 21:56:40 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 21:57:11 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Wed, 21 Oct 2026 21:57:11 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 21 Oct 2026 21:57:11 GMT
ENV MYSQL_MAJOR=9.7
# Wed, 21 Oct 2026 21:57:11 GMT
ENV MYSQL_VERSION=9.7.4-1.el9
# Wed, 21 Oct 2026 21:57:11 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Wed, 21 Oct 2026 21:57:45 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Wed, 21 Oct 2026 21:57:45 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Wed, 21 Oct 2026 21:57:45 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Wed, 21 Oct 2026 21:58:29 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Wed, 21 Oct 2026 21:58:29 GMT
VOLUME [/var/lib/mysql]
# Wed, 21 Oct 2026 21:58:29 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 21:58:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:58:29 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Wed, 21 Oct 2026 21:58:29 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:97347cf073b19c00bee840fa47d2cd0537dbf5eb581be49840c203f71c0a5c75`  
		Last Modified: Mon, 19 Oct 2026 21:33:00 GMT  
		Size: 47.2 MB (47249168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a81feb8cef6680732ef231f10320416e31a40726cc0223516d92139741fe61b5`  
		Last Modified: Wed, 21 Oct 2026 21:59:01 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:402761f17fb5c4d162e8efa34c5bb9ac17b92efe6d96e1df20af66bd82570e5e`  
		Last Modified: Wed, 21 Oct 2026 21:59:02 GMT  
		Size: 783.6 KB (783558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04fdf047584da45a6a89dc16e2160e29bb0ecdde0e194e04fd8d52d2fed12115`  
		Last Modified: Wed, 21 Oct 2026 21:59:02 GMT  
		Size: 6.2 MB (6191941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e735e16fde53f967c5f2cd395aafa04dd7dc42a36bf3abac24bc8c89acfb2779`  
		Last Modified: Wed, 21 Oct 2026 21:59:02 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9183015a9417c9a6183cc999241ef43a20820628ed944f1cd53007e8387c49c5`  
		Last Modified: Wed, 21 Oct 2026 21:59:03 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f743c1851c9dfdf088584c5ba9aae757b68c7cea4530aba444b1fc58f574ba2`  
		Last Modified: Wed, 21 Oct 2026 21:59:05 GMT  
		Size: 57.2 MB (57180077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6cb22001f6c48c8739c5a1bb9e27d0d26ee264f3f0f27999b940666db23f32e`  
		Last Modified: Wed, 21 Oct 2026 21:59:03 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29855632b6eaec13ab463e6aed52060dc5e92313054b8ea81217a36e5306715a`  
		Last Modified: Wed, 21 Oct 2026 21:59:08 GMT  
		Size: 158.9 MB (158923517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ace2c02e8d2375d1e037b2946cedb24a459ae24d0b67462ee1fc394a6d5afb4b`  
		Last Modified: Wed, 21 Oct 2026 21:59:04 GMT  
		Size: 5.2 KB (5231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9` - unknown; unknown

```console
$ docker pull mysql@sha256:64fbb23fe4c2e663c42082914a1bb368f51219265983f0cf348c24a1eeef6028
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16834217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f09db1e53fd50686d4a8369e241c42aa1ac3798e0243bd15d2839a38aecba034`

```dockerfile
```

-	Layers:
	-	`sha256:df36013c17643ae16d62e7be1b7bbde5401019e59d83643838670f1236240980`  
		Last Modified: Wed, 21 Oct 2026 21:59:02 GMT  
		Size: 16.8 MB (16800010 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0b24455d76871e4ba8bc084cdb484814e99994025ca7c2f504acebda9e16db59`  
		Last Modified: Wed, 21 Oct 2026 21:59:01 GMT  
		Size: 34.2 KB (34207 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:946ee9fa034894b6bd1fc415c7d4326ad6da0555efb7eba47cfc4325d35686f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.7 MB (266725303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:990cfd5c376151a6f496d58e4258379f1d4c32d3646956ffbf98f646b6ea4311`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:44 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:44 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 22:25:11 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Wed, 21 Oct 2026 22:25:13 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 22:25:13 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 22:25:52 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Wed, 21 Oct 2026 22:25:53 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 21 Oct 2026 22:25:53 GMT
ENV MYSQL_MAJOR=9.7
# Wed, 21 Oct 2026 22:25:53 GMT
ENV MYSQL_VERSION=9.7.4-1.el9
# Wed, 21 Oct 2026 22:25:53 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Wed, 21 Oct 2026 22:26:37 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Wed, 21 Oct 2026 22:26:37 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Wed, 21 Oct 2026 22:26:37 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Wed, 21 Oct 2026 22:27:31 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Wed, 21 Oct 2026 22:27:31 GMT
VOLUME [/var/lib/mysql]
# Wed, 21 Oct 2026 22:27:31 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 22:27:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 22:27:31 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Wed, 21 Oct 2026 22:27:31 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ec733952651fc70d299ac3951cabb9fafd032cc96e2ff71bdfd675ac20ca9c93`  
		Last Modified: Mon, 19 Oct 2026 21:32:56 GMT  
		Size: 45.8 MB (45800185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1182c60483b521aec518756b66d9e4b5d2fa3d995b9174021d3cd02783dbc1c`  
		Last Modified: Wed, 21 Oct 2026 22:28:07 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb8170183e634f55f5c1d9065235158aa23f915bc7615edd000fe3a0d6486d94`  
		Last Modified: Wed, 21 Oct 2026 22:28:07 GMT  
		Size: 737.5 KB (737524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6fb2577a3d092fbe7d051821ced8d3dfad54875ae18705043c416af0d86064a`  
		Last Modified: Wed, 21 Oct 2026 22:28:07 GMT  
		Size: 5.8 MB (5810135 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31e756d31627198d791ead85bdff4daec51545a63d7809a98d73bea80a0121a8`  
		Last Modified: Wed, 21 Oct 2026 22:28:07 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9969fb8a5e5f57e2909bb91f02d20cefec037cc17fe60391cb2547f413eb33a2`  
		Last Modified: Wed, 21 Oct 2026 22:28:08 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c9272b53566219b40dc93e9e86e8d3ffb5568513003c2f5f4cb4742f9c731d4`  
		Last Modified: Wed, 21 Oct 2026 22:28:10 GMT  
		Size: 57.2 MB (57175479 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:357ec417092f2a9d844446bc6fd18f693619cced425b6daccc42514e95e02e99`  
		Last Modified: Wed, 21 Oct 2026 22:28:08 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba40f52333907ee3ef8a078452c10d8b8c48fb4f908687a8bc67431c6209abe3`  
		Last Modified: Wed, 21 Oct 2026 22:28:15 GMT  
		Size: 157.2 MB (157192608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e47d25df692e1c232495dc06468cee8737931fc0ee817ae8fcf30f53d77a449a`  
		Last Modified: Wed, 21 Oct 2026 22:28:09 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9` - unknown; unknown

```console
$ docker pull mysql@sha256:121103b6549034fd26b072c40be9dae58f5806f04e8310f910ed2f3ebabdd84d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16832958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9d2b8f6616a266115cddd1b4df3b1197d6947eef2f029528eef8abece0ae356`

```dockerfile
```

-	Layers:
	-	`sha256:dbe70e693699c5a3f811e445b6ae8de7628dd84f37214ebfb8d0cb3a0ad637fd`  
		Last Modified: Wed, 21 Oct 2026 22:28:08 GMT  
		Size: 16.8 MB (16798446 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9f2f0812a79037b234d829d54cf017a083f916d227df644d790dc55388ad47ee`  
		Last Modified: Wed, 21 Oct 2026 22:28:07 GMT  
		Size: 34.5 KB (34512 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9-oracle`

```console
$ docker pull mysql@sha256:8fb11c38b3551e22d50adbb688f027f8ff4ea2d2445aa277c1cc97b4af85ec54
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:ef50288bcf1daa57ea9f7cb8ad48ea077c30c5dfbef2ae3aee8dae0f1eef205c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.3 MB (270337634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:311dc96f8652388814088c745d37e4aaa842cbe37dfcdbaf5311c7dd3edd8da4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:48 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:48 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 21:56:38 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Wed, 21 Oct 2026 21:56:40 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 21:56:40 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 21:57:11 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Wed, 21 Oct 2026 21:57:11 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 21 Oct 2026 21:57:11 GMT
ENV MYSQL_MAJOR=9.7
# Wed, 21 Oct 2026 21:57:11 GMT
ENV MYSQL_VERSION=9.7.4-1.el9
# Wed, 21 Oct 2026 21:57:11 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Wed, 21 Oct 2026 21:57:45 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Wed, 21 Oct 2026 21:57:45 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Wed, 21 Oct 2026 21:57:45 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Wed, 21 Oct 2026 21:58:29 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Wed, 21 Oct 2026 21:58:29 GMT
VOLUME [/var/lib/mysql]
# Wed, 21 Oct 2026 21:58:29 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 21:58:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:58:29 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Wed, 21 Oct 2026 21:58:29 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:97347cf073b19c00bee840fa47d2cd0537dbf5eb581be49840c203f71c0a5c75`  
		Last Modified: Mon, 19 Oct 2026 21:33:00 GMT  
		Size: 47.2 MB (47249168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a81feb8cef6680732ef231f10320416e31a40726cc0223516d92139741fe61b5`  
		Last Modified: Wed, 21 Oct 2026 21:59:01 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:402761f17fb5c4d162e8efa34c5bb9ac17b92efe6d96e1df20af66bd82570e5e`  
		Last Modified: Wed, 21 Oct 2026 21:59:02 GMT  
		Size: 783.6 KB (783558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04fdf047584da45a6a89dc16e2160e29bb0ecdde0e194e04fd8d52d2fed12115`  
		Last Modified: Wed, 21 Oct 2026 21:59:02 GMT  
		Size: 6.2 MB (6191941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e735e16fde53f967c5f2cd395aafa04dd7dc42a36bf3abac24bc8c89acfb2779`  
		Last Modified: Wed, 21 Oct 2026 21:59:02 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9183015a9417c9a6183cc999241ef43a20820628ed944f1cd53007e8387c49c5`  
		Last Modified: Wed, 21 Oct 2026 21:59:03 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f743c1851c9dfdf088584c5ba9aae757b68c7cea4530aba444b1fc58f574ba2`  
		Last Modified: Wed, 21 Oct 2026 21:59:05 GMT  
		Size: 57.2 MB (57180077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6cb22001f6c48c8739c5a1bb9e27d0d26ee264f3f0f27999b940666db23f32e`  
		Last Modified: Wed, 21 Oct 2026 21:59:03 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29855632b6eaec13ab463e6aed52060dc5e92313054b8ea81217a36e5306715a`  
		Last Modified: Wed, 21 Oct 2026 21:59:08 GMT  
		Size: 158.9 MB (158923517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ace2c02e8d2375d1e037b2946cedb24a459ae24d0b67462ee1fc394a6d5afb4b`  
		Last Modified: Wed, 21 Oct 2026 21:59:04 GMT  
		Size: 5.2 KB (5231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:64fbb23fe4c2e663c42082914a1bb368f51219265983f0cf348c24a1eeef6028
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16834217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f09db1e53fd50686d4a8369e241c42aa1ac3798e0243bd15d2839a38aecba034`

```dockerfile
```

-	Layers:
	-	`sha256:df36013c17643ae16d62e7be1b7bbde5401019e59d83643838670f1236240980`  
		Last Modified: Wed, 21 Oct 2026 21:59:02 GMT  
		Size: 16.8 MB (16800010 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0b24455d76871e4ba8bc084cdb484814e99994025ca7c2f504acebda9e16db59`  
		Last Modified: Wed, 21 Oct 2026 21:59:01 GMT  
		Size: 34.2 KB (34207 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:946ee9fa034894b6bd1fc415c7d4326ad6da0555efb7eba47cfc4325d35686f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.7 MB (266725303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:990cfd5c376151a6f496d58e4258379f1d4c32d3646956ffbf98f646b6ea4311`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:44 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:44 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 22:25:11 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Wed, 21 Oct 2026 22:25:13 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 22:25:13 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 22:25:52 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Wed, 21 Oct 2026 22:25:53 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 21 Oct 2026 22:25:53 GMT
ENV MYSQL_MAJOR=9.7
# Wed, 21 Oct 2026 22:25:53 GMT
ENV MYSQL_VERSION=9.7.4-1.el9
# Wed, 21 Oct 2026 22:25:53 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Wed, 21 Oct 2026 22:26:37 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Wed, 21 Oct 2026 22:26:37 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Wed, 21 Oct 2026 22:26:37 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Wed, 21 Oct 2026 22:27:31 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Wed, 21 Oct 2026 22:27:31 GMT
VOLUME [/var/lib/mysql]
# Wed, 21 Oct 2026 22:27:31 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 22:27:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 22:27:31 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Wed, 21 Oct 2026 22:27:31 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ec733952651fc70d299ac3951cabb9fafd032cc96e2ff71bdfd675ac20ca9c93`  
		Last Modified: Mon, 19 Oct 2026 21:32:56 GMT  
		Size: 45.8 MB (45800185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1182c60483b521aec518756b66d9e4b5d2fa3d995b9174021d3cd02783dbc1c`  
		Last Modified: Wed, 21 Oct 2026 22:28:07 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb8170183e634f55f5c1d9065235158aa23f915bc7615edd000fe3a0d6486d94`  
		Last Modified: Wed, 21 Oct 2026 22:28:07 GMT  
		Size: 737.5 KB (737524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6fb2577a3d092fbe7d051821ced8d3dfad54875ae18705043c416af0d86064a`  
		Last Modified: Wed, 21 Oct 2026 22:28:07 GMT  
		Size: 5.8 MB (5810135 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31e756d31627198d791ead85bdff4daec51545a63d7809a98d73bea80a0121a8`  
		Last Modified: Wed, 21 Oct 2026 22:28:07 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9969fb8a5e5f57e2909bb91f02d20cefec037cc17fe60391cb2547f413eb33a2`  
		Last Modified: Wed, 21 Oct 2026 22:28:08 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c9272b53566219b40dc93e9e86e8d3ffb5568513003c2f5f4cb4742f9c731d4`  
		Last Modified: Wed, 21 Oct 2026 22:28:10 GMT  
		Size: 57.2 MB (57175479 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:357ec417092f2a9d844446bc6fd18f693619cced425b6daccc42514e95e02e99`  
		Last Modified: Wed, 21 Oct 2026 22:28:08 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba40f52333907ee3ef8a078452c10d8b8c48fb4f908687a8bc67431c6209abe3`  
		Last Modified: Wed, 21 Oct 2026 22:28:15 GMT  
		Size: 157.2 MB (157192608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e47d25df692e1c232495dc06468cee8737931fc0ee817ae8fcf30f53d77a449a`  
		Last Modified: Wed, 21 Oct 2026 22:28:09 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:121103b6549034fd26b072c40be9dae58f5806f04e8310f910ed2f3ebabdd84d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16832958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9d2b8f6616a266115cddd1b4df3b1197d6947eef2f029528eef8abece0ae356`

```dockerfile
```

-	Layers:
	-	`sha256:dbe70e693699c5a3f811e445b6ae8de7628dd84f37214ebfb8d0cb3a0ad637fd`  
		Last Modified: Wed, 21 Oct 2026 22:28:08 GMT  
		Size: 16.8 MB (16798446 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9f2f0812a79037b234d829d54cf017a083f916d227df644d790dc55388ad47ee`  
		Last Modified: Wed, 21 Oct 2026 22:28:07 GMT  
		Size: 34.5 KB (34512 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9-oraclelinux9`

```console
$ docker pull mysql@sha256:8fb11c38b3551e22d50adbb688f027f8ff4ea2d2445aa277c1cc97b4af85ec54
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:ef50288bcf1daa57ea9f7cb8ad48ea077c30c5dfbef2ae3aee8dae0f1eef205c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.3 MB (270337634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:311dc96f8652388814088c745d37e4aaa842cbe37dfcdbaf5311c7dd3edd8da4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:48 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:48 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 21:56:38 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Wed, 21 Oct 2026 21:56:40 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 21:56:40 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 21:57:11 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Wed, 21 Oct 2026 21:57:11 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 21 Oct 2026 21:57:11 GMT
ENV MYSQL_MAJOR=9.7
# Wed, 21 Oct 2026 21:57:11 GMT
ENV MYSQL_VERSION=9.7.4-1.el9
# Wed, 21 Oct 2026 21:57:11 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Wed, 21 Oct 2026 21:57:45 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Wed, 21 Oct 2026 21:57:45 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Wed, 21 Oct 2026 21:57:45 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Wed, 21 Oct 2026 21:58:29 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Wed, 21 Oct 2026 21:58:29 GMT
VOLUME [/var/lib/mysql]
# Wed, 21 Oct 2026 21:58:29 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 21:58:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:58:29 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Wed, 21 Oct 2026 21:58:29 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:97347cf073b19c00bee840fa47d2cd0537dbf5eb581be49840c203f71c0a5c75`  
		Last Modified: Mon, 19 Oct 2026 21:33:00 GMT  
		Size: 47.2 MB (47249168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a81feb8cef6680732ef231f10320416e31a40726cc0223516d92139741fe61b5`  
		Last Modified: Wed, 21 Oct 2026 21:59:01 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:402761f17fb5c4d162e8efa34c5bb9ac17b92efe6d96e1df20af66bd82570e5e`  
		Last Modified: Wed, 21 Oct 2026 21:59:02 GMT  
		Size: 783.6 KB (783558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04fdf047584da45a6a89dc16e2160e29bb0ecdde0e194e04fd8d52d2fed12115`  
		Last Modified: Wed, 21 Oct 2026 21:59:02 GMT  
		Size: 6.2 MB (6191941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e735e16fde53f967c5f2cd395aafa04dd7dc42a36bf3abac24bc8c89acfb2779`  
		Last Modified: Wed, 21 Oct 2026 21:59:02 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9183015a9417c9a6183cc999241ef43a20820628ed944f1cd53007e8387c49c5`  
		Last Modified: Wed, 21 Oct 2026 21:59:03 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f743c1851c9dfdf088584c5ba9aae757b68c7cea4530aba444b1fc58f574ba2`  
		Last Modified: Wed, 21 Oct 2026 21:59:05 GMT  
		Size: 57.2 MB (57180077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6cb22001f6c48c8739c5a1bb9e27d0d26ee264f3f0f27999b940666db23f32e`  
		Last Modified: Wed, 21 Oct 2026 21:59:03 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29855632b6eaec13ab463e6aed52060dc5e92313054b8ea81217a36e5306715a`  
		Last Modified: Wed, 21 Oct 2026 21:59:08 GMT  
		Size: 158.9 MB (158923517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ace2c02e8d2375d1e037b2946cedb24a459ae24d0b67462ee1fc394a6d5afb4b`  
		Last Modified: Wed, 21 Oct 2026 21:59:04 GMT  
		Size: 5.2 KB (5231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:64fbb23fe4c2e663c42082914a1bb368f51219265983f0cf348c24a1eeef6028
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16834217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f09db1e53fd50686d4a8369e241c42aa1ac3798e0243bd15d2839a38aecba034`

```dockerfile
```

-	Layers:
	-	`sha256:df36013c17643ae16d62e7be1b7bbde5401019e59d83643838670f1236240980`  
		Last Modified: Wed, 21 Oct 2026 21:59:02 GMT  
		Size: 16.8 MB (16800010 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0b24455d76871e4ba8bc084cdb484814e99994025ca7c2f504acebda9e16db59`  
		Last Modified: Wed, 21 Oct 2026 21:59:01 GMT  
		Size: 34.2 KB (34207 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:946ee9fa034894b6bd1fc415c7d4326ad6da0555efb7eba47cfc4325d35686f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.7 MB (266725303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:990cfd5c376151a6f496d58e4258379f1d4c32d3646956ffbf98f646b6ea4311`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:44 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:44 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 22:25:11 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Wed, 21 Oct 2026 22:25:13 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 22:25:13 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 22:25:52 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Wed, 21 Oct 2026 22:25:53 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 21 Oct 2026 22:25:53 GMT
ENV MYSQL_MAJOR=9.7
# Wed, 21 Oct 2026 22:25:53 GMT
ENV MYSQL_VERSION=9.7.4-1.el9
# Wed, 21 Oct 2026 22:25:53 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Wed, 21 Oct 2026 22:26:37 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Wed, 21 Oct 2026 22:26:37 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Wed, 21 Oct 2026 22:26:37 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Wed, 21 Oct 2026 22:27:31 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Wed, 21 Oct 2026 22:27:31 GMT
VOLUME [/var/lib/mysql]
# Wed, 21 Oct 2026 22:27:31 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 22:27:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 22:27:31 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Wed, 21 Oct 2026 22:27:31 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ec733952651fc70d299ac3951cabb9fafd032cc96e2ff71bdfd675ac20ca9c93`  
		Last Modified: Mon, 19 Oct 2026 21:32:56 GMT  
		Size: 45.8 MB (45800185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1182c60483b521aec518756b66d9e4b5d2fa3d995b9174021d3cd02783dbc1c`  
		Last Modified: Wed, 21 Oct 2026 22:28:07 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb8170183e634f55f5c1d9065235158aa23f915bc7615edd000fe3a0d6486d94`  
		Last Modified: Wed, 21 Oct 2026 22:28:07 GMT  
		Size: 737.5 KB (737524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6fb2577a3d092fbe7d051821ced8d3dfad54875ae18705043c416af0d86064a`  
		Last Modified: Wed, 21 Oct 2026 22:28:07 GMT  
		Size: 5.8 MB (5810135 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31e756d31627198d791ead85bdff4daec51545a63d7809a98d73bea80a0121a8`  
		Last Modified: Wed, 21 Oct 2026 22:28:07 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9969fb8a5e5f57e2909bb91f02d20cefec037cc17fe60391cb2547f413eb33a2`  
		Last Modified: Wed, 21 Oct 2026 22:28:08 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c9272b53566219b40dc93e9e86e8d3ffb5568513003c2f5f4cb4742f9c731d4`  
		Last Modified: Wed, 21 Oct 2026 22:28:10 GMT  
		Size: 57.2 MB (57175479 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:357ec417092f2a9d844446bc6fd18f693619cced425b6daccc42514e95e02e99`  
		Last Modified: Wed, 21 Oct 2026 22:28:08 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba40f52333907ee3ef8a078452c10d8b8c48fb4f908687a8bc67431c6209abe3`  
		Last Modified: Wed, 21 Oct 2026 22:28:15 GMT  
		Size: 157.2 MB (157192608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e47d25df692e1c232495dc06468cee8737931fc0ee817ae8fcf30f53d77a449a`  
		Last Modified: Wed, 21 Oct 2026 22:28:09 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:121103b6549034fd26b072c40be9dae58f5806f04e8310f910ed2f3ebabdd84d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16832958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9d2b8f6616a266115cddd1b4df3b1197d6947eef2f029528eef8abece0ae356`

```dockerfile
```

-	Layers:
	-	`sha256:dbe70e693699c5a3f811e445b6ae8de7628dd84f37214ebfb8d0cb3a0ad637fd`  
		Last Modified: Wed, 21 Oct 2026 22:28:08 GMT  
		Size: 16.8 MB (16798446 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9f2f0812a79037b234d829d54cf017a083f916d227df644d790dc55388ad47ee`  
		Last Modified: Wed, 21 Oct 2026 22:28:07 GMT  
		Size: 34.5 KB (34512 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9.7`

```console
$ docker pull mysql@sha256:8fb11c38b3551e22d50adbb688f027f8ff4ea2d2445aa277c1cc97b4af85ec54
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9.7` - linux; amd64

```console
$ docker pull mysql@sha256:ef50288bcf1daa57ea9f7cb8ad48ea077c30c5dfbef2ae3aee8dae0f1eef205c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.3 MB (270337634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:311dc96f8652388814088c745d37e4aaa842cbe37dfcdbaf5311c7dd3edd8da4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:48 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:48 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 21:56:38 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Wed, 21 Oct 2026 21:56:40 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 21:56:40 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 21:57:11 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Wed, 21 Oct 2026 21:57:11 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 21 Oct 2026 21:57:11 GMT
ENV MYSQL_MAJOR=9.7
# Wed, 21 Oct 2026 21:57:11 GMT
ENV MYSQL_VERSION=9.7.4-1.el9
# Wed, 21 Oct 2026 21:57:11 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Wed, 21 Oct 2026 21:57:45 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Wed, 21 Oct 2026 21:57:45 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Wed, 21 Oct 2026 21:57:45 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Wed, 21 Oct 2026 21:58:29 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Wed, 21 Oct 2026 21:58:29 GMT
VOLUME [/var/lib/mysql]
# Wed, 21 Oct 2026 21:58:29 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 21:58:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:58:29 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Wed, 21 Oct 2026 21:58:29 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:97347cf073b19c00bee840fa47d2cd0537dbf5eb581be49840c203f71c0a5c75`  
		Last Modified: Mon, 19 Oct 2026 21:33:00 GMT  
		Size: 47.2 MB (47249168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a81feb8cef6680732ef231f10320416e31a40726cc0223516d92139741fe61b5`  
		Last Modified: Wed, 21 Oct 2026 21:59:01 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:402761f17fb5c4d162e8efa34c5bb9ac17b92efe6d96e1df20af66bd82570e5e`  
		Last Modified: Wed, 21 Oct 2026 21:59:02 GMT  
		Size: 783.6 KB (783558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04fdf047584da45a6a89dc16e2160e29bb0ecdde0e194e04fd8d52d2fed12115`  
		Last Modified: Wed, 21 Oct 2026 21:59:02 GMT  
		Size: 6.2 MB (6191941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e735e16fde53f967c5f2cd395aafa04dd7dc42a36bf3abac24bc8c89acfb2779`  
		Last Modified: Wed, 21 Oct 2026 21:59:02 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9183015a9417c9a6183cc999241ef43a20820628ed944f1cd53007e8387c49c5`  
		Last Modified: Wed, 21 Oct 2026 21:59:03 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f743c1851c9dfdf088584c5ba9aae757b68c7cea4530aba444b1fc58f574ba2`  
		Last Modified: Wed, 21 Oct 2026 21:59:05 GMT  
		Size: 57.2 MB (57180077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6cb22001f6c48c8739c5a1bb9e27d0d26ee264f3f0f27999b940666db23f32e`  
		Last Modified: Wed, 21 Oct 2026 21:59:03 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29855632b6eaec13ab463e6aed52060dc5e92313054b8ea81217a36e5306715a`  
		Last Modified: Wed, 21 Oct 2026 21:59:08 GMT  
		Size: 158.9 MB (158923517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ace2c02e8d2375d1e037b2946cedb24a459ae24d0b67462ee1fc394a6d5afb4b`  
		Last Modified: Wed, 21 Oct 2026 21:59:04 GMT  
		Size: 5.2 KB (5231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7` - unknown; unknown

```console
$ docker pull mysql@sha256:64fbb23fe4c2e663c42082914a1bb368f51219265983f0cf348c24a1eeef6028
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16834217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f09db1e53fd50686d4a8369e241c42aa1ac3798e0243bd15d2839a38aecba034`

```dockerfile
```

-	Layers:
	-	`sha256:df36013c17643ae16d62e7be1b7bbde5401019e59d83643838670f1236240980`  
		Last Modified: Wed, 21 Oct 2026 21:59:02 GMT  
		Size: 16.8 MB (16800010 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0b24455d76871e4ba8bc084cdb484814e99994025ca7c2f504acebda9e16db59`  
		Last Modified: Wed, 21 Oct 2026 21:59:01 GMT  
		Size: 34.2 KB (34207 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9.7` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:946ee9fa034894b6bd1fc415c7d4326ad6da0555efb7eba47cfc4325d35686f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.7 MB (266725303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:990cfd5c376151a6f496d58e4258379f1d4c32d3646956ffbf98f646b6ea4311`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:44 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:44 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 22:25:11 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Wed, 21 Oct 2026 22:25:13 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 22:25:13 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 22:25:52 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Wed, 21 Oct 2026 22:25:53 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 21 Oct 2026 22:25:53 GMT
ENV MYSQL_MAJOR=9.7
# Wed, 21 Oct 2026 22:25:53 GMT
ENV MYSQL_VERSION=9.7.4-1.el9
# Wed, 21 Oct 2026 22:25:53 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Wed, 21 Oct 2026 22:26:37 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Wed, 21 Oct 2026 22:26:37 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Wed, 21 Oct 2026 22:26:37 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Wed, 21 Oct 2026 22:27:31 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Wed, 21 Oct 2026 22:27:31 GMT
VOLUME [/var/lib/mysql]
# Wed, 21 Oct 2026 22:27:31 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 22:27:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 22:27:31 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Wed, 21 Oct 2026 22:27:31 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ec733952651fc70d299ac3951cabb9fafd032cc96e2ff71bdfd675ac20ca9c93`  
		Last Modified: Mon, 19 Oct 2026 21:32:56 GMT  
		Size: 45.8 MB (45800185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1182c60483b521aec518756b66d9e4b5d2fa3d995b9174021d3cd02783dbc1c`  
		Last Modified: Wed, 21 Oct 2026 22:28:07 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb8170183e634f55f5c1d9065235158aa23f915bc7615edd000fe3a0d6486d94`  
		Last Modified: Wed, 21 Oct 2026 22:28:07 GMT  
		Size: 737.5 KB (737524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6fb2577a3d092fbe7d051821ced8d3dfad54875ae18705043c416af0d86064a`  
		Last Modified: Wed, 21 Oct 2026 22:28:07 GMT  
		Size: 5.8 MB (5810135 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31e756d31627198d791ead85bdff4daec51545a63d7809a98d73bea80a0121a8`  
		Last Modified: Wed, 21 Oct 2026 22:28:07 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9969fb8a5e5f57e2909bb91f02d20cefec037cc17fe60391cb2547f413eb33a2`  
		Last Modified: Wed, 21 Oct 2026 22:28:08 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c9272b53566219b40dc93e9e86e8d3ffb5568513003c2f5f4cb4742f9c731d4`  
		Last Modified: Wed, 21 Oct 2026 22:28:10 GMT  
		Size: 57.2 MB (57175479 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:357ec417092f2a9d844446bc6fd18f693619cced425b6daccc42514e95e02e99`  
		Last Modified: Wed, 21 Oct 2026 22:28:08 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba40f52333907ee3ef8a078452c10d8b8c48fb4f908687a8bc67431c6209abe3`  
		Last Modified: Wed, 21 Oct 2026 22:28:15 GMT  
		Size: 157.2 MB (157192608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e47d25df692e1c232495dc06468cee8737931fc0ee817ae8fcf30f53d77a449a`  
		Last Modified: Wed, 21 Oct 2026 22:28:09 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7` - unknown; unknown

```console
$ docker pull mysql@sha256:121103b6549034fd26b072c40be9dae58f5806f04e8310f910ed2f3ebabdd84d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16832958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9d2b8f6616a266115cddd1b4df3b1197d6947eef2f029528eef8abece0ae356`

```dockerfile
```

-	Layers:
	-	`sha256:dbe70e693699c5a3f811e445b6ae8de7628dd84f37214ebfb8d0cb3a0ad637fd`  
		Last Modified: Wed, 21 Oct 2026 22:28:08 GMT  
		Size: 16.8 MB (16798446 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9f2f0812a79037b234d829d54cf017a083f916d227df644d790dc55388ad47ee`  
		Last Modified: Wed, 21 Oct 2026 22:28:07 GMT  
		Size: 34.5 KB (34512 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9.7-oracle`

```console
$ docker pull mysql@sha256:8fb11c38b3551e22d50adbb688f027f8ff4ea2d2445aa277c1cc97b4af85ec54
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9.7-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:ef50288bcf1daa57ea9f7cb8ad48ea077c30c5dfbef2ae3aee8dae0f1eef205c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.3 MB (270337634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:311dc96f8652388814088c745d37e4aaa842cbe37dfcdbaf5311c7dd3edd8da4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:48 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:48 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 21:56:38 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Wed, 21 Oct 2026 21:56:40 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 21:56:40 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 21:57:11 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Wed, 21 Oct 2026 21:57:11 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 21 Oct 2026 21:57:11 GMT
ENV MYSQL_MAJOR=9.7
# Wed, 21 Oct 2026 21:57:11 GMT
ENV MYSQL_VERSION=9.7.4-1.el9
# Wed, 21 Oct 2026 21:57:11 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Wed, 21 Oct 2026 21:57:45 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Wed, 21 Oct 2026 21:57:45 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Wed, 21 Oct 2026 21:57:45 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Wed, 21 Oct 2026 21:58:29 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Wed, 21 Oct 2026 21:58:29 GMT
VOLUME [/var/lib/mysql]
# Wed, 21 Oct 2026 21:58:29 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 21:58:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:58:29 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Wed, 21 Oct 2026 21:58:29 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:97347cf073b19c00bee840fa47d2cd0537dbf5eb581be49840c203f71c0a5c75`  
		Last Modified: Mon, 19 Oct 2026 21:33:00 GMT  
		Size: 47.2 MB (47249168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a81feb8cef6680732ef231f10320416e31a40726cc0223516d92139741fe61b5`  
		Last Modified: Wed, 21 Oct 2026 21:59:01 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:402761f17fb5c4d162e8efa34c5bb9ac17b92efe6d96e1df20af66bd82570e5e`  
		Last Modified: Wed, 21 Oct 2026 21:59:02 GMT  
		Size: 783.6 KB (783558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04fdf047584da45a6a89dc16e2160e29bb0ecdde0e194e04fd8d52d2fed12115`  
		Last Modified: Wed, 21 Oct 2026 21:59:02 GMT  
		Size: 6.2 MB (6191941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e735e16fde53f967c5f2cd395aafa04dd7dc42a36bf3abac24bc8c89acfb2779`  
		Last Modified: Wed, 21 Oct 2026 21:59:02 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9183015a9417c9a6183cc999241ef43a20820628ed944f1cd53007e8387c49c5`  
		Last Modified: Wed, 21 Oct 2026 21:59:03 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f743c1851c9dfdf088584c5ba9aae757b68c7cea4530aba444b1fc58f574ba2`  
		Last Modified: Wed, 21 Oct 2026 21:59:05 GMT  
		Size: 57.2 MB (57180077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6cb22001f6c48c8739c5a1bb9e27d0d26ee264f3f0f27999b940666db23f32e`  
		Last Modified: Wed, 21 Oct 2026 21:59:03 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29855632b6eaec13ab463e6aed52060dc5e92313054b8ea81217a36e5306715a`  
		Last Modified: Wed, 21 Oct 2026 21:59:08 GMT  
		Size: 158.9 MB (158923517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ace2c02e8d2375d1e037b2946cedb24a459ae24d0b67462ee1fc394a6d5afb4b`  
		Last Modified: Wed, 21 Oct 2026 21:59:04 GMT  
		Size: 5.2 KB (5231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:64fbb23fe4c2e663c42082914a1bb368f51219265983f0cf348c24a1eeef6028
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16834217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f09db1e53fd50686d4a8369e241c42aa1ac3798e0243bd15d2839a38aecba034`

```dockerfile
```

-	Layers:
	-	`sha256:df36013c17643ae16d62e7be1b7bbde5401019e59d83643838670f1236240980`  
		Last Modified: Wed, 21 Oct 2026 21:59:02 GMT  
		Size: 16.8 MB (16800010 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0b24455d76871e4ba8bc084cdb484814e99994025ca7c2f504acebda9e16db59`  
		Last Modified: Wed, 21 Oct 2026 21:59:01 GMT  
		Size: 34.2 KB (34207 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9.7-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:946ee9fa034894b6bd1fc415c7d4326ad6da0555efb7eba47cfc4325d35686f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.7 MB (266725303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:990cfd5c376151a6f496d58e4258379f1d4c32d3646956ffbf98f646b6ea4311`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:44 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:44 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 22:25:11 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Wed, 21 Oct 2026 22:25:13 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 22:25:13 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 22:25:52 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Wed, 21 Oct 2026 22:25:53 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 21 Oct 2026 22:25:53 GMT
ENV MYSQL_MAJOR=9.7
# Wed, 21 Oct 2026 22:25:53 GMT
ENV MYSQL_VERSION=9.7.4-1.el9
# Wed, 21 Oct 2026 22:25:53 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Wed, 21 Oct 2026 22:26:37 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Wed, 21 Oct 2026 22:26:37 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Wed, 21 Oct 2026 22:26:37 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Wed, 21 Oct 2026 22:27:31 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Wed, 21 Oct 2026 22:27:31 GMT
VOLUME [/var/lib/mysql]
# Wed, 21 Oct 2026 22:27:31 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 22:27:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 22:27:31 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Wed, 21 Oct 2026 22:27:31 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ec733952651fc70d299ac3951cabb9fafd032cc96e2ff71bdfd675ac20ca9c93`  
		Last Modified: Mon, 19 Oct 2026 21:32:56 GMT  
		Size: 45.8 MB (45800185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1182c60483b521aec518756b66d9e4b5d2fa3d995b9174021d3cd02783dbc1c`  
		Last Modified: Wed, 21 Oct 2026 22:28:07 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb8170183e634f55f5c1d9065235158aa23f915bc7615edd000fe3a0d6486d94`  
		Last Modified: Wed, 21 Oct 2026 22:28:07 GMT  
		Size: 737.5 KB (737524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6fb2577a3d092fbe7d051821ced8d3dfad54875ae18705043c416af0d86064a`  
		Last Modified: Wed, 21 Oct 2026 22:28:07 GMT  
		Size: 5.8 MB (5810135 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31e756d31627198d791ead85bdff4daec51545a63d7809a98d73bea80a0121a8`  
		Last Modified: Wed, 21 Oct 2026 22:28:07 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9969fb8a5e5f57e2909bb91f02d20cefec037cc17fe60391cb2547f413eb33a2`  
		Last Modified: Wed, 21 Oct 2026 22:28:08 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c9272b53566219b40dc93e9e86e8d3ffb5568513003c2f5f4cb4742f9c731d4`  
		Last Modified: Wed, 21 Oct 2026 22:28:10 GMT  
		Size: 57.2 MB (57175479 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:357ec417092f2a9d844446bc6fd18f693619cced425b6daccc42514e95e02e99`  
		Last Modified: Wed, 21 Oct 2026 22:28:08 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba40f52333907ee3ef8a078452c10d8b8c48fb4f908687a8bc67431c6209abe3`  
		Last Modified: Wed, 21 Oct 2026 22:28:15 GMT  
		Size: 157.2 MB (157192608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e47d25df692e1c232495dc06468cee8737931fc0ee817ae8fcf30f53d77a449a`  
		Last Modified: Wed, 21 Oct 2026 22:28:09 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:121103b6549034fd26b072c40be9dae58f5806f04e8310f910ed2f3ebabdd84d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16832958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9d2b8f6616a266115cddd1b4df3b1197d6947eef2f029528eef8abece0ae356`

```dockerfile
```

-	Layers:
	-	`sha256:dbe70e693699c5a3f811e445b6ae8de7628dd84f37214ebfb8d0cb3a0ad637fd`  
		Last Modified: Wed, 21 Oct 2026 22:28:08 GMT  
		Size: 16.8 MB (16798446 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9f2f0812a79037b234d829d54cf017a083f916d227df644d790dc55388ad47ee`  
		Last Modified: Wed, 21 Oct 2026 22:28:07 GMT  
		Size: 34.5 KB (34512 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9.7-oraclelinux9`

```console
$ docker pull mysql@sha256:8fb11c38b3551e22d50adbb688f027f8ff4ea2d2445aa277c1cc97b4af85ec54
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9.7-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:ef50288bcf1daa57ea9f7cb8ad48ea077c30c5dfbef2ae3aee8dae0f1eef205c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.3 MB (270337634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:311dc96f8652388814088c745d37e4aaa842cbe37dfcdbaf5311c7dd3edd8da4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:48 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:48 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 21:56:38 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Wed, 21 Oct 2026 21:56:40 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 21:56:40 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 21:57:11 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Wed, 21 Oct 2026 21:57:11 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 21 Oct 2026 21:57:11 GMT
ENV MYSQL_MAJOR=9.7
# Wed, 21 Oct 2026 21:57:11 GMT
ENV MYSQL_VERSION=9.7.4-1.el9
# Wed, 21 Oct 2026 21:57:11 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Wed, 21 Oct 2026 21:57:45 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Wed, 21 Oct 2026 21:57:45 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Wed, 21 Oct 2026 21:57:45 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Wed, 21 Oct 2026 21:58:29 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Wed, 21 Oct 2026 21:58:29 GMT
VOLUME [/var/lib/mysql]
# Wed, 21 Oct 2026 21:58:29 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 21:58:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:58:29 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Wed, 21 Oct 2026 21:58:29 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:97347cf073b19c00bee840fa47d2cd0537dbf5eb581be49840c203f71c0a5c75`  
		Last Modified: Mon, 19 Oct 2026 21:33:00 GMT  
		Size: 47.2 MB (47249168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a81feb8cef6680732ef231f10320416e31a40726cc0223516d92139741fe61b5`  
		Last Modified: Wed, 21 Oct 2026 21:59:01 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:402761f17fb5c4d162e8efa34c5bb9ac17b92efe6d96e1df20af66bd82570e5e`  
		Last Modified: Wed, 21 Oct 2026 21:59:02 GMT  
		Size: 783.6 KB (783558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04fdf047584da45a6a89dc16e2160e29bb0ecdde0e194e04fd8d52d2fed12115`  
		Last Modified: Wed, 21 Oct 2026 21:59:02 GMT  
		Size: 6.2 MB (6191941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e735e16fde53f967c5f2cd395aafa04dd7dc42a36bf3abac24bc8c89acfb2779`  
		Last Modified: Wed, 21 Oct 2026 21:59:02 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9183015a9417c9a6183cc999241ef43a20820628ed944f1cd53007e8387c49c5`  
		Last Modified: Wed, 21 Oct 2026 21:59:03 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f743c1851c9dfdf088584c5ba9aae757b68c7cea4530aba444b1fc58f574ba2`  
		Last Modified: Wed, 21 Oct 2026 21:59:05 GMT  
		Size: 57.2 MB (57180077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6cb22001f6c48c8739c5a1bb9e27d0d26ee264f3f0f27999b940666db23f32e`  
		Last Modified: Wed, 21 Oct 2026 21:59:03 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29855632b6eaec13ab463e6aed52060dc5e92313054b8ea81217a36e5306715a`  
		Last Modified: Wed, 21 Oct 2026 21:59:08 GMT  
		Size: 158.9 MB (158923517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ace2c02e8d2375d1e037b2946cedb24a459ae24d0b67462ee1fc394a6d5afb4b`  
		Last Modified: Wed, 21 Oct 2026 21:59:04 GMT  
		Size: 5.2 KB (5231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:64fbb23fe4c2e663c42082914a1bb368f51219265983f0cf348c24a1eeef6028
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16834217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f09db1e53fd50686d4a8369e241c42aa1ac3798e0243bd15d2839a38aecba034`

```dockerfile
```

-	Layers:
	-	`sha256:df36013c17643ae16d62e7be1b7bbde5401019e59d83643838670f1236240980`  
		Last Modified: Wed, 21 Oct 2026 21:59:02 GMT  
		Size: 16.8 MB (16800010 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0b24455d76871e4ba8bc084cdb484814e99994025ca7c2f504acebda9e16db59`  
		Last Modified: Wed, 21 Oct 2026 21:59:01 GMT  
		Size: 34.2 KB (34207 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9.7-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:946ee9fa034894b6bd1fc415c7d4326ad6da0555efb7eba47cfc4325d35686f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.7 MB (266725303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:990cfd5c376151a6f496d58e4258379f1d4c32d3646956ffbf98f646b6ea4311`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:44 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:44 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 22:25:11 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Wed, 21 Oct 2026 22:25:13 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 22:25:13 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 22:25:52 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Wed, 21 Oct 2026 22:25:53 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 21 Oct 2026 22:25:53 GMT
ENV MYSQL_MAJOR=9.7
# Wed, 21 Oct 2026 22:25:53 GMT
ENV MYSQL_VERSION=9.7.4-1.el9
# Wed, 21 Oct 2026 22:25:53 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Wed, 21 Oct 2026 22:26:37 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Wed, 21 Oct 2026 22:26:37 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Wed, 21 Oct 2026 22:26:37 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Wed, 21 Oct 2026 22:27:31 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Wed, 21 Oct 2026 22:27:31 GMT
VOLUME [/var/lib/mysql]
# Wed, 21 Oct 2026 22:27:31 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 22:27:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 22:27:31 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Wed, 21 Oct 2026 22:27:31 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ec733952651fc70d299ac3951cabb9fafd032cc96e2ff71bdfd675ac20ca9c93`  
		Last Modified: Mon, 19 Oct 2026 21:32:56 GMT  
		Size: 45.8 MB (45800185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1182c60483b521aec518756b66d9e4b5d2fa3d995b9174021d3cd02783dbc1c`  
		Last Modified: Wed, 21 Oct 2026 22:28:07 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb8170183e634f55f5c1d9065235158aa23f915bc7615edd000fe3a0d6486d94`  
		Last Modified: Wed, 21 Oct 2026 22:28:07 GMT  
		Size: 737.5 KB (737524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6fb2577a3d092fbe7d051821ced8d3dfad54875ae18705043c416af0d86064a`  
		Last Modified: Wed, 21 Oct 2026 22:28:07 GMT  
		Size: 5.8 MB (5810135 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31e756d31627198d791ead85bdff4daec51545a63d7809a98d73bea80a0121a8`  
		Last Modified: Wed, 21 Oct 2026 22:28:07 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9969fb8a5e5f57e2909bb91f02d20cefec037cc17fe60391cb2547f413eb33a2`  
		Last Modified: Wed, 21 Oct 2026 22:28:08 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c9272b53566219b40dc93e9e86e8d3ffb5568513003c2f5f4cb4742f9c731d4`  
		Last Modified: Wed, 21 Oct 2026 22:28:10 GMT  
		Size: 57.2 MB (57175479 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:357ec417092f2a9d844446bc6fd18f693619cced425b6daccc42514e95e02e99`  
		Last Modified: Wed, 21 Oct 2026 22:28:08 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba40f52333907ee3ef8a078452c10d8b8c48fb4f908687a8bc67431c6209abe3`  
		Last Modified: Wed, 21 Oct 2026 22:28:15 GMT  
		Size: 157.2 MB (157192608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e47d25df692e1c232495dc06468cee8737931fc0ee817ae8fcf30f53d77a449a`  
		Last Modified: Wed, 21 Oct 2026 22:28:09 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:121103b6549034fd26b072c40be9dae58f5806f04e8310f910ed2f3ebabdd84d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16832958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9d2b8f6616a266115cddd1b4df3b1197d6947eef2f029528eef8abece0ae356`

```dockerfile
```

-	Layers:
	-	`sha256:dbe70e693699c5a3f811e445b6ae8de7628dd84f37214ebfb8d0cb3a0ad637fd`  
		Last Modified: Wed, 21 Oct 2026 22:28:08 GMT  
		Size: 16.8 MB (16798446 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9f2f0812a79037b234d829d54cf017a083f916d227df644d790dc55388ad47ee`  
		Last Modified: Wed, 21 Oct 2026 22:28:07 GMT  
		Size: 34.5 KB (34512 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9.7.4`

```console
$ docker pull mysql@sha256:8fb11c38b3551e22d50adbb688f027f8ff4ea2d2445aa277c1cc97b4af85ec54
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9.7.4` - linux; amd64

```console
$ docker pull mysql@sha256:ef50288bcf1daa57ea9f7cb8ad48ea077c30c5dfbef2ae3aee8dae0f1eef205c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.3 MB (270337634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:311dc96f8652388814088c745d37e4aaa842cbe37dfcdbaf5311c7dd3edd8da4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:48 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:48 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 21:56:38 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Wed, 21 Oct 2026 21:56:40 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 21:56:40 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 21:57:11 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Wed, 21 Oct 2026 21:57:11 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 21 Oct 2026 21:57:11 GMT
ENV MYSQL_MAJOR=9.7
# Wed, 21 Oct 2026 21:57:11 GMT
ENV MYSQL_VERSION=9.7.4-1.el9
# Wed, 21 Oct 2026 21:57:11 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Wed, 21 Oct 2026 21:57:45 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Wed, 21 Oct 2026 21:57:45 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Wed, 21 Oct 2026 21:57:45 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Wed, 21 Oct 2026 21:58:29 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Wed, 21 Oct 2026 21:58:29 GMT
VOLUME [/var/lib/mysql]
# Wed, 21 Oct 2026 21:58:29 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 21:58:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:58:29 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Wed, 21 Oct 2026 21:58:29 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:97347cf073b19c00bee840fa47d2cd0537dbf5eb581be49840c203f71c0a5c75`  
		Last Modified: Mon, 19 Oct 2026 21:33:00 GMT  
		Size: 47.2 MB (47249168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a81feb8cef6680732ef231f10320416e31a40726cc0223516d92139741fe61b5`  
		Last Modified: Wed, 21 Oct 2026 21:59:01 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:402761f17fb5c4d162e8efa34c5bb9ac17b92efe6d96e1df20af66bd82570e5e`  
		Last Modified: Wed, 21 Oct 2026 21:59:02 GMT  
		Size: 783.6 KB (783558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04fdf047584da45a6a89dc16e2160e29bb0ecdde0e194e04fd8d52d2fed12115`  
		Last Modified: Wed, 21 Oct 2026 21:59:02 GMT  
		Size: 6.2 MB (6191941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e735e16fde53f967c5f2cd395aafa04dd7dc42a36bf3abac24bc8c89acfb2779`  
		Last Modified: Wed, 21 Oct 2026 21:59:02 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9183015a9417c9a6183cc999241ef43a20820628ed944f1cd53007e8387c49c5`  
		Last Modified: Wed, 21 Oct 2026 21:59:03 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f743c1851c9dfdf088584c5ba9aae757b68c7cea4530aba444b1fc58f574ba2`  
		Last Modified: Wed, 21 Oct 2026 21:59:05 GMT  
		Size: 57.2 MB (57180077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6cb22001f6c48c8739c5a1bb9e27d0d26ee264f3f0f27999b940666db23f32e`  
		Last Modified: Wed, 21 Oct 2026 21:59:03 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29855632b6eaec13ab463e6aed52060dc5e92313054b8ea81217a36e5306715a`  
		Last Modified: Wed, 21 Oct 2026 21:59:08 GMT  
		Size: 158.9 MB (158923517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ace2c02e8d2375d1e037b2946cedb24a459ae24d0b67462ee1fc394a6d5afb4b`  
		Last Modified: Wed, 21 Oct 2026 21:59:04 GMT  
		Size: 5.2 KB (5231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7.4` - unknown; unknown

```console
$ docker pull mysql@sha256:64fbb23fe4c2e663c42082914a1bb368f51219265983f0cf348c24a1eeef6028
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16834217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f09db1e53fd50686d4a8369e241c42aa1ac3798e0243bd15d2839a38aecba034`

```dockerfile
```

-	Layers:
	-	`sha256:df36013c17643ae16d62e7be1b7bbde5401019e59d83643838670f1236240980`  
		Last Modified: Wed, 21 Oct 2026 21:59:02 GMT  
		Size: 16.8 MB (16800010 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0b24455d76871e4ba8bc084cdb484814e99994025ca7c2f504acebda9e16db59`  
		Last Modified: Wed, 21 Oct 2026 21:59:01 GMT  
		Size: 34.2 KB (34207 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9.7.4` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:946ee9fa034894b6bd1fc415c7d4326ad6da0555efb7eba47cfc4325d35686f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.7 MB (266725303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:990cfd5c376151a6f496d58e4258379f1d4c32d3646956ffbf98f646b6ea4311`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:44 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:44 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 22:25:11 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Wed, 21 Oct 2026 22:25:13 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 22:25:13 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 22:25:52 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Wed, 21 Oct 2026 22:25:53 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 21 Oct 2026 22:25:53 GMT
ENV MYSQL_MAJOR=9.7
# Wed, 21 Oct 2026 22:25:53 GMT
ENV MYSQL_VERSION=9.7.4-1.el9
# Wed, 21 Oct 2026 22:25:53 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Wed, 21 Oct 2026 22:26:37 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Wed, 21 Oct 2026 22:26:37 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Wed, 21 Oct 2026 22:26:37 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Wed, 21 Oct 2026 22:27:31 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Wed, 21 Oct 2026 22:27:31 GMT
VOLUME [/var/lib/mysql]
# Wed, 21 Oct 2026 22:27:31 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 22:27:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 22:27:31 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Wed, 21 Oct 2026 22:27:31 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ec733952651fc70d299ac3951cabb9fafd032cc96e2ff71bdfd675ac20ca9c93`  
		Last Modified: Mon, 19 Oct 2026 21:32:56 GMT  
		Size: 45.8 MB (45800185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1182c60483b521aec518756b66d9e4b5d2fa3d995b9174021d3cd02783dbc1c`  
		Last Modified: Wed, 21 Oct 2026 22:28:07 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb8170183e634f55f5c1d9065235158aa23f915bc7615edd000fe3a0d6486d94`  
		Last Modified: Wed, 21 Oct 2026 22:28:07 GMT  
		Size: 737.5 KB (737524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6fb2577a3d092fbe7d051821ced8d3dfad54875ae18705043c416af0d86064a`  
		Last Modified: Wed, 21 Oct 2026 22:28:07 GMT  
		Size: 5.8 MB (5810135 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31e756d31627198d791ead85bdff4daec51545a63d7809a98d73bea80a0121a8`  
		Last Modified: Wed, 21 Oct 2026 22:28:07 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9969fb8a5e5f57e2909bb91f02d20cefec037cc17fe60391cb2547f413eb33a2`  
		Last Modified: Wed, 21 Oct 2026 22:28:08 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c9272b53566219b40dc93e9e86e8d3ffb5568513003c2f5f4cb4742f9c731d4`  
		Last Modified: Wed, 21 Oct 2026 22:28:10 GMT  
		Size: 57.2 MB (57175479 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:357ec417092f2a9d844446bc6fd18f693619cced425b6daccc42514e95e02e99`  
		Last Modified: Wed, 21 Oct 2026 22:28:08 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba40f52333907ee3ef8a078452c10d8b8c48fb4f908687a8bc67431c6209abe3`  
		Last Modified: Wed, 21 Oct 2026 22:28:15 GMT  
		Size: 157.2 MB (157192608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e47d25df692e1c232495dc06468cee8737931fc0ee817ae8fcf30f53d77a449a`  
		Last Modified: Wed, 21 Oct 2026 22:28:09 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7.4` - unknown; unknown

```console
$ docker pull mysql@sha256:121103b6549034fd26b072c40be9dae58f5806f04e8310f910ed2f3ebabdd84d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16832958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9d2b8f6616a266115cddd1b4df3b1197d6947eef2f029528eef8abece0ae356`

```dockerfile
```

-	Layers:
	-	`sha256:dbe70e693699c5a3f811e445b6ae8de7628dd84f37214ebfb8d0cb3a0ad637fd`  
		Last Modified: Wed, 21 Oct 2026 22:28:08 GMT  
		Size: 16.8 MB (16798446 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9f2f0812a79037b234d829d54cf017a083f916d227df644d790dc55388ad47ee`  
		Last Modified: Wed, 21 Oct 2026 22:28:07 GMT  
		Size: 34.5 KB (34512 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9.7.4-oracle`

```console
$ docker pull mysql@sha256:8fb11c38b3551e22d50adbb688f027f8ff4ea2d2445aa277c1cc97b4af85ec54
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9.7.4-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:ef50288bcf1daa57ea9f7cb8ad48ea077c30c5dfbef2ae3aee8dae0f1eef205c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.3 MB (270337634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:311dc96f8652388814088c745d37e4aaa842cbe37dfcdbaf5311c7dd3edd8da4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:48 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:48 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 21:56:38 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Wed, 21 Oct 2026 21:56:40 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 21:56:40 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 21:57:11 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Wed, 21 Oct 2026 21:57:11 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 21 Oct 2026 21:57:11 GMT
ENV MYSQL_MAJOR=9.7
# Wed, 21 Oct 2026 21:57:11 GMT
ENV MYSQL_VERSION=9.7.4-1.el9
# Wed, 21 Oct 2026 21:57:11 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Wed, 21 Oct 2026 21:57:45 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Wed, 21 Oct 2026 21:57:45 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Wed, 21 Oct 2026 21:57:45 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Wed, 21 Oct 2026 21:58:29 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Wed, 21 Oct 2026 21:58:29 GMT
VOLUME [/var/lib/mysql]
# Wed, 21 Oct 2026 21:58:29 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 21:58:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:58:29 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Wed, 21 Oct 2026 21:58:29 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:97347cf073b19c00bee840fa47d2cd0537dbf5eb581be49840c203f71c0a5c75`  
		Last Modified: Mon, 19 Oct 2026 21:33:00 GMT  
		Size: 47.2 MB (47249168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a81feb8cef6680732ef231f10320416e31a40726cc0223516d92139741fe61b5`  
		Last Modified: Wed, 21 Oct 2026 21:59:01 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:402761f17fb5c4d162e8efa34c5bb9ac17b92efe6d96e1df20af66bd82570e5e`  
		Last Modified: Wed, 21 Oct 2026 21:59:02 GMT  
		Size: 783.6 KB (783558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04fdf047584da45a6a89dc16e2160e29bb0ecdde0e194e04fd8d52d2fed12115`  
		Last Modified: Wed, 21 Oct 2026 21:59:02 GMT  
		Size: 6.2 MB (6191941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e735e16fde53f967c5f2cd395aafa04dd7dc42a36bf3abac24bc8c89acfb2779`  
		Last Modified: Wed, 21 Oct 2026 21:59:02 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9183015a9417c9a6183cc999241ef43a20820628ed944f1cd53007e8387c49c5`  
		Last Modified: Wed, 21 Oct 2026 21:59:03 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f743c1851c9dfdf088584c5ba9aae757b68c7cea4530aba444b1fc58f574ba2`  
		Last Modified: Wed, 21 Oct 2026 21:59:05 GMT  
		Size: 57.2 MB (57180077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6cb22001f6c48c8739c5a1bb9e27d0d26ee264f3f0f27999b940666db23f32e`  
		Last Modified: Wed, 21 Oct 2026 21:59:03 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29855632b6eaec13ab463e6aed52060dc5e92313054b8ea81217a36e5306715a`  
		Last Modified: Wed, 21 Oct 2026 21:59:08 GMT  
		Size: 158.9 MB (158923517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ace2c02e8d2375d1e037b2946cedb24a459ae24d0b67462ee1fc394a6d5afb4b`  
		Last Modified: Wed, 21 Oct 2026 21:59:04 GMT  
		Size: 5.2 KB (5231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7.4-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:64fbb23fe4c2e663c42082914a1bb368f51219265983f0cf348c24a1eeef6028
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16834217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f09db1e53fd50686d4a8369e241c42aa1ac3798e0243bd15d2839a38aecba034`

```dockerfile
```

-	Layers:
	-	`sha256:df36013c17643ae16d62e7be1b7bbde5401019e59d83643838670f1236240980`  
		Last Modified: Wed, 21 Oct 2026 21:59:02 GMT  
		Size: 16.8 MB (16800010 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0b24455d76871e4ba8bc084cdb484814e99994025ca7c2f504acebda9e16db59`  
		Last Modified: Wed, 21 Oct 2026 21:59:01 GMT  
		Size: 34.2 KB (34207 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9.7.4-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:946ee9fa034894b6bd1fc415c7d4326ad6da0555efb7eba47cfc4325d35686f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.7 MB (266725303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:990cfd5c376151a6f496d58e4258379f1d4c32d3646956ffbf98f646b6ea4311`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:44 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:44 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 22:25:11 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Wed, 21 Oct 2026 22:25:13 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 22:25:13 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 22:25:52 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Wed, 21 Oct 2026 22:25:53 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 21 Oct 2026 22:25:53 GMT
ENV MYSQL_MAJOR=9.7
# Wed, 21 Oct 2026 22:25:53 GMT
ENV MYSQL_VERSION=9.7.4-1.el9
# Wed, 21 Oct 2026 22:25:53 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Wed, 21 Oct 2026 22:26:37 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Wed, 21 Oct 2026 22:26:37 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Wed, 21 Oct 2026 22:26:37 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Wed, 21 Oct 2026 22:27:31 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Wed, 21 Oct 2026 22:27:31 GMT
VOLUME [/var/lib/mysql]
# Wed, 21 Oct 2026 22:27:31 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 22:27:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 22:27:31 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Wed, 21 Oct 2026 22:27:31 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ec733952651fc70d299ac3951cabb9fafd032cc96e2ff71bdfd675ac20ca9c93`  
		Last Modified: Mon, 19 Oct 2026 21:32:56 GMT  
		Size: 45.8 MB (45800185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1182c60483b521aec518756b66d9e4b5d2fa3d995b9174021d3cd02783dbc1c`  
		Last Modified: Wed, 21 Oct 2026 22:28:07 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb8170183e634f55f5c1d9065235158aa23f915bc7615edd000fe3a0d6486d94`  
		Last Modified: Wed, 21 Oct 2026 22:28:07 GMT  
		Size: 737.5 KB (737524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6fb2577a3d092fbe7d051821ced8d3dfad54875ae18705043c416af0d86064a`  
		Last Modified: Wed, 21 Oct 2026 22:28:07 GMT  
		Size: 5.8 MB (5810135 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31e756d31627198d791ead85bdff4daec51545a63d7809a98d73bea80a0121a8`  
		Last Modified: Wed, 21 Oct 2026 22:28:07 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9969fb8a5e5f57e2909bb91f02d20cefec037cc17fe60391cb2547f413eb33a2`  
		Last Modified: Wed, 21 Oct 2026 22:28:08 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c9272b53566219b40dc93e9e86e8d3ffb5568513003c2f5f4cb4742f9c731d4`  
		Last Modified: Wed, 21 Oct 2026 22:28:10 GMT  
		Size: 57.2 MB (57175479 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:357ec417092f2a9d844446bc6fd18f693619cced425b6daccc42514e95e02e99`  
		Last Modified: Wed, 21 Oct 2026 22:28:08 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba40f52333907ee3ef8a078452c10d8b8c48fb4f908687a8bc67431c6209abe3`  
		Last Modified: Wed, 21 Oct 2026 22:28:15 GMT  
		Size: 157.2 MB (157192608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e47d25df692e1c232495dc06468cee8737931fc0ee817ae8fcf30f53d77a449a`  
		Last Modified: Wed, 21 Oct 2026 22:28:09 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7.4-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:121103b6549034fd26b072c40be9dae58f5806f04e8310f910ed2f3ebabdd84d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16832958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9d2b8f6616a266115cddd1b4df3b1197d6947eef2f029528eef8abece0ae356`

```dockerfile
```

-	Layers:
	-	`sha256:dbe70e693699c5a3f811e445b6ae8de7628dd84f37214ebfb8d0cb3a0ad637fd`  
		Last Modified: Wed, 21 Oct 2026 22:28:08 GMT  
		Size: 16.8 MB (16798446 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9f2f0812a79037b234d829d54cf017a083f916d227df644d790dc55388ad47ee`  
		Last Modified: Wed, 21 Oct 2026 22:28:07 GMT  
		Size: 34.5 KB (34512 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:9.7.4-oraclelinux9`

```console
$ docker pull mysql@sha256:8fb11c38b3551e22d50adbb688f027f8ff4ea2d2445aa277c1cc97b4af85ec54
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:9.7.4-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:ef50288bcf1daa57ea9f7cb8ad48ea077c30c5dfbef2ae3aee8dae0f1eef205c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.3 MB (270337634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:311dc96f8652388814088c745d37e4aaa842cbe37dfcdbaf5311c7dd3edd8da4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:48 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:48 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 21:56:38 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Wed, 21 Oct 2026 21:56:40 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 21:56:40 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 21:57:11 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Wed, 21 Oct 2026 21:57:11 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 21 Oct 2026 21:57:11 GMT
ENV MYSQL_MAJOR=9.7
# Wed, 21 Oct 2026 21:57:11 GMT
ENV MYSQL_VERSION=9.7.4-1.el9
# Wed, 21 Oct 2026 21:57:11 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Wed, 21 Oct 2026 21:57:45 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Wed, 21 Oct 2026 21:57:45 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Wed, 21 Oct 2026 21:57:45 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Wed, 21 Oct 2026 21:58:29 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Wed, 21 Oct 2026 21:58:29 GMT
VOLUME [/var/lib/mysql]
# Wed, 21 Oct 2026 21:58:29 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 21:58:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:58:29 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Wed, 21 Oct 2026 21:58:29 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:97347cf073b19c00bee840fa47d2cd0537dbf5eb581be49840c203f71c0a5c75`  
		Last Modified: Mon, 19 Oct 2026 21:33:00 GMT  
		Size: 47.2 MB (47249168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a81feb8cef6680732ef231f10320416e31a40726cc0223516d92139741fe61b5`  
		Last Modified: Wed, 21 Oct 2026 21:59:01 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:402761f17fb5c4d162e8efa34c5bb9ac17b92efe6d96e1df20af66bd82570e5e`  
		Last Modified: Wed, 21 Oct 2026 21:59:02 GMT  
		Size: 783.6 KB (783558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04fdf047584da45a6a89dc16e2160e29bb0ecdde0e194e04fd8d52d2fed12115`  
		Last Modified: Wed, 21 Oct 2026 21:59:02 GMT  
		Size: 6.2 MB (6191941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e735e16fde53f967c5f2cd395aafa04dd7dc42a36bf3abac24bc8c89acfb2779`  
		Last Modified: Wed, 21 Oct 2026 21:59:02 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9183015a9417c9a6183cc999241ef43a20820628ed944f1cd53007e8387c49c5`  
		Last Modified: Wed, 21 Oct 2026 21:59:03 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f743c1851c9dfdf088584c5ba9aae757b68c7cea4530aba444b1fc58f574ba2`  
		Last Modified: Wed, 21 Oct 2026 21:59:05 GMT  
		Size: 57.2 MB (57180077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6cb22001f6c48c8739c5a1bb9e27d0d26ee264f3f0f27999b940666db23f32e`  
		Last Modified: Wed, 21 Oct 2026 21:59:03 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29855632b6eaec13ab463e6aed52060dc5e92313054b8ea81217a36e5306715a`  
		Last Modified: Wed, 21 Oct 2026 21:59:08 GMT  
		Size: 158.9 MB (158923517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ace2c02e8d2375d1e037b2946cedb24a459ae24d0b67462ee1fc394a6d5afb4b`  
		Last Modified: Wed, 21 Oct 2026 21:59:04 GMT  
		Size: 5.2 KB (5231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7.4-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:64fbb23fe4c2e663c42082914a1bb368f51219265983f0cf348c24a1eeef6028
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16834217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f09db1e53fd50686d4a8369e241c42aa1ac3798e0243bd15d2839a38aecba034`

```dockerfile
```

-	Layers:
	-	`sha256:df36013c17643ae16d62e7be1b7bbde5401019e59d83643838670f1236240980`  
		Last Modified: Wed, 21 Oct 2026 21:59:02 GMT  
		Size: 16.8 MB (16800010 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0b24455d76871e4ba8bc084cdb484814e99994025ca7c2f504acebda9e16db59`  
		Last Modified: Wed, 21 Oct 2026 21:59:01 GMT  
		Size: 34.2 KB (34207 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:9.7.4-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:946ee9fa034894b6bd1fc415c7d4326ad6da0555efb7eba47cfc4325d35686f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.7 MB (266725303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:990cfd5c376151a6f496d58e4258379f1d4c32d3646956ffbf98f646b6ea4311`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:44 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:44 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 22:25:11 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Wed, 21 Oct 2026 22:25:13 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 22:25:13 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 22:25:52 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Wed, 21 Oct 2026 22:25:53 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 21 Oct 2026 22:25:53 GMT
ENV MYSQL_MAJOR=9.7
# Wed, 21 Oct 2026 22:25:53 GMT
ENV MYSQL_VERSION=9.7.4-1.el9
# Wed, 21 Oct 2026 22:25:53 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Wed, 21 Oct 2026 22:26:37 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Wed, 21 Oct 2026 22:26:37 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Wed, 21 Oct 2026 22:26:37 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Wed, 21 Oct 2026 22:27:31 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Wed, 21 Oct 2026 22:27:31 GMT
VOLUME [/var/lib/mysql]
# Wed, 21 Oct 2026 22:27:31 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 22:27:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 22:27:31 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Wed, 21 Oct 2026 22:27:31 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ec733952651fc70d299ac3951cabb9fafd032cc96e2ff71bdfd675ac20ca9c93`  
		Last Modified: Mon, 19 Oct 2026 21:32:56 GMT  
		Size: 45.8 MB (45800185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1182c60483b521aec518756b66d9e4b5d2fa3d995b9174021d3cd02783dbc1c`  
		Last Modified: Wed, 21 Oct 2026 22:28:07 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb8170183e634f55f5c1d9065235158aa23f915bc7615edd000fe3a0d6486d94`  
		Last Modified: Wed, 21 Oct 2026 22:28:07 GMT  
		Size: 737.5 KB (737524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6fb2577a3d092fbe7d051821ced8d3dfad54875ae18705043c416af0d86064a`  
		Last Modified: Wed, 21 Oct 2026 22:28:07 GMT  
		Size: 5.8 MB (5810135 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31e756d31627198d791ead85bdff4daec51545a63d7809a98d73bea80a0121a8`  
		Last Modified: Wed, 21 Oct 2026 22:28:07 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9969fb8a5e5f57e2909bb91f02d20cefec037cc17fe60391cb2547f413eb33a2`  
		Last Modified: Wed, 21 Oct 2026 22:28:08 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c9272b53566219b40dc93e9e86e8d3ffb5568513003c2f5f4cb4742f9c731d4`  
		Last Modified: Wed, 21 Oct 2026 22:28:10 GMT  
		Size: 57.2 MB (57175479 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:357ec417092f2a9d844446bc6fd18f693619cced425b6daccc42514e95e02e99`  
		Last Modified: Wed, 21 Oct 2026 22:28:08 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba40f52333907ee3ef8a078452c10d8b8c48fb4f908687a8bc67431c6209abe3`  
		Last Modified: Wed, 21 Oct 2026 22:28:15 GMT  
		Size: 157.2 MB (157192608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e47d25df692e1c232495dc06468cee8737931fc0ee817ae8fcf30f53d77a449a`  
		Last Modified: Wed, 21 Oct 2026 22:28:09 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:9.7.4-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:121103b6549034fd26b072c40be9dae58f5806f04e8310f910ed2f3ebabdd84d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16832958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9d2b8f6616a266115cddd1b4df3b1197d6947eef2f029528eef8abece0ae356`

```dockerfile
```

-	Layers:
	-	`sha256:dbe70e693699c5a3f811e445b6ae8de7628dd84f37214ebfb8d0cb3a0ad637fd`  
		Last Modified: Wed, 21 Oct 2026 22:28:08 GMT  
		Size: 16.8 MB (16798446 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9f2f0812a79037b234d829d54cf017a083f916d227df644d790dc55388ad47ee`  
		Last Modified: Wed, 21 Oct 2026 22:28:07 GMT  
		Size: 34.5 KB (34512 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:innovation`

```console
$ docker pull mysql@sha256:f51c9c01c16b0eb5d81bb70ab7e7fcb3b96abc6a54114be3a94e8e569cae7815
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:innovation` - linux; amd64

```console
$ docker pull mysql@sha256:82491f3359e91c23f65055033529ed3367b4a48e5f94d25144096fa1b6ca5ef3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.1 MB (299105288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:190f292a926af3f102331e424e729d3e3fd56dc0c4266dbced65de518262c0a8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:48 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:48 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 21:56:17 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Wed, 21 Oct 2026 21:56:19 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 21:56:19 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 21:56:50 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Wed, 21 Oct 2026 21:56:51 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 21 Oct 2026 21:56:51 GMT
ENV MYSQL_MAJOR=innovation
# Wed, 21 Oct 2026 21:56:51 GMT
ENV MYSQL_VERSION=26.10.0-1.el9
# Wed, 21 Oct 2026 21:56:51 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Wed, 21 Oct 2026 21:57:30 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Wed, 21 Oct 2026 21:57:30 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Wed, 21 Oct 2026 21:57:30 GMT
ENV MYSQL_SHELL_VERSION=26.10.0-1.el9
# Wed, 21 Oct 2026 21:58:13 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Wed, 21 Oct 2026 21:58:13 GMT
VOLUME [/var/lib/mysql]
# Wed, 21 Oct 2026 21:58:13 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 21:58:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:58:13 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Wed, 21 Oct 2026 21:58:13 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:97347cf073b19c00bee840fa47d2cd0537dbf5eb581be49840c203f71c0a5c75`  
		Last Modified: Mon, 19 Oct 2026 21:33:00 GMT  
		Size: 47.2 MB (47249168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f94d19cb2000ec18ab44ea7c0431d3a382b56f7aadac47930de9870782f47cb6`  
		Last Modified: Wed, 21 Oct 2026 21:58:37 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a585709eedb3bdf12dc10f66701a96f14c3ae3ddc5014446075d6f3bc5c6008f`  
		Last Modified: Wed, 21 Oct 2026 21:58:37 GMT  
		Size: 783.6 KB (783561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b93f6218baf819d65f2ec44453a53fb3799034b621da7b5846be2604961d3a7e`  
		Last Modified: Wed, 21 Oct 2026 21:58:38 GMT  
		Size: 6.2 MB (6191944 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f627afc3dcfa5b4af70874e198851d988cf3299d1a3c94a4e50a521bddcfad7`  
		Last Modified: Wed, 21 Oct 2026 21:58:37 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:205d9d6acf3e6390a82d75366fffaa7dd70faaf8f077f80730adcb4c6a0ffd7c`  
		Last Modified: Wed, 21 Oct 2026 21:58:39 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:914f9525bedd5a22569a18b1096157dee17e1de24a4804b1ef9ff09b5ddb507f`  
		Last Modified: Wed, 21 Oct 2026 21:58:42 GMT  
		Size: 63.8 MB (63790338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7419b3490447a2b6019bd821b1fc3b8736ff2d1bda0dcb0f0574ec9bac7d1409`  
		Last Modified: Wed, 21 Oct 2026 21:58:39 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d88e4392a3b0f547e870128f9801f5d9a9ba90ff3cea816a312b0e55459e68eb`  
		Last Modified: Wed, 21 Oct 2026 21:58:44 GMT  
		Size: 181.1 MB (181080895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa5981637f05e00e89139c4b57df4d0abfd478a47ff83306b2f39a679581e0da`  
		Last Modified: Wed, 21 Oct 2026 21:58:40 GMT  
		Size: 5.2 KB (5228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:innovation` - unknown; unknown

```console
$ docker pull mysql@sha256:9cf8a5a6ecc3855e9f0b940dc8a09b0652904888350c3d0348d0c2cbc0532ea8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5352612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03b10ada5bcce44d2b7b98fa4bbed89fd73e6a7b2b79f18f962929987a993527`

```dockerfile
```

-	Layers:
	-	`sha256:8dceb28f73721bb09d4e382a17ce16abd8db54d287e4f76c46e7cba2de4ca740`  
		Last Modified: Wed, 21 Oct 2026 21:58:38 GMT  
		Size: 5.3 MB (5317293 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0c048e487f09df72927f5a6852edb1eed474a4a7a2e682ec8f2ed89b210c7d1e`  
		Last Modified: Wed, 21 Oct 2026 21:58:37 GMT  
		Size: 35.3 KB (35319 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:innovation` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:d28721bf25d84a6c14049972b2bb9375a8a5b249f54cf58518c863d9901b4ab9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.5 MB (295538702 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7f5260bcf3774d253076481d8a28c4e4d125cea1e40a8b663fd654d7375d555`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:44 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:44 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 22:25:07 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Wed, 21 Oct 2026 22:25:08 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 22:25:08 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 22:25:46 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Wed, 21 Oct 2026 22:25:47 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 21 Oct 2026 22:25:47 GMT
ENV MYSQL_MAJOR=innovation
# Wed, 21 Oct 2026 22:25:47 GMT
ENV MYSQL_VERSION=26.10.0-1.el9
# Wed, 21 Oct 2026 22:25:47 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Wed, 21 Oct 2026 22:26:32 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Wed, 21 Oct 2026 22:26:32 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Wed, 21 Oct 2026 22:26:32 GMT
ENV MYSQL_SHELL_VERSION=26.10.0-1.el9
# Wed, 21 Oct 2026 22:27:23 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Wed, 21 Oct 2026 22:27:23 GMT
VOLUME [/var/lib/mysql]
# Wed, 21 Oct 2026 22:27:23 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 22:27:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 22:27:23 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Wed, 21 Oct 2026 22:27:23 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ec733952651fc70d299ac3951cabb9fafd032cc96e2ff71bdfd675ac20ca9c93`  
		Last Modified: Mon, 19 Oct 2026 21:32:56 GMT  
		Size: 45.8 MB (45800185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78eaa3a880f9d1cc19e7aff89d0bed22d25d5a59ad885b4c02ce948d8236aaf2`  
		Last Modified: Wed, 21 Oct 2026 22:27:50 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c5ac5f92e1354555b93ed5f9b09cee2d09bbb1a34a5ee4f4ed8c5547c210835`  
		Last Modified: Wed, 21 Oct 2026 22:27:50 GMT  
		Size: 737.5 KB (737530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:492ad916207b0e403d38f4927d83a0de369ab704eb76c58f382668475b98c1f3`  
		Last Modified: Wed, 21 Oct 2026 22:27:50 GMT  
		Size: 5.8 MB (5810099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e28e6a3a5a7220bc491fee32ec2019a6373d5c12ff818a4cd6a1453e37972be3`  
		Last Modified: Wed, 21 Oct 2026 22:27:50 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bd14e67f63fda428007bcd7a63d3ffb55b0d4973719da57d68d18661d6bdacf`  
		Last Modified: Wed, 21 Oct 2026 22:27:51 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08a8ef31b348846a60bcde2513ccf76937bfad94eda4dfcfdbf693473329c7d8`  
		Last Modified: Wed, 21 Oct 2026 22:27:53 GMT  
		Size: 63.8 MB (63828948 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c5bbe02c32fc0461f1bb139ba0dfef719993394926ae75adaafb69279316771`  
		Last Modified: Wed, 21 Oct 2026 22:27:51 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c589b229d807557537717ebb4fc51604e961a870b490885bd0049a89fcad0686`  
		Last Modified: Wed, 21 Oct 2026 22:27:56 GMT  
		Size: 179.4 MB (179352553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2519c685ee5fbc7da56b4531f2aa4e9b61c84578f5ed765956d806372dc8965`  
		Last Modified: Wed, 21 Oct 2026 22:27:52 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:innovation` - unknown; unknown

```console
$ docker pull mysql@sha256:3cd0d122684f8cc7f01a62de394d6b3437a04c6fd377f8023d4440e311fbe9bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5351426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14b6d0a735190ed0c9719be69207d1e860b4f0a933fc8cd60c807aa6dd347bef`

```dockerfile
```

-	Layers:
	-	`sha256:04bd4352edbf28bda13855733c1781745bf30fec471f6742f1c4236ba0f65b7e`  
		Last Modified: Wed, 21 Oct 2026 22:27:50 GMT  
		Size: 5.3 MB (5315766 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a8c1f7f032339039df58648d5057e9d63e8edf0252f49b2421ec47b8d8ee7f70`  
		Last Modified: Wed, 21 Oct 2026 22:27:50 GMT  
		Size: 35.7 KB (35660 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:innovation-oracle`

```console
$ docker pull mysql@sha256:f51c9c01c16b0eb5d81bb70ab7e7fcb3b96abc6a54114be3a94e8e569cae7815
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:innovation-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:82491f3359e91c23f65055033529ed3367b4a48e5f94d25144096fa1b6ca5ef3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.1 MB (299105288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:190f292a926af3f102331e424e729d3e3fd56dc0c4266dbced65de518262c0a8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:48 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:48 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 21:56:17 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Wed, 21 Oct 2026 21:56:19 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 21:56:19 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 21:56:50 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Wed, 21 Oct 2026 21:56:51 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 21 Oct 2026 21:56:51 GMT
ENV MYSQL_MAJOR=innovation
# Wed, 21 Oct 2026 21:56:51 GMT
ENV MYSQL_VERSION=26.10.0-1.el9
# Wed, 21 Oct 2026 21:56:51 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Wed, 21 Oct 2026 21:57:30 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Wed, 21 Oct 2026 21:57:30 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Wed, 21 Oct 2026 21:57:30 GMT
ENV MYSQL_SHELL_VERSION=26.10.0-1.el9
# Wed, 21 Oct 2026 21:58:13 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Wed, 21 Oct 2026 21:58:13 GMT
VOLUME [/var/lib/mysql]
# Wed, 21 Oct 2026 21:58:13 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 21:58:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:58:13 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Wed, 21 Oct 2026 21:58:13 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:97347cf073b19c00bee840fa47d2cd0537dbf5eb581be49840c203f71c0a5c75`  
		Last Modified: Mon, 19 Oct 2026 21:33:00 GMT  
		Size: 47.2 MB (47249168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f94d19cb2000ec18ab44ea7c0431d3a382b56f7aadac47930de9870782f47cb6`  
		Last Modified: Wed, 21 Oct 2026 21:58:37 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a585709eedb3bdf12dc10f66701a96f14c3ae3ddc5014446075d6f3bc5c6008f`  
		Last Modified: Wed, 21 Oct 2026 21:58:37 GMT  
		Size: 783.6 KB (783561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b93f6218baf819d65f2ec44453a53fb3799034b621da7b5846be2604961d3a7e`  
		Last Modified: Wed, 21 Oct 2026 21:58:38 GMT  
		Size: 6.2 MB (6191944 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f627afc3dcfa5b4af70874e198851d988cf3299d1a3c94a4e50a521bddcfad7`  
		Last Modified: Wed, 21 Oct 2026 21:58:37 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:205d9d6acf3e6390a82d75366fffaa7dd70faaf8f077f80730adcb4c6a0ffd7c`  
		Last Modified: Wed, 21 Oct 2026 21:58:39 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:914f9525bedd5a22569a18b1096157dee17e1de24a4804b1ef9ff09b5ddb507f`  
		Last Modified: Wed, 21 Oct 2026 21:58:42 GMT  
		Size: 63.8 MB (63790338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7419b3490447a2b6019bd821b1fc3b8736ff2d1bda0dcb0f0574ec9bac7d1409`  
		Last Modified: Wed, 21 Oct 2026 21:58:39 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d88e4392a3b0f547e870128f9801f5d9a9ba90ff3cea816a312b0e55459e68eb`  
		Last Modified: Wed, 21 Oct 2026 21:58:44 GMT  
		Size: 181.1 MB (181080895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa5981637f05e00e89139c4b57df4d0abfd478a47ff83306b2f39a679581e0da`  
		Last Modified: Wed, 21 Oct 2026 21:58:40 GMT  
		Size: 5.2 KB (5228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:innovation-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:9cf8a5a6ecc3855e9f0b940dc8a09b0652904888350c3d0348d0c2cbc0532ea8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5352612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03b10ada5bcce44d2b7b98fa4bbed89fd73e6a7b2b79f18f962929987a993527`

```dockerfile
```

-	Layers:
	-	`sha256:8dceb28f73721bb09d4e382a17ce16abd8db54d287e4f76c46e7cba2de4ca740`  
		Last Modified: Wed, 21 Oct 2026 21:58:38 GMT  
		Size: 5.3 MB (5317293 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0c048e487f09df72927f5a6852edb1eed474a4a7a2e682ec8f2ed89b210c7d1e`  
		Last Modified: Wed, 21 Oct 2026 21:58:37 GMT  
		Size: 35.3 KB (35319 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:innovation-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:d28721bf25d84a6c14049972b2bb9375a8a5b249f54cf58518c863d9901b4ab9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.5 MB (295538702 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7f5260bcf3774d253076481d8a28c4e4d125cea1e40a8b663fd654d7375d555`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:44 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:44 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 22:25:07 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Wed, 21 Oct 2026 22:25:08 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 22:25:08 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 22:25:46 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Wed, 21 Oct 2026 22:25:47 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 21 Oct 2026 22:25:47 GMT
ENV MYSQL_MAJOR=innovation
# Wed, 21 Oct 2026 22:25:47 GMT
ENV MYSQL_VERSION=26.10.0-1.el9
# Wed, 21 Oct 2026 22:25:47 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Wed, 21 Oct 2026 22:26:32 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Wed, 21 Oct 2026 22:26:32 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Wed, 21 Oct 2026 22:26:32 GMT
ENV MYSQL_SHELL_VERSION=26.10.0-1.el9
# Wed, 21 Oct 2026 22:27:23 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Wed, 21 Oct 2026 22:27:23 GMT
VOLUME [/var/lib/mysql]
# Wed, 21 Oct 2026 22:27:23 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 22:27:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 22:27:23 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Wed, 21 Oct 2026 22:27:23 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ec733952651fc70d299ac3951cabb9fafd032cc96e2ff71bdfd675ac20ca9c93`  
		Last Modified: Mon, 19 Oct 2026 21:32:56 GMT  
		Size: 45.8 MB (45800185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78eaa3a880f9d1cc19e7aff89d0bed22d25d5a59ad885b4c02ce948d8236aaf2`  
		Last Modified: Wed, 21 Oct 2026 22:27:50 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c5ac5f92e1354555b93ed5f9b09cee2d09bbb1a34a5ee4f4ed8c5547c210835`  
		Last Modified: Wed, 21 Oct 2026 22:27:50 GMT  
		Size: 737.5 KB (737530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:492ad916207b0e403d38f4927d83a0de369ab704eb76c58f382668475b98c1f3`  
		Last Modified: Wed, 21 Oct 2026 22:27:50 GMT  
		Size: 5.8 MB (5810099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e28e6a3a5a7220bc491fee32ec2019a6373d5c12ff818a4cd6a1453e37972be3`  
		Last Modified: Wed, 21 Oct 2026 22:27:50 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bd14e67f63fda428007bcd7a63d3ffb55b0d4973719da57d68d18661d6bdacf`  
		Last Modified: Wed, 21 Oct 2026 22:27:51 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08a8ef31b348846a60bcde2513ccf76937bfad94eda4dfcfdbf693473329c7d8`  
		Last Modified: Wed, 21 Oct 2026 22:27:53 GMT  
		Size: 63.8 MB (63828948 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c5bbe02c32fc0461f1bb139ba0dfef719993394926ae75adaafb69279316771`  
		Last Modified: Wed, 21 Oct 2026 22:27:51 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c589b229d807557537717ebb4fc51604e961a870b490885bd0049a89fcad0686`  
		Last Modified: Wed, 21 Oct 2026 22:27:56 GMT  
		Size: 179.4 MB (179352553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2519c685ee5fbc7da56b4531f2aa4e9b61c84578f5ed765956d806372dc8965`  
		Last Modified: Wed, 21 Oct 2026 22:27:52 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:innovation-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:3cd0d122684f8cc7f01a62de394d6b3437a04c6fd377f8023d4440e311fbe9bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5351426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14b6d0a735190ed0c9719be69207d1e860b4f0a933fc8cd60c807aa6dd347bef`

```dockerfile
```

-	Layers:
	-	`sha256:04bd4352edbf28bda13855733c1781745bf30fec471f6742f1c4236ba0f65b7e`  
		Last Modified: Wed, 21 Oct 2026 22:27:50 GMT  
		Size: 5.3 MB (5315766 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a8c1f7f032339039df58648d5057e9d63e8edf0252f49b2421ec47b8d8ee7f70`  
		Last Modified: Wed, 21 Oct 2026 22:27:50 GMT  
		Size: 35.7 KB (35660 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:innovation-oraclelinux9`

```console
$ docker pull mysql@sha256:f51c9c01c16b0eb5d81bb70ab7e7fcb3b96abc6a54114be3a94e8e569cae7815
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:innovation-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:82491f3359e91c23f65055033529ed3367b4a48e5f94d25144096fa1b6ca5ef3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.1 MB (299105288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:190f292a926af3f102331e424e729d3e3fd56dc0c4266dbced65de518262c0a8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:48 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:48 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 21:56:17 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Wed, 21 Oct 2026 21:56:19 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 21:56:19 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 21:56:50 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Wed, 21 Oct 2026 21:56:51 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 21 Oct 2026 21:56:51 GMT
ENV MYSQL_MAJOR=innovation
# Wed, 21 Oct 2026 21:56:51 GMT
ENV MYSQL_VERSION=26.10.0-1.el9
# Wed, 21 Oct 2026 21:56:51 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Wed, 21 Oct 2026 21:57:30 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Wed, 21 Oct 2026 21:57:30 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Wed, 21 Oct 2026 21:57:30 GMT
ENV MYSQL_SHELL_VERSION=26.10.0-1.el9
# Wed, 21 Oct 2026 21:58:13 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Wed, 21 Oct 2026 21:58:13 GMT
VOLUME [/var/lib/mysql]
# Wed, 21 Oct 2026 21:58:13 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 21:58:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:58:13 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Wed, 21 Oct 2026 21:58:13 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:97347cf073b19c00bee840fa47d2cd0537dbf5eb581be49840c203f71c0a5c75`  
		Last Modified: Mon, 19 Oct 2026 21:33:00 GMT  
		Size: 47.2 MB (47249168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f94d19cb2000ec18ab44ea7c0431d3a382b56f7aadac47930de9870782f47cb6`  
		Last Modified: Wed, 21 Oct 2026 21:58:37 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a585709eedb3bdf12dc10f66701a96f14c3ae3ddc5014446075d6f3bc5c6008f`  
		Last Modified: Wed, 21 Oct 2026 21:58:37 GMT  
		Size: 783.6 KB (783561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b93f6218baf819d65f2ec44453a53fb3799034b621da7b5846be2604961d3a7e`  
		Last Modified: Wed, 21 Oct 2026 21:58:38 GMT  
		Size: 6.2 MB (6191944 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f627afc3dcfa5b4af70874e198851d988cf3299d1a3c94a4e50a521bddcfad7`  
		Last Modified: Wed, 21 Oct 2026 21:58:37 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:205d9d6acf3e6390a82d75366fffaa7dd70faaf8f077f80730adcb4c6a0ffd7c`  
		Last Modified: Wed, 21 Oct 2026 21:58:39 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:914f9525bedd5a22569a18b1096157dee17e1de24a4804b1ef9ff09b5ddb507f`  
		Last Modified: Wed, 21 Oct 2026 21:58:42 GMT  
		Size: 63.8 MB (63790338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7419b3490447a2b6019bd821b1fc3b8736ff2d1bda0dcb0f0574ec9bac7d1409`  
		Last Modified: Wed, 21 Oct 2026 21:58:39 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d88e4392a3b0f547e870128f9801f5d9a9ba90ff3cea816a312b0e55459e68eb`  
		Last Modified: Wed, 21 Oct 2026 21:58:44 GMT  
		Size: 181.1 MB (181080895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa5981637f05e00e89139c4b57df4d0abfd478a47ff83306b2f39a679581e0da`  
		Last Modified: Wed, 21 Oct 2026 21:58:40 GMT  
		Size: 5.2 KB (5228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:innovation-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:9cf8a5a6ecc3855e9f0b940dc8a09b0652904888350c3d0348d0c2cbc0532ea8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5352612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03b10ada5bcce44d2b7b98fa4bbed89fd73e6a7b2b79f18f962929987a993527`

```dockerfile
```

-	Layers:
	-	`sha256:8dceb28f73721bb09d4e382a17ce16abd8db54d287e4f76c46e7cba2de4ca740`  
		Last Modified: Wed, 21 Oct 2026 21:58:38 GMT  
		Size: 5.3 MB (5317293 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0c048e487f09df72927f5a6852edb1eed474a4a7a2e682ec8f2ed89b210c7d1e`  
		Last Modified: Wed, 21 Oct 2026 21:58:37 GMT  
		Size: 35.3 KB (35319 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:innovation-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:d28721bf25d84a6c14049972b2bb9375a8a5b249f54cf58518c863d9901b4ab9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.5 MB (295538702 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7f5260bcf3774d253076481d8a28c4e4d125cea1e40a8b663fd654d7375d555`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:44 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:44 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 22:25:07 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Wed, 21 Oct 2026 22:25:08 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 22:25:08 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 22:25:46 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Wed, 21 Oct 2026 22:25:47 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 21 Oct 2026 22:25:47 GMT
ENV MYSQL_MAJOR=innovation
# Wed, 21 Oct 2026 22:25:47 GMT
ENV MYSQL_VERSION=26.10.0-1.el9
# Wed, 21 Oct 2026 22:25:47 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Wed, 21 Oct 2026 22:26:32 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Wed, 21 Oct 2026 22:26:32 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Wed, 21 Oct 2026 22:26:32 GMT
ENV MYSQL_SHELL_VERSION=26.10.0-1.el9
# Wed, 21 Oct 2026 22:27:23 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Wed, 21 Oct 2026 22:27:23 GMT
VOLUME [/var/lib/mysql]
# Wed, 21 Oct 2026 22:27:23 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 22:27:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 22:27:23 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Wed, 21 Oct 2026 22:27:23 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ec733952651fc70d299ac3951cabb9fafd032cc96e2ff71bdfd675ac20ca9c93`  
		Last Modified: Mon, 19 Oct 2026 21:32:56 GMT  
		Size: 45.8 MB (45800185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78eaa3a880f9d1cc19e7aff89d0bed22d25d5a59ad885b4c02ce948d8236aaf2`  
		Last Modified: Wed, 21 Oct 2026 22:27:50 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c5ac5f92e1354555b93ed5f9b09cee2d09bbb1a34a5ee4f4ed8c5547c210835`  
		Last Modified: Wed, 21 Oct 2026 22:27:50 GMT  
		Size: 737.5 KB (737530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:492ad916207b0e403d38f4927d83a0de369ab704eb76c58f382668475b98c1f3`  
		Last Modified: Wed, 21 Oct 2026 22:27:50 GMT  
		Size: 5.8 MB (5810099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e28e6a3a5a7220bc491fee32ec2019a6373d5c12ff818a4cd6a1453e37972be3`  
		Last Modified: Wed, 21 Oct 2026 22:27:50 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bd14e67f63fda428007bcd7a63d3ffb55b0d4973719da57d68d18661d6bdacf`  
		Last Modified: Wed, 21 Oct 2026 22:27:51 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08a8ef31b348846a60bcde2513ccf76937bfad94eda4dfcfdbf693473329c7d8`  
		Last Modified: Wed, 21 Oct 2026 22:27:53 GMT  
		Size: 63.8 MB (63828948 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c5bbe02c32fc0461f1bb139ba0dfef719993394926ae75adaafb69279316771`  
		Last Modified: Wed, 21 Oct 2026 22:27:51 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c589b229d807557537717ebb4fc51604e961a870b490885bd0049a89fcad0686`  
		Last Modified: Wed, 21 Oct 2026 22:27:56 GMT  
		Size: 179.4 MB (179352553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2519c685ee5fbc7da56b4531f2aa4e9b61c84578f5ed765956d806372dc8965`  
		Last Modified: Wed, 21 Oct 2026 22:27:52 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:innovation-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:3cd0d122684f8cc7f01a62de394d6b3437a04c6fd377f8023d4440e311fbe9bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5351426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14b6d0a735190ed0c9719be69207d1e860b4f0a933fc8cd60c807aa6dd347bef`

```dockerfile
```

-	Layers:
	-	`sha256:04bd4352edbf28bda13855733c1781745bf30fec471f6742f1c4236ba0f65b7e`  
		Last Modified: Wed, 21 Oct 2026 22:27:50 GMT  
		Size: 5.3 MB (5315766 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a8c1f7f032339039df58648d5057e9d63e8edf0252f49b2421ec47b8d8ee7f70`  
		Last Modified: Wed, 21 Oct 2026 22:27:50 GMT  
		Size: 35.7 KB (35660 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:latest`

```console
$ docker pull mysql@sha256:f51c9c01c16b0eb5d81bb70ab7e7fcb3b96abc6a54114be3a94e8e569cae7815
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:latest` - linux; amd64

```console
$ docker pull mysql@sha256:82491f3359e91c23f65055033529ed3367b4a48e5f94d25144096fa1b6ca5ef3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.1 MB (299105288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:190f292a926af3f102331e424e729d3e3fd56dc0c4266dbced65de518262c0a8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:48 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:48 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 21:56:17 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Wed, 21 Oct 2026 21:56:19 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 21:56:19 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 21:56:50 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Wed, 21 Oct 2026 21:56:51 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 21 Oct 2026 21:56:51 GMT
ENV MYSQL_MAJOR=innovation
# Wed, 21 Oct 2026 21:56:51 GMT
ENV MYSQL_VERSION=26.10.0-1.el9
# Wed, 21 Oct 2026 21:56:51 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Wed, 21 Oct 2026 21:57:30 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Wed, 21 Oct 2026 21:57:30 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Wed, 21 Oct 2026 21:57:30 GMT
ENV MYSQL_SHELL_VERSION=26.10.0-1.el9
# Wed, 21 Oct 2026 21:58:13 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Wed, 21 Oct 2026 21:58:13 GMT
VOLUME [/var/lib/mysql]
# Wed, 21 Oct 2026 21:58:13 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 21:58:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:58:13 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Wed, 21 Oct 2026 21:58:13 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:97347cf073b19c00bee840fa47d2cd0537dbf5eb581be49840c203f71c0a5c75`  
		Last Modified: Mon, 19 Oct 2026 21:33:00 GMT  
		Size: 47.2 MB (47249168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f94d19cb2000ec18ab44ea7c0431d3a382b56f7aadac47930de9870782f47cb6`  
		Last Modified: Wed, 21 Oct 2026 21:58:37 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a585709eedb3bdf12dc10f66701a96f14c3ae3ddc5014446075d6f3bc5c6008f`  
		Last Modified: Wed, 21 Oct 2026 21:58:37 GMT  
		Size: 783.6 KB (783561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b93f6218baf819d65f2ec44453a53fb3799034b621da7b5846be2604961d3a7e`  
		Last Modified: Wed, 21 Oct 2026 21:58:38 GMT  
		Size: 6.2 MB (6191944 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f627afc3dcfa5b4af70874e198851d988cf3299d1a3c94a4e50a521bddcfad7`  
		Last Modified: Wed, 21 Oct 2026 21:58:37 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:205d9d6acf3e6390a82d75366fffaa7dd70faaf8f077f80730adcb4c6a0ffd7c`  
		Last Modified: Wed, 21 Oct 2026 21:58:39 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:914f9525bedd5a22569a18b1096157dee17e1de24a4804b1ef9ff09b5ddb507f`  
		Last Modified: Wed, 21 Oct 2026 21:58:42 GMT  
		Size: 63.8 MB (63790338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7419b3490447a2b6019bd821b1fc3b8736ff2d1bda0dcb0f0574ec9bac7d1409`  
		Last Modified: Wed, 21 Oct 2026 21:58:39 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d88e4392a3b0f547e870128f9801f5d9a9ba90ff3cea816a312b0e55459e68eb`  
		Last Modified: Wed, 21 Oct 2026 21:58:44 GMT  
		Size: 181.1 MB (181080895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa5981637f05e00e89139c4b57df4d0abfd478a47ff83306b2f39a679581e0da`  
		Last Modified: Wed, 21 Oct 2026 21:58:40 GMT  
		Size: 5.2 KB (5228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:latest` - unknown; unknown

```console
$ docker pull mysql@sha256:9cf8a5a6ecc3855e9f0b940dc8a09b0652904888350c3d0348d0c2cbc0532ea8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5352612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03b10ada5bcce44d2b7b98fa4bbed89fd73e6a7b2b79f18f962929987a993527`

```dockerfile
```

-	Layers:
	-	`sha256:8dceb28f73721bb09d4e382a17ce16abd8db54d287e4f76c46e7cba2de4ca740`  
		Last Modified: Wed, 21 Oct 2026 21:58:38 GMT  
		Size: 5.3 MB (5317293 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0c048e487f09df72927f5a6852edb1eed474a4a7a2e682ec8f2ed89b210c7d1e`  
		Last Modified: Wed, 21 Oct 2026 21:58:37 GMT  
		Size: 35.3 KB (35319 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:latest` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:d28721bf25d84a6c14049972b2bb9375a8a5b249f54cf58518c863d9901b4ab9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.5 MB (295538702 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7f5260bcf3774d253076481d8a28c4e4d125cea1e40a8b663fd654d7375d555`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:44 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:44 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 22:25:07 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Wed, 21 Oct 2026 22:25:08 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 22:25:08 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 22:25:46 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Wed, 21 Oct 2026 22:25:47 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 21 Oct 2026 22:25:47 GMT
ENV MYSQL_MAJOR=innovation
# Wed, 21 Oct 2026 22:25:47 GMT
ENV MYSQL_VERSION=26.10.0-1.el9
# Wed, 21 Oct 2026 22:25:47 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Wed, 21 Oct 2026 22:26:32 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Wed, 21 Oct 2026 22:26:32 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Wed, 21 Oct 2026 22:26:32 GMT
ENV MYSQL_SHELL_VERSION=26.10.0-1.el9
# Wed, 21 Oct 2026 22:27:23 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Wed, 21 Oct 2026 22:27:23 GMT
VOLUME [/var/lib/mysql]
# Wed, 21 Oct 2026 22:27:23 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 22:27:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 22:27:23 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Wed, 21 Oct 2026 22:27:23 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ec733952651fc70d299ac3951cabb9fafd032cc96e2ff71bdfd675ac20ca9c93`  
		Last Modified: Mon, 19 Oct 2026 21:32:56 GMT  
		Size: 45.8 MB (45800185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78eaa3a880f9d1cc19e7aff89d0bed22d25d5a59ad885b4c02ce948d8236aaf2`  
		Last Modified: Wed, 21 Oct 2026 22:27:50 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c5ac5f92e1354555b93ed5f9b09cee2d09bbb1a34a5ee4f4ed8c5547c210835`  
		Last Modified: Wed, 21 Oct 2026 22:27:50 GMT  
		Size: 737.5 KB (737530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:492ad916207b0e403d38f4927d83a0de369ab704eb76c58f382668475b98c1f3`  
		Last Modified: Wed, 21 Oct 2026 22:27:50 GMT  
		Size: 5.8 MB (5810099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e28e6a3a5a7220bc491fee32ec2019a6373d5c12ff818a4cd6a1453e37972be3`  
		Last Modified: Wed, 21 Oct 2026 22:27:50 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bd14e67f63fda428007bcd7a63d3ffb55b0d4973719da57d68d18661d6bdacf`  
		Last Modified: Wed, 21 Oct 2026 22:27:51 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08a8ef31b348846a60bcde2513ccf76937bfad94eda4dfcfdbf693473329c7d8`  
		Last Modified: Wed, 21 Oct 2026 22:27:53 GMT  
		Size: 63.8 MB (63828948 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c5bbe02c32fc0461f1bb139ba0dfef719993394926ae75adaafb69279316771`  
		Last Modified: Wed, 21 Oct 2026 22:27:51 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c589b229d807557537717ebb4fc51604e961a870b490885bd0049a89fcad0686`  
		Last Modified: Wed, 21 Oct 2026 22:27:56 GMT  
		Size: 179.4 MB (179352553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2519c685ee5fbc7da56b4531f2aa4e9b61c84578f5ed765956d806372dc8965`  
		Last Modified: Wed, 21 Oct 2026 22:27:52 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:latest` - unknown; unknown

```console
$ docker pull mysql@sha256:3cd0d122684f8cc7f01a62de394d6b3437a04c6fd377f8023d4440e311fbe9bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5351426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14b6d0a735190ed0c9719be69207d1e860b4f0a933fc8cd60c807aa6dd347bef`

```dockerfile
```

-	Layers:
	-	`sha256:04bd4352edbf28bda13855733c1781745bf30fec471f6742f1c4236ba0f65b7e`  
		Last Modified: Wed, 21 Oct 2026 22:27:50 GMT  
		Size: 5.3 MB (5315766 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a8c1f7f032339039df58648d5057e9d63e8edf0252f49b2421ec47b8d8ee7f70`  
		Last Modified: Wed, 21 Oct 2026 22:27:50 GMT  
		Size: 35.7 KB (35660 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:lts`

```console
$ docker pull mysql@sha256:8fb11c38b3551e22d50adbb688f027f8ff4ea2d2445aa277c1cc97b4af85ec54
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:lts` - linux; amd64

```console
$ docker pull mysql@sha256:ef50288bcf1daa57ea9f7cb8ad48ea077c30c5dfbef2ae3aee8dae0f1eef205c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.3 MB (270337634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:311dc96f8652388814088c745d37e4aaa842cbe37dfcdbaf5311c7dd3edd8da4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:48 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:48 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 21:56:38 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Wed, 21 Oct 2026 21:56:40 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 21:56:40 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 21:57:11 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Wed, 21 Oct 2026 21:57:11 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 21 Oct 2026 21:57:11 GMT
ENV MYSQL_MAJOR=9.7
# Wed, 21 Oct 2026 21:57:11 GMT
ENV MYSQL_VERSION=9.7.4-1.el9
# Wed, 21 Oct 2026 21:57:11 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Wed, 21 Oct 2026 21:57:45 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Wed, 21 Oct 2026 21:57:45 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Wed, 21 Oct 2026 21:57:45 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Wed, 21 Oct 2026 21:58:29 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Wed, 21 Oct 2026 21:58:29 GMT
VOLUME [/var/lib/mysql]
# Wed, 21 Oct 2026 21:58:29 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 21:58:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:58:29 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Wed, 21 Oct 2026 21:58:29 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:97347cf073b19c00bee840fa47d2cd0537dbf5eb581be49840c203f71c0a5c75`  
		Last Modified: Mon, 19 Oct 2026 21:33:00 GMT  
		Size: 47.2 MB (47249168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a81feb8cef6680732ef231f10320416e31a40726cc0223516d92139741fe61b5`  
		Last Modified: Wed, 21 Oct 2026 21:59:01 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:402761f17fb5c4d162e8efa34c5bb9ac17b92efe6d96e1df20af66bd82570e5e`  
		Last Modified: Wed, 21 Oct 2026 21:59:02 GMT  
		Size: 783.6 KB (783558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04fdf047584da45a6a89dc16e2160e29bb0ecdde0e194e04fd8d52d2fed12115`  
		Last Modified: Wed, 21 Oct 2026 21:59:02 GMT  
		Size: 6.2 MB (6191941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e735e16fde53f967c5f2cd395aafa04dd7dc42a36bf3abac24bc8c89acfb2779`  
		Last Modified: Wed, 21 Oct 2026 21:59:02 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9183015a9417c9a6183cc999241ef43a20820628ed944f1cd53007e8387c49c5`  
		Last Modified: Wed, 21 Oct 2026 21:59:03 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f743c1851c9dfdf088584c5ba9aae757b68c7cea4530aba444b1fc58f574ba2`  
		Last Modified: Wed, 21 Oct 2026 21:59:05 GMT  
		Size: 57.2 MB (57180077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6cb22001f6c48c8739c5a1bb9e27d0d26ee264f3f0f27999b940666db23f32e`  
		Last Modified: Wed, 21 Oct 2026 21:59:03 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29855632b6eaec13ab463e6aed52060dc5e92313054b8ea81217a36e5306715a`  
		Last Modified: Wed, 21 Oct 2026 21:59:08 GMT  
		Size: 158.9 MB (158923517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ace2c02e8d2375d1e037b2946cedb24a459ae24d0b67462ee1fc394a6d5afb4b`  
		Last Modified: Wed, 21 Oct 2026 21:59:04 GMT  
		Size: 5.2 KB (5231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:lts` - unknown; unknown

```console
$ docker pull mysql@sha256:64fbb23fe4c2e663c42082914a1bb368f51219265983f0cf348c24a1eeef6028
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16834217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f09db1e53fd50686d4a8369e241c42aa1ac3798e0243bd15d2839a38aecba034`

```dockerfile
```

-	Layers:
	-	`sha256:df36013c17643ae16d62e7be1b7bbde5401019e59d83643838670f1236240980`  
		Last Modified: Wed, 21 Oct 2026 21:59:02 GMT  
		Size: 16.8 MB (16800010 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0b24455d76871e4ba8bc084cdb484814e99994025ca7c2f504acebda9e16db59`  
		Last Modified: Wed, 21 Oct 2026 21:59:01 GMT  
		Size: 34.2 KB (34207 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:lts` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:946ee9fa034894b6bd1fc415c7d4326ad6da0555efb7eba47cfc4325d35686f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.7 MB (266725303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:990cfd5c376151a6f496d58e4258379f1d4c32d3646956ffbf98f646b6ea4311`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:44 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:44 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 22:25:11 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Wed, 21 Oct 2026 22:25:13 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 22:25:13 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 22:25:52 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Wed, 21 Oct 2026 22:25:53 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 21 Oct 2026 22:25:53 GMT
ENV MYSQL_MAJOR=9.7
# Wed, 21 Oct 2026 22:25:53 GMT
ENV MYSQL_VERSION=9.7.4-1.el9
# Wed, 21 Oct 2026 22:25:53 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Wed, 21 Oct 2026 22:26:37 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Wed, 21 Oct 2026 22:26:37 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Wed, 21 Oct 2026 22:26:37 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Wed, 21 Oct 2026 22:27:31 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Wed, 21 Oct 2026 22:27:31 GMT
VOLUME [/var/lib/mysql]
# Wed, 21 Oct 2026 22:27:31 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 22:27:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 22:27:31 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Wed, 21 Oct 2026 22:27:31 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ec733952651fc70d299ac3951cabb9fafd032cc96e2ff71bdfd675ac20ca9c93`  
		Last Modified: Mon, 19 Oct 2026 21:32:56 GMT  
		Size: 45.8 MB (45800185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1182c60483b521aec518756b66d9e4b5d2fa3d995b9174021d3cd02783dbc1c`  
		Last Modified: Wed, 21 Oct 2026 22:28:07 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb8170183e634f55f5c1d9065235158aa23f915bc7615edd000fe3a0d6486d94`  
		Last Modified: Wed, 21 Oct 2026 22:28:07 GMT  
		Size: 737.5 KB (737524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6fb2577a3d092fbe7d051821ced8d3dfad54875ae18705043c416af0d86064a`  
		Last Modified: Wed, 21 Oct 2026 22:28:07 GMT  
		Size: 5.8 MB (5810135 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31e756d31627198d791ead85bdff4daec51545a63d7809a98d73bea80a0121a8`  
		Last Modified: Wed, 21 Oct 2026 22:28:07 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9969fb8a5e5f57e2909bb91f02d20cefec037cc17fe60391cb2547f413eb33a2`  
		Last Modified: Wed, 21 Oct 2026 22:28:08 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c9272b53566219b40dc93e9e86e8d3ffb5568513003c2f5f4cb4742f9c731d4`  
		Last Modified: Wed, 21 Oct 2026 22:28:10 GMT  
		Size: 57.2 MB (57175479 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:357ec417092f2a9d844446bc6fd18f693619cced425b6daccc42514e95e02e99`  
		Last Modified: Wed, 21 Oct 2026 22:28:08 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba40f52333907ee3ef8a078452c10d8b8c48fb4f908687a8bc67431c6209abe3`  
		Last Modified: Wed, 21 Oct 2026 22:28:15 GMT  
		Size: 157.2 MB (157192608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e47d25df692e1c232495dc06468cee8737931fc0ee817ae8fcf30f53d77a449a`  
		Last Modified: Wed, 21 Oct 2026 22:28:09 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:lts` - unknown; unknown

```console
$ docker pull mysql@sha256:121103b6549034fd26b072c40be9dae58f5806f04e8310f910ed2f3ebabdd84d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16832958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9d2b8f6616a266115cddd1b4df3b1197d6947eef2f029528eef8abece0ae356`

```dockerfile
```

-	Layers:
	-	`sha256:dbe70e693699c5a3f811e445b6ae8de7628dd84f37214ebfb8d0cb3a0ad637fd`  
		Last Modified: Wed, 21 Oct 2026 22:28:08 GMT  
		Size: 16.8 MB (16798446 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9f2f0812a79037b234d829d54cf017a083f916d227df644d790dc55388ad47ee`  
		Last Modified: Wed, 21 Oct 2026 22:28:07 GMT  
		Size: 34.5 KB (34512 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:lts-oracle`

```console
$ docker pull mysql@sha256:8fb11c38b3551e22d50adbb688f027f8ff4ea2d2445aa277c1cc97b4af85ec54
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:lts-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:ef50288bcf1daa57ea9f7cb8ad48ea077c30c5dfbef2ae3aee8dae0f1eef205c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.3 MB (270337634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:311dc96f8652388814088c745d37e4aaa842cbe37dfcdbaf5311c7dd3edd8da4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:48 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:48 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 21:56:38 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Wed, 21 Oct 2026 21:56:40 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 21:56:40 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 21:57:11 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Wed, 21 Oct 2026 21:57:11 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 21 Oct 2026 21:57:11 GMT
ENV MYSQL_MAJOR=9.7
# Wed, 21 Oct 2026 21:57:11 GMT
ENV MYSQL_VERSION=9.7.4-1.el9
# Wed, 21 Oct 2026 21:57:11 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Wed, 21 Oct 2026 21:57:45 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Wed, 21 Oct 2026 21:57:45 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Wed, 21 Oct 2026 21:57:45 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Wed, 21 Oct 2026 21:58:29 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Wed, 21 Oct 2026 21:58:29 GMT
VOLUME [/var/lib/mysql]
# Wed, 21 Oct 2026 21:58:29 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 21:58:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:58:29 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Wed, 21 Oct 2026 21:58:29 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:97347cf073b19c00bee840fa47d2cd0537dbf5eb581be49840c203f71c0a5c75`  
		Last Modified: Mon, 19 Oct 2026 21:33:00 GMT  
		Size: 47.2 MB (47249168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a81feb8cef6680732ef231f10320416e31a40726cc0223516d92139741fe61b5`  
		Last Modified: Wed, 21 Oct 2026 21:59:01 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:402761f17fb5c4d162e8efa34c5bb9ac17b92efe6d96e1df20af66bd82570e5e`  
		Last Modified: Wed, 21 Oct 2026 21:59:02 GMT  
		Size: 783.6 KB (783558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04fdf047584da45a6a89dc16e2160e29bb0ecdde0e194e04fd8d52d2fed12115`  
		Last Modified: Wed, 21 Oct 2026 21:59:02 GMT  
		Size: 6.2 MB (6191941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e735e16fde53f967c5f2cd395aafa04dd7dc42a36bf3abac24bc8c89acfb2779`  
		Last Modified: Wed, 21 Oct 2026 21:59:02 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9183015a9417c9a6183cc999241ef43a20820628ed944f1cd53007e8387c49c5`  
		Last Modified: Wed, 21 Oct 2026 21:59:03 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f743c1851c9dfdf088584c5ba9aae757b68c7cea4530aba444b1fc58f574ba2`  
		Last Modified: Wed, 21 Oct 2026 21:59:05 GMT  
		Size: 57.2 MB (57180077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6cb22001f6c48c8739c5a1bb9e27d0d26ee264f3f0f27999b940666db23f32e`  
		Last Modified: Wed, 21 Oct 2026 21:59:03 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29855632b6eaec13ab463e6aed52060dc5e92313054b8ea81217a36e5306715a`  
		Last Modified: Wed, 21 Oct 2026 21:59:08 GMT  
		Size: 158.9 MB (158923517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ace2c02e8d2375d1e037b2946cedb24a459ae24d0b67462ee1fc394a6d5afb4b`  
		Last Modified: Wed, 21 Oct 2026 21:59:04 GMT  
		Size: 5.2 KB (5231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:lts-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:64fbb23fe4c2e663c42082914a1bb368f51219265983f0cf348c24a1eeef6028
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16834217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f09db1e53fd50686d4a8369e241c42aa1ac3798e0243bd15d2839a38aecba034`

```dockerfile
```

-	Layers:
	-	`sha256:df36013c17643ae16d62e7be1b7bbde5401019e59d83643838670f1236240980`  
		Last Modified: Wed, 21 Oct 2026 21:59:02 GMT  
		Size: 16.8 MB (16800010 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0b24455d76871e4ba8bc084cdb484814e99994025ca7c2f504acebda9e16db59`  
		Last Modified: Wed, 21 Oct 2026 21:59:01 GMT  
		Size: 34.2 KB (34207 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:lts-oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:946ee9fa034894b6bd1fc415c7d4326ad6da0555efb7eba47cfc4325d35686f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.7 MB (266725303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:990cfd5c376151a6f496d58e4258379f1d4c32d3646956ffbf98f646b6ea4311`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:44 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:44 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 22:25:11 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Wed, 21 Oct 2026 22:25:13 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 22:25:13 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 22:25:52 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Wed, 21 Oct 2026 22:25:53 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 21 Oct 2026 22:25:53 GMT
ENV MYSQL_MAJOR=9.7
# Wed, 21 Oct 2026 22:25:53 GMT
ENV MYSQL_VERSION=9.7.4-1.el9
# Wed, 21 Oct 2026 22:25:53 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Wed, 21 Oct 2026 22:26:37 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Wed, 21 Oct 2026 22:26:37 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Wed, 21 Oct 2026 22:26:37 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Wed, 21 Oct 2026 22:27:31 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Wed, 21 Oct 2026 22:27:31 GMT
VOLUME [/var/lib/mysql]
# Wed, 21 Oct 2026 22:27:31 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 22:27:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 22:27:31 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Wed, 21 Oct 2026 22:27:31 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ec733952651fc70d299ac3951cabb9fafd032cc96e2ff71bdfd675ac20ca9c93`  
		Last Modified: Mon, 19 Oct 2026 21:32:56 GMT  
		Size: 45.8 MB (45800185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1182c60483b521aec518756b66d9e4b5d2fa3d995b9174021d3cd02783dbc1c`  
		Last Modified: Wed, 21 Oct 2026 22:28:07 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb8170183e634f55f5c1d9065235158aa23f915bc7615edd000fe3a0d6486d94`  
		Last Modified: Wed, 21 Oct 2026 22:28:07 GMT  
		Size: 737.5 KB (737524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6fb2577a3d092fbe7d051821ced8d3dfad54875ae18705043c416af0d86064a`  
		Last Modified: Wed, 21 Oct 2026 22:28:07 GMT  
		Size: 5.8 MB (5810135 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31e756d31627198d791ead85bdff4daec51545a63d7809a98d73bea80a0121a8`  
		Last Modified: Wed, 21 Oct 2026 22:28:07 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9969fb8a5e5f57e2909bb91f02d20cefec037cc17fe60391cb2547f413eb33a2`  
		Last Modified: Wed, 21 Oct 2026 22:28:08 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c9272b53566219b40dc93e9e86e8d3ffb5568513003c2f5f4cb4742f9c731d4`  
		Last Modified: Wed, 21 Oct 2026 22:28:10 GMT  
		Size: 57.2 MB (57175479 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:357ec417092f2a9d844446bc6fd18f693619cced425b6daccc42514e95e02e99`  
		Last Modified: Wed, 21 Oct 2026 22:28:08 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba40f52333907ee3ef8a078452c10d8b8c48fb4f908687a8bc67431c6209abe3`  
		Last Modified: Wed, 21 Oct 2026 22:28:15 GMT  
		Size: 157.2 MB (157192608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e47d25df692e1c232495dc06468cee8737931fc0ee817ae8fcf30f53d77a449a`  
		Last Modified: Wed, 21 Oct 2026 22:28:09 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:lts-oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:121103b6549034fd26b072c40be9dae58f5806f04e8310f910ed2f3ebabdd84d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16832958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9d2b8f6616a266115cddd1b4df3b1197d6947eef2f029528eef8abece0ae356`

```dockerfile
```

-	Layers:
	-	`sha256:dbe70e693699c5a3f811e445b6ae8de7628dd84f37214ebfb8d0cb3a0ad637fd`  
		Last Modified: Wed, 21 Oct 2026 22:28:08 GMT  
		Size: 16.8 MB (16798446 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9f2f0812a79037b234d829d54cf017a083f916d227df644d790dc55388ad47ee`  
		Last Modified: Wed, 21 Oct 2026 22:28:07 GMT  
		Size: 34.5 KB (34512 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:lts-oraclelinux9`

```console
$ docker pull mysql@sha256:8fb11c38b3551e22d50adbb688f027f8ff4ea2d2445aa277c1cc97b4af85ec54
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:lts-oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:ef50288bcf1daa57ea9f7cb8ad48ea077c30c5dfbef2ae3aee8dae0f1eef205c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.3 MB (270337634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:311dc96f8652388814088c745d37e4aaa842cbe37dfcdbaf5311c7dd3edd8da4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:48 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:48 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 21:56:38 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Wed, 21 Oct 2026 21:56:40 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 21:56:40 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 21:57:11 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Wed, 21 Oct 2026 21:57:11 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 21 Oct 2026 21:57:11 GMT
ENV MYSQL_MAJOR=9.7
# Wed, 21 Oct 2026 21:57:11 GMT
ENV MYSQL_VERSION=9.7.4-1.el9
# Wed, 21 Oct 2026 21:57:11 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Wed, 21 Oct 2026 21:57:45 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Wed, 21 Oct 2026 21:57:45 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Wed, 21 Oct 2026 21:57:45 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Wed, 21 Oct 2026 21:58:29 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Wed, 21 Oct 2026 21:58:29 GMT
VOLUME [/var/lib/mysql]
# Wed, 21 Oct 2026 21:58:29 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 21:58:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:58:29 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Wed, 21 Oct 2026 21:58:29 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:97347cf073b19c00bee840fa47d2cd0537dbf5eb581be49840c203f71c0a5c75`  
		Last Modified: Mon, 19 Oct 2026 21:33:00 GMT  
		Size: 47.2 MB (47249168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a81feb8cef6680732ef231f10320416e31a40726cc0223516d92139741fe61b5`  
		Last Modified: Wed, 21 Oct 2026 21:59:01 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:402761f17fb5c4d162e8efa34c5bb9ac17b92efe6d96e1df20af66bd82570e5e`  
		Last Modified: Wed, 21 Oct 2026 21:59:02 GMT  
		Size: 783.6 KB (783558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04fdf047584da45a6a89dc16e2160e29bb0ecdde0e194e04fd8d52d2fed12115`  
		Last Modified: Wed, 21 Oct 2026 21:59:02 GMT  
		Size: 6.2 MB (6191941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e735e16fde53f967c5f2cd395aafa04dd7dc42a36bf3abac24bc8c89acfb2779`  
		Last Modified: Wed, 21 Oct 2026 21:59:02 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9183015a9417c9a6183cc999241ef43a20820628ed944f1cd53007e8387c49c5`  
		Last Modified: Wed, 21 Oct 2026 21:59:03 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f743c1851c9dfdf088584c5ba9aae757b68c7cea4530aba444b1fc58f574ba2`  
		Last Modified: Wed, 21 Oct 2026 21:59:05 GMT  
		Size: 57.2 MB (57180077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6cb22001f6c48c8739c5a1bb9e27d0d26ee264f3f0f27999b940666db23f32e`  
		Last Modified: Wed, 21 Oct 2026 21:59:03 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29855632b6eaec13ab463e6aed52060dc5e92313054b8ea81217a36e5306715a`  
		Last Modified: Wed, 21 Oct 2026 21:59:08 GMT  
		Size: 158.9 MB (158923517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ace2c02e8d2375d1e037b2946cedb24a459ae24d0b67462ee1fc394a6d5afb4b`  
		Last Modified: Wed, 21 Oct 2026 21:59:04 GMT  
		Size: 5.2 KB (5231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:lts-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:64fbb23fe4c2e663c42082914a1bb368f51219265983f0cf348c24a1eeef6028
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16834217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f09db1e53fd50686d4a8369e241c42aa1ac3798e0243bd15d2839a38aecba034`

```dockerfile
```

-	Layers:
	-	`sha256:df36013c17643ae16d62e7be1b7bbde5401019e59d83643838670f1236240980`  
		Last Modified: Wed, 21 Oct 2026 21:59:02 GMT  
		Size: 16.8 MB (16800010 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0b24455d76871e4ba8bc084cdb484814e99994025ca7c2f504acebda9e16db59`  
		Last Modified: Wed, 21 Oct 2026 21:59:01 GMT  
		Size: 34.2 KB (34207 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:lts-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:946ee9fa034894b6bd1fc415c7d4326ad6da0555efb7eba47cfc4325d35686f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.7 MB (266725303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:990cfd5c376151a6f496d58e4258379f1d4c32d3646956ffbf98f646b6ea4311`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:44 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:44 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 22:25:11 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Wed, 21 Oct 2026 22:25:13 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 22:25:13 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 22:25:52 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Wed, 21 Oct 2026 22:25:53 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 21 Oct 2026 22:25:53 GMT
ENV MYSQL_MAJOR=9.7
# Wed, 21 Oct 2026 22:25:53 GMT
ENV MYSQL_VERSION=9.7.4-1.el9
# Wed, 21 Oct 2026 22:25:53 GMT
RUN set -eu; 	{ 		echo '[mysql9.7-server-minimal]'; 		echo 'name=MySQL 9.7 Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-9.7-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Wed, 21 Oct 2026 22:26:37 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Wed, 21 Oct 2026 22:26:37 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-9.7-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Wed, 21 Oct 2026 22:26:37 GMT
ENV MYSQL_SHELL_VERSION=9.7.1-1.el9
# Wed, 21 Oct 2026 22:27:31 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Wed, 21 Oct 2026 22:27:31 GMT
VOLUME [/var/lib/mysql]
# Wed, 21 Oct 2026 22:27:31 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 22:27:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 22:27:31 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Wed, 21 Oct 2026 22:27:31 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ec733952651fc70d299ac3951cabb9fafd032cc96e2ff71bdfd675ac20ca9c93`  
		Last Modified: Mon, 19 Oct 2026 21:32:56 GMT  
		Size: 45.8 MB (45800185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1182c60483b521aec518756b66d9e4b5d2fa3d995b9174021d3cd02783dbc1c`  
		Last Modified: Wed, 21 Oct 2026 22:28:07 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb8170183e634f55f5c1d9065235158aa23f915bc7615edd000fe3a0d6486d94`  
		Last Modified: Wed, 21 Oct 2026 22:28:07 GMT  
		Size: 737.5 KB (737524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6fb2577a3d092fbe7d051821ced8d3dfad54875ae18705043c416af0d86064a`  
		Last Modified: Wed, 21 Oct 2026 22:28:07 GMT  
		Size: 5.8 MB (5810135 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31e756d31627198d791ead85bdff4daec51545a63d7809a98d73bea80a0121a8`  
		Last Modified: Wed, 21 Oct 2026 22:28:07 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9969fb8a5e5f57e2909bb91f02d20cefec037cc17fe60391cb2547f413eb33a2`  
		Last Modified: Wed, 21 Oct 2026 22:28:08 GMT  
		Size: 332.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c9272b53566219b40dc93e9e86e8d3ffb5568513003c2f5f4cb4742f9c731d4`  
		Last Modified: Wed, 21 Oct 2026 22:28:10 GMT  
		Size: 57.2 MB (57175479 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:357ec417092f2a9d844446bc6fd18f693619cced425b6daccc42514e95e02e99`  
		Last Modified: Wed, 21 Oct 2026 22:28:08 GMT  
		Size: 320.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba40f52333907ee3ef8a078452c10d8b8c48fb4f908687a8bc67431c6209abe3`  
		Last Modified: Wed, 21 Oct 2026 22:28:15 GMT  
		Size: 157.2 MB (157192608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e47d25df692e1c232495dc06468cee8737931fc0ee817ae8fcf30f53d77a449a`  
		Last Modified: Wed, 21 Oct 2026 22:28:09 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:lts-oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:121103b6549034fd26b072c40be9dae58f5806f04e8310f910ed2f3ebabdd84d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16832958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9d2b8f6616a266115cddd1b4df3b1197d6947eef2f029528eef8abece0ae356`

```dockerfile
```

-	Layers:
	-	`sha256:dbe70e693699c5a3f811e445b6ae8de7628dd84f37214ebfb8d0cb3a0ad637fd`  
		Last Modified: Wed, 21 Oct 2026 22:28:08 GMT  
		Size: 16.8 MB (16798446 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9f2f0812a79037b234d829d54cf017a083f916d227df644d790dc55388ad47ee`  
		Last Modified: Wed, 21 Oct 2026 22:28:07 GMT  
		Size: 34.5 KB (34512 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:oracle`

```console
$ docker pull mysql@sha256:f51c9c01c16b0eb5d81bb70ab7e7fcb3b96abc6a54114be3a94e8e569cae7815
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:oracle` - linux; amd64

```console
$ docker pull mysql@sha256:82491f3359e91c23f65055033529ed3367b4a48e5f94d25144096fa1b6ca5ef3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.1 MB (299105288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:190f292a926af3f102331e424e729d3e3fd56dc0c4266dbced65de518262c0a8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:48 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:48 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 21:56:17 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Wed, 21 Oct 2026 21:56:19 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 21:56:19 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 21:56:50 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Wed, 21 Oct 2026 21:56:51 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 21 Oct 2026 21:56:51 GMT
ENV MYSQL_MAJOR=innovation
# Wed, 21 Oct 2026 21:56:51 GMT
ENV MYSQL_VERSION=26.10.0-1.el9
# Wed, 21 Oct 2026 21:56:51 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Wed, 21 Oct 2026 21:57:30 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Wed, 21 Oct 2026 21:57:30 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Wed, 21 Oct 2026 21:57:30 GMT
ENV MYSQL_SHELL_VERSION=26.10.0-1.el9
# Wed, 21 Oct 2026 21:58:13 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Wed, 21 Oct 2026 21:58:13 GMT
VOLUME [/var/lib/mysql]
# Wed, 21 Oct 2026 21:58:13 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 21:58:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:58:13 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Wed, 21 Oct 2026 21:58:13 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:97347cf073b19c00bee840fa47d2cd0537dbf5eb581be49840c203f71c0a5c75`  
		Last Modified: Mon, 19 Oct 2026 21:33:00 GMT  
		Size: 47.2 MB (47249168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f94d19cb2000ec18ab44ea7c0431d3a382b56f7aadac47930de9870782f47cb6`  
		Last Modified: Wed, 21 Oct 2026 21:58:37 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a585709eedb3bdf12dc10f66701a96f14c3ae3ddc5014446075d6f3bc5c6008f`  
		Last Modified: Wed, 21 Oct 2026 21:58:37 GMT  
		Size: 783.6 KB (783561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b93f6218baf819d65f2ec44453a53fb3799034b621da7b5846be2604961d3a7e`  
		Last Modified: Wed, 21 Oct 2026 21:58:38 GMT  
		Size: 6.2 MB (6191944 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f627afc3dcfa5b4af70874e198851d988cf3299d1a3c94a4e50a521bddcfad7`  
		Last Modified: Wed, 21 Oct 2026 21:58:37 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:205d9d6acf3e6390a82d75366fffaa7dd70faaf8f077f80730adcb4c6a0ffd7c`  
		Last Modified: Wed, 21 Oct 2026 21:58:39 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:914f9525bedd5a22569a18b1096157dee17e1de24a4804b1ef9ff09b5ddb507f`  
		Last Modified: Wed, 21 Oct 2026 21:58:42 GMT  
		Size: 63.8 MB (63790338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7419b3490447a2b6019bd821b1fc3b8736ff2d1bda0dcb0f0574ec9bac7d1409`  
		Last Modified: Wed, 21 Oct 2026 21:58:39 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d88e4392a3b0f547e870128f9801f5d9a9ba90ff3cea816a312b0e55459e68eb`  
		Last Modified: Wed, 21 Oct 2026 21:58:44 GMT  
		Size: 181.1 MB (181080895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa5981637f05e00e89139c4b57df4d0abfd478a47ff83306b2f39a679581e0da`  
		Last Modified: Wed, 21 Oct 2026 21:58:40 GMT  
		Size: 5.2 KB (5228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:9cf8a5a6ecc3855e9f0b940dc8a09b0652904888350c3d0348d0c2cbc0532ea8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5352612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03b10ada5bcce44d2b7b98fa4bbed89fd73e6a7b2b79f18f962929987a993527`

```dockerfile
```

-	Layers:
	-	`sha256:8dceb28f73721bb09d4e382a17ce16abd8db54d287e4f76c46e7cba2de4ca740`  
		Last Modified: Wed, 21 Oct 2026 21:58:38 GMT  
		Size: 5.3 MB (5317293 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0c048e487f09df72927f5a6852edb1eed474a4a7a2e682ec8f2ed89b210c7d1e`  
		Last Modified: Wed, 21 Oct 2026 21:58:37 GMT  
		Size: 35.3 KB (35319 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:oracle` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:d28721bf25d84a6c14049972b2bb9375a8a5b249f54cf58518c863d9901b4ab9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.5 MB (295538702 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7f5260bcf3774d253076481d8a28c4e4d125cea1e40a8b663fd654d7375d555`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:44 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:44 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 22:25:07 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Wed, 21 Oct 2026 22:25:08 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 22:25:08 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 22:25:46 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Wed, 21 Oct 2026 22:25:47 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 21 Oct 2026 22:25:47 GMT
ENV MYSQL_MAJOR=innovation
# Wed, 21 Oct 2026 22:25:47 GMT
ENV MYSQL_VERSION=26.10.0-1.el9
# Wed, 21 Oct 2026 22:25:47 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Wed, 21 Oct 2026 22:26:32 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Wed, 21 Oct 2026 22:26:32 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Wed, 21 Oct 2026 22:26:32 GMT
ENV MYSQL_SHELL_VERSION=26.10.0-1.el9
# Wed, 21 Oct 2026 22:27:23 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Wed, 21 Oct 2026 22:27:23 GMT
VOLUME [/var/lib/mysql]
# Wed, 21 Oct 2026 22:27:23 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 22:27:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 22:27:23 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Wed, 21 Oct 2026 22:27:23 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ec733952651fc70d299ac3951cabb9fafd032cc96e2ff71bdfd675ac20ca9c93`  
		Last Modified: Mon, 19 Oct 2026 21:32:56 GMT  
		Size: 45.8 MB (45800185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78eaa3a880f9d1cc19e7aff89d0bed22d25d5a59ad885b4c02ce948d8236aaf2`  
		Last Modified: Wed, 21 Oct 2026 22:27:50 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c5ac5f92e1354555b93ed5f9b09cee2d09bbb1a34a5ee4f4ed8c5547c210835`  
		Last Modified: Wed, 21 Oct 2026 22:27:50 GMT  
		Size: 737.5 KB (737530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:492ad916207b0e403d38f4927d83a0de369ab704eb76c58f382668475b98c1f3`  
		Last Modified: Wed, 21 Oct 2026 22:27:50 GMT  
		Size: 5.8 MB (5810099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e28e6a3a5a7220bc491fee32ec2019a6373d5c12ff818a4cd6a1453e37972be3`  
		Last Modified: Wed, 21 Oct 2026 22:27:50 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bd14e67f63fda428007bcd7a63d3ffb55b0d4973719da57d68d18661d6bdacf`  
		Last Modified: Wed, 21 Oct 2026 22:27:51 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08a8ef31b348846a60bcde2513ccf76937bfad94eda4dfcfdbf693473329c7d8`  
		Last Modified: Wed, 21 Oct 2026 22:27:53 GMT  
		Size: 63.8 MB (63828948 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c5bbe02c32fc0461f1bb139ba0dfef719993394926ae75adaafb69279316771`  
		Last Modified: Wed, 21 Oct 2026 22:27:51 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c589b229d807557537717ebb4fc51604e961a870b490885bd0049a89fcad0686`  
		Last Modified: Wed, 21 Oct 2026 22:27:56 GMT  
		Size: 179.4 MB (179352553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2519c685ee5fbc7da56b4531f2aa4e9b61c84578f5ed765956d806372dc8965`  
		Last Modified: Wed, 21 Oct 2026 22:27:52 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:oracle` - unknown; unknown

```console
$ docker pull mysql@sha256:3cd0d122684f8cc7f01a62de394d6b3437a04c6fd377f8023d4440e311fbe9bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5351426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14b6d0a735190ed0c9719be69207d1e860b4f0a933fc8cd60c807aa6dd347bef`

```dockerfile
```

-	Layers:
	-	`sha256:04bd4352edbf28bda13855733c1781745bf30fec471f6742f1c4236ba0f65b7e`  
		Last Modified: Wed, 21 Oct 2026 22:27:50 GMT  
		Size: 5.3 MB (5315766 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a8c1f7f032339039df58648d5057e9d63e8edf0252f49b2421ec47b8d8ee7f70`  
		Last Modified: Wed, 21 Oct 2026 22:27:50 GMT  
		Size: 35.7 KB (35660 bytes)  
		MIME: application/vnd.in-toto+json

## `mysql:oraclelinux9`

```console
$ docker pull mysql@sha256:f51c9c01c16b0eb5d81bb70ab7e7fcb3b96abc6a54114be3a94e8e569cae7815
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `mysql:oraclelinux9` - linux; amd64

```console
$ docker pull mysql@sha256:82491f3359e91c23f65055033529ed3367b4a48e5f94d25144096fa1b6ca5ef3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.1 MB (299105288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:190f292a926af3f102331e424e729d3e3fd56dc0c4266dbced65de518262c0a8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:48 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:48 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 21:56:17 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Wed, 21 Oct 2026 21:56:19 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 21:56:19 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 21:56:50 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Wed, 21 Oct 2026 21:56:51 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 21 Oct 2026 21:56:51 GMT
ENV MYSQL_MAJOR=innovation
# Wed, 21 Oct 2026 21:56:51 GMT
ENV MYSQL_VERSION=26.10.0-1.el9
# Wed, 21 Oct 2026 21:56:51 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Wed, 21 Oct 2026 21:57:30 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Wed, 21 Oct 2026 21:57:30 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Wed, 21 Oct 2026 21:57:30 GMT
ENV MYSQL_SHELL_VERSION=26.10.0-1.el9
# Wed, 21 Oct 2026 21:58:13 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Wed, 21 Oct 2026 21:58:13 GMT
VOLUME [/var/lib/mysql]
# Wed, 21 Oct 2026 21:58:13 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 21:58:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:58:13 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Wed, 21 Oct 2026 21:58:13 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:97347cf073b19c00bee840fa47d2cd0537dbf5eb581be49840c203f71c0a5c75`  
		Last Modified: Mon, 19 Oct 2026 21:33:00 GMT  
		Size: 47.2 MB (47249168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f94d19cb2000ec18ab44ea7c0431d3a382b56f7aadac47930de9870782f47cb6`  
		Last Modified: Wed, 21 Oct 2026 21:58:37 GMT  
		Size: 883.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a585709eedb3bdf12dc10f66701a96f14c3ae3ddc5014446075d6f3bc5c6008f`  
		Last Modified: Wed, 21 Oct 2026 21:58:37 GMT  
		Size: 783.6 KB (783561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b93f6218baf819d65f2ec44453a53fb3799034b621da7b5846be2604961d3a7e`  
		Last Modified: Wed, 21 Oct 2026 21:58:38 GMT  
		Size: 6.2 MB (6191944 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f627afc3dcfa5b4af70874e198851d988cf3299d1a3c94a4e50a521bddcfad7`  
		Last Modified: Wed, 21 Oct 2026 21:58:37 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:205d9d6acf3e6390a82d75366fffaa7dd70faaf8f077f80730adcb4c6a0ffd7c`  
		Last Modified: Wed, 21 Oct 2026 21:58:39 GMT  
		Size: 339.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:914f9525bedd5a22569a18b1096157dee17e1de24a4804b1ef9ff09b5ddb507f`  
		Last Modified: Wed, 21 Oct 2026 21:58:42 GMT  
		Size: 63.8 MB (63790338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7419b3490447a2b6019bd821b1fc3b8736ff2d1bda0dcb0f0574ec9bac7d1409`  
		Last Modified: Wed, 21 Oct 2026 21:58:39 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d88e4392a3b0f547e870128f9801f5d9a9ba90ff3cea816a312b0e55459e68eb`  
		Last Modified: Wed, 21 Oct 2026 21:58:44 GMT  
		Size: 181.1 MB (181080895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa5981637f05e00e89139c4b57df4d0abfd478a47ff83306b2f39a679581e0da`  
		Last Modified: Wed, 21 Oct 2026 21:58:40 GMT  
		Size: 5.2 KB (5228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:9cf8a5a6ecc3855e9f0b940dc8a09b0652904888350c3d0348d0c2cbc0532ea8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5352612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03b10ada5bcce44d2b7b98fa4bbed89fd73e6a7b2b79f18f962929987a993527`

```dockerfile
```

-	Layers:
	-	`sha256:8dceb28f73721bb09d4e382a17ce16abd8db54d287e4f76c46e7cba2de4ca740`  
		Last Modified: Wed, 21 Oct 2026 21:58:38 GMT  
		Size: 5.3 MB (5317293 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0c048e487f09df72927f5a6852edb1eed474a4a7a2e682ec8f2ed89b210c7d1e`  
		Last Modified: Wed, 21 Oct 2026 21:58:37 GMT  
		Size: 35.3 KB (35319 bytes)  
		MIME: application/vnd.in-toto+json

### `mysql:oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull mysql@sha256:d28721bf25d84a6c14049972b2bb9375a8a5b249f54cf58518c863d9901b4ab9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.5 MB (295538702 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7f5260bcf3774d253076481d8a28c4e4d125cea1e40a8b663fd654d7375d555`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Oct 2026 21:32:44 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 19 Oct 2026 21:32:44 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 22:25:07 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql # buildkit
# Wed, 21 Oct 2026 22:25:08 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 22:25:08 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 22:25:46 GMT
RUN set -eux; 	microdnf install -y 		bzip2 		gzip 		openssl 		xz 		zstd 		findutils 	; 	microdnf clean all # buildkit
# Wed, 21 Oct 2026 22:25:47 GMT
RUN set -eux; 	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 21 Oct 2026 22:25:47 GMT
ENV MYSQL_MAJOR=innovation
# Wed, 21 Oct 2026 22:25:47 GMT
ENV MYSQL_VERSION=26.10.0-1.el9
# Wed, 21 Oct 2026 22:25:47 GMT
RUN set -eu; 	{ 		echo '[mysqlinnovation-server-minimal]'; 		echo 'name=MySQL innovation Server Minimal'; 		echo 'enabled=1'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-innovation-community/docker/el/9/$basearch/'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo # buildkit
# Wed, 21 Oct 2026 22:26:32 GMT
RUN set -eux; 	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; 	microdnf clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version # buildkit
# Wed, 21 Oct 2026 22:26:32 GMT
RUN set -eu; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-innovation-community/el/9/$basearch/'; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo # buildkit
# Wed, 21 Oct 2026 22:26:32 GMT
ENV MYSQL_SHELL_VERSION=26.10.0-1.el9
# Wed, 21 Oct 2026 22:27:23 GMT
RUN set -eux; 	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; 	microdnf clean all; 		mysqlsh --version # buildkit
# Wed, 21 Oct 2026 22:27:23 GMT
VOLUME [/var/lib/mysql]
# Wed, 21 Oct 2026 22:27:23 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 22:27:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 22:27:23 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Wed, 21 Oct 2026 22:27:23 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:ec733952651fc70d299ac3951cabb9fafd032cc96e2ff71bdfd675ac20ca9c93`  
		Last Modified: Mon, 19 Oct 2026 21:32:56 GMT  
		Size: 45.8 MB (45800185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78eaa3a880f9d1cc19e7aff89d0bed22d25d5a59ad885b4c02ce948d8236aaf2`  
		Last Modified: Wed, 21 Oct 2026 22:27:50 GMT  
		Size: 885.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c5ac5f92e1354555b93ed5f9b09cee2d09bbb1a34a5ee4f4ed8c5547c210835`  
		Last Modified: Wed, 21 Oct 2026 22:27:50 GMT  
		Size: 737.5 KB (737530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:492ad916207b0e403d38f4927d83a0de369ab704eb76c58f382668475b98c1f3`  
		Last Modified: Wed, 21 Oct 2026 22:27:50 GMT  
		Size: 5.8 MB (5810099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e28e6a3a5a7220bc491fee32ec2019a6373d5c12ff818a4cd6a1453e37972be3`  
		Last Modified: Wed, 21 Oct 2026 22:27:50 GMT  
		Size: 2.6 KB (2607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bd14e67f63fda428007bcd7a63d3ffb55b0d4973719da57d68d18661d6bdacf`  
		Last Modified: Wed, 21 Oct 2026 22:27:51 GMT  
		Size: 340.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08a8ef31b348846a60bcde2513ccf76937bfad94eda4dfcfdbf693473329c7d8`  
		Last Modified: Wed, 21 Oct 2026 22:27:53 GMT  
		Size: 63.8 MB (63828948 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c5bbe02c32fc0461f1bb139ba0dfef719993394926ae75adaafb69279316771`  
		Last Modified: Wed, 21 Oct 2026 22:27:51 GMT  
		Size: 325.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c589b229d807557537717ebb4fc51604e961a870b490885bd0049a89fcad0686`  
		Last Modified: Wed, 21 Oct 2026 22:27:56 GMT  
		Size: 179.4 MB (179352553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2519c685ee5fbc7da56b4531f2aa4e9b61c84578f5ed765956d806372dc8965`  
		Last Modified: Wed, 21 Oct 2026 22:27:52 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `mysql:oraclelinux9` - unknown; unknown

```console
$ docker pull mysql@sha256:3cd0d122684f8cc7f01a62de394d6b3437a04c6fd377f8023d4440e311fbe9bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5351426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14b6d0a735190ed0c9719be69207d1e860b4f0a933fc8cd60c807aa6dd347bef`

```dockerfile
```

-	Layers:
	-	`sha256:04bd4352edbf28bda13855733c1781745bf30fec471f6742f1c4236ba0f65b7e`  
		Last Modified: Wed, 21 Oct 2026 22:27:50 GMT  
		Size: 5.3 MB (5315766 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a8c1f7f032339039df58648d5057e9d63e8edf0252f49b2421ec47b8d8ee7f70`  
		Last Modified: Wed, 21 Oct 2026 22:27:50 GMT  
		Size: 35.7 KB (35660 bytes)  
		MIME: application/vnd.in-toto+json
