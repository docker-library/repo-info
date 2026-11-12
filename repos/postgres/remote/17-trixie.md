## `postgres:17-trixie`

```console
$ docker pull postgres@sha256:846a7ddaa67a4b354ae1d21087b683901aa6113a4ed626d3787cfbf6c85e3e07
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
$ docker pull postgres@sha256:6f7593c161689b6b02c78668b314af7da8811b592c5519108c57a49d0b6ad788
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.3 MB (167333338 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:140936e8665d5274aa58df31b722693b4b451c541bb0f1a263a345d424bfacb4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 12 Nov 2026 20:55:01 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 12 Nov 2026 20:55:06 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 20:55:12 GMT
ENV GOSU_VERSION=1.19
# Thu, 12 Nov 2026 20:55:12 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 12 Nov 2026 20:55:16 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Thu, 12 Nov 2026 20:55:16 GMT
ENV LANG=en_US.utf8
# Thu, 12 Nov 2026 20:55:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 20:55:19 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 12 Nov 2026 20:55:20 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 12 Nov 2026 20:55:20 GMT
ENV PG_MAJOR=17
# Thu, 12 Nov 2026 20:55:20 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/17/bin
# Thu, 12 Nov 2026 20:55:20 GMT
ENV PG_VERSION=17.12-1.pgdg13+1
# Thu, 12 Nov 2026 20:55:33 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Thu, 12 Nov 2026 20:55:33 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 12 Nov 2026 20:55:33 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 12 Nov 2026 20:55:33 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 12 Nov 2026 20:55:34 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Thu, 12 Nov 2026 20:55:34 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 12 Nov 2026 20:55:34 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 12 Nov 2026 20:55:34 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 12 Nov 2026 20:55:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Nov 2026 20:55:34 GMT
STOPSIGNAL SIGINT
# Thu, 12 Nov 2026 20:55:34 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 12 Nov 2026 20:55:34 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3f1858cb92ed6bc73652ba619a1116092785ff6949a94e650300e21fc561737`  
		Last Modified: Thu, 12 Nov 2026 20:55:54 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fb810914793ab391d50abedaeef9a3f26920b4d3ffb7f61b147b856a3ee6746`  
		Last Modified: Thu, 12 Nov 2026 20:55:54 GMT  
		Size: 6.4 MB (6442986 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0364acb7b7f6739da03578629f810d2ed766fa4ef094149d6545a981397a2fbe`  
		Last Modified: Thu, 12 Nov 2026 20:55:54 GMT  
		Size: 1.3 MB (1256748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa59ca7065863e20b71e90535666a5061735dee230a3692a0e63753b663c83e1`  
		Last Modified: Thu, 12 Nov 2026 20:55:54 GMT  
		Size: 8.2 MB (8203788 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c18f3c4e97d496972bd3ab43c1d589ffbac3301bd6189f8e095214f1de51c0d7`  
		Last Modified: Thu, 12 Nov 2026 20:55:55 GMT  
		Size: 1.3 MB (1311689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27d6f21260a0de58bd69e839288581167af1c9c29cd12024f4fcb9ae0c96f581`  
		Last Modified: Thu, 12 Nov 2026 20:55:55 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4abaab6950ecc31a6c6eeebce25b209a25c4380e386ea7bc6163b95a7db4da0b`  
		Last Modified: Thu, 12 Nov 2026 20:55:56 GMT  
		Size: 3.1 KB (3146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3391d2c467d61fd2dafa943fb83f7c0797584d5a2e464e384ccdf015e580cc97`  
		Last Modified: Thu, 12 Nov 2026 20:55:58 GMT  
		Size: 120.2 MB (120240518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed4bbee64e2700622efd4377e757d1b57ad6bc1d4a570eb8077a06404e2dc5c6`  
		Last Modified: Thu, 12 Nov 2026 20:55:57 GMT  
		Size: 10.5 KB (10458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1f2edaee96e3f10c4b1e54b40aa412adfec72fe25f261912e1cb5e3018ff7c9`  
		Last Modified: Thu, 12 Nov 2026 20:55:57 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdfe3ddb3b6bfc405a4b473c9191e7e768b42fb7c01ec96eca88cac4ad5318ba`  
		Last Modified: Thu, 12 Nov 2026 20:55:57 GMT  
		Size: 171.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09a57405bcb1412b41e586bb368bff88526f9803ad5ae950a17bf739445f446b`  
		Last Modified: Thu, 12 Nov 2026 20:55:58 GMT  
		Size: 6.1 KB (6108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d678e01015450310a5485dd1df612f733334bb408c7d0e7eaf74286c785cae15`  
		Last Modified: Thu, 12 Nov 2026 20:55:58 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:17-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:834d277cf8f99264d89d6ab6aea9b76ba4e297151e136ab37d6771df3b55ff20
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6141523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e638860f3c0a8ee992a265da5550eb8d8212f9184d2e8ec09259f77f99a170cd`

```dockerfile
```

-	Layers:
	-	`sha256:78b0f622cb0cce7f7837609c97e45413b70d658e0c21b4d76f94b763082afd0a`  
		Last Modified: Thu, 12 Nov 2026 20:55:54 GMT  
		Size: 6.1 MB (6087628 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8056e819f8b932376cdaaddf3f93fb42b1988b02817b4b4e7575f29c1fd43666`  
		Last Modified: Thu, 12 Nov 2026 20:55:54 GMT  
		Size: 53.9 KB (53895 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:17-trixie` - linux; arm variant v5

```console
$ docker pull postgres@sha256:f3152d3c428799111da3e3f77ae2655a02d6e5cfb6efeca0ee886df42dba3ece
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.1 MB (97069985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d233905137ee3a1897f53bda8caf5f601b3e3a633da5e4e99c24d34f1f81cc0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1793827419'
# Thu, 12 Nov 2026 20:56:33 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 12 Nov 2026 20:56:42 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 20:56:52 GMT
ENV GOSU_VERSION=1.19
# Thu, 12 Nov 2026 20:56:52 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 12 Nov 2026 20:57:01 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Thu, 12 Nov 2026 20:57:01 GMT
ENV LANG=en_US.utf8
# Thu, 12 Nov 2026 20:57:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 20:57:07 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 12 Nov 2026 20:57:08 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 12 Nov 2026 20:57:08 GMT
ENV PG_MAJOR=17
# Thu, 12 Nov 2026 20:57:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/17/bin
# Thu, 12 Nov 2026 20:57:08 GMT
ENV PG_VERSION=17.12-1.pgdg13+1
# Thu, 12 Nov 2026 21:10:16 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Thu, 12 Nov 2026 21:10:16 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 12 Nov 2026 21:10:16 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 12 Nov 2026 21:10:16 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 12 Nov 2026 21:10:16 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Thu, 12 Nov 2026 21:10:16 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 12 Nov 2026 21:10:16 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 12 Nov 2026 21:10:16 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 12 Nov 2026 21:10:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Nov 2026 21:10:16 GMT
STOPSIGNAL SIGINT
# Thu, 12 Nov 2026 21:10:16 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 12 Nov 2026 21:10:16 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:a2cd843a82972cc66a24a17025d58e4b75019395058fd3a090b196a2b5d8ac77`  
		Last Modified: Thu, 05 Nov 2026 06:16:00 GMT  
		Size: 28.0 MB (28019610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91b5a81af79f4749db061b07eb39277bdc2137bf688b6af71ba81cdbb2922fc7`  
		Last Modified: Thu, 12 Nov 2026 21:10:30 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b28802824e6eda20d5c70d06b0fcfe842534fb72fa433108cad2200d3e9bad10`  
		Last Modified: Thu, 12 Nov 2026 21:10:30 GMT  
		Size: 5.9 MB (5932388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02d0690aaebcb61b6c8a1db1190fc2fba058d4b0850b52c9a583df97903cea61`  
		Last Modified: Thu, 12 Nov 2026 21:10:30 GMT  
		Size: 1.2 MB (1227525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3901d236dc85ea3ab320d4d3feb04a64ddedc670327fe1e025e587e9013f1e9`  
		Last Modified: Thu, 12 Nov 2026 21:10:30 GMT  
		Size: 8.2 MB (8204254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72e34b09828a0fd7e57a841532ff7a8e9d90ac62ee9a1916771b11a03fabc83d`  
		Last Modified: Thu, 12 Nov 2026 21:10:31 GMT  
		Size: 1.3 MB (1317369 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ad4f5695ec482f1a312524e50ab3153c194adeb7a2c58ded8a7349221ea039e`  
		Last Modified: Thu, 12 Nov 2026 21:10:31 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:affec60852bf30430dd4085358e4ef50d7983324ef9dad20fe49842f7f43252e`  
		Last Modified: Thu, 12 Nov 2026 21:10:31 GMT  
		Size: 3.1 KB (3145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d62fd3d7e4b9fb2c1f0ecd977767aa6bae41ab44434675c66f63eb95c7e143d`  
		Last Modified: Thu, 12 Nov 2026 21:10:33 GMT  
		Size: 52.3 MB (52347367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acc9eecd5ed08723bf7c94967fb2221c47a105853976752d0ccb63b3117c8f26`  
		Last Modified: Thu, 12 Nov 2026 21:10:32 GMT  
		Size: 10.5 KB (10454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e14539bfd18ca06f6dfadd33b0be32a80c5a84756a1dd332c88410d2f5360ced`  
		Last Modified: Thu, 12 Nov 2026 21:10:32 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2afd7f8781fb065541793a62b370adaedd9649374fa2f90183e3e6a21fb77ed7`  
		Last Modified: Thu, 12 Nov 2026 21:10:32 GMT  
		Size: 170.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12606e01341189100db78211a7fa49d6c8d9fd3ae2a40b96405e9bdd5692e312`  
		Last Modified: Thu, 12 Nov 2026 21:10:33 GMT  
		Size: 6.1 KB (6109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd601c72f7b2cda0d2dae82657a5095a74ab9b92e227abe3ea50e5b69ee2bbca`  
		Last Modified: Thu, 12 Nov 2026 21:10:33 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:17-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:d03c10a2261e678fc52c937d8ceafe0a6d9c381e65400879f3408033dfb306d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5494143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24ae9c57a6e8f771e655c77049972a26e9390fb4cfe7896742909ed6d4fd4c20`

```dockerfile
```

-	Layers:
	-	`sha256:0a85d5f1534f6a6f4c33103341d6cebeef53ebbbfbbd2b56bb9e3cf8c425de9f`  
		Last Modified: Thu, 12 Nov 2026 21:10:30 GMT  
		Size: 5.4 MB (5440031 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:357a798c250312f8a8d1a8999d3660bb2c98357458735393a6c7ca2b84284c97`  
		Last Modified: Thu, 12 Nov 2026 21:10:30 GMT  
		Size: 54.1 KB (54112 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:17-trixie` - linux; arm variant v7

```console
$ docker pull postgres@sha256:2d183b18fdb5f81d906b1a5432268e13c0a927f9a88d83470d75b20b1a665e9b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.0 MB (93012725 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca8917e9d24e7df1f4c7642113e8ce267f724732c3ad2c68175ec7dcb7475533`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793827419'
# Thu, 12 Nov 2026 21:07:52 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 12 Nov 2026 21:07:59 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 21:08:07 GMT
ENV GOSU_VERSION=1.19
# Thu, 12 Nov 2026 21:08:07 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 12 Nov 2026 21:08:14 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Thu, 12 Nov 2026 21:08:14 GMT
ENV LANG=en_US.utf8
# Thu, 12 Nov 2026 21:08:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 21:08:18 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 12 Nov 2026 21:08:19 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 12 Nov 2026 21:08:19 GMT
ENV PG_MAJOR=17
# Thu, 12 Nov 2026 21:08:19 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/17/bin
# Thu, 12 Nov 2026 21:08:19 GMT
ENV PG_VERSION=17.12-1.pgdg13+1
# Thu, 12 Nov 2026 21:20:05 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Thu, 12 Nov 2026 21:20:05 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 12 Nov 2026 21:20:05 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 12 Nov 2026 21:20:05 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 12 Nov 2026 21:20:05 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Thu, 12 Nov 2026 21:20:05 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 12 Nov 2026 21:20:05 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 12 Nov 2026 21:20:05 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 12 Nov 2026 21:20:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Nov 2026 21:20:05 GMT
STOPSIGNAL SIGINT
# Thu, 12 Nov 2026 21:20:05 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 12 Nov 2026 21:20:05 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:0b78a5fe7810b9342d6d9e33a1bae5b9a7b92e5a742e413e190b32a7b0b3cfb5`  
		Last Modified: Thu, 05 Nov 2026 06:16:16 GMT  
		Size: 26.3 MB (26272915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b412e7aa87b74c9234d32b5c0220619d11c8de54a939a902fbe022c7a55ae280`  
		Last Modified: Thu, 12 Nov 2026 21:20:19 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c0fc26203c68b25b86cddd49e3411205e37911c4d514b5728eeccbd8509872f`  
		Last Modified: Thu, 12 Nov 2026 21:20:19 GMT  
		Size: 5.5 MB (5497302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:552cf62ee88f2cfc1daefcc1c7746d0c2918e2bca23f38042555a856fef3cba2`  
		Last Modified: Thu, 12 Nov 2026 21:20:19 GMT  
		Size: 1.2 MB (1222436 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cec9c9cdf5a12e9e9d619d11d6c41812c6cafa6aeae818fd5a3805765ab3cb6`  
		Last Modified: Thu, 12 Nov 2026 21:20:19 GMT  
		Size: 8.2 MB (8204067 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb758112cbe89d2aa8840a4772d1529d83d1ef6e3d10b4b672f2c53b94825dba`  
		Last Modified: Thu, 12 Nov 2026 21:20:20 GMT  
		Size: 1.2 MB (1172685 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20867022d652ea02baa91cd729d34e8e86043c13f124eaec5d8a2b3712d06521`  
		Last Modified: Thu, 12 Nov 2026 21:20:20 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9ebd9669b0302e55a5b113cde51e02bb1fd5e8f20c8794b8455def4f3350501`  
		Last Modified: Thu, 12 Nov 2026 21:20:20 GMT  
		Size: 3.1 KB (3141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8090499a2fd8f3df7f36fd9ce44b2908209d93b16758cdedcc75fea9dd5ba1d`  
		Last Modified: Thu, 12 Nov 2026 21:20:21 GMT  
		Size: 50.6 MB (50621837 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:160492deea442aac7cc1a68f62cdb0eee6055b74db90cc0fcca975063c56bb46`  
		Last Modified: Thu, 12 Nov 2026 21:20:21 GMT  
		Size: 10.5 KB (10467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95276e0decba6729afd29a2386a8a719fc053b64f3978ae63927fd1a2718d8d4`  
		Last Modified: Thu, 12 Nov 2026 21:20:21 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2600860f626ca08b10719eca4cbed8485b32250ff352ac77422ca42e47adc46a`  
		Last Modified: Thu, 12 Nov 2026 21:20:21 GMT  
		Size: 169.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6285e9011c4fa5517a9fc9c8f8ce9ef16fb3c80379e6b83714eb4bd91d44ad5`  
		Last Modified: Thu, 12 Nov 2026 21:20:22 GMT  
		Size: 6.1 KB (6109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ab4b2c2a40bb6595f91b434509d27ecd49c25d676017d3f178ba82bd9365095`  
		Last Modified: Thu, 12 Nov 2026 21:20:22 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:17-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:545fd9dd654a23c72031d3c3fb0ae68c3d8d23012f7d2f5742f5f6a8fb40391d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5506838 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e96d9c38b445113a645f89db644427340d805d3282d6251951cecaeb90d3e235`

```dockerfile
```

-	Layers:
	-	`sha256:1111a06730fd211f212b68f858778b669cfa5ae615006b7b6ea20981b831e1d6`  
		Last Modified: Thu, 12 Nov 2026 21:20:19 GMT  
		Size: 5.5 MB (5452726 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bfc73907f30ca0f2bd785ebfa35ce6708489f7bfe0330e2fa07fd1cb7e966633`  
		Last Modified: Thu, 12 Nov 2026 21:20:19 GMT  
		Size: 54.1 KB (54112 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:17-trixie` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:73cd1868ae15ef8c7f95d81219b47c92c884a8341bc05f41656f7b8a89e3efc1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.9 MB (165869675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6865912920d21689de1485f9965b718ef0d5cac229ba7be3042d7251738bd9de`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 12 Nov 2026 20:53:32 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 12 Nov 2026 20:53:38 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 20:53:45 GMT
ENV GOSU_VERSION=1.19
# Thu, 12 Nov 2026 20:53:45 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 12 Nov 2026 20:53:50 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Thu, 12 Nov 2026 20:53:50 GMT
ENV LANG=en_US.utf8
# Thu, 12 Nov 2026 20:53:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 20:53:54 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 12 Nov 2026 21:10:10 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 12 Nov 2026 21:10:10 GMT
ENV PG_MAJOR=17
# Thu, 12 Nov 2026 21:10:10 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/17/bin
# Thu, 12 Nov 2026 21:10:10 GMT
ENV PG_VERSION=17.12-1.pgdg13+1
# Thu, 12 Nov 2026 21:10:26 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Thu, 12 Nov 2026 21:10:26 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 12 Nov 2026 21:10:26 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 12 Nov 2026 21:10:26 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 12 Nov 2026 21:10:26 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Thu, 12 Nov 2026 21:10:26 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 12 Nov 2026 21:10:26 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 12 Nov 2026 21:10:27 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 12 Nov 2026 21:10:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Nov 2026 21:10:27 GMT
STOPSIGNAL SIGINT
# Thu, 12 Nov 2026 21:10:27 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 12 Nov 2026 21:10:27 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00bb77f358e85e9646cd74215dad9d31d2441b609fcd864249b60c91818418f9`  
		Last Modified: Thu, 12 Nov 2026 21:10:47 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3bc1a027dcf61b0fa249a1ef5b7bbd16215ebd5dad75a4936a8863d5f50bb83`  
		Last Modified: Thu, 12 Nov 2026 21:10:47 GMT  
		Size: 6.2 MB (6235041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ce7df00a012e0577910883305cba00b589d7c5e4b5ed4c83c07631f8333b18c`  
		Last Modified: Thu, 12 Nov 2026 21:10:47 GMT  
		Size: 1.2 MB (1209620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5562868080d04b223241020f2f30f9bbe9eed3117cac42f9181b451cf2fa54d`  
		Last Modified: Thu, 12 Nov 2026 21:10:48 GMT  
		Size: 8.2 MB (8204042 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:248ea5e73d9c85b2c652495c27f8db25f2ce220543a24e85b632ecc0a5a82d9c`  
		Last Modified: Thu, 12 Nov 2026 21:10:48 GMT  
		Size: 1.2 MB (1220675 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d3d509c877d087bcb0f4ccb801bf07991b38a67a049c4997f232a20be3c8b91`  
		Last Modified: Thu, 12 Nov 2026 21:10:48 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d87aa76f256bd6ebff8e47ba6462ef924f1e309481cf80e283c53ca0589721cf`  
		Last Modified: Thu, 12 Nov 2026 21:10:49 GMT  
		Size: 3.1 KB (3145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4278c2b2d0d5e34d417c9c83e1d9f6d0d9f129b6ee041a6046f399cd2b96c1e9`  
		Last Modified: Thu, 12 Nov 2026 21:10:51 GMT  
		Size: 118.8 MB (118764786 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76182fde016716925bc0894f9cee5c88a0149206ad64c44caf494ad1ae22c16a`  
		Last Modified: Thu, 12 Nov 2026 21:10:50 GMT  
		Size: 10.5 KB (10454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18bfe721dfa8ef7dd91f58ea198dc94dbb9cdc5c4e6d13a3d75dca53e8102cc7`  
		Last Modified: Thu, 12 Nov 2026 21:10:50 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28685a9ce95a92904bb14448d336dc0bc7da955dc2536d6b5b0310b574bcea4d`  
		Last Modified: Thu, 12 Nov 2026 21:10:50 GMT  
		Size: 171.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:107417ba71ff01f18b88c296ee7adb1a98432295336ee5a2717f6182b15afe6b`  
		Last Modified: Thu, 12 Nov 2026 21:10:51 GMT  
		Size: 6.1 KB (6109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3589750d3da38579a1a9804402e8519ade12de65da71b2da1a4f45cbc87990f`  
		Last Modified: Thu, 12 Nov 2026 21:10:51 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:17-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:d2edf24e79aff75e5f2a02977b6caabc91a5a0d7e319029862ec3d1ff36bc376
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6148133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:954cf4b346e69be423f79e0d7b80c48eb881b42ef7124283a0cbe029451b8618`

```dockerfile
```

-	Layers:
	-	`sha256:d3004ddf13cedc15fb13c431c4fa3eef3c8154a914b0536c0b122b36a392e850`  
		Last Modified: Thu, 12 Nov 2026 21:10:47 GMT  
		Size: 6.1 MB (6093969 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2a0b4382f3fc53d383540fb9be19e9ffc1bc97b3d89dc642e2b1209efe5204a8`  
		Last Modified: Thu, 12 Nov 2026 21:10:47 GMT  
		Size: 54.2 KB (54164 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:17-trixie` - linux; 386

```console
$ docker pull postgres@sha256:16e0f9672223d9396abd9be7c73102fc085af266fb5fc7f920d96c904c4862e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.1 MB (103056609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:657abf69bc0d1eefe597c72447910f3e12463a60c514b9ba2e460f625102f20a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1793827419'
# Thu, 12 Nov 2026 20:53:57 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 12 Nov 2026 20:54:03 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 20:54:11 GMT
ENV GOSU_VERSION=1.19
# Thu, 12 Nov 2026 20:54:11 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 12 Nov 2026 20:54:17 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Thu, 12 Nov 2026 20:54:17 GMT
ENV LANG=en_US.utf8
# Thu, 12 Nov 2026 20:54:21 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 20:54:21 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 12 Nov 2026 20:54:21 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 12 Nov 2026 20:54:21 GMT
ENV PG_MAJOR=17
# Thu, 12 Nov 2026 20:54:21 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/17/bin
# Thu, 12 Nov 2026 20:54:21 GMT
ENV PG_VERSION=17.12-1.pgdg13+1
# Thu, 12 Nov 2026 21:04:03 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Thu, 12 Nov 2026 21:04:03 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 12 Nov 2026 21:04:04 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 12 Nov 2026 21:04:04 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 12 Nov 2026 21:04:04 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Thu, 12 Nov 2026 21:04:04 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 12 Nov 2026 21:04:04 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 12 Nov 2026 21:04:04 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 12 Nov 2026 21:04:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Nov 2026 21:04:04 GMT
STOPSIGNAL SIGINT
# Thu, 12 Nov 2026 21:04:04 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 12 Nov 2026 21:04:04 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:06ca6191a71938862bdb85445ef63acf48ced1a427e65f85a654472d74e9ce64`  
		Last Modified: Thu, 05 Nov 2026 06:16:19 GMT  
		Size: 31.4 MB (31370759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45c87490d4239143adaa0a015009da75988627869167ba8852dbd7754868da47`  
		Last Modified: Thu, 12 Nov 2026 21:04:18 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bb1f46bd0a55858ce76e6d5f1756c2886c74dd86b425f1e6c16e6ee4eaf3961`  
		Last Modified: Thu, 12 Nov 2026 21:04:18 GMT  
		Size: 6.6 MB (6631393 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d497ae81086eda5659894b55c5c8575844ee8f25edd7f5acd34ca7c78f36982`  
		Last Modified: Thu, 12 Nov 2026 21:04:18 GMT  
		Size: 1.2 MB (1225868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4366dff949f49d896e0d3d4551a796c731cdd08ca3f410608e6249002bddf30e`  
		Last Modified: Thu, 12 Nov 2026 21:04:18 GMT  
		Size: 8.2 MB (8204036 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26b61b4c0ba02622e2fcaef92f82a2e892ee982c4fd829be8bf720f94a95df94`  
		Last Modified: Thu, 12 Nov 2026 21:04:19 GMT  
		Size: 1.3 MB (1308312 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61666e90d896d89621eb2e9214f1523feed222bff335273183ac933003e1c33d`  
		Last Modified: Thu, 12 Nov 2026 21:04:19 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:935ada444516f156851bf5c5d4dfa62cb8d3b4a14d6d7ada30dbfdcb928926e3`  
		Last Modified: Thu, 12 Nov 2026 21:04:19 GMT  
		Size: 3.1 KB (3142 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51cf0cc636afdaffc6248938b52a9c5c559a53354d9a645bcc01c635d588fd8a`  
		Last Modified: Thu, 12 Nov 2026 21:04:21 GMT  
		Size: 54.3 MB (54294775 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:606163f264b73a55523e979d7b435581a2a17288e210b66e8d2a4f5c962118c4`  
		Last Modified: Thu, 12 Nov 2026 21:04:20 GMT  
		Size: 10.4 KB (10447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e25200c67bf6370a6b561086f71dbc779c005e7dacd46eecf643a026b3628990`  
		Last Modified: Thu, 12 Nov 2026 21:04:20 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5216ae675aaac684db4516c1ccc26a87a81bb4d5fab9ed356e66045cef9cb6de`  
		Last Modified: Thu, 12 Nov 2026 21:04:21 GMT  
		Size: 169.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1fa2fcfb0711bb1228efb58d9f8f431bb69736d9ec446eb54b9fa150ad630d3`  
		Last Modified: Thu, 12 Nov 2026 21:04:21 GMT  
		Size: 6.1 KB (6111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb7cd63239c62da786d04dfc589168395060329564eeb6e28e9140d6e6b8ac94`  
		Last Modified: Thu, 12 Nov 2026 21:04:21 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:17-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:8c79d7cba741b808a3cbb74cbe5beac55d3bdb188d3f2abe80a0f0cbb25562c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5502615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bea401e29db427c53411e6c6e5294743aeea5a77cd03487447a9cdf97e927b01`

```dockerfile
```

-	Layers:
	-	`sha256:e2390734097a913676b46bad61a5e04ad18e853939e28de4358742299880b09a`  
		Last Modified: Thu, 12 Nov 2026 21:04:18 GMT  
		Size: 5.4 MB (5448780 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:949e8846118cf8572cdf0f0f30bd4956c7f5741280ff60cc7dfed5f7de1b3ed3`  
		Last Modified: Thu, 12 Nov 2026 21:04:18 GMT  
		Size: 53.8 KB (53835 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:17-trixie` - linux; ppc64le

```console
$ docker pull postgres@sha256:651106d233351034e2521cf75d47453b94685fd01e39bff0bee3f09dd59719cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.3 MB (180281130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83e0b215d43482c8a574ee292d36e9cf116339f10183928ab739343952c96c48`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 09:41:12 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 05 Nov 2026 09:41:26 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 09:41:52 GMT
ENV GOSU_VERSION=1.19
# Thu, 05 Nov 2026 09:41:52 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 05 Nov 2026 09:42:05 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Thu, 05 Nov 2026 09:42:05 GMT
ENV LANG=en_US.utf8
# Thu, 05 Nov 2026 09:42:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 09:42:13 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 05 Nov 2026 09:42:14 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 05 Nov 2026 09:42:14 GMT
ENV PG_MAJOR=17
# Thu, 05 Nov 2026 09:42:14 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/17/bin
# Thu, 05 Nov 2026 09:42:14 GMT
ENV PG_VERSION=17.12-1.pgdg13+1
# Thu, 12 Nov 2026 21:18:14 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Thu, 12 Nov 2026 21:18:22 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 12 Nov 2026 21:18:23 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 12 Nov 2026 21:18:23 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 12 Nov 2026 21:18:23 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Thu, 12 Nov 2026 21:18:23 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 12 Nov 2026 21:18:24 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 12 Nov 2026 21:18:24 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 12 Nov 2026 21:18:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Nov 2026 21:18:24 GMT
STOPSIGNAL SIGINT
# Thu, 12 Nov 2026 21:18:24 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 12 Nov 2026 21:18:24 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:33d716a337c18262f51540d4a07992d0eb31456a1d5386930bec26ee2244fa66`  
		Last Modified: Thu, 05 Nov 2026 06:17:58 GMT  
		Size: 33.7 MB (33667648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8465523f12c53ab94bdddc10400c59ace336e7f2afdf0417e55a6c1096837677`  
		Last Modified: Thu, 05 Nov 2026 09:43:47 GMT  
		Size: 1.2 KB (1170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d91827453eec38051d137b8957c5078423e48f71feac0fc4c0b442fe74025905`  
		Last Modified: Thu, 05 Nov 2026 09:43:48 GMT  
		Size: 7.1 MB (7076835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d2b978277772d3fa224a9a19a4896178cb74e694bbfec856d05da391028eb92`  
		Last Modified: Thu, 05 Nov 2026 09:43:48 GMT  
		Size: 1.2 MB (1214802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f5624cb2204c0214308bb30bdbd99fc8a607d9745a698532209c5252d5a317d`  
		Last Modified: Thu, 05 Nov 2026 09:43:48 GMT  
		Size: 8.2 MB (8204109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f902e4e24bb3b0117b3419e484c5c7a9e738e78d1b14f588778271e602246f32`  
		Last Modified: Thu, 05 Nov 2026 09:43:48 GMT  
		Size: 1.4 MB (1394957 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e9b686f1c048f695d171b645322c02405bc5e26a0fdd14de01392b9aedbe3b5`  
		Last Modified: Thu, 05 Nov 2026 09:43:49 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aca214b8fb8498e93dca3621313dd489227b6b8779502424cdac19444fe4e92f`  
		Last Modified: Thu, 05 Nov 2026 09:43:49 GMT  
		Size: 3.1 KB (3142 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef59fdb61fe292775378b6ccd5b4a584af9ee43fb6096ce493615115b70cf02c`  
		Last Modified: Thu, 12 Nov 2026 21:19:54 GMT  
		Size: 128.7 MB (128701300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae6234f1002fbd9d96294eb640ca84660494e91e969f2af6d3d6f8de62de2637`  
		Last Modified: Thu, 12 Nov 2026 21:19:51 GMT  
		Size: 10.5 KB (10458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e5463119e6dcfd4aa6618828c0f1c07bc13d6b95f1cb6efefb5e88dbccea2b3`  
		Last Modified: Thu, 12 Nov 2026 21:19:50 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:330d02ef055e947034b6e75ce5d53398e19e19e3f7a9ee31943420ad249295b2`  
		Last Modified: Thu, 12 Nov 2026 21:19:50 GMT  
		Size: 170.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:433eba109044139badf2e5a634fd86073fb4739bbb6e5c0abc501abe31e90426`  
		Last Modified: Thu, 12 Nov 2026 21:19:52 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ecda5e097c2bd79a237b4bd974c27e8bef54a239ce9aaeb04d924719b093f28`  
		Last Modified: Thu, 12 Nov 2026 21:19:52 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:17-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:ec37f6c36d9b42f2733fe0e8423aa96695a76b310dd34691cf7e61b506f81cad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6134835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0193633671781f0b69d7cc51e6d31b63edecbb3c5caee05b9c5a97084907d5a8`

```dockerfile
```

-	Layers:
	-	`sha256:30360e6f9ccfc017781cddbc37ee918b3e57d25a5290db7ab8453f8d32352eea`  
		Last Modified: Thu, 12 Nov 2026 21:19:51 GMT  
		Size: 6.1 MB (6080874 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ba814bd98d13ba4a720eff8c469bcbb9d46a19cc2fa3af5cd4d87ef759c3ae8e`  
		Last Modified: Thu, 12 Nov 2026 21:19:50 GMT  
		Size: 54.0 KB (53961 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:17-trixie` - linux; riscv64

```console
$ docker pull postgres@sha256:7bff085d21cc40a04703bc77c3fba87eaeff782990ed9ca1d0c6bd4f78ad0e46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.4 MB (92360893 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64dd58810752e86a54c3211544c174371ee8f825d63a547f344e8c7d215d2bf9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1793827419'
# Fri, 06 Nov 2026 13:09:44 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Fri, 06 Nov 2026 13:10:42 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 06 Nov 2026 13:11:43 GMT
ENV GOSU_VERSION=1.19
# Fri, 06 Nov 2026 13:11:43 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Fri, 06 Nov 2026 13:12:48 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Fri, 06 Nov 2026 13:12:48 GMT
ENV LANG=en_US.utf8
# Fri, 06 Nov 2026 13:13:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 06 Nov 2026 13:13:32 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 06 Nov 2026 13:13:33 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Fri, 06 Nov 2026 13:13:33 GMT
ENV PG_MAJOR=17
# Fri, 06 Nov 2026 13:13:33 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/17/bin
# Fri, 06 Nov 2026 13:13:33 GMT
ENV PG_VERSION=17.11-1.pgdg13+2
# Fri, 06 Nov 2026 19:55:19 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Fri, 06 Nov 2026 19:55:20 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Fri, 06 Nov 2026 19:55:21 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Fri, 06 Nov 2026 19:55:21 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 06 Nov 2026 19:55:21 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Fri, 06 Nov 2026 19:55:21 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 06 Nov 2026 19:55:21 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Fri, 06 Nov 2026 19:55:22 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Fri, 06 Nov 2026 19:55:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 06 Nov 2026 19:55:22 GMT
STOPSIGNAL SIGINT
# Fri, 06 Nov 2026 19:55:22 GMT
EXPOSE map[5432/tcp:{}]
# Fri, 06 Nov 2026 19:55:22 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:4b8428ae1a4b0dfd18fb4aa2bf9a6a71d7217123155666c4225a7e1b9aa074af`  
		Last Modified: Thu, 05 Nov 2026 07:38:54 GMT  
		Size: 28.3 MB (28346184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87bdf486313f4fab4134d55e8bc180145d8cdcba9b939bda2bfcb8dbe0c94db1`  
		Last Modified: Fri, 06 Nov 2026 15:28:18 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86a0b4573c7b8a214f84d60cda732378ca569ee43d2c764d55d6d85956126688`  
		Last Modified: Fri, 06 Nov 2026 15:28:21 GMT  
		Size: 6.3 MB (6293046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a315df71a26c22b72f1f246cd9adc5dd90fec5135f51fad173250fc2c781673`  
		Last Modified: Fri, 06 Nov 2026 15:28:19 GMT  
		Size: 1.2 MB (1202081 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1d8877267ad22a64ac4264de125ac21dd260fcb4a7c19fa1e0765661063e1c2`  
		Last Modified: Fri, 06 Nov 2026 15:28:21 GMT  
		Size: 8.2 MB (8203747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83570607eed8cee879f5b6de54268c68bd13c52e23f9c7d0e9a6183927b980e7`  
		Last Modified: Fri, 06 Nov 2026 15:28:21 GMT  
		Size: 1.4 MB (1402461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe4a001991cd17d93226b4ef6067bb1fe5358ee92c5728d01d141329ffedb7da`  
		Last Modified: Fri, 06 Nov 2026 15:28:21 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21e22d45c17a29cfbff0e0dff55bb2e94aaae980b0b984d6809d618ea1bc10a8`  
		Last Modified: Fri, 06 Nov 2026 15:28:22 GMT  
		Size: 3.1 KB (3146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b22fa20dd1b8332a2d63bc39f93a87b66828c731a2218af4ce8b36a9689afccc`  
		Last Modified: Fri, 06 Nov 2026 19:58:09 GMT  
		Size: 46.9 MB (46891888 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49173d291e2889a66411d47e468cded6216c3f190c9250291745ce56cf31a394`  
		Last Modified: Fri, 06 Nov 2026 19:58:01 GMT  
		Size: 10.5 KB (10465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8a56c71884f7697e5f1c0550d8e78431e046cf235a3094fc7a8ddf30bbfe1b1`  
		Last Modified: Fri, 06 Nov 2026 19:58:02 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5448672851f3932fba0f1aa94c2fab115e9b0366c276062072494a03d747f5c3`  
		Last Modified: Fri, 06 Nov 2026 19:58:01 GMT  
		Size: 167.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51d85181a9d5104a98025d669083b339b575c6d3a62901c6d44de890ddd2202f`  
		Last Modified: Fri, 06 Nov 2026 19:58:03 GMT  
		Size: 6.1 KB (6112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e95ca3e27c94bfe4a2968d88fc84261bc6263918f3c33acc77645fd26f420a0`  
		Last Modified: Fri, 06 Nov 2026 19:58:03 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:17-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:c3f8a950a983d23c50476d4be07d44d106bda1f6fdb9a63bae5fab68fd343b46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5144081 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9db124ec2b01553d87a79d641fe2eb50ee15ec8810780e0448c4cafa17bf0195`

```dockerfile
```

-	Layers:
	-	`sha256:74c97d8b50b0a7cbe385212ef1b08590cca1680657fa077ad1671b7ceed09855`  
		Last Modified: Fri, 06 Nov 2026 19:58:03 GMT  
		Size: 5.1 MB (5090126 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fad80be3c8d0d49ab348ba912844fd15d33a6e3b738e6a2658b8c0fdd941d604`  
		Last Modified: Fri, 06 Nov 2026 19:58:01 GMT  
		Size: 54.0 KB (53955 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:17-trixie` - linux; s390x

```console
$ docker pull postgres@sha256:5651fedbe416d066907b6b55bd56ae8faf2c256221f11a071e0e898f03d391ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.9 MB (181926085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b72698dd3e886b4702e9251d15cfd97d615794f26cba8665e829175f9f9c43a3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:34:36 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 05 Nov 2026 07:34:41 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:34:48 GMT
ENV GOSU_VERSION=1.19
# Thu, 05 Nov 2026 07:34:48 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 05 Nov 2026 07:34:54 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Thu, 05 Nov 2026 07:34:54 GMT
ENV LANG=en_US.utf8
# Thu, 05 Nov 2026 07:34:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:34:57 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 05 Nov 2026 07:34:58 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 05 Nov 2026 07:34:58 GMT
ENV PG_MAJOR=17
# Thu, 05 Nov 2026 07:34:58 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/17/bin
# Thu, 05 Nov 2026 07:34:58 GMT
ENV PG_VERSION=17.12-1.pgdg13+1
# Thu, 12 Nov 2026 21:17:56 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Thu, 12 Nov 2026 21:17:56 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 12 Nov 2026 21:17:57 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 12 Nov 2026 21:17:57 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 12 Nov 2026 21:17:57 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Thu, 12 Nov 2026 21:17:57 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 12 Nov 2026 21:17:57 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 12 Nov 2026 21:17:57 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 12 Nov 2026 21:17:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Nov 2026 21:17:57 GMT
STOPSIGNAL SIGINT
# Thu, 12 Nov 2026 21:17:57 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 12 Nov 2026 21:17:57 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:68fa0367de27b0e6a2c3df0454287606106fa6c116da44e6260ef14d71fbf0e4`  
		Last Modified: Thu, 05 Nov 2026 06:15:44 GMT  
		Size: 29.9 MB (29924117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0e0c134fafa8c6edbf741e0d3a089eee19831651d9a0cb1e86001d83f6c2934`  
		Last Modified: Thu, 05 Nov 2026 07:49:30 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74a07cb8e4f8f07f38f8ed3f27f60733c3838f255224bc922919f7a41ed505c5`  
		Last Modified: Thu, 05 Nov 2026 07:49:31 GMT  
		Size: 6.4 MB (6408418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be50aed1483b2b705c2f925f20ec94e3d71715994353554693864ec12c1e2f95`  
		Last Modified: Thu, 05 Nov 2026 07:49:30 GMT  
		Size: 1.2 MB (1230205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98b53140c2bf7d7325e3576c6e1b920257d6c7600cd510cf4ec625c9cbf4cd22`  
		Last Modified: Thu, 05 Nov 2026 07:49:31 GMT  
		Size: 8.3 MB (8258986 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3109748ad958b5b1bb40468b429cfdb847861a4a0ab95e924324d01906090a4`  
		Last Modified: Thu, 05 Nov 2026 07:49:31 GMT  
		Size: 1.4 MB (1398252 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e8e639a2a496a1fb9391a03f03cb99de4a72b92f36fb772c04b5f7123c09714`  
		Last Modified: Thu, 05 Nov 2026 07:49:31 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0724ac160a79b6233c5bc11032b73b316b04cc403124f3309506395a1974a6f`  
		Last Modified: Thu, 05 Nov 2026 07:49:32 GMT  
		Size: 3.1 KB (3144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b70508bdec532d5fde855a0746fc7f9c5a3ab5febca78a7cfc9d3fdc02010699`  
		Last Modified: Thu, 12 Nov 2026 21:18:38 GMT  
		Size: 134.7 MB (134684630 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84462bea2ae857f4d97ea859825bb1ab7302806fec1709469f41b5dc1aa592e9`  
		Last Modified: Thu, 12 Nov 2026 21:18:35 GMT  
		Size: 10.5 KB (10459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:263de606197bc1de4c42db925b238207ab787bf5a6f943747664688f8c81060d`  
		Last Modified: Thu, 12 Nov 2026 21:18:34 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e034d5d27668690eaadb7faf6ef7ba1d5ab4c96458162d28c4f1f1bc4edb9f98`  
		Last Modified: Thu, 12 Nov 2026 21:18:34 GMT  
		Size: 169.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:114b2dffc3a31547058349e1f0978b715024098f2ad36fe34ae4d5a3af64a7c5`  
		Last Modified: Thu, 12 Nov 2026 21:18:36 GMT  
		Size: 6.1 KB (6111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a0f07d6f1caf34857da98d34075c799cfe3bc028fdd9ee40ab6346cbbfc513c`  
		Last Modified: Thu, 12 Nov 2026 21:18:36 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:17-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:7e79e3483291c7bffcc95b4b25bc8d16aac8b6cc3b5d3de23f5ff2ef2fea1ca4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6143131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d813168c81fe2e733d22389ef2755a0be215c006829f6c9922ecbe839ec0de05`

```dockerfile
```

-	Layers:
	-	`sha256:d54fd9af3edac13f315bc082e786d8f4449b4e843ea0ef0bc0fa1f0c90119cc4`  
		Last Modified: Thu, 12 Nov 2026 21:18:34 GMT  
		Size: 6.1 MB (6089236 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b93b00305a474709fabda26afbf3f39c89e717fcd8056509832f3372afa89dcd`  
		Last Modified: Thu, 12 Nov 2026 21:18:34 GMT  
		Size: 53.9 KB (53895 bytes)  
		MIME: application/vnd.in-toto+json
