## `postgres:latest`

```console
$ docker pull postgres@sha256:311136771dca6826c3b6e691ebf8cb6e896e165074bc57a728f9619f25f0c4c7
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
$ docker pull postgres@sha256:0c49c0c906cb405ea65e70c284570fee91c7750ca9336369afc0edf4fce211db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.4 MB (162357416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b44b7198b7d27b9e882435752cc4996551a9c513b615fba0bca6d5c53b51a1f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1782172800'
# Tue, 07 Jul 2026 17:43:57 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 07 Jul 2026 17:44:03 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 17:44:09 GMT
ENV GOSU_VERSION=1.19
# Tue, 07 Jul 2026 17:44:09 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 07 Jul 2026 17:44:14 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 07 Jul 2026 17:44:14 GMT
ENV LANG=en_US.utf8
# Tue, 07 Jul 2026 17:44:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 17:44:17 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 07 Jul 2026 17:44:18 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 07 Jul 2026 17:44:18 GMT
ENV PG_MAJOR=18
# Tue, 07 Jul 2026 17:44:18 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/18/bin
# Tue, 07 Jul 2026 17:44:18 GMT
ENV PG_VERSION=18.4-1.pgdg13+1
# Tue, 07 Jul 2026 17:44:34 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 07 Jul 2026 17:44:34 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 07 Jul 2026 17:44:34 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 07 Jul 2026 17:44:34 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Tue, 07 Jul 2026 17:44:34 GMT
VOLUME [/var/lib/postgresql]
# Tue, 07 Jul 2026 17:44:34 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 17:44:34 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 07 Jul 2026 17:44:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 17:44:34 GMT
STOPSIGNAL SIGINT
# Tue, 07 Jul 2026 17:44:34 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 07 Jul 2026 17:44:34 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:e95a6c7ea7d49b37920899b023ecd0e32796c976c1748491f76cae53ba86d13a`  
		Last Modified: Wed, 24 Jun 2026 00:28:31 GMT  
		Size: 29.8 MB (29785419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7807c271bb493ef18d71ec9b40ea8c50a398375f189a87900ad2f30b14ceb2ae`  
		Last Modified: Tue, 07 Jul 2026 17:44:54 GMT  
		Size: 1.2 KB (1169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9613499b336db707e8904d917357af79a944a86045086d9c9852d5b2db34906`  
		Last Modified: Tue, 07 Jul 2026 17:44:55 GMT  
		Size: 6.4 MB (6442994 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ac0cd64fedd609a46f356f9a0aa72b9460f0f20e5c1d3705264580f42a976c9`  
		Last Modified: Tue, 07 Jul 2026 17:44:55 GMT  
		Size: 1.3 MB (1256717 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efcdc0214dee2041e2cb9a8b24aff2ca17a2da402151b6b9c1290d6b63c206cd`  
		Last Modified: Tue, 07 Jul 2026 17:44:55 GMT  
		Size: 8.2 MB (8203873 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaffb915d976aaad5ecb1970863e94d7f792f926854ca81ae8d0c58f88f247a9`  
		Last Modified: Tue, 07 Jul 2026 17:44:56 GMT  
		Size: 1.3 MB (1311633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0166401ca2af614683080359eb75c0f8cdfe9a42635e489c7c869e782511330c`  
		Last Modified: Tue, 07 Jul 2026 17:44:56 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8863673973a8f24320926c0eff1a5eaf78bf6874f40ab81b58fbd4b728b49622`  
		Last Modified: Tue, 07 Jul 2026 17:44:56 GMT  
		Size: 3.1 KB (3145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e39e21836dd437f439897e1994bdae4ef9990a633522aaf12b8505921cc065d0`  
		Last Modified: Tue, 07 Jul 2026 17:44:59 GMT  
		Size: 115.3 MB (115326590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67731b56505c1ccc7423051efd52232e56905551215454ff5de49b1c449ca108`  
		Last Modified: Tue, 07 Jul 2026 17:44:57 GMT  
		Size: 19.3 KB (19332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8885dcf3d1328b301068e8fd692863336c853c3ba3d2e59264540396c70c9696`  
		Last Modified: Tue, 07 Jul 2026 17:44:57 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4adaae5e556eea113e07a3fb6adaffd90503bec00166fa6ecad4db057322e5f`  
		Last Modified: Tue, 07 Jul 2026 17:44:58 GMT  
		Size: 6.1 KB (6111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db9683545d97695a0e1f101424c9abc7ca12ecfae41d23571a419683ff42514e`  
		Last Modified: Tue, 07 Jul 2026 17:44:59 GMT  
		Size: 188.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:latest` - unknown; unknown

```console
$ docker pull postgres@sha256:d1b529cd7a505ecc035704d77127b86496d05a009dc95a778f07e1a39ec8bbb0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6009397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2c8757e70e317a07a37aa035ce2513b914d6ba697900ff565a466def8711ff9`

```dockerfile
```

-	Layers:
	-	`sha256:e053daaecc0217f4ddc5f263388f59ac88c2ebc5a5764c5b22261b62ded31453`  
		Last Modified: Tue, 07 Jul 2026 17:44:55 GMT  
		Size: 6.0 MB (5956939 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aeba4707dfda9c82b733a700d1ab868f55eff25be1f6b9b1a49ac842181924a0`  
		Last Modified: Tue, 07 Jul 2026 17:44:54 GMT  
		Size: 52.5 KB (52458 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:latest` - linux; arm variant v5

```console
$ docker pull postgres@sha256:715ff8cd6396562d1a4c64fb5af5b899c8b8bf40d15bc8c2965e414ca0c8ba70
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.5 MB (91496233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e4f035a0b93bcc6d49dc91259ea02ec681e9de5fc305eb72ce568c05277cb5f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1782172800'
# Tue, 07 Jul 2026 17:43:42 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 07 Jul 2026 17:43:55 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 17:44:05 GMT
ENV GOSU_VERSION=1.19
# Tue, 07 Jul 2026 17:44:05 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 07 Jul 2026 17:44:14 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 07 Jul 2026 17:44:14 GMT
ENV LANG=en_US.utf8
# Tue, 07 Jul 2026 17:44:21 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 17:44:21 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 07 Jul 2026 17:44:21 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 07 Jul 2026 17:44:21 GMT
ENV PG_MAJOR=18
# Tue, 07 Jul 2026 17:44:21 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/18/bin
# Tue, 07 Jul 2026 17:44:21 GMT
ENV PG_VERSION=18.4-1.pgdg13+1
# Tue, 07 Jul 2026 17:57:30 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 07 Jul 2026 17:57:30 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 07 Jul 2026 17:57:30 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 07 Jul 2026 17:57:30 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Tue, 07 Jul 2026 17:57:30 GMT
VOLUME [/var/lib/postgresql]
# Tue, 07 Jul 2026 17:57:30 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 17:57:30 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 07 Jul 2026 17:57:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 17:57:30 GMT
STOPSIGNAL SIGINT
# Tue, 07 Jul 2026 17:57:30 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 07 Jul 2026 17:57:30 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:da43bc6a07a9cd7cc23faa538adc0797482747316b5a85b9f3f94ed17f6c1a2a`  
		Last Modified: Wed, 24 Jun 2026 00:28:12 GMT  
		Size: 28.0 MB (27959221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9dffa2408737b85d1efaf7e2c00bc77653e4fdedfac3210b78232353cf2b680`  
		Last Modified: Tue, 07 Jul 2026 17:57:43 GMT  
		Size: 1.2 KB (1175 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34376ab41bfeb27837049492af8e6ce0c096b51ab7843431e57211903429a234`  
		Last Modified: Tue, 07 Jul 2026 17:57:44 GMT  
		Size: 5.9 MB (5932344 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6babd6877f5a05fdf7e88d47ee933f2d2c8d84602293c9df40a4bd80d412b23a`  
		Last Modified: Tue, 07 Jul 2026 17:57:44 GMT  
		Size: 1.2 MB (1227449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3264c01614854bb0949e3e8d7e87ed711f8fb11c56d18daa81deda8d87d11ef`  
		Last Modified: Tue, 07 Jul 2026 17:57:44 GMT  
		Size: 8.2 MB (8204333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e42758b27192f1e451807787ccb03ce4d7530b03db6664491c50150834a5c75`  
		Last Modified: Tue, 07 Jul 2026 17:57:45 GMT  
		Size: 1.3 MB (1317321 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd2cadc3e81e880c8ac8a02dc12c39e51d8edee89053bdaba024d23d142bb139`  
		Last Modified: Tue, 07 Jul 2026 17:44:56 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37589269a46e5a00e75618009cb43e19d98e6680b8d48d72d1af2d30336f691c`  
		Last Modified: Tue, 07 Jul 2026 17:57:45 GMT  
		Size: 3.1 KB (3142 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f24e322aa3d88578a8aa4844da12deb0c698826adb99970d0d89b16d57fb912d`  
		Last Modified: Tue, 07 Jul 2026 17:57:47 GMT  
		Size: 46.8 MB (46825380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c943971d606f1e51232ff660cf2f3c0654fcfff64aaa707b378aaf9127759b4`  
		Last Modified: Tue, 07 Jul 2026 17:57:46 GMT  
		Size: 19.3 KB (19327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e357ebb6f5273011d600b75127ef6a605ef9d1088ebf327b92f9027f10605dbd`  
		Last Modified: Tue, 07 Jul 2026 17:57:46 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c77f7a115bcc2af25fae8ba82093306fe291ba0b1703faf2dbb7783869d2e688`  
		Last Modified: Tue, 07 Jul 2026 17:57:47 GMT  
		Size: 6.1 KB (6111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3eeb4ac5fbe0711ce12dd42de1633ef464c4c6a9a588becad9647fd5f4686f87`  
		Last Modified: Tue, 07 Jul 2026 17:57:47 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:latest` - unknown; unknown

```console
$ docker pull postgres@sha256:cdd7738eb2411436803f1218d720c87d1ace208a1f7684a614806783f62cfe32
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5172761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc772a0905d73fc2906d20ee65cf5e8d079ad5d8057ddef09ab06d61dd9915d0`

```dockerfile
```

-	Layers:
	-	`sha256:e149eccb105b2d69b36df28da6257e2ab9528fa2ad8849f84fd1ceb75bc61454`  
		Last Modified: Tue, 07 Jul 2026 17:57:44 GMT  
		Size: 5.1 MB (5120082 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:841eca063d3ee1bcdd0b3532ad3f921db50460f901df3fb51088705b575ea45f`  
		Last Modified: Tue, 07 Jul 2026 17:57:44 GMT  
		Size: 52.7 KB (52679 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:latest` - linux; arm variant v7

```console
$ docker pull postgres@sha256:6d81a3ed05fdb5bc98ec90d9b8faf7b6e6e0899b9a9a55c7f39061ad7d7aed2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.8 MB (87805637 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99d32e2171c91e25b31b529dd066382288a1be1f187e85b8e3d65db8aa886de7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1782172800'
# Tue, 07 Jul 2026 17:42:53 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 07 Jul 2026 17:43:00 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 17:43:08 GMT
ENV GOSU_VERSION=1.19
# Tue, 07 Jul 2026 17:43:08 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 07 Jul 2026 17:43:15 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 07 Jul 2026 17:43:15 GMT
ENV LANG=en_US.utf8
# Tue, 07 Jul 2026 17:43:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 17:43:20 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 07 Jul 2026 17:43:21 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 07 Jul 2026 17:43:21 GMT
ENV PG_MAJOR=18
# Tue, 07 Jul 2026 17:43:21 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/18/bin
# Tue, 07 Jul 2026 17:43:21 GMT
ENV PG_VERSION=18.4-1.pgdg13+1
# Tue, 07 Jul 2026 17:55:42 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 07 Jul 2026 17:55:43 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 07 Jul 2026 17:55:43 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 07 Jul 2026 17:55:43 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Tue, 07 Jul 2026 17:55:43 GMT
VOLUME [/var/lib/postgresql]
# Tue, 07 Jul 2026 17:55:43 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 17:55:43 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 07 Jul 2026 17:55:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 17:55:43 GMT
STOPSIGNAL SIGINT
# Tue, 07 Jul 2026 17:55:43 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 07 Jul 2026 17:55:43 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:81c84b0273952340067af970e1fe77a42ea83b4ed1a53319e258d5f1077848f0`  
		Last Modified: Wed, 24 Jun 2026 00:28:38 GMT  
		Size: 26.2 MB (26211051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ff4c58bef6d65a1534bd5fd6d677aaf558f5be36d2ca57874e5f4da590141b8`  
		Last Modified: Tue, 07 Jul 2026 17:55:55 GMT  
		Size: 1.2 KB (1170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32b92fa09c0983f38398d23f5ac262e449a98c8a9ec3a4dd1e4a51eb144714b2`  
		Last Modified: Tue, 07 Jul 2026 17:55:56 GMT  
		Size: 5.5 MB (5497360 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:345d116dfebd5fa3bad7e271c6cad29ad13280acb6c5422859ee1f6588638ce4`  
		Last Modified: Tue, 07 Jul 2026 17:55:56 GMT  
		Size: 1.2 MB (1222366 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1834871f94df46fb0d4de5f6801e2c0f2499b7ec2a4e3a2451fa429b542c6d0f`  
		Last Modified: Tue, 07 Jul 2026 17:55:56 GMT  
		Size: 8.2 MB (8204117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed66958e8a01db23a53ac4d5e0821dfdf211edd7709430e10c558be9d362e5a3`  
		Last Modified: Tue, 07 Jul 2026 17:55:57 GMT  
		Size: 1.2 MB (1172646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54b29d79830e8e4749a83cc09e17af8d0772d1712754c3149885eeb8989930fb`  
		Last Modified: Tue, 07 Jul 2026 17:55:57 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:565f0ee136abb25afdafdd5af3395806694f5c63817905a0264c4ae5fa7ed60e`  
		Last Modified: Tue, 07 Jul 2026 17:55:57 GMT  
		Size: 3.1 KB (3143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:392854af3839db4bca17ab08642a592dafd8223bfe05325f29d753391adb82f4`  
		Last Modified: Tue, 07 Jul 2026 17:55:59 GMT  
		Size: 45.5 MB (45467904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16c3d193c87abf5b172258fe9b3830da4e9319ba9ddeab4c650de9a00e7224b8`  
		Last Modified: Tue, 07 Jul 2026 17:55:58 GMT  
		Size: 19.3 KB (19340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6c3c43af5fa882121e1487851009907b80b08480bb32d91035b3e3a5964cb21`  
		Last Modified: Tue, 07 Jul 2026 17:55:58 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90a0b4b32c3069928197914576e4e6f6eb1e7a6dc88a12552a44431ba6a09cea`  
		Last Modified: Tue, 07 Jul 2026 17:55:59 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f7c57fafe0a5adaea289b7b9763da0b6a539d92e96a64549205626798b833da`  
		Last Modified: Tue, 07 Jul 2026 17:55:59 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:latest` - unknown; unknown

```console
$ docker pull postgres@sha256:fecd628916f7759d054b476da0f8774a038b1bca715c7a7b1bacbab678252222
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5172066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:412404e8d9f36d139f3366240d667206a4580a2f93dc08a2618feb8c98204270`

```dockerfile
```

-	Layers:
	-	`sha256:6c22bc79738382baf672f5080b718e56c4049e6f77b17c993c14149cb739355e`  
		Last Modified: Tue, 07 Jul 2026 17:55:56 GMT  
		Size: 5.1 MB (5119387 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b0339dacdb22de2bed95799ac125c10119fae711711e569a869f853c288e912f`  
		Last Modified: Tue, 07 Jul 2026 17:55:56 GMT  
		Size: 52.7 KB (52679 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:latest` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:5072961784847d0f00f3a61b0e309190e09a6b658df7d392d95e14866c9f1755
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.0 MB (160961630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e908c80e41a847a42bc9c1b7d18864b4dfe854aedbfdd0c23e35febbcfa7ee3b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1782172800'
# Tue, 07 Jul 2026 17:43:21 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 07 Jul 2026 17:43:27 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 17:43:34 GMT
ENV GOSU_VERSION=1.19
# Tue, 07 Jul 2026 17:43:34 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 07 Jul 2026 17:43:40 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 07 Jul 2026 17:43:40 GMT
ENV LANG=en_US.utf8
# Tue, 07 Jul 2026 17:43:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 17:43:44 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 07 Jul 2026 17:43:45 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 07 Jul 2026 17:43:45 GMT
ENV PG_MAJOR=18
# Tue, 07 Jul 2026 17:43:45 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/18/bin
# Tue, 07 Jul 2026 17:43:45 GMT
ENV PG_VERSION=18.4-1.pgdg13+1
# Tue, 07 Jul 2026 17:44:02 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 07 Jul 2026 17:44:02 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 07 Jul 2026 17:44:02 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 07 Jul 2026 17:44:02 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Tue, 07 Jul 2026 17:44:02 GMT
VOLUME [/var/lib/postgresql]
# Tue, 07 Jul 2026 17:44:03 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 17:44:03 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 07 Jul 2026 17:44:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 17:44:03 GMT
STOPSIGNAL SIGINT
# Tue, 07 Jul 2026 17:44:03 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 07 Jul 2026 17:44:03 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:3be819c1c8cfde074541a1d875fbf2da3642b0ec6bb39aaa2ce7d56052b67dc1`  
		Last Modified: Wed, 24 Jun 2026 00:28:21 GMT  
		Size: 30.1 MB (30148551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08c3b06ea11dbbf08bee6ce31c6442b6810fd1a78e01282d46d46bd4784bfedc`  
		Last Modified: Tue, 07 Jul 2026 17:44:22 GMT  
		Size: 1.2 KB (1169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1414a1aa0a9e327913a515d91456eff717fe093f53e278c2061378ac93fb56de`  
		Last Modified: Tue, 07 Jul 2026 17:44:23 GMT  
		Size: 6.2 MB (6235183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e32887241a5e4e632cbdc343e4899fab9ee219de3d020c448b6b8ad57f0f28e`  
		Last Modified: Tue, 07 Jul 2026 17:44:22 GMT  
		Size: 1.2 MB (1209610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f71c554003ad3ba4b0114cfad28c8f8f4a1fb3c7a928215e97c27eccd5f32c4c`  
		Last Modified: Tue, 07 Jul 2026 17:44:23 GMT  
		Size: 8.2 MB (8204009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f311e7bf7674e477ef6d414b6acf59ed1cc9dfd41d131d6711892cb3d335666`  
		Last Modified: Tue, 07 Jul 2026 17:44:23 GMT  
		Size: 1.2 MB (1220606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:637cfd629adc4997d8dc5ff827c731731fce93e589484dd22bf2bb65d5f9d64b`  
		Last Modified: Tue, 07 Jul 2026 17:44:24 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a07789739d1c7da9ff59dc85d47f23ec2e0276c94ba50e362ae1e3017ca89f7`  
		Last Modified: Tue, 07 Jul 2026 17:44:24 GMT  
		Size: 3.1 KB (3142 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74640ddb9b90c0dbc7f3ffd10db8441b6981373c616b92eee42f4353361580d0`  
		Last Modified: Tue, 07 Jul 2026 17:44:27 GMT  
		Size: 113.9 MB (113913489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4459a2201c8dcd7aafa86bb5d0d9ebad20dafcf06e7f91d7bd8705149bfe4da0`  
		Last Modified: Tue, 07 Jul 2026 17:44:25 GMT  
		Size: 19.3 KB (19331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:015783f5f4b979bd4152d9d6af878c1ea0ada46740df31d031c80861d333077e`  
		Last Modified: Tue, 07 Jul 2026 17:44:25 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b179470c12cc6d2aa211abcd02e7be42973615c79a0c7e84ae3c2902e5ef8442`  
		Last Modified: Tue, 07 Jul 2026 17:44:26 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a7db23b8f1d1d125b38cbefa0ca139f60d6f2942f8755a5dcb10a07f111cbc8`  
		Last Modified: Tue, 07 Jul 2026 17:44:26 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:latest` - unknown; unknown

```console
$ docker pull postgres@sha256:1161f05973973e8de362f3c78d475d480e1bb36c403efc836a41687c09a7d930
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6016040 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0bfb3f0123c9bfbd8e557815adf55eca7be34305b6548d36239a951c8f8f05c`

```dockerfile
```

-	Layers:
	-	`sha256:3c5a15c1714120aa79f3dfefd71d83163ccf1378c812c1caf5defa0d52d2f8dc`  
		Last Modified: Tue, 07 Jul 2026 17:44:23 GMT  
		Size: 6.0 MB (5963304 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f14c0fabc7fdc0472cdc17f96f6a6b96dcdb65e3b8a1092164d18c25ee2a7e7d`  
		Last Modified: Tue, 07 Jul 2026 17:44:22 GMT  
		Size: 52.7 KB (52736 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:latest` - linux; 386

```console
$ docker pull postgres@sha256:1e334308ff70455b2cc42e8a21e7e58e6c948007b2d52bc5bfe5c0b11446ae7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.6 MB (97622485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3910699a7c2148acf54ba98b2c2cad5193ccec6838ce646fffd0014ad8f63e5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1782172800'
# Tue, 07 Jul 2026 17:43:59 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 07 Jul 2026 17:44:05 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 17:44:12 GMT
ENV GOSU_VERSION=1.19
# Tue, 07 Jul 2026 17:44:12 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 07 Jul 2026 17:44:17 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 07 Jul 2026 17:44:17 GMT
ENV LANG=en_US.utf8
# Tue, 07 Jul 2026 17:44:21 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 17:44:21 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 07 Jul 2026 17:44:22 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 07 Jul 2026 17:44:22 GMT
ENV PG_MAJOR=18
# Tue, 07 Jul 2026 17:44:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/18/bin
# Tue, 07 Jul 2026 17:44:22 GMT
ENV PG_VERSION=18.4-1.pgdg13+1
# Tue, 07 Jul 2026 17:53:40 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 07 Jul 2026 17:53:40 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 07 Jul 2026 17:53:40 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 07 Jul 2026 17:53:40 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Tue, 07 Jul 2026 17:53:40 GMT
VOLUME [/var/lib/postgresql]
# Tue, 07 Jul 2026 17:53:40 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 17:53:40 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 07 Jul 2026 17:53:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 17:53:40 GMT
STOPSIGNAL SIGINT
# Tue, 07 Jul 2026 17:53:40 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 07 Jul 2026 17:53:40 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:984d3baa100eb8c4d7c83b7c23b4748e508aa6ed5903297f02be90a681f52d41`  
		Last Modified: Wed, 24 Jun 2026 00:28:38 GMT  
		Size: 31.3 MB (31301210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ef7fc1799e54dfa7491de5255751526eecb503a738935667e58a63da41de48b`  
		Last Modified: Tue, 07 Jul 2026 17:44:52 GMT  
		Size: 1.2 KB (1169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:929359414a18e8296437ab82de63f29af630fc3d3231d1d0509dba6f40f706be`  
		Last Modified: Tue, 07 Jul 2026 17:53:54 GMT  
		Size: 6.6 MB (6631357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8b3e04ff54db38d776149e42d53d2a652e52d26ed73a49961cd404624f646b8`  
		Last Modified: Tue, 07 Jul 2026 17:53:54 GMT  
		Size: 1.2 MB (1225836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b210c2e163c01d942569bc4e68fe675b271ae89cb6b773307f37768c623713e6`  
		Last Modified: Tue, 07 Jul 2026 17:53:54 GMT  
		Size: 8.2 MB (8204093 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c8b6a387564994357364ecaf0c556e856948f59ac7ca21ef15fa6ce67586c7f`  
		Last Modified: Tue, 07 Jul 2026 17:53:54 GMT  
		Size: 1.3 MB (1308283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd2cadc3e81e880c8ac8a02dc12c39e51d8edee89053bdaba024d23d142bb139`  
		Last Modified: Tue, 07 Jul 2026 17:44:56 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b48e0ed1d767feb50f0af9e7143174ed89f0578075b1cc04a54db0d7ab58adc`  
		Last Modified: Tue, 07 Jul 2026 17:53:55 GMT  
		Size: 3.1 KB (3145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f282cccaef64ab687475d2ac60b678ece3ea0c44ecea0b6c055f3182994e587`  
		Last Modified: Tue, 07 Jul 2026 17:53:57 GMT  
		Size: 48.9 MB (48921525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee1e353032f82fac8fc27ebc3d853d61acb4c100209f6ee7f0ad0ff62fd4bd8d`  
		Last Modified: Tue, 07 Jul 2026 17:53:55 GMT  
		Size: 19.3 KB (19327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d51e442e1db11e5393c8227081a043528bc445ff30a07f42711f6f408b848eb`  
		Last Modified: Tue, 07 Jul 2026 17:53:55 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7d637022fab53b10bc6b0681743e3006b12632a278c17b9a6be843493125147`  
		Last Modified: Tue, 07 Jul 2026 17:53:56 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c685e0b03fefe0c222cf40f6c3bfad1664a58822ae7d64fc4a3a0b5ec1a2dcd`  
		Last Modified: Tue, 07 Jul 2026 17:53:57 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:latest` - unknown; unknown

```console
$ docker pull postgres@sha256:26aaecd327e09ea1a8d9b07fa3bfe9cc5f116c6769f05d632f6b4fb7ee04539d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5167806 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96053c6c5be77b27384b80bfae0c62a1fa0adf388ef8e2ebe7321a2a21391f3b`

```dockerfile
```

-	Layers:
	-	`sha256:e5285b9c86306a4d7ca1c9e8004b2155dc175787322a0c9c5045984e07726464`  
		Last Modified: Tue, 07 Jul 2026 17:53:54 GMT  
		Size: 5.1 MB (5115415 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b335f2db60b3b19d5336cab32f935e8823e8b35d26b29e0c5ca8b180ffab59ed`  
		Last Modified: Tue, 07 Jul 2026 17:53:53 GMT  
		Size: 52.4 KB (52391 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:latest` - linux; ppc64le

```console
$ docker pull postgres@sha256:d12975de778ed251c09bc04d90cc62f038eca148dcf797d7ee2597a6e61c0d52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.8 MB (174772162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc881d554483aa9869a1d7b19c46e3164a154efb0dfaac98225d372601d5db82`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1782172800'
# Tue, 07 Jul 2026 17:42:09 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 07 Jul 2026 17:42:25 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 17:42:39 GMT
ENV GOSU_VERSION=1.19
# Tue, 07 Jul 2026 17:42:39 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 07 Jul 2026 17:42:51 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 07 Jul 2026 17:42:51 GMT
ENV LANG=en_US.utf8
# Tue, 07 Jul 2026 17:42:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 17:42:59 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 07 Jul 2026 17:43:00 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 07 Jul 2026 17:43:00 GMT
ENV PG_MAJOR=18
# Tue, 07 Jul 2026 17:43:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/18/bin
# Tue, 07 Jul 2026 17:43:00 GMT
ENV PG_VERSION=18.4-1.pgdg13+1
# Tue, 07 Jul 2026 17:51:17 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 07 Jul 2026 17:51:17 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 07 Jul 2026 17:51:17 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 07 Jul 2026 17:51:17 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Tue, 07 Jul 2026 17:51:17 GMT
VOLUME [/var/lib/postgresql]
# Tue, 07 Jul 2026 17:51:18 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 17:51:18 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 07 Jul 2026 17:51:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 17:51:18 GMT
STOPSIGNAL SIGINT
# Tue, 07 Jul 2026 17:51:18 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 07 Jul 2026 17:51:18 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:639e1c13483ea279c94219be2736856262d8dd2efeff3e6d309f11a66aba21fb`  
		Last Modified: Wed, 24 Jun 2026 00:30:29 GMT  
		Size: 33.6 MB (33606388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9adbe4418c0b6864f61e0d3c466f7e08148e1772041c9e14a7a3d76d38b37d87`  
		Last Modified: Tue, 07 Jul 2026 17:44:22 GMT  
		Size: 1.2 KB (1171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a7adb798b8b0bc7f7e18eb0a00a71d5e10f860c07a42898ec35d890d39f2a77`  
		Last Modified: Tue, 07 Jul 2026 17:44:31 GMT  
		Size: 7.1 MB (7076786 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d285cc3dd4e9e4681d990133b75a2835e43fe7cd95765d71827fd41299614be`  
		Last Modified: Tue, 07 Jul 2026 17:44:31 GMT  
		Size: 1.2 MB (1214766 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3efc6ef561ed1986a6495c3966a8510a405e7b07b2e7e4a90a6c93878e44f33e`  
		Last Modified: Tue, 07 Jul 2026 17:44:31 GMT  
		Size: 8.2 MB (8204056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71b14c05003b8ff9c715c518223caa999b1659e6481c65528efdf2a93410799f`  
		Last Modified: Tue, 07 Jul 2026 17:44:31 GMT  
		Size: 1.4 MB (1394897 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:983d4fa8eb70a2541c88adf68fdf0ce6449c909b93a882090a00f8198675b7f5`  
		Last Modified: Tue, 07 Jul 2026 17:44:32 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc0f59fe84db0f783be123e5da057a9ede885eee659608db2af6cfcd6a247d8c`  
		Last Modified: Tue, 07 Jul 2026 17:44:32 GMT  
		Size: 3.1 KB (3145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8dcfdd120be53dcb4b7242a72013c79b4b115121e4ea63f37b9b92241ebdf2d`  
		Last Modified: Tue, 07 Jul 2026 17:52:07 GMT  
		Size: 123.2 MB (123245087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:deda45819959a98f079e147bb4b84d4cf36d42a1aaf19cba35ca29fe7dd8a05a`  
		Last Modified: Tue, 07 Jul 2026 17:52:03 GMT  
		Size: 19.3 KB (19328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25ce90af070c790d51be53bad75d296a7b028fa9ebf4652d8385305009a4e548`  
		Last Modified: Tue, 07 Jul 2026 17:52:00 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e35e1e73dba578e513cfbb2eb20f2dc4962c52826d9a5a831fff31791096eb20`  
		Last Modified: Tue, 07 Jul 2026 17:52:03 GMT  
		Size: 6.1 KB (6109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c0a67b676c12355353998dc54692d819f8bcf294be9bdfeff98fb2f9ce48213`  
		Last Modified: Tue, 07 Jul 2026 17:52:03 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:latest` - unknown; unknown

```console
$ docker pull postgres@sha256:84da6eb5cf724ec1914668f4b9f901bd07c666c53bd8d54e45c1da97218040ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6016121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f7fedd6b9a6a764935e2b261de156ff41883a7e1f10b54858805d06eddcc40f`

```dockerfile
```

-	Layers:
	-	`sha256:7433cbdc30121c13590bafcda367a9c485a9c039c04311a7989efe78a714678b`  
		Last Modified: Tue, 07 Jul 2026 17:52:04 GMT  
		Size: 6.0 MB (5963587 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8d77ccca8749fa2b7c8fe5c5064ee72ba55a47cac48f93bc27bb00cffb5379eb`  
		Last Modified: Tue, 07 Jul 2026 17:52:03 GMT  
		Size: 52.5 KB (52534 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:latest` - linux; riscv64

```console
$ docker pull postgres@sha256:9affb74512fccbd7291b578fa2f1d13a3533511892e90b22babfc3ec7d7b7d2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.9 MB (92902441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f09f21d52bedc579112738c7a83a2f9b6c80624ef070c8bf7e78b4998ceeaa53`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1782172800'
# Thu, 25 Jun 2026 17:20:07 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 25 Jun 2026 17:21:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 25 Jun 2026 17:22:04 GMT
ENV GOSU_VERSION=1.19
# Thu, 25 Jun 2026 17:22:04 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 25 Jun 2026 17:23:05 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Thu, 25 Jun 2026 17:23:05 GMT
ENV LANG=en_US.utf8
# Thu, 25 Jun 2026 17:23:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 25 Jun 2026 17:23:47 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 25 Jun 2026 17:23:49 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 25 Jun 2026 17:23:49 GMT
ENV PG_MAJOR=18
# Thu, 25 Jun 2026 17:23:49 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/18/bin
# Thu, 25 Jun 2026 17:23:49 GMT
ENV PG_VERSION=18.4-1.pgdg13+1
# Fri, 26 Jun 2026 21:29:27 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Fri, 26 Jun 2026 21:29:28 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Fri, 26 Jun 2026 21:29:28 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Fri, 26 Jun 2026 21:29:28 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Fri, 26 Jun 2026 21:29:28 GMT
VOLUME [/var/lib/postgresql]
# Fri, 26 Jun 2026 21:29:28 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 21:29:29 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Fri, 26 Jun 2026 21:29:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Jun 2026 21:29:29 GMT
STOPSIGNAL SIGINT
# Fri, 26 Jun 2026 21:29:29 GMT
EXPOSE map[5432/tcp:{}]
# Fri, 26 Jun 2026 21:29:29 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:58bface994ba631e609596a2ca5032d9d75de27f1b6476034b581e226205adab`  
		Last Modified: Wed, 24 Jun 2026 03:41:42 GMT  
		Size: 28.3 MB (28282378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6adbcc74bc464c350395b0ed6c1768df2fe221b068feb6158693ad4ec07cd00e`  
		Last Modified: Fri, 26 Jun 2026 19:26:26 GMT  
		Size: 1.2 KB (1170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d34ed43918633e51bd4b0dfe515e8421bf7b4d99c7a97135953368b017f8e34f`  
		Last Modified: Fri, 26 Jun 2026 19:26:28 GMT  
		Size: 6.3 MB (6293016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75577e804f36a67f7f9edf858af5711ac30d48485a836696cb03b019ecd36ac3`  
		Last Modified: Fri, 26 Jun 2026 19:26:26 GMT  
		Size: 1.2 MB (1202088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7531413cc31124ad057b4194a1eb2086a683b6b4d169970cf67852cdf74c7eb`  
		Last Modified: Fri, 26 Jun 2026 19:26:29 GMT  
		Size: 8.2 MB (8203759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44f9b21c12f76de08f6c105f2b2e8ba8d94e03c0a18063b3314a7d36fd79db64`  
		Last Modified: Fri, 26 Jun 2026 19:26:28 GMT  
		Size: 1.4 MB (1402395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94f5cd849b9c5cab9341c5d47ce0147c065a4a959e62f1844d1fa79d44437dd3`  
		Last Modified: Fri, 26 Jun 2026 19:26:28 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4834cab7a2c6eca063fcf59846c4f1194e5de56dcc92340991a3bbb7949a5b83`  
		Last Modified: Fri, 26 Jun 2026 19:26:30 GMT  
		Size: 3.1 KB (3144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b80474954449be9c88248690b86060a2b4ba808959b92f4f40351a9a6cde0f5`  
		Last Modified: Fri, 26 Jun 2026 21:32:02 GMT  
		Size: 47.5 MB (47488628 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62dc2390edebdd0257f309eb8572493003833a4f9ff3fdeaf1595f057f5e5303`  
		Last Modified: Fri, 26 Jun 2026 21:31:54 GMT  
		Size: 19.3 KB (19336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11a6449d810a1166eea83d62edaf7600de479e25a11d511b692de55f39631ac6`  
		Last Modified: Fri, 26 Jun 2026 21:31:54 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebb82272fdf253e71ec47475bffdc7106f0406597bde69ec0d97fc14abc0ab4e`  
		Last Modified: Fri, 26 Jun 2026 21:31:54 GMT  
		Size: 6.1 KB (6098 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50523033ed24d659a77974a38a4dc30b76dff7f893ef5dc8b3fa7ce4329f836d`  
		Last Modified: Fri, 26 Jun 2026 21:31:56 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:latest` - unknown; unknown

```console
$ docker pull postgres@sha256:bd99c0e0536fc415d1d5cdddd7aae1a3c741eb0d88407307bf404aa2b275130b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5162883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bcf9fa0935c3c1ed5fce4ce8a069e7bbc09bcc7762343b76bc5101d4e4362e3`

```dockerfile
```

-	Layers:
	-	`sha256:3405a8ca1c897ce0196d470c2f33dec6f1e2b11c8e799a45d9c57b5cc6ba49b2`  
		Last Modified: Fri, 26 Jun 2026 21:31:55 GMT  
		Size: 5.1 MB (5110355 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bb35d6cf7a0a17ccfb082fc0a4c4981865180fcb86219d4d8ae3c7aefe7e7cf8`  
		Last Modified: Fri, 26 Jun 2026 21:31:54 GMT  
		Size: 52.5 KB (52528 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:latest` - linux; s390x

```console
$ docker pull postgres@sha256:379ce5ffa7f902062e04ba672f590dec3db1cd2f78d858ce44d4f7c7591e0c27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.0 MB (177004457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48ab954c77c60ecc558f6cfc25876f55b5bff9bba1d9da9e6ff7de114e33b239`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1782172800'
# Tue, 07 Jul 2026 17:43:02 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 07 Jul 2026 17:44:32 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 17:46:04 GMT
ENV GOSU_VERSION=1.19
# Tue, 07 Jul 2026 17:46:04 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 07 Jul 2026 17:46:51 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 07 Jul 2026 17:46:51 GMT
ENV LANG=en_US.utf8
# Tue, 07 Jul 2026 17:47:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 17:47:35 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 07 Jul 2026 17:47:44 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 07 Jul 2026 17:47:44 GMT
ENV PG_MAJOR=18
# Tue, 07 Jul 2026 17:47:44 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/18/bin
# Tue, 07 Jul 2026 17:47:44 GMT
ENV PG_VERSION=18.4-1.pgdg13+1
# Tue, 07 Jul 2026 18:50:22 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 07 Jul 2026 18:52:52 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 07 Jul 2026 18:52:55 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 07 Jul 2026 18:52:55 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Tue, 07 Jul 2026 18:52:55 GMT
VOLUME [/var/lib/postgresql]
# Tue, 07 Jul 2026 18:52:58 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 18:53:00 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 07 Jul 2026 18:53:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 18:53:00 GMT
STOPSIGNAL SIGINT
# Tue, 07 Jul 2026 18:53:00 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 07 Jul 2026 18:53:00 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:b6a0af2ceb4b698210b8776157288a3fb06e46aaf75d641139449fcc50ce430d`  
		Last Modified: Wed, 24 Jun 2026 00:28:43 GMT  
		Size: 29.9 MB (29851381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:282ce9be50a805cd1f634c9389a8cd8dee7a81fe1ec774157ce927408f831f02`  
		Last Modified: Tue, 07 Jul 2026 18:48:31 GMT  
		Size: 1.2 KB (1176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e48998c49b8194c90afb4f6b30b050f05b50149f4fbf6afa06356210b23e1996`  
		Last Modified: Tue, 07 Jul 2026 18:48:35 GMT  
		Size: 6.4 MB (6408990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b022ce16c7772704afb8a8e7d32f537795432d923f40ed3f2136ee750650afa`  
		Last Modified: Tue, 07 Jul 2026 18:48:32 GMT  
		Size: 1.2 MB (1230675 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e719395ce08d3604ff52cd471cc5ed38fa68a71373c394d29b94c339f36fcd9`  
		Last Modified: Tue, 07 Jul 2026 18:48:36 GMT  
		Size: 8.3 MB (8259442 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df7206fb6e2cc62e787f059453a210d500e95679428eada97c80e5346fc1d066`  
		Last Modified: Tue, 07 Jul 2026 18:48:36 GMT  
		Size: 1.4 MB (1398712 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a98d631813eb57eafc30343936f1d7c6a2dbbe9dd9866986d43db8f8a751a9f2`  
		Last Modified: Tue, 07 Jul 2026 17:50:22 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e78742538bce4e97486384439060697934fe4aaa957516d86c999011c0c6c333`  
		Last Modified: Tue, 07 Jul 2026 18:48:36 GMT  
		Size: 3.1 KB (3145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31d8963f1384efe5166b67f14fe202bee48482fb15d6378489858ea9d3f6cc29`  
		Last Modified: Tue, 07 Jul 2026 18:55:04 GMT  
		Size: 129.8 MB (129825057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a65ffbf1023717e511e89854747ef6a03294ef75f20e9dbd8f259adce433bed`  
		Last Modified: Tue, 07 Jul 2026 18:54:46 GMT  
		Size: 19.3 KB (19337 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0227b541a2903ff8ce05750b8cb87f3197f0f19c1eeac90fc65a45eb2e4f2099`  
		Last Modified: Tue, 07 Jul 2026 18:54:45 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5fd1ffbe1209200c485ebb7c6764f39ebb2881066697949005b42b669d90ba5`  
		Last Modified: Tue, 07 Jul 2026 18:54:46 GMT  
		Size: 6.1 KB (6112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8a092ae40c2cb89df3d648354834ab9624c4284edd3e2bb8ae925c3974e1139`  
		Last Modified: Tue, 07 Jul 2026 18:54:52 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:latest` - unknown; unknown

```console
$ docker pull postgres@sha256:caad7dcfc5d90cd7c620e7109db0302febe97b6dcc9c2a04c3ba0de87ea24917
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6026067 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1492e7a1b1d0653bf711ea1d51962f26719a9ab3da37955bb35ea83767c73649`

```dockerfile
```

-	Layers:
	-	`sha256:ee77e12382b6eae43a92940d83a85ceb1427dea806f7beb23f6b79694ae09c9b`  
		Last Modified: Tue, 07 Jul 2026 18:54:50 GMT  
		Size: 6.0 MB (5973609 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a5e07f472f47718320d6eabe315767dc97813d60656f47bc9fd5d311b6ad75e9`  
		Last Modified: Tue, 07 Jul 2026 18:54:39 GMT  
		Size: 52.5 KB (52458 bytes)  
		MIME: application/vnd.in-toto+json
