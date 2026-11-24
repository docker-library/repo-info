## `postgres:15-bookworm`

```console
$ docker pull postgres@sha256:0cb925629e7eb35c77276f3165440d1670c35c2ddbe92b346c579299b75a520f
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

### `postgres:15-bookworm` - linux; amd64

```console
$ docker pull postgres@sha256:8e642934a85abe991d1eef9f59d80e98be2813de1f5ff5749255534dadca5e7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.4 MB (159399055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52038f9623b193c40244a62b097ce6e229719fcbfa575fe930e358eecac7f1ff`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:30:50 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 		install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql; 		install --verbose --directory --owner postgres --group postgres --mode 3777 /run/postgresql; 		mkdir -p /usr/local/lib/tmpfiles.d; 	printf '%s\n' 		'd /var/lib/postgresql 1777 postgres postgres' 		'd /run/postgresql 3777 postgres postgres' 		> /usr/local/lib/tmpfiles.d/postgresql-common.conf # buildkit
# Tue, 24 Nov 2026 04:30:54 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:31:00 GMT
ENV GOSU_VERSION=1.20
# Tue, 24 Nov 2026 04:31:00 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 24 Nov 2026 04:31:03 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 24 Nov 2026 04:31:03 GMT
ENV LANG=en_US.utf8
# Tue, 24 Nov 2026 04:31:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:31:06 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 24 Nov 2026 04:31:06 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 24 Nov 2026 04:31:06 GMT
ENV PG_MAJOR=15
# Tue, 24 Nov 2026 04:31:06 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/15/bin
# Tue, 24 Nov 2026 04:31:06 GMT
ENV PG_VERSION=15.20-1.pgdg12+1
# Tue, 24 Nov 2026 04:31:19 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 24 Nov 2026 04:31:19 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 24 Nov 2026 04:31:19 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 24 Nov 2026 04:31:19 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Tue, 24 Nov 2026 04:31:19 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 24 Nov 2026 04:31:19 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:31:19 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 24 Nov 2026 04:31:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:31:19 GMT
STOPSIGNAL SIGINT
# Tue, 24 Nov 2026 04:31:19 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 24 Nov 2026 04:31:19 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:b1dd3d113aab1041fd80cc61d9db7ffbc058f756bf46fc149a0d9aa8b85935f4`  
		Last Modified: Tue, 24 Nov 2026 03:39:57 GMT  
		Size: 28.2 MB (28247960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:837799532988c3257aab4096120f3761ee63a99f867f34d92a90635089f96c93`  
		Last Modified: Tue, 24 Nov 2026 04:31:37 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:867eca85b11103174cca5087128b7f55469d6e7168779bb8ff5a4a14786435b4`  
		Last Modified: Tue, 24 Nov 2026 04:31:38 GMT  
		Size: 4.5 MB (4534241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b00c1710447be9c2dc1e71c038f3f6a7bebac7b38ead5a011bf0998927328289`  
		Last Modified: Tue, 24 Nov 2026 04:31:38 GMT  
		Size: 1.3 MB (1251415 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34110159055fb9dc16aa9a65f8fcda9207d4559ae263272b096ccf0d49fd5e81`  
		Last Modified: Tue, 24 Nov 2026 04:31:38 GMT  
		Size: 8.1 MB (8066439 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bc1ddb73d655144689592c3fc1dff8799a1e8d92e40e116c0eefb2294f5be09`  
		Last Modified: Tue, 24 Nov 2026 04:31:39 GMT  
		Size: 1.2 MB (1196476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:411d0d9226bb384c9b3f3dc0ef4a3e27b15eff9910dcfe825082f60e9a156901`  
		Last Modified: Tue, 24 Nov 2026 04:31:39 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06b7d1faa91eedf26de36473fe6148027bb82bd0c550571a8a1a81cf63501bc7`  
		Last Modified: Tue, 24 Nov 2026 04:31:39 GMT  
		Size: 3.1 KB (3139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a28d3c892820c11a9daaa2e2381c7195025a288e1125c2aeb511bc3e9aa6ab4`  
		Last Modified: Tue, 24 Nov 2026 04:31:42 GMT  
		Size: 116.1 MB (116081658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e4f87692314b634b7c26090113b28cae2d02c6360770bfc06a0f5c3a144f806`  
		Last Modified: Tue, 24 Nov 2026 04:31:40 GMT  
		Size: 9.8 KB (9833 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d96a46db927dbe5bec14aafbdb90c6f4dc5d0ed216b29aae3a1c27a5f8c09893`  
		Last Modified: Tue, 24 Nov 2026 04:31:40 GMT  
		Size: 166.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db0fe2764f5f8e2da8216506d7f1d6af3626e5dc68d4146e82f0c983e3f665a8`  
		Last Modified: Tue, 24 Nov 2026 04:31:40 GMT  
		Size: 6.1 KB (6103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de74d0208e4ea9edc57bb2b5f799e33a1b98bd29a27cee7eefabe7bb4c78376e`  
		Last Modified: Tue, 24 Nov 2026 04:31:41 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:15-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:7de4263730bcbf05f2a3531eef79e7af03250f6968c8cb37504b188ba109e52d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6268464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c118fe3950057e67a6b9178f4a488027afa2820b34f46d759f8e23fc8bee5b67`

```dockerfile
```

-	Layers:
	-	`sha256:7ddbec32826b74ccdd1f5eaf024106a8cc9e42f0f2cdd9ea073dd3ee428f6800`  
		Last Modified: Tue, 24 Nov 2026 04:31:38 GMT  
		Size: 6.2 MB (6216908 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5f1637c05a8effe999cbf9bb81696c68dca61f9f82094820a2f5d9c124209811`  
		Last Modified: Tue, 24 Nov 2026 04:31:37 GMT  
		Size: 51.6 KB (51556 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:15-bookworm` - linux; arm variant v7

```console
$ docker pull postgres@sha256:05ec4caa6e4aac0a6fe0f5a7561503c63eb3251a5fb321925138d5d116f5eed5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.5 MB (86489275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1226464ffdfc2a552a6d113d881f38aaff2545c3807613b9c6276c7dc4234df1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 05:12:21 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 		install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql; 		install --verbose --directory --owner postgres --group postgres --mode 3777 /run/postgresql; 		mkdir -p /usr/local/lib/tmpfiles.d; 	printf '%s\n' 		'd /var/lib/postgresql 1777 postgres postgres' 		'd /run/postgresql 3777 postgres postgres' 		> /usr/local/lib/tmpfiles.d/postgresql-common.conf # buildkit
# Tue, 24 Nov 2026 05:12:27 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:12:34 GMT
ENV GOSU_VERSION=1.20
# Tue, 24 Nov 2026 05:12:34 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 24 Nov 2026 05:12:40 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 24 Nov 2026 05:12:40 GMT
ENV LANG=en_US.utf8
# Tue, 24 Nov 2026 05:12:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:12:43 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 24 Nov 2026 05:12:44 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 24 Nov 2026 05:12:44 GMT
ENV PG_MAJOR=15
# Tue, 24 Nov 2026 05:12:44 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/15/bin
# Tue, 24 Nov 2026 05:12:44 GMT
ENV PG_VERSION=15.20-1.pgdg12+1
# Tue, 24 Nov 2026 05:23:09 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 24 Nov 2026 05:23:09 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 24 Nov 2026 05:23:09 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 24 Nov 2026 05:23:09 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Tue, 24 Nov 2026 05:23:09 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 24 Nov 2026 05:23:09 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 05:23:09 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 24 Nov 2026 05:23:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 05:23:09 GMT
STOPSIGNAL SIGINT
# Tue, 24 Nov 2026 05:23:09 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 24 Nov 2026 05:23:09 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:dbe4636f037e07987ed4c9269c75a4aa8678e0b031a1905bc2239bdd57cdf136`  
		Last Modified: Tue, 24 Nov 2026 03:39:57 GMT  
		Size: 24.0 MB (23961330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91ce9b113073dd4d231227d3b9090f023760f55d6b2e7184b49bc685eedcae57`  
		Last Modified: Tue, 24 Nov 2026 05:23:22 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:140097d7e45a0b59062564239366f9e47d72e03395ad14e6208e2a1c22c7f14f`  
		Last Modified: Tue, 24 Nov 2026 05:23:22 GMT  
		Size: 3.7 MB (3742520 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2c542e7804b14b80d66a660088e2b3644115886c61710d960d4776e77cc553f`  
		Last Modified: Tue, 24 Nov 2026 05:23:22 GMT  
		Size: 1.2 MB (1217426 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1136ce332a56a04589db48f69fc50eed4e68e511812eca2cc250f11674522edd`  
		Last Modified: Tue, 24 Nov 2026 05:23:22 GMT  
		Size: 8.1 MB (8066423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e104e63739c8009e2a2924a75a2ba0fc04f2c9c47623ef736ae5e1716d9df61`  
		Last Modified: Tue, 24 Nov 2026 05:23:23 GMT  
		Size: 1.1 MB (1067332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14055be0ca0fb7d870f6c2c90037a6cfe3ccfe812337483e7294602d0ad55e5a`  
		Last Modified: Tue, 24 Nov 2026 05:23:23 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64914c7286e2a689be946daf829aec25c7a2ef8cfc7b93419cca48ca7efea6a4`  
		Last Modified: Tue, 24 Nov 2026 05:23:23 GMT  
		Size: 3.1 KB (3144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6c4bdc89e8461aa78dacbcfb460ba40cb8f394413d852adeb501f86415c9795`  
		Last Modified: Tue, 24 Nov 2026 05:23:25 GMT  
		Size: 48.4 MB (48413373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4980c7527acdc55ea07abcc30ff1f9ed495aba9d30c3eb56b220eeee19b74c9`  
		Last Modified: Tue, 24 Nov 2026 05:23:24 GMT  
		Size: 9.8 KB (9833 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:834871ad198bc95f6125bd0930e4f13ee172080ede5432183cc3054c72bb6c9b`  
		Last Modified: Tue, 24 Nov 2026 05:23:24 GMT  
		Size: 167.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64bbf554426ffc630d89aced95e76476d35a31990338b2c604dff66e361d8668`  
		Last Modified: Tue, 24 Nov 2026 05:23:25 GMT  
		Size: 6.1 KB (6105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfc8e8b634e840e9cb924f8f05fbecc4d36748a8a968a7ade504c3cfd5cfee19`  
		Last Modified: Tue, 24 Nov 2026 05:23:25 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:15-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:7c59810528e60df6d1fbefb9192c163a08f9522652576fb8eba5d11c0330bdf6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5646649 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4b0a35fca8218765956fc84827ef0cb0a510eaa4ae8bef773fcc390a2e0b465`

```dockerfile
```

-	Layers:
	-	`sha256:8aafab82d446c943c3697df28567833be0f63706bffa86aa390922f3e02ef882`  
		Last Modified: Tue, 24 Nov 2026 05:23:22 GMT  
		Size: 5.6 MB (5594904 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d1c84ae9c18922247f27d5d9a3f498d143ae69b70500c7622b6405e00066db83`  
		Last Modified: Tue, 24 Nov 2026 05:23:22 GMT  
		Size: 51.7 KB (51745 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:15-bookworm` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:410c23c743e18342ef6a7927a98bbb8cbfa260fb487830c3aeb3f28f9afd4fcf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.3 MB (157315315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bc5854941e4bbf0676474a21d8f0df7c8607a3eaae034a44e5adcce576bdb16`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:34:43 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 		install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql; 		install --verbose --directory --owner postgres --group postgres --mode 3777 /run/postgresql; 		mkdir -p /usr/local/lib/tmpfiles.d; 	printf '%s\n' 		'd /var/lib/postgresql 1777 postgres postgres' 		'd /run/postgresql 3777 postgres postgres' 		> /usr/local/lib/tmpfiles.d/postgresql-common.conf # buildkit
# Tue, 24 Nov 2026 04:34:48 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:34:55 GMT
ENV GOSU_VERSION=1.20
# Tue, 24 Nov 2026 04:34:55 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 24 Nov 2026 04:35:00 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 24 Nov 2026 04:35:00 GMT
ENV LANG=en_US.utf8
# Tue, 24 Nov 2026 04:35:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:35:03 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 24 Nov 2026 04:35:04 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 24 Nov 2026 04:35:04 GMT
ENV PG_MAJOR=15
# Tue, 24 Nov 2026 04:35:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/15/bin
# Tue, 24 Nov 2026 04:35:04 GMT
ENV PG_VERSION=15.20-1.pgdg12+1
# Tue, 24 Nov 2026 04:35:19 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 24 Nov 2026 04:35:19 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 24 Nov 2026 04:35:19 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 24 Nov 2026 04:35:19 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Tue, 24 Nov 2026 04:35:19 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 24 Nov 2026 04:35:19 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:35:20 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 24 Nov 2026 04:35:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:35:20 GMT
STOPSIGNAL SIGINT
# Tue, 24 Nov 2026 04:35:20 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 24 Nov 2026 04:35:20 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:7f1aa0b5c351d0542b2066749ed47608e5873bcdd1fd14f4df6f0a05cac02f8e`  
		Last Modified: Tue, 24 Nov 2026 03:40:09 GMT  
		Size: 28.1 MB (28144305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5448b4b5f5483cf51a0d8e97079e7ae6f72426723e113eb0e7e5ba6c023d3d71`  
		Last Modified: Tue, 24 Nov 2026 04:35:39 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb870f5bc4d802ef1cbb191c2acb77a378b42fa45aa8d0b2a747755163967eef`  
		Last Modified: Tue, 24 Nov 2026 04:35:39 GMT  
		Size: 4.5 MB (4519514 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:237a611979ba01e70c5c175d91c02536b8997cda6111ed831d85445d5bd2daa9`  
		Last Modified: Tue, 24 Nov 2026 04:35:39 GMT  
		Size: 1.2 MB (1204626 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:869d5067ad98573c666c9d84cf9fe3852f4c0aee22d7e66cfc26999a0a17ab89`  
		Last Modified: Tue, 24 Nov 2026 04:35:39 GMT  
		Size: 8.1 MB (8066499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:987faba7a2974095017ced991d8a5cd8e2c649a8f4ed9862b0fa89ed008a226d`  
		Last Modified: Tue, 24 Nov 2026 04:35:40 GMT  
		Size: 1.1 MB (1109017 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69e6fbf69cde248c5b32e80e76c89bc2d2345057b221197a54d6c426100afab8`  
		Last Modified: Tue, 24 Nov 2026 04:35:40 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02dd9e44f9935ca23ff81163ce0563360bc2a02f07a7f7b5e65d3a5dabef5d23`  
		Last Modified: Tue, 24 Nov 2026 04:35:40 GMT  
		Size: 3.1 KB (3140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ce34802339d899b38e3ef1eea1d39eb80ba14ae8307b7ef470ba98cb349db0a`  
		Last Modified: Tue, 24 Nov 2026 04:35:43 GMT  
		Size: 114.3 MB (114250485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18254c245ab2c95ba3529937df7f284f7a5327b109e9a4b7bafac233e4e2a182`  
		Last Modified: Tue, 24 Nov 2026 04:35:41 GMT  
		Size: 9.8 KB (9836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db7668071b5db6733226d6c66a6df442b110edb884da3785e80f6c8797991972`  
		Last Modified: Tue, 24 Nov 2026 04:35:42 GMT  
		Size: 168.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86cc55bd2c510377ca04740516a4d7f2da4aebd71c8800d62eefc3534c1f1721`  
		Last Modified: Tue, 24 Nov 2026 04:35:42 GMT  
		Size: 6.1 KB (6104 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1972f5a0e0031b7434dceb30839c81af168bae5960d92787372b8b08accdc48`  
		Last Modified: Tue, 24 Nov 2026 04:35:42 GMT  
		Size: 182.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:15-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:1a3e1bc22a45e10c8301bbc364b34997409e90b22a37542b816fc0b75ad64168
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6275018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e20d942483d579bafb8224f1ef23d4c852ae9a232f603556a2be5e10a0e56a17`

```dockerfile
```

-	Layers:
	-	`sha256:cb1718fcaf69cfbf837ad1e543712216262991a004e63299f3f702a1cc9bcc77`  
		Last Modified: Tue, 24 Nov 2026 04:35:39 GMT  
		Size: 6.2 MB (6223232 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f68d16543191dc91cd7d325e030a876dccecb97ee139ea0c393f33df60af8950`  
		Last Modified: Tue, 24 Nov 2026 04:35:39 GMT  
		Size: 51.8 KB (51786 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:15-bookworm` - linux; 386

```console
$ docker pull postgres@sha256:d11b9104f63f661e2d4bb452929c5b35df50b9aecda3417e2f019a08b7d164da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.5 MB (97541393 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4462dcbfeb57af7d32730b43ad69454db694cd6a8e4b09684e5deaddd9c427cc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:32:37 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 		install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql; 		install --verbose --directory --owner postgres --group postgres --mode 3777 /run/postgresql; 		mkdir -p /usr/local/lib/tmpfiles.d; 	printf '%s\n' 		'd /var/lib/postgresql 1777 postgres postgres' 		'd /run/postgresql 3777 postgres postgres' 		> /usr/local/lib/tmpfiles.d/postgresql-common.conf # buildkit
# Tue, 24 Nov 2026 04:32:43 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:32:51 GMT
ENV GOSU_VERSION=1.20
# Tue, 24 Nov 2026 04:32:51 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 24 Nov 2026 04:32:56 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 24 Nov 2026 04:32:56 GMT
ENV LANG=en_US.utf8
# Tue, 24 Nov 2026 04:33:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:33:00 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 24 Nov 2026 04:33:01 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 24 Nov 2026 04:33:01 GMT
ENV PG_MAJOR=15
# Tue, 24 Nov 2026 04:33:01 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/15/bin
# Tue, 24 Nov 2026 04:33:01 GMT
ENV PG_VERSION=15.20-1.pgdg12+1
# Tue, 24 Nov 2026 04:42:01 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 24 Nov 2026 04:42:01 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 24 Nov 2026 04:42:01 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 24 Nov 2026 04:42:01 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Tue, 24 Nov 2026 04:42:01 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 24 Nov 2026 04:42:01 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:42:01 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 24 Nov 2026 04:42:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 04:42:01 GMT
STOPSIGNAL SIGINT
# Tue, 24 Nov 2026 04:42:01 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 24 Nov 2026 04:42:01 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:1cde02d171534450b668912ef8ef66ab259bfca33204cf933a2860bfd06fe63b`  
		Last Modified: Tue, 24 Nov 2026 03:40:03 GMT  
		Size: 29.2 MB (29239212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:631e9b07696ce859e64069e46cfcdac3b3906728287804e43e4132699da138c1`  
		Last Modified: Tue, 24 Nov 2026 04:42:15 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dd4cba3e730bc519e01813d47189a4f59cc1bf88d8751457a9f86d31d6476a5`  
		Last Modified: Tue, 24 Nov 2026 04:42:15 GMT  
		Size: 5.0 MB (4966131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f604d37585faa4409b4ba9c90066499f08f5e41b1c9cd8a0f52573d255a4d2c6`  
		Last Modified: Tue, 24 Nov 2026 04:42:15 GMT  
		Size: 1.2 MB (1219576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09ae0334e5db3832d8741acd0afa39f81d562139a829aeeba52dcf2a2cf74fda`  
		Last Modified: Tue, 24 Nov 2026 04:42:15 GMT  
		Size: 8.1 MB (8066485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75d36162de0b95f4a23826c206350ae1fd17f5ea6ddae89de04495ed4e885d41`  
		Last Modified: Tue, 24 Nov 2026 04:42:16 GMT  
		Size: 1.1 MB (1137521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c739a74e3de42c0689bbb14c45d7a4df0653f964be322498e5c38ea9f01e8d96`  
		Last Modified: Tue, 24 Nov 2026 04:33:45 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecf9738fe469b5b087c873b028125fb4e01fed0b4be4f0a920c98c76b7c58102`  
		Last Modified: Tue, 24 Nov 2026 04:42:17 GMT  
		Size: 3.1 KB (3144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8547e1cdded14d28a9f089b748ef129f980cc202ef7ee31d5d18ffe9c87451bb`  
		Last Modified: Tue, 24 Nov 2026 04:42:18 GMT  
		Size: 52.9 MB (52891595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34d16b0b4ed7b18470fa6540fd19c09ecade8fb78373d012ce387a3efe755eb7`  
		Last Modified: Tue, 24 Nov 2026 04:42:17 GMT  
		Size: 9.8 KB (9837 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67bdff2733e9cb78cb23329cd7199206ce7306d57c039bde0ff343c133b23a70`  
		Last Modified: Tue, 24 Nov 2026 04:42:17 GMT  
		Size: 167.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7074b313d5b49b20d8c2c29bb852055109e0c8639a6f6b7f5171244864a2bc9b`  
		Last Modified: Tue, 24 Nov 2026 04:42:18 GMT  
		Size: 6.1 KB (6103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52d5aa7a88637e0339cd077a0a035206d30c2b629e04e0bee3c28770f089e283`  
		Last Modified: Tue, 24 Nov 2026 04:42:18 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:15-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:79b68c448f445bc156bae54502faaf08c3555ccb046ddc01f7200d21e97387c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5641685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38f6f40c26b6903d67a0ed7b1ea5bb423b943e32b8b6f63a0dba243d32e936a9`

```dockerfile
```

-	Layers:
	-	`sha256:7fc84f62ff689390ec946e506fa3476e408d6e54a8bc3f27ff1e4e43e28e447a`  
		Last Modified: Tue, 24 Nov 2026 04:42:15 GMT  
		Size: 5.6 MB (5590177 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0c16752da9efe2d79d5cb97462d170ea0eea1ea73eedd497d905c1ba3245bc5b`  
		Last Modified: Tue, 24 Nov 2026 04:42:15 GMT  
		Size: 51.5 KB (51508 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:15-bookworm` - linux; ppc64le

```console
$ docker pull postgres@sha256:6195894be8c10fb98eef8319d4a05126a7a2fba98dae8150cc1dd0e5050a428e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.9 MB (172910053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d92da2d3423a800318c12056607bd8bcd281fa5703a42c1af0651905acaa86a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 06:27:29 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 		install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql; 		install --verbose --directory --owner postgres --group postgres --mode 3777 /run/postgresql; 		mkdir -p /usr/local/lib/tmpfiles.d; 	printf '%s\n' 		'd /var/lib/postgresql 1777 postgres postgres' 		'd /run/postgresql 3777 postgres postgres' 		> /usr/local/lib/tmpfiles.d/postgresql-common.conf # buildkit
# Tue, 24 Nov 2026 06:27:39 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 06:27:54 GMT
ENV GOSU_VERSION=1.20
# Tue, 24 Nov 2026 06:27:54 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 24 Nov 2026 06:28:04 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 24 Nov 2026 06:28:04 GMT
ENV LANG=en_US.utf8
# Tue, 24 Nov 2026 06:28:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 06:28:10 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 24 Nov 2026 06:28:11 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 24 Nov 2026 06:28:11 GMT
ENV PG_MAJOR=15
# Tue, 24 Nov 2026 06:28:11 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/15/bin
# Tue, 24 Nov 2026 06:28:11 GMT
ENV PG_VERSION=15.20-1.pgdg12+1
# Tue, 24 Nov 2026 06:35:12 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 24 Nov 2026 06:35:13 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 24 Nov 2026 06:35:13 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 24 Nov 2026 06:35:13 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Tue, 24 Nov 2026 06:35:13 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 24 Nov 2026 06:35:13 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 06:35:14 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 24 Nov 2026 06:35:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 06:35:14 GMT
STOPSIGNAL SIGINT
# Tue, 24 Nov 2026 06:35:14 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 24 Nov 2026 06:35:14 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:a6a60ee161e1a240cbcc7442cf284ad6d493b1dd2b14668095ddc44fbce029cc`  
		Last Modified: Tue, 24 Nov 2026 03:39:18 GMT  
		Size: 32.1 MB (32093504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef7e0abbf89c8ffe00087c69000cda6b6e02a47c70dbbf0828bfd03babb70f76`  
		Last Modified: Tue, 24 Nov 2026 06:29:33 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2c7009fa37485ef47219d05a088097ac052a66ccd0170581cf8d8767b722df0`  
		Last Modified: Tue, 24 Nov 2026 06:29:33 GMT  
		Size: 5.4 MB (5368644 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98d3bef47505448f3f82e91fe5b2397d2f7b05e0915bdd68282c5d44d3139011`  
		Last Modified: Tue, 24 Nov 2026 06:29:33 GMT  
		Size: 1.2 MB (1209852 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c380772f1a173da04fcc70a5fcbfb82c4985f7a9d4e543a207f33bf7671dfdc`  
		Last Modified: Tue, 24 Nov 2026 06:29:33 GMT  
		Size: 8.1 MB (8066525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0d5333653cd8200f57a9fdd5882e4dc6c247a2514fa8ed6395e8bc084d706ba`  
		Last Modified: Tue, 24 Nov 2026 06:29:34 GMT  
		Size: 1.3 MB (1283645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa8c604c9393a4c26cc8851e3603b1c80939149c35b0545611272c3e1c48427d`  
		Last Modified: Tue, 24 Nov 2026 06:29:34 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6cf1165811525c24b34c6af03da31b710b8578589485f9dd96598ed2be96c3f`  
		Last Modified: Tue, 24 Nov 2026 06:29:34 GMT  
		Size: 3.1 KB (3140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78697d61edfc0afb31a44a8b36f6767844077fc71c56fe6ba13c74367f607f05`  
		Last Modified: Tue, 24 Nov 2026 06:36:10 GMT  
		Size: 124.9 MB (124867016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b75690596417f5de51d4315e058fe4982471ffe450afd35e9fa22ed387dd2b06`  
		Last Modified: Tue, 24 Nov 2026 06:36:07 GMT  
		Size: 9.8 KB (9832 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa3b76a40244ae041ec042a6473fd5144b6f71bc53e39ee214bfd2edfca9cfda`  
		Last Modified: Tue, 24 Nov 2026 06:36:07 GMT  
		Size: 168.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ec3472448126d2ce9d9c4d6353e58a0023eeed56dfbe782a4ac3180abb3d7f4`  
		Last Modified: Tue, 24 Nov 2026 06:36:07 GMT  
		Size: 6.1 KB (6106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4969a83e705605b13e3b9b57e077282b1f520795d645210334f90252364d7402`  
		Last Modified: Tue, 24 Nov 2026 06:36:08 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:15-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:dd38aec4ba7a98a27e59e6acf4af78391f91aea382e0b0396ba9884fc6c69ff2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6272202 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:317e5a948d71525be56900614d3bc085347b4f0f29befaf3a32b0f5dad7a59bf`

```dockerfile
```

-	Layers:
	-	`sha256:0c0683653fc65f2348c31037da4bceff38b2ffea0eefe1ec4d63f85faccd2abb`  
		Last Modified: Tue, 24 Nov 2026 06:36:07 GMT  
		Size: 6.2 MB (6220594 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d0d54cb21df30d044ab44e4c780aa020c3467304ec5713de07cd64ffb33f6d51`  
		Last Modified: Tue, 24 Nov 2026 06:36:07 GMT  
		Size: 51.6 KB (51608 bytes)  
		MIME: application/vnd.in-toto+json
