## `postgres:17-trixie`

```console
$ docker pull postgres@sha256:31ba9c94a03ada9988f2bb493a22a75eef3a185884533e5cdbcd498ea835b08f
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

### `postgres:17-trixie` - linux; amd64

```console
$ docker pull postgres@sha256:0b81cec82228160abfa753aeaad0609b709eb26eeb950f2e404ad2326e1cc370
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.3 MB (161348207 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81edcaa5ff2923f7be9c1f43d3e5076f29c6c9c216c86964b5fd038959404429`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:30:47 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 28 Oct 2026 01:30:53 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:31:01 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 01:31:01 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 01:31:07 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Wed, 28 Oct 2026 01:31:07 GMT
ENV LANG=en_US.utf8
# Wed, 28 Oct 2026 01:31:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:31:11 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 28 Oct 2026 01:31:12 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 28 Oct 2026 01:31:12 GMT
ENV PG_MAJOR=17
# Wed, 28 Oct 2026 01:31:12 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/17/bin
# Wed, 28 Oct 2026 01:31:12 GMT
ENV PG_VERSION=17.11-1.pgdg13+2
# Wed, 28 Oct 2026 01:31:26 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Wed, 28 Oct 2026 01:31:26 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 28 Oct 2026 01:31:26 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 28 Oct 2026 01:31:26 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 28 Oct 2026 01:31:27 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Wed, 28 Oct 2026 01:31:27 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 28 Oct 2026 01:31:27 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:31:27 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 28 Oct 2026 01:31:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:31:27 GMT
STOPSIGNAL SIGINT
# Wed, 28 Oct 2026 01:31:27 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 28 Oct 2026 01:31:27 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6095e4c4fdddf9a6f7cd430ee37e356953b3c9d9e6e91880ea3b070fb42589d`  
		Last Modified: Wed, 28 Oct 2026 01:31:47 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bad9dce990efb3b10723536ab23735b84c403287c6af94fa590fb9821ab61021`  
		Last Modified: Wed, 28 Oct 2026 01:31:47 GMT  
		Size: 6.4 MB (6442940 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:904defe665c0632c076e28a8fc2c02604cf2c09c21fd62748bdb4e67d319ceba`  
		Last Modified: Wed, 28 Oct 2026 01:31:47 GMT  
		Size: 1.3 MB (1256758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:455e5ed72fb17119c244dc8c5e123adb10aade7f1227bd7a2023d0d431f75963`  
		Last Modified: Wed, 28 Oct 2026 01:31:47 GMT  
		Size: 8.2 MB (8203874 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55f03630535709beeb3183630a30b8d533f45eab0c19ac98466905c14c69e84c`  
		Last Modified: Wed, 28 Oct 2026 01:31:48 GMT  
		Size: 1.3 MB (1311713 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db07174d12aa42d4b40676ba48150bcd80677f420bbef870cebf93d02b18d127`  
		Last Modified: Wed, 28 Oct 2026 01:31:49 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03f2ecc50d4cce2b8cea81fa03f80f7a1bc76f039cf2a53184182f9ae9ca29db`  
		Last Modified: Wed, 28 Oct 2026 01:31:49 GMT  
		Size: 3.1 KB (3145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff7cbe54dfda435640366f9f5d3b523c63f637a74d707c4b28c74e64ca402023`  
		Last Modified: Wed, 28 Oct 2026 01:31:51 GMT  
		Size: 114.3 MB (114256208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a26f79bdef8b89d0cbe28a313a6b40e3a967f67cfd0d41bd56ee66e236db66c`  
		Last Modified: Wed, 28 Oct 2026 01:31:50 GMT  
		Size: 10.5 KB (10459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f1fbc5e4aa55481bd29543057941fc70a2886c127c2fc951306cca2c867aed9`  
		Last Modified: Wed, 28 Oct 2026 01:31:50 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f824adc2669f0f01fc0212ede410b933714861c83dc01a4ffab547967894bff`  
		Last Modified: Wed, 28 Oct 2026 01:31:50 GMT  
		Size: 168.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cecd013db3b3a58efa8d569eeba195a027cdd2ad9ba60b4d4a586e4bf175398`  
		Last Modified: Wed, 28 Oct 2026 01:31:51 GMT  
		Size: 6.1 KB (6109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f0980702fb2dc4392c7128d3ee7b373dec8a73e65f975a9e841223a6c2922c0`  
		Last Modified: Wed, 28 Oct 2026 01:31:48 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:17-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:cac5b920c8dda46306ebe76b57b240580142054820579d3d4f4c75019475e25a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5786721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d73ab90ff31dcff5fbd028e7cf074faa42031ae17860339d231a185220ff7e4b`

```dockerfile
```

-	Layers:
	-	`sha256:b822753d28034f2a905fa2d2d450749283c0224b5071fea5ae7f62b1b5de8c99`  
		Last Modified: Wed, 28 Oct 2026 01:31:47 GMT  
		Size: 5.7 MB (5732826 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0d9e2ab8f401a3ec442de8d976e275cb4e0365c5c94af8c3164c97a9cd61df40`  
		Last Modified: Wed, 28 Oct 2026 01:31:47 GMT  
		Size: 53.9 KB (53895 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:17-trixie` - linux; arm variant v5

```console
$ docker pull postgres@sha256:ba28b58e4c3832b9c2b60ab8d2c107bab41cfcb6d424f5fbd2bc99b5c6c46553
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.9 MB (90949506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17a378c4a296b0838190134ec4b69897ab6be94d956c18af2148806fe50b7aad`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:32:10 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 28 Oct 2026 01:32:20 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:32:32 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 01:32:32 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 01:32:43 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Wed, 28 Oct 2026 01:32:43 GMT
ENV LANG=en_US.utf8
# Wed, 28 Oct 2026 01:32:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:32:50 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 28 Oct 2026 01:32:51 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 28 Oct 2026 01:32:51 GMT
ENV PG_MAJOR=17
# Wed, 28 Oct 2026 01:32:51 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/17/bin
# Wed, 28 Oct 2026 01:32:51 GMT
ENV PG_VERSION=17.11-1.pgdg13+2
# Wed, 28 Oct 2026 01:46:18 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Wed, 28 Oct 2026 01:46:18 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 28 Oct 2026 01:46:18 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 28 Oct 2026 01:46:18 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 28 Oct 2026 01:46:18 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Wed, 28 Oct 2026 01:46:18 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 28 Oct 2026 01:46:18 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:46:18 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 28 Oct 2026 01:46:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:46:18 GMT
STOPSIGNAL SIGINT
# Wed, 28 Oct 2026 01:46:18 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 28 Oct 2026 01:46:18 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:68d18f0cacf7c180fce3f62bf1d71d368c005491f0c66d89fb313a1d6b6b81ee`  
		Last Modified: Wed, 28 Oct 2026 00:10:12 GMT  
		Size: 28.0 MB (28018667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adc3c79db22777c89be0fb383b126989d9561b08186decb1381e7b8870537238`  
		Last Modified: Wed, 28 Oct 2026 01:46:31 GMT  
		Size: 1.2 KB (1170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d6a7391b65f30a2a3332887909a1dace227e42722f521f6ca6ee9afa1eadcf7`  
		Last Modified: Wed, 28 Oct 2026 01:46:31 GMT  
		Size: 5.9 MB (5932365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:615e8267f4cd90472ddfd0633762c3541be0261170cef14ff86405951d2e5a88`  
		Last Modified: Wed, 28 Oct 2026 01:46:31 GMT  
		Size: 1.2 MB (1227574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:639df620c946a234993b9d745468bee6da40f19f5ed8f4d53a3c4f0305af4d22`  
		Last Modified: Wed, 28 Oct 2026 01:46:31 GMT  
		Size: 8.2 MB (8204256 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54c1fad78bcbd3276ee9c72cb915dcfe74ec6d01bb427d9c41df9beafc11122a`  
		Last Modified: Wed, 28 Oct 2026 01:46:32 GMT  
		Size: 1.3 MB (1317364 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb37a4a823ad0df2e92aeaad44cb710788ffbfa155eab1bb52f64f41a62fd2ef`  
		Last Modified: Wed, 28 Oct 2026 01:46:32 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67ff1ad0d4f92c9694c1bfdf959fb90fe829d005dbe74f7f04ec78669a5a69ec`  
		Last Modified: Wed, 28 Oct 2026 01:46:32 GMT  
		Size: 3.1 KB (3145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2625dbe558925899eeae9b529302412b5b51649a669515007187c4986b97c16`  
		Last Modified: Wed, 28 Oct 2026 01:46:34 GMT  
		Size: 46.2 MB (46227805 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:faf9f7bc18d2649f585fd96dc63622d9a402016675c5f503715037f227f1b8d8`  
		Last Modified: Wed, 28 Oct 2026 01:46:33 GMT  
		Size: 10.5 KB (10453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:085ea603d53d1167895ce36c9ec8c4ebf96266e56e3aeea69e9def0ef40a6a07`  
		Last Modified: Wed, 28 Oct 2026 01:46:34 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c80835b60a2b7d72e08860a01a12fe341a5b65284ab38a05135a5b3977f8ede4`  
		Last Modified: Wed, 28 Oct 2026 01:46:34 GMT  
		Size: 167.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78788be061c770e484e3937b3b3663d5d7a1fc91f7cb943161ab7b3c2031adab`  
		Last Modified: Wed, 28 Oct 2026 01:46:35 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd9cacccb88a60ca31587795b6f5229abcf1811804934c58b2c35fab45d5bdd6`  
		Last Modified: Wed, 28 Oct 2026 01:46:35 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:17-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:4e5afc61dac70c2c318326ac5c9101beb961c00f63acf6942bd7b50315c3fb85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5153969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38f127d619e2d3009a6b34db20727c041cc88febaf6831e3312c7386c2839ffc`

```dockerfile
```

-	Layers:
	-	`sha256:d0052b5ee8baf14a911744c6ecce45e0e13d1153c045fe5ce7632579cc60e580`  
		Last Modified: Wed, 28 Oct 2026 01:46:31 GMT  
		Size: 5.1 MB (5099857 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:330a73f72d1b352e507c70e4a0d327b6f699253d0d6e3c0cb325808ea67d2f42`  
		Last Modified: Wed, 28 Oct 2026 01:46:31 GMT  
		Size: 54.1 KB (54112 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:17-trixie` - linux; arm variant v7

```console
$ docker pull postgres@sha256:217d2561fedc65e24f64ea7adc8c4f19a5e108e88149ce110a393445d223717a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.3 MB (87285615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5a7d53de5aef58c9c17aaa01ea55b0e43d65d6daa30962963ea03ef731127fa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:04:09 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 28 Oct 2026 02:04:17 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 02:04:27 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 02:04:27 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 02:04:35 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Wed, 28 Oct 2026 02:04:35 GMT
ENV LANG=en_US.utf8
# Wed, 28 Oct 2026 02:04:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 02:04:40 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 28 Oct 2026 02:04:41 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 28 Oct 2026 02:04:41 GMT
ENV PG_MAJOR=17
# Wed, 28 Oct 2026 02:04:41 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/17/bin
# Wed, 28 Oct 2026 02:04:41 GMT
ENV PG_VERSION=17.11-1.pgdg13+2
# Wed, 28 Oct 2026 02:17:06 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Wed, 28 Oct 2026 02:17:06 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 28 Oct 2026 02:17:06 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 28 Oct 2026 02:17:06 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 28 Oct 2026 02:17:06 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Wed, 28 Oct 2026 02:17:06 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 28 Oct 2026 02:17:06 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 02:17:06 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 28 Oct 2026 02:17:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 02:17:06 GMT
STOPSIGNAL SIGINT
# Wed, 28 Oct 2026 02:17:06 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 28 Oct 2026 02:17:06 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:2040c133c8745155688a29a07cc3f1868977ae5f2844eb1893b054c5667a82b7`  
		Last Modified: Wed, 28 Oct 2026 00:10:58 GMT  
		Size: 26.3 MB (26272168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9993288747ed4e460b25dd0ae238f3a9fc96e4095585379ea0c3a76a485bb0ae`  
		Last Modified: Wed, 28 Oct 2026 02:17:19 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61a46c15d0a002a7385c0bc22092d6e197174e83e8c69bc42601398404a00404`  
		Last Modified: Wed, 28 Oct 2026 02:17:19 GMT  
		Size: 5.5 MB (5497321 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4f4b4189a4baed3ec43b9e5a5bef2729bbd22ae7f7e58a4f60d069cf05e1ca9`  
		Last Modified: Wed, 28 Oct 2026 02:17:19 GMT  
		Size: 1.2 MB (1222427 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1940b905d70c0a46a635663505a394b22e55dfcb1f634abf2688cb604208940a`  
		Last Modified: Wed, 28 Oct 2026 02:17:20 GMT  
		Size: 8.2 MB (8203989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0efb26e12ca75a38a5b38676aa4e0cd8fb6a17696d725936b2dc40d704bbefe`  
		Last Modified: Wed, 28 Oct 2026 02:17:20 GMT  
		Size: 1.2 MB (1172697 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6acebf3410315cf0704033a87bf489ff42d9d74533fdc07d36cb9f9322fbfa3a`  
		Last Modified: Wed, 28 Oct 2026 02:17:20 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:883f00805859010e913f36b1f5b9073352e64e72a809833a19b9d00866b85bde`  
		Last Modified: Wed, 28 Oct 2026 02:17:21 GMT  
		Size: 3.1 KB (3144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92d5b7cc13b4ab6e16ef0804f39580bae1e007079e307109b639168a933f94a7`  
		Last Modified: Wed, 28 Oct 2026 02:17:22 GMT  
		Size: 44.9 MB (44895525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c666c1f6e2fe9656c5c29fb624fc2185c81c364e7ef8f5ff1fd9611310ab0e65`  
		Last Modified: Wed, 28 Oct 2026 02:17:22 GMT  
		Size: 10.5 KB (10469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbe68ec25205be0b22a72789ee94ff5669785edeb0fbcec764d3c681108fea6b`  
		Last Modified: Wed, 28 Oct 2026 02:17:22 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9cfb99c12e5538601d223bb1f377a05a9e6716d71f1f46e88dfdfc6250729cf1`  
		Last Modified: Wed, 28 Oct 2026 02:17:22 GMT  
		Size: 169.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80ac6cb3e76d4acd808cde5278f1f4639a7b23bf0df705e4a2a102f0d2479cfd`  
		Last Modified: Wed, 28 Oct 2026 02:17:23 GMT  
		Size: 6.1 KB (6109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:841cf400c84982861db84df29227b50bbe7e0f8d8b900426fd19eb4bd81daf92`  
		Last Modified: Wed, 28 Oct 2026 02:17:23 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:17-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:78c8fe1bb5b8b58a97230ec2f80fee111b21dc83c188e3e1c1e92ce7e6d68841
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5153268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f395586f4e52d4500b861ef7b9087ad59247102ae7711b8047e42296270fc02f`

```dockerfile
```

-	Layers:
	-	`sha256:96615968bbb97c644437a3e132f90a8f222b27baeaf00a128e2872d3eba1227e`  
		Last Modified: Wed, 28 Oct 2026 02:17:19 GMT  
		Size: 5.1 MB (5099156 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d62f20e1c5cca17a40f1e2c20acc45645491d04310e67763b3c9f9a2fcc7e490`  
		Last Modified: Wed, 28 Oct 2026 02:17:19 GMT  
		Size: 54.1 KB (54112 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:17-trixie` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:ac359420747e1f5f8ac4d23f40d7ce022c0a39090ed6cdd8dde5f596affbe41d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.0 MB (159981836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbdfc26f27f4b2fecdc289b63295a0228cab33657a7b859afe54dc78d184dd1d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:33:17 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 28 Oct 2026 01:33:23 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:33:30 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 01:33:30 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 01:33:35 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Wed, 28 Oct 2026 01:33:35 GMT
ENV LANG=en_US.utf8
# Wed, 28 Oct 2026 01:33:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:33:39 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 28 Oct 2026 01:33:40 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 28 Oct 2026 01:33:40 GMT
ENV PG_MAJOR=17
# Wed, 28 Oct 2026 01:33:40 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/17/bin
# Wed, 28 Oct 2026 01:33:40 GMT
ENV PG_VERSION=17.11-1.pgdg13+2
# Wed, 28 Oct 2026 01:33:53 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Wed, 28 Oct 2026 01:33:53 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 28 Oct 2026 01:33:53 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 28 Oct 2026 01:33:53 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 28 Oct 2026 01:33:53 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Wed, 28 Oct 2026 01:33:53 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 28 Oct 2026 01:33:53 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:33:53 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 28 Oct 2026 01:33:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:33:53 GMT
STOPSIGNAL SIGINT
# Wed, 28 Oct 2026 01:33:53 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 28 Oct 2026 01:33:53 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10758931065338b367491ca4c50ef1ab2fd77423d3ca95f220a0cb0282435a05`  
		Last Modified: Wed, 28 Oct 2026 01:34:12 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f75c87e137452f440530fc0b49eee7a85ea2df2b7febf5371a26b5e307bf98b`  
		Last Modified: Wed, 28 Oct 2026 01:34:13 GMT  
		Size: 6.2 MB (6234986 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d40b62b025064f397df932396a62d335bafb93227e6e28a88cd74c564c12eb3`  
		Last Modified: Wed, 28 Oct 2026 01:34:13 GMT  
		Size: 1.2 MB (1209644 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c63f77bbde2cc6ca7e29c323e999365ebcc26b11a90e290537de4c8b28ced66`  
		Last Modified: Wed, 28 Oct 2026 01:34:13 GMT  
		Size: 8.2 MB (8203975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbc844c8bfe2e134a358d30748b654d6c92e6e6638af6374271cdef4fbb778fa`  
		Last Modified: Wed, 28 Oct 2026 01:34:13 GMT  
		Size: 1.2 MB (1220649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7fdfce169adae047cca30994ddbe4cc1a1433dc0609207d08ee25aded4e514c`  
		Last Modified: Wed, 28 Oct 2026 01:34:14 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:546322afd7bc2e12574af48c6c8219769ae269f9de5bcd13e877964a851d9429`  
		Last Modified: Wed, 28 Oct 2026 01:34:14 GMT  
		Size: 3.1 KB (3144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48be034e51083a1088a23076bbf847b9a005acaac391274b3093373172c498c2`  
		Last Modified: Wed, 28 Oct 2026 01:34:17 GMT  
		Size: 112.9 MB (112877612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7f6a423747da8ac8a400ae456c04cdc041a908e83bbd456f286f2ed62be99df`  
		Last Modified: Wed, 28 Oct 2026 01:34:15 GMT  
		Size: 10.5 KB (10456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f12d00c34e9305696590d0ff8e7e30ca4ce0a9216416e1cd1eb6dd10f66de061`  
		Last Modified: Wed, 28 Oct 2026 01:34:15 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:173574376bbc380a5b1a3d55cbc174b13bdb92407a9a769bc186daa1cc2a9eb9`  
		Last Modified: Wed, 28 Oct 2026 01:34:15 GMT  
		Size: 167.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12b09b94437a1baa716a2e62f1babfb3c08e6732e2cf08fb8bccb7917f843786`  
		Last Modified: Wed, 28 Oct 2026 01:34:16 GMT  
		Size: 6.1 KB (6109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96cb4123a71baf305cd70d1962213c12a3e4fc400129557a2ca519cc45cd84cb`  
		Last Modified: Wed, 28 Oct 2026 01:34:16 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:17-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:21e392b5db77237c634f3abe207ec358ab4bc15787c0ac8ae2d5f052d385d160
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5793328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fe2ef72596a13550d8e1a36449ecd67564506fc26765dc7758a9575ecd21b57`

```dockerfile
```

-	Layers:
	-	`sha256:ab1882ebba8af702f64afc0bfb3c59a3ab3d12496f808bb0b2f87c2c3011bb52`  
		Last Modified: Wed, 28 Oct 2026 01:34:12 GMT  
		Size: 5.7 MB (5739164 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2039b32ad7f9469719fac92e4e5ac54c62e8d5355818f4c39609db7c9e236359`  
		Last Modified: Wed, 28 Oct 2026 01:34:12 GMT  
		Size: 54.2 KB (54164 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:17-trixie` - linux; 386

```console
$ docker pull postgres@sha256:b555988fc2f5b43b33a16037b7f2836331c166b8c164e327df98b3cd5797ef17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.0 MB (97014624 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:656491cd19bb66a9ff27ee93d80403aa5045cd46313c6e2be13ae2d1bfdea60b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:31:26 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 28 Oct 2026 01:31:33 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:31:41 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 01:31:41 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 01:31:47 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Wed, 28 Oct 2026 01:31:47 GMT
ENV LANG=en_US.utf8
# Wed, 28 Oct 2026 01:31:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:31:51 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 28 Oct 2026 01:31:51 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 28 Oct 2026 01:31:51 GMT
ENV PG_MAJOR=17
# Wed, 28 Oct 2026 01:31:51 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/17/bin
# Wed, 28 Oct 2026 01:31:51 GMT
ENV PG_VERSION=17.11-1.pgdg13+2
# Wed, 28 Oct 2026 01:40:56 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Wed, 28 Oct 2026 01:40:56 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 28 Oct 2026 01:40:56 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 28 Oct 2026 01:40:56 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 28 Oct 2026 01:40:56 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Wed, 28 Oct 2026 01:40:56 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 28 Oct 2026 01:40:56 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:40:57 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 28 Oct 2026 01:40:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 01:40:57 GMT
STOPSIGNAL SIGINT
# Wed, 28 Oct 2026 01:40:57 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 28 Oct 2026 01:40:57 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:8de786efd9f843bb6c3b38a5b42b133b1940ce9f9efbdcf2a555339daf02c662`  
		Last Modified: Wed, 28 Oct 2026 00:11:00 GMT  
		Size: 31.4 MB (31368586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a9541c3049654bf9647f5f5d4605cc43cfffaa3d956e057b9b2993f22771bbb`  
		Last Modified: Wed, 28 Oct 2026 01:41:09 GMT  
		Size: 1.2 KB (1169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd1427a9bc34c0e8fec92ef0682d02895a28ae990f56a173a8cea63fce436e75`  
		Last Modified: Wed, 28 Oct 2026 01:41:10 GMT  
		Size: 6.6 MB (6631369 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ef4960af2909697d296f3bee0b54e5722c4070d83879e8ecdd61e041f47bfa4`  
		Last Modified: Wed, 28 Oct 2026 01:41:09 GMT  
		Size: 1.2 MB (1225849 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c888b217745f18ab42163ba86e807645061173d3f578f9f100f5170c7ba854c1`  
		Last Modified: Wed, 28 Oct 2026 01:41:10 GMT  
		Size: 8.2 MB (8204025 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84bfcd736fce093fd0b50291144834ccfb1f0d1f071e52d26923e7651afd8517`  
		Last Modified: Wed, 28 Oct 2026 01:41:10 GMT  
		Size: 1.3 MB (1308304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:702469bde45b31b507d60581d470baf31dd6327ac54d8835cb829b7924129a52`  
		Last Modified: Wed, 28 Oct 2026 01:41:11 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4529c916cdc00df1c406fc27762ad38f5992cf56536c0e9c78253be1ae53ccf8`  
		Last Modified: Wed, 28 Oct 2026 01:41:11 GMT  
		Size: 3.1 KB (3141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:336066eafa257a483a1480bbedfd6f0d5afb75b8b440321e80c70bc9f4e998b9`  
		Last Modified: Wed, 28 Oct 2026 01:41:12 GMT  
		Size: 48.3 MB (48255027 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:837c1ee6faeb2f22ab46bf098ef41e7d2d9f331218e661360e4f9068522ccf1e`  
		Last Modified: Wed, 28 Oct 2026 01:41:12 GMT  
		Size: 10.5 KB (10451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79e354af263868573b21b9ca3f1eabf2c77a583f25ac7df7bc02175fa0ab45d7`  
		Last Modified: Wed, 28 Oct 2026 01:41:12 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8342c3b9c4e98ce80c9d2edca71581da15c8c3bb40d33731d44eda5467332f45`  
		Last Modified: Wed, 28 Oct 2026 01:41:12 GMT  
		Size: 168.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d951b1b7ab78772f193259cfd5b6e6ac4ac779623dbc06dde8acf17ee4c1275d`  
		Last Modified: Wed, 28 Oct 2026 01:41:13 GMT  
		Size: 6.1 KB (6107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e22036dd20f9d6347e8a8fd6375758c73db227c684b73be09fc73571b29d23c`  
		Last Modified: Wed, 28 Oct 2026 01:41:13 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:17-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:cd1f76c83739f44ae0d4927382a364d8e0f66a05354651117e6bd3e658c58379
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5149060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93cb892066310b58860dc4c424586ebccdab71d9470927457d93932ce4d20707`

```dockerfile
```

-	Layers:
	-	`sha256:abb5c459fc9f7b5a792c4e127391a2b2a0fca00a21926e8966b7bbb20e7ae21f`  
		Last Modified: Wed, 28 Oct 2026 01:41:10 GMT  
		Size: 5.1 MB (5095225 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0b473e7ad5f964d4b7e44d72b2669b2cd7a08750050de3f3b1c484588cbdfbd9`  
		Last Modified: Wed, 28 Oct 2026 01:41:09 GMT  
		Size: 53.8 KB (53835 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:17-trixie` - linux; ppc64le

```console
$ docker pull postgres@sha256:f314c41723be8b8c456598bcdec07a8afeb1bb3c5e27f75dedc0ab153c1f46ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.7 MB (173697525 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2f67b925a0e6864e4e8054984f0f985ed112bf7ed4a716d042d32f0b1b4efbf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 03:53:43 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 28 Oct 2026 03:53:56 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 03:54:11 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 03:54:11 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 03:54:23 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Wed, 28 Oct 2026 03:54:23 GMT
ENV LANG=en_US.utf8
# Wed, 28 Oct 2026 03:54:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 03:54:32 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 28 Oct 2026 03:54:34 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 28 Oct 2026 03:54:34 GMT
ENV PG_MAJOR=17
# Wed, 28 Oct 2026 03:54:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/17/bin
# Wed, 28 Oct 2026 03:54:34 GMT
ENV PG_VERSION=17.11-1.pgdg13+2
# Wed, 28 Oct 2026 04:00:11 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Wed, 28 Oct 2026 04:00:11 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 28 Oct 2026 04:00:12 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 28 Oct 2026 04:00:12 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 28 Oct 2026 04:00:14 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Wed, 28 Oct 2026 04:00:14 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 28 Oct 2026 04:00:15 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 04:00:15 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 28 Oct 2026 04:00:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 04:00:15 GMT
STOPSIGNAL SIGINT
# Wed, 28 Oct 2026 04:00:15 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 28 Oct 2026 04:00:15 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f490fb2987a662c38eed3607aecc06172dd51be9288e6586d2882b2c76f0ea1a`  
		Last Modified: Wed, 28 Oct 2026 00:24:12 GMT  
		Size: 33.7 MB (33666263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d48842250c73ce1f59b2e64eec78755eefcd3e682070baa339613dad7007a71`  
		Last Modified: Wed, 28 Oct 2026 03:56:11 GMT  
		Size: 1.2 KB (1169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e4c6440f7b326ac8ec9e3511dffce0b9da602e0c43fe5136cc6c106483603d7`  
		Last Modified: Wed, 28 Oct 2026 03:56:12 GMT  
		Size: 7.1 MB (7076749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f83f76c5d0fd81e084bb98107e9e39b869176699aee8168d14d77e861fc270d`  
		Last Modified: Wed, 28 Oct 2026 03:56:11 GMT  
		Size: 1.2 MB (1214747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a406bd4004f90f4bb5d3b6871571938bdd4e5ae7957811163cc48c73e1e7f917`  
		Last Modified: Wed, 28 Oct 2026 03:56:12 GMT  
		Size: 8.2 MB (8204022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d79d9ebcf13ca3731dc032230d3d62cfcdf27f581b519fb84d709a1698f466e`  
		Last Modified: Wed, 28 Oct 2026 03:56:13 GMT  
		Size: 1.4 MB (1394926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94e27c9c30c588495538989ebdbb7954a29f287d4df72f6c79a6da61715f7777`  
		Last Modified: Wed, 28 Oct 2026 03:56:13 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09707f7ea50cbe9e5c82756ec8a7c54c24518b775ffdcdfe2c724343c5a8a3f1`  
		Last Modified: Wed, 28 Oct 2026 03:56:13 GMT  
		Size: 3.1 KB (3141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a776213661576e46a24319993a4bda893448ed4c714eba2265b834993ae3d4e2`  
		Last Modified: Wed, 28 Oct 2026 04:01:04 GMT  
		Size: 122.1 MB (122119346 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:796441d2ab768b3c9757e9ae9e440f78cb07b93b81a979fecb71a933e34a5b63`  
		Last Modified: Wed, 28 Oct 2026 04:01:01 GMT  
		Size: 10.5 KB (10457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cf6447cd6df4ad0fb1a5648dfb7f7cd6c93f0a0f61b40df808461588b793bfa`  
		Last Modified: Wed, 28 Oct 2026 04:01:01 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7575314fa32ccc6e00dfc7ec24c2ca9b097da8331acf724610919bfe3c6ecc90`  
		Last Modified: Wed, 28 Oct 2026 04:01:01 GMT  
		Size: 168.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78c0cee5c42a1f7146b578dd2d5f6d66503ebb836cba0046e3a97fa3fda1f3d2`  
		Last Modified: Wed, 28 Oct 2026 04:01:03 GMT  
		Size: 6.1 KB (6108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00cf7327dac9bbf36a7eb92056daf9b0285389f7174020d67840f4516d8790e9`  
		Last Modified: Wed, 28 Oct 2026 04:01:03 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:17-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:6cf31e67b7d5aa646a7469c0b5ef44b5233ff11189fb3c630b2455d69ca9a804
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5793400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9598ff911c6b0e00f21d3ffae301540008537d8e9b378448db540ba60b4670ac`

```dockerfile
```

-	Layers:
	-	`sha256:9b055f1093a69d8abd30837ab95ab5f0bba72c051c52879abe75940a3880ca90`  
		Last Modified: Wed, 28 Oct 2026 04:01:02 GMT  
		Size: 5.7 MB (5739439 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e1b344eacc50523102305a1d64039495249fb0992f326d546e5d6f1c73d31e2f`  
		Last Modified: Wed, 28 Oct 2026 04:01:01 GMT  
		Size: 54.0 KB (53961 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:17-trixie` - linux; riscv64

```console
$ docker pull postgres@sha256:2fd19b3876722940e438817097b81ce2a8b14c67f07c8c56385d64084dfa57f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.3 MB (92348382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88e093862dd05b12f79803a4c4b9bfbdb173c41a75384bf73e63d1767aa5befe`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 16:17:45 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 21 Oct 2026 16:18:44 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 16:19:45 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 16:19:45 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 16:20:48 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Wed, 21 Oct 2026 16:20:48 GMT
ENV LANG=en_US.utf8
# Wed, 21 Oct 2026 16:21:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 16:21:32 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 21 Oct 2026 16:21:33 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 21 Oct 2026 16:21:33 GMT
ENV PG_MAJOR=17
# Wed, 21 Oct 2026 16:21:33 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/17/bin
# Wed, 21 Oct 2026 16:21:33 GMT
ENV PG_VERSION=17.11-1.pgdg13+2
# Wed, 21 Oct 2026 20:48:19 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Wed, 21 Oct 2026 20:48:19 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 21 Oct 2026 20:48:20 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 21 Oct 2026 20:48:20 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 21 Oct 2026 20:48:20 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Wed, 21 Oct 2026 20:48:20 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 21 Oct 2026 20:48:20 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 20:48:21 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 21 Oct 2026 20:48:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 20:48:21 GMT
STOPSIGNAL SIGINT
# Wed, 21 Oct 2026 20:48:21 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 21 Oct 2026 20:48:21 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:c1206888a96a9a1d872c517f2fbe95ce8d2ebe30c523c27832270d8b73768b7c`  
		Last Modified: Tue, 20 Oct 2026 23:49:10 GMT  
		Size: 28.3 MB (28333871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dcdaefdd89fcdc4abe726641f2b672f5341ee104c1296f062fe2643bd3d99c7`  
		Last Modified: Wed, 21 Oct 2026 18:34:31 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fd041dbefd060f5d3b61f02b0d667d5a4ed7755705e80616c46f65d7cbf4756`  
		Last Modified: Wed, 21 Oct 2026 18:34:33 GMT  
		Size: 6.3 MB (6293017 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45802bea51d82b8d8855a9de7eb932d81bcc53068ac961e10144344609bfecec`  
		Last Modified: Wed, 21 Oct 2026 18:34:32 GMT  
		Size: 1.2 MB (1202076 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62ecd0425cbd6e3e5c59757fe55eac09cec06a0cb7f08649bb4143da45bb99b1`  
		Last Modified: Wed, 21 Oct 2026 18:34:34 GMT  
		Size: 8.2 MB (8203733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c7a9ec500ebb998e0c55f81f9d4b8c789f2b6fe63f6d6c1907670525976b9ab`  
		Last Modified: Wed, 21 Oct 2026 18:34:34 GMT  
		Size: 1.4 MB (1402430 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a284e93ddd14cc314afd7cb88292da1c8e3eb1d3edb193cd7bd425376a81370a`  
		Last Modified: Wed, 21 Oct 2026 18:34:34 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d70738f565bfe038e3c3ebfd1e4f05bbf2957c979e52aca71012019c7949254c`  
		Last Modified: Wed, 21 Oct 2026 18:34:35 GMT  
		Size: 3.1 KB (3145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcad3b62abf7cc4cef49f3392c6195399067e8760160e216982ab7bf106c8391`  
		Last Modified: Wed, 21 Oct 2026 20:51:09 GMT  
		Size: 46.9 MB (46891767 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85ce93c2cb870f6d18897b8f76af92addb7bb99e6eb7e905b296e7a7f0ea0ec5`  
		Last Modified: Wed, 21 Oct 2026 20:51:01 GMT  
		Size: 10.5 KB (10466 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b98dfc58bc81101aa7e3ca4046e6df8efbe2c364a4735bd3d5e5fbeed70cb0d9`  
		Last Modified: Wed, 21 Oct 2026 20:51:01 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d262ecd58adde212c3801ec947efda8d925a421dc9d3466369dd8ebbb27968d2`  
		Last Modified: Wed, 21 Oct 2026 20:51:01 GMT  
		Size: 167.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0e1f3c846bd3dbc292b610527bdc2714f21595f4e3d4651d11f047163df03c1`  
		Last Modified: Wed, 21 Oct 2026 20:51:02 GMT  
		Size: 6.1 KB (6115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b75816c3e5706e2eecdc14c6dd6903fb5a3738b4058e85ee56cfef87dd916562`  
		Last Modified: Wed, 21 Oct 2026 20:51:02 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:17-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:0c88527bdd326111d1c6f20ea00497082741be52e43dec537d3f694d51cd48f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5144081 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:066c20d4af772439adcfc94de2805ccf30f74396200bfedb1ef8208c3ddb0af2`

```dockerfile
```

-	Layers:
	-	`sha256:6ebd1a61de29e15116b8111d24b8bda20ea35cb3ed2a4bf3092803805a6043fb`  
		Last Modified: Wed, 21 Oct 2026 20:51:02 GMT  
		Size: 5.1 MB (5090126 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7c0d52f5fd8f8ce37b8dc32f987fdd03c25d185aab9737afafbdfd10bcce3934`  
		Last Modified: Wed, 21 Oct 2026 20:51:00 GMT  
		Size: 54.0 KB (53955 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:17-trixie` - linux; s390x

```console
$ docker pull postgres@sha256:4f57ae1a33218cdaa8351fd7abefecad5cf76995edbb4c72acb7e30260bcd726
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.9 MB (175909450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15567085c7ef35ad37df7d026dd2954e20aa3e3820e2692f429995b2c333b25f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:02:22 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 28 Oct 2026 02:02:27 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 02:02:34 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 02:02:34 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 02:02:40 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Wed, 28 Oct 2026 02:02:40 GMT
ENV LANG=en_US.utf8
# Wed, 28 Oct 2026 02:02:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 02:02:44 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 28 Oct 2026 02:02:44 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 28 Oct 2026 02:02:44 GMT
ENV PG_MAJOR=17
# Wed, 28 Oct 2026 02:02:44 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/17/bin
# Wed, 28 Oct 2026 02:02:44 GMT
ENV PG_VERSION=17.11-1.pgdg13+2
# Wed, 28 Oct 2026 02:26:30 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Wed, 28 Oct 2026 02:26:30 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 28 Oct 2026 02:26:30 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 28 Oct 2026 02:26:30 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 28 Oct 2026 02:26:30 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Wed, 28 Oct 2026 02:26:30 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 28 Oct 2026 02:26:30 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 02:26:30 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 28 Oct 2026 02:26:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 02:26:30 GMT
STOPSIGNAL SIGINT
# Wed, 28 Oct 2026 02:26:30 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 28 Oct 2026 02:26:30 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:339d5b2a6ed9e2a6924e3ae4ce0b1ebaaf03703c49884018433f3933a87895fc`  
		Last Modified: Wed, 28 Oct 2026 00:10:36 GMT  
		Size: 29.9 MB (29922921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d7aaf51b4ed5e9bbf186ebeb1f30bc5f05c9e086ee026df96e2fc914bc7e01c`  
		Last Modified: Wed, 28 Oct 2026 02:15:05 GMT  
		Size: 1.2 KB (1170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef68329950f8b3b7c3347da448984ff84ee7bce860639743ea5c07a4e6132988`  
		Last Modified: Wed, 28 Oct 2026 02:15:05 GMT  
		Size: 6.4 MB (6408453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80bb4415d01f7f1dd265db349ac6871ceb24ff66c37b6c4b0e86f69842d1521b`  
		Last Modified: Wed, 28 Oct 2026 02:15:05 GMT  
		Size: 1.2 MB (1230212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6f107a46aeb5b59578ca9d76adb5b1218b01406d854e5b8942b6d89acc3122a`  
		Last Modified: Wed, 28 Oct 2026 02:15:05 GMT  
		Size: 8.3 MB (8258965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e80d9abc3b7e7d3a2c4ce878b2e9e7c20f3153615232f4458e10fde33c16ba23`  
		Last Modified: Wed, 28 Oct 2026 02:15:06 GMT  
		Size: 1.4 MB (1398254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c71aba54e4b7f9cca9181719686281059a210d132983d697682fcca47c8e014a`  
		Last Modified: Wed, 28 Oct 2026 02:15:06 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f045a0635f220bce00d0612b58adfa8c05a60904182467d2fb8abf7a5a6fbbf3`  
		Last Modified: Wed, 28 Oct 2026 02:15:07 GMT  
		Size: 3.1 KB (3142 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d5743824e9698f7e564098230eef1c3b83e01496fa67c4b0301faa6c138b230`  
		Last Modified: Wed, 28 Oct 2026 02:27:02 GMT  
		Size: 128.7 MB (128669169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd53de4d9daec897e913c0bae3f49319f8b230e5262377b3c99edd8de5b16bff`  
		Last Modified: Wed, 28 Oct 2026 02:26:59 GMT  
		Size: 10.5 KB (10457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a6dc3fab5251c278476a0e55104390ca04bf6f46b3c699ce3f01650322d872a`  
		Last Modified: Wed, 28 Oct 2026 02:26:59 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e753b752074622032b31aa196b7009f9e5857673271408737e281ad3698bedf`  
		Last Modified: Wed, 28 Oct 2026 02:26:59 GMT  
		Size: 168.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f39df174e60cad29724e75b4e5375dc23a22cdd3cb76a1a792a2284c013f8805`  
		Last Modified: Wed, 28 Oct 2026 02:27:00 GMT  
		Size: 6.1 KB (6108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a582be4bf3cf0322c4487d3f9601dfb837bf599ad435e83ff272fdd213d3622b`  
		Last Modified: Wed, 28 Oct 2026 02:27:00 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:17-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:208c8e5bd9b5df0b4d9a5e4ec37e6a9c4a7b54e6cb271518232ca07a1f5361a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5801694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0045f104b82503a0aa4e2a9b7adcaa5a370772b5c4ac1dd530c832090267e4a`

```dockerfile
```

-	Layers:
	-	`sha256:31faba2f5939bcc0c67a79b3719ee85ffb094d42ad3ddd7f64fd7a8dbe1c21fa`  
		Last Modified: Wed, 28 Oct 2026 02:26:59 GMT  
		Size: 5.7 MB (5747799 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e498a8607357e598c51e1165e303e9bf77a0b9bcc7c9f2f43edbe67f69a3c49f`  
		Last Modified: Wed, 28 Oct 2026 02:26:59 GMT  
		Size: 53.9 KB (53895 bytes)  
		MIME: application/vnd.in-toto+json
