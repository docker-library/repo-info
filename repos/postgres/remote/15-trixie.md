## `postgres:15-trixie`

```console
$ docker pull postgres@sha256:9b1d34adbce1dd07ee6e94b4a2cf698884b89bd44a6c9c12f5da8f3acbfe4957
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
$ docker pull postgres@sha256:c9d304da25223a60a3b3c5ec77b599c59f4a6088950ee612fdb5115d713d100d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.1 MB (158137553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40710ae201396ad27dfd01526815d5ad83c83850e7cb16dce9f0012da66f4689`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:42:14 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 25 Aug 2026 00:42:19 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:42:25 GMT
ENV GOSU_VERSION=1.19
# Tue, 25 Aug 2026 00:42:25 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 25 Aug 2026 00:42:30 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 25 Aug 2026 00:42:30 GMT
ENV LANG=en_US.utf8
# Tue, 25 Aug 2026 00:42:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:42:33 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 25 Aug 2026 00:42:34 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:42:34 GMT
ENV PG_MAJOR=15
# Tue, 25 Aug 2026 00:42:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/15/bin
# Tue, 25 Aug 2026 00:42:34 GMT
ENV PG_VERSION=15.19-1.pgdg13+2
# Tue, 25 Aug 2026 00:42:45 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 25 Aug 2026 00:42:46 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 25 Aug 2026 00:42:46 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 25 Aug 2026 00:42:46 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 25 Aug 2026 00:42:46 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Tue, 25 Aug 2026 00:42:46 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 25 Aug 2026 00:42:46 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:42:46 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 25 Aug 2026 00:42:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:42:46 GMT
STOPSIGNAL SIGINT
# Tue, 25 Aug 2026 00:42:46 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 25 Aug 2026 00:42:46 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:639367129460088118729269458e1c46426f7681ba5138b37e46131c898771b6`  
		Last Modified: Tue, 25 Aug 2026 00:43:05 GMT  
		Size: 1.2 KB (1170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:248bdcd6e95569779749eef77f46c29296089b10b01f9c8a75f71e496d2b8671`  
		Last Modified: Tue, 25 Aug 2026 00:43:05 GMT  
		Size: 6.4 MB (6442959 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d2f3610bf84d6f77478d521d4c054130e3435bfc1cff68a8c083bd6b82e5937`  
		Last Modified: Tue, 25 Aug 2026 00:43:05 GMT  
		Size: 1.3 MB (1256751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22bf49630d7e406bdc036d41c46e5d3e2f9fc1cab14d33094449a160072ea1e8`  
		Last Modified: Tue, 25 Aug 2026 00:43:06 GMT  
		Size: 8.2 MB (8203903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d523576e6b462f2cb3444b5c4fa0853397568c4b4cd9e8d2e460110a4bdb8f3c`  
		Last Modified: Tue, 25 Aug 2026 00:43:06 GMT  
		Size: 1.3 MB (1311676 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d522ad15b8c11400d4a648a9a20139fee2ffd795c00f49a8605b15a0daca67e1`  
		Last Modified: Tue, 25 Aug 2026 00:43:06 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:876153b112246f51e5eb5680c175555998080dcbe093f4f26d7a622beba2a6c8`  
		Last Modified: Tue, 25 Aug 2026 00:43:07 GMT  
		Size: 3.1 KB (3143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04913c3958ed9c2bc009d48c9a0f17de36f778255ceb9d91bd4543837e2fccab`  
		Last Modified: Tue, 25 Aug 2026 00:43:09 GMT  
		Size: 111.1 MB (111108645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a849d36c92a37f65a6598205c6f4967e8e037f7fd5e985483840c92db8210adc`  
		Last Modified: Tue, 25 Aug 2026 00:43:07 GMT  
		Size: 9.9 KB (9939 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6430d172c75c586f002f750cbc65db675e2894228f9e71315109243b660280f`  
		Last Modified: Tue, 25 Aug 2026 00:43:08 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b86905d46631ca939a5585cfe101dda992e7da9a8b56d5df6ff1f50449aff070`  
		Last Modified: Tue, 25 Aug 2026 00:43:08 GMT  
		Size: 168.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2659259e5615213c21cc2b16e5e0ea89f2125dcc70101fa1ba9de2dd85b116e0`  
		Last Modified: Tue, 25 Aug 2026 00:43:08 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f6bdf8e7ebe2740ae1aa81dff5facf146f1e3b8f0331addca4881b508d10a8b`  
		Last Modified: Tue, 25 Aug 2026 00:43:09 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:15-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:7c668af99ee2fdc186ad0b56a67a52d2a934372b0f528fd2bb0cecb89851e0e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5696846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d59cb06db42b77deed61313961a306d97ef785aec7ed47987cb5a3032078462a`

```dockerfile
```

-	Layers:
	-	`sha256:b1d7b6c24718585713b4965c2da31535cfa08483e431ca9e0b34fcf1832f5717`  
		Last Modified: Tue, 25 Aug 2026 00:43:05 GMT  
		Size: 5.6 MB (5642956 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fc31ddb4d8ee87c4daf9fcc0654e7c5dc54291f7a78a5cfee848d460d6f5cc6c`  
		Last Modified: Tue, 25 Aug 2026 00:43:05 GMT  
		Size: 53.9 KB (53890 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:15-trixie` - linux; arm variant v5

```console
$ docker pull postgres@sha256:de9697724a6f10dc5bc0d3bfb00ea3d5171d5eb24656ec03e87907a938b826c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.7 MB (88688792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99249362bec16a46ab5ac1e2884e1de2df1ee3c9efb9e184547d2e6b2d94ffb6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:37:42 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 25 Aug 2026 00:37:52 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:38:03 GMT
ENV GOSU_VERSION=1.19
# Tue, 25 Aug 2026 00:38:03 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 25 Aug 2026 00:38:11 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 25 Aug 2026 00:38:11 GMT
ENV LANG=en_US.utf8
# Tue, 25 Aug 2026 00:38:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:38:18 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 25 Aug 2026 00:38:19 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:38:19 GMT
ENV PG_MAJOR=15
# Tue, 25 Aug 2026 00:38:19 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/15/bin
# Tue, 25 Aug 2026 00:38:19 GMT
ENV PG_VERSION=15.19-1.pgdg13+2
# Tue, 25 Aug 2026 00:50:18 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 25 Aug 2026 00:50:18 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 25 Aug 2026 00:50:18 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 25 Aug 2026 00:50:18 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 25 Aug 2026 00:50:18 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Tue, 25 Aug 2026 00:50:18 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 25 Aug 2026 00:50:18 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:50:19 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 25 Aug 2026 00:50:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:50:19 GMT
STOPSIGNAL SIGINT
# Tue, 25 Aug 2026 00:50:19 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 25 Aug 2026 00:50:19 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:b66794b20e8e770c1e565d310eba254c92677ca1aa2b4db6a81ff11f1d21e516`  
		Last Modified: Mon, 24 Aug 2026 23:20:06 GMT  
		Size: 28.0 MB (27968942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdd710ddb66c4891d652aacf13eac506fea82f6eea0b1eeb0624dd0ffa8b8b4e`  
		Last Modified: Tue, 25 Aug 2026 00:50:30 GMT  
		Size: 1.2 KB (1172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cddaad32f1651de3f330629d7681ae4142da877e0f25cb21bda4efa2a1660b91`  
		Last Modified: Tue, 25 Aug 2026 00:50:31 GMT  
		Size: 5.9 MB (5932393 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fd003bcd7d611fe264c252df21e55674cb3c3fe08be63494ec4a44b6eae6470`  
		Last Modified: Tue, 25 Aug 2026 00:50:31 GMT  
		Size: 1.2 MB (1227509 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fb37fe11eab645989a972382de99665d1175ab0d5e0b1d18db94062f4b0f68a`  
		Last Modified: Tue, 25 Aug 2026 00:50:31 GMT  
		Size: 8.2 MB (8204347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fafaa26d18a75ca0c9bf85424969fb70b28d2c3eab443689dc02a1f72c4c32b`  
		Last Modified: Tue, 25 Aug 2026 00:50:32 GMT  
		Size: 1.3 MB (1317341 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bdb788d1af7cd606ba4f1bcb5be7f8b5752449ad0d0aeab7329cf42074c730d`  
		Last Modified: Tue, 25 Aug 2026 00:50:32 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef5c8316aa004ce6285735115dde9fbb0bfda4bfd5522784a832751b5cd8a4d5`  
		Last Modified: Tue, 25 Aug 2026 00:50:32 GMT  
		Size: 3.1 KB (3145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1906dd7531875d6415f863c93919aefd6ab8b5eef9741996863a49a3fc1cd3ae`  
		Last Modified: Tue, 25 Aug 2026 00:50:34 GMT  
		Size: 44.0 MB (44017305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6eb2f10f4bfb44364c0bde0092b6db073be6fd016090fa192919555b1813839f`  
		Last Modified: Tue, 25 Aug 2026 00:50:33 GMT  
		Size: 9.9 KB (9931 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e5a1c229fa0b275f942f9e02d05787295d6730acefd2a532f419e4676649e5c`  
		Last Modified: Tue, 25 Aug 2026 00:50:33 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8bd6cdd1ce433415bb1d92627048fedff44abeba8b7aee60dc6b70bfa4a4940`  
		Last Modified: Tue, 25 Aug 2026 00:50:34 GMT  
		Size: 168.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe11287f1877b3b3851164e87171183706cfbb81b1947ba5be76d3bddac13f97`  
		Last Modified: Tue, 25 Aug 2026 00:50:34 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:127479fe9d43bcac3e4cbeb9f49efaba6ea40b7bd60aa36a5a099f30446eae7c`  
		Last Modified: Tue, 25 Aug 2026 00:50:34 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:15-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:fdf5eb71fbfa8c72486ceb9bf1076ee620044139613184e316a68f9693f0930d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5084866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9996b8ca803258200df22c963c4b38ed346913655a34db0efec84de740a17c8`

```dockerfile
```

-	Layers:
	-	`sha256:ff60195b4e3bb5aeb12fc1bcefeb77cfd87b46d62df65d8bdfd45dd0ab37d60f`  
		Last Modified: Tue, 25 Aug 2026 00:50:31 GMT  
		Size: 5.0 MB (5030759 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8d9c1d378fa39f349d283d11d82952c2585e7b6f4a0246c8805294493a132ade`  
		Last Modified: Tue, 25 Aug 2026 00:50:30 GMT  
		Size: 54.1 KB (54107 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:15-trixie` - linux; arm variant v7

```console
$ docker pull postgres@sha256:b1c4173466c7a319e5e01377b7c72e659feb9de2d411d15077befc38009cd1b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.1 MB (85069221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8e8160b1cc2be0d8a4d9a42d349838f3f70a7285cb1a3a08ddebfabcf4a88f9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:20:04 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 25 Aug 2026 01:20:11 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:20:20 GMT
ENV GOSU_VERSION=1.19
# Tue, 25 Aug 2026 01:20:20 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 25 Aug 2026 01:20:27 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 25 Aug 2026 01:20:27 GMT
ENV LANG=en_US.utf8
# Tue, 25 Aug 2026 01:20:32 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:20:32 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 25 Aug 2026 01:20:33 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 01:20:33 GMT
ENV PG_MAJOR=15
# Tue, 25 Aug 2026 01:20:33 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/15/bin
# Tue, 25 Aug 2026 01:20:33 GMT
ENV PG_VERSION=15.19-1.pgdg13+2
# Tue, 25 Aug 2026 01:31:34 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 25 Aug 2026 01:31:34 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 25 Aug 2026 01:31:34 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 25 Aug 2026 01:31:34 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 25 Aug 2026 01:31:34 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Tue, 25 Aug 2026 01:31:34 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 25 Aug 2026 01:31:34 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 01:31:34 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 25 Aug 2026 01:31:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 01:31:34 GMT
STOPSIGNAL SIGINT
# Tue, 25 Aug 2026 01:31:34 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 25 Aug 2026 01:31:34 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:d1bbdd3d583b48584ef798f11d4f50ddaea353977c0af7c20de97cf364378aaa`  
		Last Modified: Mon, 24 Aug 2026 23:20:52 GMT  
		Size: 26.2 MB (26219141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9a980700f1947fa77dc30d83454a98be62a9bed066032d722b282ef57478ebd`  
		Last Modified: Tue, 25 Aug 2026 01:31:46 GMT  
		Size: 1.2 KB (1170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5db2c6d87bb0f426729063c10a958e3d611cce838a052df217a7098ce61b40e0`  
		Last Modified: Tue, 25 Aug 2026 01:31:47 GMT  
		Size: 5.5 MB (5497299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:600403828ef2f064384f26baf5fd390969836463301c3b0a3fc06b156f50867b`  
		Last Modified: Tue, 25 Aug 2026 01:31:46 GMT  
		Size: 1.2 MB (1222355 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64d21d1158d162872ba8adfbcc52cf4c3aadba1cf262ba971e5549799eb83c09`  
		Last Modified: Tue, 25 Aug 2026 01:31:47 GMT  
		Size: 8.2 MB (8204112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ef2ca88da2bb0591e490009cff5f810c97ba6485307a4bf9a180874c185bd58`  
		Last Modified: Tue, 25 Aug 2026 01:31:48 GMT  
		Size: 1.2 MB (1172643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f93204e26d7950b18f96323aaff39a56ca7e1f58cc01c596296248cee6085481`  
		Last Modified: Tue, 25 Aug 2026 01:31:48 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:daeaf3017b7f1851d3341d5ab9ee96a0caccf8b155a9df13fb135932815f30a8`  
		Last Modified: Tue, 25 Aug 2026 01:31:48 GMT  
		Size: 3.1 KB (3141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7058f2e1b13de231a21d7e071d1ea816cc496500d3f73588c22dbb454b2a43a`  
		Last Modified: Tue, 25 Aug 2026 01:31:49 GMT  
		Size: 42.7 MB (42732710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e7542183eee6f1a47c22bdd580d7693bfa2257b5278eacef29f8b0049a83d1e`  
		Last Modified: Tue, 25 Aug 2026 01:31:49 GMT  
		Size: 9.9 KB (9942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73c2c21d17d9607e6927d91c513b0c00719e686f337729825f39a5295a1ca147`  
		Last Modified: Tue, 25 Aug 2026 01:31:49 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bd515f0f49a1bb710c1c0d1360501f0ca193b0a17d33f5202e1cb4938294d13`  
		Last Modified: Tue, 25 Aug 2026 01:31:49 GMT  
		Size: 167.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec88bc5b3e536d0416134aef73e3e1ffa3c7f140f58aeba1e2703202b992fb3b`  
		Last Modified: Tue, 25 Aug 2026 01:31:50 GMT  
		Size: 6.1 KB (6112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5182aa64829d1a76c45013b96b62694400fde857d3bb3c2a85cb99ccd7ed306`  
		Last Modified: Tue, 25 Aug 2026 01:31:50 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:15-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:064174bb3e3b254b901083662b7da6b18ff3c481ec03fe57b8296ea78459fea3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5084165 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86c58ca28383977f9c5e5c791eb3ef6f1b0dfc5a7bf9678cb477080ebebfceeb`

```dockerfile
```

-	Layers:
	-	`sha256:c07375a060d4d7cefdf26464b242e47af1473f8865d76e42dde0ebc4b9a5842d`  
		Last Modified: Tue, 25 Aug 2026 01:31:47 GMT  
		Size: 5.0 MB (5030058 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1c3f9ecc66107fd578bef5a859c20640956ccd9b5dc7eb4ce7fdb9a729e3c32b`  
		Last Modified: Tue, 25 Aug 2026 01:31:46 GMT  
		Size: 54.1 KB (54107 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:15-trixie` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:0b90daad6708473be4845619f4663bd8898ce926e62cab8a6da796a278eb28f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.8 MB (156760954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:057aa3fc66d256e0966cb6595edef6ab9b24761a9f5a03bec715417592a95f5a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:42:14 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 25 Aug 2026 00:42:20 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:42:28 GMT
ENV GOSU_VERSION=1.19
# Tue, 25 Aug 2026 00:42:28 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 25 Aug 2026 00:42:34 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 25 Aug 2026 00:42:34 GMT
ENV LANG=en_US.utf8
# Tue, 25 Aug 2026 00:42:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:42:38 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 25 Aug 2026 00:42:39 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:42:39 GMT
ENV PG_MAJOR=15
# Tue, 25 Aug 2026 00:42:39 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/15/bin
# Tue, 25 Aug 2026 00:42:39 GMT
ENV PG_VERSION=15.19-1.pgdg13+2
# Tue, 25 Aug 2026 00:44:23 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 25 Aug 2026 00:44:24 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 25 Aug 2026 00:44:24 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 25 Aug 2026 00:44:24 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 25 Aug 2026 00:44:24 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Tue, 25 Aug 2026 00:44:24 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 25 Aug 2026 00:44:24 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:44:24 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 25 Aug 2026 00:44:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:44:24 GMT
STOPSIGNAL SIGINT
# Tue, 25 Aug 2026 00:44:24 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 25 Aug 2026 00:44:24 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:639367129460088118729269458e1c46426f7681ba5138b37e46131c898771b6`  
		Last Modified: Tue, 25 Aug 2026 00:43:05 GMT  
		Size: 1.2 KB (1170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7dc84d6a4aa2e4343efc9e5c259e81b1d79cfab554b1a56adf09d96e4c9e900`  
		Last Modified: Tue, 25 Aug 2026 00:43:18 GMT  
		Size: 6.2 MB (6234961 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db5f4502682d00fd24ad6fac2a97e8adb1ac1ee774d13b0613dc45ad9fc796a0`  
		Last Modified: Tue, 25 Aug 2026 00:43:17 GMT  
		Size: 1.2 MB (1209587 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a4fdeb764c39879187fba8e6eca31e4fc67031c94bdaa6d82fe7d4edf84986d`  
		Last Modified: Tue, 25 Aug 2026 00:43:18 GMT  
		Size: 8.2 MB (8204064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9d76beabaee731767c11e50bb90eff93a7fa492478f7b528ea8b18556135763`  
		Last Modified: Tue, 25 Aug 2026 00:43:18 GMT  
		Size: 1.2 MB (1220625 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a3d617a86b0668ef085e9e625bc44349aeab5634ded09264576a801c9f84f32`  
		Last Modified: Tue, 25 Aug 2026 00:43:19 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9c6f60102f8f948ed732666162d06e6eb97342e5f362cf7c218cc5c61816f8b`  
		Last Modified: Tue, 25 Aug 2026 00:43:19 GMT  
		Size: 3.1 KB (3144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60ca94dbe45a271b60bcaab27274c3717a91dfd4bdf98f09c73d335d0cc8ccca`  
		Last Modified: Tue, 25 Aug 2026 00:44:45 GMT  
		Size: 109.7 MB (109711178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1830f50bf6d17e083f24e054eda46d3b73016505eeb6303c02789abc3e043519`  
		Last Modified: Tue, 25 Aug 2026 00:44:42 GMT  
		Size: 9.9 KB (9935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83d8ea121b1dfb9d2eff107f923e83de456510f29aa6331f225de74dc2b35f69`  
		Last Modified: Tue, 25 Aug 2026 00:44:42 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3390712cd5bfc551b95134ff621accbf74e63fe752b7fad74b438b58f6cd958`  
		Last Modified: Tue, 25 Aug 2026 00:44:42 GMT  
		Size: 169.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60ae870d999a91615ddedcb0d33f267a3c32c25dbebbb0cf1e05de5d5aea0721`  
		Last Modified: Tue, 25 Aug 2026 00:44:44 GMT  
		Size: 6.1 KB (6108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf0d2ce1c8c9cf9127ebdb59837b9a601df063c71578a3a4041286ea70a7fd4f`  
		Last Modified: Tue, 25 Aug 2026 00:44:44 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:15-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:9d43a840522f472c7805f5319954fd7d223a770df8d1f4ee17f8b151f6ffbaff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5703453 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b434402f300d41dd02fb6d93391ab3a336a9f852fb3679b9c9aeecd7a27f8991`

```dockerfile
```

-	Layers:
	-	`sha256:210b0aeabd5f2a93ad8490da11fddf1a741073f8d472a2a7f6ad8d704205b73a`  
		Last Modified: Tue, 25 Aug 2026 00:44:43 GMT  
		Size: 5.6 MB (5649294 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ccd76575dc6d1d9b1786de7306c6f0f92deb721db31a1985cfd3e8cc3b65b9a6`  
		Last Modified: Tue, 25 Aug 2026 00:44:42 GMT  
		Size: 54.2 KB (54159 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:15-trixie` - linux; 386

```console
$ docker pull postgres@sha256:fd21f211f9bf005362ba8e3bd0a26017773f81ce3b59afc0c552779f55ce0c99
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.7 MB (94655232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89232d440073bc1634ebbfd386ff2939fda3f88fd29f019d3b5849d3ec5ec3e5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:40:35 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 25 Aug 2026 00:40:42 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:40:50 GMT
ENV GOSU_VERSION=1.19
# Tue, 25 Aug 2026 00:40:50 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 25 Aug 2026 00:40:56 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 25 Aug 2026 00:40:56 GMT
ENV LANG=en_US.utf8
# Tue, 25 Aug 2026 00:41:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:41:00 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 25 Aug 2026 00:41:01 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:41:01 GMT
ENV PG_MAJOR=15
# Tue, 25 Aug 2026 00:41:01 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/15/bin
# Tue, 25 Aug 2026 00:41:01 GMT
ENV PG_VERSION=15.19-1.pgdg13+2
# Tue, 25 Aug 2026 00:49:52 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 25 Aug 2026 00:49:52 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 25 Aug 2026 00:49:52 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 25 Aug 2026 00:49:52 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 25 Aug 2026 00:49:52 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Tue, 25 Aug 2026 00:49:52 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 25 Aug 2026 00:49:52 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:49:52 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 25 Aug 2026 00:49:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:49:52 GMT
STOPSIGNAL SIGINT
# Tue, 25 Aug 2026 00:49:52 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 25 Aug 2026 00:49:52 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:53dd1701fe55fa5affd8b9c6d6572dd8ec54300469e314130f40456ca2b957f3`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 31.3 MB (31303397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:564e5942f97f7c493a3f8a5c980ed01025a5b2a3d3ccd1e61998f804b24346f9`  
		Last Modified: Tue, 25 Aug 2026 00:50:04 GMT  
		Size: 1.2 KB (1171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d1130a46594f55bc41f6f0b810452195fb145d02e25a7a2d73f0c3ee7289def`  
		Last Modified: Tue, 25 Aug 2026 00:50:05 GMT  
		Size: 6.6 MB (6631350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:619b6515a5b125ab53b038288e670042f72049a9b9842d6afdfec38b4863bdfb`  
		Last Modified: Tue, 25 Aug 2026 00:50:05 GMT  
		Size: 1.2 MB (1225835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:410ef16c3f591a9ed1c0d5bb669beaef734c56700d918f88cc2d212c2206a9c6`  
		Last Modified: Tue, 25 Aug 2026 00:50:05 GMT  
		Size: 8.2 MB (8204047 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da6ef82472670244e1779c426c6b41424388f2289da4b53e7e4a9f352594f403`  
		Last Modified: Tue, 25 Aug 2026 00:50:05 GMT  
		Size: 1.3 MB (1308290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:617df9e3862d2cd4999ca0ebc332c3e2fab99dcf102ca6b3f2e540956a8763c1`  
		Last Modified: Tue, 25 Aug 2026 00:50:06 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fec9f3a9c97ab67e9c5a88cc7df32395b6fd43ee88d4a4ea7aa3123311fdae7d`  
		Last Modified: Tue, 25 Aug 2026 00:50:06 GMT  
		Size: 3.1 KB (3140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:483eb31d2dc65f84b6ca76699002d79cda180e9ead48e22e6b94cae28cd61ed1`  
		Last Modified: Tue, 25 Aug 2026 00:50:07 GMT  
		Size: 46.0 MB (45961362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29f69b2240fa80b4959481e9b34eaa8ec1b36353ea08c467dc9fe3ba73ac9e9c`  
		Last Modified: Tue, 25 Aug 2026 00:50:07 GMT  
		Size: 9.9 KB (9934 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38dce63a5bafe0d9219c8831e44e6ab7c8a82d09081d7d4a18e6f8c5cd171e9a`  
		Last Modified: Tue, 25 Aug 2026 00:50:07 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7a8b2eb957d91fc628ad915b309903ba7da9857137dd1550c0b66be70ad3f7e`  
		Last Modified: Tue, 25 Aug 2026 00:50:07 GMT  
		Size: 168.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:963bcfd6f95fbb434131009c52c5fd48feb1140296a19c0073139dd25fe8ab5a`  
		Last Modified: Tue, 25 Aug 2026 00:50:08 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:163be8d746eb19180094275de6a5e0f56e578ed8c5379251dd4b24aa9cbda0ca`  
		Last Modified: Tue, 25 Aug 2026 00:50:08 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:15-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:74e6d273e53f20093273685155db74ff5e063bd4b1499ee570b8284e2d31fa5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5079956 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b967b349f863ee3d1683ed654c491a2d4f0c174a4731e058a887881edd4dcb9`

```dockerfile
```

-	Layers:
	-	`sha256:29b189223036b6c44e71cc5114ca378b7f209f981482d42f73a689db0b901268`  
		Last Modified: Tue, 25 Aug 2026 00:50:05 GMT  
		Size: 5.0 MB (5026127 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c5be14c60ac45b779b7ae8fbed42436f6fce06f57f7690552a3ca1a6cf761f67`  
		Last Modified: Tue, 25 Aug 2026 00:50:04 GMT  
		Size: 53.8 KB (53829 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:15-trixie` - linux; ppc64le

```console
$ docker pull postgres@sha256:a4d48f3ccb8bf7e7737f5fa87859b77a6c1e95c8be43d99862a8f02d316e5ca3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.4 MB (170393260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d6ab8849b442779eb72ec9747e2b91d344f8532c5b3eb4f84b2c19a215b03e2`
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
ENV PG_MAJOR=15
# Tue, 25 Aug 2026 03:11:21 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/15/bin
# Tue, 25 Aug 2026 03:11:21 GMT
ENV PG_VERSION=15.19-1.pgdg13+2
# Tue, 25 Aug 2026 03:20:10 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 25 Aug 2026 03:20:11 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 25 Aug 2026 03:20:12 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 25 Aug 2026 03:20:12 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 25 Aug 2026 03:20:13 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Tue, 25 Aug 2026 03:20:13 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 25 Aug 2026 03:20:15 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 03:20:17 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 25 Aug 2026 03:20:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 03:20:17 GMT
STOPSIGNAL SIGINT
# Tue, 25 Aug 2026 03:20:17 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 25 Aug 2026 03:20:17 GMT
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
	-	`sha256:f2b69ba99a582e00576594b40fbb284e3145f2f935954be2e9c3389cd42e37fd`  
		Last Modified: Tue, 25 Aug 2026 03:20:58 GMT  
		Size: 118.9 MB (118866257 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0537a0661b3c7f2b136a4e9ceadfac6b26cdfb89b99b5cca611b59b6faf26f2`  
		Last Modified: Tue, 25 Aug 2026 03:20:55 GMT  
		Size: 9.9 KB (9934 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad6519a1ead7d08f633add7b85b3bd6ff7a734851b5dc940265d232681961a12`  
		Last Modified: Tue, 25 Aug 2026 03:20:55 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df3ba5452dc2a462171319c06b3bc4a02897556b68005143d9315acaf8f136a5`  
		Last Modified: Tue, 25 Aug 2026 03:20:55 GMT  
		Size: 168.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2991c71b234f259432f8ac98bfae92bdc6023132a1bfd39d04c02e3cb409aa2e`  
		Last Modified: Tue, 25 Aug 2026 03:20:56 GMT  
		Size: 6.1 KB (6108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70aac219c1c920a687d8f0c85b02a0f41b7e5d4ed6eea79bdbebc35db22cecbd`  
		Last Modified: Tue, 25 Aug 2026 03:20:56 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:15-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:374d507f58e9317b118fe0c8c8b85a16a29c1b66b98d5f87f21b4919e27772c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5703525 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:721cab3eed7b5af6ede28e74d070cb1506b8722850d893e8cd589a0741fe49be`

```dockerfile
```

-	Layers:
	-	`sha256:3b3bbfb2ff0358902fac81edf45451c94c5214f922c557fe8b2c1aced137435e`  
		Last Modified: Tue, 25 Aug 2026 03:20:55 GMT  
		Size: 5.6 MB (5649569 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8cbc37c1dbb57f76fc2cf6ebdc628e3be0f8d354d3fa45003283cae613b025e3`  
		Last Modified: Tue, 25 Aug 2026 03:20:54 GMT  
		Size: 54.0 KB (53956 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:15-trixie` - linux; riscv64

```console
$ docker pull postgres@sha256:1ca8a56769f89edc933e6e065bd539d6a4743e49fc63a8b03dbe4917ab2ac272
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.7 MB (92678206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43a0c87e484f47ab0cb5607aa22cb8f9d2d7dc84cb4ecb809eef221c9d598bdb`
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
ENV PG_MAJOR=15
# Wed, 26 Aug 2026 12:00:10 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/15/bin
# Wed, 26 Aug 2026 12:00:10 GMT
ENV PG_VERSION=15.19-1.pgdg13+2
# Fri, 28 Aug 2026 03:49:12 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Fri, 28 Aug 2026 03:49:13 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Fri, 28 Aug 2026 03:49:13 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Fri, 28 Aug 2026 03:49:13 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 28 Aug 2026 03:49:13 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Fri, 28 Aug 2026 03:49:13 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 28 Aug 2026 03:49:14 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Fri, 28 Aug 2026 03:49:14 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Fri, 28 Aug 2026 03:49:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 28 Aug 2026 03:49:14 GMT
STOPSIGNAL SIGINT
# Fri, 28 Aug 2026 03:49:14 GMT
EXPOSE map[5432/tcp:{}]
# Fri, 28 Aug 2026 03:49:14 GMT
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
	-	`sha256:2fecb023b3e0fedbe3ce52904a49acc9473a3be8dc91e04c44308d87427adb09`  
		Last Modified: Fri, 28 Aug 2026 03:51:43 GMT  
		Size: 44.6 MB (44640060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3f596d032430d81a0ca22ad9721f4cbad5421cbc9375d7cd946614d78a9a37d`  
		Last Modified: Fri, 28 Aug 2026 03:51:36 GMT  
		Size: 9.9 KB (9946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63f8d6e4b6b756224a7898f3f498c362abf7cc37b3fb96da003c4ebf2ffc52ef`  
		Last Modified: Fri, 28 Aug 2026 03:51:36 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d498634acb16d928e36e78b71fce56690e4c5bca00497dcacf9071b7bcef2e91`  
		Last Modified: Fri, 28 Aug 2026 03:51:36 GMT  
		Size: 168.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d96ad1b169a79e5f5bc46eee82780f091d94b24c6397b88fa4633303260c5ef`  
		Last Modified: Fri, 28 Aug 2026 03:51:37 GMT  
		Size: 6.1 KB (6112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cd3e491f3659e2a5e3f775548e099e740e62c15d5ca8aedb36910de4b8382ee`  
		Last Modified: Fri, 28 Aug 2026 03:51:37 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:15-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:a216abe7e5e3a3d78f9b89aae0489f0c5ea032fcfcec8edd241b9c9b11e5ed3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5074977 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec6db8c935702c4250b348f2d74769a74856b9e5667a3a4e5ad9f928d319673a`

```dockerfile
```

-	Layers:
	-	`sha256:1574942691befc80209f66415e97635e7077a3c03db113de02269588ded6a79a`  
		Last Modified: Fri, 28 Aug 2026 03:51:36 GMT  
		Size: 5.0 MB (5021028 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:00e851a8885901946a27d785f2a7bab273f0069be121490d2d28b7c51d1fc821`  
		Last Modified: Fri, 28 Aug 2026 03:51:35 GMT  
		Size: 53.9 KB (53949 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:15-trixie` - linux; s390x

```console
$ docker pull postgres@sha256:2041e6b56111e6117936952c357e5ac6c567c754b1cfba0e0e8e4f0816a2c52b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.7 MB (172671704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:485c24702e734f2ea04705964779cbd0ba87560dc606e1a153d6987b1b78c1b1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:01:35 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 25 Aug 2026 01:01:43 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:01:52 GMT
ENV GOSU_VERSION=1.19
# Tue, 25 Aug 2026 01:01:52 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 25 Aug 2026 01:01:58 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 25 Aug 2026 01:01:58 GMT
ENV LANG=en_US.utf8
# Tue, 25 Aug 2026 01:02:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:02:06 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 25 Aug 2026 01:02:07 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 01:02:07 GMT
ENV PG_MAJOR=15
# Tue, 25 Aug 2026 01:02:07 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/15/bin
# Tue, 25 Aug 2026 01:02:07 GMT
ENV PG_VERSION=15.19-1.pgdg13+2
# Tue, 25 Aug 2026 01:29:40 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 25 Aug 2026 01:29:41 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 25 Aug 2026 01:29:41 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 25 Aug 2026 01:29:41 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 25 Aug 2026 01:29:41 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Tue, 25 Aug 2026 01:29:41 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 25 Aug 2026 01:29:41 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 01:29:41 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 25 Aug 2026 01:29:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 01:29:41 GMT
STOPSIGNAL SIGINT
# Tue, 25 Aug 2026 01:29:41 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 25 Aug 2026 01:29:41 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:3b49fae03f57292f29c23992f1f40c8e724a3c2e43e39a20e805a76ce5694095`  
		Last Modified: Mon, 24 Aug 2026 23:20:17 GMT  
		Size: 29.9 MB (29867719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13a711bfb061edfa1be8b6ee1f43c5c8709e12a324425f2bbf3e601a2fe7975b`  
		Last Modified: Tue, 25 Aug 2026 01:16:44 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f79e2ffeb9dc03bce71a85fdfdeae755e6c45d3b566abdcd5f68e4533b59e25`  
		Last Modified: Tue, 25 Aug 2026 01:16:44 GMT  
		Size: 6.4 MB (6408467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8eb853d5446e08ea9412c016f4719dfb269c2e45e5e4c467ad2bf5085cd67a7`  
		Last Modified: Tue, 25 Aug 2026 01:16:44 GMT  
		Size: 1.2 MB (1230233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:827fc02dc4fb2bb5adbc91ab17826cfa0b3be1846e334bd68423843d9aeabd98`  
		Last Modified: Tue, 25 Aug 2026 01:16:44 GMT  
		Size: 8.3 MB (8258996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1121bf664bda86d0ce7ca17802bcc08b7340fed487f9357f7c465195ec7a7d88`  
		Last Modified: Tue, 25 Aug 2026 01:16:45 GMT  
		Size: 1.4 MB (1398239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5264a5bbe7f735c501e09e8ed18de956324f0fbf90330495b83816c370b159e`  
		Last Modified: Tue, 25 Aug 2026 01:16:45 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8af369ae617dd7c3714d9093ef4a92979888bd8db58b60932204dd1fdb9cc99`  
		Last Modified: Tue, 25 Aug 2026 01:16:45 GMT  
		Size: 3.1 KB (3145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b87069f2808d3a4432647d62dc8a20b55a2f8f3a620a154fb9c863b7dae681a`  
		Last Modified: Tue, 25 Aug 2026 01:30:13 GMT  
		Size: 125.5 MB (125487092 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b94101fb45026e1af59d6f62aca04cbb62328cab15b9ea7aad56e927a797d7f`  
		Last Modified: Tue, 25 Aug 2026 01:30:11 GMT  
		Size: 9.9 KB (9938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6168731c5901f87255601c5d0da3511fa7690021449ac6f5236a905b6e7c736e`  
		Last Modified: Tue, 25 Aug 2026 01:30:10 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c583267d2e55fa41459ff9966e957a6c34390143f3c1656bdab3baf8bfc7895`  
		Last Modified: Tue, 25 Aug 2026 01:30:11 GMT  
		Size: 167.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa044dcfe34d814454d9d7bad2c828439de4bda4246617c605c2b7f0697f580c`  
		Last Modified: Tue, 25 Aug 2026 01:30:11 GMT  
		Size: 6.1 KB (6112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8014898496f7121216f9359f4b83bff466aecf01c6f2349421e37ee1c95c088`  
		Last Modified: Tue, 25 Aug 2026 01:30:11 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:15-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:d05a702bc818e79910600906587d29a1239869ea9bc11e332fcea3b1b3abfb53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5713541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7869e6e28d40f28305e47b3a2cf5c0521ea5fab025b0e4266278852b0aaea14`

```dockerfile
```

-	Layers:
	-	`sha256:284c5e8832d09993dfdcb28d7c9c741fcf2a18b7979e7e8d54d671c016af0554`  
		Last Modified: Tue, 25 Aug 2026 01:30:11 GMT  
		Size: 5.7 MB (5659651 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:47e5abdae060eb684b5270e82d18a24d30e48c61b7f5845bdfeaa829494b3bab`  
		Last Modified: Tue, 25 Aug 2026 01:30:10 GMT  
		Size: 53.9 KB (53890 bytes)  
		MIME: application/vnd.in-toto+json
