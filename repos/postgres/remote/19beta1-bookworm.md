## `postgres:19beta1-bookworm`

```console
$ docker pull postgres@sha256:15981c4dac43f4cff29eabe3bc0fe424fb31f445d72aca8378c6a0bef48b42fb
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
	-	linux; mips64le
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `postgres:19beta1-bookworm` - linux; amd64

```console
$ docker pull postgres@sha256:f71148f4ebbebcb88d092d770c75ef76fbe15ab2b080d163b0a0fd0795108a2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.5 MB (158470949 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a10628cc8e4a33b825267652f95bced2efca59f4cee3d74c4325ed7452f1cf7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1782172800'
# Tue, 07 Jul 2026 17:43:38 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 07 Jul 2026 17:43:42 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 17:43:48 GMT
ENV GOSU_VERSION=1.19
# Tue, 07 Jul 2026 17:43:48 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 07 Jul 2026 17:43:53 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 07 Jul 2026 17:43:53 GMT
ENV LANG=en_US.utf8
# Tue, 07 Jul 2026 17:43:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 17:43:56 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 07 Jul 2026 17:43:56 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 07 Jul 2026 17:43:56 GMT
ENV PG_MAJOR=19
# Tue, 07 Jul 2026 17:43:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Tue, 07 Jul 2026 17:43:56 GMT
ENV PG_VERSION=19~beta1-1.pgdg12+1
# Tue, 07 Jul 2026 17:44:16 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 07 Jul 2026 17:44:16 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 07 Jul 2026 17:44:17 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 07 Jul 2026 17:44:17 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Tue, 07 Jul 2026 17:44:17 GMT
VOLUME [/var/lib/postgresql]
# Tue, 07 Jul 2026 17:44:17 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 17:44:17 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 07 Jul 2026 17:44:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 17:44:17 GMT
STOPSIGNAL SIGINT
# Tue, 07 Jul 2026 17:44:17 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 07 Jul 2026 17:44:17 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:68629629b516c3cd6f5e71ffbe18e32afb1ae5b4926c92d058c0f11ef1fd58a3`  
		Last Modified: Wed, 24 Jun 2026 00:27:52 GMT  
		Size: 28.2 MB (28237639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45863edef589ae1d6afb839410f0620172cd380c909e6b076a7cd4b5997ce32d`  
		Last Modified: Tue, 07 Jul 2026 17:44:36 GMT  
		Size: 1.2 KB (1171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d368f68c88be9f2b22f246f7393cfbf99dfaacadf5fbf0ab5d7204ad512aa0b6`  
		Last Modified: Tue, 07 Jul 2026 17:44:37 GMT  
		Size: 4.5 MB (4534240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1568c517f90f83bea1baa933b9234c18a58c7c1bae9207b6e395ca86e9770b88`  
		Last Modified: Tue, 07 Jul 2026 17:44:36 GMT  
		Size: 1.2 MB (1249515 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c9ee9901b987568a94685d7d474a6692d61ad10de89c9c30926dfbc0382189d`  
		Last Modified: Tue, 07 Jul 2026 17:44:36 GMT  
		Size: 8.1 MB (8066411 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbc48c6209c23b696ead5818b42364ff679c8e745a5acf4089b58d0de857dded`  
		Last Modified: Tue, 07 Jul 2026 17:44:37 GMT  
		Size: 1.2 MB (1196395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6c70d152cf56abb1782533477e962e3d41078c0a2007b1c55098419a0b711f4`  
		Last Modified: Tue, 07 Jul 2026 17:44:37 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:342217ad14721d348754102a127179b35eace65d4cfb35252e24e8bfada64122`  
		Last Modified: Tue, 07 Jul 2026 17:44:38 GMT  
		Size: 3.1 KB (3141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b50f8d83b85b39d547696d6c62f2b704161e44b8caf3418212abc0ada05b8add`  
		Last Modified: Tue, 07 Jul 2026 17:44:41 GMT  
		Size: 115.2 MB (115154579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f1af24be2c1e75af861f9b09bc13097a77710dcc29137c7fc3ced75336a38e9`  
		Last Modified: Tue, 07 Jul 2026 17:44:39 GMT  
		Size: 21.3 KB (21319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdf302acde9df072ed5850326ae30f5feef6b8c4ec9b9a381a651fa286d84ec0`  
		Last Modified: Tue, 07 Jul 2026 17:44:39 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdbbe95384ac51cf9b3339a2dde6f2d3194e3c6e68c7921d981d243242f0a688`  
		Last Modified: Tue, 07 Jul 2026 17:44:39 GMT  
		Size: 6.1 KB (6109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3de5427c806fd210f0cd0368d82cfbbb2c33a71ea6334b9830b69ccb594c5e1e`  
		Last Modified: Tue, 07 Jul 2026 17:44:40 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta1-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:b8466812a16a4cd324cfb2fb2cceb0c296c444df14724e0f7bb063d600aeaec0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6249063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ac836b126faab454a33a42e02ef80e20e6b2601754762bd543c94e4409a023c`

```dockerfile
```

-	Layers:
	-	`sha256:b0fa0d6b398bbbad721a3468ca4e8c591cfa6c8d6a0c362cd2d605e207a03823`  
		Last Modified: Tue, 07 Jul 2026 17:44:36 GMT  
		Size: 6.2 MB (6198061 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d1d44c1739eb91da102855b0f3f69096e27738ad9e729aaf4980dbd1d423d5fc`  
		Last Modified: Tue, 07 Jul 2026 17:44:36 GMT  
		Size: 51.0 KB (51002 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta1-bookworm` - linux; arm variant v5

```console
$ docker pull postgres@sha256:f3b1db0e8877a3f309e7015cf849f633782691d0ed9bad32cd06aa7e446737eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.8 MB (87768486 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c45cdc45b6b9cb2e4ddf510a4c2a62d542b28a9a80bb142c9a6ade8b4b241ca`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'bookworm' '@1782172800'
# Tue, 07 Jul 2026 17:43:21 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 07 Jul 2026 17:43:28 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 17:43:37 GMT
ENV GOSU_VERSION=1.19
# Tue, 07 Jul 2026 17:43:37 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 07 Jul 2026 17:43:44 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 07 Jul 2026 17:43:44 GMT
ENV LANG=en_US.utf8
# Tue, 07 Jul 2026 17:43:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 17:43:50 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 07 Jul 2026 17:43:51 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 07 Jul 2026 17:43:51 GMT
ENV PG_MAJOR=19
# Tue, 07 Jul 2026 17:43:51 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Tue, 07 Jul 2026 17:43:51 GMT
ENV PG_VERSION=19~beta1-1.pgdg12+1
# Tue, 07 Jul 2026 17:56:24 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 07 Jul 2026 17:56:24 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 07 Jul 2026 17:56:25 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 07 Jul 2026 17:56:25 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Tue, 07 Jul 2026 17:56:25 GMT
VOLUME [/var/lib/postgresql]
# Tue, 07 Jul 2026 17:56:25 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 17:56:25 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 07 Jul 2026 17:56:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 17:56:25 GMT
STOPSIGNAL SIGINT
# Tue, 07 Jul 2026 17:56:25 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 07 Jul 2026 17:56:25 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:56a07f407b343196efb8a614d5b61dad4cbe8fd8c8e97a11342cd7a61eadc02c`  
		Last Modified: Wed, 24 Jun 2026 00:27:42 GMT  
		Size: 25.8 MB (25773229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d6c7dfde9c29f464651a27dba875d98ce3c451c52ff7d25dc31fd401e379499`  
		Last Modified: Tue, 07 Jul 2026 17:56:38 GMT  
		Size: 1.2 KB (1169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:632065003aa2c39adac102692311b47e14f515b74c15741a19736ddfd040c5ce`  
		Last Modified: Tue, 07 Jul 2026 17:56:38 GMT  
		Size: 4.2 MB (4151338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03d8cbf64ae3168698b177de2db13186746e6a8fd5fbb39ff023171a87660b61`  
		Last Modified: Tue, 07 Jul 2026 17:56:38 GMT  
		Size: 1.2 MB (1220121 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f1e371b5235fd6a7a6f6e81a8426af115c1c6d3533c913fa0337adbffdf3133`  
		Last Modified: Tue, 07 Jul 2026 17:56:38 GMT  
		Size: 8.1 MB (8066578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfd37b225f3bfdfbf0b45b49eb934a83490b59a23a94a905ce1b77af3130aa75`  
		Last Modified: Tue, 07 Jul 2026 17:56:39 GMT  
		Size: 1.2 MB (1195090 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:704e2924d1237acdc1f05b0d31a6751ad9ff386a7f2423230bea561beea425bc`  
		Last Modified: Tue, 07 Jul 2026 17:44:28 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02c43bc2ca66a243a0e8976bab0a60f11d36f494b08737e23ddb24a812d53740`  
		Last Modified: Tue, 07 Jul 2026 17:56:39 GMT  
		Size: 3.1 KB (3142 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:601df32ce4f8a167a41b34a464377e69f3e9edc8f92f2e33345ac08904644444`  
		Last Modified: Tue, 07 Jul 2026 17:56:40 GMT  
		Size: 47.3 MB (47329959 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2957fb636bcc0b1eccc58169fd476271b841b643ec4edbf9209527ca42d0cdcf`  
		Last Modified: Tue, 07 Jul 2026 17:56:40 GMT  
		Size: 21.3 KB (21318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad0c01adde29892de2564215438a282abc9550bd6732f0d4169c44a11abb5eb4`  
		Last Modified: Tue, 07 Jul 2026 17:56:40 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f58123fc0778ecb1c0f0a9fa0db77ae0ecd54b3109203450dbafc82d43cf3ddd`  
		Last Modified: Tue, 07 Jul 2026 17:56:40 GMT  
		Size: 6.1 KB (6112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:496dcf1a24eb4e9d90538728ec22675c6f4382e83c4e51cfbee9ccae8dd173cc`  
		Last Modified: Tue, 07 Jul 2026 17:56:41 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta1-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:1a484c8d864c25315e043217b039bd2b4382441c980e7ae95042eff8cbee3861
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5376880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69b80abaae100d520f3c7061046238a7f7a0b4b9f81294e9eadb7934598d9f16`

```dockerfile
```

-	Layers:
	-	`sha256:4d34f498bcafa0423ad53fa68b78af7b04d80cba13638e418542ff735c0908f1`  
		Last Modified: Tue, 07 Jul 2026 17:56:38 GMT  
		Size: 5.3 MB (5325697 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a65dc492c84689e0a7b6460b296c2723715a1a9219dfe44724520223b24b192e`  
		Last Modified: Tue, 07 Jul 2026 17:56:37 GMT  
		Size: 51.2 KB (51183 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta1-bookworm` - linux; arm variant v7

```console
$ docker pull postgres@sha256:1b44cbd8c1cb2b32465d36a7591321e0b0a93239a77960d07e2d6987b2e187b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.8 MB (83845782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:675d531a396d140b236583ee4eedafb5d2f4894ff38a3335290d7e52292d7995`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1782172800'
# Tue, 07 Jul 2026 18:00:42 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 07 Jul 2026 18:00:48 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 18:00:55 GMT
ENV GOSU_VERSION=1.19
# Tue, 07 Jul 2026 18:00:55 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 07 Jul 2026 18:01:01 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 07 Jul 2026 18:01:01 GMT
ENV LANG=en_US.utf8
# Tue, 07 Jul 2026 18:01:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 18:01:04 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 07 Jul 2026 18:01:05 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 07 Jul 2026 18:01:05 GMT
ENV PG_MAJOR=19
# Tue, 07 Jul 2026 18:01:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Tue, 07 Jul 2026 18:01:05 GMT
ENV PG_VERSION=19~beta1-1.pgdg12+1
# Tue, 07 Jul 2026 18:13:06 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 07 Jul 2026 18:13:06 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 07 Jul 2026 18:13:06 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 07 Jul 2026 18:13:06 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Tue, 07 Jul 2026 18:13:06 GMT
VOLUME [/var/lib/postgresql]
# Tue, 07 Jul 2026 18:13:06 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 18:13:06 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 07 Jul 2026 18:13:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 18:13:06 GMT
STOPSIGNAL SIGINT
# Tue, 07 Jul 2026 18:13:06 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 07 Jul 2026 18:13:06 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:0ead8fe4feab98996b3feb5f196406b6d02e126a6955d96078d2f12294dacb62`  
		Last Modified: Wed, 24 Jun 2026 00:27:49 GMT  
		Size: 23.9 MB (23944532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:449083f51047a8dc27b4d4231d70d1cffdeb49e154c3aaca4359474bdd80b512`  
		Last Modified: Tue, 07 Jul 2026 18:13:18 GMT  
		Size: 1.2 KB (1171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a55c6e894f2f6b3f4b2bfa5219b2cecd672eccc0c9941eff2bf3ef302e4a76f7`  
		Last Modified: Tue, 07 Jul 2026 18:13:19 GMT  
		Size: 3.7 MB (3742696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adfee9a98dfaaae1616c97cf0f31b598370d5879f8117de432f42594876ffc83`  
		Last Modified: Tue, 07 Jul 2026 18:13:19 GMT  
		Size: 1.2 MB (1216045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c104a4985c2ff8a7deb32e26b106662b080143bc0a030f2d9f78052728aaed8b`  
		Last Modified: Tue, 07 Jul 2026 18:13:19 GMT  
		Size: 8.1 MB (8066416 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e80d72b766b984da66337291b0ba748b0c132e29fec612ed74695277159b884c`  
		Last Modified: Tue, 07 Jul 2026 18:13:20 GMT  
		Size: 1.1 MB (1067289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fdf46ecb52a20bada61f5f4504b389be5e9a2e39210db8fa08e6282b05c9d70`  
		Last Modified: Tue, 07 Jul 2026 18:13:20 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:935721b6b07b75c9ffb8f4b7dba67197e17c85b16e7e01f063bbd97888922a8e`  
		Last Modified: Tue, 07 Jul 2026 18:13:20 GMT  
		Size: 3.1 KB (3143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8911fd0a4b083a4b13c4d81b4d0c089ebf7819ad6f28bc72a7b8e44df2b383b`  
		Last Modified: Tue, 07 Jul 2026 18:13:22 GMT  
		Size: 45.8 MB (45776625 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d6e060d0c48fed40b93b4cfe036f585b800bc8c4ff97b6ae97ab40853bdf626`  
		Last Modified: Tue, 07 Jul 2026 18:13:21 GMT  
		Size: 21.3 KB (21322 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:971fd40dfba2d59f96d48bee5e7ae7d7c73eea275ae5a6f829e6fcca87a7a202`  
		Last Modified: Tue, 07 Jul 2026 18:13:22 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f32daf176251655c32f6993a491ab8fab50656157f764d16a7b790f14bb99bc4`  
		Last Modified: Tue, 07 Jul 2026 18:13:22 GMT  
		Size: 6.1 KB (6113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:686e736b1ba47cac1efabaaf920569b60b106e631d3ae6bc41418ee5e18cef90`  
		Last Modified: Tue, 07 Jul 2026 18:13:23 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta1-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:1731217f444b7701b0fbb0679d28b8a3822a8595c9a3e610c9acbe33d68bde8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5376130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b10d60940942bac02db3b4e7317ba794e1b258c71092b6bc5607469b3980968a`

```dockerfile
```

-	Layers:
	-	`sha256:73d279b1dcb1a0a0b7edf2fdc17c6285f88c1c9ad60a4770941c884d40a5209e`  
		Last Modified: Tue, 07 Jul 2026 18:13:19 GMT  
		Size: 5.3 MB (5324948 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8766456226b3a15248ad6e6341fcac122bef9a2d7c87339023687f40fc9a838e`  
		Last Modified: Tue, 07 Jul 2026 18:13:18 GMT  
		Size: 51.2 KB (51182 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta1-bookworm` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:f5f710c7d69885070ff1769af1e4f298806b50cc5de37f7f7c96506ff942a3b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.4 MB (156419809 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23ed2923cf8764c20d5e977ef98bd7f5cf0ca11ec30526bece0986e8e4a77418`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1782172800'
# Tue, 07 Jul 2026 17:43:13 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 07 Jul 2026 17:43:17 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 17:43:23 GMT
ENV GOSU_VERSION=1.19
# Tue, 07 Jul 2026 17:43:23 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 07 Jul 2026 17:43:27 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 07 Jul 2026 17:43:27 GMT
ENV LANG=en_US.utf8
# Tue, 07 Jul 2026 17:43:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 17:43:30 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 07 Jul 2026 17:43:31 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 07 Jul 2026 17:43:31 GMT
ENV PG_MAJOR=19
# Tue, 07 Jul 2026 17:43:31 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Tue, 07 Jul 2026 17:43:31 GMT
ENV PG_VERSION=19~beta1-1.pgdg12+1
# Tue, 07 Jul 2026 17:43:50 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 07 Jul 2026 17:43:51 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 07 Jul 2026 17:43:51 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 07 Jul 2026 17:43:51 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Tue, 07 Jul 2026 17:43:51 GMT
VOLUME [/var/lib/postgresql]
# Tue, 07 Jul 2026 17:43:51 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 17:43:51 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 07 Jul 2026 17:43:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 17:43:51 GMT
STOPSIGNAL SIGINT
# Tue, 07 Jul 2026 17:43:51 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 07 Jul 2026 17:43:51 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:74f1dcfcc9c80045f6f6394ffcfc261cb19d0c71b97e964aec3d4abf4e0f7009`  
		Last Modified: Wed, 24 Jun 2026 00:27:48 GMT  
		Size: 28.1 MB (28122418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aacc0869f00ae32ac730ee89a78d67aaefa92fd34a53a49080948d066998195a`  
		Last Modified: Tue, 07 Jul 2026 17:44:10 GMT  
		Size: 1.2 KB (1170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fa96aefd14070de3d11b95f75cb2ddaf468f7518d5e629879a0e59b82b92ec7`  
		Last Modified: Tue, 07 Jul 2026 17:44:11 GMT  
		Size: 4.5 MB (4519546 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3ed44124c86b1ce0f6e92afe908586281bc4957b0d58af51901172668b5bab6`  
		Last Modified: Tue, 07 Jul 2026 17:44:10 GMT  
		Size: 1.2 MB (1203311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9a66bcd5fb02988ededff21cde8e4bc052b2f4925b41bfe860a4806f0434cc3`  
		Last Modified: Tue, 07 Jul 2026 17:44:11 GMT  
		Size: 8.1 MB (8066446 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a369ec44e5de8cbc23e647129a1f214087809c7156b1ce40e974e2c4e3b01734`  
		Last Modified: Tue, 07 Jul 2026 17:44:12 GMT  
		Size: 1.1 MB (1109033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab5b3fac8a501ce39a62c6594d8bc853db6770d73063a8cf7a0a00302e2c7dca`  
		Last Modified: Tue, 07 Jul 2026 17:44:12 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2662b3f7876f9448f0c02ca8e3358fc7622191adf31e2e5f32544542b337321`  
		Last Modified: Tue, 07 Jul 2026 17:44:12 GMT  
		Size: 3.1 KB (3144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c1e634efaf408cc6ec1159dcd22bba701a919faf0d31bffe5e20fa341503d35`  
		Last Modified: Tue, 07 Jul 2026 17:44:15 GMT  
		Size: 113.4 MB (113366879 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:029f1ea922b303229540eb897cfaf54485768c2d10f981cfb0d38dfbf0bf9d84`  
		Last Modified: Tue, 07 Jul 2026 17:44:13 GMT  
		Size: 21.3 KB (21322 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f2be5b5ab3c6f8d9aab179a3f09145c5fa0cbcd502b4ba129c18cbcce5e0399`  
		Last Modified: Tue, 07 Jul 2026 17:44:13 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52343c2f65cadc2ee5f9798ba58f48cd4181ec44326ff4acdc66922c8fff31ad`  
		Last Modified: Tue, 07 Jul 2026 17:44:14 GMT  
		Size: 6.1 KB (6111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21c8fa5b370f898a6cd7c82c886db49eb3008c6a2a9846b71cd64f31afa6274c`  
		Last Modified: Tue, 07 Jul 2026 17:44:14 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta1-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:5c7e8969a46558e157f36e8e692f888ae1011adb7c92fd80a28744bad2549e62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6255582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b2fba2782edaa8bba2413284ffb4a20c50af6854bb5faa7e2af7f7cd0263f37`

```dockerfile
```

-	Layers:
	-	`sha256:baaefcb97c30773b18cca90ed0bc151e6984f798e76e81c4888ee843209d9d3c`  
		Last Modified: Tue, 07 Jul 2026 17:44:11 GMT  
		Size: 6.2 MB (6204362 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:16ca460e830b7ed464e6555f7073fdae597179fe8f308319ee43409b54c85435`  
		Last Modified: Tue, 07 Jul 2026 17:44:10 GMT  
		Size: 51.2 KB (51220 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta1-bookworm` - linux; 386

```console
$ docker pull postgres@sha256:9e9b519aae534fa2b1f873489d8247f0cd8280d38ffdfb4feca72d3c53bafb51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.6 MB (94623207 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c981b2fc8ba5b5235c7efca952f51bbf81cb62a86de742433b5b158cafc57ae4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1782172800'
# Tue, 07 Jul 2026 17:43:47 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 07 Jul 2026 17:43:52 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 17:43:58 GMT
ENV GOSU_VERSION=1.19
# Tue, 07 Jul 2026 17:43:58 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 07 Jul 2026 17:44:03 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 07 Jul 2026 17:44:03 GMT
ENV LANG=en_US.utf8
# Tue, 07 Jul 2026 17:44:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 17:44:06 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 07 Jul 2026 17:44:07 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 07 Jul 2026 17:44:07 GMT
ENV PG_MAJOR=19
# Tue, 07 Jul 2026 17:44:07 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Tue, 07 Jul 2026 17:44:07 GMT
ENV PG_VERSION=19~beta1-1.pgdg12+1
# Tue, 07 Jul 2026 17:54:24 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 07 Jul 2026 17:54:24 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 07 Jul 2026 17:54:25 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 07 Jul 2026 17:54:25 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Tue, 07 Jul 2026 17:54:25 GMT
VOLUME [/var/lib/postgresql]
# Tue, 07 Jul 2026 17:54:25 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 17:54:25 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 07 Jul 2026 17:54:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 17:54:25 GMT
STOPSIGNAL SIGINT
# Tue, 07 Jul 2026 17:54:25 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 07 Jul 2026 17:54:25 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:df519b11ac99d8e2d452cbd55f824e658d0b86f649745abaaf8cbe33e2736a30`  
		Last Modified: Wed, 24 Jun 2026 00:28:03 GMT  
		Size: 29.2 MB (29225809 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68c49addf34e7f05671edb897d64ddb7d0df7ffe8402ff596209585eb1ac508b`  
		Last Modified: Tue, 07 Jul 2026 17:54:38 GMT  
		Size: 1.2 KB (1172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca99daa2c03cde21bde7ef74a9beba39852e2d3bf5ae01c67403d7dce9eea27b`  
		Last Modified: Tue, 07 Jul 2026 17:54:38 GMT  
		Size: 5.0 MB (4966131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78d8766c577299e2e886cdbe64d96eaaebfac5bec7677f5e2fb531b8281032ba`  
		Last Modified: Tue, 07 Jul 2026 17:54:38 GMT  
		Size: 1.2 MB (1218665 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65bd91a47b87776a581a9321e9aedac078d68b4432f76e25a764ee61fabc9587`  
		Last Modified: Tue, 07 Jul 2026 17:54:39 GMT  
		Size: 8.1 MB (8066515 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:feacc66e2343d3d2578e4568abb48a746961ed97d79d5b76f8da048277f3d6a8`  
		Last Modified: Tue, 07 Jul 2026 17:54:39 GMT  
		Size: 1.1 MB (1137471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0c126ddbe7d1cf1a958cc6f1aa998079fcf161268f4de99600316b30416d26b`  
		Last Modified: Tue, 07 Jul 2026 17:54:40 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96f8ab1cc8fa90ab4d955973feb30c883c89b33975b4ac7be127e5b9e1382777`  
		Last Modified: Tue, 07 Jul 2026 17:54:40 GMT  
		Size: 3.1 KB (3144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95cc789a898829722ce31d0a60981244fa3c1bdaa1d1aedc27c122d184cd4d36`  
		Last Modified: Tue, 07 Jul 2026 17:54:42 GMT  
		Size: 50.0 MB (49976437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e29764aa603f82c3fcab4c5ab9002f71d35b4a0a5c00cbbf545337e03c6ec4ac`  
		Last Modified: Tue, 07 Jul 2026 17:54:41 GMT  
		Size: 21.3 KB (21323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef0ed130f831f597c45eb8b079199aff8ba19e77c52c5a8c040a807287b0ecfd`  
		Last Modified: Tue, 07 Jul 2026 17:54:41 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d317cae86e14a393e8e929a1b8955f50bb4faba3009e8f949966bc94effffbc`  
		Last Modified: Tue, 07 Jul 2026 17:54:41 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d7a83b4c1ffdac54f2d521e8385cb77a9d32aad320d9f4e70a09b41e5100b01`  
		Last Modified: Tue, 07 Jul 2026 17:54:42 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta1-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:c9b805c5f6eaf7eab97f39bf0e77bc6c746837e22b99f2b044c35cddca153d33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5371249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24f2951e8cba552a7ad0341c78072034a8a90cd2146b57bfc7fbd9f1ce5e3119`

```dockerfile
```

-	Layers:
	-	`sha256:2fac2195009cc4856898e135bfa2591cfcb62393113fec7bdab4d1479be98660`  
		Last Modified: Tue, 07 Jul 2026 17:54:39 GMT  
		Size: 5.3 MB (5320289 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cc10a3431cb7576f60d7ee7a8f706d4f33eb3360a15eed676a319676df6f44a4`  
		Last Modified: Tue, 07 Jul 2026 17:54:38 GMT  
		Size: 51.0 KB (50960 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta1-bookworm` - linux; mips64le

```console
$ docker pull postgres@sha256:206bd49c8ed86e2dabf09966e2f18c26e99f79ca9614eb4a2c0e20a16f838eed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.3 MB (157294824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8024cacda5eff3f209cb90e12dfc3fc4dc230c94f21b3b7d40eac503bcec2600`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'mips64el' out/ 'bookworm' '@1782172800'
# Tue, 07 Jul 2026 17:42:08 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 07 Jul 2026 17:42:49 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 17:43:24 GMT
ENV GOSU_VERSION=1.19
# Tue, 07 Jul 2026 17:43:24 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 07 Jul 2026 17:43:51 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 07 Jul 2026 17:43:51 GMT
ENV LANG=en_US.utf8
# Tue, 07 Jul 2026 17:44:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 17:44:11 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 07 Jul 2026 17:44:13 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 07 Jul 2026 17:44:13 GMT
ENV PG_MAJOR=19
# Tue, 07 Jul 2026 17:44:13 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Tue, 07 Jul 2026 17:44:13 GMT
ENV PG_VERSION=19~beta1-1.pgdg12+1
# Tue, 07 Jul 2026 18:59:04 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 07 Jul 2026 18:59:06 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 07 Jul 2026 18:59:07 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 07 Jul 2026 18:59:07 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Tue, 07 Jul 2026 18:59:07 GMT
VOLUME [/var/lib/postgresql]
# Tue, 07 Jul 2026 18:59:08 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 18:59:10 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 07 Jul 2026 18:59:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 18:59:10 GMT
STOPSIGNAL SIGINT
# Tue, 07 Jul 2026 18:59:10 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 07 Jul 2026 18:59:10 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:e3e59e5d9fba86ba9cccde17de0c09e1a6250f5fd1ae881c8b925031848b7a5d`  
		Last Modified: Wed, 24 Jun 2026 00:27:28 GMT  
		Size: 28.5 MB (28528885 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c81819044341eaac9920c1712f1157efa50566ad95570d768d45002804bb632c`  
		Last Modified: Tue, 07 Jul 2026 19:01:12 GMT  
		Size: 1.2 KB (1175 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f437adacf8c8ef73eeb965cbf2454b8a17472fc6153fed5f06d491f7fd41bff1`  
		Last Modified: Tue, 07 Jul 2026 19:01:13 GMT  
		Size: 4.5 MB (4475243 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c43909432d7d731ad34728d5ae3f5223cfa6a2071ef951742251bda9e0c83bf1`  
		Last Modified: Tue, 07 Jul 2026 19:01:13 GMT  
		Size: 1.2 MB (1159248 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4171d387828bc1241d421c6282013d222c266f7cb1f2d7285c2975aef8e9ed4`  
		Last Modified: Tue, 07 Jul 2026 19:01:14 GMT  
		Size: 8.1 MB (8066691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef89eb1ceb79b80a4fda95f777756ed2a50535f0c215c6ae500b5877609afb0c`  
		Last Modified: Tue, 07 Jul 2026 19:01:14 GMT  
		Size: 1.2 MB (1182965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f2cabeb037512e8d256c806d67ec3a22d0939e697127192f71ad2d1df46e6b8`  
		Last Modified: Tue, 07 Jul 2026 19:01:14 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bdee35df2ffddd54e49e89bf0c1853c714349a60651b7924eca4deb33e0b037`  
		Last Modified: Tue, 07 Jul 2026 19:01:15 GMT  
		Size: 3.1 KB (3142 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1048feaabe2227732a390b82baa0a438058bd9c176750d00d5fc8ab55a53cc2`  
		Last Modified: Tue, 07 Jul 2026 19:01:27 GMT  
		Size: 113.8 MB (113849603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da914b2937abae2cb315b617da48e07deaa9adfc2b657adadb3f37aa62693f28`  
		Last Modified: Tue, 07 Jul 2026 19:01:16 GMT  
		Size: 21.3 KB (21330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cf7d60e6637dbb7f29ee014acc2763923c60ed9ddcf42fad335d8c7a8db91cd`  
		Last Modified: Tue, 07 Jul 2026 19:01:16 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc862b2c53123730abe26d91a0b488b06aae64763b789dd25f1f4a4f55e0dcb0`  
		Last Modified: Tue, 07 Jul 2026 19:01:16 GMT  
		Size: 6.1 KB (6113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4244059ae3eda9bf4d27b0e131d176fc2ff252b00de275d4bdad42ad05d78764`  
		Last Modified: Tue, 07 Jul 2026 19:01:17 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta1-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:f18f0593d8072331ce11d34016ec6c32754b498eb9aabb668bca247244c50c66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.9 KB (50856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7bfbb4ccd9c162cd0a4c6909dfc083262b3bbe2a6510691378a90db0cbc0541`

```dockerfile
```

-	Layers:
	-	`sha256:d532f0d9dd718b139fc24d496320adfa0e5115dca15aa7c16bc0342871db7b63`  
		Last Modified: Tue, 07 Jul 2026 19:01:12 GMT  
		Size: 50.9 KB (50856 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta1-bookworm` - linux; ppc64le

```console
$ docker pull postgres@sha256:2187660c6d78e68b9471e43c2e16d0fe091d2282e5de0b6b24f4b44810bccc62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.5 MB (171455253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:264c41ebb54cced4d4d633b56ffe0db93cce41bbe0e69669ea071fefb5f24e2d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1782172800'
# Tue, 07 Jul 2026 17:42:09 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 07 Jul 2026 17:42:22 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 17:42:34 GMT
ENV GOSU_VERSION=1.19
# Tue, 07 Jul 2026 17:42:34 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 07 Jul 2026 17:42:44 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 07 Jul 2026 17:42:44 GMT
ENV LANG=en_US.utf8
# Tue, 07 Jul 2026 17:42:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 17:42:53 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 07 Jul 2026 17:42:54 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 07 Jul 2026 17:42:54 GMT
ENV PG_MAJOR=19
# Tue, 07 Jul 2026 17:42:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Tue, 07 Jul 2026 17:42:54 GMT
ENV PG_VERSION=19~beta1-1.pgdg12+1
# Tue, 07 Jul 2026 17:43:34 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 07 Jul 2026 17:43:34 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 07 Jul 2026 17:43:35 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 07 Jul 2026 17:43:35 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Tue, 07 Jul 2026 17:43:35 GMT
VOLUME [/var/lib/postgresql]
# Tue, 07 Jul 2026 17:43:36 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 17:43:37 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 07 Jul 2026 17:43:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 17:43:37 GMT
STOPSIGNAL SIGINT
# Tue, 07 Jul 2026 17:43:37 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 07 Jul 2026 17:43:37 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:aca68162e30a6a797424ddae2250996b638d7dd3b09085b7da2b627f63083af5`  
		Last Modified: Wed, 24 Jun 2026 00:27:33 GMT  
		Size: 32.1 MB (32081978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9adbe4418c0b6864f61e0d3c466f7e08148e1772041c9e14a7a3d76d38b37d87`  
		Last Modified: Tue, 07 Jul 2026 17:44:22 GMT  
		Size: 1.2 KB (1171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10885c050c0ebcab179bad673c083fa0a6153ffeb80e7c13555a8c3b744717d8`  
		Last Modified: Tue, 07 Jul 2026 17:44:22 GMT  
		Size: 5.4 MB (5368657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c00da6185c365db5aa03ea7001ff47d57fa4c2523f0a0e919b6a56eeefb6db8`  
		Last Modified: Tue, 07 Jul 2026 17:44:22 GMT  
		Size: 1.2 MB (1208200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd53e23aaf5b538c6296de21370bf7ac1749c3453b342cb1ee53b7bad0e6e34c`  
		Last Modified: Tue, 07 Jul 2026 17:44:22 GMT  
		Size: 8.1 MB (8066525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fed4cd7249af0b2871210e61fb4d41b283b24ac3a5f2cce22e42d5c87ff98e7b`  
		Last Modified: Tue, 07 Jul 2026 17:44:24 GMT  
		Size: 1.3 MB (1283641 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab9e334a257004d85e1d2a9ce48b2d0744e222b118038ebbea626c3d1f8f33af`  
		Last Modified: Tue, 07 Jul 2026 17:44:24 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d6c740f281b6621a15a66e268fcd0382103759b5b73087df1d38a801a19250f`  
		Last Modified: Tue, 07 Jul 2026 17:44:24 GMT  
		Size: 3.1 KB (3145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f77230769d9f3afd40402451f872c3571486e0936be886d9d972e6c83e8bb30d`  
		Last Modified: Tue, 07 Jul 2026 17:44:27 GMT  
		Size: 123.4 MB (123414076 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed80e6b53b71b3d3da89be474452c7b2db44d6011886e637bc10b533e245b467`  
		Last Modified: Tue, 07 Jul 2026 17:44:25 GMT  
		Size: 21.3 KB (21322 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d31ed6a389fcb272dd558e5e5cffcf5f880aef18228842c41160866740c344f`  
		Last Modified: Tue, 07 Jul 2026 17:44:25 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cccc6954d695c02d5890a7111d299961a7d5f3a60863619a2ce8ed392f678b3b`  
		Last Modified: Tue, 07 Jul 2026 17:44:25 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e28fac82136a52849f79381dc9bdb4aad988115ac807e8963bdb7121dd04c5fa`  
		Last Modified: Tue, 07 Jul 2026 17:44:26 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta1-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:62d4f2c550064a7e06f71e716d3eaed81d1bff668ff2064289d9373ef72fa409
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6256482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ff17270dd4c1de86b78442ff52581a0e135904383234368e4cdd4a421167c10`

```dockerfile
```

-	Layers:
	-	`sha256:494eeb93537861f919cbb475f8bffadecce1112ee1a0cd3a55e226f3d0eecaff`  
		Last Modified: Tue, 07 Jul 2026 17:44:23 GMT  
		Size: 6.2 MB (6205434 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3215db4bc9976a6081ff9a9df0d0e56c4259475e84f85ce8b4b31cb7ffe63171`  
		Last Modified: Tue, 07 Jul 2026 17:44:22 GMT  
		Size: 51.0 KB (51048 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta1-bookworm` - linux; s390x

```console
$ docker pull postgres@sha256:33f02c949c7ff4553065f91346a7b4c048d33504a54f5b9016898db061ce3e53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.8 MB (167818063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3e287ee2810e34f03ebf7369243e953dc72077edf8211d5df1aebef8f3fffe1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1782172800'
# Tue, 07 Jul 2026 17:43:07 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 07 Jul 2026 17:44:22 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 17:45:41 GMT
ENV GOSU_VERSION=1.19
# Tue, 07 Jul 2026 17:45:41 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 07 Jul 2026 17:46:29 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 07 Jul 2026 17:46:29 GMT
ENV LANG=en_US.utf8
# Tue, 07 Jul 2026 17:47:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 17:47:17 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 07 Jul 2026 17:47:26 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 07 Jul 2026 17:47:26 GMT
ENV PG_MAJOR=19
# Tue, 07 Jul 2026 17:47:26 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Tue, 07 Jul 2026 17:47:26 GMT
ENV PG_VERSION=19~beta1-1.pgdg12+1
# Tue, 07 Jul 2026 18:42:37 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 07 Jul 2026 18:42:40 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 07 Jul 2026 18:42:42 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 07 Jul 2026 18:42:42 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Tue, 07 Jul 2026 18:42:42 GMT
VOLUME [/var/lib/postgresql]
# Tue, 07 Jul 2026 18:42:45 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 18:42:48 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 07 Jul 2026 18:42:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 18:42:48 GMT
STOPSIGNAL SIGINT
# Tue, 07 Jul 2026 18:42:48 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 07 Jul 2026 18:42:48 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:e9aeeda7513dde59469463716e9e14f36210d6570c3cad5e5440b32d941733cd`  
		Last Modified: Wed, 24 Jun 2026 00:27:21 GMT  
		Size: 26.9 MB (26893585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e2a3ba71a71a9c10954ca36c5266cb85c0dc9b220e1b6ec3a4daa5df7976963`  
		Last Modified: Tue, 07 Jul 2026 18:44:31 GMT  
		Size: 1.2 KB (1176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12c0bb23658069de62b43ff9f39f666de34d437c2128281af94fd4f153bef42f`  
		Last Modified: Tue, 07 Jul 2026 18:44:35 GMT  
		Size: 4.4 MB (4391726 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdb90f504059f677885e7538dd62daada51706751d1beb363832d0f1d84a1f78`  
		Last Modified: Tue, 07 Jul 2026 18:44:33 GMT  
		Size: 1.2 MB (1223341 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dc17f4b63ca7c6af158c481d78e908f56b138caae8ce8fe85302608b827a904`  
		Last Modified: Tue, 07 Jul 2026 18:44:35 GMT  
		Size: 8.1 MB (8121273 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efc1f6605bbd7b275cfb67262a06709a34960f5f947eb6abe303d044a5598d47`  
		Last Modified: Tue, 07 Jul 2026 18:44:35 GMT  
		Size: 1.1 MB (1097659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28e893354007a335ed566a2f3ee7a93c1389948c9302e780991820941bbfa2d4`  
		Last Modified: Tue, 07 Jul 2026 18:44:35 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5224d9d0451a093adf4353821ecae4b49092f8d045e4f00dfcf86ff0f6e59a87`  
		Last Modified: Tue, 07 Jul 2026 18:44:36 GMT  
		Size: 3.1 KB (3145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9591590429ac232708242742e8d527bde5066dddce5a1a4b557afe948bd01de`  
		Last Modified: Tue, 07 Jul 2026 18:44:45 GMT  
		Size: 126.1 MB (126058284 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2fa8ec4bf716fca465fca088397fe0931eb216ba39ad7a3a24ff7187ab748e0`  
		Last Modified: Tue, 07 Jul 2026 18:44:38 GMT  
		Size: 21.3 KB (21331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:912a2760176189ef7d9dddacde012dfb67661e649203ab83a67f6cb0fc7def5f`  
		Last Modified: Tue, 07 Jul 2026 18:44:39 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bb2af7bb4e086ce01c416a363004da0171fb97942b04299ded36978e555675c`  
		Last Modified: Tue, 07 Jul 2026 18:44:40 GMT  
		Size: 6.1 KB (6113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1f9a6e82f553655f576084779abca89a151f01e46b28948cbf3e2db96732f6d`  
		Last Modified: Tue, 07 Jul 2026 18:44:41 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta1-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:2f369c9ac3e8ca69cd303a7eac7df930282c32eb3e4c90e02f1c4f9ff64eecfa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6263721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0752b348a6fae006a1ef74aa80410a6d22136c81943746006e1e39ecefd24886`

```dockerfile
```

-	Layers:
	-	`sha256:006809b846a6113a27cbd60359fe6535149c50479cca961d092db8409851956a`  
		Last Modified: Tue, 07 Jul 2026 18:44:35 GMT  
		Size: 6.2 MB (6212719 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c3bdd1225542bd78b54974a719106e1a4946c98dc28e922d498e2b8ebb2a9150`  
		Last Modified: Tue, 07 Jul 2026 18:44:32 GMT  
		Size: 51.0 KB (51002 bytes)  
		MIME: application/vnd.in-toto+json
