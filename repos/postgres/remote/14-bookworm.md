## `postgres:14-bookworm`

```console
$ docker pull postgres@sha256:1fdfd5ca201533cd7ab9945808cfd4c18cb869aabb8ea1c1475eaa9e0ed07fc7
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

### `postgres:14-bookworm` - linux; amd64

```console
$ docker pull postgres@sha256:b2e5f3909a4afd0c042e6f79520cff70d4d7aeda5f39f46d90d3770abbf2b63a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.0 MB (151982461 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2feeb1a2df681442652b88cca89097d565a977c93bab9948fe4d63ade1df98e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:36:23 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 21 Oct 2026 00:36:32 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:36:39 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 00:36:39 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 00:36:43 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Wed, 21 Oct 2026 00:36:43 GMT
ENV LANG=en_US.utf8
# Wed, 21 Oct 2026 00:36:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:36:46 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 21 Oct 2026 00:36:47 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 21 Oct 2026 00:36:47 GMT
ENV PG_MAJOR=14
# Wed, 21 Oct 2026 00:36:47 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/14/bin
# Wed, 21 Oct 2026 00:36:47 GMT
ENV PG_VERSION=14.24-1.pgdg12+2
# Wed, 21 Oct 2026 00:38:30 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Wed, 21 Oct 2026 00:38:30 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 21 Oct 2026 00:38:30 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 21 Oct 2026 00:38:30 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 21 Oct 2026 00:38:30 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Wed, 21 Oct 2026 00:38:30 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 21 Oct 2026 00:38:30 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:38:30 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 21 Oct 2026 00:38:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:38:30 GMT
STOPSIGNAL SIGINT
# Wed, 21 Oct 2026 00:38:30 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 21 Oct 2026 00:38:30 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:11422d7ca1a44390a32bd8d8d9dc5946b4d053b3bbd9507d682e35584ba84a26`  
		Last Modified: Tue, 20 Oct 2026 23:30:22 GMT  
		Size: 28.2 MB (28247935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6dc53399d0cd70f9790382fee9a64d2b227aab5cabdb67df855b7c40674fee3`  
		Last Modified: Wed, 21 Oct 2026 00:37:25 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40cea1fa6bbd4c3254f9e21f78d7223722a3bd7ad51d880dcb9be0fed6344e55`  
		Last Modified: Wed, 21 Oct 2026 00:37:25 GMT  
		Size: 4.5 MB (4534247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aee0ed38c31fc020028614090875b8434dc93fc4788586f223c07303c33a5171`  
		Last Modified: Wed, 21 Oct 2026 00:37:25 GMT  
		Size: 1.3 MB (1250043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0c72a87d33ea98be8e521d750bf5d122ca2c14187c44ef15f6c4cc8ae6e6858`  
		Last Modified: Wed, 21 Oct 2026 00:37:26 GMT  
		Size: 8.1 MB (8066494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:129fbeaf8d31815a2ab82571ded1512b7f003c28f508b8c60ab7d33c8109bb54`  
		Last Modified: Wed, 21 Oct 2026 00:37:27 GMT  
		Size: 1.2 MB (1196453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6ba80acbeaa1f14b2ef79a0b57edfe19ab1ec6e505a3129b7b0384aba7a6dbd`  
		Last Modified: Wed, 21 Oct 2026 00:37:27 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc8603b138f7f67c07eab6b647c421832542d8ecec69c65a301d98ed78c6e330`  
		Last Modified: Wed, 21 Oct 2026 00:37:27 GMT  
		Size: 3.1 KB (3145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6447d511c4574fa592b1bc82267ca95c1382035b5b9d6b16ce3ef5707afc6dd`  
		Last Modified: Wed, 21 Oct 2026 00:38:52 GMT  
		Size: 108.7 MB (108666693 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60ec618793d0983d8a8f61ababf94d3f5272d6bdde7ae3ad1cf0b56c19fe2ad5`  
		Last Modified: Wed, 21 Oct 2026 00:38:49 GMT  
		Size: 9.6 KB (9579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c79ae203d8ee3d8f3d7d0659b52f5eb3b7b6ee3ff9dbd4141e97aed3989ea5cc`  
		Last Modified: Wed, 21 Oct 2026 00:38:49 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ece97e6346ce63509ec2bf3dbadcd542948fee94436850f8feae9645dc91c86`  
		Last Modified: Wed, 21 Oct 2026 00:38:49 GMT  
		Size: 167.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0446574de82b6ecf5694784c011c09e651c3cb67cadae84b19526775030aeee8`  
		Last Modified: Wed, 21 Oct 2026 00:38:50 GMT  
		Size: 6.1 KB (6112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfe300db4b1f249699c29b061c26cd0fc986269627d31b12178f47b9f8cd1071`  
		Last Modified: Wed, 21 Oct 2026 00:38:51 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:14-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:6cdd853f39dba9240c8b39e7f404260ab7aa424af22f57627e3b07a956477855
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5847681 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:517f78a2e7ec28b513ad8581aa7a69314f0a54886c1b9784c79105042b534e3d`

```dockerfile
```

-	Layers:
	-	`sha256:d55800d55fbe8136501d99fe0678ec3633fbff220cfd9ae3e2c1007c12de156e`  
		Last Modified: Wed, 21 Oct 2026 00:38:49 GMT  
		Size: 5.8 MB (5794385 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:25ee5c798d8c55a02610438cd72f96d819cc45cfba9168c88ec9b52ef4870616`  
		Last Modified: Wed, 21 Oct 2026 00:38:49 GMT  
		Size: 53.3 KB (53296 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:14-bookworm` - linux; arm variant v7

```console
$ docker pull postgres@sha256:9656cf942805283bb51fe27b9134622a9ea7bb9f2a54cc9d15953346fb154f6f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.0 MB (82013535 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a319409bfd0a453c3d87e5f4835b1a187bb18ec1c3945271c8785751b6ff6ec`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 02:18:35 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 06 Oct 2026 02:18:41 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:18:48 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 02:18:48 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 02:18:54 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 06 Oct 2026 02:18:54 GMT
ENV LANG=en_US.utf8
# Tue, 06 Oct 2026 02:18:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:18:58 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 06 Oct 2026 02:18:58 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 06 Oct 2026 02:18:58 GMT
ENV PG_MAJOR=14
# Tue, 06 Oct 2026 02:18:58 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/14/bin
# Tue, 06 Oct 2026 02:18:58 GMT
ENV PG_VERSION=14.24-1.pgdg12+2
# Tue, 06 Oct 2026 02:29:15 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 06 Oct 2026 02:29:15 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 06 Oct 2026 02:29:15 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 06 Oct 2026 02:29:15 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 06 Oct 2026 02:29:15 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Tue, 06 Oct 2026 02:29:15 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 06 Oct 2026 02:29:15 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 02:29:15 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 06 Oct 2026 02:29:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 02:29:15 GMT
STOPSIGNAL SIGINT
# Tue, 06 Oct 2026 02:29:15 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 06 Oct 2026 02:29:15 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:1bcae38a5e348bbef67c8b1d84a35e8bfbeffc96751ee5ae9dc8e986d40eb968`  
		Last Modified: Tue, 06 Oct 2026 00:13:17 GMT  
		Size: 24.0 MB (23956571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e202291dcb5a44e20d4806231203cca3312386fd1835328441fbabab0d12b251`  
		Last Modified: Tue, 06 Oct 2026 02:29:27 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7546a0ceb3ead97903708895bbdd9d231558b9cc8825eb0d5f8d8da0931bd9b1`  
		Last Modified: Tue, 06 Oct 2026 02:29:27 GMT  
		Size: 3.7 MB (3742738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46e24726b93db2f7ec3805220f45008188351d72130c3ac53a8972cb02e0ee47`  
		Last Modified: Tue, 06 Oct 2026 02:29:27 GMT  
		Size: 1.2 MB (1216563 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f334e90ff8118523eaf2dd08ffbad24b529c7459b0059de4f85c444bd720168`  
		Last Modified: Tue, 06 Oct 2026 02:29:27 GMT  
		Size: 8.1 MB (8066371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d0b2ea8a7d87f41ee86040cb3cf3b8211bc8988f1596c47778ffe1f4e616896`  
		Last Modified: Tue, 06 Oct 2026 02:29:28 GMT  
		Size: 1.1 MB (1067328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d9f97fad28c767138301efb258b3d7ad582b02a7f37b0c427b9e14dfc3519c3`  
		Last Modified: Tue, 06 Oct 2026 02:29:28 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c6096ebaa75ffbffc02beb3322093e9189b4b3cac26b7151908fcc0343965d6`  
		Last Modified: Tue, 06 Oct 2026 02:29:28 GMT  
		Size: 3.1 KB (3141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be1f169709a8ffcf4aa1bac78bee5598dd9dd3afe4d2b77d744fa3e7664c325b`  
		Last Modified: Tue, 06 Oct 2026 02:29:29 GMT  
		Size: 43.9 MB (43943373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc8f85abe97cd989ea029f68d42bb91c2aeec4581e7ac51b4da61bbf08c5da65`  
		Last Modified: Tue, 06 Oct 2026 02:29:29 GMT  
		Size: 9.6 KB (9577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e78fb2adc9458a3bce163f503958f8ed7b04e534c5dc51ba55b985759b694e5`  
		Last Modified: Tue, 06 Oct 2026 02:29:29 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91a852de94e1889eeef66bef5127cea4f9e565e11fc81dcc2716b1a45888e46c`  
		Last Modified: Tue, 06 Oct 2026 02:29:29 GMT  
		Size: 168.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6381f6dbc9b64d4ef506e63cde33a999090a130e6f90c46dc45cfa4a34011d0d`  
		Last Modified: Tue, 06 Oct 2026 02:29:30 GMT  
		Size: 6.1 KB (6109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8642a84820e0baac60522279ef9d4fc39f9e525aa38e7a339b1030d0a8be3259`  
		Last Modified: Tue, 06 Oct 2026 02:29:30 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:14-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:d428e365ab43a324ca0742b44010d35b838c1f10d4ec1229fabe2764ed28cd6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5256239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abc511479808d7f0652b48ab0e5c1d827a11410579a90548afa00fcb93269b43`

```dockerfile
```

-	Layers:
	-	`sha256:55b2acc987ae616d511f566b9d7271c2f384ae7705471c0f710a3751d9b5f776`  
		Last Modified: Tue, 06 Oct 2026 02:29:27 GMT  
		Size: 5.2 MB (5202743 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:393fa002ee948afdb25d7f3eda48fc28aa84dc82f9486bd99e9f49ed0ec9fe9f`  
		Last Modified: Tue, 06 Oct 2026 02:29:27 GMT  
		Size: 53.5 KB (53496 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:14-bookworm` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:d32e8274f24c30b1d9f818e6b968295d0459296fc2574a3cd9f9026bce8a8a18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.0 MB (150008026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:417e9fbebde15228502114db646885e6a5b9aef2cb3533b059c7d80d35e98116`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:41:22 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 21 Oct 2026 00:41:26 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:41:33 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 00:41:33 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 00:41:37 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Wed, 21 Oct 2026 00:41:37 GMT
ENV LANG=en_US.utf8
# Wed, 21 Oct 2026 00:41:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 00:41:40 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 21 Oct 2026 00:41:41 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 21 Oct 2026 00:41:41 GMT
ENV PG_MAJOR=14
# Wed, 21 Oct 2026 00:41:41 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/14/bin
# Wed, 21 Oct 2026 00:41:41 GMT
ENV PG_VERSION=14.24-1.pgdg12+2
# Wed, 21 Oct 2026 00:41:55 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Wed, 21 Oct 2026 00:41:56 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 21 Oct 2026 00:41:56 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 21 Oct 2026 00:41:56 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 21 Oct 2026 00:41:56 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Wed, 21 Oct 2026 00:41:56 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 21 Oct 2026 00:41:56 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 00:41:56 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 21 Oct 2026 00:41:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 00:41:56 GMT
STOPSIGNAL SIGINT
# Wed, 21 Oct 2026 00:41:56 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 21 Oct 2026 00:41:56 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:41b2195c355367079ebad200f9591fe3c2cb886c3b1e67abaaf2090dc11c04d9`  
		Last Modified: Tue, 20 Oct 2026 23:30:04 GMT  
		Size: 28.1 MB (28138425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06fb57c5890ba2812893d392afc61e32cba580405984e921c9c56f17e64d4de7`  
		Last Modified: Wed, 21 Oct 2026 00:42:15 GMT  
		Size: 1.2 KB (1171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0fb5fe7c5b7fc6bf893e228841d813a6aa28c3be97b1bbb5237000425e240c4`  
		Last Modified: Wed, 21 Oct 2026 00:42:15 GMT  
		Size: 4.5 MB (4519544 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d39e98027d5469c0d0b7ec2fa259daa40fe7080a1d0be145a11a3989711fece5`  
		Last Modified: Wed, 21 Oct 2026 00:42:15 GMT  
		Size: 1.2 MB (1203796 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae1d01e4a2c86ab2a52b79b3760f669fb0e1bcffb4f5e146eb36729a7feaffd8`  
		Last Modified: Wed, 21 Oct 2026 00:42:15 GMT  
		Size: 8.1 MB (8066466 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f35f97caff8b53357af57af28a30c27ebf098e0732cbe5e02e2d6eb2746b5984`  
		Last Modified: Wed, 21 Oct 2026 00:42:16 GMT  
		Size: 1.1 MB (1108980 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5c413bb4ab54ebf9f70d50b62c89ae4245b7f4d17bdfec1b1129dd66c8f160e`  
		Last Modified: Wed, 21 Oct 2026 00:42:16 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:378a201e0f95b7c5b40f199680ce8e24212b5e1dc51c490bd334bdee34b7fa06`  
		Last Modified: Wed, 21 Oct 2026 00:42:16 GMT  
		Size: 3.1 KB (3146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5893ee9c85c5e4766ed972512046399917496f01bda3cc56f7aa4977ef42987`  
		Last Modified: Wed, 21 Oct 2026 00:42:19 GMT  
		Size: 107.0 MB (106950214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8689a09b39ee6d6cce0151d36215781d478bf2c59f62e4e99f34226c7b59fa27`  
		Last Modified: Wed, 21 Oct 2026 00:42:17 GMT  
		Size: 9.6 KB (9577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4095ebd07bb3ce5e26904a9f54618987486de09dff4bea37913a2ab089bcd4f0`  
		Last Modified: Wed, 21 Oct 2026 00:42:18 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e7864a50f9fcaab115073eb1535333289df4c521184795f66d391f9d6ee3794`  
		Last Modified: Wed, 21 Oct 2026 00:42:18 GMT  
		Size: 167.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf1c446591bfba05196267156651164d5ca463a4428d4a3a06c5d99ac86595a4`  
		Last Modified: Wed, 21 Oct 2026 00:42:19 GMT  
		Size: 6.1 KB (6112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6850884b2999323fe03ca7c1058fd9f2cf7c0f1ac265ca27446e36addf559654`  
		Last Modified: Wed, 21 Oct 2026 00:42:19 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:14-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:e647f058addbf1e0c3023203e2c9339063d35648a28397a22153c4a663557c5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5854237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d326efe6c5c593eda339af9b537eba85f1e9a8aebfac5a59ab3271bac615ae6c`

```dockerfile
```

-	Layers:
	-	`sha256:df85ab1809090e20554a113655ad63839db6dd463fc3f472e79d9b1a91630562`  
		Last Modified: Wed, 21 Oct 2026 00:42:15 GMT  
		Size: 5.8 MB (5800696 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:afeeeabfc69315d3cfd7e2b8819490508884878bc3dd2a53505bd03510a6a26d`  
		Last Modified: Wed, 21 Oct 2026 00:42:15 GMT  
		Size: 53.5 KB (53541 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:14-bookworm` - linux; 386

```console
$ docker pull postgres@sha256:03f29e99e851584421d60dfcf3bc38e5f2cb86a226c246a6ad6c4e768279c56e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.8 MB (92768099 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:232b4ea052710f4109265f6ced3d5e6ab95de9011369e8819f23c88bc3a7952a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:42:49 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 06 Oct 2026 01:42:54 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:43:00 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 01:43:00 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 01:43:04 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 06 Oct 2026 01:43:04 GMT
ENV LANG=en_US.utf8
# Tue, 06 Oct 2026 01:43:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:43:07 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 06 Oct 2026 01:43:07 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 06 Oct 2026 01:43:07 GMT
ENV PG_MAJOR=14
# Tue, 06 Oct 2026 01:43:07 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/14/bin
# Tue, 06 Oct 2026 01:43:07 GMT
ENV PG_VERSION=14.24-1.pgdg12+2
# Tue, 06 Oct 2026 01:50:15 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 06 Oct 2026 01:50:15 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 06 Oct 2026 01:50:15 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 06 Oct 2026 01:50:15 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 06 Oct 2026 01:50:15 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Tue, 06 Oct 2026 01:50:15 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 06 Oct 2026 01:50:15 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:50:15 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 06 Oct 2026 01:50:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 01:50:15 GMT
STOPSIGNAL SIGINT
# Tue, 06 Oct 2026 01:50:15 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 06 Oct 2026 01:50:15 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:4fde7ff71d38b44de13588c355f9acc395f4ecbec569968085401a6d6b40eff2`  
		Last Modified: Tue, 06 Oct 2026 00:13:26 GMT  
		Size: 29.2 MB (29239373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2871c4d64ee0b0006f3ebe13cfe9a660b2cb9a74c3764e03320f920f6fd1a38e`  
		Last Modified: Tue, 06 Oct 2026 01:50:27 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fb5dce99178fb089128fcff0b7d9d6aed1b9e086911d5baddc6c434609a575f`  
		Last Modified: Tue, 06 Oct 2026 01:50:27 GMT  
		Size: 5.0 MB (4966134 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13649490dfe4ff72cbce41e77bcf0a4c55406eb2184127416172758fd7ef944d`  
		Last Modified: Tue, 06 Oct 2026 01:50:27 GMT  
		Size: 1.2 MB (1219063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd89d1b0597ef43fce548e113449fbda2ed5f3614bbf5e0f2d1e9a5fe6211940`  
		Last Modified: Tue, 06 Oct 2026 01:50:27 GMT  
		Size: 8.1 MB (8066444 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:965b9b380e39a148d63298ba3d4b10c2fb0dcd748fbf2762d8a407faef78af5e`  
		Last Modified: Tue, 06 Oct 2026 01:50:28 GMT  
		Size: 1.1 MB (1137526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6755ec2955612a74586dd1af172fa1bc2923ca4b5a0a8be07b759c61662bb5fa`  
		Last Modified: Tue, 06 Oct 2026 01:50:28 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34dfe2bd01a18037ce7f66b89528a5507105d31cd06cbdf697143a0b94b144e4`  
		Last Modified: Tue, 06 Oct 2026 01:50:28 GMT  
		Size: 3.1 KB (3139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f86f3f94b40144a428268fe5df41f5e4dc9bce54b7ead9859d5070595f37bc1`  
		Last Modified: Tue, 06 Oct 2026 01:50:30 GMT  
		Size: 48.1 MB (48118971 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d09197fd4f5f2836e37eeacf5e0c1dc76961105ffeef89ab8db0dcf9b51e1e6f`  
		Last Modified: Tue, 06 Oct 2026 01:50:29 GMT  
		Size: 9.6 KB (9577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6dcf33d5c97983bf672e5cb61319354bbe5c2e797b6b32a2423c53823e3d070b`  
		Last Modified: Tue, 06 Oct 2026 01:50:29 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0da133fc402a821e62c8e70ff190de89fc41c69ff7eb97dc9b35bb1ea4a0369d`  
		Last Modified: Tue, 06 Oct 2026 01:50:30 GMT  
		Size: 167.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7ff6cbb421d65c0df4708a231a69ee84ede9eb3123920fc8c7692a79fca8baa`  
		Last Modified: Tue, 06 Oct 2026 01:50:30 GMT  
		Size: 6.1 KB (6109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e45a9154a04d496183ff590bc9e855f201fe528c2770b41afc803e1030dd1c24`  
		Last Modified: Tue, 06 Oct 2026 01:50:30 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:14-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:b5c60cda4599a0320c3b9bfd3772563a5de09fad0bc0a0cca0780e0fb67f7977
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5251327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8bfbd2fc80932c7b959948b68e02764dd4cee457b8735aed26e4f32f981054c`

```dockerfile
```

-	Layers:
	-	`sha256:f8e73c17865cc1cdaa8ebc777ddee92b1adb5d9377c1482a1798addcff2e98e7`  
		Last Modified: Tue, 06 Oct 2026 01:50:27 GMT  
		Size: 5.2 MB (5198081 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d834602f9acb7dfb13490758a012e4453e6ccde67853280ff7e5dc1f1e56dd92`  
		Last Modified: Tue, 06 Oct 2026 01:50:27 GMT  
		Size: 53.2 KB (53246 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:14-bookworm` - linux; ppc64le

```console
$ docker pull postgres@sha256:29b65a7d71339b39cfbd439704700ff3054683cc8bbb30dde5baf73e6d9c05c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.1 MB (167124218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b626ad5e35b64f24fe9fa28ea9ab71a55cee7d54e2c52e5607bcb32adec102b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 04:08:36 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Tue, 06 Oct 2026 04:08:48 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 04:09:02 GMT
ENV GOSU_VERSION=1.19
# Tue, 06 Oct 2026 04:09:02 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 06 Oct 2026 04:09:12 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Tue, 06 Oct 2026 04:09:12 GMT
ENV LANG=en_US.utf8
# Tue, 06 Oct 2026 04:09:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 04:09:19 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Tue, 06 Oct 2026 04:09:21 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Tue, 06 Oct 2026 04:09:21 GMT
ENV PG_MAJOR=14
# Tue, 06 Oct 2026 04:09:21 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/14/bin
# Tue, 06 Oct 2026 04:09:21 GMT
ENV PG_VERSION=14.24-1.pgdg12+2
# Tue, 06 Oct 2026 04:21:50 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Tue, 06 Oct 2026 04:21:52 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Tue, 06 Oct 2026 04:21:53 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Tue, 06 Oct 2026 04:21:53 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 06 Oct 2026 04:21:54 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Tue, 06 Oct 2026 04:21:54 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 06 Oct 2026 04:21:55 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 04:21:55 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Tue, 06 Oct 2026 04:21:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 06 Oct 2026 04:21:55 GMT
STOPSIGNAL SIGINT
# Tue, 06 Oct 2026 04:21:55 GMT
EXPOSE map[5432/tcp:{}]
# Tue, 06 Oct 2026 04:21:55 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:1f3f8c47175317b9e585f790a7a31d74fa5e58d183221b62e4cc6945ea188893`  
		Last Modified: Tue, 06 Oct 2026 00:12:11 GMT  
		Size: 32.1 MB (32092434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c92fb1f89846de71039438d39d3324f859ecca82781ae0c94131d8f973c4c616`  
		Last Modified: Tue, 06 Oct 2026 04:11:36 GMT  
		Size: 1.2 KB (1174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b466a7e91fd54c0160ccd3e5476653bfd308c482af056335642986e69b830f1f`  
		Last Modified: Tue, 06 Oct 2026 04:11:36 GMT  
		Size: 5.4 MB (5368586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c9ff9c704e1b31c4da4c601569d11baa88c2741f854bf92b4cd932073fc36b3`  
		Last Modified: Tue, 06 Oct 2026 04:11:36 GMT  
		Size: 1.2 MB (1208866 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:933017d685d59538a7b9f3dc98869f43e9d6eb48fd795b8e9d2dd19efc68b43f`  
		Last Modified: Tue, 06 Oct 2026 04:11:36 GMT  
		Size: 8.1 MB (8066577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2932a7c3a741c59d19d8656db9595b1750da0947f5a930ac4e747a4960b00f85`  
		Last Modified: Tue, 06 Oct 2026 04:11:37 GMT  
		Size: 1.3 MB (1283643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb2dde9a82686f171740ac6ff99e38bba872ef7137fdf4519c72d82362249a8a`  
		Last Modified: Tue, 06 Oct 2026 04:11:37 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d17974808e22dc5fe293682a762d300965ebc97df16eafc3ec0bfe7535c3d1ee`  
		Last Modified: Tue, 06 Oct 2026 04:11:37 GMT  
		Size: 3.1 KB (3140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58fca3be97c9b8e61cbb219e608b0404fd4402bb68470cb8570ce25f91f0f323`  
		Last Modified: Tue, 06 Oct 2026 04:22:47 GMT  
		Size: 119.1 MB (119083517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfe8aef67d41b757ada81db19d1c36a37e57ff5dd848881c81dd3912439b0424`  
		Last Modified: Tue, 06 Oct 2026 04:22:44 GMT  
		Size: 9.6 KB (9575 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d801ad7dfeb7863800c7989adbdd3082d60ad7aab355878f11e7ee3dc4e4579`  
		Last Modified: Tue, 06 Oct 2026 04:22:44 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c52e6d8e5b9ee05f99903a131baff3aac0f4ed210336e2b46d447404bae8c31e`  
		Last Modified: Tue, 06 Oct 2026 04:22:44 GMT  
		Size: 168.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c32ef95ea6c63206ab410b03465fb4f46a72d9e975525b88a93bf1b49d815c2`  
		Last Modified: Tue, 06 Oct 2026 04:22:45 GMT  
		Size: 6.1 KB (6109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23679bfd2c830a6293686b51733b50b0e5bda3729b2a50a2dc0cadb26172d57d`  
		Last Modified: Tue, 06 Oct 2026 04:22:45 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:14-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:cc9eec227b86c4c5c13a7056cf963854b4fc167e862092d04bcab65f1554350c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5855096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70db8ba9823065713937f06aa2b7de945d3cd01aa363fcded67b67bcf13419fc`

```dockerfile
```

-	Layers:
	-	`sha256:74228a09d2441f9293605dfce5dc355a7e7434bae585eed85d510dc3d9260b1b`  
		Last Modified: Tue, 06 Oct 2026 04:22:44 GMT  
		Size: 5.8 MB (5801746 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f814f2af69ceeaa0bd8d37afb6d8de9380b6aa7697f971323eda24893928cbb4`  
		Last Modified: Tue, 06 Oct 2026 04:22:44 GMT  
		Size: 53.4 KB (53350 bytes)  
		MIME: application/vnd.in-toto+json
