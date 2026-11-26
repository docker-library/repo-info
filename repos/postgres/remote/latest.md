## `postgres:latest`

```console
$ docker pull postgres@sha256:4ea94de574c17f0372722806c949757050fbb1cd7648410fe45d6bba275cc00e
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
$ docker pull postgres@sha256:3fb624f672a1cb628d0bdc0f533cffad31345421eedf16ab1f85ed1ea0d07d2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.9 MB (169873667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4bc84774caeb69f85d1453368c340824392d6ca9bca20ba8594b7f47ffa39e2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:28:35 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 		install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql; 		install --verbose --directory --owner postgres --group postgres --mode 3777 /run/postgresql; 		mkdir -p /usr/local/lib/tmpfiles.d; 	printf '%s\n' 		'd /var/lib/postgresql 1777 postgres postgres' 		'd /run/postgresql 3777 postgres postgres' 		> /usr/local/lib/tmpfiles.d/postgresql-common.conf # buildkit
# Tue, 24 Nov 2026 04:28:41 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:28:48 GMT
ENV GOSU_VERSION=1.20
# Tue, 24 Nov 2026 04:28:48 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 24 Nov 2026 04:28:53 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 24 Nov 2026 04:28:53 GMT
ENV LANG=en_US.utf8
# Tue, 24 Nov 2026 04:28:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:28:56 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 24 Nov 2026 04:28:57 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 24 Nov 2026 04:28:57 GMT
ENV PG_MAJOR=19
# Tue, 24 Nov 2026 04:28:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Tue, 24 Nov 2026 04:28:57 GMT
ENV PG_VERSION=19.0-2.pgdg13+1
# Tue, 24 Nov 2026 04:29:14 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 24 Nov 2026 04:29:15 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 24 Nov 2026 04:29:15 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Tue, 24 Nov 2026 04:29:15 GMT
VOLUME [/var/lib/postgresql]
# Tue, 24 Nov 2026 04:29:15 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:29:15 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 24 Nov 2026 04:29:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:29:15 GMT
STOPSIGNAL SIGINT
# Tue, 24 Nov 2026 04:29:15 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 24 Nov 2026 04:29:15 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:40748add9f4f6f944f334cbfc286590d6e93f60fb06f6ee7ffa1b894080ad861`  
		Last Modified: Tue, 24 Nov 2026 03:40:27 GMT  
		Size: 29.8 MB (29842182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e4857f35fce73aad47b496a1215535e53afd4569e5da9752fdb36d353e72cd1`  
		Last Modified: Tue, 24 Nov 2026 04:29:35 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f12a37b90bb44ba2571f9c7da1866392a1f332eee16bc005a61f2ef3a12ad85`  
		Last Modified: Tue, 24 Nov 2026 04:29:35 GMT  
		Size: 6.4 MB (6443052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1436cf65049ed841d4391597d4bdcf41607103a66053ed0761099afef6d4fb4`  
		Last Modified: Tue, 24 Nov 2026 04:29:35 GMT  
		Size: 1.3 MB (1258018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1361b767ece3435b3e26a41b38d9a35f529778e561e75f3b6ef30c00de978ab`  
		Last Modified: Tue, 24 Nov 2026 04:29:35 GMT  
		Size: 8.2 MB (8203882 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84a852dae169d14c1f9a8f525fe3d6e83c12a2af5a5ad93c5a3633050402137c`  
		Last Modified: Tue, 24 Nov 2026 04:29:36 GMT  
		Size: 1.3 MB (1311678 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fe3468bf416fb7a1659e90a66dc9e6d01de7a848a647e910dd066982b9044b1`  
		Last Modified: Tue, 24 Nov 2026 04:29:36 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0afa8bd0fe3a1f756353f51a16a54519b0896cc43f56a75b7aa508949d4d6437`  
		Last Modified: Tue, 24 Nov 2026 04:29:37 GMT  
		Size: 3.1 KB (3142 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81b91bcf5b27b56c94859e0036fe12cc71af39b686badf7310e0554cd58f285f`  
		Last Modified: Tue, 24 Nov 2026 04:29:40 GMT  
		Size: 122.8 MB (122782383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b2aec9a26463e39f39a97e1e06af0c41c4ae65a78f700e886a8b9879ef74195`  
		Last Modified: Tue, 24 Nov 2026 04:29:37 GMT  
		Size: 21.6 KB (21604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5545577f5e01590b8a82154edd5ea7a85912da9e352c5dfbaa9ca82902ae6b80`  
		Last Modified: Tue, 24 Nov 2026 04:29:38 GMT  
		Size: 6.1 KB (6104 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1b64c50365452a183ca76a849593e89bcad9957e39abb72aadda1ecfeef53e9`  
		Last Modified: Tue, 24 Nov 2026 04:29:38 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:latest` - unknown; unknown

```console
$ docker pull postgres@sha256:0199f37dbc0ac100a331a5bea2aa8476f2b306d38ab2174c9c8270165e0af90e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6408713 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37d9f26bc1df3d4edbf25f9e40ca9c0f82d223b15705713ef57218effe981908`

```dockerfile
```

-	Layers:
	-	`sha256:b35fdf16346a7cdd8da9b5ce1f4a17fc4b7cd62e389b2e84948f926fb21e40e8`  
		Last Modified: Tue, 24 Nov 2026 04:29:35 GMT  
		Size: 6.4 MB (6357820 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:259595d04c7f809ef7ea426e36da2c8798eae374f90c9d73f3dd87af00d0a97d`  
		Last Modified: Tue, 24 Nov 2026 04:29:35 GMT  
		Size: 50.9 KB (50893 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:latest` - linux; arm variant v5

```console
$ docker pull postgres@sha256:034e4e0d2ef6520341b567b248d09b41ad1a33ae855ba68b81ad90e30e33d770
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.4 MB (98448360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6df9df51fee63bbb6cc1b82c0579e4ed834a631b551232b5152c71505d02e95`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:29:55 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 		install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql; 		install --verbose --directory --owner postgres --group postgres --mode 3777 /run/postgresql; 		mkdir -p /usr/local/lib/tmpfiles.d; 	printf '%s\n' 		'd /var/lib/postgresql 1777 postgres postgres' 		'd /run/postgresql 3777 postgres postgres' 		> /usr/local/lib/tmpfiles.d/postgresql-common.conf # buildkit
# Tue, 24 Nov 2026 04:30:05 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:30:15 GMT
ENV GOSU_VERSION=1.20
# Tue, 24 Nov 2026 04:30:15 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 24 Nov 2026 04:30:24 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 24 Nov 2026 04:30:24 GMT
ENV LANG=en_US.utf8
# Tue, 24 Nov 2026 04:30:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:30:30 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 24 Nov 2026 04:30:31 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 24 Nov 2026 04:30:31 GMT
ENV PG_MAJOR=19
# Tue, 24 Nov 2026 04:30:31 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Tue, 24 Nov 2026 04:30:31 GMT
ENV PG_VERSION=19.0-2.pgdg13+1
# Tue, 24 Nov 2026 04:44:08 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 24 Nov 2026 04:44:08 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 24 Nov 2026 04:44:08 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Tue, 24 Nov 2026 04:44:08 GMT
VOLUME [/var/lib/postgresql]
# Tue, 24 Nov 2026 04:44:08 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:44:08 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 24 Nov 2026 04:44:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:44:08 GMT
STOPSIGNAL SIGINT
# Tue, 24 Nov 2026 04:44:08 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 24 Nov 2026 04:44:08 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f6fba286691ca1912507e9abe69b4f333f067bb9769520ed16554fd664c33962`  
		Last Modified: Tue, 24 Nov 2026 03:40:21 GMT  
		Size: 28.0 MB (28008785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97bcbc517f58558eff506cfb223bcfd99db6c201d7544da9c84feada70e3b840`  
		Last Modified: Tue, 24 Nov 2026 04:30:49 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25a8ac4f69fe0af97f958d4263c77bc97efe0086bbf00c146b5cb6e50be4b9c9`  
		Last Modified: Tue, 24 Nov 2026 04:44:22 GMT  
		Size: 5.9 MB (5932408 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3551cb02d2ca31d5d22d90a8613030da526abbc890ce95dfc790bfdf64d47335`  
		Last Modified: Tue, 24 Nov 2026 04:44:22 GMT  
		Size: 1.2 MB (1229281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8df27085c0a2ec8a7665de4a0f33f05576761b5188b748fb7e789ff178182722`  
		Last Modified: Tue, 24 Nov 2026 04:44:22 GMT  
		Size: 8.2 MB (8204331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18a0d892775b5d612f2af371f7b7bd8bffa4d4d843cd715436ecf5d734260c0d`  
		Last Modified: Tue, 24 Nov 2026 04:44:23 GMT  
		Size: 1.3 MB (1317353 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd25a776232040758cc6ef56703c5080ac57dc5647ea8279099d79fa8f1fdd16`  
		Last Modified: Tue, 24 Nov 2026 04:44:23 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2092b04654825b0aa82936cb8840018808e2ba4bb65441eca62368a4d210dfdc`  
		Last Modified: Tue, 24 Nov 2026 04:44:23 GMT  
		Size: 3.1 KB (3143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ff85b005cf00e9983e82b88266251d73924beb20143e6cff8013905082d734a`  
		Last Modified: Tue, 24 Nov 2026 04:44:25 GMT  
		Size: 53.7 MB (53723735 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b76239c08ea3df8d0992186ffcf6251e04dc1d60b16d685eb939e384934bce26`  
		Last Modified: Tue, 24 Nov 2026 04:44:24 GMT  
		Size: 21.6 KB (21599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45c8bf6576660a26f3f72ec26304ff541bfcb96a1e4c5bcc3888e243cdc982b1`  
		Last Modified: Tue, 24 Nov 2026 04:44:24 GMT  
		Size: 6.1 KB (6103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1eae0c85e8f5e984b10e04732be2fb19753be0831fadb6f7f092028b71ce0e6c`  
		Last Modified: Tue, 24 Nov 2026 04:44:25 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:latest` - unknown; unknown

```console
$ docker pull postgres@sha256:df94782bae4f7cf7fdd64fa0d399ecd8f2cba2e8b4cf1d25305f35fe1a50bbc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5528522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92d454a615ff0f7affff8789b25580de00cfda3dd55a530d9cfa0d329801523f`

```dockerfile
```

-	Layers:
	-	`sha256:cb9ad65d11ab9efee43ce3f866f6694b86d8a0cfb53ceedee846820e06f1a2b6`  
		Last Modified: Tue, 24 Nov 2026 04:44:22 GMT  
		Size: 5.5 MB (5477419 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:40a70cbbe36520f863c418fb3b229a9bd27022f934828c7421e52d97c7b907a2`  
		Last Modified: Tue, 24 Nov 2026 04:44:22 GMT  
		Size: 51.1 KB (51103 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:latest` - linux; arm variant v7

```console
$ docker pull postgres@sha256:825c3444fc55e4b69321883d0868bb48f3832c4818e4d99890f5fc6e61d5ec75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.3 MB (94324897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6ae1348745b8aa7bdacdaeea43049fce3f03d26c7b685e073a659a4a17fae8a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:57:11 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 		install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql; 		install --verbose --directory --owner postgres --group postgres --mode 3777 /run/postgresql; 		mkdir -p /usr/local/lib/tmpfiles.d; 	printf '%s\n' 		'd /var/lib/postgresql 1777 postgres postgres' 		'd /run/postgresql 3777 postgres postgres' 		> /usr/local/lib/tmpfiles.d/postgresql-common.conf # buildkit
# Tue, 24 Nov 2026 04:57:19 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:57:27 GMT
ENV GOSU_VERSION=1.20
# Tue, 24 Nov 2026 04:57:27 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 24 Nov 2026 04:57:34 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 24 Nov 2026 04:57:34 GMT
ENV LANG=en_US.utf8
# Tue, 24 Nov 2026 04:57:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:57:39 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 24 Nov 2026 04:57:39 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 24 Nov 2026 04:57:39 GMT
ENV PG_MAJOR=19
# Tue, 24 Nov 2026 04:57:39 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Tue, 24 Nov 2026 04:57:39 GMT
ENV PG_VERSION=19.0-2.pgdg13+1
# Tue, 24 Nov 2026 05:09:53 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 24 Nov 2026 05:09:53 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 24 Nov 2026 05:09:53 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Tue, 24 Nov 2026 05:09:53 GMT
VOLUME [/var/lib/postgresql]
# Tue, 24 Nov 2026 05:09:53 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 05:09:53 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 24 Nov 2026 05:09:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 05:09:53 GMT
STOPSIGNAL SIGINT
# Tue, 24 Nov 2026 05:09:53 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 24 Nov 2026 05:09:53 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:c720f3b38fb800619bf9fa0d867869c69ddd3a3f80e5316158c99a0cbe84f60f`  
		Last Modified: Tue, 24 Nov 2026 03:40:47 GMT  
		Size: 26.3 MB (26262460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64273196619749c63e47993b75cdf0a9ab6ddc61d3060832793473a75561d4d4`  
		Last Modified: Tue, 24 Nov 2026 05:10:06 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb90510281b0b7a5b9dde4efa20a9c529435cad63d76c554f862918736f27384`  
		Last Modified: Tue, 24 Nov 2026 05:10:06 GMT  
		Size: 5.5 MB (5497406 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a2524d9d25a107f5a10edbf17bbabec59ed9b74e20f75b2483260227f5cd17a`  
		Last Modified: Tue, 24 Nov 2026 05:10:06 GMT  
		Size: 1.2 MB (1223508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e40f82398dbde3ba3cecaaa1fb5fa4eb3570b828097d668375b4f9b145dc34b4`  
		Last Modified: Tue, 24 Nov 2026 05:10:06 GMT  
		Size: 8.2 MB (8204150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbbed037600a581fe3edf5f27542a7d4fcc20553c46b377af19e745cdc6c7dee`  
		Last Modified: Tue, 24 Nov 2026 05:10:07 GMT  
		Size: 1.2 MB (1172690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c0192887516ef862bc7c2964867fc0968396cfd64746485b34d9e17874bd0a6`  
		Last Modified: Tue, 24 Nov 2026 05:10:07 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:675c0eafb1f96fdb6525b63e1fb9a2543d4e433711795cad44f6199582e70180`  
		Last Modified: Tue, 24 Nov 2026 05:10:08 GMT  
		Size: 3.1 KB (3140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7f800241395acc45441bdba5493b9d99a70173eb59e41098c3395a9847964dc`  
		Last Modified: Tue, 24 Nov 2026 05:10:09 GMT  
		Size: 51.9 MB (51932203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abc9582c945df66be891d83652bd1a096b4182fc66ee253e9355ad7d846e6a98`  
		Last Modified: Tue, 24 Nov 2026 05:10:08 GMT  
		Size: 21.6 KB (21615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02597a86e37af7bcd604012647d84881988ea1a89f62bbcce48d035fb1a9d5eb`  
		Last Modified: Tue, 24 Nov 2026 05:10:08 GMT  
		Size: 6.1 KB (6104 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b7f03b8c876b80af425be8aa2072767167cf224e9eb0d26a62286553906f56d`  
		Last Modified: Tue, 24 Nov 2026 05:10:09 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:latest` - unknown; unknown

```console
$ docker pull postgres@sha256:5dbc09481b5388dc46343bee321c219ac51133d120a90cde032eea7ef98ef030
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5541223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9346f0648708daa59176aa95f2fe4a92e7756e4f462df5b5f3940797eafac21e`

```dockerfile
```

-	Layers:
	-	`sha256:a4a1aa2c3adee72859a5d20b04dcf20999df00a2cec657cfff93739ae08a6e95`  
		Last Modified: Tue, 24 Nov 2026 05:10:06 GMT  
		Size: 5.5 MB (5490120 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a5e2dbee5c90065bf92490c07e6db74c396e38f439419f843c469859faad35e7`  
		Last Modified: Tue, 24 Nov 2026 05:10:06 GMT  
		Size: 51.1 KB (51103 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:latest` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:7a2d71c02bf63a2296900a86e9a2c889a3eea22f9004e1ea343ceb4586aa57e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.4 MB (168360014 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b9282c26220c9d285240dd8bc8158c6faac4fa49ddfb76d3b335b2215239f60`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:32:36 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 		install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql; 		install --verbose --directory --owner postgres --group postgres --mode 3777 /run/postgresql; 		mkdir -p /usr/local/lib/tmpfiles.d; 	printf '%s\n' 		'd /var/lib/postgresql 1777 postgres postgres' 		'd /run/postgresql 3777 postgres postgres' 		> /usr/local/lib/tmpfiles.d/postgresql-common.conf # buildkit
# Tue, 24 Nov 2026 04:32:43 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:32:51 GMT
ENV GOSU_VERSION=1.20
# Tue, 24 Nov 2026 04:32:51 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 24 Nov 2026 04:32:57 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 24 Nov 2026 04:32:57 GMT
ENV LANG=en_US.utf8
# Tue, 24 Nov 2026 04:33:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:33:00 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 24 Nov 2026 04:33:01 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 24 Nov 2026 04:33:01 GMT
ENV PG_MAJOR=19
# Tue, 24 Nov 2026 04:33:01 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Tue, 24 Nov 2026 04:33:01 GMT
ENV PG_VERSION=19.0-2.pgdg13+1
# Tue, 24 Nov 2026 04:33:23 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 24 Nov 2026 04:33:23 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 24 Nov 2026 04:33:23 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Tue, 24 Nov 2026 04:33:23 GMT
VOLUME [/var/lib/postgresql]
# Tue, 24 Nov 2026 04:33:23 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:33:23 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 24 Nov 2026 04:33:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:33:23 GMT
STOPSIGNAL SIGINT
# Tue, 24 Nov 2026 04:33:23 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 24 Nov 2026 04:33:23 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:48fb00926fe468d83ca04ee6775f36350d17e0f328dfcb03aadb5de0c52ae3f6`  
		Last Modified: Tue, 24 Nov 2026 03:40:29 GMT  
		Size: 30.2 MB (30198034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a9b01ec5168b9c7900c168e471d1891ea60745eef652ff3bd1e8cad2e7cb924`  
		Last Modified: Tue, 24 Nov 2026 04:33:44 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5701633d78863457a95bb436dab4a8a7e620146adee65d54eebfb6331df11d7`  
		Last Modified: Tue, 24 Nov 2026 04:33:44 GMT  
		Size: 6.2 MB (6234972 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ed68778df845ce9e93d695f8b441e1f765e0bca27e27f93c4f09e0943bc4a20`  
		Last Modified: Tue, 24 Nov 2026 04:33:44 GMT  
		Size: 1.2 MB (1210390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c36d2a7ccec7e3788b508143d93b399590c9f1ec8fe30ee252a6cb9d0c53102d`  
		Last Modified: Tue, 24 Nov 2026 04:33:44 GMT  
		Size: 8.2 MB (8204045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df922efde56e60f768118ac8adcde6859e207ca653d9e002504632d4dcd39491`  
		Last Modified: Tue, 24 Nov 2026 04:33:45 GMT  
		Size: 1.2 MB (1220657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c739a74e3de42c0689bbb14c45d7a4df0653f964be322498e5c38ea9f01e8d96`  
		Last Modified: Tue, 24 Nov 2026 04:33:45 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b92f781e3fc5273f7ed61e481fe8ccb92b374aecac4789481fa729ad57ad2195`  
		Last Modified: Tue, 24 Nov 2026 04:33:45 GMT  
		Size: 3.1 KB (3139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a21d7b5eb029a83c4735a948e73640331bcb3095697a47c64dda94d83f90554c`  
		Last Modified: Tue, 24 Nov 2026 04:33:48 GMT  
		Size: 121.3 MB (121259452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80d2b506503e3c681e95f8d6ac15c22bbbee61a61a3be0c684f552d41a7cfb0a`  
		Last Modified: Tue, 24 Nov 2026 04:33:46 GMT  
		Size: 21.6 KB (21603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5c031d14b866207723b6e4bcd05b36117ae07f3f257c1d8cdb0f9b07c6b2040`  
		Last Modified: Tue, 24 Nov 2026 04:33:46 GMT  
		Size: 6.1 KB (6100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8de72d5897931f13cb9f20d5a2a257aae13417e5960958a16e11397981f6edf0`  
		Last Modified: Tue, 24 Nov 2026 04:33:47 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:latest` - unknown; unknown

```console
$ docker pull postgres@sha256:12b07e966af41e2b906dc45e0adcb4150ac991df3aa4f20e464eaf4cbbb96d9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6415345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8809125943226f4e3b72838efaa4c751396083388b84f36f8b574d19f3e09057`

```dockerfile
```

-	Layers:
	-	`sha256:07ba85bdad029a1439699e5c4ee585176bdc14f26d0c2d552929c324487bac79`  
		Last Modified: Tue, 24 Nov 2026 04:33:44 GMT  
		Size: 6.4 MB (6364188 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5fde1da858ad7245936fa059dce4ff37c3f4a58c0e3c5a8b1f31cb8b17fa914f`  
		Last Modified: Tue, 24 Nov 2026 04:33:44 GMT  
		Size: 51.2 KB (51157 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:latest` - linux; 386

```console
$ docker pull postgres@sha256:8dfa0b7e6b7215f2e62ac5750faba19dffc5506b79e428d42ea4c9326ed5be9d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.5 MB (104528561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e18cc6cc25cdde0666023d303130233320d1f6642d0a176445dd65ee9e1c6097`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:29:25 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 		install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql; 		install --verbose --directory --owner postgres --group postgres --mode 3777 /run/postgresql; 		mkdir -p /usr/local/lib/tmpfiles.d; 	printf '%s\n' 		'd /var/lib/postgresql 1777 postgres postgres' 		'd /run/postgresql 3777 postgres postgres' 		> /usr/local/lib/tmpfiles.d/postgresql-common.conf # buildkit
# Tue, 24 Nov 2026 04:29:31 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:29:39 GMT
ENV GOSU_VERSION=1.20
# Tue, 24 Nov 2026 04:29:39 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 24 Nov 2026 04:29:44 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 24 Nov 2026 04:29:44 GMT
ENV LANG=en_US.utf8
# Tue, 24 Nov 2026 04:29:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:29:48 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 24 Nov 2026 04:29:48 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 24 Nov 2026 04:29:48 GMT
ENV PG_MAJOR=19
# Tue, 24 Nov 2026 04:29:48 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Tue, 24 Nov 2026 04:29:48 GMT
ENV PG_VERSION=19.0-2.pgdg13+1
# Tue, 24 Nov 2026 04:38:49 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 24 Nov 2026 04:38:49 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 24 Nov 2026 04:38:49 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Tue, 24 Nov 2026 04:38:49 GMT
VOLUME [/var/lib/postgresql]
# Tue, 24 Nov 2026 04:38:49 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:38:50 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 24 Nov 2026 04:38:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:38:50 GMT
STOPSIGNAL SIGINT
# Tue, 24 Nov 2026 04:38:50 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 24 Nov 2026 04:38:50 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:7fb9e5f471a439ab129e9fe258623bccb6c4da1d0313890202b55fd6b5839533`  
		Last Modified: Tue, 24 Nov 2026 03:40:30 GMT  
		Size: 31.4 MB (31357919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed90e3cd78241aa7dab33a6e92d2172edf07880b360e0b796db73ff8f598cd0a`  
		Last Modified: Tue, 24 Nov 2026 04:39:02 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8921dc9e9b204904bed8120fd422e94a9744bdfb0b7dd833c0c2f49e91fe11ce`  
		Last Modified: Tue, 24 Nov 2026 04:39:02 GMT  
		Size: 6.6 MB (6631376 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26ef3ee6c4080663f2e39863d2033abe2d5172af83882e2dd73f237511283f6c`  
		Last Modified: Tue, 24 Nov 2026 04:39:02 GMT  
		Size: 1.2 MB (1226754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d367361009bdcb455a54a74ad05fa2a2f790c43ff2d1921b64cda7bc8d622973`  
		Last Modified: Tue, 24 Nov 2026 04:39:02 GMT  
		Size: 8.2 MB (8204045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a254bf3ba553f29b17c4208b2eb00aa7505f644ede50a0477ac09c9189613c6`  
		Last Modified: Tue, 24 Nov 2026 04:39:03 GMT  
		Size: 1.3 MB (1308317 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbdeacb0ce1a864035fd98b3bcbaacb36fd54af2491c6dcf8d68bce55a246c69`  
		Last Modified: Tue, 24 Nov 2026 04:39:03 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18070b6816cd1d2d5d7eea325c76a056a053371afccb2ac4785a012a0ae4f915`  
		Last Modified: Tue, 24 Nov 2026 04:39:04 GMT  
		Size: 3.1 KB (3140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:153169ef0bd216739c05627948c846155a318bc107f2b059358bedc2dd252070`  
		Last Modified: Tue, 24 Nov 2026 04:39:05 GMT  
		Size: 55.8 MB (55767682 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbbf1531cdd3ed721ef82a3bcf286cc4c42b4d19b04a1e6e2f879669e812a5e4`  
		Last Modified: Tue, 24 Nov 2026 04:39:04 GMT  
		Size: 21.6 KB (21600 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fe4063b895f6ae620d6400d36110ff1799e2bd8c2f05d1e85f4e780a80d4080`  
		Last Modified: Tue, 24 Nov 2026 04:39:04 GMT  
		Size: 6.1 KB (6105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d7c7d00f3fbb9ede2be3bc335e9393f7a929d0838e092fdba37d2ce57b8fdc3`  
		Last Modified: Tue, 24 Nov 2026 04:39:05 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:latest` - unknown; unknown

```console
$ docker pull postgres@sha256:5c409dff8b8a85bfd1719bdfcdc7e9bca09643a2d1f6ea7706722384118df64c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5536963 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:420543c4c45877bf7db75d955f03185d73c1fee78fc04ba89fc88a78e376d769`

```dockerfile
```

-	Layers:
	-	`sha256:7abfb5eb47e0e9a3353361975294c2027c8bbdca671ca69655b475302068a21c`  
		Last Modified: Tue, 24 Nov 2026 04:39:02 GMT  
		Size: 5.5 MB (5486133 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a9fa063b42f877298680bb8969475204c67169202b08510cbe9593e7a9221e3d`  
		Last Modified: Tue, 24 Nov 2026 04:39:02 GMT  
		Size: 50.8 KB (50830 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:latest` - linux; ppc64le

```console
$ docker pull postgres@sha256:505acb0e016907ed7a479d8546018b82bf2985c39d201229fcbb9f5588fb0c41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.0 MB (182973771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44dcfe8ed1218adb9465e26163798903b3e03356eae300b87a6eb478d80d55d7`
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
ENV PG_MAJOR=19
# Tue, 24 Nov 2026 06:25:45 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Tue, 24 Nov 2026 06:25:45 GMT
ENV PG_VERSION=19.0-2.pgdg13+1
# Tue, 24 Nov 2026 06:26:25 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 24 Nov 2026 06:26:26 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 24 Nov 2026 06:26:26 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Tue, 24 Nov 2026 06:26:26 GMT
VOLUME [/var/lib/postgresql]
# Tue, 24 Nov 2026 06:26:26 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 06:26:26 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 24 Nov 2026 06:26:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 06:26:26 GMT
STOPSIGNAL SIGINT
# Tue, 24 Nov 2026 06:26:26 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 24 Nov 2026 06:26:26 GMT
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
	-	`sha256:0cc1ee9f282cfdac55c1489149c879296ad86c2a1fe4e00aaf4b08eb3a2ef10c`  
		Last Modified: Tue, 24 Nov 2026 06:27:16 GMT  
		Size: 131.4 MB (131397127 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccd80df08ebac25b3f1156099029de449eac805fa66f941f97e4b34626bedc20`  
		Last Modified: Tue, 24 Nov 2026 06:27:14 GMT  
		Size: 21.6 KB (21593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bc56365250d9a60283e5955b265cbea0ea6882f2c25c2b92fe01e1130baf9cb`  
		Last Modified: Tue, 24 Nov 2026 06:27:14 GMT  
		Size: 6.1 KB (6104 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fecc2779f19be531ee3c5b31d30afac3966de702e0bfae17ab32fd5c281119b`  
		Last Modified: Tue, 24 Nov 2026 06:27:14 GMT  
		Size: 182.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:latest` - unknown; unknown

```console
$ docker pull postgres@sha256:810a12e7e46ca461053c7ecc422d3679e1ae9d9ec27be561b946349011f2023f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6402069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8314cd7b41a2fbc553ae63c7a7d00d59bbe52d634163a165828399f46494ef9f`

```dockerfile
```

-	Layers:
	-	`sha256:06216e36a11ebe656eff214eea7efa883cd042e83f6ee770c217df0da0684285`  
		Last Modified: Tue, 24 Nov 2026 06:27:12 GMT  
		Size: 6.4 MB (6351101 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3f3b57ec6d1cd0823ac7e352d8df63439b7cdbefee70200a0db71f79a4e6c243`  
		Last Modified: Tue, 24 Nov 2026 06:27:11 GMT  
		Size: 51.0 KB (50968 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:latest` - linux; riscv64

```console
$ docker pull postgres@sha256:ca9c570f6cb6b1a1d923944b963b8b63bf7c68f7d7e184692b9a891517cf71aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.0 MB (99953354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac381fbc7d42bc4e44eb60886d4f19f0e5ffa80055f997c9ce1fc00c08e53dbf`
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
ENV PG_MAJOR=19
# Thu, 26 Nov 2026 10:45:45 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Thu, 26 Nov 2026 10:45:45 GMT
ENV PG_VERSION=19.0-2.pgdg13+1
# Thu, 26 Nov 2026 12:56:40 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Thu, 26 Nov 2026 12:56:40 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 26 Nov 2026 12:56:40 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Thu, 26 Nov 2026 12:56:40 GMT
VOLUME [/var/lib/postgresql]
# Thu, 26 Nov 2026 12:56:40 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 26 Nov 2026 12:56:41 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 26 Nov 2026 12:56:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Nov 2026 12:56:41 GMT
STOPSIGNAL SIGINT
# Thu, 26 Nov 2026 12:56:41 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 26 Nov 2026 12:56:41 GMT
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
	-	`sha256:9f58bd5f211b22e6116b306d0e2244bfbd0b69a81fc2481893dbdac846176556`  
		Last Modified: Thu, 26 Nov 2026 12:59:42 GMT  
		Size: 54.1 MB (54061986 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:108777e8998340fdda4b593bc9b1dee7fee5eb2152fdc4384733a915060fe4f0`  
		Last Modified: Thu, 26 Nov 2026 12:59:34 GMT  
		Size: 21.6 KB (21603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ac903b93da027732c6b578bfc904a9ab86bdf60cf320ce08fc3370cca6defb9`  
		Last Modified: Thu, 26 Nov 2026 12:59:34 GMT  
		Size: 6.1 KB (6105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c97cd260f3a93cfd544bb4726dbd80c24315b08a965aadb4f407250fe0b04676`  
		Last Modified: Thu, 26 Nov 2026 12:59:35 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:latest` - unknown; unknown

```console
$ docker pull postgres@sha256:46aed058b2bc3dd89d26ae7fd124d1c25eb423bc35a6c15f136e963288e9ce35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5538405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9ba3cd3b039b455dbd8914e10cd803378c26641894c4b5820d09d3143f64547`

```dockerfile
```

-	Layers:
	-	`sha256:d3eec5f84f78d208558815bc8a6c60c83f61796b53458e2f37517d2e9503197b`  
		Last Modified: Thu, 26 Nov 2026 12:59:32 GMT  
		Size: 5.5 MB (5487441 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:33f552a585452d17c107e69d9b59ab28eff2a131711044fa5c9d7154865bc33c`  
		Last Modified: Thu, 26 Nov 2026 12:59:30 GMT  
		Size: 51.0 KB (50964 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:latest` - linux; s390x

```console
$ docker pull postgres@sha256:c1e1c192f972a3b6a585dc634f53c6a46f279e05fae4bbb87b08578d11c58405
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.5 MB (184499396 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d68d3ac2d0b793188ee1784d2ce3455678dc680efe490c93b4a4a48862cccbad`
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
ENV PG_MAJOR=19
# Tue, 24 Nov 2026 04:36:25 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Tue, 24 Nov 2026 04:36:25 GMT
ENV PG_VERSION=19.0-2.pgdg13+1
# Tue, 24 Nov 2026 04:47:46 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 24 Nov 2026 04:47:47 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 24 Nov 2026 04:47:47 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Tue, 24 Nov 2026 04:47:47 GMT
VOLUME [/var/lib/postgresql]
# Tue, 24 Nov 2026 04:47:47 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:47:47 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 24 Nov 2026 04:47:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:47:47 GMT
STOPSIGNAL SIGINT
# Tue, 24 Nov 2026 04:47:47 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 24 Nov 2026 04:47:47 GMT
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
	-	`sha256:ee9e481c3b8fad4bdccc749cf56cde9a44e46d299e3abf2591af0ee01585b092`  
		Last Modified: Tue, 24 Nov 2026 04:48:19 GMT  
		Size: 137.3 MB (137259583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1db365424f877f4a85174c04f9a32e41a9c163eb45281e0e9e00b8407d12d7b`  
		Last Modified: Tue, 24 Nov 2026 04:48:16 GMT  
		Size: 21.6 KB (21603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3fa2a9956f0e2285efdeafa2bf292c431f6bb773f94570eef71ab31ce11688a`  
		Last Modified: Tue, 24 Nov 2026 04:48:16 GMT  
		Size: 6.1 KB (6105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:089244e55f4e162a0dd1d03cf5bd282ef8c84a5f31a41b540d35626eb5aa1a79`  
		Last Modified: Tue, 24 Nov 2026 04:48:16 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:latest` - unknown; unknown

```console
$ docker pull postgres@sha256:2f21a2e21c48aab8d3b68c70d5753b5f526bf32267eac58f8368b36f1d8340e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6412013 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6691aee847dd1887274fcbb71ea7c655cb5dce814f6402f0440369e757fda252`

```dockerfile
```

-	Layers:
	-	`sha256:abc5bbb688e3eb95dba18f81458a890482bae7100860d84d8783897132691c3a`  
		Last Modified: Tue, 24 Nov 2026 04:48:16 GMT  
		Size: 6.4 MB (6361119 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:066e04de1b6528cf91e9157fc4e708f2436fd802c72b4e1da1c9397a2ca539c8`  
		Last Modified: Tue, 24 Nov 2026 04:48:16 GMT  
		Size: 50.9 KB (50894 bytes)  
		MIME: application/vnd.in-toto+json
