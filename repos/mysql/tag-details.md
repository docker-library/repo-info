<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `mysql`

-	[`mysql:5`](#mysql5)
-	[`mysql:5-debian`](#mysql5-debian)
-	[`mysql:5-oracle`](#mysql5-oracle)
-	[`mysql:5.7`](#mysql57)
-	[`mysql:5.7-debian`](#mysql57-debian)
-	[`mysql:5.7-oracle`](#mysql57-oracle)
-	[`mysql:5.7.41`](#mysql5741)
-	[`mysql:5.7.41-debian`](#mysql5741-debian)
-	[`mysql:5.7.41-oracle`](#mysql5741-oracle)
-	[`mysql:8`](#mysql8)
-	[`mysql:8-debian`](#mysql8-debian)
-	[`mysql:8-oracle`](#mysql8-oracle)
-	[`mysql:8.0`](#mysql80)
-	[`mysql:8.0-debian`](#mysql80-debian)
-	[`mysql:8.0-oracle`](#mysql80-oracle)
-	[`mysql:8.0.32`](#mysql8032)
-	[`mysql:8.0.32-debian`](#mysql8032-debian)
-	[`mysql:8.0.32-oracle`](#mysql8032-oracle)
-	[`mysql:debian`](#mysqldebian)
-	[`mysql:latest`](#mysqllatest)
-	[`mysql:oracle`](#mysqloracle)

## `mysql:5`

```console
$ docker pull mysql@sha256:f04fc2e2f01e65d6e2828b4cce2c4761d9258aee71d989e273b2ae309f44a945
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `mysql:5` - linux; amd64

```console
$ docker pull mysql@sha256:8dae5a91219c1789ba43690412f6319ae96f51d8787ce81f820907bff6e6c786
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.3 MB (129279340 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e982339a20a53052bd5f2b2e8438b3c95c91013f653ee781a67934cd1f9f9631`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 07 Dec 2022 01:51:56 GMT
ADD file:3853624d773c4bf6fc1464ca06bd07366109fab78072fcab59075073a5da6525 in / 
# Wed, 07 Dec 2022 01:51:56 GMT
CMD ["/bin/bash"]
# Wed, 07 Dec 2022 02:23:50 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql
# Wed, 07 Dec 2022 02:23:50 GMT
ENV GOSU_VERSION=1.14
# Wed, 07 Dec 2022 02:23:52 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true
# Wed, 07 Dec 2022 02:24:09 GMT
RUN set -eux; 	yum install -y --setopt=skip_missing_names_on_install=False oracle-epel-release-el7; 	yum install -y --setopt=skip_missing_names_on_install=False 		bzip2 		gzip 		openssl 		xz 		zstd 	; 	yum clean all
# Wed, 07 Dec 2022 02:24:10 GMT
RUN set -eux; 	key='859BE8D7C586F538430B19C2467B942D3A79BD29'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME"
# Wed, 07 Dec 2022 02:24:10 GMT
ENV MYSQL_MAJOR=5.7
# Tue, 17 Jan 2023 21:07:55 GMT
ENV MYSQL_VERSION=5.7.41-1.el7
# Tue, 17 Jan 2023 21:07:56 GMT
RUN set -eu; 	. /etc/os-release; 	{ 		echo '[mysql5.7-server-minimal]'; 		echo 'name=MySQL 5.7 Server Minimal'; 		echo 'enabled=1'; 		echo "baseurl=https://repo.mysql.com/yum/mysql-5.7-community/docker/el/${VERSION_ID%%[.-]*}/\$basearch/"; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo
# Tue, 17 Jan 2023 21:08:15 GMT
RUN set -eux; 	yum install -y --setopt=skip_missing_names_on_install=False "mysql-community-server-minimal-$MYSQL_VERSION"; 	yum clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	{ echo '!includedir /etc/mysql/mysql.conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/mysql.conf.d; 		find /etc/my.cnf /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 		mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version
# Tue, 17 Jan 2023 21:08:16 GMT
RUN set -eu; 	. /etc/os-release; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo "baseurl=https://repo.mysql.com/yum/mysql-tools-community/el/${VERSION_ID%%[.-]*}/\$basearch/"; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo
# Tue, 17 Jan 2023 21:08:16 GMT
ENV MYSQL_SHELL_VERSION=8.0.32-1.el7
# Tue, 17 Jan 2023 21:08:41 GMT
RUN set -eux; 	yum install -y --setopt=skip_missing_names_on_install=False "mysql-shell-$MYSQL_SHELL_VERSION"; 	yum clean all; 		mysqlsh --version
# Tue, 17 Jan 2023 21:08:42 GMT
VOLUME [/var/lib/mysql]
# Tue, 17 Jan 2023 21:08:42 GMT
COPY file:e9c22353a1133b89c5bca24ecacd348acd094e50e5e5c45375a997c6b1f07192 in /usr/local/bin/ 
# Tue, 17 Jan 2023 21:08:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 17 Jan 2023 21:08:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jan 2023 21:08:43 GMT
EXPOSE 3306 33060
# Tue, 17 Jan 2023 21:08:43 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:d26998a7c52d2b84e7927f97651d1d703a805c8e4d3f658a03138721f5a5dd44`  
		Last Modified: Wed, 07 Dec 2022 01:53:46 GMT  
		Size: 49.8 MB (49818482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a9d8a3567e30df99576e0a4dbca773af581230fee203891610e6ccbdaa823d2`  
		Last Modified: Wed, 07 Dec 2022 02:26:00 GMT  
		Size: 871.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfee1f0f349e08af59ed77c7d56ede70f0c5739daa2477ef54a4ee457f5e3e47`  
		Last Modified: Wed, 07 Dec 2022 02:26:01 GMT  
		Size: 930.2 KB (930227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71ff8dfb9b12b027c35d779fe4f06a9b3d0d26efed52153324cfa2f409423b0d`  
		Last Modified: Wed, 07 Dec 2022 02:25:59 GMT  
		Size: 4.5 MB (4539026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf56cbebc916d35659623816867a456610961f77db6d9753e738c5564651dfa0`  
		Last Modified: Wed, 07 Dec 2022 02:25:58 GMT  
		Size: 2.7 KB (2658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a7bdfff0f5b940a8450ad5ef0f25d73f40cc8cc13627bda09a9586e81b74502`  
		Last Modified: Tue, 17 Jan 2023 21:10:56 GMT  
		Size: 336.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7677d20b791d5ee29bf70cce20582fa06c3634201945e98b8501f20a5f9f0da`  
		Last Modified: Tue, 17 Jan 2023 21:10:58 GMT  
		Size: 25.5 MB (25532144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4bcfc1167c2472c268123c91440454fe1d68088dce3be90dae9b1fdf1080640`  
		Last Modified: Tue, 17 Jan 2023 21:10:54 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03f1c0b71b700b5f8b16e6ac83e1bb437b60e10229f74fbc58518cc4c621cf61`  
		Last Modified: Tue, 17 Jan 2023 21:11:03 GMT  
		Size: 48.4 MB (48449762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61aa2e026ac3ff90ad7fe835692787abbda5ed6bd469edfa416b1c42f331f78f`  
		Last Modified: Tue, 17 Jan 2023 21:10:54 GMT  
		Size: 5.4 KB (5393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b784fa66c50879ee479e3153e735b274ebd3be28d34000d375ef2462f668446`  
		Last Modified: Tue, 17 Jan 2023 21:10:54 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5-debian`

```console
$ docker pull mysql@sha256:6f4fb1b8c2717cbe709e755f83a3d6f52dabe58902569bdaa14d0cc9d4c18d25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `mysql:5-debian` - linux; amd64

```console
$ docker pull mysql@sha256:603b9b890043bd774c673060292c818e771135c51d0d2b8b7873151906610220
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.6 MB (162644100 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4726a7600c6f5c8b58d26e8a5634a13bdff727ee29eebe5edbf9ebdd00533898`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 11 Jan 2023 02:35:07 GMT
ADD file:67ceb946e54c26c505b5f9f393d77befbd5e9b3b5c069ca301e314ecc74456b0 in / 
# Wed, 11 Jan 2023 02:35:07 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 06:20:12 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 11 Jan 2023 06:20:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 06:20:18 GMT
ENV GOSU_VERSION=1.14
# Wed, 11 Jan 2023 06:20:27 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true
# Wed, 11 Jan 2023 06:20:28 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 11 Jan 2023 06:20:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		openssl 		perl 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 06:20:36 GMT
RUN set -eux; 	key='859BE8D7C586F538430B19C2467B942D3A79BD29'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	mkdir -p /etc/apt/keyrings; 	gpg --batch --export "$key" > /etc/apt/keyrings/mysql.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"
# Wed, 11 Jan 2023 06:20:36 GMT
ENV MYSQL_MAJOR=5.7
# Tue, 17 Jan 2023 21:08:53 GMT
ENV MYSQL_VERSION=5.7.41-1debian10
# Tue, 17 Jan 2023 21:08:54 GMT
RUN echo 'deb [ signed-by=/etc/apt/keyrings/mysql.gpg ] http://repo.mysql.com/apt/debian/ buster mysql-5.7' > /etc/apt/sources.list.d/mysql.list
# Tue, 17 Jan 2023 21:09:16 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		mysql-server="${MYSQL_VERSION}" 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 1777 /var/run/mysqld /var/lib/mysql
# Tue, 17 Jan 2023 21:09:17 GMT
VOLUME [/var/lib/mysql]
# Tue, 17 Jan 2023 21:09:17 GMT
COPY file:e9c22353a1133b89c5bca24ecacd348acd094e50e5e5c45375a997c6b1f07192 in /usr/local/bin/ 
# Tue, 17 Jan 2023 21:09:17 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 17 Jan 2023 21:09:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jan 2023 21:09:18 GMT
EXPOSE 3306 33060
# Tue, 17 Jan 2023 21:09:18 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:548fcab5fe888f589dd092c68b813bfd65359878bd1950d6b753f749e82ebd7c`  
		Last Modified: Wed, 11 Jan 2023 02:39:48 GMT  
		Size: 27.1 MB (27140352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:702e45a0d0fab46740d0cf404969001dc0537dd564973fa6f31da2a00cfe5ef8`  
		Last Modified: Wed, 11 Jan 2023 06:22:03 GMT  
		Size: 1.7 KB (1735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad96d17a23a7cff619709675f8981274e6a4ff7a9fb99590f0a837511e69a50b`  
		Last Modified: Wed, 11 Jan 2023 06:22:03 GMT  
		Size: 4.2 MB (4182274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1832d5509d3dce5314c5ffb58ac35ef7e35c396457e6fab747267312751708cf`  
		Last Modified: Wed, 11 Jan 2023 06:22:02 GMT  
		Size: 1.4 MB (1388883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d5a580bc4aa47839f3f325b0a7bd7f927d8f41bb947a8e6d1847048a16c88dc`  
		Last Modified: Wed, 11 Jan 2023 06:22:01 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:562f0a131c6cc56e3a6b85245641c4251cb4bc5e5b97f08d5d97209b8c11c38c`  
		Last Modified: Wed, 11 Jan 2023 06:22:04 GMT  
		Size: 14.1 MB (14089400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5760997e25e0fd516f2aab1a32be22ae0a919faa2c2dd36a3ad098d772ca3495`  
		Last Modified: Wed, 11 Jan 2023 06:22:00 GMT  
		Size: 2.5 KB (2543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2459447ebb40538b162dbc50dd435551e3c63d290fc1fb37555ee724a56989a9`  
		Last Modified: Tue, 17 Jan 2023 21:11:22 GMT  
		Size: 257.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13b7ab69b071a7139fbe466170a22caead38334834a792630c6a0e9b12f15ef6`  
		Last Modified: Tue, 17 Jan 2023 21:11:37 GMT  
		Size: 115.8 MB (115832999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aad2d01a4e6a079bc797ac021db4938622225182fa24eab797ee661d30134e9`  
		Last Modified: Tue, 17 Jan 2023 21:11:22 GMT  
		Size: 5.4 KB (5388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50d70cf470197d6c4c9c3f0789a15440b5439ac8536ea8db923608b24b7dfc59`  
		Last Modified: Tue, 17 Jan 2023 21:11:22 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5-oracle`

```console
$ docker pull mysql@sha256:f04fc2e2f01e65d6e2828b4cce2c4761d9258aee71d989e273b2ae309f44a945
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `mysql:5-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:8dae5a91219c1789ba43690412f6319ae96f51d8787ce81f820907bff6e6c786
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.3 MB (129279340 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e982339a20a53052bd5f2b2e8438b3c95c91013f653ee781a67934cd1f9f9631`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 07 Dec 2022 01:51:56 GMT
ADD file:3853624d773c4bf6fc1464ca06bd07366109fab78072fcab59075073a5da6525 in / 
# Wed, 07 Dec 2022 01:51:56 GMT
CMD ["/bin/bash"]
# Wed, 07 Dec 2022 02:23:50 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql
# Wed, 07 Dec 2022 02:23:50 GMT
ENV GOSU_VERSION=1.14
# Wed, 07 Dec 2022 02:23:52 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true
# Wed, 07 Dec 2022 02:24:09 GMT
RUN set -eux; 	yum install -y --setopt=skip_missing_names_on_install=False oracle-epel-release-el7; 	yum install -y --setopt=skip_missing_names_on_install=False 		bzip2 		gzip 		openssl 		xz 		zstd 	; 	yum clean all
# Wed, 07 Dec 2022 02:24:10 GMT
RUN set -eux; 	key='859BE8D7C586F538430B19C2467B942D3A79BD29'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME"
# Wed, 07 Dec 2022 02:24:10 GMT
ENV MYSQL_MAJOR=5.7
# Tue, 17 Jan 2023 21:07:55 GMT
ENV MYSQL_VERSION=5.7.41-1.el7
# Tue, 17 Jan 2023 21:07:56 GMT
RUN set -eu; 	. /etc/os-release; 	{ 		echo '[mysql5.7-server-minimal]'; 		echo 'name=MySQL 5.7 Server Minimal'; 		echo 'enabled=1'; 		echo "baseurl=https://repo.mysql.com/yum/mysql-5.7-community/docker/el/${VERSION_ID%%[.-]*}/\$basearch/"; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo
# Tue, 17 Jan 2023 21:08:15 GMT
RUN set -eux; 	yum install -y --setopt=skip_missing_names_on_install=False "mysql-community-server-minimal-$MYSQL_VERSION"; 	yum clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	{ echo '!includedir /etc/mysql/mysql.conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/mysql.conf.d; 		find /etc/my.cnf /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 		mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version
# Tue, 17 Jan 2023 21:08:16 GMT
RUN set -eu; 	. /etc/os-release; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo "baseurl=https://repo.mysql.com/yum/mysql-tools-community/el/${VERSION_ID%%[.-]*}/\$basearch/"; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo
# Tue, 17 Jan 2023 21:08:16 GMT
ENV MYSQL_SHELL_VERSION=8.0.32-1.el7
# Tue, 17 Jan 2023 21:08:41 GMT
RUN set -eux; 	yum install -y --setopt=skip_missing_names_on_install=False "mysql-shell-$MYSQL_SHELL_VERSION"; 	yum clean all; 		mysqlsh --version
# Tue, 17 Jan 2023 21:08:42 GMT
VOLUME [/var/lib/mysql]
# Tue, 17 Jan 2023 21:08:42 GMT
COPY file:e9c22353a1133b89c5bca24ecacd348acd094e50e5e5c45375a997c6b1f07192 in /usr/local/bin/ 
# Tue, 17 Jan 2023 21:08:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 17 Jan 2023 21:08:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jan 2023 21:08:43 GMT
EXPOSE 3306 33060
# Tue, 17 Jan 2023 21:08:43 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:d26998a7c52d2b84e7927f97651d1d703a805c8e4d3f658a03138721f5a5dd44`  
		Last Modified: Wed, 07 Dec 2022 01:53:46 GMT  
		Size: 49.8 MB (49818482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a9d8a3567e30df99576e0a4dbca773af581230fee203891610e6ccbdaa823d2`  
		Last Modified: Wed, 07 Dec 2022 02:26:00 GMT  
		Size: 871.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfee1f0f349e08af59ed77c7d56ede70f0c5739daa2477ef54a4ee457f5e3e47`  
		Last Modified: Wed, 07 Dec 2022 02:26:01 GMT  
		Size: 930.2 KB (930227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71ff8dfb9b12b027c35d779fe4f06a9b3d0d26efed52153324cfa2f409423b0d`  
		Last Modified: Wed, 07 Dec 2022 02:25:59 GMT  
		Size: 4.5 MB (4539026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf56cbebc916d35659623816867a456610961f77db6d9753e738c5564651dfa0`  
		Last Modified: Wed, 07 Dec 2022 02:25:58 GMT  
		Size: 2.7 KB (2658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a7bdfff0f5b940a8450ad5ef0f25d73f40cc8cc13627bda09a9586e81b74502`  
		Last Modified: Tue, 17 Jan 2023 21:10:56 GMT  
		Size: 336.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7677d20b791d5ee29bf70cce20582fa06c3634201945e98b8501f20a5f9f0da`  
		Last Modified: Tue, 17 Jan 2023 21:10:58 GMT  
		Size: 25.5 MB (25532144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4bcfc1167c2472c268123c91440454fe1d68088dce3be90dae9b1fdf1080640`  
		Last Modified: Tue, 17 Jan 2023 21:10:54 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03f1c0b71b700b5f8b16e6ac83e1bb437b60e10229f74fbc58518cc4c621cf61`  
		Last Modified: Tue, 17 Jan 2023 21:11:03 GMT  
		Size: 48.4 MB (48449762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61aa2e026ac3ff90ad7fe835692787abbda5ed6bd469edfa416b1c42f331f78f`  
		Last Modified: Tue, 17 Jan 2023 21:10:54 GMT  
		Size: 5.4 KB (5393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b784fa66c50879ee479e3153e735b274ebd3be28d34000d375ef2462f668446`  
		Last Modified: Tue, 17 Jan 2023 21:10:54 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.7`

```console
$ docker pull mysql@sha256:f04fc2e2f01e65d6e2828b4cce2c4761d9258aee71d989e273b2ae309f44a945
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `mysql:5.7` - linux; amd64

```console
$ docker pull mysql@sha256:8dae5a91219c1789ba43690412f6319ae96f51d8787ce81f820907bff6e6c786
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.3 MB (129279340 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e982339a20a53052bd5f2b2e8438b3c95c91013f653ee781a67934cd1f9f9631`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 07 Dec 2022 01:51:56 GMT
ADD file:3853624d773c4bf6fc1464ca06bd07366109fab78072fcab59075073a5da6525 in / 
# Wed, 07 Dec 2022 01:51:56 GMT
CMD ["/bin/bash"]
# Wed, 07 Dec 2022 02:23:50 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql
# Wed, 07 Dec 2022 02:23:50 GMT
ENV GOSU_VERSION=1.14
# Wed, 07 Dec 2022 02:23:52 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true
# Wed, 07 Dec 2022 02:24:09 GMT
RUN set -eux; 	yum install -y --setopt=skip_missing_names_on_install=False oracle-epel-release-el7; 	yum install -y --setopt=skip_missing_names_on_install=False 		bzip2 		gzip 		openssl 		xz 		zstd 	; 	yum clean all
# Wed, 07 Dec 2022 02:24:10 GMT
RUN set -eux; 	key='859BE8D7C586F538430B19C2467B942D3A79BD29'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME"
# Wed, 07 Dec 2022 02:24:10 GMT
ENV MYSQL_MAJOR=5.7
# Tue, 17 Jan 2023 21:07:55 GMT
ENV MYSQL_VERSION=5.7.41-1.el7
# Tue, 17 Jan 2023 21:07:56 GMT
RUN set -eu; 	. /etc/os-release; 	{ 		echo '[mysql5.7-server-minimal]'; 		echo 'name=MySQL 5.7 Server Minimal'; 		echo 'enabled=1'; 		echo "baseurl=https://repo.mysql.com/yum/mysql-5.7-community/docker/el/${VERSION_ID%%[.-]*}/\$basearch/"; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo
# Tue, 17 Jan 2023 21:08:15 GMT
RUN set -eux; 	yum install -y --setopt=skip_missing_names_on_install=False "mysql-community-server-minimal-$MYSQL_VERSION"; 	yum clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	{ echo '!includedir /etc/mysql/mysql.conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/mysql.conf.d; 		find /etc/my.cnf /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 		mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version
# Tue, 17 Jan 2023 21:08:16 GMT
RUN set -eu; 	. /etc/os-release; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo "baseurl=https://repo.mysql.com/yum/mysql-tools-community/el/${VERSION_ID%%[.-]*}/\$basearch/"; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo
# Tue, 17 Jan 2023 21:08:16 GMT
ENV MYSQL_SHELL_VERSION=8.0.32-1.el7
# Tue, 17 Jan 2023 21:08:41 GMT
RUN set -eux; 	yum install -y --setopt=skip_missing_names_on_install=False "mysql-shell-$MYSQL_SHELL_VERSION"; 	yum clean all; 		mysqlsh --version
# Tue, 17 Jan 2023 21:08:42 GMT
VOLUME [/var/lib/mysql]
# Tue, 17 Jan 2023 21:08:42 GMT
COPY file:e9c22353a1133b89c5bca24ecacd348acd094e50e5e5c45375a997c6b1f07192 in /usr/local/bin/ 
# Tue, 17 Jan 2023 21:08:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 17 Jan 2023 21:08:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jan 2023 21:08:43 GMT
EXPOSE 3306 33060
# Tue, 17 Jan 2023 21:08:43 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:d26998a7c52d2b84e7927f97651d1d703a805c8e4d3f658a03138721f5a5dd44`  
		Last Modified: Wed, 07 Dec 2022 01:53:46 GMT  
		Size: 49.8 MB (49818482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a9d8a3567e30df99576e0a4dbca773af581230fee203891610e6ccbdaa823d2`  
		Last Modified: Wed, 07 Dec 2022 02:26:00 GMT  
		Size: 871.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfee1f0f349e08af59ed77c7d56ede70f0c5739daa2477ef54a4ee457f5e3e47`  
		Last Modified: Wed, 07 Dec 2022 02:26:01 GMT  
		Size: 930.2 KB (930227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71ff8dfb9b12b027c35d779fe4f06a9b3d0d26efed52153324cfa2f409423b0d`  
		Last Modified: Wed, 07 Dec 2022 02:25:59 GMT  
		Size: 4.5 MB (4539026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf56cbebc916d35659623816867a456610961f77db6d9753e738c5564651dfa0`  
		Last Modified: Wed, 07 Dec 2022 02:25:58 GMT  
		Size: 2.7 KB (2658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a7bdfff0f5b940a8450ad5ef0f25d73f40cc8cc13627bda09a9586e81b74502`  
		Last Modified: Tue, 17 Jan 2023 21:10:56 GMT  
		Size: 336.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7677d20b791d5ee29bf70cce20582fa06c3634201945e98b8501f20a5f9f0da`  
		Last Modified: Tue, 17 Jan 2023 21:10:58 GMT  
		Size: 25.5 MB (25532144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4bcfc1167c2472c268123c91440454fe1d68088dce3be90dae9b1fdf1080640`  
		Last Modified: Tue, 17 Jan 2023 21:10:54 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03f1c0b71b700b5f8b16e6ac83e1bb437b60e10229f74fbc58518cc4c621cf61`  
		Last Modified: Tue, 17 Jan 2023 21:11:03 GMT  
		Size: 48.4 MB (48449762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61aa2e026ac3ff90ad7fe835692787abbda5ed6bd469edfa416b1c42f331f78f`  
		Last Modified: Tue, 17 Jan 2023 21:10:54 GMT  
		Size: 5.4 KB (5393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b784fa66c50879ee479e3153e735b274ebd3be28d34000d375ef2462f668446`  
		Last Modified: Tue, 17 Jan 2023 21:10:54 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.7-debian`

```console
$ docker pull mysql@sha256:6f4fb1b8c2717cbe709e755f83a3d6f52dabe58902569bdaa14d0cc9d4c18d25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `mysql:5.7-debian` - linux; amd64

```console
$ docker pull mysql@sha256:603b9b890043bd774c673060292c818e771135c51d0d2b8b7873151906610220
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.6 MB (162644100 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4726a7600c6f5c8b58d26e8a5634a13bdff727ee29eebe5edbf9ebdd00533898`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 11 Jan 2023 02:35:07 GMT
ADD file:67ceb946e54c26c505b5f9f393d77befbd5e9b3b5c069ca301e314ecc74456b0 in / 
# Wed, 11 Jan 2023 02:35:07 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 06:20:12 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 11 Jan 2023 06:20:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 06:20:18 GMT
ENV GOSU_VERSION=1.14
# Wed, 11 Jan 2023 06:20:27 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true
# Wed, 11 Jan 2023 06:20:28 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 11 Jan 2023 06:20:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		openssl 		perl 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 06:20:36 GMT
RUN set -eux; 	key='859BE8D7C586F538430B19C2467B942D3A79BD29'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	mkdir -p /etc/apt/keyrings; 	gpg --batch --export "$key" > /etc/apt/keyrings/mysql.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"
# Wed, 11 Jan 2023 06:20:36 GMT
ENV MYSQL_MAJOR=5.7
# Tue, 17 Jan 2023 21:08:53 GMT
ENV MYSQL_VERSION=5.7.41-1debian10
# Tue, 17 Jan 2023 21:08:54 GMT
RUN echo 'deb [ signed-by=/etc/apt/keyrings/mysql.gpg ] http://repo.mysql.com/apt/debian/ buster mysql-5.7' > /etc/apt/sources.list.d/mysql.list
# Tue, 17 Jan 2023 21:09:16 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		mysql-server="${MYSQL_VERSION}" 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 1777 /var/run/mysqld /var/lib/mysql
# Tue, 17 Jan 2023 21:09:17 GMT
VOLUME [/var/lib/mysql]
# Tue, 17 Jan 2023 21:09:17 GMT
COPY file:e9c22353a1133b89c5bca24ecacd348acd094e50e5e5c45375a997c6b1f07192 in /usr/local/bin/ 
# Tue, 17 Jan 2023 21:09:17 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 17 Jan 2023 21:09:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jan 2023 21:09:18 GMT
EXPOSE 3306 33060
# Tue, 17 Jan 2023 21:09:18 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:548fcab5fe888f589dd092c68b813bfd65359878bd1950d6b753f749e82ebd7c`  
		Last Modified: Wed, 11 Jan 2023 02:39:48 GMT  
		Size: 27.1 MB (27140352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:702e45a0d0fab46740d0cf404969001dc0537dd564973fa6f31da2a00cfe5ef8`  
		Last Modified: Wed, 11 Jan 2023 06:22:03 GMT  
		Size: 1.7 KB (1735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad96d17a23a7cff619709675f8981274e6a4ff7a9fb99590f0a837511e69a50b`  
		Last Modified: Wed, 11 Jan 2023 06:22:03 GMT  
		Size: 4.2 MB (4182274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1832d5509d3dce5314c5ffb58ac35ef7e35c396457e6fab747267312751708cf`  
		Last Modified: Wed, 11 Jan 2023 06:22:02 GMT  
		Size: 1.4 MB (1388883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d5a580bc4aa47839f3f325b0a7bd7f927d8f41bb947a8e6d1847048a16c88dc`  
		Last Modified: Wed, 11 Jan 2023 06:22:01 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:562f0a131c6cc56e3a6b85245641c4251cb4bc5e5b97f08d5d97209b8c11c38c`  
		Last Modified: Wed, 11 Jan 2023 06:22:04 GMT  
		Size: 14.1 MB (14089400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5760997e25e0fd516f2aab1a32be22ae0a919faa2c2dd36a3ad098d772ca3495`  
		Last Modified: Wed, 11 Jan 2023 06:22:00 GMT  
		Size: 2.5 KB (2543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2459447ebb40538b162dbc50dd435551e3c63d290fc1fb37555ee724a56989a9`  
		Last Modified: Tue, 17 Jan 2023 21:11:22 GMT  
		Size: 257.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13b7ab69b071a7139fbe466170a22caead38334834a792630c6a0e9b12f15ef6`  
		Last Modified: Tue, 17 Jan 2023 21:11:37 GMT  
		Size: 115.8 MB (115832999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aad2d01a4e6a079bc797ac021db4938622225182fa24eab797ee661d30134e9`  
		Last Modified: Tue, 17 Jan 2023 21:11:22 GMT  
		Size: 5.4 KB (5388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50d70cf470197d6c4c9c3f0789a15440b5439ac8536ea8db923608b24b7dfc59`  
		Last Modified: Tue, 17 Jan 2023 21:11:22 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.7-oracle`

```console
$ docker pull mysql@sha256:f04fc2e2f01e65d6e2828b4cce2c4761d9258aee71d989e273b2ae309f44a945
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `mysql:5.7-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:8dae5a91219c1789ba43690412f6319ae96f51d8787ce81f820907bff6e6c786
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.3 MB (129279340 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e982339a20a53052bd5f2b2e8438b3c95c91013f653ee781a67934cd1f9f9631`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 07 Dec 2022 01:51:56 GMT
ADD file:3853624d773c4bf6fc1464ca06bd07366109fab78072fcab59075073a5da6525 in / 
# Wed, 07 Dec 2022 01:51:56 GMT
CMD ["/bin/bash"]
# Wed, 07 Dec 2022 02:23:50 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql
# Wed, 07 Dec 2022 02:23:50 GMT
ENV GOSU_VERSION=1.14
# Wed, 07 Dec 2022 02:23:52 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true
# Wed, 07 Dec 2022 02:24:09 GMT
RUN set -eux; 	yum install -y --setopt=skip_missing_names_on_install=False oracle-epel-release-el7; 	yum install -y --setopt=skip_missing_names_on_install=False 		bzip2 		gzip 		openssl 		xz 		zstd 	; 	yum clean all
# Wed, 07 Dec 2022 02:24:10 GMT
RUN set -eux; 	key='859BE8D7C586F538430B19C2467B942D3A79BD29'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME"
# Wed, 07 Dec 2022 02:24:10 GMT
ENV MYSQL_MAJOR=5.7
# Tue, 17 Jan 2023 21:07:55 GMT
ENV MYSQL_VERSION=5.7.41-1.el7
# Tue, 17 Jan 2023 21:07:56 GMT
RUN set -eu; 	. /etc/os-release; 	{ 		echo '[mysql5.7-server-minimal]'; 		echo 'name=MySQL 5.7 Server Minimal'; 		echo 'enabled=1'; 		echo "baseurl=https://repo.mysql.com/yum/mysql-5.7-community/docker/el/${VERSION_ID%%[.-]*}/\$basearch/"; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo
# Tue, 17 Jan 2023 21:08:15 GMT
RUN set -eux; 	yum install -y --setopt=skip_missing_names_on_install=False "mysql-community-server-minimal-$MYSQL_VERSION"; 	yum clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	{ echo '!includedir /etc/mysql/mysql.conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/mysql.conf.d; 		find /etc/my.cnf /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 		mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version
# Tue, 17 Jan 2023 21:08:16 GMT
RUN set -eu; 	. /etc/os-release; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo "baseurl=https://repo.mysql.com/yum/mysql-tools-community/el/${VERSION_ID%%[.-]*}/\$basearch/"; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo
# Tue, 17 Jan 2023 21:08:16 GMT
ENV MYSQL_SHELL_VERSION=8.0.32-1.el7
# Tue, 17 Jan 2023 21:08:41 GMT
RUN set -eux; 	yum install -y --setopt=skip_missing_names_on_install=False "mysql-shell-$MYSQL_SHELL_VERSION"; 	yum clean all; 		mysqlsh --version
# Tue, 17 Jan 2023 21:08:42 GMT
VOLUME [/var/lib/mysql]
# Tue, 17 Jan 2023 21:08:42 GMT
COPY file:e9c22353a1133b89c5bca24ecacd348acd094e50e5e5c45375a997c6b1f07192 in /usr/local/bin/ 
# Tue, 17 Jan 2023 21:08:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 17 Jan 2023 21:08:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jan 2023 21:08:43 GMT
EXPOSE 3306 33060
# Tue, 17 Jan 2023 21:08:43 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:d26998a7c52d2b84e7927f97651d1d703a805c8e4d3f658a03138721f5a5dd44`  
		Last Modified: Wed, 07 Dec 2022 01:53:46 GMT  
		Size: 49.8 MB (49818482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a9d8a3567e30df99576e0a4dbca773af581230fee203891610e6ccbdaa823d2`  
		Last Modified: Wed, 07 Dec 2022 02:26:00 GMT  
		Size: 871.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfee1f0f349e08af59ed77c7d56ede70f0c5739daa2477ef54a4ee457f5e3e47`  
		Last Modified: Wed, 07 Dec 2022 02:26:01 GMT  
		Size: 930.2 KB (930227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71ff8dfb9b12b027c35d779fe4f06a9b3d0d26efed52153324cfa2f409423b0d`  
		Last Modified: Wed, 07 Dec 2022 02:25:59 GMT  
		Size: 4.5 MB (4539026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf56cbebc916d35659623816867a456610961f77db6d9753e738c5564651dfa0`  
		Last Modified: Wed, 07 Dec 2022 02:25:58 GMT  
		Size: 2.7 KB (2658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a7bdfff0f5b940a8450ad5ef0f25d73f40cc8cc13627bda09a9586e81b74502`  
		Last Modified: Tue, 17 Jan 2023 21:10:56 GMT  
		Size: 336.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7677d20b791d5ee29bf70cce20582fa06c3634201945e98b8501f20a5f9f0da`  
		Last Modified: Tue, 17 Jan 2023 21:10:58 GMT  
		Size: 25.5 MB (25532144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4bcfc1167c2472c268123c91440454fe1d68088dce3be90dae9b1fdf1080640`  
		Last Modified: Tue, 17 Jan 2023 21:10:54 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03f1c0b71b700b5f8b16e6ac83e1bb437b60e10229f74fbc58518cc4c621cf61`  
		Last Modified: Tue, 17 Jan 2023 21:11:03 GMT  
		Size: 48.4 MB (48449762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61aa2e026ac3ff90ad7fe835692787abbda5ed6bd469edfa416b1c42f331f78f`  
		Last Modified: Tue, 17 Jan 2023 21:10:54 GMT  
		Size: 5.4 KB (5393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b784fa66c50879ee479e3153e735b274ebd3be28d34000d375ef2462f668446`  
		Last Modified: Tue, 17 Jan 2023 21:10:54 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.7.41`

```console
$ docker pull mysql@sha256:f04fc2e2f01e65d6e2828b4cce2c4761d9258aee71d989e273b2ae309f44a945
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `mysql:5.7.41` - linux; amd64

```console
$ docker pull mysql@sha256:8dae5a91219c1789ba43690412f6319ae96f51d8787ce81f820907bff6e6c786
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.3 MB (129279340 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e982339a20a53052bd5f2b2e8438b3c95c91013f653ee781a67934cd1f9f9631`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 07 Dec 2022 01:51:56 GMT
ADD file:3853624d773c4bf6fc1464ca06bd07366109fab78072fcab59075073a5da6525 in / 
# Wed, 07 Dec 2022 01:51:56 GMT
CMD ["/bin/bash"]
# Wed, 07 Dec 2022 02:23:50 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql
# Wed, 07 Dec 2022 02:23:50 GMT
ENV GOSU_VERSION=1.14
# Wed, 07 Dec 2022 02:23:52 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true
# Wed, 07 Dec 2022 02:24:09 GMT
RUN set -eux; 	yum install -y --setopt=skip_missing_names_on_install=False oracle-epel-release-el7; 	yum install -y --setopt=skip_missing_names_on_install=False 		bzip2 		gzip 		openssl 		xz 		zstd 	; 	yum clean all
# Wed, 07 Dec 2022 02:24:10 GMT
RUN set -eux; 	key='859BE8D7C586F538430B19C2467B942D3A79BD29'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME"
# Wed, 07 Dec 2022 02:24:10 GMT
ENV MYSQL_MAJOR=5.7
# Tue, 17 Jan 2023 21:07:55 GMT
ENV MYSQL_VERSION=5.7.41-1.el7
# Tue, 17 Jan 2023 21:07:56 GMT
RUN set -eu; 	. /etc/os-release; 	{ 		echo '[mysql5.7-server-minimal]'; 		echo 'name=MySQL 5.7 Server Minimal'; 		echo 'enabled=1'; 		echo "baseurl=https://repo.mysql.com/yum/mysql-5.7-community/docker/el/${VERSION_ID%%[.-]*}/\$basearch/"; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo
# Tue, 17 Jan 2023 21:08:15 GMT
RUN set -eux; 	yum install -y --setopt=skip_missing_names_on_install=False "mysql-community-server-minimal-$MYSQL_VERSION"; 	yum clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	{ echo '!includedir /etc/mysql/mysql.conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/mysql.conf.d; 		find /etc/my.cnf /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 		mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version
# Tue, 17 Jan 2023 21:08:16 GMT
RUN set -eu; 	. /etc/os-release; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo "baseurl=https://repo.mysql.com/yum/mysql-tools-community/el/${VERSION_ID%%[.-]*}/\$basearch/"; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo
# Tue, 17 Jan 2023 21:08:16 GMT
ENV MYSQL_SHELL_VERSION=8.0.32-1.el7
# Tue, 17 Jan 2023 21:08:41 GMT
RUN set -eux; 	yum install -y --setopt=skip_missing_names_on_install=False "mysql-shell-$MYSQL_SHELL_VERSION"; 	yum clean all; 		mysqlsh --version
# Tue, 17 Jan 2023 21:08:42 GMT
VOLUME [/var/lib/mysql]
# Tue, 17 Jan 2023 21:08:42 GMT
COPY file:e9c22353a1133b89c5bca24ecacd348acd094e50e5e5c45375a997c6b1f07192 in /usr/local/bin/ 
# Tue, 17 Jan 2023 21:08:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 17 Jan 2023 21:08:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jan 2023 21:08:43 GMT
EXPOSE 3306 33060
# Tue, 17 Jan 2023 21:08:43 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:d26998a7c52d2b84e7927f97651d1d703a805c8e4d3f658a03138721f5a5dd44`  
		Last Modified: Wed, 07 Dec 2022 01:53:46 GMT  
		Size: 49.8 MB (49818482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a9d8a3567e30df99576e0a4dbca773af581230fee203891610e6ccbdaa823d2`  
		Last Modified: Wed, 07 Dec 2022 02:26:00 GMT  
		Size: 871.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfee1f0f349e08af59ed77c7d56ede70f0c5739daa2477ef54a4ee457f5e3e47`  
		Last Modified: Wed, 07 Dec 2022 02:26:01 GMT  
		Size: 930.2 KB (930227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71ff8dfb9b12b027c35d779fe4f06a9b3d0d26efed52153324cfa2f409423b0d`  
		Last Modified: Wed, 07 Dec 2022 02:25:59 GMT  
		Size: 4.5 MB (4539026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf56cbebc916d35659623816867a456610961f77db6d9753e738c5564651dfa0`  
		Last Modified: Wed, 07 Dec 2022 02:25:58 GMT  
		Size: 2.7 KB (2658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a7bdfff0f5b940a8450ad5ef0f25d73f40cc8cc13627bda09a9586e81b74502`  
		Last Modified: Tue, 17 Jan 2023 21:10:56 GMT  
		Size: 336.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7677d20b791d5ee29bf70cce20582fa06c3634201945e98b8501f20a5f9f0da`  
		Last Modified: Tue, 17 Jan 2023 21:10:58 GMT  
		Size: 25.5 MB (25532144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4bcfc1167c2472c268123c91440454fe1d68088dce3be90dae9b1fdf1080640`  
		Last Modified: Tue, 17 Jan 2023 21:10:54 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03f1c0b71b700b5f8b16e6ac83e1bb437b60e10229f74fbc58518cc4c621cf61`  
		Last Modified: Tue, 17 Jan 2023 21:11:03 GMT  
		Size: 48.4 MB (48449762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61aa2e026ac3ff90ad7fe835692787abbda5ed6bd469edfa416b1c42f331f78f`  
		Last Modified: Tue, 17 Jan 2023 21:10:54 GMT  
		Size: 5.4 KB (5393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b784fa66c50879ee479e3153e735b274ebd3be28d34000d375ef2462f668446`  
		Last Modified: Tue, 17 Jan 2023 21:10:54 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.7.41-debian`

```console
$ docker pull mysql@sha256:6f4fb1b8c2717cbe709e755f83a3d6f52dabe58902569bdaa14d0cc9d4c18d25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `mysql:5.7.41-debian` - linux; amd64

```console
$ docker pull mysql@sha256:603b9b890043bd774c673060292c818e771135c51d0d2b8b7873151906610220
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.6 MB (162644100 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4726a7600c6f5c8b58d26e8a5634a13bdff727ee29eebe5edbf9ebdd00533898`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 11 Jan 2023 02:35:07 GMT
ADD file:67ceb946e54c26c505b5f9f393d77befbd5e9b3b5c069ca301e314ecc74456b0 in / 
# Wed, 11 Jan 2023 02:35:07 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 06:20:12 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 11 Jan 2023 06:20:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 06:20:18 GMT
ENV GOSU_VERSION=1.14
# Wed, 11 Jan 2023 06:20:27 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true
# Wed, 11 Jan 2023 06:20:28 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 11 Jan 2023 06:20:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		openssl 		perl 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 06:20:36 GMT
RUN set -eux; 	key='859BE8D7C586F538430B19C2467B942D3A79BD29'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	mkdir -p /etc/apt/keyrings; 	gpg --batch --export "$key" > /etc/apt/keyrings/mysql.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"
# Wed, 11 Jan 2023 06:20:36 GMT
ENV MYSQL_MAJOR=5.7
# Tue, 17 Jan 2023 21:08:53 GMT
ENV MYSQL_VERSION=5.7.41-1debian10
# Tue, 17 Jan 2023 21:08:54 GMT
RUN echo 'deb [ signed-by=/etc/apt/keyrings/mysql.gpg ] http://repo.mysql.com/apt/debian/ buster mysql-5.7' > /etc/apt/sources.list.d/mysql.list
# Tue, 17 Jan 2023 21:09:16 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		mysql-server="${MYSQL_VERSION}" 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 1777 /var/run/mysqld /var/lib/mysql
# Tue, 17 Jan 2023 21:09:17 GMT
VOLUME [/var/lib/mysql]
# Tue, 17 Jan 2023 21:09:17 GMT
COPY file:e9c22353a1133b89c5bca24ecacd348acd094e50e5e5c45375a997c6b1f07192 in /usr/local/bin/ 
# Tue, 17 Jan 2023 21:09:17 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 17 Jan 2023 21:09:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jan 2023 21:09:18 GMT
EXPOSE 3306 33060
# Tue, 17 Jan 2023 21:09:18 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:548fcab5fe888f589dd092c68b813bfd65359878bd1950d6b753f749e82ebd7c`  
		Last Modified: Wed, 11 Jan 2023 02:39:48 GMT  
		Size: 27.1 MB (27140352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:702e45a0d0fab46740d0cf404969001dc0537dd564973fa6f31da2a00cfe5ef8`  
		Last Modified: Wed, 11 Jan 2023 06:22:03 GMT  
		Size: 1.7 KB (1735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad96d17a23a7cff619709675f8981274e6a4ff7a9fb99590f0a837511e69a50b`  
		Last Modified: Wed, 11 Jan 2023 06:22:03 GMT  
		Size: 4.2 MB (4182274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1832d5509d3dce5314c5ffb58ac35ef7e35c396457e6fab747267312751708cf`  
		Last Modified: Wed, 11 Jan 2023 06:22:02 GMT  
		Size: 1.4 MB (1388883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d5a580bc4aa47839f3f325b0a7bd7f927d8f41bb947a8e6d1847048a16c88dc`  
		Last Modified: Wed, 11 Jan 2023 06:22:01 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:562f0a131c6cc56e3a6b85245641c4251cb4bc5e5b97f08d5d97209b8c11c38c`  
		Last Modified: Wed, 11 Jan 2023 06:22:04 GMT  
		Size: 14.1 MB (14089400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5760997e25e0fd516f2aab1a32be22ae0a919faa2c2dd36a3ad098d772ca3495`  
		Last Modified: Wed, 11 Jan 2023 06:22:00 GMT  
		Size: 2.5 KB (2543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2459447ebb40538b162dbc50dd435551e3c63d290fc1fb37555ee724a56989a9`  
		Last Modified: Tue, 17 Jan 2023 21:11:22 GMT  
		Size: 257.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13b7ab69b071a7139fbe466170a22caead38334834a792630c6a0e9b12f15ef6`  
		Last Modified: Tue, 17 Jan 2023 21:11:37 GMT  
		Size: 115.8 MB (115832999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aad2d01a4e6a079bc797ac021db4938622225182fa24eab797ee661d30134e9`  
		Last Modified: Tue, 17 Jan 2023 21:11:22 GMT  
		Size: 5.4 KB (5388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50d70cf470197d6c4c9c3f0789a15440b5439ac8536ea8db923608b24b7dfc59`  
		Last Modified: Tue, 17 Jan 2023 21:11:22 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.7.41-oracle`

```console
$ docker pull mysql@sha256:f04fc2e2f01e65d6e2828b4cce2c4761d9258aee71d989e273b2ae309f44a945
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `mysql:5.7.41-oracle` - linux; amd64

```console
$ docker pull mysql@sha256:8dae5a91219c1789ba43690412f6319ae96f51d8787ce81f820907bff6e6c786
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.3 MB (129279340 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e982339a20a53052bd5f2b2e8438b3c95c91013f653ee781a67934cd1f9f9631`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 07 Dec 2022 01:51:56 GMT
ADD file:3853624d773c4bf6fc1464ca06bd07366109fab78072fcab59075073a5da6525 in / 
# Wed, 07 Dec 2022 01:51:56 GMT
CMD ["/bin/bash"]
# Wed, 07 Dec 2022 02:23:50 GMT
RUN set -eux; 	groupadd --system --gid 999 mysql; 	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql
# Wed, 07 Dec 2022 02:23:50 GMT
ENV GOSU_VERSION=1.14
# Wed, 07 Dec 2022 02:23:52 GMT
RUN set -eux; 	arch="$(uname -m)"; 	case "$arch" in 		aarch64) gosuArch='arm64' ;; 		x86_64) gosuArch='amd64' ;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 	curl -fL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch.asc"; 	curl -fL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$gosuArch"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true
# Wed, 07 Dec 2022 02:24:09 GMT
RUN set -eux; 	yum install -y --setopt=skip_missing_names_on_install=False oracle-epel-release-el7; 	yum install -y --setopt=skip_missing_names_on_install=False 		bzip2 		gzip 		openssl 		xz 		zstd 	; 	yum clean all
# Wed, 07 Dec 2022 02:24:10 GMT
RUN set -eux; 	key='859BE8D7C586F538430B19C2467B942D3A79BD29'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; 	rm -rf "$GNUPGHOME"
# Wed, 07 Dec 2022 02:24:10 GMT
ENV MYSQL_MAJOR=5.7
# Tue, 17 Jan 2023 21:07:55 GMT
ENV MYSQL_VERSION=5.7.41-1.el7
# Tue, 17 Jan 2023 21:07:56 GMT
RUN set -eu; 	. /etc/os-release; 	{ 		echo '[mysql5.7-server-minimal]'; 		echo 'name=MySQL 5.7 Server Minimal'; 		echo 'enabled=1'; 		echo "baseurl=https://repo.mysql.com/yum/mysql-5.7-community/docker/el/${VERSION_ID%%[.-]*}/\$basearch/"; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-minimal.repo
# Tue, 17 Jan 2023 21:08:15 GMT
RUN set -eux; 	yum install -y --setopt=skip_missing_names_on_install=False "mysql-community-server-minimal-$MYSQL_VERSION"; 	yum clean all; 	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; 	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; 	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; 	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; 		! grep -F '!includedir' /etc/my.cnf; 	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/conf.d; 	{ echo '!includedir /etc/mysql/mysql.conf.d/'; } >> /etc/my.cnf; 	mkdir -p /etc/mysql/mysql.conf.d; 		find /etc/my.cnf /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 		mkdir -p /var/lib/mysql /var/run/mysqld; 	chown mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 1777 /var/lib/mysql /var/run/mysqld; 		mkdir /docker-entrypoint-initdb.d; 		mysqld --version; 	mysql --version
# Tue, 17 Jan 2023 21:08:16 GMT
RUN set -eu; 	. /etc/os-release; 	{ 		echo '[mysql-tools-community]'; 		echo 'name=MySQL Tools Community'; 		echo "baseurl=https://repo.mysql.com/yum/mysql-tools-community/el/${VERSION_ID%%[.-]*}/\$basearch/"; 		echo 'enabled=1'; 		echo 'gpgcheck=1'; 		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; 		echo 'module_hotfixes=true'; 	} | tee /etc/yum.repos.d/mysql-community-tools.repo
# Tue, 17 Jan 2023 21:08:16 GMT
ENV MYSQL_SHELL_VERSION=8.0.32-1.el7
# Tue, 17 Jan 2023 21:08:41 GMT
RUN set -eux; 	yum install -y --setopt=skip_missing_names_on_install=False "mysql-shell-$MYSQL_SHELL_VERSION"; 	yum clean all; 		mysqlsh --version
# Tue, 17 Jan 2023 21:08:42 GMT
VOLUME [/var/lib/mysql]
# Tue, 17 Jan 2023 21:08:42 GMT
COPY file:e9c22353a1133b89c5bca24ecacd348acd094e50e5e5c45375a997c6b1f07192 in /usr/local/bin/ 
# Tue, 17 Jan 2023 21:08:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 17 Jan 2023 21:08:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jan 2023 21:08:43 GMT
EXPOSE 3306 33060
# Tue, 17 Jan 2023 21:08:43 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:d26998a7c52d2b84e7927f97651d1d703a805c8e4d3f658a03138721f5a5dd44`  
		Last Modified: Wed, 07 Dec 2022 01:53:46 GMT  
		Size: 49.8 MB (49818482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a9d8a3567e30df99576e0a4dbca773af581230fee203891610e6ccbdaa823d2`  
		Last Modified: Wed, 07 Dec 2022 02:26:00 GMT  
		Size: 871.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfee1f0f349e08af59ed77c7d56ede70f0c5739daa2477ef54a4ee457f5e3e47`  
		Last Modified: Wed, 07 Dec 2022 02:26:01 GMT  
		Size: 930.2 KB (930227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71ff8dfb9b12b027c35d779fe4f06a9b3d0d26efed52153324cfa2f409423b0d`  
		Last Modified: Wed, 07 Dec 2022 02:25:59 GMT  
		Size: 4.5 MB (4539026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf56cbebc916d35659623816867a456610961f77db6d9753e738c5564651dfa0`  
		Last Modified: Wed, 07 Dec 2022 02:25:58 GMT  
		Size: 2.7 KB (2658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a7bdfff0f5b940a8450ad5ef0f25d73f40cc8cc13627bda09a9586e81b74502`  
		Last Modified: Tue, 17 Jan 2023 21:10:56 GMT  
		Size: 336.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7677d20b791d5ee29bf70cce20582fa06c3634201945e98b8501f20a5f9f0da`  
		Last Modified: Tue, 17 Jan 2023 21:10:58 GMT  
		Size: 25.5 MB (25532144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4bcfc1167c2472c268123c91440454fe1d68088dce3be90dae9b1fdf1080640`  
		Last Modified: Tue, 17 Jan 2023 21:10:54 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03f1c0b71b700b5f8b16e6ac83e1bb437b60e10229f74fbc58518cc4c621cf61`  
		Last Modified: Tue, 17 Jan 2023 21:11:03 GMT  
		Size: 48.4 MB (48449762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61aa2e026ac3ff90ad7fe835692787abbda5ed6bd469edfa416b1c42f331f78f`  
		Last Modified: Tue, 17 Jan 2023 21:10:54 GMT  
		Size: 5.4 KB (5393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b784fa66c50879ee479e3153e735b274ebd3be28d34000d375ef2462f668446`  
		Last Modified: Tue, 17 Jan 2023 21:10:54 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:8`

```console
$ docker pull mysql@sha256:6f54880f928070a036aa3874d4a3fa203adc28688eb89e9f926a0dcacbce3378
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `mysql:8` - linux; amd64

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

### `mysql:8` - linux; arm64 variant v8

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

## `mysql:8-debian`

```console
$ docker pull mysql@sha256:36a7e9407344cd1cb4064179962c207cd2afb13bfbb63992f0ca328e4b56b515
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `mysql:8-debian` - linux; amd64

```console
$ docker pull mysql@sha256:c86f3664bddd89bd539049f71c1ffc0816e18d01fad192addfb02d9e2834351c
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.7 MB (177699276 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33ba092bab95e48e4e7ea71d2f5e5603108185e259e011179aa03b26ad5d5067`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 11 Jan 2023 02:34:44 GMT
ADD file:e2398d0bf516084b2b37ba1bb76b86d56e66999831df692461679fbd6a5d8eb6 in / 
# Wed, 11 Jan 2023 02:34:44 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 06:19:22 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 11 Jan 2023 06:19:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 06:19:28 GMT
ENV GOSU_VERSION=1.14
# Wed, 11 Jan 2023 06:19:37 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true
# Wed, 11 Jan 2023 06:19:38 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 11 Jan 2023 06:19:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		openssl 		perl 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 06:19:45 GMT
RUN set -eux; 	key='859BE8D7C586F538430B19C2467B942D3A79BD29'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	mkdir -p /etc/apt/keyrings; 	gpg --batch --export "$key" > /etc/apt/keyrings/mysql.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"
# Wed, 11 Jan 2023 06:19:45 GMT
ENV MYSQL_MAJOR=8.0
# Tue, 17 Jan 2023 21:07:31 GMT
ENV MYSQL_VERSION=8.0.32-1debian11
# Tue, 17 Jan 2023 21:07:32 GMT
RUN echo 'deb [ signed-by=/etc/apt/keyrings/mysql.gpg ] http://repo.mysql.com/apt/debian/ bullseye mysql-8.0' > /etc/apt/sources.list.d/mysql.list
# Tue, 17 Jan 2023 21:07:48 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		mysql-community-client="${MYSQL_VERSION}" 		mysql-community-server-core="${MYSQL_VERSION}" 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 1777 /var/run/mysqld /var/lib/mysql
# Tue, 17 Jan 2023 21:07:49 GMT
VOLUME [/var/lib/mysql]
# Tue, 17 Jan 2023 21:07:49 GMT
COPY dir:2e040acc386ebd23b8571951a51e6cb93647df091bc26159b8c757ef82b3fcda in /etc/mysql/ 
# Tue, 17 Jan 2023 21:07:49 GMT
COPY file:e9c22353a1133b89c5bca24ecacd348acd094e50e5e5c45375a997c6b1f07192 in /usr/local/bin/ 
# Tue, 17 Jan 2023 21:07:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 17 Jan 2023 21:07:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jan 2023 21:07:50 GMT
EXPOSE 3306 33060
# Tue, 17 Jan 2023 21:07:50 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:8740c948ffd4c816ea7ca963f99ca52f4788baa23f228da9581a9ea2edd3fcd7`  
		Last Modified: Wed, 11 Jan 2023 02:39:07 GMT  
		Size: 31.4 MB (31396972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d346580bcb1a6e9e1becd3883a38670cdca1f47b7cdbe65121708af5458a0318`  
		Last Modified: Wed, 11 Jan 2023 06:21:26 GMT  
		Size: 1.7 KB (1736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec40bb6547aaa95db6bda6d1de84761264c716477d2d8b998856586285b4ec55`  
		Last Modified: Wed, 11 Jan 2023 06:21:27 GMT  
		Size: 4.4 MB (4414919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efef7c7e25176536d7c2c61700c323a83aa93894c4e3f250e6318cc77182410c`  
		Last Modified: Wed, 11 Jan 2023 06:21:25 GMT  
		Size: 1.4 MB (1418481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8cd4a9c65ce2ab7c83d934277938ac0b60b14038ed82a23768c5829e04bca7f`  
		Last Modified: Wed, 11 Jan 2023 06:21:25 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4caf695f1e31c50fb977d1da7e28a7de9f4dacc6d937f16b3b2da8b263527ab`  
		Last Modified: Wed, 11 Jan 2023 06:21:28 GMT  
		Size: 12.7 MB (12662003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:621837b69253e21538e7e8b097d99a96bbd14ef7c98668c7f1587a5898849f36`  
		Last Modified: Wed, 11 Jan 2023 06:21:25 GMT  
		Size: 2.5 KB (2546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b50c903d5cfd80f351193456503656367928154b4d6c52beb99423204b56df74`  
		Last Modified: Tue, 17 Jan 2023 21:10:20 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:406689e3dbcc29124df7a749b01725da213b58aea774407bdb102b0d00567b4a`  
		Last Modified: Tue, 17 Jan 2023 21:10:40 GMT  
		Size: 127.8 MB (127795859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4016832f0b21d3dbdb52cbe137c71f532d7f4515eb11a6d50e6590a5621cef82`  
		Last Modified: Tue, 17 Jan 2023 21:10:20 GMT  
		Size: 842.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d4236ef87c29f872eca03df1e079fbb2b174c44258b1ac06d6ccbd10a7c7efc`  
		Last Modified: Tue, 17 Jan 2023 21:10:20 GMT  
		Size: 5.4 KB (5390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eedfbe312f9b4e2371da8769a8336c98cc9639575b92216f327fa63b4d034558`  
		Last Modified: Tue, 17 Jan 2023 21:10:20 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:8-oracle`

```console
$ docker pull mysql@sha256:6f54880f928070a036aa3874d4a3fa203adc28688eb89e9f926a0dcacbce3378
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `mysql:8-oracle` - linux; amd64

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

### `mysql:8-oracle` - linux; arm64 variant v8

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

## `mysql:8.0`

```console
$ docker pull mysql@sha256:6f54880f928070a036aa3874d4a3fa203adc28688eb89e9f926a0dcacbce3378
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `mysql:8.0` - linux; amd64

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

### `mysql:8.0` - linux; arm64 variant v8

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

## `mysql:8.0-debian`

```console
$ docker pull mysql@sha256:36a7e9407344cd1cb4064179962c207cd2afb13bfbb63992f0ca328e4b56b515
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `mysql:8.0-debian` - linux; amd64

```console
$ docker pull mysql@sha256:c86f3664bddd89bd539049f71c1ffc0816e18d01fad192addfb02d9e2834351c
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.7 MB (177699276 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33ba092bab95e48e4e7ea71d2f5e5603108185e259e011179aa03b26ad5d5067`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 11 Jan 2023 02:34:44 GMT
ADD file:e2398d0bf516084b2b37ba1bb76b86d56e66999831df692461679fbd6a5d8eb6 in / 
# Wed, 11 Jan 2023 02:34:44 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 06:19:22 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 11 Jan 2023 06:19:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 06:19:28 GMT
ENV GOSU_VERSION=1.14
# Wed, 11 Jan 2023 06:19:37 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true
# Wed, 11 Jan 2023 06:19:38 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 11 Jan 2023 06:19:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		openssl 		perl 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 06:19:45 GMT
RUN set -eux; 	key='859BE8D7C586F538430B19C2467B942D3A79BD29'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	mkdir -p /etc/apt/keyrings; 	gpg --batch --export "$key" > /etc/apt/keyrings/mysql.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"
# Wed, 11 Jan 2023 06:19:45 GMT
ENV MYSQL_MAJOR=8.0
# Tue, 17 Jan 2023 21:07:31 GMT
ENV MYSQL_VERSION=8.0.32-1debian11
# Tue, 17 Jan 2023 21:07:32 GMT
RUN echo 'deb [ signed-by=/etc/apt/keyrings/mysql.gpg ] http://repo.mysql.com/apt/debian/ bullseye mysql-8.0' > /etc/apt/sources.list.d/mysql.list
# Tue, 17 Jan 2023 21:07:48 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		mysql-community-client="${MYSQL_VERSION}" 		mysql-community-server-core="${MYSQL_VERSION}" 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 1777 /var/run/mysqld /var/lib/mysql
# Tue, 17 Jan 2023 21:07:49 GMT
VOLUME [/var/lib/mysql]
# Tue, 17 Jan 2023 21:07:49 GMT
COPY dir:2e040acc386ebd23b8571951a51e6cb93647df091bc26159b8c757ef82b3fcda in /etc/mysql/ 
# Tue, 17 Jan 2023 21:07:49 GMT
COPY file:e9c22353a1133b89c5bca24ecacd348acd094e50e5e5c45375a997c6b1f07192 in /usr/local/bin/ 
# Tue, 17 Jan 2023 21:07:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 17 Jan 2023 21:07:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jan 2023 21:07:50 GMT
EXPOSE 3306 33060
# Tue, 17 Jan 2023 21:07:50 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:8740c948ffd4c816ea7ca963f99ca52f4788baa23f228da9581a9ea2edd3fcd7`  
		Last Modified: Wed, 11 Jan 2023 02:39:07 GMT  
		Size: 31.4 MB (31396972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d346580bcb1a6e9e1becd3883a38670cdca1f47b7cdbe65121708af5458a0318`  
		Last Modified: Wed, 11 Jan 2023 06:21:26 GMT  
		Size: 1.7 KB (1736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec40bb6547aaa95db6bda6d1de84761264c716477d2d8b998856586285b4ec55`  
		Last Modified: Wed, 11 Jan 2023 06:21:27 GMT  
		Size: 4.4 MB (4414919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efef7c7e25176536d7c2c61700c323a83aa93894c4e3f250e6318cc77182410c`  
		Last Modified: Wed, 11 Jan 2023 06:21:25 GMT  
		Size: 1.4 MB (1418481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8cd4a9c65ce2ab7c83d934277938ac0b60b14038ed82a23768c5829e04bca7f`  
		Last Modified: Wed, 11 Jan 2023 06:21:25 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4caf695f1e31c50fb977d1da7e28a7de9f4dacc6d937f16b3b2da8b263527ab`  
		Last Modified: Wed, 11 Jan 2023 06:21:28 GMT  
		Size: 12.7 MB (12662003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:621837b69253e21538e7e8b097d99a96bbd14ef7c98668c7f1587a5898849f36`  
		Last Modified: Wed, 11 Jan 2023 06:21:25 GMT  
		Size: 2.5 KB (2546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b50c903d5cfd80f351193456503656367928154b4d6c52beb99423204b56df74`  
		Last Modified: Tue, 17 Jan 2023 21:10:20 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:406689e3dbcc29124df7a749b01725da213b58aea774407bdb102b0d00567b4a`  
		Last Modified: Tue, 17 Jan 2023 21:10:40 GMT  
		Size: 127.8 MB (127795859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4016832f0b21d3dbdb52cbe137c71f532d7f4515eb11a6d50e6590a5621cef82`  
		Last Modified: Tue, 17 Jan 2023 21:10:20 GMT  
		Size: 842.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d4236ef87c29f872eca03df1e079fbb2b174c44258b1ac06d6ccbd10a7c7efc`  
		Last Modified: Tue, 17 Jan 2023 21:10:20 GMT  
		Size: 5.4 KB (5390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eedfbe312f9b4e2371da8769a8336c98cc9639575b92216f327fa63b4d034558`  
		Last Modified: Tue, 17 Jan 2023 21:10:20 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:8.0-oracle`

```console
$ docker pull mysql@sha256:6f54880f928070a036aa3874d4a3fa203adc28688eb89e9f926a0dcacbce3378
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `mysql:8.0-oracle` - linux; amd64

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

### `mysql:8.0-oracle` - linux; arm64 variant v8

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

## `mysql:8.0.32`

```console
$ docker pull mysql@sha256:6f54880f928070a036aa3874d4a3fa203adc28688eb89e9f926a0dcacbce3378
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `mysql:8.0.32` - linux; amd64

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

### `mysql:8.0.32` - linux; arm64 variant v8

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

## `mysql:8.0.32-debian`

```console
$ docker pull mysql@sha256:36a7e9407344cd1cb4064179962c207cd2afb13bfbb63992f0ca328e4b56b515
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `mysql:8.0.32-debian` - linux; amd64

```console
$ docker pull mysql@sha256:c86f3664bddd89bd539049f71c1ffc0816e18d01fad192addfb02d9e2834351c
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.7 MB (177699276 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33ba092bab95e48e4e7ea71d2f5e5603108185e259e011179aa03b26ad5d5067`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 11 Jan 2023 02:34:44 GMT
ADD file:e2398d0bf516084b2b37ba1bb76b86d56e66999831df692461679fbd6a5d8eb6 in / 
# Wed, 11 Jan 2023 02:34:44 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 06:19:22 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 11 Jan 2023 06:19:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 06:19:28 GMT
ENV GOSU_VERSION=1.14
# Wed, 11 Jan 2023 06:19:37 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true
# Wed, 11 Jan 2023 06:19:38 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 11 Jan 2023 06:19:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		openssl 		perl 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 06:19:45 GMT
RUN set -eux; 	key='859BE8D7C586F538430B19C2467B942D3A79BD29'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	mkdir -p /etc/apt/keyrings; 	gpg --batch --export "$key" > /etc/apt/keyrings/mysql.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"
# Wed, 11 Jan 2023 06:19:45 GMT
ENV MYSQL_MAJOR=8.0
# Tue, 17 Jan 2023 21:07:31 GMT
ENV MYSQL_VERSION=8.0.32-1debian11
# Tue, 17 Jan 2023 21:07:32 GMT
RUN echo 'deb [ signed-by=/etc/apt/keyrings/mysql.gpg ] http://repo.mysql.com/apt/debian/ bullseye mysql-8.0' > /etc/apt/sources.list.d/mysql.list
# Tue, 17 Jan 2023 21:07:48 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		mysql-community-client="${MYSQL_VERSION}" 		mysql-community-server-core="${MYSQL_VERSION}" 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 1777 /var/run/mysqld /var/lib/mysql
# Tue, 17 Jan 2023 21:07:49 GMT
VOLUME [/var/lib/mysql]
# Tue, 17 Jan 2023 21:07:49 GMT
COPY dir:2e040acc386ebd23b8571951a51e6cb93647df091bc26159b8c757ef82b3fcda in /etc/mysql/ 
# Tue, 17 Jan 2023 21:07:49 GMT
COPY file:e9c22353a1133b89c5bca24ecacd348acd094e50e5e5c45375a997c6b1f07192 in /usr/local/bin/ 
# Tue, 17 Jan 2023 21:07:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 17 Jan 2023 21:07:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jan 2023 21:07:50 GMT
EXPOSE 3306 33060
# Tue, 17 Jan 2023 21:07:50 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:8740c948ffd4c816ea7ca963f99ca52f4788baa23f228da9581a9ea2edd3fcd7`  
		Last Modified: Wed, 11 Jan 2023 02:39:07 GMT  
		Size: 31.4 MB (31396972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d346580bcb1a6e9e1becd3883a38670cdca1f47b7cdbe65121708af5458a0318`  
		Last Modified: Wed, 11 Jan 2023 06:21:26 GMT  
		Size: 1.7 KB (1736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec40bb6547aaa95db6bda6d1de84761264c716477d2d8b998856586285b4ec55`  
		Last Modified: Wed, 11 Jan 2023 06:21:27 GMT  
		Size: 4.4 MB (4414919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efef7c7e25176536d7c2c61700c323a83aa93894c4e3f250e6318cc77182410c`  
		Last Modified: Wed, 11 Jan 2023 06:21:25 GMT  
		Size: 1.4 MB (1418481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8cd4a9c65ce2ab7c83d934277938ac0b60b14038ed82a23768c5829e04bca7f`  
		Last Modified: Wed, 11 Jan 2023 06:21:25 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4caf695f1e31c50fb977d1da7e28a7de9f4dacc6d937f16b3b2da8b263527ab`  
		Last Modified: Wed, 11 Jan 2023 06:21:28 GMT  
		Size: 12.7 MB (12662003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:621837b69253e21538e7e8b097d99a96bbd14ef7c98668c7f1587a5898849f36`  
		Last Modified: Wed, 11 Jan 2023 06:21:25 GMT  
		Size: 2.5 KB (2546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b50c903d5cfd80f351193456503656367928154b4d6c52beb99423204b56df74`  
		Last Modified: Tue, 17 Jan 2023 21:10:20 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:406689e3dbcc29124df7a749b01725da213b58aea774407bdb102b0d00567b4a`  
		Last Modified: Tue, 17 Jan 2023 21:10:40 GMT  
		Size: 127.8 MB (127795859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4016832f0b21d3dbdb52cbe137c71f532d7f4515eb11a6d50e6590a5621cef82`  
		Last Modified: Tue, 17 Jan 2023 21:10:20 GMT  
		Size: 842.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d4236ef87c29f872eca03df1e079fbb2b174c44258b1ac06d6ccbd10a7c7efc`  
		Last Modified: Tue, 17 Jan 2023 21:10:20 GMT  
		Size: 5.4 KB (5390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eedfbe312f9b4e2371da8769a8336c98cc9639575b92216f327fa63b4d034558`  
		Last Modified: Tue, 17 Jan 2023 21:10:20 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:8.0.32-oracle`

```console
$ docker pull mysql@sha256:6f54880f928070a036aa3874d4a3fa203adc28688eb89e9f926a0dcacbce3378
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `mysql:8.0.32-oracle` - linux; amd64

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

### `mysql:8.0.32-oracle` - linux; arm64 variant v8

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

## `mysql:debian`

```console
$ docker pull mysql@sha256:36a7e9407344cd1cb4064179962c207cd2afb13bfbb63992f0ca328e4b56b515
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `mysql:debian` - linux; amd64

```console
$ docker pull mysql@sha256:c86f3664bddd89bd539049f71c1ffc0816e18d01fad192addfb02d9e2834351c
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.7 MB (177699276 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33ba092bab95e48e4e7ea71d2f5e5603108185e259e011179aa03b26ad5d5067`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 11 Jan 2023 02:34:44 GMT
ADD file:e2398d0bf516084b2b37ba1bb76b86d56e66999831df692461679fbd6a5d8eb6 in / 
# Wed, 11 Jan 2023 02:34:44 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 06:19:22 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 11 Jan 2023 06:19:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 06:19:28 GMT
ENV GOSU_VERSION=1.14
# Wed, 11 Jan 2023 06:19:37 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true
# Wed, 11 Jan 2023 06:19:38 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 11 Jan 2023 06:19:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		openssl 		perl 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 06:19:45 GMT
RUN set -eux; 	key='859BE8D7C586F538430B19C2467B942D3A79BD29'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	mkdir -p /etc/apt/keyrings; 	gpg --batch --export "$key" > /etc/apt/keyrings/mysql.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"
# Wed, 11 Jan 2023 06:19:45 GMT
ENV MYSQL_MAJOR=8.0
# Tue, 17 Jan 2023 21:07:31 GMT
ENV MYSQL_VERSION=8.0.32-1debian11
# Tue, 17 Jan 2023 21:07:32 GMT
RUN echo 'deb [ signed-by=/etc/apt/keyrings/mysql.gpg ] http://repo.mysql.com/apt/debian/ bullseye mysql-8.0' > /etc/apt/sources.list.d/mysql.list
# Tue, 17 Jan 2023 21:07:48 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		mysql-community-client="${MYSQL_VERSION}" 		mysql-community-server-core="${MYSQL_VERSION}" 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 1777 /var/run/mysqld /var/lib/mysql
# Tue, 17 Jan 2023 21:07:49 GMT
VOLUME [/var/lib/mysql]
# Tue, 17 Jan 2023 21:07:49 GMT
COPY dir:2e040acc386ebd23b8571951a51e6cb93647df091bc26159b8c757ef82b3fcda in /etc/mysql/ 
# Tue, 17 Jan 2023 21:07:49 GMT
COPY file:e9c22353a1133b89c5bca24ecacd348acd094e50e5e5c45375a997c6b1f07192 in /usr/local/bin/ 
# Tue, 17 Jan 2023 21:07:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 17 Jan 2023 21:07:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jan 2023 21:07:50 GMT
EXPOSE 3306 33060
# Tue, 17 Jan 2023 21:07:50 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:8740c948ffd4c816ea7ca963f99ca52f4788baa23f228da9581a9ea2edd3fcd7`  
		Last Modified: Wed, 11 Jan 2023 02:39:07 GMT  
		Size: 31.4 MB (31396972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d346580bcb1a6e9e1becd3883a38670cdca1f47b7cdbe65121708af5458a0318`  
		Last Modified: Wed, 11 Jan 2023 06:21:26 GMT  
		Size: 1.7 KB (1736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec40bb6547aaa95db6bda6d1de84761264c716477d2d8b998856586285b4ec55`  
		Last Modified: Wed, 11 Jan 2023 06:21:27 GMT  
		Size: 4.4 MB (4414919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efef7c7e25176536d7c2c61700c323a83aa93894c4e3f250e6318cc77182410c`  
		Last Modified: Wed, 11 Jan 2023 06:21:25 GMT  
		Size: 1.4 MB (1418481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8cd4a9c65ce2ab7c83d934277938ac0b60b14038ed82a23768c5829e04bca7f`  
		Last Modified: Wed, 11 Jan 2023 06:21:25 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4caf695f1e31c50fb977d1da7e28a7de9f4dacc6d937f16b3b2da8b263527ab`  
		Last Modified: Wed, 11 Jan 2023 06:21:28 GMT  
		Size: 12.7 MB (12662003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:621837b69253e21538e7e8b097d99a96bbd14ef7c98668c7f1587a5898849f36`  
		Last Modified: Wed, 11 Jan 2023 06:21:25 GMT  
		Size: 2.5 KB (2546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b50c903d5cfd80f351193456503656367928154b4d6c52beb99423204b56df74`  
		Last Modified: Tue, 17 Jan 2023 21:10:20 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:406689e3dbcc29124df7a749b01725da213b58aea774407bdb102b0d00567b4a`  
		Last Modified: Tue, 17 Jan 2023 21:10:40 GMT  
		Size: 127.8 MB (127795859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4016832f0b21d3dbdb52cbe137c71f532d7f4515eb11a6d50e6590a5621cef82`  
		Last Modified: Tue, 17 Jan 2023 21:10:20 GMT  
		Size: 842.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d4236ef87c29f872eca03df1e079fbb2b174c44258b1ac06d6ccbd10a7c7efc`  
		Last Modified: Tue, 17 Jan 2023 21:10:20 GMT  
		Size: 5.4 KB (5390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eedfbe312f9b4e2371da8769a8336c98cc9639575b92216f327fa63b4d034558`  
		Last Modified: Tue, 17 Jan 2023 21:10:20 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:latest`

```console
$ docker pull mysql@sha256:6f54880f928070a036aa3874d4a3fa203adc28688eb89e9f926a0dcacbce3378
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `mysql:latest` - linux; amd64

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

### `mysql:latest` - linux; arm64 variant v8

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
