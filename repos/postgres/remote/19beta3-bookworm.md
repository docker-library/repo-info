## `postgres:19beta3-bookworm`

```console
$ docker pull postgres@sha256:f455e4b68aa121bae11e396f233d27aa780b7902d14c8e0e4aeef5bbf25e67a6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 10
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `postgres:19beta3-bookworm` - linux; amd64

```console
$ docker pull postgres@sha256:608f5ffc567c5cd078892ad4a842e2168b0363fc7e695c13e5c2a05c00e8732b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.6 MB (158607004 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52de98b4e4465836a3d5c0219506e81941059f33c4b19b3904f0e68b2ce56b10`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:35:31 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Sat, 19 Sep 2026 00:35:35 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:35:41 GMT
ENV GOSU_VERSION=1.19
# Sat, 19 Sep 2026 00:35:41 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 19 Sep 2026 00:35:45 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Sat, 19 Sep 2026 00:35:45 GMT
ENV LANG=en_US.utf8
# Sat, 19 Sep 2026 00:35:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:35:47 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Sat, 19 Sep 2026 00:35:48 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Sat, 19 Sep 2026 00:35:48 GMT
ENV PG_MAJOR=19
# Sat, 19 Sep 2026 00:35:48 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Sat, 19 Sep 2026 00:35:48 GMT
ENV PG_VERSION=19~beta3-1.pgdg12+1
# Sat, 19 Sep 2026 00:36:01 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Sat, 19 Sep 2026 00:36:01 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Sat, 19 Sep 2026 00:36:01 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Sat, 19 Sep 2026 00:36:01 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Sat, 19 Sep 2026 00:36:01 GMT
VOLUME [/var/lib/postgresql]
# Sat, 19 Sep 2026 00:36:01 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:36:01 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Sat, 19 Sep 2026 00:36:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 00:36:01 GMT
STOPSIGNAL SIGINT
# Sat, 19 Sep 2026 00:36:01 GMT
EXPOSE map[5432/tcp:{}]
# Sat, 19 Sep 2026 00:36:01 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:774043ccc8ccd0d0833a9ee0792142ab7ad93df971e59dd248fbf82db16d0150`  
		Last Modified: Sat, 19 Sep 2026 00:03:16 GMT  
		Size: 28.2 MB (28238443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2455d5db1caf25a4259cab5677a3f68ab2aa83227d0711e18821d902c76b6be`  
		Last Modified: Sat, 19 Sep 2026 00:36:20 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8445317dd84fa26748917bcb3765c81735e7b221a7c7baf1187cb0962b1d5b2e`  
		Last Modified: Sat, 19 Sep 2026 00:36:20 GMT  
		Size: 4.5 MB (4534227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dd9b1a67dcf8d470e8cd3a908a7305bd5b125f281d3a4b68a74a097b90bc664`  
		Last Modified: Sat, 19 Sep 2026 00:36:20 GMT  
		Size: 1.3 MB (1250064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0d7eb46537458061dc4234d043b17ff72cca13f76afda5fd87e038a4efc7fae`  
		Last Modified: Sat, 19 Sep 2026 00:36:20 GMT  
		Size: 8.1 MB (8066429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a60cdc4b8b6487b29467fc639e75738233c4e7d1c9a94e74e817f3d3cdb6acd`  
		Last Modified: Sat, 19 Sep 2026 00:36:21 GMT  
		Size: 1.2 MB (1196444 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00ea30b13a586a07cd168dee52d927884b09db454f9ba98e87712d9bf9212d89`  
		Last Modified: Sat, 19 Sep 2026 00:36:21 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7086798276475b840c4ab90fd03fe1f86e7ba996db748989cd6390f5f4d73fd4`  
		Last Modified: Sat, 19 Sep 2026 00:36:21 GMT  
		Size: 3.1 KB (3143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5827463032b1860678c2ef88fc9bdb11d30305ec919062b3aa3cc47c0ade07dc`  
		Last Modified: Sat, 19 Sep 2026 00:36:24 GMT  
		Size: 115.3 MB (115289073 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e363f632b664a08fdbced1cc2e1af187e7a422cc8deed6ab08c8673d8fbf011`  
		Last Modified: Sat, 19 Sep 2026 00:36:22 GMT  
		Size: 21.5 KB (21478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbe5ba18b4662f4e30072c0f7db88281be5b20b05a28e9f67cc6d9c74bd7ab4d`  
		Last Modified: Sat, 19 Sep 2026 00:36:22 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c14e005198660168c001aa276b6d01c3e474f1b035288fbfc38a00e6e3c6fe0`  
		Last Modified: Sat, 19 Sep 2026 00:36:23 GMT  
		Size: 6.1 KB (6107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a47b4d30228f4a7c6c7ac41cb47a59e86a7434500a152ecb67c3a0ce36b7711`  
		Last Modified: Sat, 19 Sep 2026 00:36:23 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta3-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:9bac861f45b7d96ef8893581b1178f0e8a66a966155c0ee01fa9edb1dfc6cd5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6249135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:280fb38e26a4245db1ed4aac3edf37095fb1fa32f460e3ee382b16c2a3e81820`

```dockerfile
```

-	Layers:
	-	`sha256:e0ce786a6ce257b80c8fe37028f595bd970fd111b7debaaa29492608a61f04ec`  
		Last Modified: Sat, 19 Sep 2026 00:36:20 GMT  
		Size: 6.2 MB (6198133 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0dc718b3a6aac3373c8c8445abd01b685b927abd5573f5ff9d05bacb51c49c14`  
		Last Modified: Sat, 19 Sep 2026 00:36:20 GMT  
		Size: 51.0 KB (51002 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta3-bookworm` - linux; arm variant v7

```console
$ docker pull postgres@sha256:255ac64844cd5eb409c04459953a191a3e7c14af8bf1d53e1a9197f6fcbbde68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.9 MB (83898451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:537ac1fbe5daa5e4e0eb6a38a9f01bd9ac55a32455dfde5aabbf47aae0dc8720`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:07:04 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Sat, 19 Sep 2026 01:07:11 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:07:19 GMT
ENV GOSU_VERSION=1.19
# Sat, 19 Sep 2026 01:07:19 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 19 Sep 2026 01:07:25 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Sat, 19 Sep 2026 01:07:25 GMT
ENV LANG=en_US.utf8
# Sat, 19 Sep 2026 01:07:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:07:29 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Sat, 19 Sep 2026 01:07:29 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Sat, 19 Sep 2026 01:07:29 GMT
ENV PG_MAJOR=19
# Sat, 19 Sep 2026 01:07:29 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Sat, 19 Sep 2026 01:07:29 GMT
ENV PG_VERSION=19~beta3-1.pgdg12+1
# Sat, 19 Sep 2026 01:20:02 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Sat, 19 Sep 2026 01:20:02 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Sat, 19 Sep 2026 01:20:02 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Sat, 19 Sep 2026 01:20:02 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Sat, 19 Sep 2026 01:20:02 GMT
VOLUME [/var/lib/postgresql]
# Sat, 19 Sep 2026 01:20:02 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 01:20:02 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Sat, 19 Sep 2026 01:20:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 01:20:02 GMT
STOPSIGNAL SIGINT
# Sat, 19 Sep 2026 01:20:02 GMT
EXPOSE map[5432/tcp:{}]
# Sat, 19 Sep 2026 01:20:02 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:0f3351a6d282c9993e318db2f90ca23ba75e8f5e94bfff11cad56d85c2a630d2`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 23.9 MB (23943116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e9a9c637502563548585ee94697fee9069b989f9d9fbf6d511d2e08445e398e`  
		Last Modified: Sat, 19 Sep 2026 01:20:14 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9b5a1e27b1b2691bf9bd24236601ad4ee1cf20e636e09c3fc0af94f73c26cf1`  
		Last Modified: Sat, 19 Sep 2026 01:20:15 GMT  
		Size: 3.7 MB (3742733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a6b051b7fbaa7637afc10820db3707e4c14b25eed3fce7e05fa24147015a828`  
		Last Modified: Sat, 19 Sep 2026 01:20:15 GMT  
		Size: 1.2 MB (1216584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed277fd634f346ef375040add64f8f10108d65da9f5833edd9eda374bfc9510d`  
		Last Modified: Sat, 19 Sep 2026 01:20:15 GMT  
		Size: 8.1 MB (8066414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c15419334f2c21432585dea71c3567db9d3808b61626f56f4038fa01aff58402`  
		Last Modified: Sat, 19 Sep 2026 01:20:16 GMT  
		Size: 1.1 MB (1067325 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c38749bf17b28dbdb1640b3087cdd8006f96e7efd578239e57b15c042c27c7be`  
		Last Modified: Sat, 19 Sep 2026 01:20:16 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ec32e91ca48d499b19c105f176ac6f8747d9ba1b0fdf13ad1387ed052118ed2`  
		Last Modified: Sat, 19 Sep 2026 01:20:16 GMT  
		Size: 3.1 KB (3140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23581c28b558fc154f7d548a56d8652d65dcd200a01dde392d1a4bb7ffd969aa`  
		Last Modified: Sat, 19 Sep 2026 01:20:17 GMT  
		Size: 45.8 MB (45829958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0438b215dc72af08d11ae0a767eb21269d8ca795a0088e99b0074073b935d07f`  
		Last Modified: Sat, 19 Sep 2026 01:20:17 GMT  
		Size: 21.5 KB (21476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5bfbef9b6ed98cca3501a70c6e93b741ee8814d69a8f4d187804322b8171db1`  
		Last Modified: Sat, 19 Sep 2026 01:20:17 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9d9fe8377953e61f6fb490dcc30a422b3480dfb8f8ca9a4b6b0b1b2af361d46`  
		Last Modified: Sat, 19 Sep 2026 01:20:17 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af34fc692f6347640c5bf07076a38c86ea5ef6a1af324a55cfe24ace638a08f0`  
		Last Modified: Sat, 19 Sep 2026 01:20:18 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta3-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:fc9d8eac2c22599aaa93f17f35d391334024bb68b1d3b72d3c6dbe402a7aeafd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5376203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a711a2cab54b696eb863aa850d85ddd02d866252377f71af4701b6f4f3b37d1`

```dockerfile
```

-	Layers:
	-	`sha256:31a0c3b5e121249a5cd57ebee62e42b14cdebe3b8b20a1f9d362cb263bc473fb`  
		Last Modified: Sat, 19 Sep 2026 01:20:15 GMT  
		Size: 5.3 MB (5325020 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dca549ead9ff86147e14dd6871ca0bf34c553e904c89fa98a48b290187eca45d`  
		Last Modified: Sat, 19 Sep 2026 01:20:14 GMT  
		Size: 51.2 KB (51183 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta3-bookworm` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:5102aec8c9a0858a1144bccc1b2ae168aed7bc115aabeed59bdae009813f4024
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.5 MB (156549952 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb530960f510559ffd3028fc1cf919879424b8c65784548ddd885cf349e48b13`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:37:20 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Sat, 19 Sep 2026 00:37:25 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:37:31 GMT
ENV GOSU_VERSION=1.19
# Sat, 19 Sep 2026 00:37:31 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 19 Sep 2026 00:37:36 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Sat, 19 Sep 2026 00:37:36 GMT
ENV LANG=en_US.utf8
# Sat, 19 Sep 2026 00:37:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:37:39 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Sat, 19 Sep 2026 00:37:39 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Sat, 19 Sep 2026 00:37:39 GMT
ENV PG_MAJOR=19
# Sat, 19 Sep 2026 00:37:39 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Sat, 19 Sep 2026 00:37:39 GMT
ENV PG_VERSION=19~beta3-1.pgdg12+1
# Sat, 19 Sep 2026 00:37:54 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Sat, 19 Sep 2026 00:37:54 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Sat, 19 Sep 2026 00:37:54 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Sat, 19 Sep 2026 00:37:54 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Sat, 19 Sep 2026 00:37:54 GMT
VOLUME [/var/lib/postgresql]
# Sat, 19 Sep 2026 00:37:54 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:37:54 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Sat, 19 Sep 2026 00:37:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 00:37:54 GMT
STOPSIGNAL SIGINT
# Sat, 19 Sep 2026 00:37:54 GMT
EXPOSE map[5432/tcp:{}]
# Sat, 19 Sep 2026 00:37:54 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:333125b5cee9fb6718bdcb523fc93b4adc71b7c37ada6146a20c193430e549b9`  
		Last Modified: Sat, 19 Sep 2026 00:03:02 GMT  
		Size: 28.1 MB (28123680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f499036e41780abb50601ed8af8979cf5ba576a53b6ef5382854727b31e26a48`  
		Last Modified: Sat, 19 Sep 2026 00:38:13 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a4a862677f309c9e5ec105f3f9ed83c78c0b303945567d21fa14f7b18e9787b`  
		Last Modified: Sat, 19 Sep 2026 00:38:13 GMT  
		Size: 4.5 MB (4519535 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4681123720046b6948c2dc64cf0e780102bc97ef863525a9fb1f2077929f7ae0`  
		Last Modified: Sat, 19 Sep 2026 00:38:13 GMT  
		Size: 1.2 MB (1203822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfd87942d979bd8ce509d5ba3dc8530cbcd6f516c80b33eff697ea2ec1b07ca3`  
		Last Modified: Sat, 19 Sep 2026 00:38:13 GMT  
		Size: 8.1 MB (8066490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bf3e57b20f0f22b3ef81f3713c9b00811c644f3c4d57f65e092732d2ed971b8`  
		Last Modified: Sat, 19 Sep 2026 00:38:14 GMT  
		Size: 1.1 MB (1108984 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:733e45b40f19f2509e74aac8d5b52d0e5fdb287751f7a87faf61d49c3cbd4cfb`  
		Last Modified: Sat, 19 Sep 2026 00:38:14 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfed6dc695642ccaef74637fa82328e40077195344a1f943d12813a81372d2fa`  
		Last Modified: Sat, 19 Sep 2026 00:38:15 GMT  
		Size: 3.1 KB (3139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1902a03dc6eff02bfd5564faac4d093d799875a83c53f96bbff7b984b538a3ce`  
		Last Modified: Sat, 19 Sep 2026 00:38:17 GMT  
		Size: 113.5 MB (113495126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64b2568f0b5c66630d516f7cdd0d171f661ea8fc373f01f6318413e9219ff530`  
		Last Modified: Sat, 19 Sep 2026 00:38:15 GMT  
		Size: 21.5 KB (21477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d579b548682f901b08657111dbd6a0041e899ffbceef434fb394f4b72a84757f`  
		Last Modified: Sat, 19 Sep 2026 00:38:15 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:877228612e028407b426ebaf3742eb24750c54acfe356355c4d6fe822f70284b`  
		Last Modified: Sat, 19 Sep 2026 00:38:16 GMT  
		Size: 6.1 KB (6105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6b2247128583bdacdd6c95bf19911e4f44c018dd7128569fb492480180552aa`  
		Last Modified: Sat, 19 Sep 2026 00:38:17 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta3-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:55c86ebf58d484b4758ff541a22c3f426503f31e49e4a93045f29760203c7cb3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6255654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13e71f416976a261dd4fc0ca9118f63a34a6c601c37d1ec4657b951963588ffa`

```dockerfile
```

-	Layers:
	-	`sha256:285392cfe304ea41673261eb75317aeb3b4fb325a04b2338f49a04db79858e2f`  
		Last Modified: Sat, 19 Sep 2026 00:38:13 GMT  
		Size: 6.2 MB (6204434 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:840e6493746d71900e7c4b5c9a86727b08046d0fbc5ccebad0e7bff680a4f889`  
		Last Modified: Sat, 19 Sep 2026 00:38:13 GMT  
		Size: 51.2 KB (51220 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta3-bookworm` - linux; 386

```console
$ docker pull postgres@sha256:41e8316a4e6b718e36b7d37efe6373570d2b74a4cae0d10a7100f274469604fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.7 MB (94676455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3784b474636cb276590a357a2976255a2dc109ee7dc14df54013971f0e8b495`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:37:50 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Sat, 19 Sep 2026 00:37:54 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:38:01 GMT
ENV GOSU_VERSION=1.19
# Sat, 19 Sep 2026 00:38:01 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 19 Sep 2026 00:38:05 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Sat, 19 Sep 2026 00:38:05 GMT
ENV LANG=en_US.utf8
# Sat, 19 Sep 2026 00:38:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:38:08 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Sat, 19 Sep 2026 00:38:08 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Sat, 19 Sep 2026 00:38:08 GMT
ENV PG_MAJOR=19
# Sat, 19 Sep 2026 00:38:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Sat, 19 Sep 2026 00:38:08 GMT
ENV PG_VERSION=19~beta3-1.pgdg12+1
# Sat, 19 Sep 2026 00:46:52 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Sat, 19 Sep 2026 00:46:52 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Sat, 19 Sep 2026 00:46:52 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Sat, 19 Sep 2026 00:46:52 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Sat, 19 Sep 2026 00:46:52 GMT
VOLUME [/var/lib/postgresql]
# Sat, 19 Sep 2026 00:46:52 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:46:52 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Sat, 19 Sep 2026 00:46:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 00:46:52 GMT
STOPSIGNAL SIGINT
# Sat, 19 Sep 2026 00:46:52 GMT
EXPOSE map[5432/tcp:{}]
# Sat, 19 Sep 2026 00:46:52 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:5395c899952161a45075664b17e646ed1b422ff1717a34e56e95f1c6bb61b66f`  
		Last Modified: Sat, 19 Sep 2026 00:03:34 GMT  
		Size: 29.2 MB (29226105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3de58f76df14ad690a0c2b38c7b6de02b141b98b6d3041904f13d11858369b51`  
		Last Modified: Sat, 19 Sep 2026 00:47:04 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d07f24cbd143882a0b47ff4809fbc487b6765862daf962d148d9ac35794fc94`  
		Last Modified: Sat, 19 Sep 2026 00:47:04 GMT  
		Size: 5.0 MB (4966048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:263cd0a54666830e58ba749eff55795c648f4d1313cdd43a3a6be43f2206c79e`  
		Last Modified: Sat, 19 Sep 2026 00:47:04 GMT  
		Size: 1.2 MB (1219048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b4c4afc8b78b09effc13b206bd84cc71b7b5c4ca650873f907b3a03fb1b25e5`  
		Last Modified: Sat, 19 Sep 2026 00:47:04 GMT  
		Size: 8.1 MB (8066442 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95274dbaeaf34b8f0c80aaf61be8ba8f3ecfdf6fe0ac89d9b628d7cd0df5c230`  
		Last Modified: Sat, 19 Sep 2026 00:47:05 GMT  
		Size: 1.1 MB (1137527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03bc93abe5850b33a91ad69552539594268bd243174c0a9821a40e40c3e6a940`  
		Last Modified: Sat, 19 Sep 2026 00:47:05 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0f55e574a03ab9ae3e37cf5afdcf4c5c356c8cd4dd6c2fa80f0b6fed241acf7`  
		Last Modified: Sat, 19 Sep 2026 00:47:05 GMT  
		Size: 3.1 KB (3139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f8b3d2a3258ffbc08fb7310c870e4f025ff27cee6974a61779399bd05325415`  
		Last Modified: Sat, 19 Sep 2026 00:47:07 GMT  
		Size: 50.0 MB (50028963 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcceae911950718d2fa9a1e5679934cbbc968bc24e1bd43c44becd4ba2db578b`  
		Last Modified: Sat, 19 Sep 2026 00:47:06 GMT  
		Size: 21.5 KB (21477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:950fab96891e293f8d0d4cbc81bc95f891669ad2b8dafcca23c46d8268d9d4d9`  
		Last Modified: Sat, 19 Sep 2026 00:47:06 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0d16aef5ecb18a0005cca3c88ad22c2b8ad4364662ff69b45ca6b19933e15b7`  
		Last Modified: Sat, 19 Sep 2026 00:47:06 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79d97439d11c21e8fe3efbd4aff1062cdcb509f163790872e69975460b927668`  
		Last Modified: Sat, 19 Sep 2026 00:47:07 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta3-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:5a6fcf43607fc82d7fdf3dc3e56c02e937a0b1e601e8c581fb036dd32fc6945d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5371321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b47ecf02026ad02c12226ca608d772bc7519d12511f1bf0afc7af81592d4fa23`

```dockerfile
```

-	Layers:
	-	`sha256:84bb6f50db8dc7db60e879aa5c69bfa03f56721980746080da8b6a0e79393b9d`  
		Last Modified: Sat, 19 Sep 2026 00:47:04 GMT  
		Size: 5.3 MB (5320361 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:588f3c3a14d51a63ef025dbf4dca102c4aed804c6feb1bc5d08d3f83904ba264`  
		Last Modified: Sat, 19 Sep 2026 00:47:04 GMT  
		Size: 51.0 KB (50960 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta3-bookworm` - linux; ppc64le

```console
$ docker pull postgres@sha256:401432ddc6ac2245eb4b9318ad94d302fc8e2fd0144b76212ece882c926c4601
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.6 MB (171589813 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b07295f2445cdecbdc3b4e81c465d17dc734111b50049c43ab9c63d62d6c0f3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 02:49:55 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Sat, 19 Sep 2026 02:50:05 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 02:50:16 GMT
ENV GOSU_VERSION=1.19
# Sat, 19 Sep 2026 02:50:16 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 19 Sep 2026 02:50:29 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Sat, 19 Sep 2026 02:50:29 GMT
ENV LANG=en_US.utf8
# Sat, 19 Sep 2026 02:50:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 02:50:37 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Sat, 19 Sep 2026 02:50:38 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Sat, 19 Sep 2026 02:50:38 GMT
ENV PG_MAJOR=19
# Sat, 19 Sep 2026 02:50:38 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Sat, 19 Sep 2026 02:50:38 GMT
ENV PG_VERSION=19~beta3-1.pgdg12+1
# Sat, 19 Sep 2026 02:51:20 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Sat, 19 Sep 2026 02:51:23 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Sat, 19 Sep 2026 02:51:24 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Sat, 19 Sep 2026 02:51:24 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Sat, 19 Sep 2026 02:51:24 GMT
VOLUME [/var/lib/postgresql]
# Sat, 19 Sep 2026 02:51:25 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 02:51:26 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Sat, 19 Sep 2026 02:51:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 02:51:26 GMT
STOPSIGNAL SIGINT
# Sat, 19 Sep 2026 02:51:26 GMT
EXPOSE map[5432/tcp:{}]
# Sat, 19 Sep 2026 02:51:26 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:b165d89f1b791c34b9c20f2a31fc4c5d2df2528fb278dbc56b0e78f166c6b6b4`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 32.1 MB (32083564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8584767bf71b85a57e3790474614301ee2547a4ff036c58e734f56193088d17`  
		Last Modified: Sat, 19 Sep 2026 02:52:06 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:597388a7e3236ed97793a679dcd74bd53b0b33e57f28455acf1b5932bdc4fe44`  
		Last Modified: Sat, 19 Sep 2026 02:52:06 GMT  
		Size: 5.4 MB (5368620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec124b8dc125aa16a812791ac0bc94078801ca076dad8479be9a4c2dc2abef5d`  
		Last Modified: Sat, 19 Sep 2026 02:52:06 GMT  
		Size: 1.2 MB (1208877 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8c143b02ba6a964fd67fadec24ce562a41affdb2e5326cc965b415e9a49022d`  
		Last Modified: Sat, 19 Sep 2026 02:52:06 GMT  
		Size: 8.1 MB (8066567 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6041579a1eb178853160fd0b10ba09bedef3d9f67f645cba38a820b4fc6de916`  
		Last Modified: Sat, 19 Sep 2026 02:52:07 GMT  
		Size: 1.3 MB (1283633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85a200523b23b2d60f96c00834e832cc3914cbed344f421d54fd63e61fb78a6d`  
		Last Modified: Sat, 19 Sep 2026 02:52:07 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd824d7d4b31ebdbb235380e31839df559205055c55888dd7ceaddea55ebeab9`  
		Last Modified: Sat, 19 Sep 2026 02:52:07 GMT  
		Size: 3.1 KB (3144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05d4b535b116984352781eeea24bf7a22f0ab3eed3b33b8521d5fa39a19ce3e0`  
		Last Modified: Sat, 19 Sep 2026 02:52:10 GMT  
		Size: 123.5 MB (123546229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13d5677bd9dee0d4a58552977c05f4dce572352ca85c6078a5a6e814535cf381`  
		Last Modified: Sat, 19 Sep 2026 02:52:08 GMT  
		Size: 21.5 KB (21477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5abaa4232a071ea3203408c78ed7742bb8900ca86a6c653833afca59b77a653`  
		Last Modified: Sat, 19 Sep 2026 02:52:09 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fb6435a0061afd1bddab6b5a61007e8a970b48140213a07dd910fe5185d952e`  
		Last Modified: Sat, 19 Sep 2026 02:52:09 GMT  
		Size: 6.1 KB (6107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa3ba435cd8bf038ab3ffa82ac20953a00964b7b903308a46b1e04b4dbf5e437`  
		Last Modified: Sat, 19 Sep 2026 02:52:10 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta3-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:4f05f11775be4fb790793a494a59365f58fa6b13f47d07cf2eff24ad0f751801
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6256554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c514236c0e989679132ace87ceef24e180732931d41a4fe1cfe9908a2522506`

```dockerfile
```

-	Layers:
	-	`sha256:0dd641958a53e8b998e786bda1aba505e21c11b7df053b9586db7c6eea16e2da`  
		Last Modified: Sat, 19 Sep 2026 02:52:06 GMT  
		Size: 6.2 MB (6205506 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:62c45e1d6b9f15c3aed371736ed0c7c177d17fc0348f97729dce8d324ea9c927`  
		Last Modified: Sat, 19 Sep 2026 02:52:06 GMT  
		Size: 51.0 KB (51048 bytes)  
		MIME: application/vnd.in-toto+json
