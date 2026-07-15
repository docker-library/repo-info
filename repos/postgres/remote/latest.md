## `postgres:latest`

```console
$ docker pull postgres@sha256:c2d42a104eb6b37b286a2d9c5cf83f349de4d6516d513d00a2bd9610e2c2e5e4
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

### `postgres:latest` - linux; amd64

```console
$ docker pull postgres@sha256:bb9940981eeb86356ec91bda430f8e0ba8729cc0b319615a2c2d7ac932fdf7bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.4 MB (162352149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:628c6a72022221842da0de6c791444ed6441cc55d8ffa44f1e55532d2949b6c8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:35:34 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 14 Jul 2026 01:35:38 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:35:44 GMT
ENV GOSU_VERSION=1.19
# Tue, 14 Jul 2026 01:35:44 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 14 Jul 2026 01:35:49 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 14 Jul 2026 01:35:49 GMT
ENV LANG=en_US.utf8
# Tue, 14 Jul 2026 01:35:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:35:52 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 14 Jul 2026 01:35:52 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:35:52 GMT
ENV PG_MAJOR=18
# Tue, 14 Jul 2026 01:35:52 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/18/bin
# Tue, 14 Jul 2026 01:35:52 GMT
ENV PG_VERSION=18.4-1.pgdg13+1
# Tue, 14 Jul 2026 01:36:07 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 14 Jul 2026 01:36:07 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 14 Jul 2026 01:36:07 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 14 Jul 2026 01:36:07 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Tue, 14 Jul 2026 01:36:07 GMT
VOLUME [/var/lib/postgresql]
# Tue, 14 Jul 2026 01:36:07 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:36:07 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 14 Jul 2026 01:36:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 01:36:07 GMT
STOPSIGNAL SIGINT
# Tue, 14 Jul 2026 01:36:07 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 14 Jul 2026 01:36:07 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f52977d31138fee94527973cacfd09060771009dc116922a7984cbd4c368ff50`  
		Last Modified: Tue, 14 Jul 2026 01:36:26 GMT  
		Size: 1.2 KB (1169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04c55e2e792927ee56d8e1043b87e5f19456cde3d9381b9352b93ca8b08efa60`  
		Last Modified: Tue, 14 Jul 2026 01:36:26 GMT  
		Size: 6.4 MB (6442947 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5730d97aa51a0a47bd86d8fd774741c0ee552faa098ad51a3478cee964e82d6c`  
		Last Modified: Tue, 14 Jul 2026 01:36:26 GMT  
		Size: 1.3 MB (1256704 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0e55a59176afd63528a2836b3d8b2888f7301772593058f9e7f400c694afecd`  
		Last Modified: Tue, 14 Jul 2026 01:36:26 GMT  
		Size: 8.2 MB (8203892 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83f6dfa1a575d0a56fdaa75f706e0f6fd688e6e95ca50c0fe3035d94036ee11e`  
		Last Modified: Tue, 14 Jul 2026 01:36:28 GMT  
		Size: 1.3 MB (1311644 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79dee934562d9508548c916abac41feaa675a295ee84a0fc9192007a4623eec3`  
		Last Modified: Tue, 14 Jul 2026 01:36:28 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:268866d5c357f89d6ff59974392efce58bf5535569236367633782a0dd3b19d7`  
		Last Modified: Tue, 14 Jul 2026 01:36:28 GMT  
		Size: 3.1 KB (3138 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf77237b9cbb1c6a55598b84a985a7756e94c9cf69e16574dd4e12eda915a367`  
		Last Modified: Tue, 14 Jul 2026 01:36:31 GMT  
		Size: 115.3 MB (115325896 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd17f3161a71b95e299ad2df2e2e53d841851e7a5b31a1d8c2481c015eaa18f2`  
		Last Modified: Tue, 14 Jul 2026 01:36:29 GMT  
		Size: 19.3 KB (19321 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59c75a9cd954d2ec2d41f5ac9b990d0f93383c4d72eed69e9a652dc6f912a847`  
		Last Modified: Tue, 14 Jul 2026 01:36:29 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05df998d206870afb94936eebce4553bd317ee41a5b8b30889501f8d4f33114b`  
		Last Modified: Tue, 14 Jul 2026 01:36:29 GMT  
		Size: 6.1 KB (6106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aea2a02764b1827c078b129ec9c93e26208831700903d25a8137611394c9ec21`  
		Last Modified: Tue, 14 Jul 2026 01:36:30 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:latest` - unknown; unknown

```console
$ docker pull postgres@sha256:c9ca91ff8e606b59deaf9f3c717cea74d26640c339d76cf2a298afc940fc72dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6009451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c289af815d4e431e73a10cb983209f6c694360bbcb0d2d1040af15deb1a00505`

```dockerfile
```

-	Layers:
	-	`sha256:e6535b11714e06bb4b34aac9666aeee5d603159b46a6e8289d71acf3c85a6739`  
		Last Modified: Tue, 14 Jul 2026 01:36:26 GMT  
		Size: 6.0 MB (5956993 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b318d407e1f4f3268699ab7cacab88eb51b105a160ce0e5b239ce89b13108089`  
		Last Modified: Tue, 14 Jul 2026 01:36:26 GMT  
		Size: 52.5 KB (52458 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:latest` - linux; arm variant v5

```console
$ docker pull postgres@sha256:8a3c2d2cf384266245f73bc3dbfd0d2c6410c2c85521d078fb78fed1b939a26f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.5 MB (91491427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ab70396101ebc3bfaafe6ed2acd463331d160184a0c3e001eb587b8065e220d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:49:44 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 14 Jul 2026 01:49:53 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:50:04 GMT
ENV GOSU_VERSION=1.19
# Tue, 14 Jul 2026 01:50:04 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 14 Jul 2026 01:50:12 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 14 Jul 2026 01:50:12 GMT
ENV LANG=en_US.utf8
# Tue, 14 Jul 2026 01:50:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:50:19 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 14 Jul 2026 01:50:20 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:50:20 GMT
ENV PG_MAJOR=18
# Tue, 14 Jul 2026 01:50:20 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/18/bin
# Tue, 14 Jul 2026 01:50:20 GMT
ENV PG_VERSION=18.4-1.pgdg13+1
# Tue, 14 Jul 2026 02:03:42 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 14 Jul 2026 02:03:42 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 14 Jul 2026 02:03:42 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 14 Jul 2026 02:03:42 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Tue, 14 Jul 2026 02:03:42 GMT
VOLUME [/var/lib/postgresql]
# Tue, 14 Jul 2026 02:03:42 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 02:03:42 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 14 Jul 2026 02:03:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 02:03:42 GMT
STOPSIGNAL SIGINT
# Tue, 14 Jul 2026 02:03:42 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 14 Jul 2026 02:03:42 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:9ce68cca63faf1f06434dd1423cb52db0d4251ee3f1838e43e5893fae28f9267`  
		Last Modified: Tue, 14 Jul 2026 00:14:26 GMT  
		Size: 28.0 MB (27954818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b50a1b49ba0523eba8be8c81aa64f6c216c99ebd7894972fdba85c637f2cb327`  
		Last Modified: Tue, 14 Jul 2026 02:03:56 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db775f945529e3975638c8f596b424f751b098970ea9d2e75fd8845d77c18243`  
		Last Modified: Tue, 14 Jul 2026 02:03:56 GMT  
		Size: 5.9 MB (5932366 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bac6bde5f1062a317a68ebdd06f1321a730fbae3af5b4e8c150fd8e774959a50`  
		Last Modified: Tue, 14 Jul 2026 02:03:56 GMT  
		Size: 1.2 MB (1227418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e97e754a3e68c0f116db6f24732ec11a81820783853275fe82b25a725da896cb`  
		Last Modified: Tue, 14 Jul 2026 02:04:00 GMT  
		Size: 8.2 MB (8204249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b12f3acb1b5600ce62ea84e63ffef38263439774263872f886fc0fffb973d76d`  
		Last Modified: Tue, 14 Jul 2026 02:03:57 GMT  
		Size: 1.3 MB (1317339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98b44cdeb8ec76421a7e19c9f01d2f7fed832b34cbe0a60e332d751af2d9bed4`  
		Last Modified: Tue, 14 Jul 2026 02:03:57 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab655053311542dc35fea9619d93bd3baad64dd644d24500510cb95551013706`  
		Last Modified: Tue, 14 Jul 2026 02:03:59 GMT  
		Size: 3.1 KB (3143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abf1d8108269dadf1c38339e4fd899ba4875063323f377b6cb9bfac95cb1ae6e`  
		Last Modified: Tue, 14 Jul 2026 02:04:01 GMT  
		Size: 46.8 MB (46825070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b0bf595a6734ca8b2ebcd679cf1e4d00f5b7c5cdc18f5e78532331a852ef157`  
		Last Modified: Tue, 14 Jul 2026 02:03:58 GMT  
		Size: 19.3 KB (19320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dd279a08fef2fc6532a92a5bcbf9de0a769544d0eb400cb62a334238ac31e78`  
		Last Modified: Tue, 14 Jul 2026 02:04:00 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f438bdf72f375acb8f99e3eb28fdf3ebe7f03e7fac56b5889805686591d090bc`  
		Last Modified: Tue, 14 Jul 2026 02:04:00 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b3f97d7f6824c1787a0bb82898c001b1b8df23bcf9e53a8251a413c5a8a2faa`  
		Last Modified: Tue, 14 Jul 2026 02:04:01 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:latest` - unknown; unknown

```console
$ docker pull postgres@sha256:982f4dd0ad2b15e14c6225c138fce47b75793e12df8fb45153e79aad0fcf3a5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5172815 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af43a73adf7b48288ccf2a681c476b6f4977b3e95c9e1671650dd3b2bddbdf8b`

```dockerfile
```

-	Layers:
	-	`sha256:48fac87e21cc0b4e88d1afe50924d2edd751e3a50124b7c3aa765334bc2fa96d`  
		Last Modified: Tue, 14 Jul 2026 02:03:56 GMT  
		Size: 5.1 MB (5120136 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1e9d6a9f3707f83fd2e1af1694fa5a5cacd39087940fae691dbbad0fd2228278`  
		Last Modified: Tue, 14 Jul 2026 02:03:56 GMT  
		Size: 52.7 KB (52679 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:latest` - linux; arm variant v7

```console
$ docker pull postgres@sha256:1b3841f44ebe41c23f2af7276d6b7320484b51b3ba0a001eddd65c2de4bb2063
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.8 MB (87800025 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c42293dbe0a1a1d879ad4845dec1ed5a5456701da123e0589f25ab28ad64dadc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 02:03:08 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 14 Jul 2026 02:03:16 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:03:25 GMT
ENV GOSU_VERSION=1.19
# Tue, 14 Jul 2026 02:03:25 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 14 Jul 2026 02:03:32 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 14 Jul 2026 02:03:32 GMT
ENV LANG=en_US.utf8
# Tue, 14 Jul 2026 02:03:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:03:37 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 14 Jul 2026 02:03:38 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 02:03:38 GMT
ENV PG_MAJOR=18
# Tue, 14 Jul 2026 02:03:38 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/18/bin
# Tue, 14 Jul 2026 02:03:38 GMT
ENV PG_VERSION=18.4-1.pgdg13+1
# Tue, 14 Jul 2026 02:15:41 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 14 Jul 2026 02:15:41 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 14 Jul 2026 02:15:42 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 14 Jul 2026 02:15:42 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Tue, 14 Jul 2026 02:15:42 GMT
VOLUME [/var/lib/postgresql]
# Tue, 14 Jul 2026 02:15:42 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 02:15:42 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 14 Jul 2026 02:15:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 02:15:42 GMT
STOPSIGNAL SIGINT
# Tue, 14 Jul 2026 02:15:42 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 14 Jul 2026 02:15:42 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:8b0c60fc22122a8e02a3c7dc27db46ec4b01b60e0c0959df8f52f036a5b48482`  
		Last Modified: Tue, 14 Jul 2026 00:14:43 GMT  
		Size: 26.2 MB (26206467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffce749d32c9278e5cee5f47fa4e758ca1689970e25335ad84eae9e3f5cc1dce`  
		Last Modified: Tue, 14 Jul 2026 02:15:54 GMT  
		Size: 1.2 KB (1169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5653a490fc4a4ecb5e7314b002a413ef4566cdcdd47eb8ebbbee36240a9d9360`  
		Last Modified: Tue, 14 Jul 2026 02:15:55 GMT  
		Size: 5.5 MB (5497329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:156f346d5f51597773da6027bc3bb981cd55458fa469f0e9156637a6fa552429`  
		Last Modified: Tue, 14 Jul 2026 02:15:55 GMT  
		Size: 1.2 MB (1222356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d42432d2e19273d59d74d915ff60223bd710fdca560907cf5f27bace5d2c6a60`  
		Last Modified: Tue, 14 Jul 2026 02:15:55 GMT  
		Size: 8.2 MB (8204009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d8686615a475fafa3649246c489ff948a3716e2c1c083864eb889877358d9db`  
		Last Modified: Tue, 14 Jul 2026 02:15:56 GMT  
		Size: 1.2 MB (1172637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f8fe5b6f5f2cc4cd4215ee500b4a9a49d57c4247b016cab648002538db7bda8`  
		Last Modified: Tue, 14 Jul 2026 02:15:56 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5484b53379c68c46dfb428ad6ed8c0e81ad13b50b72d072420b83a9e9644b73f`  
		Last Modified: Tue, 14 Jul 2026 02:15:56 GMT  
		Size: 3.1 KB (3140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec951670e9707b0f414113e96135f83676e552fdc6c66f0e6748f39716b77ad2`  
		Last Modified: Tue, 14 Jul 2026 02:15:58 GMT  
		Size: 45.5 MB (45467042 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30351aceb5e0fcba116c43823933d19780d0bed4464f0d741a21c4f95ebf231d`  
		Last Modified: Tue, 14 Jul 2026 02:15:57 GMT  
		Size: 19.3 KB (19336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6e497855faeddf2137f1bf40b9fa303d1f8a475f9c09d9ed00a98de22dc0212`  
		Last Modified: Tue, 14 Jul 2026 02:15:57 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb07dfa9b91770376b7e125a548eb111ebc90795d9ee5e1e8e2e41a5c48e954e`  
		Last Modified: Tue, 14 Jul 2026 02:15:57 GMT  
		Size: 6.1 KB (6109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8747f72809b687701188244311e51a7c70234db5baca832dcea3e5fd82f87de`  
		Last Modified: Tue, 14 Jul 2026 02:15:58 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:latest` - unknown; unknown

```console
$ docker pull postgres@sha256:f2826fd2990d8636f2e9e9345893903550263f766feecfd5b40a57366b78aa4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5172120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a538ce532da0abaee2ef0fcbeb5f6c5e93bb463588614c18215f3157c374271a`

```dockerfile
```

-	Layers:
	-	`sha256:797021650b7ce126418e59b1094bd122f157a9c2788afe098d61d4dd732d4dc7`  
		Last Modified: Tue, 14 Jul 2026 02:15:55 GMT  
		Size: 5.1 MB (5119441 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a50836d4fb1de911cfe90563bdf393d0c9a8715cb43038cb938d1b78f8785371`  
		Last Modified: Tue, 14 Jul 2026 02:15:54 GMT  
		Size: 52.7 KB (52679 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:latest` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:66ce5d10f42a7ea4ace5ebb37157dc3242b898b62e1de804376d90532c2baeaa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.0 MB (160957903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:854f52b31a4a2bbaec2f362c9006119d164817ad1d4bc456b7b84eeb2464c971`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:38:12 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 14 Jul 2026 01:38:19 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:38:26 GMT
ENV GOSU_VERSION=1.19
# Tue, 14 Jul 2026 01:38:26 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 14 Jul 2026 01:38:32 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 14 Jul 2026 01:38:32 GMT
ENV LANG=en_US.utf8
# Tue, 14 Jul 2026 01:38:35 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:38:35 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 14 Jul 2026 01:38:36 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:38:36 GMT
ENV PG_MAJOR=18
# Tue, 14 Jul 2026 01:38:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/18/bin
# Tue, 14 Jul 2026 01:38:36 GMT
ENV PG_VERSION=18.4-1.pgdg13+1
# Tue, 14 Jul 2026 01:38:54 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 14 Jul 2026 01:38:54 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 14 Jul 2026 01:38:54 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 14 Jul 2026 01:38:54 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Tue, 14 Jul 2026 01:38:54 GMT
VOLUME [/var/lib/postgresql]
# Tue, 14 Jul 2026 01:38:54 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:38:54 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 14 Jul 2026 01:38:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 01:38:54 GMT
STOPSIGNAL SIGINT
# Tue, 14 Jul 2026 01:38:54 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 14 Jul 2026 01:38:54 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61cc8892b22c825a4b4defb94beba2fdf062e2cc822d363d24631541c2bec4ef`  
		Last Modified: Tue, 14 Jul 2026 01:39:19 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3946fe62f160309d0c63588ef3f8d4cd50acceafc6ea130af5403714875e0a78`  
		Last Modified: Tue, 14 Jul 2026 01:39:14 GMT  
		Size: 6.2 MB (6235081 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a6340e1ae1bf9c3abe38c4f5931ed30d1f68d881f38131a0216abbcbd070eaa`  
		Last Modified: Tue, 14 Jul 2026 01:39:14 GMT  
		Size: 1.2 MB (1209628 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c71d7095e1935b98f9ca264ceb54c1768cd02cc7b518e845d8932e2a003700a5`  
		Last Modified: Tue, 14 Jul 2026 01:39:14 GMT  
		Size: 8.2 MB (8204073 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b7128462540bae6a38b7d415d843a15dcaf238374792a7849bcf51d918a11a5`  
		Last Modified: Tue, 14 Jul 2026 01:39:15 GMT  
		Size: 1.2 MB (1220626 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d298f362b989865b1bcbc202db9acf0cb0e4c171d4c4a82463a4116d02ffc58c`  
		Last Modified: Tue, 14 Jul 2026 01:39:15 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f84faa9805be4eabda77488ad9a836103adbc1d0bfa05b9976dc6e9310fb48d6`  
		Last Modified: Tue, 14 Jul 2026 01:39:16 GMT  
		Size: 3.1 KB (3140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b2b2b13a0f8778ce7227ec953fef72f8b0e06fe6e2731fd473e25d32c453ef7`  
		Last Modified: Tue, 14 Jul 2026 01:39:19 GMT  
		Size: 113.9 MB (113914623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee09029a5e8ee923d0863e7875314b9c36f784761ac04bf7c51557d28054ad21`  
		Last Modified: Tue, 14 Jul 2026 01:39:17 GMT  
		Size: 19.3 KB (19325 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ae2a4d58e3df6126de0a90e5e668ff2479bfddf0083c7764049745cd1740d5e`  
		Last Modified: Tue, 14 Jul 2026 01:39:17 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bd0504059303470151b862cbc8b06cf4b4a3c2214f748d6f7f4035b719cdb93`  
		Last Modified: Tue, 14 Jul 2026 01:39:18 GMT  
		Size: 6.1 KB (6107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ad9d79374726bf06d3686ad29d3a3f4e192661975624890022397bf1ddbe8f8`  
		Last Modified: Tue, 14 Jul 2026 01:39:19 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:latest` - unknown; unknown

```console
$ docker pull postgres@sha256:7b50a9a35523bf64e165c8f15acb2d26cbedb5fc94d83fbd40d54d3a80d0e64d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6016094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d48c8a05bde1b46e81e0bc947454ecedd8738e71870ba485cdecaa2800a9d8e`

```dockerfile
```

-	Layers:
	-	`sha256:f4ebfb1edd9b41a89df4896a46b49aae8b32ac0382d1f16974704ee4c08aba90`  
		Last Modified: Tue, 14 Jul 2026 01:39:14 GMT  
		Size: 6.0 MB (5963358 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9f679d5e123cd232c5123f1116124081b509ae7c514e8c164baa76d4188eb967`  
		Last Modified: Tue, 14 Jul 2026 01:39:14 GMT  
		Size: 52.7 KB (52736 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:latest` - linux; 386

```console
$ docker pull postgres@sha256:8a2cb16d8887dda1690a1415e65a3da9ecb137cd064d0f51e6a22fba0c2c9216
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.6 MB (97619617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dec36d2ec249a771331ba583e627ca4deed4a0d7fe6c9a1123721405ddc3ec5e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:33:05 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 14 Jul 2026 01:33:12 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:33:19 GMT
ENV GOSU_VERSION=1.19
# Tue, 14 Jul 2026 01:33:19 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 14 Jul 2026 01:33:25 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 14 Jul 2026 01:33:25 GMT
ENV LANG=en_US.utf8
# Tue, 14 Jul 2026 01:33:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:33:29 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 14 Jul 2026 01:33:29 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:33:29 GMT
ENV PG_MAJOR=18
# Tue, 14 Jul 2026 01:33:29 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/18/bin
# Tue, 14 Jul 2026 01:33:29 GMT
ENV PG_VERSION=18.4-1.pgdg13+1
# Tue, 14 Jul 2026 01:42:30 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 14 Jul 2026 01:42:30 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 14 Jul 2026 01:42:30 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 14 Jul 2026 01:42:30 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Tue, 14 Jul 2026 01:42:30 GMT
VOLUME [/var/lib/postgresql]
# Tue, 14 Jul 2026 01:42:30 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:42:30 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 14 Jul 2026 01:42:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 01:42:30 GMT
STOPSIGNAL SIGINT
# Tue, 14 Jul 2026 01:42:30 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 14 Jul 2026 01:42:30 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:888c1464f6f5773681af0ae2a9d3a01263efa70f40fb61a274440aadc4c72f08`  
		Last Modified: Tue, 14 Jul 2026 00:14:49 GMT  
		Size: 31.3 MB (31296301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c13f6dbee210b60d6a4ba98f6a1e2a3bfe8c7bcd5cef0201215e52e3622c2f1`  
		Last Modified: Tue, 14 Jul 2026 01:42:43 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68e6b4ac4e143879e6103fda61ffa308cdd2c53be032c1d6ef0a12affde0e376`  
		Last Modified: Tue, 14 Jul 2026 01:42:43 GMT  
		Size: 6.6 MB (6631427 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6c92e94e12ab8e04f4d9b4f0bf343677e69c6692cc3fdeb06f537c8b99b94b0`  
		Last Modified: Tue, 14 Jul 2026 01:42:43 GMT  
		Size: 1.2 MB (1225846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02ad802b301ebe3658ce0f3bbe1686195d91c8406b701b4c4e525ab40c6f6552`  
		Last Modified: Tue, 14 Jul 2026 01:42:43 GMT  
		Size: 8.2 MB (8204087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:659b465609be0177129f426aca1917e4fb07d37299aa2594a959908f02f5e09d`  
		Last Modified: Tue, 14 Jul 2026 01:42:44 GMT  
		Size: 1.3 MB (1308256 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0289d8e2c06558346d7496e55a8cc9f264755f5defb115602f11fc7f2ec81d8b`  
		Last Modified: Tue, 14 Jul 2026 01:42:44 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd6a884d9653b9547ec6f5e5db740e127e468af38040e2c969b5eed865701609`  
		Last Modified: Tue, 14 Jul 2026 01:42:44 GMT  
		Size: 3.1 KB (3140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc9dab2e105af8f99fa217dba79bd08dec5c37eef65a4217b483349237157931`  
		Last Modified: Tue, 14 Jul 2026 01:42:45 GMT  
		Size: 48.9 MB (48923535 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a268bb5db009f6c363323acf599e7ac0229d23fb4b4a95a878d8ac286cc6913c`  
		Last Modified: Tue, 14 Jul 2026 01:42:45 GMT  
		Size: 19.3 KB (19324 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82eef4eb2258bc455e3bfb0c79b429f8459bd5f383b4199d323ebf362b913354`  
		Last Modified: Tue, 14 Jul 2026 01:42:45 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5a78826a33ba2a75901869a52a58b24c1aa0c6ffbeb871591c4a0e7e8a80618`  
		Last Modified: Tue, 14 Jul 2026 01:42:46 GMT  
		Size: 6.1 KB (6109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dd286339c925823ef473e585b76c2002c86b5c071bd2f945c24210ae9dd78b6`  
		Last Modified: Tue, 14 Jul 2026 01:42:46 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:latest` - unknown; unknown

```console
$ docker pull postgres@sha256:a7be17e895260171ed8ae7ae10c5548f1314cf47130af9c6174e1c3f046b38a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5167860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:544ec9388d08b2b2427a15dbdfa241ca7f71ef516f34ca98c9cc0b43abaae3a6`

```dockerfile
```

-	Layers:
	-	`sha256:3eb0c7f4783c42e694c4c1dff5c1a2d8e546fa64c3144a6506eba3d0453afbd1`  
		Last Modified: Tue, 14 Jul 2026 01:42:43 GMT  
		Size: 5.1 MB (5115469 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c51d71f5e5b7d7a4317c5091f97c83e9fc176cbb6492d878344bc37878ecaba5`  
		Last Modified: Tue, 14 Jul 2026 01:42:43 GMT  
		Size: 52.4 KB (52391 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:latest` - linux; ppc64le

```console
$ docker pull postgres@sha256:63891c69bb8982546cd86f505db049918d19b4f7629650c521a74862ac79c45d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.8 MB (174767383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e60cea7cadeb89a54556e8f7068f50d49b18903b77a2dd53bfc02533a7827365`
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
ENV PG_MAJOR=18
# Tue, 14 Jul 2026 03:23:01 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/18/bin
# Tue, 14 Jul 2026 03:23:01 GMT
ENV PG_VERSION=18.4-1.pgdg13+1
# Tue, 14 Jul 2026 03:26:12 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 14 Jul 2026 03:26:14 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 14 Jul 2026 03:26:15 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 14 Jul 2026 03:26:15 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Tue, 14 Jul 2026 03:26:15 GMT
VOLUME [/var/lib/postgresql]
# Tue, 14 Jul 2026 03:26:18 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 03:26:24 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 14 Jul 2026 03:26:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 03:26:24 GMT
STOPSIGNAL SIGINT
# Tue, 14 Jul 2026 03:26:24 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 14 Jul 2026 03:26:24 GMT
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
	-	`sha256:01d41b09841d1d68eb367652708c2b4dfc024abaee31101dfe62c4e87733926c`  
		Last Modified: Tue, 14 Jul 2026 03:27:13 GMT  
		Size: 123.2 MB (123244710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b4e31e73cb8b828ee7bbaa25c00ea2ecd810ff2bbf346f154b7b96c8ad2f026`  
		Last Modified: Tue, 14 Jul 2026 03:27:10 GMT  
		Size: 19.3 KB (19326 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7152c41c3d042f43c2b6497104da427db60ca4d80c1f6c05003cc0f9f2c534f`  
		Last Modified: Tue, 14 Jul 2026 03:27:10 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5769826ab4e8cd61c6c25e2a7ec113932936bc64451506571f387bde5175571`  
		Last Modified: Tue, 14 Jul 2026 03:27:10 GMT  
		Size: 6.1 KB (6108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:996874ff63507d3dc0140a7609f1ed177c84c7016c3c499ee5b24727374d2027`  
		Last Modified: Tue, 14 Jul 2026 03:27:11 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:latest` - unknown; unknown

```console
$ docker pull postgres@sha256:e5e2b42a3bbf0f46d6a4cf8f5d542da5a214507f5d37eddbf825e7f729f23643
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6016175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd42c4fab5f012ba3f07b889246359c305c8d82da454ba1299adc903b0b8db0c`

```dockerfile
```

-	Layers:
	-	`sha256:e3789a1b6ae2f7f7c40c53cf7cf63206d06e379239b13197124cd778e7495491`  
		Last Modified: Tue, 14 Jul 2026 03:27:10 GMT  
		Size: 6.0 MB (5963641 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d46d75dda1c8026b101a4df996ec71e670433f4e28143ff4d64f4ffaaaca6bd5`  
		Last Modified: Tue, 14 Jul 2026 03:27:10 GMT  
		Size: 52.5 KB (52534 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:latest` - linux; riscv64

```console
$ docker pull postgres@sha256:c48ab7490a5badf33dd62fe9ec32ffa0130d1345ece1d37983a3bfecc66866ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.9 MB (92899371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d28a17747bdb21eae08f7f5c79eacb51cc88a698f377eecea4d5f25d5b77b35a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1783900800'
# Wed, 15 Jul 2026 04:04:45 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 15 Jul 2026 04:05:41 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 15 Jul 2026 04:06:40 GMT
ENV GOSU_VERSION=1.19
# Wed, 15 Jul 2026 04:06:40 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 15 Jul 2026 04:07:57 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Wed, 15 Jul 2026 04:07:57 GMT
ENV LANG=en_US.utf8
# Wed, 15 Jul 2026 04:08:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 15 Jul 2026 04:08:39 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 15 Jul 2026 04:08:41 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 15 Jul 2026 04:08:41 GMT
ENV PG_MAJOR=18
# Wed, 15 Jul 2026 04:08:41 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/18/bin
# Wed, 15 Jul 2026 04:08:41 GMT
ENV PG_VERSION=18.4-1.pgdg13+1
# Wed, 15 Jul 2026 08:23:05 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Wed, 15 Jul 2026 08:23:05 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 15 Jul 2026 08:23:06 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 15 Jul 2026 08:23:06 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Wed, 15 Jul 2026 08:23:06 GMT
VOLUME [/var/lib/postgresql]
# Wed, 15 Jul 2026 08:23:06 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 15 Jul 2026 08:23:06 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 15 Jul 2026 08:23:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 Jul 2026 08:23:06 GMT
STOPSIGNAL SIGINT
# Wed, 15 Jul 2026 08:23:06 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 15 Jul 2026 08:23:06 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:3ed37bd5491de4685b6418abd6b83c4b16cc06b7a51e46da7f154c5a149a41a5`  
		Last Modified: Tue, 14 Jul 2026 00:30:18 GMT  
		Size: 28.3 MB (28278203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cec99324b91a022f63379a702c52cfcc25131c21fa4bc21c72f7925e792a25cc`  
		Last Modified: Wed, 15 Jul 2026 06:20:21 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:900f5cbf166d34914d29e677fc7643a1d365cac7134fe6df7460f6fc994080d1`  
		Last Modified: Wed, 15 Jul 2026 06:20:23 GMT  
		Size: 6.3 MB (6293001 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3acfc4402bdc1ce55fba4f508b117180e5e873ae860f2d781efffdc0f614ba4`  
		Last Modified: Wed, 15 Jul 2026 06:20:22 GMT  
		Size: 1.2 MB (1202068 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db23a506d07e708aba1c3ce47a8d977e073654ab86b540bf10b5ca8618fdc4a1`  
		Last Modified: Wed, 15 Jul 2026 06:20:24 GMT  
		Size: 8.2 MB (8203771 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ffe7f0f66d60c804e9e76a7b645cebb1219415c03871b063f9e070973826af1`  
		Last Modified: Wed, 15 Jul 2026 06:20:24 GMT  
		Size: 1.4 MB (1402426 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b08f1db52e5f1906a7ada49d7fa2ae7a13689b9fa9d95c0b66193e9b24ba28f3`  
		Last Modified: Wed, 15 Jul 2026 06:20:24 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52866da3f27ac3ae4ae5e07561e8d253c155464a6f3ef616d0501fceea6cf778`  
		Last Modified: Wed, 15 Jul 2026 06:20:25 GMT  
		Size: 3.1 KB (3139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11b255e5b59a9509c4feee02eb3afff1a0b0dd4eb9fcbc9fb21520725167716e`  
		Last Modified: Wed, 15 Jul 2026 08:25:40 GMT  
		Size: 47.5 MB (47489725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f6656cbfadf2a8c12ca18ff1a5bda4377a9ea0fcc47850325a187fcdbadd325`  
		Last Modified: Wed, 15 Jul 2026 08:25:32 GMT  
		Size: 19.3 KB (19338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c146da76df529365eedaf2ba7be40d403f48aa7983d402e5e595d862ffc2d210`  
		Last Modified: Wed, 15 Jul 2026 08:25:32 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d715baa600c1d153d670403422537c79b612a934e0ed58cfa8fd0a4775189609`  
		Last Modified: Wed, 15 Jul 2026 08:25:32 GMT  
		Size: 6.1 KB (6108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f857c66d74ab32897d8abaee251af10ee98f514d870f39e9cc6e63955572af9`  
		Last Modified: Wed, 15 Jul 2026 08:25:34 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:latest` - unknown; unknown

```console
$ docker pull postgres@sha256:493b219849d613884b23bb553ca9bc0158366088c2837d319ec19a3b8ff9c34c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5162937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81dba357644d630965eaaeae4b915c90e0ea55a23ca7fd68e7d487e31653032f`

```dockerfile
```

-	Layers:
	-	`sha256:3a0848ce7f26efff8f769e446da46bdc6639ef522409c6e470dba2051534e5d9`  
		Last Modified: Wed, 15 Jul 2026 08:25:33 GMT  
		Size: 5.1 MB (5110409 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dba2fa56ad644374e487b973f950126b15647afa7b3d9d79b57cbac1dc4b3970`  
		Last Modified: Wed, 15 Jul 2026 08:25:32 GMT  
		Size: 52.5 KB (52528 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:latest` - linux; s390x

```console
$ docker pull postgres@sha256:4f18db7702ecd156a838954aafe321520a202905f166379994a1bc6cd613cc11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.0 MB (177005048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ffc44752f7334c140bf1af78884019ef53bef11413cfd90fdd569ef774712c6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 02:20:52 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 14 Jul 2026 02:20:58 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:21:05 GMT
ENV GOSU_VERSION=1.19
# Tue, 14 Jul 2026 02:21:05 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 14 Jul 2026 02:21:11 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 14 Jul 2026 02:21:11 GMT
ENV LANG=en_US.utf8
# Tue, 14 Jul 2026 02:21:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:21:16 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 14 Jul 2026 02:21:16 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 02:21:16 GMT
ENV PG_MAJOR=18
# Tue, 14 Jul 2026 02:21:16 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/18/bin
# Tue, 14 Jul 2026 02:21:16 GMT
ENV PG_VERSION=18.4-1.pgdg13+1
# Tue, 14 Jul 2026 02:35:59 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 14 Jul 2026 02:35:59 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 14 Jul 2026 02:35:59 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 14 Jul 2026 02:35:59 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Tue, 14 Jul 2026 02:35:59 GMT
VOLUME [/var/lib/postgresql]
# Tue, 14 Jul 2026 02:35:59 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 02:35:59 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 14 Jul 2026 02:35:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Jul 2026 02:35:59 GMT
STOPSIGNAL SIGINT
# Tue, 14 Jul 2026 02:35:59 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 14 Jul 2026 02:35:59 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:8b525274d0fff49aeaa3328d03c6a8b56b3b80d0a7a58034d99e75f1e2dad806`  
		Last Modified: Tue, 14 Jul 2026 00:17:35 GMT  
		Size: 29.8 MB (29846632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8731c6eab02563978795ef7dcb61f1b7d3e3d17db94434ffc0e696ac819bac50`  
		Last Modified: Tue, 14 Jul 2026 02:36:30 GMT  
		Size: 1.2 KB (1169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf1d09c2aed72ff1aaf77eb77106eaf5a4587d2a6dd108e9ddfe52e4ce607e59`  
		Last Modified: Tue, 14 Jul 2026 02:36:31 GMT  
		Size: 6.4 MB (6408430 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aebcf2fb3ee518ad56b8126eaa02f526769af7576253289f76588707356a1609`  
		Last Modified: Tue, 14 Jul 2026 02:36:30 GMT  
		Size: 1.2 MB (1230209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9aa98228335015d0bc7e58bb7826bffdfb1ae859c90320d8e02087180d41ac8`  
		Last Modified: Tue, 14 Jul 2026 02:36:31 GMT  
		Size: 8.3 MB (8258966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e56f537e641373d70e655c471c9fdb9a1e191b2575ce234fb2ba7f291588a67`  
		Last Modified: Tue, 14 Jul 2026 02:36:32 GMT  
		Size: 1.4 MB (1398239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af36b660a24b285550c22f1aa50c34a1b082543fc6120d596d30f3ca4dc6a3be`  
		Last Modified: Tue, 14 Jul 2026 02:36:32 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80612ecde87cbacb7783286c57f9b1c7f23a0613aa1028ff8bc7a1ef4d8312e9`  
		Last Modified: Tue, 14 Jul 2026 02:36:32 GMT  
		Size: 3.1 KB (3140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb0cffc7ec333551795b1a50ac12480018201d3a5f9995ae369a975800631ced`  
		Last Modified: Tue, 14 Jul 2026 02:36:35 GMT  
		Size: 129.8 MB (129832399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7af5a87bcb88a54eee83f1cb2adb403267b9741d2decb36d4ac129d41e63c797`  
		Last Modified: Tue, 14 Jul 2026 02:36:33 GMT  
		Size: 19.3 KB (19329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8035fbef47352060c98e0d9b9301d4b9eab87bc6f0f1e2ffdfdedf977b29a00`  
		Last Modified: Tue, 14 Jul 2026 02:36:33 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70a070d89ef2cbfdd7d0261ebc05bc808e815c9423f123092203f35462738b0e`  
		Last Modified: Tue, 14 Jul 2026 02:36:33 GMT  
		Size: 6.1 KB (6109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41e953823776f77c0eb8dcc8b5bbc5525cd8e173a82d10f73c16b073bc967a0a`  
		Last Modified: Tue, 14 Jul 2026 02:36:34 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:latest` - unknown; unknown

```console
$ docker pull postgres@sha256:46ee6e8286566fc06c41aaacf08e2feb643a3af569cca5d4e879447c2accb399
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6026121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9a508eea6278aa73db7a5e9f59d61dcd1832a084a5cb3c0a61757005f149cb3`

```dockerfile
```

-	Layers:
	-	`sha256:fd048bff3231d8dd2d15f58214d0b8df8d4f9f99e58a40be5ed6ed8b6a75b4b5`  
		Last Modified: Tue, 14 Jul 2026 02:36:31 GMT  
		Size: 6.0 MB (5973663 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:20a524191d620ba2de85457cd421aeaca3791cc2741aec72a91325dfddb31773`  
		Last Modified: Tue, 14 Jul 2026 02:36:30 GMT  
		Size: 52.5 KB (52458 bytes)  
		MIME: application/vnd.in-toto+json
