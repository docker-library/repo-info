## `postgres:18-trixie`

```console
$ docker pull postgres@sha256:4ef4dbc939d61acea57712655ddb4b4ab27419c913f94cca0cd57cb3ea3c2280
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

### `postgres:18-trixie` - linux; amd64

```console
$ docker pull postgres@sha256:7341002d2b8c7c5bdd7542a671a95b36196c0b5b888daf454ae4fc33ba5346d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.4 MB (162433831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6638641707cdf047e5d5c2781f437e2e809323cab22c70b280be8389fbb7878`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:40:36 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 25 Aug 2026 00:40:42 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:40:49 GMT
ENV GOSU_VERSION=1.19
# Tue, 25 Aug 2026 00:40:49 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 25 Aug 2026 00:40:54 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 25 Aug 2026 00:40:54 GMT
ENV LANG=en_US.utf8
# Tue, 25 Aug 2026 00:40:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:40:58 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 25 Aug 2026 00:40:59 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:40:59 GMT
ENV PG_MAJOR=18
# Tue, 25 Aug 2026 00:40:59 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/18/bin
# Tue, 25 Aug 2026 00:40:59 GMT
ENV PG_VERSION=18.6-1.pgdg13+2
# Tue, 25 Aug 2026 00:41:15 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 25 Aug 2026 00:41:15 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 25 Aug 2026 00:41:15 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 25 Aug 2026 00:41:15 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Tue, 25 Aug 2026 00:41:15 GMT
VOLUME [/var/lib/postgresql]
# Tue, 25 Aug 2026 00:41:15 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:41:16 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 25 Aug 2026 00:41:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:41:16 GMT
STOPSIGNAL SIGINT
# Tue, 25 Aug 2026 00:41:16 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 25 Aug 2026 00:41:16 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6463c6b5c70320dc516e6ddd2381861493bc90ed29e1654a204f6df10575d055`  
		Last Modified: Tue, 25 Aug 2026 00:41:36 GMT  
		Size: 1.2 KB (1170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d6422da287d3f004bab103e0204f8c55d5cddd98dac7f21899aefe2e6db3c87`  
		Last Modified: Tue, 25 Aug 2026 00:41:36 GMT  
		Size: 6.4 MB (6443010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fc0e69f8d7d3027b0921714635ca43e715347c0521a568b359fb2cb70c9f09c`  
		Last Modified: Tue, 25 Aug 2026 00:41:36 GMT  
		Size: 1.3 MB (1256759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fa29c524b4efe024dba1cdc0c1a0a57a24d0e7965c5f832c7836c98b0fda0ad`  
		Last Modified: Tue, 25 Aug 2026 00:41:36 GMT  
		Size: 8.2 MB (8203894 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ace4b5b96a9138c160b00a5acad3900eac771a13fad27e8948a66a7ed0270627`  
		Last Modified: Tue, 25 Aug 2026 00:41:37 GMT  
		Size: 1.3 MB (1311680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af2a6480a0588ba2d48e077961144ed182076ebac70c8c26e6ce1986c8c3ff22`  
		Last Modified: Tue, 25 Aug 2026 00:41:37 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ee6c6ca7fd9b2a38ea430f570030b2eb87e9975e565897b3cce2f62e05411ba`  
		Last Modified: Tue, 25 Aug 2026 00:41:38 GMT  
		Size: 3.1 KB (3141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5694bff1357bc2fd0c382590ab729b949e8c4494a509cd55d9e3c90b453dc13`  
		Last Modified: Tue, 25 Aug 2026 00:41:40 GMT  
		Size: 115.4 MB (115395563 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aedab71775047c7e8101a9fcdd8be088a9575b6b0cdad7650d6f67a4e076d73b`  
		Last Modified: Tue, 25 Aug 2026 00:41:38 GMT  
		Size: 19.4 KB (19420 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4635eaec9b86bda9e3f2634e14915b9dbbc964755f336572e8ba56d6d7e6c0f`  
		Last Modified: Tue, 25 Aug 2026 00:41:39 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46e663abc8f5ed994cede123e749e21c7b0675bfc5cd0905d87d8cef3c7b74dd`  
		Last Modified: Tue, 25 Aug 2026 00:41:39 GMT  
		Size: 6.1 KB (6107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bb54e8f77276172953d507b21a7ad3af088aab59ce62a36c834348649641857`  
		Last Modified: Tue, 25 Aug 2026 00:41:40 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:18-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:877c25a32ef132c94b678ef219e8146f0f8d6068f43d05e3ce5a583054e035f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6009670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c3b5cb1c3b390c8e5d6c1514da939fbb18cba8f72cd99bd1ad5c9d332f6aaac`

```dockerfile
```

-	Layers:
	-	`sha256:6ff88415323fb15f66bfb644eeac94a38e9e5aebb0a0a3b0371c4370424337bf`  
		Last Modified: Tue, 25 Aug 2026 00:41:36 GMT  
		Size: 6.0 MB (5957191 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:041cb76c0e1d3bcb8eb812a384c357ad5d511b4014ea6e962bf917eaf385d6b0`  
		Last Modified: Tue, 25 Aug 2026 00:41:36 GMT  
		Size: 52.5 KB (52479 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:18-trixie` - linux; arm variant v5

```console
$ docker pull postgres@sha256:e72a7bf80fa1d63037cb53db389492ad764eaa64e20650e24cf6f16935dbf6a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.5 MB (91541064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57f49123b0bc417fe00a8c1cc492eeb9014d3b5396c3e49b95020604c5a8d492`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:36:19 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 25 Aug 2026 00:36:29 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:36:39 GMT
ENV GOSU_VERSION=1.19
# Tue, 25 Aug 2026 00:36:39 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 25 Aug 2026 00:36:48 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 25 Aug 2026 00:36:48 GMT
ENV LANG=en_US.utf8
# Tue, 25 Aug 2026 00:36:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:36:54 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 25 Aug 2026 00:36:55 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:36:55 GMT
ENV PG_MAJOR=18
# Tue, 25 Aug 2026 00:36:55 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/18/bin
# Tue, 25 Aug 2026 00:36:55 GMT
ENV PG_VERSION=18.6-1.pgdg13+2
# Tue, 25 Aug 2026 00:49:47 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 25 Aug 2026 00:49:47 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 25 Aug 2026 00:49:48 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 25 Aug 2026 00:49:48 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Tue, 25 Aug 2026 00:49:48 GMT
VOLUME [/var/lib/postgresql]
# Tue, 25 Aug 2026 00:49:48 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:49:48 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 25 Aug 2026 00:49:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:49:48 GMT
STOPSIGNAL SIGINT
# Tue, 25 Aug 2026 00:49:48 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 25 Aug 2026 00:49:48 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:b66794b20e8e770c1e565d310eba254c92677ca1aa2b4db6a81ff11f1d21e516`  
		Last Modified: Mon, 24 Aug 2026 23:20:06 GMT  
		Size: 28.0 MB (27968942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08288917296e34c92e35896cdee88ff08652fb46b5d33cf8b34177e23e5b568e`  
		Last Modified: Tue, 25 Aug 2026 00:50:00 GMT  
		Size: 1.2 KB (1170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f88a65de8ad6caf5d4f811851c55b14dcd1d420e56d97aea3f8dc19e2fca030d`  
		Last Modified: Tue, 25 Aug 2026 00:50:01 GMT  
		Size: 5.9 MB (5932392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b72bdf054ffc7ddafc15eebf992301fcbc45c6453bde15e0c63dd28890c58c5`  
		Last Modified: Tue, 25 Aug 2026 00:50:00 GMT  
		Size: 1.2 MB (1227437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:213dbf7dc5e3e216b83ac799304ca13f27a4b28390a498836766318f024f399d`  
		Last Modified: Tue, 25 Aug 2026 00:50:01 GMT  
		Size: 8.2 MB (8204330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aea6adca26614d51dae5d9d151ed091def70fb789029b275b021fb1e2cb79bb6`  
		Last Modified: Tue, 25 Aug 2026 00:50:01 GMT  
		Size: 1.3 MB (1317352 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b38ac446231af0694e37894ab8f505137229a6288a085c6cb3e2df35f6c922f8`  
		Last Modified: Tue, 25 Aug 2026 00:50:02 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ae50cd474864a2447b51fe1f8ea0c19210e9a7e93b7ee4c4165a62140361ecd`  
		Last Modified: Tue, 25 Aug 2026 00:50:02 GMT  
		Size: 3.1 KB (3145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0f1c42fac6d1640cb0942158377d685ccded592cd9c737b51b7db06a37699bb`  
		Last Modified: Tue, 25 Aug 2026 00:50:03 GMT  
		Size: 46.9 MB (46860346 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:755c85060d8a3e1bc75895ecb43453ef625ebdd3ace0a90274b7f5aa90097c93`  
		Last Modified: Tue, 25 Aug 2026 00:50:03 GMT  
		Size: 19.4 KB (19411 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2933c38c0eb6562c0609f495d9cb5022cd97c6be8acf4ae59e9fd0dead4766f3`  
		Last Modified: Tue, 25 Aug 2026 00:50:03 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7214a090dbe6aa57648716cfd79124817cdb60705c9e8044ddef67a4323766ec`  
		Last Modified: Tue, 25 Aug 2026 00:50:03 GMT  
		Size: 6.1 KB (6111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc6afccba47cbd0fed47b61347e8af624e002c4acdd94a7ca3468988864de396`  
		Last Modified: Tue, 25 Aug 2026 00:50:04 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:18-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:ff44c57ccedd9cb31f5f0180b22603ccd8d3ba53301f5dff152d352632dfc50f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5173057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:383c98e78b1e839fbb9fdf54cdc039e9113bda68784afb6296146e504090dfab`

```dockerfile
```

-	Layers:
	-	`sha256:b7f715d76333e2765e88a3e8c451b3cc41cd3d7923ca0254f317c368fe01c0f9`  
		Last Modified: Tue, 25 Aug 2026 00:50:01 GMT  
		Size: 5.1 MB (5120356 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:07f43132a5ced74b5576b16b7f9e629128cbd104df3e8688a953483308dea12b`  
		Last Modified: Tue, 25 Aug 2026 00:50:00 GMT  
		Size: 52.7 KB (52701 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:18-trixie` - linux; arm variant v7

```console
$ docker pull postgres@sha256:8352421c6b53ad79726449349aee94784b174eddaea729d9359bc4963209b8ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.8 MB (87845205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0621c73455f13ad4a757daa06bfa7ff70a5514898f8c59cbd583c98fe98381a5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:17:51 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 25 Aug 2026 01:17:58 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:18:08 GMT
ENV GOSU_VERSION=1.19
# Tue, 25 Aug 2026 01:18:08 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 25 Aug 2026 01:18:15 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 25 Aug 2026 01:18:15 GMT
ENV LANG=en_US.utf8
# Tue, 25 Aug 2026 01:18:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:18:20 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 25 Aug 2026 01:18:21 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 01:18:21 GMT
ENV PG_MAJOR=18
# Tue, 25 Aug 2026 01:18:21 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/18/bin
# Tue, 25 Aug 2026 01:18:21 GMT
ENV PG_VERSION=18.6-1.pgdg13+2
# Tue, 25 Aug 2026 01:30:41 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 25 Aug 2026 01:30:41 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 25 Aug 2026 01:30:41 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 25 Aug 2026 01:30:41 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Tue, 25 Aug 2026 01:30:41 GMT
VOLUME [/var/lib/postgresql]
# Tue, 25 Aug 2026 01:30:41 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 01:30:41 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 25 Aug 2026 01:30:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 01:30:41 GMT
STOPSIGNAL SIGINT
# Tue, 25 Aug 2026 01:30:41 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 25 Aug 2026 01:30:41 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:d1bbdd3d583b48584ef798f11d4f50ddaea353977c0af7c20de97cf364378aaa`  
		Last Modified: Mon, 24 Aug 2026 23:20:52 GMT  
		Size: 26.2 MB (26219141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:312282f5a3d19082f0b7c9c32e3ac1de2f882c7d5ae29b3df21c9f65ab3f55b4`  
		Last Modified: Tue, 25 Aug 2026 01:30:54 GMT  
		Size: 1.2 KB (1171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f553ae3108f016ce163f78dca5e8f307160aef5ab411695e9d865576c9de6b35`  
		Last Modified: Tue, 25 Aug 2026 01:30:54 GMT  
		Size: 5.5 MB (5497281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd61c70d06b12f1294c7e93b0f99625af0d05609e0c570f688ea6bc7e868e859`  
		Last Modified: Tue, 25 Aug 2026 01:30:54 GMT  
		Size: 1.2 MB (1222360 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8263ab3b0b1c82a51c58228020950cbf1f621b9e4575847bf5c92d53810879d9`  
		Last Modified: Tue, 25 Aug 2026 01:30:54 GMT  
		Size: 8.2 MB (8204128 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b53290015861bbf64b8433ac1dbb74ef2cc60c86bd646f7eacae54d5f096af8`  
		Last Modified: Tue, 25 Aug 2026 01:30:55 GMT  
		Size: 1.2 MB (1172652 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:392531b4bf497e5f87888ddd6d458c78a1c8de1f03bdd25aaa2d80cb5ca7990d`  
		Last Modified: Tue, 25 Aug 2026 01:30:55 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70a802570ee03cd6f6903589cbec2a3641bf329a4d6ba624dfb6e2670208b77c`  
		Last Modified: Tue, 25 Aug 2026 01:30:55 GMT  
		Size: 3.1 KB (3144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a4a9d681efc25f80c5f54c42630d5a9b1ac4dae44d5a41e873f68e428688191`  
		Last Modified: Tue, 25 Aug 2026 01:30:57 GMT  
		Size: 45.5 MB (45499359 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18be3f44d7827b1c16153854dfd48f717e67b838147ee004efea81dbd09fc0c3`  
		Last Modified: Tue, 25 Aug 2026 01:30:56 GMT  
		Size: 19.4 KB (19430 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dea550b6e458fc55e421483254591691cb6dd15c4a93ea346c6b54fb1331b581`  
		Last Modified: Tue, 25 Aug 2026 01:30:56 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e9cb643ad985f8a918ede2f1000541bc622229a401f963cd691793e82926f71`  
		Last Modified: Tue, 25 Aug 2026 01:30:57 GMT  
		Size: 6.1 KB (6111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3db2342148f9c52cdc0a67de4f1c457ecf5064185e35274142398f84485ba26`  
		Last Modified: Tue, 25 Aug 2026 01:30:57 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:18-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:94b0bd635319b3310fe039a431add4250c393fa348718b9c9259729794410d89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5172361 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:417f8841b52ff492fc440e02a8fede0a36d79ef291360d6f4fcf71d5e895d5dc`

```dockerfile
```

-	Layers:
	-	`sha256:9e48eb05914453a348499a3e43aec4ae9f4137f1e2a61628e7fdd38bc2fbfe17`  
		Last Modified: Tue, 25 Aug 2026 01:30:54 GMT  
		Size: 5.1 MB (5119661 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:da2659204a6eb437ff2659a0441fd25db66db95a4001f810d509e560ade26f38`  
		Last Modified: Tue, 25 Aug 2026 01:30:54 GMT  
		Size: 52.7 KB (52700 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:18-trixie` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:6fd9e18b6fedda0a34e4d53ad6fdbd4289a217300af573c31ec7084e6d9cf329
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.1 MB (161054002 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47fcd92135b73f3b3ba0761ef77c305c4263093b999559505afec11a7ed8cbdc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:42:37 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 25 Aug 2026 00:42:43 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:42:51 GMT
ENV GOSU_VERSION=1.19
# Tue, 25 Aug 2026 00:42:51 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 25 Aug 2026 00:42:57 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 25 Aug 2026 00:42:57 GMT
ENV LANG=en_US.utf8
# Tue, 25 Aug 2026 00:43:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:43:01 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 25 Aug 2026 00:43:02 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:43:02 GMT
ENV PG_MAJOR=18
# Tue, 25 Aug 2026 00:43:02 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/18/bin
# Tue, 25 Aug 2026 00:43:02 GMT
ENV PG_VERSION=18.6-1.pgdg13+2
# Tue, 25 Aug 2026 00:43:21 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 25 Aug 2026 00:43:21 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 25 Aug 2026 00:43:21 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 25 Aug 2026 00:43:21 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Tue, 25 Aug 2026 00:43:21 GMT
VOLUME [/var/lib/postgresql]
# Tue, 25 Aug 2026 00:43:21 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:43:21 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 25 Aug 2026 00:43:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:43:21 GMT
STOPSIGNAL SIGINT
# Tue, 25 Aug 2026 00:43:21 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 25 Aug 2026 00:43:21 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6437d6ec8fee240e8f39c319270c007ae4b54550515565c3da37ef8f4a4ddb11`  
		Last Modified: Tue, 25 Aug 2026 00:43:41 GMT  
		Size: 1.2 KB (1171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e1f39995a92649f3b285b74dae221f40dee5f6f62e34cbd64c5282bb3639c80`  
		Last Modified: Tue, 25 Aug 2026 00:43:41 GMT  
		Size: 6.2 MB (6234978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebe3b74b62b86929d3f548a489b6f72fb09df0452f33b517ee13edeece9e8f1b`  
		Last Modified: Tue, 25 Aug 2026 00:43:41 GMT  
		Size: 1.2 MB (1209591 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a59b8215a09d233a387cb001c778468c3ab67a8a1fd244bcd8d1b67d4fdfffe`  
		Last Modified: Tue, 25 Aug 2026 00:43:41 GMT  
		Size: 8.2 MB (8204044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93eeac19656f3715478c4668897424a046327c33055cba27d6f5e095726c130c`  
		Last Modified: Tue, 25 Aug 2026 00:43:42 GMT  
		Size: 1.2 MB (1220621 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f28b201a80ce9b9d2a3a02cf30fa97ad44ad0364113db2f79483a2a2623b24e`  
		Last Modified: Tue, 25 Aug 2026 00:43:42 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e582dc1d360ca6a0edd4e80b3b00290a58a8a51dec1a5b24d602fcabc810fe7`  
		Last Modified: Tue, 25 Aug 2026 00:43:43 GMT  
		Size: 3.1 KB (3143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab1e9043b37f35b5976c2e8264e83191cd8e9e77d0e7babd01abfecd1a436a32`  
		Last Modified: Tue, 25 Aug 2026 00:43:45 GMT  
		Size: 114.0 MB (113994917 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3089dfdc569b0bb110c981325e6c63fb68e830f960899c1dc463503717a8a2e`  
		Last Modified: Tue, 25 Aug 2026 00:43:43 GMT  
		Size: 19.4 KB (19418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:521aece6b33df09e7d85dc2d971cd4bab55be1ff99d24b9c075f37baf8e0b2be`  
		Last Modified: Tue, 25 Aug 2026 00:43:44 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc5ea3235db867ea91fd62a9ff12aca6f5e2f318e8b72834af7aaa3264f89d64`  
		Last Modified: Tue, 25 Aug 2026 00:43:44 GMT  
		Size: 6.1 KB (6108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc0e071a4d070f4d4bfa96d374327d2d4f5a6c2461ba57e9e3f2e8282d16e8be`  
		Last Modified: Tue, 25 Aug 2026 00:43:45 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:18-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:51432c653769d02c119666b25b669387390f505ab55e6336e2b6514293095176
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6016314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30d2d7d24fed5fbf4c8ea407b4583f8abfc5225e5bfb1fdfe02449728ba19e53`

```dockerfile
```

-	Layers:
	-	`sha256:f833d8542db15f6d1ef5f96f97b408bd757ef980b444c819df2af97e4703d0a4`  
		Last Modified: Tue, 25 Aug 2026 00:43:41 GMT  
		Size: 6.0 MB (5963556 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4e9eb4879291e416294afe189df52a11a8f9851fc397f7278ae13b7f9d84c33c`  
		Last Modified: Tue, 25 Aug 2026 00:43:41 GMT  
		Size: 52.8 KB (52758 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:18-trixie` - linux; 386

```console
$ docker pull postgres@sha256:de8781cb9b321c949fcd47afd639be81c7fb20423f2885bca9c06c42f8cc6548
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.7 MB (97666218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14652dfae1fc2c49081160080cf21f56b4662839384ff799873c9112dee8790e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:38:32 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 25 Aug 2026 00:38:38 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:38:45 GMT
ENV GOSU_VERSION=1.19
# Tue, 25 Aug 2026 00:38:45 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 25 Aug 2026 00:38:50 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 25 Aug 2026 00:38:50 GMT
ENV LANG=en_US.utf8
# Tue, 25 Aug 2026 00:38:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:38:53 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 25 Aug 2026 00:38:54 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:38:54 GMT
ENV PG_MAJOR=18
# Tue, 25 Aug 2026 00:38:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/18/bin
# Tue, 25 Aug 2026 00:38:54 GMT
ENV PG_VERSION=18.6-1.pgdg13+2
# Tue, 25 Aug 2026 00:47:14 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 25 Aug 2026 00:47:14 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 25 Aug 2026 00:47:14 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 25 Aug 2026 00:47:14 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Tue, 25 Aug 2026 00:47:14 GMT
VOLUME [/var/lib/postgresql]
# Tue, 25 Aug 2026 00:47:14 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:47:14 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 25 Aug 2026 00:47:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:47:14 GMT
STOPSIGNAL SIGINT
# Tue, 25 Aug 2026 00:47:14 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 25 Aug 2026 00:47:14 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:53dd1701fe55fa5affd8b9c6d6572dd8ec54300469e314130f40456ca2b957f3`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 31.3 MB (31303397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fd6bfdd179c6b3f1b148ad5f133cf574bd6d95b4e7b291c1b43bd0cedd56280`  
		Last Modified: Tue, 25 Aug 2026 00:47:25 GMT  
		Size: 1.2 KB (1169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b63f945bb8e4699aeadef6d094928e866d4cca3f0616b21dbefb64770fcf3eca`  
		Last Modified: Tue, 25 Aug 2026 00:47:26 GMT  
		Size: 6.6 MB (6631369 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2a9e35a49e6a73128ef92456a614d407cab783bb57177b80a00e726763f4708`  
		Last Modified: Tue, 25 Aug 2026 00:47:26 GMT  
		Size: 1.2 MB (1225867 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8891bf7ab797b43a5944f28ccf1a0c0f865d17a9d6d20cc97b44d06740b5be0b`  
		Last Modified: Tue, 25 Aug 2026 00:47:26 GMT  
		Size: 8.2 MB (8204062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e73dfac55ccae2335d3de5a6943139e5acf049bae94807bdd8b79218257775fd`  
		Last Modified: Tue, 25 Aug 2026 00:47:27 GMT  
		Size: 1.3 MB (1308298 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96d91c50010bf8ab746717be65b04caee58332591de4e8ec767b9b75d83b1de4`  
		Last Modified: Tue, 25 Aug 2026 00:47:27 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2d93d41d35ff6a56ba09ae0f763987a3d1384e9bd2b7ea4ddad64e60c240d3f`  
		Last Modified: Tue, 25 Aug 2026 00:47:27 GMT  
		Size: 3.1 KB (3141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17fced9215eca0094ba657fe4ac2238e1c82632408e94bb026411a3fb67ef9f5`  
		Last Modified: Tue, 25 Aug 2026 00:47:29 GMT  
		Size: 49.0 MB (48962954 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7944886cfd03a9701662021305c64c0f2fb672cbbf31e71a641e344e7c62f331`  
		Last Modified: Tue, 25 Aug 2026 00:47:28 GMT  
		Size: 19.4 KB (19421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72d1e90ce98b5c45d19b48c230b4b11144e4e947b17abdf7e2fe7669de99b8ff`  
		Last Modified: Tue, 25 Aug 2026 00:47:28 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f262f7c90e6f82bd77ed0d1a19d1a7d416b288f020704f7379207bf2347e1f3`  
		Last Modified: Tue, 25 Aug 2026 00:47:28 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43dbbeb270b53783192fbccd9a1afa0d02db4dd10844b152c55c90688b453213`  
		Last Modified: Tue, 25 Aug 2026 00:47:29 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:18-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:d7b341f98c9600e05b75469411469dde887d4e999e1f51daed35204d6e2cb6b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5168101 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65cd6679dd077767eacca144720ee279c892b7323eda53edbea476c31f862f78`

```dockerfile
```

-	Layers:
	-	`sha256:8f1d7d880fe7773bf6fa8ec37fc988cb7619aa000299a984fd7807e7c1e055ad`  
		Last Modified: Tue, 25 Aug 2026 00:47:26 GMT  
		Size: 5.1 MB (5115689 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6ed04337658752fec4e8da0b5f1bead105954bc5a0098acfc09e647aa51004c8`  
		Last Modified: Tue, 25 Aug 2026 00:47:25 GMT  
		Size: 52.4 KB (52412 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:18-trixie` - linux; ppc64le

```console
$ docker pull postgres@sha256:bd90909b51e4b6549bb2d07282f2b57651561de85b14941054f47108a930279d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.8 MB (174849839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:450a7874ede52ca2aee9750dab375f375ded9c97d1f962a4a3fa3ab7dd1c3513`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 03:10:31 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 25 Aug 2026 03:10:46 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 03:11:01 GMT
ENV GOSU_VERSION=1.19
# Tue, 25 Aug 2026 03:11:01 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 25 Aug 2026 03:11:11 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 25 Aug 2026 03:11:11 GMT
ENV LANG=en_US.utf8
# Tue, 25 Aug 2026 03:11:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 03:11:20 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 25 Aug 2026 03:11:21 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 03:11:21 GMT
ENV PG_MAJOR=18
# Tue, 25 Aug 2026 03:11:21 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/18/bin
# Tue, 25 Aug 2026 03:11:21 GMT
ENV PG_VERSION=18.6-1.pgdg13+2
# Tue, 25 Aug 2026 03:15:21 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 25 Aug 2026 03:15:23 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 25 Aug 2026 03:15:26 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 25 Aug 2026 03:15:26 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Tue, 25 Aug 2026 03:15:26 GMT
VOLUME [/var/lib/postgresql]
# Tue, 25 Aug 2026 03:15:29 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 03:15:29 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 25 Aug 2026 03:15:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 03:15:29 GMT
STOPSIGNAL SIGINT
# Tue, 25 Aug 2026 03:15:29 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 25 Aug 2026 03:15:29 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:2b3dfadc0808f798cf371605ccaac4ef505f4812ae4087e8fef3c0d0fa4498a7`  
		Last Modified: Mon, 24 Aug 2026 23:22:18 GMT  
		Size: 33.6 MB (33615461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b11351b6528e2b1510c6a2e46cdd27a1aba51122826d6e15c0d63586bfa5c2a4`  
		Last Modified: Tue, 25 Aug 2026 03:12:50 GMT  
		Size: 1.2 KB (1176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f31bfea3c336f39ba991dc06fb5cc00c27694424d00e811362719612db5953e`  
		Last Modified: Tue, 25 Aug 2026 03:12:51 GMT  
		Size: 7.1 MB (7076765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e000a23f9da9119a0347be1b4ff9e2973d69c21f2a5fddbba76ea7bc470d110`  
		Last Modified: Tue, 25 Aug 2026 03:12:50 GMT  
		Size: 1.2 MB (1214782 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8a19f4dd12fd4cbb21acbbb1f61b9b1ef5b56ae5460f704c6706fba3cbf4062`  
		Last Modified: Tue, 25 Aug 2026 03:12:51 GMT  
		Size: 8.2 MB (8204095 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0aca835e35dbb2b4dcde421188b4ce90799e6ffcef323217e0a65ac0142c38aa`  
		Last Modified: Tue, 25 Aug 2026 03:12:51 GMT  
		Size: 1.4 MB (1394941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06c42621e622b795e49d8789b58c32d8f01c6bb6b371a5e1a97d2ad51b262dec`  
		Last Modified: Tue, 25 Aug 2026 03:12:52 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62e06d184662ecb1dd0c984e9c45c7bc3f83aa79cc17a43c6715a65867d837b7`  
		Last Modified: Tue, 25 Aug 2026 03:12:52 GMT  
		Size: 3.1 KB (3143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3823f4edaa38f4f1394c1fc216366ec77af2d287691967e9224f92c20d55d6c`  
		Last Modified: Tue, 25 Aug 2026 03:16:10 GMT  
		Size: 123.3 MB (123313515 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59a96f2da4b56dbe08e438c92f64045293df7875d843437d7b0a0b52399b61b8`  
		Last Modified: Tue, 25 Aug 2026 03:16:07 GMT  
		Size: 19.4 KB (19423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbd8132423d88f4e21b794d60956116ab3c81812a404f2b8364075d0f217896d`  
		Last Modified: Tue, 25 Aug 2026 03:16:07 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b645aa70627f7976909e3321c658a429b752c8e30b0f4d84aa72b3715960e23`  
		Last Modified: Tue, 25 Aug 2026 03:16:07 GMT  
		Size: 6.1 KB (6108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c54315aa56381ae145305063165c06b012696c946f519e10b329b259881e7b5b`  
		Last Modified: Tue, 25 Aug 2026 03:16:08 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:18-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:33a14982b3ba91dba89680d27a4b6f03dab7a6e7d74e269b84fceeac55603f15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6016395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:370cdf17824994cca372ad1444cae266d5b34160c51402ae30538014365c087d`

```dockerfile
```

-	Layers:
	-	`sha256:9a3940f4544c7eb7500c26903e1aaf271c1129e731e9745a3a150ee839b80f43`  
		Last Modified: Tue, 25 Aug 2026 03:16:07 GMT  
		Size: 6.0 MB (5963839 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:adebafb4280c5028fc07ea84d33f06fe0f47d6dbee8a865cf89791ffbaa01ce0`  
		Last Modified: Tue, 25 Aug 2026 03:16:06 GMT  
		Size: 52.6 KB (52556 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:18-trixie` - linux; riscv64

```console
$ docker pull postgres@sha256:7a77e12ff4d5eb6a7e2faa623f595e741e4638d25705b3fd2d1ddc1307dea28e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.6 MB (95577799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6648fd6e25b56a0dd56f858660a1867a6dabfa147fb2694506cff442225e3bd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1787529600'
# Wed, 26 Aug 2026 11:56:24 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 26 Aug 2026 11:57:21 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 26 Aug 2026 11:58:21 GMT
ENV GOSU_VERSION=1.19
# Wed, 26 Aug 2026 11:58:21 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 26 Aug 2026 11:59:25 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Wed, 26 Aug 2026 11:59:25 GMT
ENV LANG=en_US.utf8
# Wed, 26 Aug 2026 12:00:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 26 Aug 2026 12:00:09 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 26 Aug 2026 12:00:10 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 26 Aug 2026 12:00:10 GMT
ENV PG_MAJOR=18
# Wed, 26 Aug 2026 12:00:10 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/18/bin
# Wed, 26 Aug 2026 12:00:10 GMT
ENV PG_VERSION=18.6-1.pgdg13+2
# Wed, 26 Aug 2026 16:16:59 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Wed, 26 Aug 2026 16:17:00 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 26 Aug 2026 16:17:00 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 26 Aug 2026 16:17:00 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Wed, 26 Aug 2026 16:17:00 GMT
VOLUME [/var/lib/postgresql]
# Wed, 26 Aug 2026 16:17:00 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 26 Aug 2026 16:17:00 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 26 Aug 2026 16:17:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Aug 2026 16:17:00 GMT
STOPSIGNAL SIGINT
# Wed, 26 Aug 2026 16:17:00 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 26 Aug 2026 16:17:00 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f3444419fc0430236ec8be73d1759683fb92efb1eb57784ae65bcbdc893efbbc`  
		Last Modified: Mon, 24 Aug 2026 23:38:04 GMT  
		Size: 28.3 MB (28296463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3bc353eb5d09bbd17042242d645458ab956291b3b691fcb9770e2f8fd39af36`  
		Last Modified: Wed, 26 Aug 2026 14:12:04 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa77af6ccb526ab426c2b8a61bbd69a17b4a06a04e8134475a9c0dc882808c08`  
		Last Modified: Wed, 26 Aug 2026 14:12:07 GMT  
		Size: 6.3 MB (6293020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e5043517ec87936b0a2caa5660e13511b2cad209fdcbc082ecc8cda6604a069`  
		Last Modified: Wed, 26 Aug 2026 14:12:06 GMT  
		Size: 3.8 MB (3821229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83375cb7928d41d122b5edd7b985a426bf0734e9a1e86f4618c5463cd9963ca7`  
		Last Modified: Wed, 26 Aug 2026 14:12:07 GMT  
		Size: 8.2 MB (8203918 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fbe4048c34551fcf3263f368644a629346f9007a20d89db62711f77a8c90b20`  
		Last Modified: Wed, 26 Aug 2026 14:12:07 GMT  
		Size: 1.4 MB (1402550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef40b6753191ae831059f8806c4912ca167308bfa2572d14c5827ab27c02b5c7`  
		Last Modified: Wed, 26 Aug 2026 14:12:08 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a915fae781b061cb0b51349b949199d029df7643266070b9aa3a0c178f6b421b`  
		Last Modified: Wed, 26 Aug 2026 14:12:08 GMT  
		Size: 3.1 KB (3144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce61cb5f0fafe9612a4be85a3dd5b412541d2d79369f48900fea9b056285c0d7`  
		Last Modified: Wed, 26 Aug 2026 16:19:36 GMT  
		Size: 47.5 MB (47530342 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c11536e70d89ac9bcb19759b5f160475b3f738596b78feecb7916eb9763b9b0`  
		Last Modified: Wed, 26 Aug 2026 16:19:28 GMT  
		Size: 19.4 KB (19424 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40171277afc0deb8797b26ddb225b228744d54779cf65c809e0297339d0557c4`  
		Last Modified: Wed, 26 Aug 2026 16:19:28 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45600a3f6474d4750baa486caf47a2214d169b7a8fa51fe20d15f8bb070ea282`  
		Last Modified: Wed, 26 Aug 2026 16:19:28 GMT  
		Size: 6.1 KB (6111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2c3e673f9401053b0a1ce2c36aa71db6fce650f4368a07e5cf5a6e915740f10`  
		Last Modified: Wed, 26 Aug 2026 16:19:30 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:18-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:1881edc0eb2063419346bdee4e03a85fbe6170e9eff50c13959c72d93f070e4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5163180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35f98393f06d183b282bc9d23f05d8b45936a686aa5ca1a39664bf91dbfd3759`

```dockerfile
```

-	Layers:
	-	`sha256:a2c937d361a6916bcf1618a17667f5ec8f22f2b43ff9fa26e707dc3cc75e5c69`  
		Last Modified: Wed, 26 Aug 2026 16:19:29 GMT  
		Size: 5.1 MB (5110629 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b50a8ca2ce75cf22e23e4f5b953c4ac991f97a98b9ddded3d3cd162e20052d4d`  
		Last Modified: Wed, 26 Aug 2026 16:19:28 GMT  
		Size: 52.6 KB (52551 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:18-trixie` - linux; s390x

```console
$ docker pull postgres@sha256:4b856c8371ac7ba2b8ac04fdf6cca9484dc7d51b916786b31a844e9e141f9854
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.1 MB (177097399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2c92ac0a0c0c83fdd748123f955ae44dfc9cbf8877551233d2824134946ad76`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:02:49 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 25 Aug 2026 01:02:55 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:03:02 GMT
ENV GOSU_VERSION=1.19
# Tue, 25 Aug 2026 01:03:02 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 25 Aug 2026 01:03:07 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 25 Aug 2026 01:03:07 GMT
ENV LANG=en_US.utf8
# Tue, 25 Aug 2026 01:03:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:03:12 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 25 Aug 2026 01:03:12 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 01:03:12 GMT
ENV PG_MAJOR=18
# Tue, 25 Aug 2026 01:03:12 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/18/bin
# Tue, 25 Aug 2026 01:03:12 GMT
ENV PG_VERSION=18.6-1.pgdg13+2
# Tue, 25 Aug 2026 01:16:40 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 25 Aug 2026 01:16:40 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 25 Aug 2026 01:16:40 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 25 Aug 2026 01:16:40 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Tue, 25 Aug 2026 01:16:40 GMT
VOLUME [/var/lib/postgresql]
# Tue, 25 Aug 2026 01:16:40 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 01:16:40 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 25 Aug 2026 01:16:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 01:16:40 GMT
STOPSIGNAL SIGINT
# Tue, 25 Aug 2026 01:16:40 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 25 Aug 2026 01:16:40 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:3b49fae03f57292f29c23992f1f40c8e724a3c2e43e39a20e805a76ce5694095`  
		Last Modified: Mon, 24 Aug 2026 23:20:17 GMT  
		Size: 29.9 MB (29867719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdd8731eec8971558bbdb113d579eee82339be70321f1517f4045f67ac0e3593`  
		Last Modified: Tue, 25 Aug 2026 01:17:13 GMT  
		Size: 1.2 KB (1170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f99000ffd322ec426616116a1762013aaf8dd58b8f418f7a395634e4e71889f`  
		Last Modified: Tue, 25 Aug 2026 01:17:13 GMT  
		Size: 6.4 MB (6408414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:925aacd8e3738ee432491f7dcdedb89cbc80a502bb4b52107b8ae6707236fca1`  
		Last Modified: Tue, 25 Aug 2026 01:17:13 GMT  
		Size: 1.2 MB (1230244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98fa9d9403661dd4bdeb7ceaaa513f00f47a07acc514c8e4f8285854e4e8709b`  
		Last Modified: Tue, 25 Aug 2026 01:17:13 GMT  
		Size: 8.3 MB (8258986 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d41930945d2a5142a6dc1f98125139111ced922817896d47d7bdf9b4f8ea0dd`  
		Last Modified: Tue, 25 Aug 2026 01:17:14 GMT  
		Size: 1.4 MB (1398271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8227cac7224b811f2621f30a20090c9ec9d2c6051656f298431c66088d5a0ade`  
		Last Modified: Tue, 25 Aug 2026 01:17:14 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55261074fe0f610acb07bbd1ba284b376ff1e49a5be4474d54a4f7a6ca411a1a`  
		Last Modified: Tue, 25 Aug 2026 01:17:15 GMT  
		Size: 3.1 KB (3138 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e296cf53a49b6e853d55a93c0883552dd8caa6c434e107c18b5abeca3347bbc9`  
		Last Modified: Tue, 25 Aug 2026 01:17:17 GMT  
		Size: 129.9 MB (129903501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:783fa90bda9d05b5e52857080ebe87ed698f10ac69e15625b15bdf73ae071d28`  
		Last Modified: Tue, 25 Aug 2026 01:17:15 GMT  
		Size: 19.4 KB (19422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa171c9d73d1147a4bb7d1ff08dc86a90ef02ef47dd793ac297d67be5b7ef1c3`  
		Last Modified: Tue, 25 Aug 2026 01:17:15 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:caa49d1136f5c24e9c757e1acfa5593caef9e84cd07209d597cbb46bf4bd00b9`  
		Last Modified: Tue, 25 Aug 2026 01:17:16 GMT  
		Size: 6.1 KB (6106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f3826eb45291d75951537e68f05eb1497189eb09a3d10dc497fda9d658f1877`  
		Last Modified: Tue, 25 Aug 2026 01:17:16 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:18-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:6303a100a84df6cd2b74e1df1e24e3033614df14828673bb2c5050f7a0f4f4b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6026362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4939207e322ea3853da3340e47150a8159dce7c81e16d2f1e2d857b9d3842a4f`

```dockerfile
```

-	Layers:
	-	`sha256:6818ab9a25ee0c7e2e54dd7e23eb88ceed9d39ac287ecc41248fdd310f63d7e0`  
		Last Modified: Tue, 25 Aug 2026 01:17:13 GMT  
		Size: 6.0 MB (5973883 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fffe4e9d6f7be1d4d19db637417d41c49b4235ea19b0519828add4b1e537d5fd`  
		Last Modified: Tue, 25 Aug 2026 01:17:13 GMT  
		Size: 52.5 KB (52479 bytes)  
		MIME: application/vnd.in-toto+json
