## `postgres:16-trixie`

```console
$ docker pull postgres@sha256:a3b7f434b2dc57ce85a67e171163eb8ab1a1ebcb39d27484661f26b1dfbe30d6
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

### `postgres:16-trixie` - linux; amd64

```console
$ docker pull postgres@sha256:a85daf0dbd5e79586e850e3fe4b21b796799828ad015ce2166aeb98cc24da61c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.3 MB (160275130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b3c642526f8d274b12bdcd93b90aeb7e68a1f59eb20613adb96ed561c01d98c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:36:24 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Sat, 19 Sep 2026 00:36:29 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:36:35 GMT
ENV GOSU_VERSION=1.19
# Sat, 19 Sep 2026 00:36:35 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 19 Sep 2026 00:36:39 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Sat, 19 Sep 2026 00:36:39 GMT
ENV LANG=en_US.utf8
# Sat, 19 Sep 2026 00:36:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:36:42 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Sat, 19 Sep 2026 00:36:43 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Sat, 19 Sep 2026 00:36:43 GMT
ENV PG_MAJOR=16
# Sat, 19 Sep 2026 00:36:43 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/16/bin
# Sat, 19 Sep 2026 00:36:43 GMT
ENV PG_VERSION=16.15-1.pgdg13+2
# Sat, 19 Sep 2026 00:36:53 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Sat, 19 Sep 2026 00:36:54 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Sat, 19 Sep 2026 00:36:54 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Sat, 19 Sep 2026 00:36:54 GMT
ENV PGDATA=/var/lib/postgresql/data
# Sat, 19 Sep 2026 00:36:54 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Sat, 19 Sep 2026 00:36:54 GMT
VOLUME [/var/lib/postgresql/data]
# Sat, 19 Sep 2026 00:36:54 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:36:54 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Sat, 19 Sep 2026 00:36:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 00:36:54 GMT
STOPSIGNAL SIGINT
# Sat, 19 Sep 2026 00:36:54 GMT
EXPOSE map[5432/tcp:{}]
# Sat, 19 Sep 2026 00:36:54 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1fdda8975a0dc04b37463961ec29cbb9c02058c6e99462719516e9a27c2a49f`  
		Last Modified: Sat, 19 Sep 2026 00:37:13 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:106e7e3cf19ab1b8c141723dbf4ceca4741f5cb5083f64a173a3be202ad85f6c`  
		Last Modified: Sat, 19 Sep 2026 00:37:13 GMT  
		Size: 6.4 MB (6443018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba0e979d08189678611e345115225f2e28ac1ce91ef62949bf5f80b4c322f6b9`  
		Last Modified: Sat, 19 Sep 2026 00:37:13 GMT  
		Size: 1.3 MB (1256732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad29720ebbb9508a06ed90fc6ef00684b348c4b05d2f64ed18ba49bee4f364a0`  
		Last Modified: Sat, 19 Sep 2026 00:37:13 GMT  
		Size: 8.2 MB (8203844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a749597affc9ce3fc7ed997f5a8bd38f9ab7d7a79ceeffa1a7b2f277d5f6e85`  
		Last Modified: Sat, 19 Sep 2026 00:37:14 GMT  
		Size: 1.3 MB (1311686 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:483fb6941c15282e82f141269f8cb10d14a47466f44adff2dc881868031e16a0`  
		Last Modified: Sat, 19 Sep 2026 00:37:14 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:359ae0fc975d3df8ab9ee449a8a7bf5384c577e268c025c436d6d81260fe9bd7`  
		Last Modified: Sat, 19 Sep 2026 00:37:14 GMT  
		Size: 3.1 KB (3140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56d4d190ef07ad4aefa4be0646ef44a92a25db3b49aa7b9cd5126a6b38c9a819`  
		Last Modified: Sat, 19 Sep 2026 00:37:17 GMT  
		Size: 113.2 MB (113208313 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74156cf9f06362a90e5b499b98295092d4a8530c713313b27eb85bb1ebaf4f5a`  
		Last Modified: Sat, 19 Sep 2026 00:37:16 GMT  
		Size: 10.1 KB (10111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7c7d4dd80ba76223f9f40d9858c9fa2e2748c1a480f5184ca2a62c683fb399b`  
		Last Modified: Sat, 19 Sep 2026 00:37:16 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:749acf6dc6379079cc38f67870565d0df76a4966630fbee5bccb836c7442a620`  
		Last Modified: Sat, 19 Sep 2026 00:37:16 GMT  
		Size: 167.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d848243a73e2ef409e3507690a534c28c22c8667699ae8edba06e9469456ce0`  
		Last Modified: Sat, 19 Sep 2026 00:37:17 GMT  
		Size: 6.1 KB (6106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ad4758748c1b1cad06272c9f6560c27718782deab88b9a23db60ab0dbe89465`  
		Last Modified: Sat, 19 Sep 2026 00:37:17 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:16-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:17edeae7206c654022f4d90818299599e128def1fa5bd69d05f14a3a00f170c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5768805 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:252692b70827066facae35998aea71c843acc55fd7be5f1ea0873b9e65a0c517`

```dockerfile
```

-	Layers:
	-	`sha256:18528ee5b7b58615c04e0054317e2d823bfbb93d349ec1d601ff2772c6f9cfb2`  
		Last Modified: Sat, 19 Sep 2026 00:37:13 GMT  
		Size: 5.7 MB (5714910 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:985a98bdc1681ac5b68192996f81b7e2a83bbcf604e5e6564af870f4bdb19fb3`  
		Last Modified: Sat, 19 Sep 2026 00:37:13 GMT  
		Size: 53.9 KB (53895 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:16-trixie` - linux; arm variant v5

```console
$ docker pull postgres@sha256:1171256be02d995c45a0ba83137e464cb502c131bc3fa1cb2d24740cb4b4d1eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.3 MB (90295272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e58d213725a08d2641cd79f1121f515d997c37bd217a8a0e039244eefbde483b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:42:20 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Sat, 19 Sep 2026 00:42:30 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:42:40 GMT
ENV GOSU_VERSION=1.19
# Sat, 19 Sep 2026 00:42:40 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 19 Sep 2026 00:42:49 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Sat, 19 Sep 2026 00:42:49 GMT
ENV LANG=en_US.utf8
# Sat, 19 Sep 2026 00:42:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:42:55 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Sat, 19 Sep 2026 00:42:56 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Sat, 19 Sep 2026 00:42:56 GMT
ENV PG_MAJOR=16
# Sat, 19 Sep 2026 00:42:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/16/bin
# Sat, 19 Sep 2026 00:42:56 GMT
ENV PG_VERSION=16.15-1.pgdg13+2
# Sat, 19 Sep 2026 00:55:18 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Sat, 19 Sep 2026 00:55:19 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Sat, 19 Sep 2026 00:55:19 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Sat, 19 Sep 2026 00:55:19 GMT
ENV PGDATA=/var/lib/postgresql/data
# Sat, 19 Sep 2026 00:55:19 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Sat, 19 Sep 2026 00:55:19 GMT
VOLUME [/var/lib/postgresql/data]
# Sat, 19 Sep 2026 00:55:19 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:55:19 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Sat, 19 Sep 2026 00:55:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 00:55:19 GMT
STOPSIGNAL SIGINT
# Sat, 19 Sep 2026 00:55:19 GMT
EXPOSE map[5432/tcp:{}]
# Sat, 19 Sep 2026 00:55:19 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:6779b1da15e3aae8ffc697263f547a05eaff7ea80f63924ba5376253a6f3a12b`  
		Last Modified: Sat, 19 Sep 2026 00:03:25 GMT  
		Size: 28.0 MB (27998032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92f0fae6a1236fbebefc702056ece7286d6d79c9e917e61bc55d8050e63af0c6`  
		Last Modified: Sat, 19 Sep 2026 00:55:32 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a60db43b5ad06b6334325fea5de78d69db931d78b42783774b99f3e0f5b24088`  
		Last Modified: Sat, 19 Sep 2026 00:55:32 GMT  
		Size: 5.9 MB (5932463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fc2e4b32f8621beda034f7fd43ddbf5e897470798a1a7cdaa3307dee6fbf450`  
		Last Modified: Sat, 19 Sep 2026 00:55:32 GMT  
		Size: 1.2 MB (1227481 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e16c2730fa72506ef0962bcd85f4c8da0a3c19d83a41b5de2de3c526e13c250`  
		Last Modified: Sat, 19 Sep 2026 00:55:32 GMT  
		Size: 8.2 MB (8204240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e91b5153a9a626351d5e8ccab44ed03311b5c680e23d326c975872c7242be9d5`  
		Last Modified: Sat, 19 Sep 2026 00:55:33 GMT  
		Size: 1.3 MB (1317372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b708797f57745a3d2656ad661a8e2cfe39c9ee94a83273924b00846b54133a5a`  
		Last Modified: Sat, 19 Sep 2026 00:55:33 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77e6ec3867a0600397ca055d95788b6b97f115cd0d29382f6101e53fbe0127fb`  
		Last Modified: Sat, 19 Sep 2026 00:55:33 GMT  
		Size: 3.1 KB (3143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49604c31f53ecc0bb3a349ba4b7f7a4f3c401c9de17eb79efb1d5a2dd2b1e107`  
		Last Modified: Sat, 19 Sep 2026 00:55:34 GMT  
		Size: 45.6 MB (45594565 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0caaad119d31d352c6e2ef776dd459f17b1348e0b157c5b380c34a44c04f7901`  
		Last Modified: Sat, 19 Sep 2026 00:55:34 GMT  
		Size: 10.1 KB (10106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:540d9fe3e11b04e6a4a214c7711d4d05120003c5fbcc7ce917d01d1146aa7e44`  
		Last Modified: Sat, 19 Sep 2026 00:55:34 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2745fc21bbac1c8396465021b75005526d3ad1dd1aeb8f11f9385f8431b92eb`  
		Last Modified: Sat, 19 Sep 2026 00:55:34 GMT  
		Size: 168.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2756395564aa8088ffcdcd1df10381e10687d99f3a06893e22183276dafd030b`  
		Last Modified: Sat, 19 Sep 2026 00:55:35 GMT  
		Size: 6.1 KB (6108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c266f70535ff68e9e64a02887dfd7aecfbba5138c9c18deba3cd62e7a835c9e`  
		Last Modified: Sat, 19 Sep 2026 00:55:35 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:16-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:f9c6396a89ffb7f22850fc455d2257a07f4f516326f07847397e9854cd087118
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5145058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d39aede2afca9b4a0695c1d80ccfaddcecb3812de92d7ada5a765b7f26d1eb3b`

```dockerfile
```

-	Layers:
	-	`sha256:553e2bea2674c56405e20e62a2dfcb74348bc634a757e1aca9f2385e7f5462c4`  
		Last Modified: Sat, 19 Sep 2026 00:55:32 GMT  
		Size: 5.1 MB (5090946 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8e788a70208de450b257a81925060840b8157e7488ba6d47bc8a83f731058e36`  
		Last Modified: Sat, 19 Sep 2026 00:55:31 GMT  
		Size: 54.1 KB (54112 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:16-trixie` - linux; arm variant v7

```console
$ docker pull postgres@sha256:67bfedeb9290564c58de4712ca235171ebb9336b057d94961b58da0dbe38a88f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.7 MB (86662128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6765fe43efb31eb502729b05080f90fa872fcbc443bf3ea8c97b4fbcf82ccc16`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:16:20 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Sat, 19 Sep 2026 01:16:27 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:16:36 GMT
ENV GOSU_VERSION=1.19
# Sat, 19 Sep 2026 01:16:36 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 19 Sep 2026 01:16:42 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Sat, 19 Sep 2026 01:16:42 GMT
ENV LANG=en_US.utf8
# Sat, 19 Sep 2026 01:16:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:16:47 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Sat, 19 Sep 2026 01:16:48 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Sat, 19 Sep 2026 01:16:48 GMT
ENV PG_MAJOR=16
# Sat, 19 Sep 2026 01:16:48 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/16/bin
# Sat, 19 Sep 2026 01:16:48 GMT
ENV PG_VERSION=16.15-1.pgdg13+2
# Sat, 19 Sep 2026 01:27:53 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Sat, 19 Sep 2026 01:27:54 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Sat, 19 Sep 2026 01:27:54 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Sat, 19 Sep 2026 01:27:54 GMT
ENV PGDATA=/var/lib/postgresql/data
# Sat, 19 Sep 2026 01:27:54 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Sat, 19 Sep 2026 01:27:54 GMT
VOLUME [/var/lib/postgresql/data]
# Sat, 19 Sep 2026 01:27:54 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 01:27:54 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Sat, 19 Sep 2026 01:27:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 01:27:54 GMT
STOPSIGNAL SIGINT
# Sat, 19 Sep 2026 01:27:54 GMT
EXPOSE map[5432/tcp:{}]
# Sat, 19 Sep 2026 01:27:54 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:9121ca2c733ed1e136dc1485791030b81ac98d0f9f66d9cd83b343939764bfa9`  
		Last Modified: Sat, 19 Sep 2026 00:04:06 GMT  
		Size: 26.2 MB (26248928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf3fb9573d711cb0310736b7745fce034cab71288485242484eeec5d7d7b6be5`  
		Last Modified: Sat, 19 Sep 2026 01:28:06 GMT  
		Size: 1.2 KB (1169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21102cd8ade20a8752f78a30b253dc5c97fc3d7ae0eb76683d4ac0d989fa2ac2`  
		Last Modified: Sat, 19 Sep 2026 01:28:06 GMT  
		Size: 5.5 MB (5497297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:296793724389da1cc87b32402a8313cd418da502775c31e4bf843be3bbbf0965`  
		Last Modified: Sat, 19 Sep 2026 01:28:06 GMT  
		Size: 1.2 MB (1222372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea4691528dc08158eb1510e9c41f54fba75cec239c5c80692efce1e19ef4a5aa`  
		Last Modified: Sat, 19 Sep 2026 01:28:06 GMT  
		Size: 8.2 MB (8204014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8770e89c3fe0c2217b8cfa0aa48e3d3f1f8ccebd1ff9ff0506b76dc2375c1253`  
		Last Modified: Sat, 19 Sep 2026 01:28:07 GMT  
		Size: 1.2 MB (1172679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9859ef75dbfc475c5e96ff778e6d8d9720a5c1d4056b322c3dcdd1070793f52`  
		Last Modified: Sat, 19 Sep 2026 01:28:07 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c74d8b1bf5c6358899d91a28a71fbf4a19e3a5f07ed2eab97f66b319c576e3a3`  
		Last Modified: Sat, 19 Sep 2026 01:28:07 GMT  
		Size: 3.1 KB (3138 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b79847c6bff8c5183dd940b7c726e289ce419d1ed85790f725f6ddbd3a7d5925`  
		Last Modified: Sat, 19 Sep 2026 01:28:09 GMT  
		Size: 44.3 MB (44295712 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50d4c67a8a63c0f30f32f5aa1ecbd534ea5832e54b53f3cb28048ecd4d023bd1`  
		Last Modified: Sat, 19 Sep 2026 01:28:08 GMT  
		Size: 10.1 KB (10118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86d65421243041909a6a47956b9ae2a777698a0fe5105b7c77c835a9c068eb73`  
		Last Modified: Sat, 19 Sep 2026 01:28:08 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b30c9188653f2cd88a146d8c0fa26a5287a03f799e90cbdb889d2cf83c1eb5f4`  
		Last Modified: Sat, 19 Sep 2026 01:28:09 GMT  
		Size: 167.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58c44a3f6a9b2d3803ae3b2a37d0a8732eeace9f4fa31dc62477e86378481381`  
		Last Modified: Sat, 19 Sep 2026 01:28:09 GMT  
		Size: 6.1 KB (6107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bace1bf57acf18659bd9cb222df10bdaad5bd1ec2c68959c9e20cd9f9d7b279`  
		Last Modified: Sat, 19 Sep 2026 01:28:09 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:16-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:42c361079de5ffe4e4f6f9a7818bb1a91ece3f8562dad04f6ba568fcb712659f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5144357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c54d0a9d0a897b3116549c2efd91761e1c8984e9a5448625e7f83b300a681fae`

```dockerfile
```

-	Layers:
	-	`sha256:f3035d803792940329f32163737d6eb59d9745572027f8fe56fa58bda8debc32`  
		Last Modified: Sat, 19 Sep 2026 01:28:06 GMT  
		Size: 5.1 MB (5090245 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7d296b0a71e1c569c4bc1f56cf61097488f420c3cbe24405245bf1111adf8d3e`  
		Last Modified: Sat, 19 Sep 2026 01:28:06 GMT  
		Size: 54.1 KB (54112 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:16-trixie` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:1a43e6bb8872ccce507f8467e549a6166e8ff132ad26b49879f5ec86ee612868
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.9 MB (158896599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c319f2a8182bcdcbb3297d568e2a9cc9e7da3a624438e14b63921c719817e1b6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:37:09 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Sat, 19 Sep 2026 00:37:15 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:37:22 GMT
ENV GOSU_VERSION=1.19
# Sat, 19 Sep 2026 00:37:22 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 19 Sep 2026 00:37:27 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Sat, 19 Sep 2026 00:37:27 GMT
ENV LANG=en_US.utf8
# Sat, 19 Sep 2026 00:37:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:37:31 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Sat, 19 Sep 2026 00:37:31 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Sat, 19 Sep 2026 00:37:31 GMT
ENV PG_MAJOR=16
# Sat, 19 Sep 2026 00:37:31 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/16/bin
# Sat, 19 Sep 2026 00:37:31 GMT
ENV PG_VERSION=16.15-1.pgdg13+2
# Sat, 19 Sep 2026 00:39:33 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Sat, 19 Sep 2026 00:39:33 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Sat, 19 Sep 2026 00:39:33 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Sat, 19 Sep 2026 00:39:33 GMT
ENV PGDATA=/var/lib/postgresql/data
# Sat, 19 Sep 2026 00:39:33 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Sat, 19 Sep 2026 00:39:33 GMT
VOLUME [/var/lib/postgresql/data]
# Sat, 19 Sep 2026 00:39:33 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:39:34 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Sat, 19 Sep 2026 00:39:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 00:39:34 GMT
STOPSIGNAL SIGINT
# Sat, 19 Sep 2026 00:39:34 GMT
EXPOSE map[5432/tcp:{}]
# Sat, 19 Sep 2026 00:39:34 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09de454e7bd24dde9afaa4105d173843eef302bc3afdb26ed9c87d2dc328fe9e`  
		Last Modified: Sat, 19 Sep 2026 00:38:08 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d6dde914ee895302bb44eebc54eea6cea675273adc20c0afd22fcd90884b645`  
		Last Modified: Sat, 19 Sep 2026 00:38:08 GMT  
		Size: 6.2 MB (6234987 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8401bc43ce0dd52b75dec0326ef927c3a665e434065ab8eb98e1e5aa0373024`  
		Last Modified: Sat, 19 Sep 2026 00:38:08 GMT  
		Size: 1.2 MB (1209630 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76db794b62ee00bc2910d723e91440694c1a4e25a89c3288dbe4d5954c4c6ce0`  
		Last Modified: Sat, 19 Sep 2026 00:38:08 GMT  
		Size: 8.2 MB (8203991 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9d6ac5e716b1811bee21a97b451d06d71e29ba5d860d7455a3bb386e07251eb`  
		Last Modified: Sat, 19 Sep 2026 00:38:09 GMT  
		Size: 1.2 MB (1220661 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae8ae052b88d215cd6191723629975ecd93e6deaca73ed592479c9bcb311d6f3`  
		Last Modified: Sat, 19 Sep 2026 00:38:09 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca49afcdbda407852cffc02c892d7c3f8ddab2dc40355f9e27352fe9816aa520`  
		Last Modified: Sat, 19 Sep 2026 00:38:09 GMT  
		Size: 3.1 KB (3140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3672748066c36c062b931b172f1d61ea0356509763b60e3b1dc402582cec297b`  
		Last Modified: Sat, 19 Sep 2026 00:39:55 GMT  
		Size: 111.8 MB (111816515 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a09c0d645738817f0c23d2c8a967bb10f1abcb390c7ad150990f4d84cdce9fd`  
		Last Modified: Sat, 19 Sep 2026 00:39:52 GMT  
		Size: 10.1 KB (10115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05353461882601fa0261fe50eac51207c63e872094ac5f287939f90ba03ae1f5`  
		Last Modified: Sat, 19 Sep 2026 00:39:52 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:971b44d2c3d3aef003b5071118bba25369a5a5bc2da3bf8c08b1c722ea41b3e4`  
		Last Modified: Sat, 19 Sep 2026 00:39:52 GMT  
		Size: 168.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb122215696f6f0a8ee33670081b561cc7cb8219b7b2fe49178c59c8bddbebdf`  
		Last Modified: Sat, 19 Sep 2026 00:39:53 GMT  
		Size: 6.1 KB (6106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46849de44505a6da0e643fda27e490a6a8faf5572b1f423cced101682c6a06b5`  
		Last Modified: Sat, 19 Sep 2026 00:39:54 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:16-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:4490c40b5db69257d96dcf02a32241d0cda750c912a477c5def44d285be9d87f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5775412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b86ceda31ab5ca6a04242ef7407572ba5cbe0c4961de1b2db7a2e0a2bcef8f6`

```dockerfile
```

-	Layers:
	-	`sha256:4a21cd5afea0f09fa823287b94195be89c50c6bfbace29f262e205b5ae452b0f`  
		Last Modified: Sat, 19 Sep 2026 00:39:52 GMT  
		Size: 5.7 MB (5721248 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8d58cca17f3318dac1f8ed6fb9ba47a81624553adb7fcd35975cbd83d1dd057d`  
		Last Modified: Sat, 19 Sep 2026 00:39:52 GMT  
		Size: 54.2 KB (54164 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:16-trixie` - linux; 386

```console
$ docker pull postgres@sha256:68f8e1b3e18f48152bd914c28c635e516379250b4d95cf91f3474146b3f3c9eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.3 MB (96297939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fdd68e0a4bcc542c4fbf5e48f69d45bd56759155e7a85cac22ba2cb23d49ce8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:39:11 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Sat, 19 Sep 2026 00:39:18 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:39:24 GMT
ENV GOSU_VERSION=1.19
# Sat, 19 Sep 2026 00:39:24 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 19 Sep 2026 00:39:29 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Sat, 19 Sep 2026 00:39:29 GMT
ENV LANG=en_US.utf8
# Sat, 19 Sep 2026 00:39:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:39:33 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Sat, 19 Sep 2026 00:39:34 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Sat, 19 Sep 2026 00:39:34 GMT
ENV PG_MAJOR=16
# Sat, 19 Sep 2026 00:39:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/16/bin
# Sat, 19 Sep 2026 00:39:34 GMT
ENV PG_VERSION=16.15-1.pgdg13+2
# Sat, 19 Sep 2026 00:47:48 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Sat, 19 Sep 2026 00:47:49 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Sat, 19 Sep 2026 00:47:49 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Sat, 19 Sep 2026 00:47:49 GMT
ENV PGDATA=/var/lib/postgresql/data
# Sat, 19 Sep 2026 00:47:49 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Sat, 19 Sep 2026 00:47:49 GMT
VOLUME [/var/lib/postgresql/data]
# Sat, 19 Sep 2026 00:47:49 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:47:49 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Sat, 19 Sep 2026 00:47:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 00:47:49 GMT
STOPSIGNAL SIGINT
# Sat, 19 Sep 2026 00:47:49 GMT
EXPOSE map[5432/tcp:{}]
# Sat, 19 Sep 2026 00:47:49 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:8fa51aa063d1c9d8582b37a45055739eef6ee879e1364bcb6b75a064ad0d1906`  
		Last Modified: Sat, 19 Sep 2026 00:04:01 GMT  
		Size: 31.3 MB (31340398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2440d5c8e6ef87188689df66cdb535fc483ab44a235cc18b0cace7dbd9adf995`  
		Last Modified: Sat, 19 Sep 2026 00:48:00 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:592e55dc26bb3eae1e0e036fd724ab7e3744998317f244962c2fe11618e93ac5`  
		Last Modified: Sat, 19 Sep 2026 00:48:00 GMT  
		Size: 6.6 MB (6631483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f616435ff90475446468bb895a201748e774c4dd233cc3b489bdd66cace36e8`  
		Last Modified: Sat, 19 Sep 2026 00:48:00 GMT  
		Size: 1.2 MB (1225883 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2f8022830f188a49086e4729a8e0023bd471f5c97936446d38a30cb159ba6fc`  
		Last Modified: Sat, 19 Sep 2026 00:48:01 GMT  
		Size: 8.2 MB (8203948 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67096b2996dcd7120191dbebcefc4396e0f685fe9160e3b7b8f3155811f4de0c`  
		Last Modified: Sat, 19 Sep 2026 00:48:01 GMT  
		Size: 1.3 MB (1308278 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aff4652a38ff0f58341513a3e8f21c63178cf7087272e9da869a875095d57510`  
		Last Modified: Sat, 19 Sep 2026 00:48:01 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08f4934c0cebc0de76c05bb19f50805dff49abdb3d8e25db3916416afe4a3d8b`  
		Last Modified: Sat, 19 Sep 2026 00:48:02 GMT  
		Size: 3.1 KB (3143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb3872e56a3c3260abb91856a9c9150ca903241f3021de3a7edba1eb8450cf75`  
		Last Modified: Sat, 19 Sep 2026 00:48:03 GMT  
		Size: 47.6 MB (47566821 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52deb3c25a97f36120f43b0ce5c1010f1780ed91b147b416a80081d314ede3ce`  
		Last Modified: Sat, 19 Sep 2026 00:48:02 GMT  
		Size: 10.1 KB (10111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1368bd65bc7cee313e3b52c998785af45a68865b25b8f28e85d0f4fd273b8a57`  
		Last Modified: Sat, 19 Sep 2026 00:48:03 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d49d4e9ca4208cc2fab7ef84b578d434b8b1d2446b330f91d8d8cd589bd17a18`  
		Last Modified: Sat, 19 Sep 2026 00:48:03 GMT  
		Size: 168.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b41e040a317b4472d68e141a0c90153206938eb200f007b0838200cb4382d441`  
		Last Modified: Sat, 19 Sep 2026 00:48:04 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9dd3247e3a42ab4b67f9495d5a65476d47e7c4aed4934bb1c3ba750d26f7254`  
		Last Modified: Sat, 19 Sep 2026 00:48:04 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:16-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:56648a8e12777de951c37b6834c7e5d18d6a46a924ac1875253452dadf758192
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5140149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8abfed8ecf9e0a3008758986d9d3431a16e50f39ef6c10b93ff80b1b811aa18e`

```dockerfile
```

-	Layers:
	-	`sha256:c81166ede3f8fe4e5cce0f679602a7b3692b56940d1bf719e11bb536441ba9f8`  
		Last Modified: Sat, 19 Sep 2026 00:48:00 GMT  
		Size: 5.1 MB (5086314 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a939abc8a1129ed4fd1d36b5386bdd53246a8f2c77d6c597a1a1279c7efa5d77`  
		Last Modified: Sat, 19 Sep 2026 00:48:00 GMT  
		Size: 53.8 KB (53835 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:16-trixie` - linux; ppc64le

```console
$ docker pull postgres@sha256:6584b3d72dd8ccbb224fc02682e4b37b83ee4b08cecf11aa9127f361a6cd8b50
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.5 MB (172545987 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1662efd330c017245657f8eda12a03ab1a050e9de59fc9d63597bb64c6ffe702`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 02:46:47 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Sat, 19 Sep 2026 02:47:06 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 02:47:26 GMT
ENV GOSU_VERSION=1.19
# Sat, 19 Sep 2026 02:47:26 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 19 Sep 2026 02:47:47 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Sat, 19 Sep 2026 02:47:47 GMT
ENV LANG=en_US.utf8
# Sat, 19 Sep 2026 02:47:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 02:47:57 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Sat, 19 Sep 2026 02:47:59 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Sat, 19 Sep 2026 02:47:59 GMT
ENV PG_MAJOR=16
# Sat, 19 Sep 2026 02:47:59 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/16/bin
# Sat, 19 Sep 2026 02:47:59 GMT
ENV PG_VERSION=16.15-1.pgdg13+2
# Sat, 19 Sep 2026 02:55:00 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Sat, 19 Sep 2026 02:55:00 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Sat, 19 Sep 2026 02:55:00 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Sat, 19 Sep 2026 02:55:00 GMT
ENV PGDATA=/var/lib/postgresql/data
# Sat, 19 Sep 2026 02:55:01 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Sat, 19 Sep 2026 02:55:01 GMT
VOLUME [/var/lib/postgresql/data]
# Sat, 19 Sep 2026 02:55:02 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 02:55:03 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Sat, 19 Sep 2026 02:55:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 02:55:03 GMT
STOPSIGNAL SIGINT
# Sat, 19 Sep 2026 02:55:03 GMT
EXPOSE map[5432/tcp:{}]
# Sat, 19 Sep 2026 02:55:03 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:7cae0376943bf0e6eee16df358f9d9b19c3ecbf1126c81658c6b41549e7b6cb6`  
		Last Modified: Sat, 19 Sep 2026 00:05:59 GMT  
		Size: 33.6 MB (33641235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f1937550c6f8286c86666c3c43422e1a67d6b4ee1a959498e7aea627947bd47`  
		Last Modified: Sat, 19 Sep 2026 02:49:39 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90c4402cc3ed96fba8bd7e1e2597ff523125b7a52d4d0d1479887c612801dec8`  
		Last Modified: Sat, 19 Sep 2026 02:49:39 GMT  
		Size: 7.1 MB (7076892 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3893ded80d27a7c1902e32f5eb23addaafecc6dca2ad12e895e9318735e767a2`  
		Last Modified: Sat, 19 Sep 2026 02:49:39 GMT  
		Size: 1.2 MB (1214852 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:616b792b16a3574dc22e12b668146e2e72fcc3d5a1bb3519b78a0501321741e0`  
		Last Modified: Sat, 19 Sep 2026 02:49:39 GMT  
		Size: 8.2 MB (8204097 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d460c684d72c733ce46f5c15e0c6a9ad75acb7693125b2d96ca8d30ed8085bbb`  
		Last Modified: Sat, 19 Sep 2026 02:49:40 GMT  
		Size: 1.4 MB (1394976 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:569c33ada368b7496b37a32049d240dd5e4a945077d47f3dd83950a6a63f22d5`  
		Last Modified: Sat, 19 Sep 2026 02:49:40 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0349c56eae0e1a90ab92a02a17a2c44f9ea2f4f3d31ff6909db81f333279f1d`  
		Last Modified: Sat, 19 Sep 2026 02:49:40 GMT  
		Size: 3.1 KB (3144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e65189bc0daa393656f068d181488a7ffd42b1f72ce5a762cf94a7d9bb8c82a9`  
		Last Modified: Sat, 19 Sep 2026 02:55:51 GMT  
		Size: 121.0 MB (120992812 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b6edb69702bed26292384fecee6ff12c4c67bc211e0939d272d17a0e12631a6`  
		Last Modified: Sat, 19 Sep 2026 02:55:48 GMT  
		Size: 10.1 KB (10110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06680afe263c3c3315118c7421d7945103fcd60e59131f844406913265434748`  
		Last Modified: Sat, 19 Sep 2026 02:55:48 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0383d61239f53ab662c931033fe0789270195dd497554464dc6dc102473ca5f1`  
		Last Modified: Sat, 19 Sep 2026 02:55:48 GMT  
		Size: 168.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9efcaed40ccd5a6dd3835e30dd975380ff0ddeb507b71040119cf9900e7b576c`  
		Last Modified: Sat, 19 Sep 2026 02:55:49 GMT  
		Size: 6.1 KB (6105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dd491e78accf56f0ecb8945e683acca0347432a3f10b2c7b65843115275b8fa`  
		Last Modified: Sat, 19 Sep 2026 02:55:49 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:16-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:9987b6004819402b719505177f21b575ffc73161e975a150e629b024e4a26c6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5775483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3ca8edc4f1d9f7e8580b0560eec88fd962429d2cfc86620496605cdd98151a1`

```dockerfile
```

-	Layers:
	-	`sha256:4b64a475cd9102989336d81745a134f2e9c3b87c0c46512da5192d24a18a1061`  
		Last Modified: Sat, 19 Sep 2026 02:55:48 GMT  
		Size: 5.7 MB (5721523 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b39ba9c4a5c57be4c738c908e493f46aa147d78a7a54fe482f1539395ad78b1e`  
		Last Modified: Sat, 19 Sep 2026 02:55:48 GMT  
		Size: 54.0 KB (53960 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:16-trixie` - linux; riscv64

```console
$ docker pull postgres@sha256:213b2a90a919e14e9f8a9a3f1a1f0e31cfe3fad2d95b1049419f5f2c13afeacd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.3 MB (94269759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fd89700d82b69e699da8febc41da64c4a87e6d1d9d9489f227411852420b2bd`
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
ENV PG_MAJOR=16
# Wed, 26 Aug 2026 12:00:10 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/16/bin
# Wed, 26 Aug 2026 12:00:10 GMT
ENV PG_VERSION=16.15-1.pgdg13+2
# Wed, 26 Aug 2026 20:34:33 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Wed, 26 Aug 2026 20:34:34 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 26 Aug 2026 20:34:34 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 26 Aug 2026 20:34:34 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 26 Aug 2026 20:34:34 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Wed, 26 Aug 2026 20:34:34 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 26 Aug 2026 20:34:35 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 26 Aug 2026 20:34:35 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 26 Aug 2026 20:34:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Aug 2026 20:34:35 GMT
STOPSIGNAL SIGINT
# Wed, 26 Aug 2026 20:34:35 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 26 Aug 2026 20:34:35 GMT
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
	-	`sha256:43630206da1e55ffb6aa39ed68b69459109dc6f745ffe18deca446464452da69`  
		Last Modified: Wed, 26 Aug 2026 20:37:09 GMT  
		Size: 46.2 MB (46231437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:213b101fe98229eada3d807c1051c1c8e277b148f29e485e55025ca6f9f05298`  
		Last Modified: Wed, 26 Aug 2026 20:37:02 GMT  
		Size: 10.1 KB (10120 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0b2109712e56b0f5978f2894a5bc0eaa9b9e0475c1235a73f311663925216c7`  
		Last Modified: Wed, 26 Aug 2026 20:37:02 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c6e66a7132eed7b05daa9b6ce27a5bca1cf19bed424419552e353c85d2bbf98`  
		Last Modified: Wed, 26 Aug 2026 20:37:02 GMT  
		Size: 168.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd76926b9ca4c1e370ae2f758249b960436ac3487ff428c26a5407db6621c1fb`  
		Last Modified: Wed, 26 Aug 2026 20:37:03 GMT  
		Size: 6.1 KB (6112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68be92947ab5d5e17e1f4bb3257e1df63f59960ee596ea5d782200ac67cce051`  
		Last Modified: Wed, 26 Aug 2026 20:37:03 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:16-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:66dfb086e25f61ff8c889c745a1f1c0ba16cf93dd01af7c3e479cb931c52bf22
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5129424 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1431df9484d0d206a5becdec8e7beba449be9e9412e32a07771ebaad5b1ee05a`

```dockerfile
```

-	Layers:
	-	`sha256:ab75c31c978c36446bb6f0426a803c31955ca522485e420638a73862e1155feb`  
		Last Modified: Wed, 26 Aug 2026 20:37:02 GMT  
		Size: 5.1 MB (5075469 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b29d71fafdcfd27be81350f3e7e0491ffa4e010350756be00c80c8b3abd38585`  
		Last Modified: Wed, 26 Aug 2026 20:37:01 GMT  
		Size: 54.0 KB (53955 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:16-trixie` - linux; s390x

```console
$ docker pull postgres@sha256:79dde38e184723db8adddbe112068530a3d95fee45e173d4a7c4b183e46cf5f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.8 MB (174798333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8faf1c1705fc2b643e39671bee457976cd5a44ad88e3d7db4e5e09a3eead1939`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:40:09 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Sat, 19 Sep 2026 00:40:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:40:21 GMT
ENV GOSU_VERSION=1.19
# Sat, 19 Sep 2026 00:40:21 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 19 Sep 2026 00:40:26 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Sat, 19 Sep 2026 00:40:26 GMT
ENV LANG=en_US.utf8
# Sat, 19 Sep 2026 00:40:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:40:29 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Sat, 19 Sep 2026 00:40:30 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Sat, 19 Sep 2026 00:40:30 GMT
ENV PG_MAJOR=16
# Sat, 19 Sep 2026 00:40:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/16/bin
# Sat, 19 Sep 2026 00:40:30 GMT
ENV PG_VERSION=16.15-1.pgdg13+2
# Sat, 19 Sep 2026 00:52:02 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt trixie-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | loong64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Sat, 19 Sep 2026 00:52:02 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Sat, 19 Sep 2026 00:52:02 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Sat, 19 Sep 2026 00:52:02 GMT
ENV PGDATA=/var/lib/postgresql/data
# Sat, 19 Sep 2026 00:52:03 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Sat, 19 Sep 2026 00:52:03 GMT
VOLUME [/var/lib/postgresql/data]
# Sat, 19 Sep 2026 00:52:03 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:52:03 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Sat, 19 Sep 2026 00:52:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 00:52:03 GMT
STOPSIGNAL SIGINT
# Sat, 19 Sep 2026 00:52:03 GMT
EXPOSE map[5432/tcp:{}]
# Sat, 19 Sep 2026 00:52:03 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:555a5a78bd257b9d7b09de43229384b94c86d3f5dbe0cba427af91f324e5a527`  
		Last Modified: Sat, 19 Sep 2026 00:03:06 GMT  
		Size: 29.9 MB (29899149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c905ec63242645b507dab55b0c2f578cbbd7589528a2f974ba4e207d67042cec`  
		Last Modified: Sat, 19 Sep 2026 00:52:01 GMT  
		Size: 1.2 KB (1169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29ba16049587fff23da2d7a7d0ded66180691082df52a83362ce76255aa79191`  
		Last Modified: Sat, 19 Sep 2026 00:52:01 GMT  
		Size: 6.4 MB (6408489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ed9afa0e999bd87b7911874083f128c59bd8a2e6709c15b178a84756e8459b7`  
		Last Modified: Sat, 19 Sep 2026 00:52:01 GMT  
		Size: 1.2 MB (1230274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:264f1919ce4f18915ba63ab11cae8fa0b9afb10648cfbd317785c9bc4582f8be`  
		Last Modified: Sat, 19 Sep 2026 00:52:01 GMT  
		Size: 8.3 MB (8259006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3abc97796be59531e3379002c12db5dc28874bf40be1e8826baad90ca957edde`  
		Last Modified: Sat, 19 Sep 2026 00:52:02 GMT  
		Size: 1.4 MB (1398236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5916e41bb083ba31d72bc30ea4943d65dd4f3b98293ab9e485ac25e0ef6f8526`  
		Last Modified: Sat, 19 Sep 2026 00:52:02 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f7bed3026cda1298ddee0699aa2c77007b985cdacd4b45cfb9ceec3c36a9d31`  
		Last Modified: Sat, 19 Sep 2026 00:52:02 GMT  
		Size: 3.1 KB (3144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83707a92d011535a1991467e57002a411dc2d224449330c4481ee22eba686c6d`  
		Last Modified: Sat, 19 Sep 2026 00:52:32 GMT  
		Size: 127.6 MB (127582048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4331ed9d5a04aef3ab34c28f1798c672c8d5b9477e3a8c643aefa367a95b0630`  
		Last Modified: Sat, 19 Sep 2026 00:52:30 GMT  
		Size: 10.1 KB (10113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a908936872abbbd48891ac583c75a6a2cf70042b9938ff6d0f49d46a287aac2`  
		Last Modified: Sat, 19 Sep 2026 00:52:30 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e3227838c72b0b044551f7e458af22c7579f70eb71b1d71b500920c467be870`  
		Last Modified: Sat, 19 Sep 2026 00:52:30 GMT  
		Size: 166.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2687515b8ddef3c32dcc121672a977ea87df8170b71bb20cba3b5e66a26bddc9`  
		Last Modified: Sat, 19 Sep 2026 00:52:31 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76b870b1c2497ec691cfdc82d0680b08d06305027a6456898bb48b070646b8e9`  
		Last Modified: Sat, 19 Sep 2026 00:52:31 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:16-trixie` - unknown; unknown

```console
$ docker pull postgres@sha256:6900d7d92ca9ef0b40745c6a52c42f83a7502e4b9eec0b6af5f8a3c56e89454b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5785500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:289abef3ecf44db55157901581e8bb026ef3c79eb9d16f97695a268a7909bc86`

```dockerfile
```

-	Layers:
	-	`sha256:c64f652cb507fdaa1bc2d524fd0ef1917e9af6580946afac50a99791872b8cd8`  
		Last Modified: Sat, 19 Sep 2026 00:52:30 GMT  
		Size: 5.7 MB (5731605 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0347128c0904b585dc696c9105a75778b7ba7b0040c45a54cee86a86c141d8ff`  
		Last Modified: Sat, 19 Sep 2026 00:52:30 GMT  
		Size: 53.9 KB (53895 bytes)  
		MIME: application/vnd.in-toto+json
