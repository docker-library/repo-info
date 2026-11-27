## `postgres:15-trixie`

```console
$ docker pull postgres@sha256:868b5ee219026c0f34c99d696d4494ccb3705cf1a18bed1e0b9de64d9c011ccd
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

### `postgres:15-trixie` - linux; amd64

```console
$ docker pull postgres@sha256:b14fdb40f71c4ccdaf0f01afb3207f1f7e50fe281ad7480fe24e9974632bd892
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.2 MB (164209410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa54b64892b3a17304dc9036b6fe2a47b4ecec5ac5170a6ce9b3405fc1d447d6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:30:47 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 		install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql; 		install --verbose --directory --owner postgres --group postgres --mode 3777 /run/postgresql; 		mkdir -p /usr/local/lib/tmpfiles.d; 	printf '%s\n' 		'd /var/lib/postgresql 1777 postgres postgres' 		'd /run/postgresql 3777 postgres postgres' 		> /usr/local/lib/tmpfiles.d/postgresql-common.conf # buildkit
# Tue, 24 Nov 2026 04:30:52 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:30:58 GMT
ENV GOSU_VERSION=1.20
# Tue, 24 Nov 2026 04:30:58 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 24 Nov 2026 04:31:02 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 24 Nov 2026 04:31:02 GMT
ENV LANG=en_US.utf8
# Tue, 24 Nov 2026 04:31:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:31:04 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 24 Nov 2026 04:31:05 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 24 Nov 2026 04:31:05 GMT
ENV PG_MAJOR=15
# Tue, 24 Nov 2026 04:31:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/15/bin
# Tue, 24 Nov 2026 04:31:05 GMT
ENV PG_VERSION=15.20-1.pgdg13+1
# Tue, 24 Nov 2026 04:31:17 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 24 Nov 2026 04:31:17 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 24 Nov 2026 04:31:17 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 24 Nov 2026 04:31:17 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Tue, 24 Nov 2026 04:31:17 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 24 Nov 2026 04:31:17 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:31:17 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 24 Nov 2026 04:31:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:31:17 GMT
STOPSIGNAL SIGINT
# Tue, 24 Nov 2026 04:31:17 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 24 Nov 2026 04:31:17 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:40748add9f4f6f944f334cbfc286590d6e93f60fb06f6ee7ffa1b894080ad861`  
		Last Modified: Tue, 24 Nov 2026 03:40:27 GMT  
		Size: 29.8 MB (29842182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f43d753827ff19812b3561dbdcde84f44c50d5208894f5bc41fe3b650c4018a2`  
		Last Modified: Tue, 24 Nov 2026 04:31:35 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd6ff8ded39ee798dd3c7aae8e1ea79fdea2a40d6c5c8ffe3af7c1b97e54be12`  
		Last Modified: Tue, 24 Nov 2026 04:31:36 GMT  
		Size: 6.4 MB (6443067 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7cbed9500a45e727192362d486cfef580e5996b19a418412a4a6b0eb858389e`  
		Last Modified: Tue, 24 Nov 2026 04:31:36 GMT  
		Size: 1.3 MB (1258055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc7bd388e769e574a7ef9eea9fb6cc74427b80ad2cb1538af2d4d1da6924fdc4`  
		Last Modified: Tue, 24 Nov 2026 04:31:36 GMT  
		Size: 8.2 MB (8203914 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee53131a7b7ba1428f25a0a8291efecec2041adc7268cd2e8eb3d67b9c1fb0ae`  
		Last Modified: Tue, 24 Nov 2026 04:31:37 GMT  
		Size: 1.3 MB (1311684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efd0c2d7f238a190ce5a4775db145d0ba5984a9ac060db3cbdf3911b40c60c3b`  
		Last Modified: Tue, 24 Nov 2026 04:31:37 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cc614e126bfa95201e5b2c921c8044a0d29e9fb184805a57c910a3732456e3b`  
		Last Modified: Tue, 24 Nov 2026 04:31:37 GMT  
		Size: 3.1 KB (3142 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3baf3de6174bb73c75b00e89185fcc204e7dd6a0f0bf578a068aad954d5d9db4`  
		Last Modified: Tue, 24 Nov 2026 04:31:40 GMT  
		Size: 117.1 MB (117129535 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c09bd0e390699e8ec95031dd92fb41bb8487868c4fbbea6645a6fd741292403a`  
		Last Modified: Tue, 24 Nov 2026 04:31:38 GMT  
		Size: 9.9 KB (9938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db9d7b7e30a5354e26cb570693ced93eabc8b76a383f4547a9ff2794066434f1`  
		Last Modified: Tue, 24 Nov 2026 04:31:38 GMT  
		Size: 167.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fb1ffae8dc35c4149008a0dcc18e71475a9fc965e8a68991c99e932258374ed`  
		Last Modified: Tue, 24 Nov 2026 04:31:39 GMT  
		Size: 6.1 KB (6103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66ab2ccba489545a5334a05acdbbd507484acafe2009ea067843b3893cc3f17f`  
		Last Modified: Tue, 24 Nov 2026 04:31:40 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:15-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:b9bf353f27672bebfe5d5267f770cbc5060c2c342b70f23c243b7e13a698aaf8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6065308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca277ce8680338734f16de360d3ffd878d7e29df902c1c78b0e99af55a3fe3c3`

```dockerfile
```

-	Layers:
	-	`sha256:b2fb0d3b94faa2cc829fa0182d1c524a1b6c3494f2753920cbc67c633160176d`  
		Last Modified: Tue, 24 Nov 2026 04:31:36 GMT  
		Size: 6.0 MB (6013158 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b8f3220ddd3686872fd6d0586abc203d35e538674a61aeb9e59bcfd4a9c327f6`  
		Last Modified: Tue, 24 Nov 2026 04:31:36 GMT  
		Size: 52.1 KB (52150 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:15-trixie` - linux; arm variant v5

```console
$ docker pull postgres@sha256:e97186a1b38aa533e31e9227995678138e1272c22e09e2d65310d995db28106e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.8 MB (94849257 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc69d844faf80109584736ff6b146a7d3b4d2d56dbd2a8e9eade94300a46b263`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:32:29 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 		install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql; 		install --verbose --directory --owner postgres --group postgres --mode 3777 /run/postgresql; 		mkdir -p /usr/local/lib/tmpfiles.d; 	printf '%s\n' 		'd /var/lib/postgresql 1777 postgres postgres' 		'd /run/postgresql 3777 postgres postgres' 		> /usr/local/lib/tmpfiles.d/postgresql-common.conf # buildkit
# Tue, 24 Nov 2026 04:32:39 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:32:50 GMT
ENV GOSU_VERSION=1.20
# Tue, 24 Nov 2026 04:32:50 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 24 Nov 2026 04:32:58 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 24 Nov 2026 04:32:58 GMT
ENV LANG=en_US.utf8
# Tue, 24 Nov 2026 04:33:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:33:05 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 24 Nov 2026 04:33:06 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 24 Nov 2026 04:33:06 GMT
ENV PG_MAJOR=15
# Tue, 24 Nov 2026 04:33:06 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/15/bin
# Tue, 24 Nov 2026 04:33:06 GMT
ENV PG_VERSION=15.20-1.pgdg13+1
# Tue, 24 Nov 2026 04:45:29 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 24 Nov 2026 04:45:29 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 24 Nov 2026 04:45:29 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 24 Nov 2026 04:45:29 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Tue, 24 Nov 2026 04:45:29 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 24 Nov 2026 04:45:29 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:45:29 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 24 Nov 2026 04:45:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:45:29 GMT
STOPSIGNAL SIGINT
# Tue, 24 Nov 2026 04:45:29 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 24 Nov 2026 04:45:29 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f6fba286691ca1912507e9abe69b4f333f067bb9769520ed16554fd664c33962`  
		Last Modified: Tue, 24 Nov 2026 03:40:21 GMT  
		Size: 28.0 MB (28008785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59e940cbff1937879b82aa8f5b640c7dfe54e51f73c0101a4762ae55f6b625c6`  
		Last Modified: Tue, 24 Nov 2026 04:45:42 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9bb170b6fbdcdaa8398121f77faf12795af47428447e31cea90f19ca20cac15`  
		Last Modified: Tue, 24 Nov 2026 04:45:42 GMT  
		Size: 5.9 MB (5932387 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab352dd3478425fc1c3474169b3d2f512cd8fc23ff57278cfb13cfff27c3a7de`  
		Last Modified: Tue, 24 Nov 2026 04:45:42 GMT  
		Size: 1.2 MB (1229262 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fac155642837124e006f5f06c6089f8bc5b3e13fe2d3ee83a7ef78c2051ec79`  
		Last Modified: Tue, 24 Nov 2026 04:45:43 GMT  
		Size: 8.2 MB (8204341 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9150430e2e932b75fa8e54ce4a0e7766318656d0deea476b87d54dc2da6d6c02`  
		Last Modified: Tue, 24 Nov 2026 04:45:43 GMT  
		Size: 1.3 MB (1317365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf9b876837bcda330cf533039ca411eefed2f66d545de932325ad362bf2e4ad4`  
		Last Modified: Tue, 24 Nov 2026 04:45:43 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b44f201c02f152aeedf6b47e86bd37f3870bf61b7199e34ce3c22ad8b0337e3`  
		Last Modified: Tue, 24 Nov 2026 04:45:44 GMT  
		Size: 3.1 KB (3142 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:415e4850fb372a60942df35d33197c509c5b30111a9cf922819db7b3df96e7a0`  
		Last Modified: Tue, 24 Nov 2026 04:45:45 GMT  
		Size: 50.1 MB (50136152 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d513952a7c0a5da549bc314832fb33cd1b4a5ce88263c5fd6898500c93d5578`  
		Last Modified: Tue, 24 Nov 2026 04:45:45 GMT  
		Size: 9.9 KB (9933 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e6a73b3f100712428a1437e1abb373a1257a319485ead8ed2d3f94d8783a1cc`  
		Last Modified: Tue, 24 Nov 2026 04:45:44 GMT  
		Size: 165.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00dea3bd9a040bf424fa8241afe687c7101bdabc0f3c7ac96828e6755ba01329`  
		Last Modified: Tue, 24 Nov 2026 04:45:45 GMT  
		Size: 6.1 KB (6103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b978a0482bbeca40408c5bc91633e76fd7508af157ed48fdecca85147d894e8`  
		Last Modified: Tue, 24 Nov 2026 04:45:46 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:15-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:028259825fdf6af08aabc51a829f217c2b13e526bf2bc9d4f4920c19a568fe15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5438610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96281ab709c64c2f4368fe3380d738b2b95af77ab36e51339362c8769d5adb8e`

```dockerfile
```

-	Layers:
	-	`sha256:35c62ff6c82b46e75ef8b594cbe51d45b0fcefd8c91a160c587f901b5e2b1692`  
		Last Modified: Tue, 24 Nov 2026 04:45:42 GMT  
		Size: 5.4 MB (5386255 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2f2a9861001d9ab4dfcefbc27c7102e3501b02e0eb6bdeca47cf00c6d54af2a0`  
		Last Modified: Tue, 24 Nov 2026 04:45:42 GMT  
		Size: 52.4 KB (52355 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:15-trixie` - linux; arm variant v7

```console
$ docker pull postgres@sha256:a33cb2daf28da350e7744f44c0b774b3f267ecb0a0442a09d3ad3b0d86d67f4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.8 MB (90836849 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82684e21bb167d0aaa07fe02ccc103d4d6ef6eb49126dcb09fc410bfe2d1639a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 05:11:42 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 		install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql; 		install --verbose --directory --owner postgres --group postgres --mode 3777 /run/postgresql; 		mkdir -p /usr/local/lib/tmpfiles.d; 	printf '%s\n' 		'd /var/lib/postgresql 1777 postgres postgres' 		'd /run/postgresql 3777 postgres postgres' 		> /usr/local/lib/tmpfiles.d/postgresql-common.conf # buildkit
# Tue, 24 Nov 2026 05:11:50 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:11:59 GMT
ENV GOSU_VERSION=1.20
# Tue, 24 Nov 2026 05:11:59 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 24 Nov 2026 05:12:06 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 24 Nov 2026 05:12:06 GMT
ENV LANG=en_US.utf8
# Tue, 24 Nov 2026 05:12:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:12:11 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 24 Nov 2026 05:12:12 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 24 Nov 2026 05:12:12 GMT
ENV PG_MAJOR=15
# Tue, 24 Nov 2026 05:12:12 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/15/bin
# Tue, 24 Nov 2026 05:12:12 GMT
ENV PG_VERSION=15.20-1.pgdg13+1
# Tue, 24 Nov 2026 05:23:11 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 24 Nov 2026 05:23:12 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 24 Nov 2026 05:23:12 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 24 Nov 2026 05:23:12 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Tue, 24 Nov 2026 05:23:12 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 24 Nov 2026 05:23:12 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 05:23:12 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 24 Nov 2026 05:23:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 05:23:12 GMT
STOPSIGNAL SIGINT
# Tue, 24 Nov 2026 05:23:12 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 24 Nov 2026 05:23:12 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:c720f3b38fb800619bf9fa0d867869c69ddd3a3f80e5316158c99a0cbe84f60f`  
		Last Modified: Tue, 24 Nov 2026 03:40:47 GMT  
		Size: 26.3 MB (26262460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:262927e2cec00c356cac3aeabb6ad1fb25208202521997d130c1196c6fe9a05e`  
		Last Modified: Tue, 24 Nov 2026 05:23:25 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d001bd7d11ed1e1772d52cdc95d1d4a3183ff4837d2d59e4b02e215b38d4f80c`  
		Last Modified: Tue, 24 Nov 2026 05:23:25 GMT  
		Size: 5.5 MB (5497319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c678caa30eb879de16fdd5b5274e4e1a5b72c7a69b1fa700d67290d3f7f3d63`  
		Last Modified: Tue, 24 Nov 2026 05:23:25 GMT  
		Size: 1.2 MB (1223478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa3835665c85b30cd916424ca235b12df33926c9b08fac600cfa264b66714c1a`  
		Last Modified: Tue, 24 Nov 2026 05:23:25 GMT  
		Size: 8.2 MB (8204102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54317e1a7a25f73762c4b1037dcde098e68590fedeffc8a8cfac8515c7cdacb8`  
		Last Modified: Tue, 24 Nov 2026 05:23:26 GMT  
		Size: 1.2 MB (1172684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac0038a6c37275d47cadd215043642fc2276ab5dd47e2e5ad05bdb18b58bf8f2`  
		Last Modified: Tue, 24 Nov 2026 05:23:26 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6530d73fe9473d57ca073e4e288a1ef732ce5b5a2e0182b5d37af2a6399139f`  
		Last Modified: Tue, 24 Nov 2026 05:23:26 GMT  
		Size: 3.1 KB (3143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5f93bbef8bee0d99232571f9c543be900728e2f22fd2e0c06f62f7d427b2507`  
		Last Modified: Tue, 24 Nov 2026 05:23:27 GMT  
		Size: 48.5 MB (48455828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b3a45f6e488f9bae15770b33117095898b40f3dd12f0a72357e4660e39048ae`  
		Last Modified: Tue, 24 Nov 2026 05:23:27 GMT  
		Size: 9.9 KB (9945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ea93ef1c9ab88894ee03bd80c8a154b9d4ba1c616e49eae9786b696a3741157`  
		Last Modified: Tue, 24 Nov 2026 05:23:27 GMT  
		Size: 168.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25384af3b3dbfa6271ec795ec17eb0e5e69bfdab2c17d88c6f08a81f72bf620e`  
		Last Modified: Tue, 24 Nov 2026 05:23:27 GMT  
		Size: 6.1 KB (6101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80192b4ba8abbcc2ee558b066599f063c53d83ee80e8fb9a15309ea415cbca35`  
		Last Modified: Tue, 24 Nov 2026 05:23:28 GMT  
		Size: 182.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:15-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:c331afe170e879a37535b05c1b4dbdc8ad0e35f7b0b7e58eedd2a3321eedfde0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5451303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57304003c94fb1b18a160fd2f77483e1b0abdf241625da97c1b90fb19dff4920`

```dockerfile
```

-	Layers:
	-	`sha256:a37df797d67023c63523436dfceff624eb23eec54f60bd89c1a4e4ca521049b6`  
		Last Modified: Tue, 24 Nov 2026 05:23:25 GMT  
		Size: 5.4 MB (5398950 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3058168f2764dd60efae895477a8468e3de425b46dcb93b5acbd76a2b58a2489`  
		Last Modified: Tue, 24 Nov 2026 05:23:25 GMT  
		Size: 52.4 KB (52353 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:15-trixie` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:29d8637dc6e688cb732a85cfd9577d8367f2a45871a9c04fba6e67205c6987c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.7 MB (162748454 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:718c5a5aaa75343e4d9d6bc04a763d4cd9131229ebef60fa79fd897ab22b201e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:34:34 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 		install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql; 		install --verbose --directory --owner postgres --group postgres --mode 3777 /run/postgresql; 		mkdir -p /usr/local/lib/tmpfiles.d; 	printf '%s\n' 		'd /var/lib/postgresql 1777 postgres postgres' 		'd /run/postgresql 3777 postgres postgres' 		> /usr/local/lib/tmpfiles.d/postgresql-common.conf # buildkit
# Tue, 24 Nov 2026 04:34:40 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:34:47 GMT
ENV GOSU_VERSION=1.20
# Tue, 24 Nov 2026 04:34:47 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 24 Nov 2026 04:34:52 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 24 Nov 2026 04:34:52 GMT
ENV LANG=en_US.utf8
# Tue, 24 Nov 2026 04:34:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:34:56 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 24 Nov 2026 04:34:57 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 24 Nov 2026 04:34:57 GMT
ENV PG_MAJOR=15
# Tue, 24 Nov 2026 04:34:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/15/bin
# Tue, 24 Nov 2026 04:34:57 GMT
ENV PG_VERSION=15.20-1.pgdg13+1
# Tue, 24 Nov 2026 04:35:12 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 24 Nov 2026 04:35:13 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 24 Nov 2026 04:35:13 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 24 Nov 2026 04:35:13 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Tue, 24 Nov 2026 04:35:13 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 24 Nov 2026 04:35:13 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:35:13 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 24 Nov 2026 04:35:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:35:13 GMT
STOPSIGNAL SIGINT
# Tue, 24 Nov 2026 04:35:13 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 24 Nov 2026 04:35:13 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:48fb00926fe468d83ca04ee6775f36350d17e0f328dfcb03aadb5de0c52ae3f6`  
		Last Modified: Tue, 24 Nov 2026 03:40:29 GMT  
		Size: 30.2 MB (30198034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:412012c25e8e50aaa8705f85ce401bd343f9555a2852714181a55550f4b2ef70`  
		Last Modified: Tue, 24 Nov 2026 04:35:32 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b76576edbf0f07cdaa66d1b750fbad25e9548c2a5d368cac69f3ce0beb4fada7`  
		Last Modified: Tue, 24 Nov 2026 04:35:32 GMT  
		Size: 6.2 MB (6235048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea5e03f9446af2792481fdc11d5ef1e11dd3e29fb3ac3eb2064d834034a9be1c`  
		Last Modified: Tue, 24 Nov 2026 04:35:32 GMT  
		Size: 1.2 MB (1210396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:846202d4b47a6ae9554b04ca0b892e90a2543d59c1f40af1b035f618d92d7f13`  
		Last Modified: Tue, 24 Nov 2026 04:35:32 GMT  
		Size: 8.2 MB (8204059 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84e182b79599dd7025406d5691e6b2fd51599236659aae56359b2a5adc941399`  
		Last Modified: Tue, 24 Nov 2026 04:35:33 GMT  
		Size: 1.2 MB (1220656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e4ca7b74ec2912c0830e4efb5a46be21f0d9d1c796ad38083bd18b4a209810f`  
		Last Modified: Tue, 24 Nov 2026 04:35:33 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44263c73d02684854079805bdee7cab3760ce845260f4032c446d4dd9611437c`  
		Last Modified: Tue, 24 Nov 2026 04:35:34 GMT  
		Size: 3.1 KB (3142 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a828db5a7b5ef39aecea609e003be106020050d774dc06b2ef75695e73132c5f`  
		Last Modified: Tue, 24 Nov 2026 04:35:36 GMT  
		Size: 115.7 MB (115659280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6577100b4a872bb20319f11dacefd475b11487f62847e71a56ab7dc2e70c3f6e`  
		Last Modified: Tue, 24 Nov 2026 04:35:34 GMT  
		Size: 9.9 KB (9947 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:318cc4e988bdd32fb4e5cc2b7dcdcf57ff386f6991e463d15d5cf136c801d4b8`  
		Last Modified: Tue, 24 Nov 2026 04:35:34 GMT  
		Size: 168.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c75c26dcf22dd93a1f761dc354939dd68d8404739815e9a078b4dda6b90054d`  
		Last Modified: Tue, 24 Nov 2026 04:35:35 GMT  
		Size: 6.1 KB (6101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6124f167b7e43bc64749d307c04d2ef3d282b2eab2df265c7ec219fbe1ad6bbd`  
		Last Modified: Tue, 24 Nov 2026 04:35:35 GMT  
		Size: 182.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:15-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:d02847d3ac18f707bdee59876a36018c8aa72c3ecf81638d0c8b44d3c3ecf32f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6071901 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afcec04f4141ec750f72f65891f5cf56b7d4b5ab3e860845d1ea42fd68722e7f`

```dockerfile
```

-	Layers:
	-	`sha256:ed96a5a35b8d33b71920b65f564fb33c425e56b9f0e5253de49f0731e60655f4`  
		Last Modified: Tue, 24 Nov 2026 04:35:32 GMT  
		Size: 6.0 MB (6019499 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:46d8030005042ae5fbafc86743929d5daaf93ed86c964a75aed03210a79db4e5`  
		Last Modified: Tue, 24 Nov 2026 04:35:32 GMT  
		Size: 52.4 KB (52402 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:15-trixie` - linux; 386

```console
$ docker pull postgres@sha256:cc025411281fcab36ae9ee660619832425a1cf1d6e7a80745a7a3a5ef9e7fdd3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.7 MB (100731520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5774478ef92bde6df447805a909d76a0564e636b16cb159b429f2b5134b5e11b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:32:17 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 		install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql; 		install --verbose --directory --owner postgres --group postgres --mode 3777 /run/postgresql; 		mkdir -p /usr/local/lib/tmpfiles.d; 	printf '%s\n' 		'd /var/lib/postgresql 1777 postgres postgres' 		'd /run/postgresql 3777 postgres postgres' 		> /usr/local/lib/tmpfiles.d/postgresql-common.conf # buildkit
# Tue, 24 Nov 2026 04:32:23 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:32:30 GMT
ENV GOSU_VERSION=1.20
# Tue, 24 Nov 2026 04:32:30 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 24 Nov 2026 04:32:35 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 24 Nov 2026 04:32:35 GMT
ENV LANG=en_US.utf8
# Tue, 24 Nov 2026 04:32:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:32:38 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 24 Nov 2026 04:32:39 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 24 Nov 2026 04:32:39 GMT
ENV PG_MAJOR=15
# Tue, 24 Nov 2026 04:32:39 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/15/bin
# Tue, 24 Nov 2026 04:32:39 GMT
ENV PG_VERSION=15.20-1.pgdg13+1
# Tue, 24 Nov 2026 04:40:09 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 24 Nov 2026 04:40:09 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 24 Nov 2026 04:40:09 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 24 Nov 2026 04:40:09 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Tue, 24 Nov 2026 04:40:09 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 24 Nov 2026 04:40:09 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:40:10 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 24 Nov 2026 04:40:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:40:10 GMT
STOPSIGNAL SIGINT
# Tue, 24 Nov 2026 04:40:10 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 24 Nov 2026 04:40:10 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:7fb9e5f471a439ab129e9fe258623bccb6c4da1d0313890202b55fd6b5839533`  
		Last Modified: Tue, 24 Nov 2026 03:40:30 GMT  
		Size: 31.4 MB (31357919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6718d79b32a21d11450b67105cef1f08cd740901da23bde41470993733802a80`  
		Last Modified: Tue, 24 Nov 2026 04:40:22 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59ee428ce02971cc8b8c412737e8397fbd0d7dd67889cee7529b908ac160b981`  
		Last Modified: Tue, 24 Nov 2026 04:40:22 GMT  
		Size: 6.6 MB (6631399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1cbad85eaee68680fced0d64a1ac97536660a48f0508f6bfb0ab4ae0815a524`  
		Last Modified: Tue, 24 Nov 2026 04:40:22 GMT  
		Size: 1.2 MB (1226761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efbf6655c03a4fda90d17495e8fa83a8c9a3c38d452da672b0294b2151f156f8`  
		Last Modified: Tue, 24 Nov 2026 04:40:22 GMT  
		Size: 8.2 MB (8204057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50e38ec953766e0fa65a94ec59b18a79594b6a074d1bd457cc2f5629b9897c0e`  
		Last Modified: Tue, 24 Nov 2026 04:40:23 GMT  
		Size: 1.3 MB (1308301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7138e9d372e0649c47fb2cbbbefbbadcea4b360fcbd26f1e88e4f7781729ab10`  
		Last Modified: Tue, 24 Nov 2026 04:40:23 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7751dbd090b3e025e236af56957eb1a9c55143596485363e239d9eb6f0c5d7f0`  
		Last Modified: Tue, 24 Nov 2026 04:40:23 GMT  
		Size: 3.1 KB (3143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe7c4cdcfe67f3f7cde6a1406050c0df624febd03cba8de74afc7dae394f79ba`  
		Last Modified: Tue, 24 Nov 2026 04:40:25 GMT  
		Size: 52.0 MB (51982118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:991b4d89f4dfe572c0127d34929f757d6b96ae09e498e3183352df9e73afc2f9`  
		Last Modified: Tue, 24 Nov 2026 04:40:24 GMT  
		Size: 9.9 KB (9936 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f31c52b8fbfc8661dc5ac1005c5ca47bb6443aa6b3494027f31bc9879b4e120`  
		Last Modified: Tue, 24 Nov 2026 04:40:24 GMT  
		Size: 164.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2168bee04bbf76fc722799d280496ab4cabe21e23e293ee47bf385eb940495c`  
		Last Modified: Tue, 24 Nov 2026 04:40:24 GMT  
		Size: 6.1 KB (6102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af43c6e1ac5773b233227843900f407c833846d167ff8361ef08f5a58a7cbe4d`  
		Last Modified: Tue, 24 Nov 2026 04:40:26 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:15-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:86b17c1aa5cd805c8b9277245da462d386a4eda0fe164a8a261e0856e265ad9a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5447097 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0926602a67a085dad59b131c930fcaf1a8e9c46fdc6a36c5144dfddc2f755eea`

```dockerfile
```

-	Layers:
	-	`sha256:6fd0d45f6b264d6728808efca40751ccf825894cf4caec8cc1b0635f89c820b1`  
		Last Modified: Tue, 24 Nov 2026 04:40:22 GMT  
		Size: 5.4 MB (5395004 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bf3e4700d0460c4a2e8297f50d55cf3fc9be6ecff0e0b066f3659e6bd41fd436`  
		Last Modified: Tue, 24 Nov 2026 04:40:22 GMT  
		Size: 52.1 KB (52093 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:15-trixie` - linux; ppc64le

```console
$ docker pull postgres@sha256:349813a77ffa7086f9b8c89d39dace8370858f74c19dc7494196afaa5a23ed6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.1 MB (177053127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d42cf7585389514ba99482b28dadceaeb3b231f7a65ce96aee718187d90418ac`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 06:24:52 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 		install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql; 		install --verbose --directory --owner postgres --group postgres --mode 3777 /run/postgresql; 		mkdir -p /usr/local/lib/tmpfiles.d; 	printf '%s\n' 		'd /var/lib/postgresql 1777 postgres postgres' 		'd /run/postgresql 3777 postgres postgres' 		> /usr/local/lib/tmpfiles.d/postgresql-common.conf # buildkit
# Tue, 24 Nov 2026 06:25:08 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 06:25:23 GMT
ENV GOSU_VERSION=1.20
# Tue, 24 Nov 2026 06:25:23 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 24 Nov 2026 06:25:35 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 24 Nov 2026 06:25:35 GMT
ENV LANG=en_US.utf8
# Tue, 24 Nov 2026 06:25:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 06:25:44 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 24 Nov 2026 06:25:45 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 24 Nov 2026 06:25:45 GMT
ENV PG_MAJOR=15
# Tue, 24 Nov 2026 06:25:45 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/15/bin
# Tue, 24 Nov 2026 06:25:45 GMT
ENV PG_VERSION=15.20-1.pgdg13+1
# Tue, 24 Nov 2026 06:34:22 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 24 Nov 2026 06:34:23 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 24 Nov 2026 06:34:23 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 24 Nov 2026 06:34:23 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Tue, 24 Nov 2026 06:34:23 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 24 Nov 2026 06:34:25 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 06:34:26 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 24 Nov 2026 06:34:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 06:34:26 GMT
STOPSIGNAL SIGINT
# Tue, 24 Nov 2026 06:34:26 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 24 Nov 2026 06:34:26 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:6d599ee149161123db04af161af351247dbcd557ec08f78d82de0c89b6844f6c`  
		Last Modified: Tue, 24 Nov 2026 03:42:42 GMT  
		Size: 33.7 MB (33652639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29059c7b25b766eaf9e96c6df9673d14470eeebba497ed6e64573c643b789b88`  
		Last Modified: Tue, 24 Nov 2026 06:27:11 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fd6624fb9b2fbbc72f0fc145c8ce50169b951399a2c0313370a8ae182d9dba2`  
		Last Modified: Tue, 24 Nov 2026 06:27:12 GMT  
		Size: 7.1 MB (7076909 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a8f8f7c0c38631e1ee6db241f5fccdf0cf25b05222b3b75930a3f46f3563c49`  
		Last Modified: Tue, 24 Nov 2026 06:27:11 GMT  
		Size: 1.2 MB (1215503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af47506c326b15daed7b1ca6bc65266f2fa58e44c14ed75f9877b80d0f1ba4f0`  
		Last Modified: Tue, 24 Nov 2026 06:27:12 GMT  
		Size: 8.2 MB (8204149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33de6a989c156818e52888b82b795c8e6a468cc6e247d847a164d8a33679e53c`  
		Last Modified: Tue, 24 Nov 2026 06:27:12 GMT  
		Size: 1.4 MB (1394984 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e494ae3d0aaebd0a2515473b94e2d080eb6b9b8e0edf4aff9908fccf828cef9`  
		Last Modified: Tue, 24 Nov 2026 06:27:13 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11d2f8fa925ff5ddd79ed3df0815cdb0ca704762a9c48f3a28b37b3af553ef50`  
		Last Modified: Tue, 24 Nov 2026 06:27:13 GMT  
		Size: 3.1 KB (3142 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cd4bd80f107e17ab304dfa27eb81d30be5df7bade7988fe5cebfa9d06bd6c51`  
		Last Modified: Tue, 24 Nov 2026 06:35:14 GMT  
		Size: 125.5 MB (125487973 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97cca1b9aa9a762a3abf262d4e7b42204c1ca31033a8ace487e2bb5a6385261b`  
		Last Modified: Tue, 24 Nov 2026 06:35:11 GMT  
		Size: 9.9 KB (9938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0f8d69bac3ef8277c2c9e903b4b277ff531df082ec04ad82c2ad479d69ddb06`  
		Last Modified: Tue, 24 Nov 2026 06:35:11 GMT  
		Size: 166.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2653cdef4d2f60c144d627a4bd8737cea919582c7d937b1fa64be361c7700d0f`  
		Last Modified: Tue, 24 Nov 2026 06:35:11 GMT  
		Size: 6.1 KB (6102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b7c40d8e5ed17543150a7faa5d78b1483971401ef8ecf547ec90700414c3704`  
		Last Modified: Tue, 24 Nov 2026 06:35:12 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:15-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:ef0445fa136e9fe7d817bb60a1b42454620cbb2d455e6dc4649facbf97ca4424
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6058618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16fdb2ff003ca16af3d7c6a819e9caeb5347cf3999a63f51ca9d8e445e07b515`

```dockerfile
```

-	Layers:
	-	`sha256:28ae0ac7994240daff05081e17163807cce9eb1695beda2f009166e123f2489d`  
		Last Modified: Tue, 24 Nov 2026 06:35:11 GMT  
		Size: 6.0 MB (6006404 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:51a66fcc651170e98f32883754af2725be3c0fe8ba9503c4b04c2d36c170aabb`  
		Last Modified: Tue, 24 Nov 2026 06:35:10 GMT  
		Size: 52.2 KB (52214 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:15-trixie` - linux; riscv64

```console
$ docker pull postgres@sha256:9cf1042d0b543e6528af46883798eb358c50cd218cc6bc6b28e480e7c4e01b23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.4 MB (96356177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd567b0df5b5aae4f7c65b7bb3eeeed16b3d405879cb4249068b5902f1ebe858`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1795392000'
# Thu, 26 Nov 2026 10:41:53 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 		install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql; 		install --verbose --directory --owner postgres --group postgres --mode 3777 /run/postgresql; 		mkdir -p /usr/local/lib/tmpfiles.d; 	printf '%s\n' 		'd /var/lib/postgresql 1777 postgres postgres' 		'd /run/postgresql 3777 postgres postgres' 		> /usr/local/lib/tmpfiles.d/postgresql-common.conf # buildkit
# Thu, 26 Nov 2026 10:42:52 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 26 Nov 2026 10:43:55 GMT
ENV GOSU_VERSION=1.20
# Thu, 26 Nov 2026 10:43:55 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 26 Nov 2026 10:45:00 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Thu, 26 Nov 2026 10:45:00 GMT
ENV LANG=en_US.utf8
# Thu, 26 Nov 2026 10:45:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 26 Nov 2026 10:45:44 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 26 Nov 2026 10:45:45 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 26 Nov 2026 10:45:45 GMT
ENV PG_MAJOR=15
# Thu, 26 Nov 2026 10:45:45 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/15/bin
# Thu, 26 Nov 2026 10:45:45 GMT
ENV PG_VERSION=15.20-1.pgdg13+1
# Thu, 26 Nov 2026 21:44:28 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Thu, 26 Nov 2026 21:44:29 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 26 Nov 2026 21:44:29 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 26 Nov 2026 21:44:29 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Thu, 26 Nov 2026 21:44:29 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 26 Nov 2026 21:44:29 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 26 Nov 2026 21:44:30 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 26 Nov 2026 21:44:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Nov 2026 21:44:30 GMT
STOPSIGNAL SIGINT
# Thu, 26 Nov 2026 21:44:30 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 26 Nov 2026 21:44:30 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:b07b5cc48f273ac97ec9a206cde2c52bcddea72c7c92bb45fdccce25449d7ee7`  
		Last Modified: Tue, 24 Nov 2026 03:57:16 GMT  
		Size: 28.3 MB (28333648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a30ea98b6496f1ce82fecd1e77323085616a23c25bde1ecce3669422ea77f6be`  
		Last Modified: Thu, 26 Nov 2026 12:59:29 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08bd72b5ea3a574969e51705572c5f8963722f952cfee8128c7eb3939ce9af95`  
		Last Modified: Thu, 26 Nov 2026 12:59:32 GMT  
		Size: 6.3 MB (6293064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f84d4ed02040c33ddc62bc1ef4aa26e38bc1ed21ddd1dafafd582ef66964eac9`  
		Last Modified: Thu, 26 Nov 2026 12:59:30 GMT  
		Size: 1.2 MB (1202796 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d2199953116dcd8f80d2320ca02251111e692e785a5dc3c9a85550e10b6a517`  
		Last Modified: Thu, 26 Nov 2026 12:59:33 GMT  
		Size: 8.2 MB (8203772 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9c365d3ec4f4b251e8143c8fb80f5e406b7e7aabb53a25878388ea91a53d7eb`  
		Last Modified: Thu, 26 Nov 2026 12:59:33 GMT  
		Size: 1.8 MB (1825615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f2fc1ea1b912611eef3e2825ebc9bed044060202f772519b6297f9e36980ece`  
		Last Modified: Thu, 26 Nov 2026 12:59:32 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04535e0cd35ac57633164a9bb882821a503ecbd3c5dc4bd97f5ac641558ced4e`  
		Last Modified: Thu, 26 Nov 2026 12:59:34 GMT  
		Size: 3.1 KB (3142 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:129b81103266ee732d4c61b9bc6f696f7d972a079b9d65ef9205c57af0be4cf5`  
		Last Modified: Thu, 26 Nov 2026 21:47:16 GMT  
		Size: 50.5 MB (50476304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:003fe521b800ae239f0880a7371691440f4c8164ba746fabb722a731b696d590`  
		Last Modified: Thu, 26 Nov 2026 21:47:08 GMT  
		Size: 9.9 KB (9943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ddc19565599f29bcecfd45c067c25b11c7df43b67c7c1fd1d34881520a41f71`  
		Last Modified: Thu, 26 Nov 2026 21:47:08 GMT  
		Size: 166.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e94507c8db5fcdb35c5dd6674764e0b0a633d12a112248c8653138bf36432922`  
		Last Modified: Thu, 26 Nov 2026 21:47:08 GMT  
		Size: 6.1 KB (6105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed54b774fa07cef5447b7f84fd6798dc81cb90d607f2cb0c9b7d02a73d6a1aaa`  
		Last Modified: Thu, 26 Nov 2026 21:47:09 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:15-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:50321a0e56e75f842dd9d5080cd5b4f5e03b63337f2deb69328a8c6df288fb73
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5448482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6eef5970177fb888666e3837cce05c4c8f0887f51afdcc77ea0480f56badbf8`

```dockerfile
```

-	Layers:
	-	`sha256:3d1342cd33d979c1834958b74892b68dbee53c730d7aec466148de6f57da8d4a`  
		Last Modified: Thu, 26 Nov 2026 21:47:09 GMT  
		Size: 5.4 MB (5396273 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c5b4492b3a6d95ef919b883ef5bef23ad8db3d56ddd3e44bb3aba3d1cef84780`  
		Last Modified: Thu, 26 Nov 2026 21:47:07 GMT  
		Size: 52.2 KB (52209 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:15-trixie` - linux; s390x

```console
$ docker pull postgres@sha256:60018315f923fd0369440fe8439f9c735debc6aed4916382a72550ae9032636e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.7 MB (178695996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0ba23c9a45aa9f309699bf31d351f8b6fc38cba482eac4a3afedc5015426ea0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:36:05 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 		install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql; 		install --verbose --directory --owner postgres --group postgres --mode 3777 /run/postgresql; 		mkdir -p /usr/local/lib/tmpfiles.d; 	printf '%s\n' 		'd /var/lib/postgresql 1777 postgres postgres' 		'd /run/postgresql 3777 postgres postgres' 		> /usr/local/lib/tmpfiles.d/postgresql-common.conf # buildkit
# Tue, 24 Nov 2026 04:36:10 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:36:17 GMT
ENV GOSU_VERSION=1.20
# Tue, 24 Nov 2026 04:36:17 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 24 Nov 2026 04:36:21 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 24 Nov 2026 04:36:21 GMT
ENV LANG=en_US.utf8
# Tue, 24 Nov 2026 04:36:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:36:25 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 24 Nov 2026 04:36:25 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 24 Nov 2026 04:36:25 GMT
ENV PG_MAJOR=15
# Tue, 24 Nov 2026 04:36:25 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/15/bin
# Tue, 24 Nov 2026 04:36:25 GMT
ENV PG_VERSION=15.20-1.pgdg13+1
# Tue, 24 Nov 2026 04:58:38 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 24 Nov 2026 04:58:39 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 24 Nov 2026 04:58:39 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 24 Nov 2026 04:58:39 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Tue, 24 Nov 2026 04:58:39 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 24 Nov 2026 04:58:39 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:58:39 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 24 Nov 2026 04:58:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:58:39 GMT
STOPSIGNAL SIGINT
# Tue, 24 Nov 2026 04:58:39 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 24 Nov 2026 04:58:39 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:91ebccdf019d96a72e787fff6138b9e04ff9a7ff70e743fc708f540300557922`  
		Last Modified: Tue, 24 Nov 2026 03:40:01 GMT  
		Size: 29.9 MB (29910026 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78a1d906c6fb62fe52e223e755b51ad5f79bfcaab17aba6c97d46d367f706bc0`  
		Last Modified: Tue, 24 Nov 2026 04:48:14 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f21b2417809512a27a4d6bb842643d72d79ac50d580904fb9f7f44a3d2851862`  
		Last Modified: Tue, 24 Nov 2026 04:48:14 GMT  
		Size: 6.4 MB (6408513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afd3df278b5d15072e0fced3e1e573428e5b0ca0d2e826cbcd02e45540b1fed9`  
		Last Modified: Tue, 24 Nov 2026 04:48:14 GMT  
		Size: 1.2 MB (1231592 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:294a22e681356630f9c28312370875e5cd89a69ed51a1b933295aa0c6d86ba75`  
		Last Modified: Tue, 24 Nov 2026 04:48:14 GMT  
		Size: 8.3 MB (8258976 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04706828d364064e208f05de88e720fec6c5dc4d48c54841ea2f12839b8aba01`  
		Last Modified: Tue, 24 Nov 2026 04:48:15 GMT  
		Size: 1.4 MB (1398232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d87725f1be31c8f50121829c51e12bfe389807ef2f4d663484b96c255b3bf321`  
		Last Modified: Tue, 24 Nov 2026 04:48:15 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:263643441dbbf77ba4b3dc4f84a8b0fdef90a78575cb49700a3461a8e49bebab`  
		Last Modified: Tue, 24 Nov 2026 04:48:15 GMT  
		Size: 3.1 KB (3140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58f83787a6927385e9fdb67f0d12962d4708583f5e7689e76c0e1d228b0e55c7`  
		Last Modified: Tue, 24 Nov 2026 04:59:10 GMT  
		Size: 131.5 MB (131467684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a879e2f897f91c76b997e9568cd105a254b79f0162d9d5b5a0ac610ed0f424d2`  
		Last Modified: Tue, 24 Nov 2026 04:59:08 GMT  
		Size: 9.9 KB (9935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3debcabc5aa9cd01481918c3ba13dfe0c4610207f7e215084eabbd73548e94cb`  
		Last Modified: Tue, 24 Nov 2026 04:59:08 GMT  
		Size: 166.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb94976281d9c00e2484e634be80ee43eb66f4895838da63069e8bd2194d2e4c`  
		Last Modified: Tue, 24 Nov 2026 04:59:08 GMT  
		Size: 6.1 KB (6104 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:677b9213d523221c756fb3f235b0ed1b4cc42f8ea00f30929d5cae056acc51dc`  
		Last Modified: Tue, 24 Nov 2026 04:59:09 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:15-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:359c25aba828d2613715b9541b116ea8edf44cbcdfa1a2006117b6a3d22c0135
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6068559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1fe79977825dbbfdb9feda2be6fb3eb558bc7589f533ca880fd6a2a3eb9574d`

```dockerfile
```

-	Layers:
	-	`sha256:adf03564fe4556f35fd4f8d4240cfa8ff884a6038057e44959f32a3f488d58c8`  
		Last Modified: Tue, 24 Nov 2026 04:59:08 GMT  
		Size: 6.0 MB (6016410 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fcd15c8fbc6c1a7ec727edc7aa23843035b7a2f2b4560abc06de83b56b446821`  
		Last Modified: Tue, 24 Nov 2026 04:59:08 GMT  
		Size: 52.1 KB (52149 bytes)  
		MIME: application/vnd.in-toto+json
