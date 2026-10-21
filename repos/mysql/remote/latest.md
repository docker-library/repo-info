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
