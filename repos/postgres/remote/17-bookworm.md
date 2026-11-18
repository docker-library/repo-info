## `postgres:17-bookworm`

```console
$ docker pull postgres@sha256:837bed18782820fe967067cb5328b02b0d9992c1be9a37ee0c9c492cfc03af3b
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

### `postgres:17-bookworm` - linux; amd64

```console
$ docker pull postgres@sha256:8d174ddfb292f26b6ec8d97f55d944ccab547fa8bfe9e4fd3c24afdc819ee423
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.5 MB (162512523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39d36505873241b90584a61078c0a3af0a226a363854fcc2d722a72ce7a00500`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Wed, 18 Nov 2026 21:29:31 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 		install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql; 		install --verbose --directory --owner postgres --group postgres --mode 3777 /run/postgresql; 		mkdir -p /usr/local/lib/tmpfiles.d; 	printf '%s\n' 		'd /var/lib/postgresql 1777 postgres postgres' 		'd /run/postgresql 3777 postgres postgres' 		> /usr/local/lib/tmpfiles.d/postgresql-common.conf # buildkit
# Wed, 18 Nov 2026 21:29:35 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 21:29:41 GMT
ENV GOSU_VERSION=1.20
# Wed, 18 Nov 2026 21:29:41 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 18 Nov 2026 21:29:45 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Wed, 18 Nov 2026 21:29:45 GMT
ENV LANG=en_US.utf8
# Wed, 18 Nov 2026 21:29:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 21:29:47 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 18 Nov 2026 21:29:48 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 18 Nov 2026 21:29:48 GMT
ENV PG_MAJOR=17
# Wed, 18 Nov 2026 21:29:48 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/17/bin
# Wed, 18 Nov 2026 21:29:48 GMT
ENV PG_VERSION=17.12-1.pgdg12+1
# Wed, 18 Nov 2026 21:30:01 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Wed, 18 Nov 2026 21:30:01 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 18 Nov 2026 21:30:01 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 18 Nov 2026 21:30:01 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Wed, 18 Nov 2026 21:30:01 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 18 Nov 2026 21:30:01 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 18 Nov 2026 21:30:01 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 18 Nov 2026 21:30:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 18 Nov 2026 21:30:01 GMT
STOPSIGNAL SIGINT
# Wed, 18 Nov 2026 21:30:01 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 18 Nov 2026 21:30:01 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:dd051e1b8c92ff101fa3071ab97ea4924885942f15644e01c3dc095764e863e3`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 28.2 MB (28247982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61898df8215c9d698a60ebccf4a2bbd725678688c081c50efbdaca3f33dbdddc`  
		Last Modified: Wed, 18 Nov 2026 21:30:21 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c786e7ff3265e29381aff49283560a113986466e4dfe32a62c1eeda4ef856ac6`  
		Last Modified: Wed, 18 Nov 2026 21:30:21 GMT  
		Size: 4.5 MB (4534232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae002ce57fa80dc861d9e1e733fa5b942a0e8d93a9cf72ca1a80368b3720bdb5`  
		Last Modified: Wed, 18 Nov 2026 21:30:21 GMT  
		Size: 1.3 MB (1251424 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d9261669255e9bc98b8aef4b7460c3375580ea7ddca6a309daa99d6c7e28e8f`  
		Last Modified: Wed, 18 Nov 2026 21:30:22 GMT  
		Size: 8.1 MB (8066433 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:790213b31cb1f720b8b098e183de700c3e22e50c77a8526c82b7404755c25ff9`  
		Last Modified: Wed, 18 Nov 2026 21:30:23 GMT  
		Size: 1.2 MB (1196442 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8f9f793b6b536991968011a98c5382cacdd16a0e9bb343812e19a1c4ec6a95c`  
		Last Modified: Wed, 18 Nov 2026 21:30:23 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2394d9fec7ad6ea4dd1f6eefda47bbbd1340cc8ddf6d9f3c7029de99c44077db`  
		Last Modified: Wed, 18 Nov 2026 21:30:23 GMT  
		Size: 3.1 KB (3142 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db77f2c04c8624b60dea7abd57754320bd8b22ac5885edb9041e9241851c87c1`  
		Last Modified: Wed, 18 Nov 2026 21:30:26 GMT  
		Size: 119.2 MB (119194612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46cf366c2af59a2fd6f17311fd8b76574135f9476ef3a20c9dff1b16964c3176`  
		Last Modified: Wed, 18 Nov 2026 21:30:24 GMT  
		Size: 10.4 KB (10353 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0fed06a709c6d7b8b0c7a0809a0af994fa622949cc644a9df459c991bcf6e1e`  
		Last Modified: Wed, 18 Nov 2026 21:30:24 GMT  
		Size: 170.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1efe74d974fe2c0b876afa6ce8e52e20b3f7fb2063f0f17266cd46edc223c382`  
		Last Modified: Wed, 18 Nov 2026 21:30:24 GMT  
		Size: 6.1 KB (6106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:593598a92ca5ce6214bfa6d8bbfa6b348cf9cfbd38962b33375d2b72dcfe1de8`  
		Last Modified: Wed, 18 Nov 2026 21:30:25 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:17-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:0cd51ba2047b2f5b2e73bee7e6185f4086ed026620c745d5c3e7db069319b387
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6342966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fb21bbc85194df78d69f3c517c23287bb4b782c8a668ad3f3ab546944c5cd56`

```dockerfile
```

-	Layers:
	-	`sha256:da5e3b73cba5172f24b25fc3bfdc8fb55f011b8b744d5ff42232cfee9947abbd`  
		Last Modified: Wed, 18 Nov 2026 21:30:22 GMT  
		Size: 6.3 MB (6291406 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:637d62c0ebceaf1519547790f6b3bf7cafccd8af85043cce618958ea268e42bb`  
		Last Modified: Wed, 18 Nov 2026 21:30:21 GMT  
		Size: 51.6 KB (51560 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:17-bookworm` - linux; arm variant v7

```console
$ docker pull postgres@sha256:c5230f15931f7511182157b9b1d58f8d155764d1c6f5d2e657598b1b039162d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.7 MB (88693726 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8fa0f9b9a2e8522fe5e4b8068ad8fab0224ea628f098fed7fe07c719a4144e4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1793827419'
# Wed, 18 Nov 2026 21:42:42 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 		install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql; 		install --verbose --directory --owner postgres --group postgres --mode 3777 /run/postgresql; 		mkdir -p /usr/local/lib/tmpfiles.d; 	printf '%s\n' 		'd /var/lib/postgresql 1777 postgres postgres' 		'd /run/postgresql 3777 postgres postgres' 		> /usr/local/lib/tmpfiles.d/postgresql-common.conf # buildkit
# Wed, 18 Nov 2026 21:42:47 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 21:42:54 GMT
ENV GOSU_VERSION=1.20
# Wed, 18 Nov 2026 21:42:54 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 18 Nov 2026 21:43:00 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Wed, 18 Nov 2026 21:43:00 GMT
ENV LANG=en_US.utf8
# Wed, 18 Nov 2026 21:43:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 21:43:03 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 18 Nov 2026 21:43:04 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 18 Nov 2026 21:43:04 GMT
ENV PG_MAJOR=17
# Wed, 18 Nov 2026 21:43:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/17/bin
# Wed, 18 Nov 2026 21:43:04 GMT
ENV PG_VERSION=17.12-1.pgdg12+1
# Wed, 18 Nov 2026 21:54:25 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Wed, 18 Nov 2026 21:54:25 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 18 Nov 2026 21:54:25 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 18 Nov 2026 21:54:25 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Wed, 18 Nov 2026 21:54:25 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 18 Nov 2026 21:54:25 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 18 Nov 2026 21:54:25 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 18 Nov 2026 21:54:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 18 Nov 2026 21:54:25 GMT
STOPSIGNAL SIGINT
# Wed, 18 Nov 2026 21:54:25 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 18 Nov 2026 21:54:25 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:b37c96781b87a85cb04abbf5abfe88c91253a506348403ce0022810d702aa72c`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 24.0 MB (23961356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d56f7af69560f35dc8feec7b50fd13ccba56935230d14e1dba1f074f5db1cf8`  
		Last Modified: Wed, 18 Nov 2026 21:54:38 GMT  
		Size: 1.3 KB (1328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb9b8b714425e8da52eb1bb20ba4572464637e212a2d3fbb90998840740c7ad6`  
		Last Modified: Wed, 18 Nov 2026 21:54:39 GMT  
		Size: 3.7 MB (3742453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfa4ab0ae1f9dd45780814c92113f17bd72ac54b0eb5220041ba0aad7ec1b7ff`  
		Last Modified: Wed, 18 Nov 2026 21:54:38 GMT  
		Size: 1.2 MB (1217378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d806178c7f866abb714f0d59716b5d5a83a416934d33ab8e37169cde2d5a01e`  
		Last Modified: Wed, 18 Nov 2026 21:54:39 GMT  
		Size: 8.1 MB (8066480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:564385f24cd9020bb09d73ef53759dda64f4b9c52ea134d596e79d49b970f78c`  
		Last Modified: Wed, 18 Nov 2026 21:54:39 GMT  
		Size: 1.1 MB (1067311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecfad7125cd7694c157adf58d1ee83c13f5bcc1fe4c36202a4135db69856abaa`  
		Last Modified: Wed, 18 Nov 2026 21:54:39 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4ed30640fc6a2b53b5c7691b87977d139981c79f296083e68b0adc1b27a6d6e`  
		Last Modified: Wed, 18 Nov 2026 21:54:40 GMT  
		Size: 3.1 KB (3146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2774dc4a459717b251e10ff3c95c2982ca6a0fe0a843fd58e8480b75047ce7cd`  
		Last Modified: Wed, 18 Nov 2026 21:54:41 GMT  
		Size: 50.6 MB (50617339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:386dbb3f9cc439f4460afc2f1d93931f6c7e5bddac50a8a7c26c423f86ec5a66`  
		Last Modified: Wed, 18 Nov 2026 21:54:40 GMT  
		Size: 10.4 KB (10358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a781b2b8e553269608cd61aefe6b00bfcdeba38be42d41dd93ec59f3d2b0be54`  
		Last Modified: Wed, 18 Nov 2026 21:54:41 GMT  
		Size: 168.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1af5dd96c25fd341a678d47d9f62529e857e7e448dd3cf8eb64fd5f76366119`  
		Last Modified: Wed, 18 Nov 2026 21:54:41 GMT  
		Size: 6.1 KB (6107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f03bb717488c072aecbdcbf277052a391ec1f133d93e3430a365e982a0eb0a4`  
		Last Modified: Wed, 18 Nov 2026 21:54:42 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:17-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:24c7946520c41a3fd327fa804aca645249be6080a64dc24e52a96c0cec0c27c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5705566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:431719feafc57c5216de4d24658886783c9d9f1a23fa6ff61ef15fd1249fa1ca`

```dockerfile
```

-	Layers:
	-	`sha256:4c6c39823a8c99caf796a643fda78f83aa7d064d44098d335be694386d510cac`  
		Last Modified: Wed, 18 Nov 2026 21:54:39 GMT  
		Size: 5.7 MB (5653817 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fd1e3cdbd56f4e206de39da31faa137db2678159a7968c5eed176ffcc82fcfa6`  
		Last Modified: Wed, 18 Nov 2026 21:54:38 GMT  
		Size: 51.7 KB (51749 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:17-bookworm` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:783f838eb1cd91c8371dca3569c21c4eed2df03e18fbc430240ab36a5e030e9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.4 MB (160420422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f37137dbae5999baee30aae4091e8bdcc42a141a399b5b1feac346b7dea97251`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Wed, 18 Nov 2026 21:29:04 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 		install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql; 		install --verbose --directory --owner postgres --group postgres --mode 3777 /run/postgresql; 		mkdir -p /usr/local/lib/tmpfiles.d; 	printf '%s\n' 		'd /var/lib/postgresql 1777 postgres postgres' 		'd /run/postgresql 3777 postgres postgres' 		> /usr/local/lib/tmpfiles.d/postgresql-common.conf # buildkit
# Wed, 18 Nov 2026 21:29:09 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 21:29:15 GMT
ENV GOSU_VERSION=1.20
# Wed, 18 Nov 2026 21:29:15 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 18 Nov 2026 21:29:19 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Wed, 18 Nov 2026 21:29:19 GMT
ENV LANG=en_US.utf8
# Wed, 18 Nov 2026 21:29:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 21:29:22 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 18 Nov 2026 21:29:23 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 18 Nov 2026 21:29:23 GMT
ENV PG_MAJOR=17
# Wed, 18 Nov 2026 21:29:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/17/bin
# Wed, 18 Nov 2026 21:29:23 GMT
ENV PG_VERSION=17.12-1.pgdg12+1
# Wed, 18 Nov 2026 21:29:37 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Wed, 18 Nov 2026 21:29:37 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 18 Nov 2026 21:29:37 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 18 Nov 2026 21:29:38 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Wed, 18 Nov 2026 21:29:38 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 18 Nov 2026 21:29:38 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 18 Nov 2026 21:29:38 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 18 Nov 2026 21:29:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 18 Nov 2026 21:29:38 GMT
STOPSIGNAL SIGINT
# Wed, 18 Nov 2026 21:29:38 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 18 Nov 2026 21:29:38 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:2d66c782e4847b8495b17a4b86be1159aa13d140fe4fd17cb1d536953d5114c6`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 28.1 MB (28144358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63e193399c8fde9c397319f46827be5bf56f4447b861ee8bce8221cc1ead954e`  
		Last Modified: Wed, 18 Nov 2026 21:29:58 GMT  
		Size: 1.3 KB (1327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e71e40f2eba679a441a72b29be0b65949bec87edb91a97ff151b2ed908212b3`  
		Last Modified: Wed, 18 Nov 2026 21:29:58 GMT  
		Size: 4.5 MB (4519483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d9cf91155285dc1cf809ef6e8456c59a32ea0895c3c7283c7c9ffa0ee23ad6f`  
		Last Modified: Wed, 18 Nov 2026 21:29:58 GMT  
		Size: 1.2 MB (1204591 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4403cdd8dfe77dc937ee40a4a39f0181966cd159df015fe718c75c4a0255389`  
		Last Modified: Wed, 18 Nov 2026 21:29:58 GMT  
		Size: 8.1 MB (8066533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0adad234230e5806e6206b51c9632c7c4f2f32a7dce86b4dcbb074c7d4d5e91f`  
		Last Modified: Wed, 18 Nov 2026 21:29:59 GMT  
		Size: 1.1 MB (1108978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f575ac94edb9432513287a3e6a1d9e0c7f7b5eeebdde23a59ab816e16589f7b4`  
		Last Modified: Wed, 18 Nov 2026 21:29:59 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7e54dcdb1b069ce6b1527dc2b54f27f5eb430dd3a97b8939213d4a629d36c33`  
		Last Modified: Wed, 18 Nov 2026 21:29:59 GMT  
		Size: 3.1 KB (3145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a2f6c228f8c3243bea15b52b26b97910719b110b4bf9742c928965a3dedf793`  
		Last Modified: Wed, 18 Nov 2026 21:30:02 GMT  
		Size: 117.4 MB (117355074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c22f2ff631f9d322c0fb1d4ca210d88b52378ab5ff9b187517d615802537a67f`  
		Last Modified: Wed, 18 Nov 2026 21:30:00 GMT  
		Size: 10.4 KB (10358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a107b6c6fb1c343448561808b44fc95c313157331b23c095852c2d44cac56e9`  
		Last Modified: Wed, 18 Nov 2026 21:30:00 GMT  
		Size: 168.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbd43b2c3f0f5063208779f98544c2c6a2d008098ba1a329725fdfa82aa2b147`  
		Last Modified: Wed, 18 Nov 2026 21:30:00 GMT  
		Size: 6.1 KB (6106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:004206f93e1369300ac4cfcee88db6e9c703bce5f88dcfec915bb74409ef9b43`  
		Last Modified: Wed, 18 Nov 2026 21:30:01 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:17-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:7eb1feef2dc33ff0043c518302ff6343342e021e5d7026f48b03a24dc4c55387
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6349520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd8efd0c888bdca00fcd2b79a4456eaa67161f9ffe2e101f4f705bbd5d627f73`

```dockerfile
```

-	Layers:
	-	`sha256:d33c21e631a4d02bc544a7c6fbe06fe3202b9d38a784cd80883e11be9f12a20f`  
		Last Modified: Wed, 18 Nov 2026 21:29:58 GMT  
		Size: 6.3 MB (6297730 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e1b03391ef2541dffe9af5f70ce0251b98b932fbf82f7716f3f33ec5383c72d3`  
		Last Modified: Wed, 18 Nov 2026 21:29:58 GMT  
		Size: 51.8 KB (51790 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:17-bookworm` - linux; 386

```console
$ docker pull postgres@sha256:2f99071a6143002ec1f9b989e2287c610dafe7a23d6a718bccbe112f1cd9d06b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.9 MB (99880686 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfad2bbe43b240010ade99a8dca06928a9051115aa6a37db4426ccf46e87631d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1793827419'
# Wed, 18 Nov 2026 21:28:45 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 		install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql; 		install --verbose --directory --owner postgres --group postgres --mode 3777 /run/postgresql; 		mkdir -p /usr/local/lib/tmpfiles.d; 	printf '%s\n' 		'd /var/lib/postgresql 1777 postgres postgres' 		'd /run/postgresql 3777 postgres postgres' 		> /usr/local/lib/tmpfiles.d/postgresql-common.conf # buildkit
# Wed, 18 Nov 2026 21:28:49 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 21:28:55 GMT
ENV GOSU_VERSION=1.20
# Wed, 18 Nov 2026 21:28:55 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 18 Nov 2026 21:28:59 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Wed, 18 Nov 2026 21:28:59 GMT
ENV LANG=en_US.utf8
# Wed, 18 Nov 2026 21:29:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 21:29:01 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 18 Nov 2026 21:29:02 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 18 Nov 2026 21:29:02 GMT
ENV PG_MAJOR=17
# Wed, 18 Nov 2026 21:29:02 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/17/bin
# Wed, 18 Nov 2026 21:29:02 GMT
ENV PG_VERSION=17.12-1.pgdg12+1
# Wed, 18 Nov 2026 21:37:04 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Wed, 18 Nov 2026 21:37:04 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 18 Nov 2026 21:37:04 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 18 Nov 2026 21:37:04 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Wed, 18 Nov 2026 21:37:04 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 18 Nov 2026 21:37:04 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 18 Nov 2026 21:37:04 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 18 Nov 2026 21:37:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 18 Nov 2026 21:37:04 GMT
STOPSIGNAL SIGINT
# Wed, 18 Nov 2026 21:37:04 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 18 Nov 2026 21:37:04 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:cf916cd28bf8a94b890c149d6b2cdc665c8beb3378aa9c98a18b6ec1bfe54b0c`  
		Last Modified: Thu, 05 Nov 2026 06:15:50 GMT  
		Size: 29.2 MB (29239212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d80efd936ac38be967289e8c986f93673dcb584ce9e214350883d6373d725718`  
		Last Modified: Wed, 18 Nov 2026 21:37:17 GMT  
		Size: 1.3 KB (1327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e54ea14349f0b84138a9168d399f3df206de689a950180cbf1d0726e0be70a20`  
		Last Modified: Wed, 18 Nov 2026 21:37:17 GMT  
		Size: 5.0 MB (4966150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d38e877c14ea150aefa200cede835f878238e8dd1b08ff3506a7aded87da5448`  
		Last Modified: Wed, 18 Nov 2026 21:37:17 GMT  
		Size: 1.2 MB (1219622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a0ac4d6a0db983b24d8b0b23457a23ef221e4a3dd871efa3436ef39b4a67349`  
		Last Modified: Wed, 18 Nov 2026 21:37:17 GMT  
		Size: 8.1 MB (8066538 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:320b9f2b9c118c5b636d5b00027727072503d39f75012cbd7cc8978869f9acfd`  
		Last Modified: Wed, 18 Nov 2026 21:37:18 GMT  
		Size: 1.1 MB (1137511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d20bd759c8df1b95eb5f5e21abd9ec0a1298e7870b5357013295a9475482782`  
		Last Modified: Wed, 18 Nov 2026 21:37:18 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eac7857c0fe0dcc80734709dd0eea31d9ece4fc0c6316ff399ff1bf210976c33`  
		Last Modified: Wed, 18 Nov 2026 21:37:18 GMT  
		Size: 3.1 KB (3146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6834ba6625be20bc547851514b84b77d5f7e555f88b6ff455341d32a76527a4c`  
		Last Modified: Wed, 18 Nov 2026 21:37:20 GMT  
		Size: 55.2 MB (55230248 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4daf111dd443c5cdcabf2b33d4a2017b47e48dc8b25e8ad53dabea255c1ea4ab`  
		Last Modified: Wed, 18 Nov 2026 21:37:19 GMT  
		Size: 10.4 KB (10356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03acd9e642553841bb49ba9fd90b09ee53400c37d50f2669234191ecf22019fa`  
		Last Modified: Wed, 18 Nov 2026 21:37:19 GMT  
		Size: 170.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecf6a892d94be9f70af5c7ee45fb33d3f9e140e32f313b724d0cb9d9632a914f`  
		Last Modified: Wed, 18 Nov 2026 21:37:19 GMT  
		Size: 6.1 KB (6105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed73197291da2a7227dbf8b3a10e9e1848b76536c86933432a0eaff4934dc960`  
		Last Modified: Wed, 18 Nov 2026 21:37:20 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:17-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:1cdc51f5c8e2c6b05d01ba50d4423935ccd097e941a44b3f74ed60086078847a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5700603 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94f77627e55f487c13f1244f79f5e8e316a479bf28696cbac57faf059e42e1c6`

```dockerfile
```

-	Layers:
	-	`sha256:ddb20550367688ab3a83165eed249ac3b520800e97469bf5813e3b4be401359b`  
		Last Modified: Wed, 18 Nov 2026 21:37:17 GMT  
		Size: 5.6 MB (5649090 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:91dc265b718d3d0554f041344dee999af63ad64692c18594c6ef0c3f71083b75`  
		Last Modified: Wed, 18 Nov 2026 21:37:17 GMT  
		Size: 51.5 KB (51513 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:17-bookworm` - linux; ppc64le

```console
$ docker pull postgres@sha256:e11c3d7a279fab4f0d425d8754fcf6030de74a4996736cf7be8de1f1cad48733
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.1 MB (176093278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec4d8fe935c7eddfff038859cd707f263e3e6acd56a439bdc5a5e93237dfff29`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Wed, 18 Nov 2026 21:26:45 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 		install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql; 		install --verbose --directory --owner postgres --group postgres --mode 3777 /run/postgresql; 		mkdir -p /usr/local/lib/tmpfiles.d; 	printf '%s\n' 		'd /var/lib/postgresql 1777 postgres postgres' 		'd /run/postgresql 3777 postgres postgres' 		> /usr/local/lib/tmpfiles.d/postgresql-common.conf # buildkit
# Wed, 18 Nov 2026 21:27:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 21:27:18 GMT
ENV GOSU_VERSION=1.20
# Wed, 18 Nov 2026 21:27:18 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 18 Nov 2026 21:27:28 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Wed, 18 Nov 2026 21:27:28 GMT
ENV LANG=en_US.utf8
# Wed, 18 Nov 2026 21:27:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 21:27:41 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 18 Nov 2026 21:27:42 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 18 Nov 2026 21:27:42 GMT
ENV PG_MAJOR=17
# Wed, 18 Nov 2026 21:27:42 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/17/bin
# Wed, 18 Nov 2026 21:27:42 GMT
ENV PG_VERSION=17.12-1.pgdg12+1
# Wed, 18 Nov 2026 21:47:16 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Wed, 18 Nov 2026 21:47:17 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 18 Nov 2026 21:47:17 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 18 Nov 2026 21:47:18 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Wed, 18 Nov 2026 21:47:18 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 18 Nov 2026 21:47:18 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 18 Nov 2026 21:47:19 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 18 Nov 2026 21:47:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 18 Nov 2026 21:47:19 GMT
STOPSIGNAL SIGINT
# Wed, 18 Nov 2026 21:47:19 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 18 Nov 2026 21:47:19 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:a3dff645b91d02e56b5f761df11ba1d58ba63ceca28ce0fd26bcdff159295e70`  
		Last Modified: Thu, 05 Nov 2026 06:14:37 GMT  
		Size: 32.1 MB (32093560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b7a509ce7fe5f345b05ad5716ad8d7038cace799f206010491a8055ecfa5108`  
		Last Modified: Wed, 18 Nov 2026 21:29:23 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:706c9ea49fbf6033d81937a5223529367583c5e323fb46d7966162f9720c6000`  
		Last Modified: Wed, 18 Nov 2026 21:29:24 GMT  
		Size: 5.4 MB (5368773 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e803f6ac28f68a1d89f558208968be12336419d18f962089b8cd5ed6b3256566`  
		Last Modified: Wed, 18 Nov 2026 21:29:24 GMT  
		Size: 1.2 MB (1209893 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3be5aa084d05392f1859725242b6fa98da0c520d5d3bfc2dfd9bdad30729bfd3`  
		Last Modified: Wed, 18 Nov 2026 21:29:24 GMT  
		Size: 8.1 MB (8066569 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5eb1eab19bd056482d6062abbaa38916082aecdc8038b30cb538c27b1f78c17`  
		Last Modified: Wed, 18 Nov 2026 21:29:25 GMT  
		Size: 1.3 MB (1283725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a94274148847d72258388927118e22141ba579bff3758113e75109c08b98649`  
		Last Modified: Wed, 18 Nov 2026 21:29:25 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a21522452935562e07c397a249bc561dc868c252e8e563c0470e211d019dc3b`  
		Last Modified: Wed, 18 Nov 2026 21:29:25 GMT  
		Size: 3.1 KB (3143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86b057d540a0989948414e1db8007d58f63043fe92dc56ca1dc224d45dc89c32`  
		Last Modified: Wed, 18 Nov 2026 21:48:15 GMT  
		Size: 128.0 MB (128049349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35f206ae0579b80e83e05addef4fcd493e6e4014be4ef7e7e488468580e70a71`  
		Last Modified: Wed, 18 Nov 2026 21:48:12 GMT  
		Size: 10.4 KB (10359 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14e6c35ff62904ebbe2415b37790d5fc96e6d15b2f2a00d18a169d78827f517f`  
		Last Modified: Wed, 18 Nov 2026 21:48:12 GMT  
		Size: 168.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5a357da83c25401ae60479f045b5737007bd0ddee5b1b8d66d1101ec50f04d2`  
		Last Modified: Wed, 18 Nov 2026 21:48:11 GMT  
		Size: 6.1 KB (6107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68fc6e22393f981be94da32a3167d26b66ee9173ac26a9b01992bb50244890b0`  
		Last Modified: Wed, 18 Nov 2026 21:48:12 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:17-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:75ee11a26ea9ae17317e4bfcb93278c90d5decb80436e290a8620c8c86f93b8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6346704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a326d7767b2b761706b65af503aeaedcebc98530f697319e27d2ed21d5ae9b2`

```dockerfile
```

-	Layers:
	-	`sha256:78f69ff631a73e46af6050cb0e9a7872603a2ec621dd523d6e0ae904131468b5`  
		Last Modified: Wed, 18 Nov 2026 21:48:12 GMT  
		Size: 6.3 MB (6295092 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4278d04fc0cb790c2706c762bdd50a5bf9da7a0659387fa0766e43a66a72a890`  
		Last Modified: Wed, 18 Nov 2026 21:48:11 GMT  
		Size: 51.6 KB (51612 bytes)  
		MIME: application/vnd.in-toto+json
