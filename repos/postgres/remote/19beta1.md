## `postgres:19beta1`

```console
$ docker pull postgres@sha256:8474396f4d50f9e949fd45148a745cce3fd61fd00d5bf6bdb700d39fe2294375
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 16
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v5
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `postgres:19beta1` - linux; amd64

```console
$ docker pull postgres@sha256:6ec1f380f7cbe0301436e0cca2764697b4eb93eeb02a4c1d43b5d22eb849f410
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.6 MB (163638573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9b04d27c34ebb78c9ec496c664e0ec7be5f5e4e1c2823af14c837534adbd1ec`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:34:33 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 14 Jul 2026 01:34:38 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:34:45 GMT
ENV GOSU_VERSION=1.19
# Tue, 14 Jul 2026 01:34:45 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 14 Jul 2026 01:34:49 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 14 Jul 2026 01:34:49 GMT
ENV LANG=en_US.utf8
# Tue, 14 Jul 2026 01:34:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:34:52 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 14 Jul 2026 01:34:53 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:34:53 GMT
ENV PG_MAJOR=19
# Tue, 14 Jul 2026 01:34:53 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Tue, 14 Jul 2026 01:34:53 GMT
ENV PG_VERSION=19~beta1-1.pgdg13+1
# Tue, 14 Jul 2026 01:35:13 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 14 Jul 2026 01:35:13 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 14 Jul 2026 01:35:13 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 14 Jul 2026 01:35:13 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Tue, 14 Jul 2026 01:35:13 GMT
VOLUME [/var/lib/postgresql]
# Tue, 14 Jul 2026 01:35:13 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:35:13 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 14 Jul 2026 01:35:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 01:35:13 GMT
STOPSIGNAL SIGINT
# Tue, 14 Jul 2026 01:35:13 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 14 Jul 2026 01:35:13 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4acfb46d3d5f00706ed9663fcf2209721adf62cb9e41a180c1e9a0a80cf4eb7`  
		Last Modified: Tue, 14 Jul 2026 01:35:32 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d024ad856ad0237f1cc0e0e4fe261f95e6706ba1503f5d5099c0ea5fd67297d1`  
		Last Modified: Tue, 14 Jul 2026 01:35:32 GMT  
		Size: 6.4 MB (6443007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71bbd971e0485081fac11d905a65eb7fa0e02511dd32af4e363b044bb6d627ed`  
		Last Modified: Tue, 14 Jul 2026 01:35:32 GMT  
		Size: 1.3 MB (1256756 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8c071221d5dc780c1238feb145a25df810a1db10350ec99e119af0c9acc4336`  
		Last Modified: Tue, 14 Jul 2026 01:35:32 GMT  
		Size: 8.2 MB (8203876 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51faa586613f90af359864465ace7504abcaeebcac980ad568ecdcf2b37a7268`  
		Last Modified: Tue, 14 Jul 2026 01:35:33 GMT  
		Size: 1.3 MB (1311661 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c441fd0b5bdce2c1041d1738187804feee469bcacdd8dafa7af07fcd93b97f47`  
		Last Modified: Tue, 14 Jul 2026 01:35:33 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:866ec5c9355053e4e5ae153cf57e2b6fa4fa3825486c2ae33e29d9f41ab4fe4b`  
		Last Modified: Tue, 14 Jul 2026 01:35:33 GMT  
		Size: 3.1 KB (3144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc65b634d897f1b608bcb62941b9dd5d2d1b87d38f53d95eb40591955fc4ab7b`  
		Last Modified: Tue, 14 Jul 2026 01:35:37 GMT  
		Size: 116.6 MB (116610111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a2e82a9a61d8fc99aa99a149eb0eef6219753da3c38d63b5c77ac92e2b3e4ca`  
		Last Modified: Tue, 14 Jul 2026 01:35:34 GMT  
		Size: 21.4 KB (21416 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d066374149b41e0dbf190fbdb9da86a5d4c3c9ee8d1f4770fb4cff0bb715259`  
		Last Modified: Tue, 14 Jul 2026 01:35:35 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f567f7960137f55f2e7e22e8cf64ce1484d7f5a46b63f73064604c5e6661b240`  
		Last Modified: Tue, 14 Jul 2026 01:35:35 GMT  
		Size: 6.1 KB (6105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c5c149aea6e71f5a18ae8f63d1cec6344b8e150cd13609fbd41473f7d61d873`  
		Last Modified: Tue, 14 Jul 2026 01:35:36 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta1` - unknown; unknown

```console
$ docker pull postgres@sha256:f8539de92b3205fcf52eba48b6b08db46bece141e2cacd3c987662968d976794
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6049223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c537005a932f47ef4e1935baf0a6e21691cadc03ddd8b6e2c85a823b5714b43`

```dockerfile
```

-	Layers:
	-	`sha256:01068d5458d108a18e6620883c12586d3d610d83d95a45b4be8992b0dcf3be46`  
		Last Modified: Tue, 14 Jul 2026 01:35:32 GMT  
		Size: 6.0 MB (5997939 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e8f0f95595159249005d5e3644289d765f704cefec4f8291a74813d7f99deac5`  
		Last Modified: Tue, 14 Jul 2026 01:35:32 GMT  
		Size: 51.3 KB (51284 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta1` - linux; arm variant v5

```console
$ docker pull postgres@sha256:0371024241b5a8f5d1f8b3480c5cca59e2bfd7c71aa4f43c365552f9bf49e68d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.0 MB (92004196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71cf658889a1170cb4ca7010f366d6699e61c1dd4234a687e206e2d938b69550`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:48:08 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 14 Jul 2026 01:48:19 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:48:30 GMT
ENV GOSU_VERSION=1.19
# Tue, 14 Jul 2026 01:48:30 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 14 Jul 2026 01:48:39 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 14 Jul 2026 01:48:39 GMT
ENV LANG=en_US.utf8
# Tue, 14 Jul 2026 01:48:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:48:47 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 14 Jul 2026 01:48:47 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:48:47 GMT
ENV PG_MAJOR=19
# Tue, 14 Jul 2026 01:48:47 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Tue, 14 Jul 2026 01:48:47 GMT
ENV PG_VERSION=19~beta1-1.pgdg13+1
# Tue, 14 Jul 2026 02:02:53 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 14 Jul 2026 02:02:53 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 14 Jul 2026 02:02:53 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 14 Jul 2026 02:02:53 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Tue, 14 Jul 2026 02:02:53 GMT
VOLUME [/var/lib/postgresql]
# Tue, 14 Jul 2026 02:02:53 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 02:02:53 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 14 Jul 2026 02:02:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 02:02:53 GMT
STOPSIGNAL SIGINT
# Tue, 14 Jul 2026 02:02:53 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 14 Jul 2026 02:02:53 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:9ce68cca63faf1f06434dd1423cb52db0d4251ee3f1838e43e5893fae28f9267`  
		Last Modified: Tue, 14 Jul 2026 00:14:26 GMT  
		Size: 28.0 MB (27954818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec794306a754f5a272d7ced4a198abf7174b9d2ae9c55a3c31c963f01e2a92f9`  
		Last Modified: Tue, 14 Jul 2026 02:03:06 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1aea9f26d29b96b34eae95bb6755efe0e4d7d7f312d0f2479b75eda44deca962`  
		Last Modified: Tue, 14 Jul 2026 02:03:06 GMT  
		Size: 5.9 MB (5932360 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c2e912374b585c46daa1259b0d7ac1434f3e7302cae3e6ff2c62099feacdaed`  
		Last Modified: Tue, 14 Jul 2026 02:03:06 GMT  
		Size: 1.2 MB (1227413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af914ec8fd72b522570fa9d7becb21662ba1ba9b1a00d80400669512a6d1df7a`  
		Last Modified: Tue, 14 Jul 2026 02:03:06 GMT  
		Size: 8.2 MB (8204319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c107b617094ff05318dbb6797675d1c1d6e4e793ee879ff3c1371599871d6db5`  
		Last Modified: Tue, 14 Jul 2026 02:03:07 GMT  
		Size: 1.3 MB (1317336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:713e51e76b08c72ffba141a6cddca033efa6bce1b032f5040392c450e3debbdd`  
		Last Modified: Tue, 14 Jul 2026 02:03:08 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f487ce20a51c1b2937e5c6aecbfd0257923f676a1f3ae03d7721217456a2af07`  
		Last Modified: Tue, 14 Jul 2026 02:03:08 GMT  
		Size: 3.1 KB (3140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0652ce8baa424485ecc21c3b44fbd28110e97cdff121d5e39d176e46105ef2cc`  
		Last Modified: Tue, 14 Jul 2026 02:03:09 GMT  
		Size: 47.3 MB (47335690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc04fbdfd1be7edefc4fcde6d6d4c7aa6c336332851f6ad20facd81eccd2d746`  
		Last Modified: Tue, 14 Jul 2026 02:03:09 GMT  
		Size: 21.4 KB (21417 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85465cf452199206516d8a5a6bcd0edae31de77e5fdbed476658f9d08183d39d`  
		Last Modified: Tue, 14 Jul 2026 02:03:09 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db5c0744d9312f6d2aa52cf22dc74c09730ca16fe531076d5133fd4b91de7613`  
		Last Modified: Tue, 14 Jul 2026 02:03:09 GMT  
		Size: 6.1 KB (6108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35ef570c9104885a156eb7c9a0f07c37cb84423f81b89ffb76d4c7be9409a04b`  
		Last Modified: Tue, 14 Jul 2026 02:03:10 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta1` - unknown; unknown

```console
$ docker pull postgres@sha256:b3e873a96dc7fa32087f1aebc72fd35d2a67f9dd849261685111fac9457014d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5179656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb5c2bc4ce3d7a140a104facb64d01630d32274da90982b8f28cfd9fb142392c`

```dockerfile
```

-	Layers:
	-	`sha256:34f717ac18e876a2e809eb53a3ff1146dc3ef378e7f9e361d1765ecd7c80156f`  
		Last Modified: Tue, 14 Jul 2026 02:03:06 GMT  
		Size: 5.1 MB (5128183 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8f46928bea9bcb0290deb2c29d84fc74fc04f05f8b93e7718e7920da990aad08`  
		Last Modified: Tue, 14 Jul 2026 02:03:06 GMT  
		Size: 51.5 KB (51473 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta1` - linux; arm variant v7

```console
$ docker pull postgres@sha256:bda2924ba4e6fa4c718d4d183ba0b8326ff93fa36d33fba077faa20b32f8b15b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.3 MB (88278507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52e008a0aad3e9b67f3d91275286848d1c0f38537a4568795a9af93f7b49ba0a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:52:42 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 14 Jul 2026 01:52:49 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:52:59 GMT
ENV GOSU_VERSION=1.19
# Tue, 14 Jul 2026 01:52:59 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 14 Jul 2026 01:53:06 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 14 Jul 2026 01:53:06 GMT
ENV LANG=en_US.utf8
# Tue, 14 Jul 2026 01:53:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:53:11 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 14 Jul 2026 01:53:12 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:53:12 GMT
ENV PG_MAJOR=19
# Tue, 14 Jul 2026 01:53:12 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Tue, 14 Jul 2026 01:53:12 GMT
ENV PG_VERSION=19~beta1-1.pgdg13+1
# Tue, 14 Jul 2026 02:06:05 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 14 Jul 2026 02:06:05 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 14 Jul 2026 02:06:05 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 14 Jul 2026 02:06:05 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Tue, 14 Jul 2026 02:06:05 GMT
VOLUME [/var/lib/postgresql]
# Tue, 14 Jul 2026 02:06:05 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 02:06:05 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 14 Jul 2026 02:06:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 02:06:05 GMT
STOPSIGNAL SIGINT
# Tue, 14 Jul 2026 02:06:05 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 14 Jul 2026 02:06:05 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:8b0c60fc22122a8e02a3c7dc27db46ec4b01b60e0c0959df8f52f036a5b48482`  
		Last Modified: Tue, 14 Jul 2026 00:14:43 GMT  
		Size: 26.2 MB (26206467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f25d63e239954bc7c3bcb7462ddfaa24aeb7bb769191471995b8194b7552e80`  
		Last Modified: Tue, 14 Jul 2026 02:06:17 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5d33ab7a35d3c58ea7cb9d09978bdf4e407f56c9ee63d06dc3fc743bfa59609`  
		Last Modified: Tue, 14 Jul 2026 02:06:18 GMT  
		Size: 5.5 MB (5497367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63eee8818e7d109dd92c48addc357d2e93e7428259f4c62e3a26ff5032bc0d68`  
		Last Modified: Tue, 14 Jul 2026 02:06:17 GMT  
		Size: 1.2 MB (1222392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6692d57694f290ddb7619e757ea52b1f2f2a34b8c708f890d0007f31167134c`  
		Last Modified: Tue, 14 Jul 2026 02:06:18 GMT  
		Size: 8.2 MB (8203996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:909512809dd92fd75cc9dc18b55f31b3d350b4876ef8ae894c73740e1ef4d59b`  
		Last Modified: Tue, 14 Jul 2026 02:06:19 GMT  
		Size: 1.2 MB (1172647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d419d4bf3a0f8a22ba8275a7a6bcbebc57497df70d2ba587111fb3f8fe7e458`  
		Last Modified: Tue, 14 Jul 2026 02:06:19 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f9c6ea4ec934a85a66f9fe38e8bc738431c2855efbbed1baf844446c24fcc7b`  
		Last Modified: Tue, 14 Jul 2026 02:06:19 GMT  
		Size: 3.1 KB (3139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e501f1ca08e13b1dbbb2ba9f979fbeb631df33d40db0ed21b5454727dbda0435`  
		Last Modified: Tue, 14 Jul 2026 02:06:21 GMT  
		Size: 45.9 MB (45943363 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6151c6384c1a20c5c4cf542ff21ec89107f1945a5271dbe23b2995ce9e472408`  
		Last Modified: Tue, 14 Jul 2026 02:06:20 GMT  
		Size: 21.4 KB (21431 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cb853ac39da91eefa522ca4f10205b838bcdc817b3d073e36c190669af8dee8`  
		Last Modified: Tue, 14 Jul 2026 02:06:20 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5d6787492db6e91a2c0dc90d364572228f476ab2369b7b9ee7f33f498d1435f`  
		Last Modified: Tue, 14 Jul 2026 02:06:21 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fc555a858c4658b7d5d485b57e0b56418778eb4300ff0dc9abffcd4ea4480d5`  
		Last Modified: Tue, 14 Jul 2026 02:06:22 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta1` - unknown; unknown

```console
$ docker pull postgres@sha256:edd80be63f832c2ec9a1344ff8601cbe2fe75dad93fa43429ae29f83d3993cab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5178961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b47835566d745bb06d6fe3befef43200dd5aa4c3526ab9d211474e99586389c0`

```dockerfile
```

-	Layers:
	-	`sha256:36b19e4b6f07584022b910241f28fca206ac7a9b09c46516df3c3b60a6a0a607`  
		Last Modified: Tue, 14 Jul 2026 02:06:18 GMT  
		Size: 5.1 MB (5127488 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ac78ed3768014ca8585492939fe685c10fc667d3d96f075f3be823df138b2ef4`  
		Last Modified: Tue, 14 Jul 2026 02:06:17 GMT  
		Size: 51.5 KB (51473 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta1` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:7d7e17259fd3ab7432f9970c07aa0dd08d196145849288e93686dca96c14f1eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.2 MB (162204131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45e9a59f2257b4f79306f0dd95dc1f5f7e4d7c6f750cfd1daf0e27a3102a16f7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:37:45 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 14 Jul 2026 01:37:51 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:37:58 GMT
ENV GOSU_VERSION=1.19
# Tue, 14 Jul 2026 01:37:58 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 14 Jul 2026 01:38:04 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 14 Jul 2026 01:38:04 GMT
ENV LANG=en_US.utf8
# Tue, 14 Jul 2026 01:38:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:38:08 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 14 Jul 2026 01:38:08 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:38:08 GMT
ENV PG_MAJOR=19
# Tue, 14 Jul 2026 01:38:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Tue, 14 Jul 2026 01:38:08 GMT
ENV PG_VERSION=19~beta1-1.pgdg13+1
# Tue, 14 Jul 2026 01:38:30 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 14 Jul 2026 01:38:30 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 14 Jul 2026 01:38:30 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 14 Jul 2026 01:38:30 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Tue, 14 Jul 2026 01:38:30 GMT
VOLUME [/var/lib/postgresql]
# Tue, 14 Jul 2026 01:38:30 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:38:30 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 14 Jul 2026 01:38:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 01:38:30 GMT
STOPSIGNAL SIGINT
# Tue, 14 Jul 2026 01:38:30 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 14 Jul 2026 01:38:30 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50ec301eece5f01213dca97c54ff3344795892fe04a8f550e9693120d4fe89d9`  
		Last Modified: Tue, 14 Jul 2026 01:38:50 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7b657a3c8276d08fecd6d7bbe99c9eafb17acff6c9d1705b06d62909ca34c15`  
		Last Modified: Tue, 14 Jul 2026 01:38:50 GMT  
		Size: 6.2 MB (6234976 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de2a53ec242b7e5910acc989382e90dda9f948c80f7a4e731e36d4185512f927`  
		Last Modified: Tue, 14 Jul 2026 01:38:50 GMT  
		Size: 1.2 MB (1209588 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65b31d4e6aa51181144a65dfd3f1cecc485b4c1d48a2748cd7cfcbe964e9ff0f`  
		Last Modified: Tue, 14 Jul 2026 01:38:50 GMT  
		Size: 8.2 MB (8203993 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba12b1ce53a56a90b034f88c21d7b141163255c026e80909c202778af61baf2a`  
		Last Modified: Tue, 14 Jul 2026 01:38:51 GMT  
		Size: 1.2 MB (1220631 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc399823d4c576a6683c4c9653a958d8e1535c31a1cf814594301cda10a8a890`  
		Last Modified: Tue, 14 Jul 2026 01:38:51 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a6cc1fc02e868971398a5976c725c605a0cb0848c3171a9e2e22c2231c7ab68`  
		Last Modified: Tue, 14 Jul 2026 01:38:51 GMT  
		Size: 3.1 KB (3138 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0a6f5dd4fd6ca582c0aff9ddabc34bd26e064bbf38efc27932e01e54822bdc1`  
		Last Modified: Tue, 14 Jul 2026 01:38:54 GMT  
		Size: 115.2 MB (115158983 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec07ecf3feef0c21e7a4d9fd1c813779b54dc4d3f27e663f68dca5a4eb0f8d9c`  
		Last Modified: Tue, 14 Jul 2026 01:38:52 GMT  
		Size: 21.4 KB (21417 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9101941babcc3a9cda24027ea2d7839daf0468384697ceebdc89c403b46aea7`  
		Last Modified: Tue, 14 Jul 2026 01:38:53 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c29baacb47befa2500145247dc909a49ace7bf7953795ff578f6154b343eb6a0`  
		Last Modified: Tue, 14 Jul 2026 01:38:53 GMT  
		Size: 6.1 KB (6106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3917bffbb112714a7aded2b9d01d6a9af5f36f8b2cac10d4ffffd2a2e5152f62`  
		Last Modified: Tue, 14 Jul 2026 01:38:53 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta1` - unknown; unknown

```console
$ docker pull postgres@sha256:c2b73a33ec430b0f6a178915c5aca3eab09a79553e905d0375aeb79ab443d727
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6055769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7314a3edcc209dc9c8178ca8f6ffd26953a0ff95c8eafb31e84e3258feb8aae5`

```dockerfile
```

-	Layers:
	-	`sha256:9d266d3e42d2bccfae48761b3b4cbbb816a047b0a474835df4009b501bfd6dff`  
		Last Modified: Tue, 14 Jul 2026 01:38:50 GMT  
		Size: 6.0 MB (6004256 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4597ab7be176e1bdf8d60f621ba0e5cc882be8d561eeab4bdb5058ed8ab9c663`  
		Last Modified: Tue, 14 Jul 2026 01:38:50 GMT  
		Size: 51.5 KB (51513 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta1` - linux; 386

```console
$ docker pull postgres@sha256:58e65fcc896a5bb4fdaf90c3aed8d1ec7ca4152852885629ed5202a42dd6f269
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.2 MB (98190088 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad3e1cdd5aeaa43e363aae63969b1785e582a5045870ef992f7f686d81fd5d36`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:32:23 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 14 Jul 2026 01:32:30 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:32:37 GMT
ENV GOSU_VERSION=1.19
# Tue, 14 Jul 2026 01:32:37 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 14 Jul 2026 01:32:43 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 14 Jul 2026 01:32:43 GMT
ENV LANG=en_US.utf8
# Tue, 14 Jul 2026 01:32:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:32:46 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 14 Jul 2026 01:32:47 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:32:47 GMT
ENV PG_MAJOR=19
# Tue, 14 Jul 2026 01:32:47 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Tue, 14 Jul 2026 01:32:47 GMT
ENV PG_VERSION=19~beta1-1.pgdg13+1
# Tue, 14 Jul 2026 01:42:07 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 14 Jul 2026 01:42:07 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 14 Jul 2026 01:42:07 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 14 Jul 2026 01:42:07 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Tue, 14 Jul 2026 01:42:07 GMT
VOLUME [/var/lib/postgresql]
# Tue, 14 Jul 2026 01:42:07 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:42:07 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 14 Jul 2026 01:42:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 01:42:07 GMT
STOPSIGNAL SIGINT
# Tue, 14 Jul 2026 01:42:07 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 14 Jul 2026 01:42:07 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:888c1464f6f5773681af0ae2a9d3a01263efa70f40fb61a274440aadc4c72f08`  
		Last Modified: Tue, 14 Jul 2026 00:14:49 GMT  
		Size: 31.3 MB (31296301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6de2523d113855300d3041691883f1fa0c81500c07a7b7bc85de04554dbdcf50`  
		Last Modified: Tue, 14 Jul 2026 01:42:19 GMT  
		Size: 1.2 KB (1164 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b75c9aff9c7ac5a3514ec70e6cf07ab2beb28ba4e9f330b56db023bfb799614`  
		Last Modified: Tue, 14 Jul 2026 01:42:20 GMT  
		Size: 6.6 MB (6631446 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbe7fe0006ed0123498f4481db21df5ef20da345ca8bbb4b0ee1e6bf37e6612c`  
		Last Modified: Tue, 14 Jul 2026 01:42:19 GMT  
		Size: 1.2 MB (1225878 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1442cbd042821ec30f404c2f5ff8af58a5c23ee830d4c9e7598bca2453ffa6c5`  
		Last Modified: Tue, 14 Jul 2026 01:42:20 GMT  
		Size: 8.2 MB (8204093 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6dafb7796829e2f962a05d987d436f6b5b8c5acc397fb4329727a297290b4d0f`  
		Last Modified: Tue, 14 Jul 2026 01:42:21 GMT  
		Size: 1.3 MB (1308257 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14f37543612f8625a16ae7ffa27b6c665965dc4e05a5b90e5b5d521520d2b426`  
		Last Modified: Tue, 14 Jul 2026 01:42:21 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a7a14a6b21952ce4a24d2d162cc3d2c46ba8044e3ec23b5d5bb783bfcdbc688`  
		Last Modified: Tue, 14 Jul 2026 01:42:21 GMT  
		Size: 3.1 KB (3143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35a8fdefe8f5896505bb8b86dd057d0d43c528cc808b71c6365e4cf48e6dbae3`  
		Last Modified: Tue, 14 Jul 2026 01:42:22 GMT  
		Size: 49.5 MB (49491847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6875c6322040e4b220c602bfec25cc6a3da311b4c938fa0ae4707bb7ba83d8e6`  
		Last Modified: Tue, 14 Jul 2026 01:42:22 GMT  
		Size: 21.4 KB (21421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:635463c5cf308824a5fd562657ff5b3072aa2fdefcb4eebb31e92f897cb7a49c`  
		Last Modified: Tue, 14 Jul 2026 01:42:22 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b831363db0a9d8835f199b5c45d4c78ae048732eecd4aae8ec27846a5b111de0`  
		Last Modified: Tue, 14 Jul 2026 01:42:22 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa36539a9c88e62cb84c3772a3e51d18532ed07fd2723e85c16b6fb716b710c9`  
		Last Modified: Tue, 14 Jul 2026 01:42:23 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta1` - unknown; unknown

```console
$ docker pull postgres@sha256:c8f10944f4113f6345e51fadd9f364814a01b240548f61e902f4e60ad3ad5be6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5174805 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:072ef0cca91eeb16ae21430f10dcfac8deb7aaf7e081fa086c769fdcbc63cb04`

```dockerfile
```

-	Layers:
	-	`sha256:1b7d6a79f8c554060926d26215d5d738b39ea013682d0be11b7ea275826cd610`  
		Last Modified: Tue, 14 Jul 2026 01:42:20 GMT  
		Size: 5.1 MB (5123568 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ddcc4f14751cd45169d748110ce586c915423ed84d0e8c4a7dc417352d2dda4a`  
		Last Modified: Tue, 14 Jul 2026 01:42:19 GMT  
		Size: 51.2 KB (51237 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta1` - linux; ppc64le

```console
$ docker pull postgres@sha256:1afb3ec5639c450f7b05c2ba5849c6ecdfde12c625606e95ec1b031bbe0aa5a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.1 MB (176123562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de7601321ab1889d35f7e63146e1de55e72e68b815f72f5f02db6d868aac3916`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 03:20:40 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 14 Jul 2026 03:21:38 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 03:22:04 GMT
ENV GOSU_VERSION=1.19
# Tue, 14 Jul 2026 03:22:04 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 14 Jul 2026 03:22:37 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 14 Jul 2026 03:22:37 GMT
ENV LANG=en_US.utf8
# Tue, 14 Jul 2026 03:22:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 03:22:53 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 14 Jul 2026 03:23:01 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 03:23:01 GMT
ENV PG_MAJOR=19
# Tue, 14 Jul 2026 03:23:01 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Tue, 14 Jul 2026 03:23:01 GMT
ENV PG_VERSION=19~beta1-1.pgdg13+1
# Tue, 14 Jul 2026 03:23:45 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 14 Jul 2026 03:23:45 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 14 Jul 2026 03:23:46 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 14 Jul 2026 03:23:46 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Tue, 14 Jul 2026 03:23:46 GMT
VOLUME [/var/lib/postgresql]
# Tue, 14 Jul 2026 03:23:46 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 03:23:46 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 14 Jul 2026 03:23:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 03:23:46 GMT
STOPSIGNAL SIGINT
# Tue, 14 Jul 2026 03:23:46 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 14 Jul 2026 03:23:46 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:27076b3f70881c54074231406139976969c9e0ed7ff938a5487429b06bbca171`  
		Last Modified: Tue, 14 Jul 2026 00:15:37 GMT  
		Size: 33.6 MB (33601478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:528340e6f9137a79d29c8777ba2ba9215a876641305db658c688d460ee3c3e61`  
		Last Modified: Tue, 14 Jul 2026 03:24:40 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:888a6d1239980559746256dcf2b4214dc91a77c7e2392507444f8c468412956f`  
		Last Modified: Tue, 14 Jul 2026 03:24:40 GMT  
		Size: 7.1 MB (7076932 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f68ab846bf47a21e885215e9ca9a78b155aa46f0f7a3470a5547d0cca1af3ff`  
		Last Modified: Tue, 14 Jul 2026 03:24:40 GMT  
		Size: 1.2 MB (1214846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e1017c13d76d577689676ae4fed73ecbae76952f2c7a90a4165ba79d4aa80f2`  
		Last Modified: Tue, 14 Jul 2026 03:24:40 GMT  
		Size: 8.2 MB (8204199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85e57459e08a149487d72a73ebb262b09d7590b852bb3ad4cb88bc67d26a30b1`  
		Last Modified: Tue, 14 Jul 2026 03:24:41 GMT  
		Size: 1.4 MB (1395048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4497e3c37730dc5e3ae4a2065c72d51540f99e8317e366adc1c646e75370fde0`  
		Last Modified: Tue, 14 Jul 2026 03:24:41 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf3b75633fb562efc4fb1531b0d87b76aecfa012fff9b263e9a445f8d2b8f2ad`  
		Last Modified: Tue, 14 Jul 2026 03:24:42 GMT  
		Size: 3.1 KB (3140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50a7b55ddcf3c1141bebe505ffb3bbf41ac0eb97b29905ba53cbdf336c703778`  
		Last Modified: Tue, 14 Jul 2026 03:24:45 GMT  
		Size: 124.6 MB (124598802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e463688f547eeae0c5b23372aa9aa4f0d9e0ba03ec0e5c52f29d077a2614f323`  
		Last Modified: Tue, 14 Jul 2026 03:24:43 GMT  
		Size: 21.4 KB (21412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae6770175e78e75f55663bc42df82469bb0a1d6a03193d31369f2d31e80bfb47`  
		Last Modified: Tue, 14 Jul 2026 03:24:43 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b08ecb3b38e5e42467efc472e87beb7d99d08f19456cb64380159fee7a1c743d`  
		Last Modified: Tue, 14 Jul 2026 03:24:43 GMT  
		Size: 6.1 KB (6109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc8bd1668a9c8f58f14aec34da206bb22a5f6e847c77ca00f36dff19614cd67a`  
		Last Modified: Tue, 14 Jul 2026 03:24:44 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta1` - unknown; unknown

```console
$ docker pull postgres@sha256:c910c10fda742bfc0e8c9cee8205d2f75b7ea4a23c1f958f883d703c9ff91019
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6055899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87fadd90931dbdfa66c25b3a0b78d9e2a81080ab2e303fbe72a6f8f3bc908ad7`

```dockerfile
```

-	Layers:
	-	`sha256:edaee68989efecbc367de61cdab4bfe86fe2a0b2b3e0c74534835d7d60750996`  
		Last Modified: Tue, 14 Jul 2026 03:24:40 GMT  
		Size: 6.0 MB (6004563 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e1e81e0f9f2f9740766eed19e17f1072105a3ca9f524c75dadbe156402e32f55`  
		Last Modified: Tue, 14 Jul 2026 03:24:40 GMT  
		Size: 51.3 KB (51336 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta1` - linux; riscv64

```console
$ docker pull postgres@sha256:728817015c557bdd4ec1bfc63904d4104bc131ee13c2e0b3399aad06138f2bef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.4 MB (93378681 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f20774f3a1422ef50f400a2fa55957ed492d915f806649eadd32ded677adf742`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1782172800'
# Thu, 25 Jun 2026 17:20:07 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 25 Jun 2026 17:21:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 25 Jun 2026 17:22:04 GMT
ENV GOSU_VERSION=1.19
# Thu, 25 Jun 2026 17:22:04 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 25 Jun 2026 17:23:05 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Thu, 25 Jun 2026 17:23:05 GMT
ENV LANG=en_US.utf8
# Wed, 08 Jul 2026 02:11:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 08 Jul 2026 02:11:25 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 08 Jul 2026 02:11:27 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 08 Jul 2026 02:11:27 GMT
ENV PG_MAJOR=19
# Wed, 08 Jul 2026 02:11:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Wed, 08 Jul 2026 02:11:27 GMT
ENV PG_VERSION=19~beta1-1.pgdg13+1
# Wed, 08 Jul 2026 04:21:27 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Wed, 08 Jul 2026 04:21:27 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 08 Jul 2026 04:21:28 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 08 Jul 2026 04:21:28 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Wed, 08 Jul 2026 04:21:28 GMT
VOLUME [/var/lib/postgresql]
# Wed, 08 Jul 2026 04:21:28 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 08 Jul 2026 04:21:29 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 08 Jul 2026 04:21:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Jul 2026 04:21:29 GMT
STOPSIGNAL SIGINT
# Wed, 08 Jul 2026 04:21:29 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 08 Jul 2026 04:21:29 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:58bface994ba631e609596a2ca5032d9d75de27f1b6476034b581e226205adab`  
		Last Modified: Wed, 24 Jun 2026 03:41:42 GMT  
		Size: 28.3 MB (28282378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6adbcc74bc464c350395b0ed6c1768df2fe221b068feb6158693ad4ec07cd00e`  
		Last Modified: Fri, 26 Jun 2026 19:26:26 GMT  
		Size: 1.2 KB (1170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d34ed43918633e51bd4b0dfe515e8421bf7b4d99c7a97135953368b017f8e34f`  
		Last Modified: Fri, 26 Jun 2026 19:26:28 GMT  
		Size: 6.3 MB (6293016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75577e804f36a67f7f9edf858af5711ac30d48485a836696cb03b019ecd36ac3`  
		Last Modified: Fri, 26 Jun 2026 19:26:26 GMT  
		Size: 1.2 MB (1202088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7531413cc31124ad057b4194a1eb2086a683b6b4d169970cf67852cdf74c7eb`  
		Last Modified: Fri, 26 Jun 2026 19:26:29 GMT  
		Size: 8.2 MB (8203759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bba9732299cd167f3c39e41322caab81ba4cf1dc97565a00066527c8b3f70dc4`  
		Last Modified: Wed, 08 Jul 2026 04:23:58 GMT  
		Size: 1.4 MB (1402450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:598126a52ab8a77eeae1d9a321485736e59a97fcf898a17f41e6d2e2e7547717`  
		Last Modified: Wed, 08 Jul 2026 04:23:57 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b530afb3ff5b8fa2d3298feb87d3e7567338d56610ec6284469f7e65b3619003`  
		Last Modified: Wed, 08 Jul 2026 04:23:57 GMT  
		Size: 3.1 KB (3141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19d39b0812cf126fc0143ca5af7f39029a6b0808318ddb2873fc0d6f2961c3eb`  
		Last Modified: Wed, 08 Jul 2026 04:24:06 GMT  
		Size: 48.0 MB (47962709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a649185e6fa97f65ad32ccf1f56267db94eb3925899bd68d34359b3c90a38ce5`  
		Last Modified: Wed, 08 Jul 2026 04:23:59 GMT  
		Size: 21.4 KB (21428 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d6fa2c755b7fd5905b57cdc66d9b0fa25b2e7fa1b605044580ce6b1e6d823f3`  
		Last Modified: Wed, 08 Jul 2026 04:23:59 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea6fdb2531df2ac219b566306fdfa40126eb88105a3cb844f9c4b4bfb0246905`  
		Last Modified: Wed, 08 Jul 2026 04:23:59 GMT  
		Size: 6.1 KB (6112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7702cfa53e2bf2da93e0d5e6bb71114f035050eff60eda9806975dda06dec1b`  
		Last Modified: Wed, 08 Jul 2026 04:24:00 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta1` - unknown; unknown

```console
$ docker pull postgres@sha256:a6c47f0ffbd63b9a706e79b0ba8ed92a1a355f601aa4b0c5f824db6c067f8fa5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5169741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97148d758dceb0f32c3d6dfbacf78e918f89bdda21ecfb6683cdc6f45d6366c5`

```dockerfile
```

-	Layers:
	-	`sha256:4c95971e4dd98535b2a8f9bd485081529bbd64fde0ca953669afda27fd127c87`  
		Last Modified: Wed, 08 Jul 2026 04:23:58 GMT  
		Size: 5.1 MB (5118410 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3231d5f3d88b6c6d4244315ad2f1bb865fc5ecf07fc453cc2ea862d5f6950eed`  
		Last Modified: Wed, 08 Jul 2026 04:23:57 GMT  
		Size: 51.3 KB (51331 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta1` - linux; s390x

```console
$ docker pull postgres@sha256:b4e025e43a2b87e25334ea0b01ee77ee156640cbdcab2ec109d16af79e818d25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.3 MB (178317878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b20c8d6ea1331a0689788e4564711bf7021f62647e8fd3a6640e18e7e5204845`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 02:18:19 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 14 Jul 2026 02:18:26 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:18:34 GMT
ENV GOSU_VERSION=1.19
# Tue, 14 Jul 2026 02:18:34 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 14 Jul 2026 02:18:40 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 14 Jul 2026 02:18:40 GMT
ENV LANG=en_US.utf8
# Tue, 14 Jul 2026 02:18:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:18:45 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 14 Jul 2026 02:18:45 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 02:18:45 GMT
ENV PG_MAJOR=19
# Tue, 14 Jul 2026 02:18:45 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Tue, 14 Jul 2026 02:18:45 GMT
ENV PG_VERSION=19~beta1-1.pgdg13+1
# Tue, 14 Jul 2026 02:34:11 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 14 Jul 2026 02:34:11 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 14 Jul 2026 02:34:11 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 14 Jul 2026 02:34:11 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Tue, 14 Jul 2026 02:34:11 GMT
VOLUME [/var/lib/postgresql]
# Tue, 14 Jul 2026 02:34:11 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 02:34:11 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 14 Jul 2026 02:34:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 02:34:11 GMT
STOPSIGNAL SIGINT
# Tue, 14 Jul 2026 02:34:11 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 14 Jul 2026 02:34:11 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:8b525274d0fff49aeaa3328d03c6a8b56b3b80d0a7a58034d99e75f1e2dad806`  
		Last Modified: Tue, 14 Jul 2026 00:17:35 GMT  
		Size: 29.8 MB (29846632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6855b7331f1fbb8f417d6d0cec55db043cb09185f547a4a01326538ce1d55268`  
		Last Modified: Tue, 14 Jul 2026 02:34:43 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:579583407fabdd8df1e66802a45354c6ae7e64f714c4275ed9337b8f8d2e3239`  
		Last Modified: Tue, 14 Jul 2026 02:34:44 GMT  
		Size: 6.4 MB (6408483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8b90040b218f1f4137ae093a18d4eb36d94d2e437d7f74b8d9ef7c36b2b49fa`  
		Last Modified: Tue, 14 Jul 2026 02:34:44 GMT  
		Size: 1.2 MB (1230232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:330161dac0cabcdbaf45b68a077b3d925d213c6cc575acd934ed29e17f0ceefd`  
		Last Modified: Tue, 14 Jul 2026 02:34:44 GMT  
		Size: 8.3 MB (8258970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9dd5923c882816bb3f77d238e71dca5a11fcad03d2de41f892aee0c394d857e4`  
		Last Modified: Tue, 14 Jul 2026 02:34:45 GMT  
		Size: 1.4 MB (1398242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fc21e04e42b685d7582a09fa95d0658b14b84298ef4683b7803514c860347f0`  
		Last Modified: Tue, 14 Jul 2026 02:34:45 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9343dc78628919543b56ae7ac7fa8cf7e809994f2dfef41900a11bf2d440ee94`  
		Last Modified: Tue, 14 Jul 2026 02:34:45 GMT  
		Size: 3.1 KB (3140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e6dcf6b67a7e772d02408690fea1337834eb14921deda2dceb868e5dfc0b2b4`  
		Last Modified: Tue, 14 Jul 2026 02:34:48 GMT  
		Size: 131.1 MB (131143052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68d3c95623e69b3980e0aae9badfdf6f51e018fec464fff0b0a95b6e85b2a97f`  
		Last Modified: Tue, 14 Jul 2026 02:34:46 GMT  
		Size: 21.4 KB (21420 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0680c55bbfab613f26435085b3c271f38e68decc419e86d7f1f381d9ceddfb40`  
		Last Modified: Tue, 14 Jul 2026 02:34:46 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d538498f80ef21ee859a1179758158649509fdb8bc94dfe4843949331948514b`  
		Last Modified: Tue, 14 Jul 2026 02:34:46 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:880cc03e1a2f8c12d3b1f67134e239246fbb375896fd2466cb0310944f295e60`  
		Last Modified: Tue, 14 Jul 2026 02:34:47 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta1` - unknown; unknown

```console
$ docker pull postgres@sha256:a412c1e881c05f40d7897b3a6509ab87db223d5f45019d2867205cf9b8dd8721
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6065893 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c71db332911cf62f6e97b3cd768b8817962ab08627c173bf02c74d7290c2cec`

```dockerfile
```

-	Layers:
	-	`sha256:08264d0ec14e7ed25bd9d3bdacbcd51bc10caec6fe2412bd6e9feacfadc64a97`  
		Last Modified: Tue, 14 Jul 2026 02:34:44 GMT  
		Size: 6.0 MB (6014609 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c19d851f3162550f5e5aa29f8d18869d913b05a0b2466877d5dec4570956be54`  
		Last Modified: Tue, 14 Jul 2026 02:34:44 GMT  
		Size: 51.3 KB (51284 bytes)  
		MIME: application/vnd.in-toto+json
