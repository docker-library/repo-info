## `postgres:bookworm`

```console
$ docker pull postgres@sha256:f4859caf96de494e38efa69ed703b08a5bbd9605e152e604f2daec8841c87c41
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

### `postgres:bookworm` - linux; amd64

```console
$ docker pull postgres@sha256:11d69ab3bc8985eb7679015c02005da5f8f6da8d6a0cc8a3bd393a2f988a98c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.0 MB (164971474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:369fd4b9e890f7493dbc4c99bedad15cd14836981b2d14671fe25a99f1c7738b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Fri, 20 Nov 2026 00:37:36 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 		install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql; 		install --verbose --directory --owner postgres --group postgres --mode 3777 /run/postgresql; 		mkdir -p /usr/local/lib/tmpfiles.d; 	printf '%s\n' 		'd /var/lib/postgresql 1777 postgres postgres' 		'd /run/postgresql 3777 postgres postgres' 		> /usr/local/lib/tmpfiles.d/postgresql-common.conf # buildkit
# Fri, 20 Nov 2026 00:37:41 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 00:37:47 GMT
ENV GOSU_VERSION=1.20
# Fri, 20 Nov 2026 00:37:47 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Fri, 20 Nov 2026 00:37:52 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Fri, 20 Nov 2026 00:37:52 GMT
ENV LANG=en_US.utf8
# Fri, 20 Nov 2026 00:37:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 00:37:54 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 20 Nov 2026 00:37:55 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Fri, 20 Nov 2026 00:37:55 GMT
ENV PG_MAJOR=19
# Fri, 20 Nov 2026 00:37:55 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Fri, 20 Nov 2026 00:37:55 GMT
ENV PG_VERSION=19.0-1.pgdg12+1
# Fri, 20 Nov 2026 00:38:12 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Fri, 20 Nov 2026 00:38:12 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Fri, 20 Nov 2026 00:38:12 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Fri, 20 Nov 2026 00:38:12 GMT
VOLUME [/var/lib/postgresql]
# Fri, 20 Nov 2026 00:38:12 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Fri, 20 Nov 2026 00:38:12 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Fri, 20 Nov 2026 00:38:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 20 Nov 2026 00:38:12 GMT
STOPSIGNAL SIGINT
# Fri, 20 Nov 2026 00:38:12 GMT
EXPOSE map[5432/tcp:{}]
# Fri, 20 Nov 2026 00:38:12 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:dd051e1b8c92ff101fa3071ab97ea4924885942f15644e01c3dc095764e863e3`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 28.2 MB (28247982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb299f8728e0144ed7c73f2b4e5aab05a78fa2d53c9f956953c6b730f62250e1`  
		Last Modified: Fri, 20 Nov 2026 00:38:34 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffdb0364365b6f20e854e692ee82dcb573084e5106a4fb4aa4c50e8678a47f63`  
		Last Modified: Fri, 20 Nov 2026 00:38:34 GMT  
		Size: 4.5 MB (4534252 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bba22a6b03e5aea190b39890629ea339f9d9e3168695e79382f8e9229bba3c4`  
		Last Modified: Fri, 20 Nov 2026 00:38:34 GMT  
		Size: 1.3 MB (1251432 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f99114029dd918ece579e36cad21216683cf02c1d410398a9773057b8e7b43f0`  
		Last Modified: Fri, 20 Nov 2026 00:38:34 GMT  
		Size: 8.1 MB (8066459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:703b3f805763a08059384dd73c02b94f1ab4cdfbcd446e071be63dfb14691cb8`  
		Last Modified: Fri, 20 Nov 2026 00:38:35 GMT  
		Size: 1.2 MB (1196441 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15031a4de0ccca416e7a3ec4942412c254f5a4554f5f30a1be180cdff909a183`  
		Last Modified: Fri, 20 Nov 2026 00:38:35 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e220de3b8cfcec2c7163db4f8db2aaa556d646cc4cb4fcd7293f1c54dc9a08ab`  
		Last Modified: Fri, 20 Nov 2026 00:38:35 GMT  
		Size: 3.1 KB (3144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b17c8126c7a1148f97ab4908faf2dba3cdb3668a2663ef51a5deddde09a1ed3`  
		Last Modified: Fri, 20 Nov 2026 00:38:39 GMT  
		Size: 121.6 MB (121642513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66a43a7f568c7ce15d548ade3a0ad7c8548e55743d3518932fe118d0a2704eeb`  
		Last Modified: Fri, 20 Nov 2026 00:38:36 GMT  
		Size: 21.5 KB (21519 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80d6729899c9a7804945fc3753867cd388f8e7a9291ae14bd9ac3cb626e541c4`  
		Last Modified: Fri, 20 Nov 2026 00:38:36 GMT  
		Size: 6.1 KB (6105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3ca32f08e1e12b7bda428e8b4b5fd6d6fb2194ccd3c977ba727cf55038be2ae`  
		Last Modified: Fri, 20 Nov 2026 00:38:37 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:45a4b0d2715ac016fa385c2e97517c58e575b6c9a3dc25655244c981bbac995f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6610488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:565d364c15adade5d63a6a95c0c8a68b7c1cbc71d77b146da0a6a403f8cf5f24`

```dockerfile
```

-	Layers:
	-	`sha256:239de2c59a8747d9ee73b4fd3281adc8f6b21114f0593868457181efd3dd6370`  
		Last Modified: Fri, 20 Nov 2026 00:38:34 GMT  
		Size: 6.6 MB (6560484 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c76812e90c67f73ad39936e1d09359e444a3fd044162ebd1d786fc430e756b6b`  
		Last Modified: Fri, 20 Nov 2026 00:38:34 GMT  
		Size: 50.0 KB (50004 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:bookworm` - linux; arm variant v7

```console
$ docker pull postgres@sha256:0208804bc1dd6dd4296929de4eae50cd651eb9ad771485767ff4b6f554f977c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.0 MB (89975132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24b8727779e5a47b87a08892782b79f583891de2a01f41019b27c9fbaa4ed1e7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1793827419'
# Fri, 20 Nov 2026 00:38:42 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 		install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql; 		install --verbose --directory --owner postgres --group postgres --mode 3777 /run/postgresql; 		mkdir -p /usr/local/lib/tmpfiles.d; 	printf '%s\n' 		'd /var/lib/postgresql 1777 postgres postgres' 		'd /run/postgresql 3777 postgres postgres' 		> /usr/local/lib/tmpfiles.d/postgresql-common.conf # buildkit
# Fri, 20 Nov 2026 00:38:49 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 00:38:57 GMT
ENV GOSU_VERSION=1.20
# Fri, 20 Nov 2026 00:38:57 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Fri, 20 Nov 2026 00:39:02 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Fri, 20 Nov 2026 00:39:02 GMT
ENV LANG=en_US.utf8
# Fri, 20 Nov 2026 00:39:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 00:39:06 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 20 Nov 2026 00:39:07 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Fri, 20 Nov 2026 00:39:07 GMT
ENV PG_MAJOR=19
# Fri, 20 Nov 2026 00:39:07 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Fri, 20 Nov 2026 00:39:07 GMT
ENV PG_VERSION=19.0-1.pgdg12+1
# Fri, 20 Nov 2026 00:51:09 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Fri, 20 Nov 2026 00:51:10 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Fri, 20 Nov 2026 00:51:10 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Fri, 20 Nov 2026 00:51:10 GMT
VOLUME [/var/lib/postgresql]
# Fri, 20 Nov 2026 00:51:10 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Fri, 20 Nov 2026 00:51:10 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Fri, 20 Nov 2026 00:51:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 20 Nov 2026 00:51:10 GMT
STOPSIGNAL SIGINT
# Fri, 20 Nov 2026 00:51:10 GMT
EXPOSE map[5432/tcp:{}]
# Fri, 20 Nov 2026 00:51:10 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:b37c96781b87a85cb04abbf5abfe88c91253a506348403ce0022810d702aa72c`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 24.0 MB (23961356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c73d7a185295b22285b177a388cb2e3f247d817b9b9b47ebe28341787b49768`  
		Last Modified: Fri, 20 Nov 2026 00:39:49 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d33afe575a9ccbc8631069af744ccfdce84c0dbfd6f642849dc59c83e7a40d3d`  
		Last Modified: Fri, 20 Nov 2026 00:51:23 GMT  
		Size: 3.7 MB (3742480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21717ac711a76510c0be48adee68562ee11ca6acbd7ffaf9bf9f8269332bb2fe`  
		Last Modified: Fri, 20 Nov 2026 00:51:23 GMT  
		Size: 1.2 MB (1217403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b62de1789df073d23f6b1dd7ac79594311072613194eb2cfd078732d85f6bac`  
		Last Modified: Fri, 20 Nov 2026 00:51:24 GMT  
		Size: 8.1 MB (8066498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7d0042c1453ab6e47ead0f2649eedda265ec72b9210ab8a757f88bc1f4c6d6d`  
		Last Modified: Fri, 20 Nov 2026 00:51:24 GMT  
		Size: 1.1 MB (1067340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3b967c19f4b4bbccd9d892b9e3d4fa17305338cd0aca62031306c0eb13d78c0`  
		Last Modified: Fri, 20 Nov 2026 00:51:24 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e811eea76d26071374c50f13f5d2129302e73cbc78fd96c63f63a5abddaeecc9`  
		Last Modified: Fri, 20 Nov 2026 00:51:25 GMT  
		Size: 3.1 KB (3145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ba8e91874d1e5ff95feea2ee9d16e3fab330e0c45fb1161a464743a5c3f72a2`  
		Last Modified: Fri, 20 Nov 2026 00:51:26 GMT  
		Size: 51.9 MB (51887662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bb75b202b333b272881960becc77b28791d5345ebf4060649ec318e79e04573`  
		Last Modified: Fri, 20 Nov 2026 00:51:26 GMT  
		Size: 21.5 KB (21515 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66391b76f7d78c11b04865475708fee3ecd6a4372d3f500a5acec284d14332f2`  
		Last Modified: Fri, 20 Nov 2026 00:51:26 GMT  
		Size: 6.1 KB (6107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd862e90f0b99804137587f2e8dd9cfa0ff2abfaff0253a01cb1eba8015b7a35`  
		Last Modified: Fri, 20 Nov 2026 00:51:26 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:020ea2233ad34caaeeaa7777cbcb582ccfda57c467253bcb3dded8da2d54e138
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5740303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8caaa1caa449d6ecd65649b92ba85017457193b165b78e94c714b89ad0fb4cb8`

```dockerfile
```

-	Layers:
	-	`sha256:fe4a820be93878533767115e5f59e8b997f23ebc4610af9c6e89a4f361057286`  
		Last Modified: Fri, 20 Nov 2026 00:51:24 GMT  
		Size: 5.7 MB (5690114 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ed1efe691b9da4c477353116027ff5408227aebe82aacb2646390c10d0795df6`  
		Last Modified: Fri, 20 Nov 2026 00:51:23 GMT  
		Size: 50.2 KB (50189 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:bookworm` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:5213fc75fb1d33df2d1d13aa861ae4a59b45508948871ee70a6fe5f0a7da349b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.8 MB (162835737 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d5102ce41a49f97ad654b4cf8eb02500ded5da6232146c96e16c7bfec326372`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Fri, 20 Nov 2026 00:37:50 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 		install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql; 		install --verbose --directory --owner postgres --group postgres --mode 3777 /run/postgresql; 		mkdir -p /usr/local/lib/tmpfiles.d; 	printf '%s\n' 		'd /var/lib/postgresql 1777 postgres postgres' 		'd /run/postgresql 3777 postgres postgres' 		> /usr/local/lib/tmpfiles.d/postgresql-common.conf # buildkit
# Fri, 20 Nov 2026 00:37:55 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 00:38:03 GMT
ENV GOSU_VERSION=1.20
# Fri, 20 Nov 2026 00:38:03 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Fri, 20 Nov 2026 00:38:08 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Fri, 20 Nov 2026 00:38:08 GMT
ENV LANG=en_US.utf8
# Fri, 20 Nov 2026 00:38:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 00:38:11 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 20 Nov 2026 00:38:11 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Fri, 20 Nov 2026 00:38:11 GMT
ENV PG_MAJOR=19
# Fri, 20 Nov 2026 00:38:11 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Fri, 20 Nov 2026 00:38:11 GMT
ENV PG_VERSION=19.0-1.pgdg12+1
# Fri, 20 Nov 2026 00:38:30 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Fri, 20 Nov 2026 00:38:30 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Fri, 20 Nov 2026 00:38:30 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Fri, 20 Nov 2026 00:38:30 GMT
VOLUME [/var/lib/postgresql]
# Fri, 20 Nov 2026 00:38:30 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Fri, 20 Nov 2026 00:38:30 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Fri, 20 Nov 2026 00:38:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 20 Nov 2026 00:38:30 GMT
STOPSIGNAL SIGINT
# Fri, 20 Nov 2026 00:38:30 GMT
EXPOSE map[5432/tcp:{}]
# Fri, 20 Nov 2026 00:38:30 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:2d66c782e4847b8495b17a4b86be1159aa13d140fe4fd17cb1d536953d5114c6`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 28.1 MB (28144358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e03b02cc0e40af1cf5c06c244f9bd3e9b59989334e340ce41ed818ef2cb2ccd`  
		Last Modified: Fri, 20 Nov 2026 00:38:51 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77ad7fb0d467ed5893044dbcd151542e97a3400c8fe9fae79764120141d3c828`  
		Last Modified: Fri, 20 Nov 2026 00:38:51 GMT  
		Size: 4.5 MB (4519486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60d7f1796d90cafd8d77c8b2429a651c7f6287718fc9c3819232212b6560d81d`  
		Last Modified: Fri, 20 Nov 2026 00:38:51 GMT  
		Size: 1.2 MB (1204584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e77de3ea7c6b0f52f42b94f9a1e92c1175ebe5e73ce356d03428079e940486b`  
		Last Modified: Fri, 20 Nov 2026 00:38:52 GMT  
		Size: 8.1 MB (8066554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab25885c1146950110507bc52ca0631d692d8b4cd34418cc77374a59dcf93ca4`  
		Last Modified: Fri, 20 Nov 2026 00:38:52 GMT  
		Size: 1.1 MB (1109028 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afbdfc7917aa7bbe3b388700ccf09e9821d078ae5f8abed8cee7dff2e664b4d0`  
		Last Modified: Fri, 20 Nov 2026 00:38:52 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31f8eb3e3b90fdc0f8382b307a7995d203dc73980fd4ae7456cb711ab42de484`  
		Last Modified: Fri, 20 Nov 2026 00:38:53 GMT  
		Size: 3.1 KB (3141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe4470ef9af6682691f6e691682cd43842dfb080f9ae3d6142ceca0ef0f0d18c`  
		Last Modified: Fri, 20 Nov 2026 00:38:55 GMT  
		Size: 119.8 MB (119759338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddf7733dabe22391e113f981cabbe39856341825dbb3a26a694b9ee1739e66dc`  
		Last Modified: Fri, 20 Nov 2026 00:38:53 GMT  
		Size: 21.5 KB (21518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:670418cd4a3b727b0e065361c269bbe1c5cf9c8b7a733de07433a9ee91881f15`  
		Last Modified: Fri, 20 Nov 2026 00:38:54 GMT  
		Size: 6.1 KB (6104 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10e2a5ba7bfa5fc7e098b33f366bebf293a54aac8a039452e114ed11d04ece8c`  
		Last Modified: Fri, 20 Nov 2026 00:38:54 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:ae4e5c2273f2dff20aa3b980cd47dcd5ee828b91a89e6b792fb7101b8772b149
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6617052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2732caa71d3f8b30176042346769e6a3c197ad5eca071f532ff5542dea6f81d`

```dockerfile
```

-	Layers:
	-	`sha256:6ad4ba1743234d112198b3ccf140db9a3bdbe57ae446e9cf41d87a1e8b441012`  
		Last Modified: Fri, 20 Nov 2026 00:38:51 GMT  
		Size: 6.6 MB (6566822 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5b08d122180fb3b61089919117954646c1da51a8c818274d51f03d56b22a6d96`  
		Last Modified: Fri, 20 Nov 2026 00:38:51 GMT  
		Size: 50.2 KB (50230 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:bookworm` - linux; 386

```console
$ docker pull postgres@sha256:d2184b990095da66ae4cb9f72c5a662c3db93e4d0756ce94db3084d458870f4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.3 MB (101332582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5951107b1aea8997dd4548bec978452270a979b4d7d25da4218ace08170fdbd0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1793827419'
# Fri, 20 Nov 2026 00:37:34 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 		install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql; 		install --verbose --directory --owner postgres --group postgres --mode 3777 /run/postgresql; 		mkdir -p /usr/local/lib/tmpfiles.d; 	printf '%s\n' 		'd /var/lib/postgresql 1777 postgres postgres' 		'd /run/postgresql 3777 postgres postgres' 		> /usr/local/lib/tmpfiles.d/postgresql-common.conf # buildkit
# Fri, 20 Nov 2026 00:37:40 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 00:37:47 GMT
ENV GOSU_VERSION=1.20
# Fri, 20 Nov 2026 00:37:47 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Fri, 20 Nov 2026 00:37:52 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Fri, 20 Nov 2026 00:37:52 GMT
ENV LANG=en_US.utf8
# Fri, 20 Nov 2026 00:37:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 00:37:55 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 20 Nov 2026 00:37:56 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Fri, 20 Nov 2026 00:37:56 GMT
ENV PG_MAJOR=19
# Fri, 20 Nov 2026 00:37:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Fri, 20 Nov 2026 00:37:56 GMT
ENV PG_VERSION=19.0-1.pgdg12+1
# Fri, 20 Nov 2026 00:47:37 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Fri, 20 Nov 2026 00:47:37 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Fri, 20 Nov 2026 00:47:37 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Fri, 20 Nov 2026 00:47:37 GMT
VOLUME [/var/lib/postgresql]
# Fri, 20 Nov 2026 00:47:37 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Fri, 20 Nov 2026 00:47:37 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Fri, 20 Nov 2026 00:47:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 20 Nov 2026 00:47:37 GMT
STOPSIGNAL SIGINT
# Fri, 20 Nov 2026 00:47:37 GMT
EXPOSE map[5432/tcp:{}]
# Fri, 20 Nov 2026 00:47:37 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:cf916cd28bf8a94b890c149d6b2cdc665c8beb3378aa9c98a18b6ec1bfe54b0c`  
		Last Modified: Thu, 05 Nov 2026 06:15:50 GMT  
		Size: 29.2 MB (29239212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fa1d59a42489aa9d01d75aed2001d13457a0c12da8ac88a1ae8aa7c3986a4f9`  
		Last Modified: Fri, 20 Nov 2026 00:47:52 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af2ccaed7bbd9d2a3f59316db8bd517a675ca4120a43194e76392a4ca3907d1a`  
		Last Modified: Fri, 20 Nov 2026 00:47:52 GMT  
		Size: 5.0 MB (4966131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d6603a8e1ac7fe5ac54e7c3ef2a8c0f964a98f5dce27bf8cd2236820b0ed411`  
		Last Modified: Fri, 20 Nov 2026 00:47:52 GMT  
		Size: 1.2 MB (1219574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e27328937d346d8f02011c4a394f419ded3dab8d0ef91b4a312f4dc3efc2dd0`  
		Last Modified: Fri, 20 Nov 2026 00:47:52 GMT  
		Size: 8.1 MB (8066487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcfa5f77a6d3e4996d9c9e34fb8f0e4bfab49280157b22005104c3cb92b18aaa`  
		Last Modified: Fri, 20 Nov 2026 00:47:53 GMT  
		Size: 1.1 MB (1137535 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b85ca6b5051ed4839890564e9ac7307736e7b169c45dd0bb8ac64194464fead`  
		Last Modified: Fri, 20 Nov 2026 00:47:53 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9a78553e995a52d0d06fe935ad15e080fc109f59da9363858310ba4734e2f70`  
		Last Modified: Fri, 20 Nov 2026 00:47:53 GMT  
		Size: 3.1 KB (3145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efa5633503bd647479d3729d9130d53f7f6af8f1c4ea471292ab1a9441fd4b05`  
		Last Modified: Fri, 20 Nov 2026 00:47:55 GMT  
		Size: 56.7 MB (56671248 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0df4daaf515e70be3ad41051aa95827ef4e0d80a9405c42e89b89b100055825b`  
		Last Modified: Fri, 20 Nov 2026 00:47:54 GMT  
		Size: 21.5 KB (21521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ae3e6bdee45c3b361efea0dc343a374430c69bff00304d31a36546d83772550`  
		Last Modified: Fri, 20 Nov 2026 00:47:54 GMT  
		Size: 6.1 KB (6103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d64972244d01aec99da164a23ce6ed24630c7c5096adf7afdc5dab7f13913cc`  
		Last Modified: Fri, 20 Nov 2026 00:47:54 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:63e0f196464f781c2dae3f0b97ef82fb9a4edf37f90fbc41af756bc89332855c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5735319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3094281b30707f7ebe09ffdb7912a0deceed78db560948241f75fcd6c5d269f`

```dockerfile
```

-	Layers:
	-	`sha256:a37aaca010a14fdd39a4ffabdd26a91f27210ade21ac774f9ed01104db443b3c`  
		Last Modified: Fri, 20 Nov 2026 00:47:52 GMT  
		Size: 5.7 MB (5685364 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8a4a14a55582d845f6ad73ae2dffb139b9137c67f53c0719b50596ca41a8ed6b`  
		Last Modified: Fri, 20 Nov 2026 00:47:51 GMT  
		Size: 50.0 KB (49955 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:bookworm` - linux; ppc64le

```console
$ docker pull postgres@sha256:573dba52ae004fb7cb7cb621d5f400c2595ec9c21b83366be13213acb2467a98
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.7 MB (178696702 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4027a8a2ff803786bb85eb239f81c32a917e152dd7e4610d8792245a93b685bc`
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
ENV PG_MAJOR=19
# Wed, 18 Nov 2026 21:27:42 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Wed, 18 Nov 2026 21:27:42 GMT
ENV PG_VERSION=19.0-1.pgdg12+1
# Fri, 20 Nov 2026 02:06:58 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Fri, 20 Nov 2026 02:06:59 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Fri, 20 Nov 2026 02:06:59 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Fri, 20 Nov 2026 02:06:59 GMT
VOLUME [/var/lib/postgresql]
# Fri, 20 Nov 2026 02:07:00 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Fri, 20 Nov 2026 02:07:02 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Fri, 20 Nov 2026 02:07:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 20 Nov 2026 02:07:02 GMT
STOPSIGNAL SIGINT
# Fri, 20 Nov 2026 02:07:02 GMT
EXPOSE map[5432/tcp:{}]
# Fri, 20 Nov 2026 02:07:02 GMT
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
	-	`sha256:be2e36e0520886bd6ccf4c840d8533ed4e229b2cfcf84aec6fde6871a52ecd89`  
		Last Modified: Fri, 20 Nov 2026 02:08:05 GMT  
		Size: 130.6 MB (130641781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:facbd799e3cd5ec019c5bf8f7e5aa3f5d419fa6d65063be4253731c6ffd81126`  
		Last Modified: Fri, 20 Nov 2026 02:08:01 GMT  
		Size: 21.5 KB (21521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8d05dd8476c3b33ce06274686c1150b63892a0855b47dcf0427403eaaf41c7a`  
		Last Modified: Fri, 20 Nov 2026 02:08:01 GMT  
		Size: 6.1 KB (6106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02b833915a90b65a849430b9ab2a2d921a81a2b314756418e407a2800c31d238`  
		Last Modified: Fri, 20 Nov 2026 02:08:01 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:b5192a46883ce735c5eb1d946e9690b59d934f41740d91c07a9478856b809bf4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6614254 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4584fb9ba89ce9382f0500cfccf6111e7fd08acf43a5a0588105d3ed04d212fa`

```dockerfile
```

-	Layers:
	-	`sha256:b379e6993d2d6e4cdf9d74bdbe85fc78d093097603b129c1ddc8adc87302d6ee`  
		Last Modified: Fri, 20 Nov 2026 02:08:02 GMT  
		Size: 6.6 MB (6564194 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:78860a32f338eb14396f0c919a6d39daa773532088c088ff84588ad1a2e65808`  
		Last Modified: Fri, 20 Nov 2026 02:08:01 GMT  
		Size: 50.1 KB (50060 bytes)  
		MIME: application/vnd.in-toto+json
