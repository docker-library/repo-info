## `postgres:latest`

```console
$ docker pull postgres@sha256:1ffbf339f5b8e78c394cfaad3711ef6dbc4e14546bf70428e0bb30cba66e8e4d
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

### `postgres:latest` - unknown; unknown

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

### `postgres:latest` - linux; arm variant v5

```console
$ docker pull postgres@sha256:a5ab7a255ba9639e5f1ab592edf4c2e103d1e96d8849fc27e47a5073120adf0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.5 MB (91526628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:024022b5509c3db95368d797bb8994ba26346cd167391993ca8ac23057604e41`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1785715200'
# Thu, 13 Aug 2026 19:13:47 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 13 Aug 2026 19:13:56 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 13 Aug 2026 19:14:07 GMT
ENV GOSU_VERSION=1.19
# Thu, 13 Aug 2026 19:14:07 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 13 Aug 2026 19:14:15 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Thu, 13 Aug 2026 19:14:15 GMT
ENV LANG=en_US.utf8
# Thu, 13 Aug 2026 19:14:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 13 Aug 2026 19:14:22 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 13 Aug 2026 19:14:22 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 13 Aug 2026 19:14:22 GMT
ENV PG_MAJOR=18
# Thu, 13 Aug 2026 19:14:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/18/bin
# Thu, 13 Aug 2026 19:14:22 GMT
ENV PG_VERSION=18.6-1.pgdg13+2
# Thu, 13 Aug 2026 19:27:25 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Thu, 13 Aug 2026 19:27:25 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 13 Aug 2026 19:27:26 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 13 Aug 2026 19:27:26 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Thu, 13 Aug 2026 19:27:26 GMT
VOLUME [/var/lib/postgresql]
# Thu, 13 Aug 2026 19:27:26 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 13 Aug 2026 19:27:26 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 13 Aug 2026 19:27:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Aug 2026 19:27:26 GMT
STOPSIGNAL SIGINT
# Thu, 13 Aug 2026 19:27:26 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 13 Aug 2026 19:27:26 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:727d7256eca5389d64a19157e9315c80abc182ee4b0637b2fddda6136b155f96`  
		Last Modified: Tue, 04 Aug 2026 23:51:40 GMT  
		Size: 28.0 MB (27954714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7418ee68df94f50b7a1ece53ceacf673eaf84da99dc26bca6ecc2dbbb13843a`  
		Last Modified: Thu, 13 Aug 2026 19:27:38 GMT  
		Size: 1.2 KB (1170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc970b7a370841dfdbf7913003edbe6409a2549cb024a670b04831031a2ffca2`  
		Last Modified: Thu, 13 Aug 2026 19:27:39 GMT  
		Size: 5.9 MB (5932299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e69036b808ada6b567ef3507b29acd54adf63a07c979b9c85a201cb879c18d5`  
		Last Modified: Thu, 13 Aug 2026 19:27:39 GMT  
		Size: 1.2 MB (1227395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06e6ad87e6fa8d5071587ae74a2b275e442591a468e1cfa45e2aca6f1ded57cd`  
		Last Modified: Thu, 13 Aug 2026 19:27:39 GMT  
		Size: 8.2 MB (8204237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44a98de2c4e8da16391bcc043afc60dc8c14d222b141b4a2a5bb2df16fbf5695`  
		Last Modified: Thu, 13 Aug 2026 19:27:40 GMT  
		Size: 1.3 MB (1317344 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e764c61809a1108f860242fbaf94b74e6469f1a16c26dfe86377c2db1f797a16`  
		Last Modified: Thu, 13 Aug 2026 19:27:40 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c149590bc86b134e5ef90f00afd405005348fcd20a18381e4e3d3b2fb862195e`  
		Last Modified: Thu, 13 Aug 2026 19:27:40 GMT  
		Size: 3.1 KB (3140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64788818579a282e7b43d0b36a95328dfb24514309d126f0eeb37cc3fdcb51eb`  
		Last Modified: Thu, 13 Aug 2026 19:27:42 GMT  
		Size: 46.9 MB (46860389 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:353c2935e7fe692ccaecaaca6ab8f7ae2bbe9c828677a552e2590ba3f51faa81`  
		Last Modified: Thu, 13 Aug 2026 19:27:41 GMT  
		Size: 19.4 KB (19407 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35bc740f6fb413486172f95cd2af7423f49be997902895235f6921e2449abc13`  
		Last Modified: Thu, 13 Aug 2026 19:27:41 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:446b26ae2c84165a67b3899dfd51f84a6824f9a5cde736dc340b2d00a249fb2d`  
		Last Modified: Thu, 13 Aug 2026 19:27:42 GMT  
		Size: 6.1 KB (6107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f35e2f8c4c8826ed5ab71579e79a31202262c43f8d19f8f2260b3b94d3307c88`  
		Last Modified: Thu, 13 Aug 2026 19:27:42 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:latest` - unknown; unknown

```console
$ docker pull postgres@sha256:7a90a2b6d4b6933d5141443fc9c6b29ceec6731603fad345c5216f7ab72b2a17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5172837 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1725667c8d35b3e7f4795ed9c880c8b8f61e2daecf23162f309b773f258b60d0`

```dockerfile
```

-	Layers:
	-	`sha256:76f8264a05e3e9768ca782661fa452b072c299ab4d2daa9b68c1ec35f875f8fb`  
		Last Modified: Thu, 13 Aug 2026 19:27:39 GMT  
		Size: 5.1 MB (5120136 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:03927d5e279d4150cad0384e06d106d19bdcee2e75f01582bd8520971edb1bb8`  
		Last Modified: Thu, 13 Aug 2026 19:27:39 GMT  
		Size: 52.7 KB (52701 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:latest` - linux; arm variant v7

```console
$ docker pull postgres@sha256:a2d1584f45191b0ec8ebba9f23f5a0e7e10c3a701e794c326920fdaa43bc0e70
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.8 MB (87831890 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a545a7ed286fc42ca9af62abdfd34131a3040d4e2f2378298f273b092f4168d9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1785715200'
# Thu, 13 Aug 2026 19:18:11 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 13 Aug 2026 19:18:18 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 13 Aug 2026 19:18:27 GMT
ENV GOSU_VERSION=1.19
# Thu, 13 Aug 2026 19:18:27 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 13 Aug 2026 19:18:34 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Thu, 13 Aug 2026 19:18:34 GMT
ENV LANG=en_US.utf8
# Thu, 13 Aug 2026 19:18:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 13 Aug 2026 19:18:38 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 13 Aug 2026 19:18:39 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 13 Aug 2026 19:18:39 GMT
ENV PG_MAJOR=18
# Thu, 13 Aug 2026 19:18:39 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/18/bin
# Thu, 13 Aug 2026 19:18:39 GMT
ENV PG_VERSION=18.6-1.pgdg13+2
# Thu, 13 Aug 2026 19:30:33 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Thu, 13 Aug 2026 19:30:33 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 13 Aug 2026 19:30:33 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 13 Aug 2026 19:30:33 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Thu, 13 Aug 2026 19:30:33 GMT
VOLUME [/var/lib/postgresql]
# Thu, 13 Aug 2026 19:30:34 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 13 Aug 2026 19:30:34 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 13 Aug 2026 19:30:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Aug 2026 19:30:34 GMT
STOPSIGNAL SIGINT
# Thu, 13 Aug 2026 19:30:34 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 13 Aug 2026 19:30:34 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:672c0d216bfc857b06e612ddef27e7e627f137e3b1d462ba55fc70cf69be0989`  
		Last Modified: Tue, 04 Aug 2026 23:52:19 GMT  
		Size: 26.2 MB (26206372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab4b956957334fd976a6b9720059b0d6a115a1de2bc6e8892c4b9efac21de45c`  
		Last Modified: Thu, 13 Aug 2026 19:30:46 GMT  
		Size: 1.2 KB (1170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aeb1cc1d6564d11196131351b812d865a43175530f89eb6b916e1c618d02e20f`  
		Last Modified: Thu, 13 Aug 2026 19:30:46 GMT  
		Size: 5.5 MB (5497333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3510ebbe772e68f0215e10e4747db057de2dc42a683985470ce17d4861773501`  
		Last Modified: Thu, 13 Aug 2026 19:30:46 GMT  
		Size: 1.2 MB (1222339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c90706a89eec234698ad0ec2f9c4ba8ec36e3a4b7ba23ae5f34fb90bd9937bfe`  
		Last Modified: Thu, 13 Aug 2026 19:30:47 GMT  
		Size: 8.2 MB (8204013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:768532d02974a6043286ed07b908b7b4d6fb5629b071e8989830c0fb0c0b6ceb`  
		Last Modified: Thu, 13 Aug 2026 19:30:48 GMT  
		Size: 1.2 MB (1172642 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ad576d9761860e1296a578b93319833f92ebdcfcf1e6278b94b23435624c4e8`  
		Last Modified: Thu, 13 Aug 2026 19:30:48 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bf15ce599ce3859320d72a37dda64137c263329987b5ce417f5285a73150a08`  
		Last Modified: Thu, 13 Aug 2026 19:30:48 GMT  
		Size: 3.1 KB (3144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29ce6f03c9270d1609f0542c5429f4cda0b13701be6531e802692a25065da7b9`  
		Last Modified: Thu, 13 Aug 2026 19:30:49 GMT  
		Size: 45.5 MB (45498910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:badc7f1367d63fbd69ef8ce66c18a19f74a1bdeb57eac024b0ddb810e4f96928`  
		Last Modified: Thu, 13 Aug 2026 19:30:49 GMT  
		Size: 19.4 KB (19433 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b6a9a8484fac44f56fdcf956ef4d27a7e7a42d46518913d53845df96afb8565`  
		Last Modified: Thu, 13 Aug 2026 19:30:49 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d34248db805296da73b75b5da7a2681af96bbe101d2f60ce81839371b677848f`  
		Last Modified: Thu, 13 Aug 2026 19:30:49 GMT  
		Size: 6.1 KB (6106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:930091cfad023f5fa656ee7999f9757e9e6054fb2b2965c8eb40240c39f1057f`  
		Last Modified: Thu, 13 Aug 2026 19:30:50 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:latest` - unknown; unknown

```console
$ docker pull postgres@sha256:476ed7b0d491c073abeb0afd1d367dffc9b773f9407f8e1ee5f9f22af2e9f9d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5172142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef88b2b462228788d5938a16ece6f1f99a8f992db0a372a21809f137acc5f78b`

```dockerfile
```

-	Layers:
	-	`sha256:e19f9c2b99f628dd94ac7c810b308f8403cae5c6007b058b6c3461659c64e48b`  
		Last Modified: Thu, 13 Aug 2026 19:30:47 GMT  
		Size: 5.1 MB (5119441 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:54027ee9a9e0839b05310c533560f2e3fd4f2681f24db06ac1a529d57c42adb9`  
		Last Modified: Thu, 13 Aug 2026 19:30:46 GMT  
		Size: 52.7 KB (52701 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:latest` - linux; arm64 variant v8

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

### `postgres:latest` - unknown; unknown

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

### `postgres:latest` - linux; 386

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

### `postgres:latest` - unknown; unknown

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

### `postgres:latest` - linux; ppc64le

```console
$ docker pull postgres@sha256:3b90703e62cdb57b579685f2554fbddf621ac84818e3b153578a6dd76b8fdab8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.8 MB (174834082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1e35463b6d6f295a89a42eae34061b0eb1c1c5d94af0137f846ca1e8d3b8e31`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 05:08:28 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 05 Aug 2026 05:08:39 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 05:08:53 GMT
ENV GOSU_VERSION=1.19
# Wed, 05 Aug 2026 05:08:53 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 05 Aug 2026 05:09:04 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Wed, 05 Aug 2026 05:09:04 GMT
ENV LANG=en_US.utf8
# Wed, 05 Aug 2026 05:09:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 05:09:12 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 05 Aug 2026 05:09:13 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 05 Aug 2026 05:09:13 GMT
ENV PG_MAJOR=18
# Wed, 05 Aug 2026 05:09:13 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/18/bin
# Wed, 05 Aug 2026 05:09:13 GMT
ENV PG_VERSION=18.6-1.pgdg13+2
# Thu, 13 Aug 2026 19:20:33 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Thu, 13 Aug 2026 19:20:34 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 13 Aug 2026 19:20:34 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 13 Aug 2026 19:20:34 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Thu, 13 Aug 2026 19:20:34 GMT
VOLUME [/var/lib/postgresql]
# Thu, 13 Aug 2026 19:20:35 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 13 Aug 2026 19:20:35 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 13 Aug 2026 19:20:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Aug 2026 19:20:35 GMT
STOPSIGNAL SIGINT
# Thu, 13 Aug 2026 19:20:35 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 13 Aug 2026 19:20:35 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:42d86b36693f284701ea61af2ee3f7366d96c1bf067d1bde1036423871f7cc22`  
		Last Modified: Tue, 04 Aug 2026 23:53:10 GMT  
		Size: 33.6 MB (33601343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3846916550f018cfe33993b7f9e7dd5270071c23265ab42a5041620985b36c81`  
		Last Modified: Wed, 05 Aug 2026 05:10:36 GMT  
		Size: 1.2 KB (1169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36081eaa4e526775ea5b73541ecbf8cee639252b5797b761e2f4b7a9f54696d2`  
		Last Modified: Wed, 05 Aug 2026 05:10:36 GMT  
		Size: 7.1 MB (7076742 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b907106d2bf40fe1ee65b30a10fbb1862cd5bc540db3f938d5e5e5a2c91c534`  
		Last Modified: Wed, 05 Aug 2026 05:10:36 GMT  
		Size: 1.2 MB (1214752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebdac8ebc21b578869c6132422075e263a611b0bd6102aff8d9868182da98097`  
		Last Modified: Wed, 05 Aug 2026 05:10:36 GMT  
		Size: 8.2 MB (8204037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:224b54dd0f8a69a9169b45e682b6977200c26f882792de7d28c61112829a3e8d`  
		Last Modified: Wed, 05 Aug 2026 05:10:37 GMT  
		Size: 1.4 MB (1394915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:582055b833c5869c5a74a91e5025fc373936fdda5a472bc4735ebd873c12497f`  
		Last Modified: Wed, 05 Aug 2026 05:10:37 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b521b9b7eacb8d458604e3590dec4f41c1f54542dcb193b970b524ec6e24db90`  
		Last Modified: Wed, 05 Aug 2026 05:10:38 GMT  
		Size: 3.1 KB (3142 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6124c4fd45782b7a36a42693abc9a4e463b074418413638680172a26c4edeafe`  
		Last Modified: Thu, 13 Aug 2026 19:21:21 GMT  
		Size: 123.3 MB (123312027 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:469ccb457a38e2edc4a104b100662b1636b98b75627e1154395973fc4e66db55`  
		Last Modified: Thu, 13 Aug 2026 19:21:18 GMT  
		Size: 19.4 KB (19420 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6aa4420f3e5eca07fdd2e25e297e21047a76edf7f9156c18d5fe82e677bcaa4`  
		Last Modified: Thu, 13 Aug 2026 19:21:18 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65bdecbce72d4f975564d32ad710196aa56697940648f3b5c2a328195c3166e5`  
		Last Modified: Thu, 13 Aug 2026 19:21:18 GMT  
		Size: 6.1 KB (6107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6393dd9317630c0eeee1fbcb710dca07439a70bc6b2ab82ca95659c960812a8`  
		Last Modified: Thu, 13 Aug 2026 19:21:19 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:latest` - unknown; unknown

```console
$ docker pull postgres@sha256:5400c5498a56c5678d82d9ca5e590a16c110f746c3b1e47ef4b53f21f0c745d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6016197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:394fe5e815e805181edfe4eb6ed77af9b62e320e590809ecf342c39c710fbee6`

```dockerfile
```

-	Layers:
	-	`sha256:08c51abad65060164c619b56eb403d989c5e75a5d6c00b165f67d84f0bdb0c9c`  
		Last Modified: Thu, 13 Aug 2026 19:21:18 GMT  
		Size: 6.0 MB (5963641 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:030b1b13d1fec01b21d2b7b6e4eafcd5d1b8f047aa03b9aa6130e01d30a958d0`  
		Last Modified: Thu, 13 Aug 2026 19:21:18 GMT  
		Size: 52.6 KB (52556 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:latest` - linux; riscv64

```console
$ docker pull postgres@sha256:dbcafe5f3edb531812aa2ca893f9f49afe7048f7da4b73ece76f17cdaa06d072
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.0 MB (95992420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:267db2fd65853abd8256c942fe85013af5d4394121f57c77ce0e1f3232d2b574`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1785715200'
# Thu, 06 Aug 2026 13:08:40 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 06 Aug 2026 13:09:38 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 06 Aug 2026 13:10:38 GMT
ENV GOSU_VERSION=1.19
# Thu, 06 Aug 2026 13:10:38 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 06 Aug 2026 13:11:40 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Thu, 06 Aug 2026 13:11:40 GMT
ENV LANG=en_US.utf8
# Thu, 06 Aug 2026 13:12:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 06 Aug 2026 13:12:23 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 06 Aug 2026 13:12:24 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 06 Aug 2026 13:12:24 GMT
ENV PG_MAJOR=18
# Thu, 06 Aug 2026 13:12:24 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/18/bin
# Thu, 06 Aug 2026 13:12:24 GMT
ENV PG_VERSION=18.6-1.pgdg13+2
# Sat, 15 Aug 2026 19:23:22 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Sat, 15 Aug 2026 19:23:23 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Sat, 15 Aug 2026 19:23:24 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Sat, 15 Aug 2026 19:23:24 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Sat, 15 Aug 2026 19:23:24 GMT
VOLUME [/var/lib/postgresql]
# Sat, 15 Aug 2026 19:23:24 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Sat, 15 Aug 2026 19:23:24 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Sat, 15 Aug 2026 19:23:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 15 Aug 2026 19:23:24 GMT
STOPSIGNAL SIGINT
# Sat, 15 Aug 2026 19:23:24 GMT
EXPOSE map[5432/tcp:{}]
# Sat, 15 Aug 2026 19:23:24 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:4b662f844c11eb624262cf201f852ccf968e45c6d3c4ec3fa1c5a288fef35ca8`  
		Last Modified: Wed, 05 Aug 2026 00:57:36 GMT  
		Size: 28.3 MB (28278118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8234640d76d9ee39c0850ea0ce2ff6e2bf02ab20d17fd49ce1d879a9bb1d2cbb`  
		Last Modified: Thu, 06 Aug 2026 15:21:03 GMT  
		Size: 1.2 KB (1169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f95ae142301719c95ea9a0668becad9cca827c09dd16c07a451e87edd27b0daf`  
		Last Modified: Thu, 06 Aug 2026 15:21:05 GMT  
		Size: 6.3 MB (6293014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9ea5606f6dcd7d25fb14aa15a29153dc194c311662e8698076744b7799a318f`  
		Last Modified: Thu, 06 Aug 2026 15:21:03 GMT  
		Size: 1.2 MB (1202052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db687f06ecc62cd292a4f24aa58d78afa6ccdab55d0298b1d4faff8b63e72908`  
		Last Modified: Thu, 06 Aug 2026 15:21:05 GMT  
		Size: 8.2 MB (8203731 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14cdc5eec12fb554145f0f0f4815fd0018039fb881621735263b0086e39c3c91`  
		Last Modified: Thu, 06 Aug 2026 15:21:05 GMT  
		Size: 1.4 MB (1402398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a417eef1f2a8721ba60c3f585f6271da959f6604a996f8f74d2577b42a344f77`  
		Last Modified: Thu, 06 Aug 2026 15:21:05 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a58cdaca0ed0e94f37aed2f774c1a88e9bd5af048fc301684e12e08c2f8ec44b`  
		Last Modified: Thu, 06 Aug 2026 15:21:06 GMT  
		Size: 3.1 KB (3143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4181d83f201247648110273d37ba1ac7bbe00fa9cfab195806be0419e1a05dbf`  
		Last Modified: Sat, 15 Aug 2026 19:26:05 GMT  
		Size: 50.6 MB (50582828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:863e15ce69b24a7a99c0e894a23d33ebb7d5e33486ca7c42342c7a1c826dc6e0`  
		Last Modified: Sat, 15 Aug 2026 19:25:57 GMT  
		Size: 19.4 KB (19426 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44bc29c649b2684e2cbc7711b0c6706def6173220e31c03ebe664c7f5e4d85e5`  
		Last Modified: Sat, 15 Aug 2026 19:25:57 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44083d20f2ed0cd51cebd38a358c3a6c08bb755f4aaa706b77735c9bc442333f`  
		Last Modified: Sat, 15 Aug 2026 19:25:57 GMT  
		Size: 6.1 KB (6112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d78acaa3321485a217222762fae15d5f1502ab9814e5253a7b466dbf79686e86`  
		Last Modified: Sat, 15 Aug 2026 19:25:58 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:latest` - unknown; unknown

```console
$ docker pull postgres@sha256:c64bcebf60319a4fc097f5235aa109e09f8d237a8db05c49162c2d0533df868a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5163180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1596b05a3bb04f0f2a4e40933038dcac53c244c373501c5e4d485a259df7943`

```dockerfile
```

-	Layers:
	-	`sha256:326d5cf93835c9fc661141a97b7a3d02472cda7c70131eb669e60dbebb96409e`  
		Last Modified: Sat, 15 Aug 2026 19:25:58 GMT  
		Size: 5.1 MB (5110629 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3f9d78e481d1c163f729fa02f44f13fd082fbb15f55cd0392ea27eb88c2a481f`  
		Last Modified: Sat, 15 Aug 2026 19:25:56 GMT  
		Size: 52.6 KB (52551 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:latest` - linux; s390x

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

### `postgres:latest` - unknown; unknown

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
