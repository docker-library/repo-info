## `postgres:19rc2-bookworm`

```console
$ docker pull postgres@sha256:7b1e213e9680e7838da5ea2a929427901b866e69d08735186b72bddfe73c0453
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

### `postgres:19rc2-bookworm` - linux; amd64

```console
$ docker pull postgres@sha256:938d33994104a1a7dc9aae2f7f56cb035e0b0f67152ecd66df66ec3d4684795c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.9 MB (164945286 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8777943bd178a5f5cae60345e6bdb3bbc03c2d17c589d1bd825278643e87605`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Wed, 18 Nov 2026 21:29:05 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 		install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql; 		install --verbose --directory --owner postgres --group postgres --mode 3777 /run/postgresql; 		mkdir -p /usr/local/lib/tmpfiles.d; 	printf '%s\n' 		'd /var/lib/postgresql 1777 postgres postgres' 		'd /run/postgresql 3777 postgres postgres' 		> /usr/local/lib/tmpfiles.d/postgresql-common.conf # buildkit
# Wed, 18 Nov 2026 21:29:10 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 21:29:16 GMT
ENV GOSU_VERSION=1.20
# Wed, 18 Nov 2026 21:29:16 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 18 Nov 2026 21:29:20 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Wed, 18 Nov 2026 21:29:20 GMT
ENV LANG=en_US.utf8
# Wed, 18 Nov 2026 21:29:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 21:29:22 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 18 Nov 2026 21:29:23 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 18 Nov 2026 21:29:23 GMT
ENV PG_MAJOR=19
# Wed, 18 Nov 2026 21:29:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Wed, 18 Nov 2026 21:29:23 GMT
ENV PG_VERSION=19~rc2-1.pgdg12+1
# Wed, 18 Nov 2026 21:29:39 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Wed, 18 Nov 2026 21:29:40 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 18 Nov 2026 21:29:40 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Wed, 18 Nov 2026 21:29:40 GMT
VOLUME [/var/lib/postgresql]
# Wed, 18 Nov 2026 21:29:40 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 18 Nov 2026 21:29:40 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 18 Nov 2026 21:29:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 18 Nov 2026 21:29:40 GMT
STOPSIGNAL SIGINT
# Wed, 18 Nov 2026 21:29:40 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 18 Nov 2026 21:29:40 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:dd051e1b8c92ff101fa3071ab97ea4924885942f15644e01c3dc095764e863e3`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 28.2 MB (28247982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63e193399c8fde9c397319f46827be5bf56f4447b861ee8bce8221cc1ead954e`  
		Last Modified: Wed, 18 Nov 2026 21:29:58 GMT  
		Size: 1.3 KB (1327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7a9c239da5b49a1861fe4b53c5557f2c09fd4c839db2fdeaa1ac0402d7c2ec0`  
		Last Modified: Wed, 18 Nov 2026 21:29:59 GMT  
		Size: 4.5 MB (4534280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45b63709666f2771a1e16a3d7d74c39730f77c67ae0f66446195663294395f4e`  
		Last Modified: Wed, 18 Nov 2026 21:29:59 GMT  
		Size: 1.3 MB (1251441 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac3a0c4e483f3872a780b1554b75bf93e38e394273f482e45044fbf0248b08e6`  
		Last Modified: Wed, 18 Nov 2026 21:29:59 GMT  
		Size: 8.1 MB (8066445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f9f3d0fad9b78c978303af7f47c65e1261bd5453bf1e5d667dd7daeb11fbd91`  
		Last Modified: Wed, 18 Nov 2026 21:30:00 GMT  
		Size: 1.2 MB (1196438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f575ac94edb9432513287a3e6a1d9e0c7f7b5eeebdde23a59ab816e16589f7b4`  
		Last Modified: Wed, 18 Nov 2026 21:29:59 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7e54dcdb1b069ce6b1527dc2b54f27f5eb430dd3a97b8939213d4a629d36c33`  
		Last Modified: Wed, 18 Nov 2026 21:29:59 GMT  
		Size: 3.1 KB (3145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dc33fdb4d072cb7e024744497ac3fb92699ae60c667bcd879ce7c2f92373533`  
		Last Modified: Wed, 18 Nov 2026 21:30:03 GMT  
		Size: 121.6 MB (121616302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:356f1e2cf0a068d46d4f3d168430a8226c71404b56bc88fc39b9323a7507b76c`  
		Last Modified: Wed, 18 Nov 2026 21:30:01 GMT  
		Size: 21.5 KB (21519 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3ca170fe3f47786f9fc794be014fc1f8838269f7d4a9b8d2142d13ed88ae8ee`  
		Last Modified: Wed, 18 Nov 2026 21:30:01 GMT  
		Size: 6.1 KB (6106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b12f074e868197aed1798efd0b1374ef06e0b9bd3a3fa2d17dea797a5b2b1e69`  
		Last Modified: Wed, 18 Nov 2026 21:30:02 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19rc2-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:7db4e710d8b292a9a327e133ce591a809484103cbb115f3f72908a896a7debb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6609282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f488ea9296449064a5e67965938304fb854d750d17ae72ff97f1e97e319dc5f8`

```dockerfile
```

-	Layers:
	-	`sha256:bd0c9a2edec28672354d5a42c31bd21d42769004ee28f8116ee25ac1f2efa541`  
		Last Modified: Wed, 18 Nov 2026 21:29:59 GMT  
		Size: 6.6 MB (6559884 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f575afd0ad56d3e448d2d0f521624c020f5cecd94e2c30e011f03847b51c622b`  
		Last Modified: Wed, 18 Nov 2026 21:29:59 GMT  
		Size: 49.4 KB (49398 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19rc2-bookworm` - linux; arm variant v7

```console
$ docker pull postgres@sha256:22764f8183a9b918e713dad96ecfb64889a77d51758f235879fa801fd17b0df1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.9 MB (89945001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc5f5ad9b74d6d7dae2b3323d8909017de67842078bb0e81814867e9f3b17c98`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1793827419'
# Wed, 18 Nov 2026 21:28:06 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 		install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql; 		install --verbose --directory --owner postgres --group postgres --mode 3777 /run/postgresql; 		mkdir -p /usr/local/lib/tmpfiles.d; 	printf '%s\n' 		'd /var/lib/postgresql 1777 postgres postgres' 		'd /run/postgresql 3777 postgres postgres' 		> /usr/local/lib/tmpfiles.d/postgresql-common.conf # buildkit
# Wed, 18 Nov 2026 21:28:12 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 21:28:19 GMT
ENV GOSU_VERSION=1.20
# Wed, 18 Nov 2026 21:28:19 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 18 Nov 2026 21:28:24 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Wed, 18 Nov 2026 21:28:24 GMT
ENV LANG=en_US.utf8
# Wed, 18 Nov 2026 21:28:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 21:28:28 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 18 Nov 2026 21:28:29 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 18 Nov 2026 21:28:29 GMT
ENV PG_MAJOR=19
# Wed, 18 Nov 2026 21:28:29 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Wed, 18 Nov 2026 21:28:29 GMT
ENV PG_VERSION=19~rc2-1.pgdg12+1
# Wed, 18 Nov 2026 21:40:23 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Wed, 18 Nov 2026 21:40:23 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 18 Nov 2026 21:40:23 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Wed, 18 Nov 2026 21:40:23 GMT
VOLUME [/var/lib/postgresql]
# Wed, 18 Nov 2026 21:40:23 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 18 Nov 2026 21:40:23 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 18 Nov 2026 21:40:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 18 Nov 2026 21:40:23 GMT
STOPSIGNAL SIGINT
# Wed, 18 Nov 2026 21:40:23 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 18 Nov 2026 21:40:23 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:b37c96781b87a85cb04abbf5abfe88c91253a506348403ce0022810d702aa72c`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 24.0 MB (23961356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:899e9af9492443ac0061c9a8ce67031fd543090025aa79b3a7823ae777defdfb`  
		Last Modified: Wed, 18 Nov 2026 21:40:37 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:023d6239cc7f90d8b0c53e3035e0987f158f743f69cc7826a3ebddf3dc3ebe53`  
		Last Modified: Wed, 18 Nov 2026 21:40:37 GMT  
		Size: 3.7 MB (3742509 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90570e412b0e893326b33df6a9074860c979cb96052029a2f0b6c7e1f426a01f`  
		Last Modified: Wed, 18 Nov 2026 21:40:37 GMT  
		Size: 1.2 MB (1217414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20d96881f79427e640ab8059ee9ec20ad2a0c35247080d22cd0e96eaecf01f32`  
		Last Modified: Wed, 18 Nov 2026 21:40:37 GMT  
		Size: 8.1 MB (8066413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76a5af25e4eb36affa20dd8acbb599546b6d95b329d897b15e363bd7580715f7`  
		Last Modified: Wed, 18 Nov 2026 21:40:38 GMT  
		Size: 1.1 MB (1067292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c28cf5a2190543e10121e5f9c088d4ddc54393a835b0309956e5ef5201e17b2`  
		Last Modified: Wed, 18 Nov 2026 21:40:38 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:664daf6a3708acf5d6dcaf9ea351df3108416e89501fc6be10991d86459f58da`  
		Last Modified: Wed, 18 Nov 2026 21:40:38 GMT  
		Size: 3.1 KB (3146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1daaab075dbf1d61df573703fa91769f641c4f408719c917090295d78821ff2`  
		Last Modified: Wed, 18 Nov 2026 21:40:40 GMT  
		Size: 51.9 MB (51857616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:440fa46d53c0cea30030e9073842e00c077a9a41f338f28845ea558766b22f25`  
		Last Modified: Wed, 18 Nov 2026 21:40:39 GMT  
		Size: 21.5 KB (21522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d286fe34348152371bda67ad379ac67b75d41c930f4d089d072e38440d2e325`  
		Last Modified: Wed, 18 Nov 2026 21:40:40 GMT  
		Size: 6.1 KB (6106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a506156d7ee911e20f8f1a33ce1f586df5ca414bfc1ac9774ed9a62d526bb47`  
		Last Modified: Wed, 18 Nov 2026 21:40:40 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19rc2-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:f38c5794859aec3f8ad60dfda02b0be4d9b35fd8a45374bbfde3506fa548cb39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5739061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b631af5797662d86162f525864880417acfd6faa1e1174801a6575cb85f3bd15`

```dockerfile
```

-	Layers:
	-	`sha256:361bbb1fe57d10186e73d33554475202f828d0a867578b2453ee095dc472a1e2`  
		Last Modified: Wed, 18 Nov 2026 21:40:37 GMT  
		Size: 5.7 MB (5689494 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:99f2f257b90358690b5e84ad76ecd67adacca7fd0a07f87a59a1087fb7526e9e`  
		Last Modified: Wed, 18 Nov 2026 21:40:37 GMT  
		Size: 49.6 KB (49567 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19rc2-bookworm` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:9be3c772cd5bdefeb9de20bfb2f5a80c8372cfdf1534bb803c3ba8d4333641c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.8 MB (162807077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba3901cd04b20b6b9685fa2f7b5acfcafb5e3fcdcb7dd6a91d5a06ac8fdba600`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Wed, 18 Nov 2026 21:29:11 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 		install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql; 		install --verbose --directory --owner postgres --group postgres --mode 3777 /run/postgresql; 		mkdir -p /usr/local/lib/tmpfiles.d; 	printf '%s\n' 		'd /var/lib/postgresql 1777 postgres postgres' 		'd /run/postgresql 3777 postgres postgres' 		> /usr/local/lib/tmpfiles.d/postgresql-common.conf # buildkit
# Wed, 18 Nov 2026 21:29:16 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 21:29:23 GMT
ENV GOSU_VERSION=1.20
# Wed, 18 Nov 2026 21:29:23 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 18 Nov 2026 21:29:28 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Wed, 18 Nov 2026 21:29:28 GMT
ENV LANG=en_US.utf8
# Wed, 18 Nov 2026 21:29:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 21:29:31 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 18 Nov 2026 21:29:32 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 18 Nov 2026 21:29:32 GMT
ENV PG_MAJOR=19
# Wed, 18 Nov 2026 21:29:32 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Wed, 18 Nov 2026 21:29:32 GMT
ENV PG_VERSION=19~rc2-1.pgdg12+1
# Wed, 18 Nov 2026 21:29:49 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Wed, 18 Nov 2026 21:29:49 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 18 Nov 2026 21:29:49 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Wed, 18 Nov 2026 21:29:49 GMT
VOLUME [/var/lib/postgresql]
# Wed, 18 Nov 2026 21:29:49 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 18 Nov 2026 21:29:49 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 18 Nov 2026 21:29:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 18 Nov 2026 21:29:49 GMT
STOPSIGNAL SIGINT
# Wed, 18 Nov 2026 21:29:49 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 18 Nov 2026 21:29:49 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:2d66c782e4847b8495b17a4b86be1159aa13d140fe4fd17cb1d536953d5114c6`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 28.1 MB (28144358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a25ef93e9e916f9328ff38d6fd7301dc2b82761364a52181363493d919d280c`  
		Last Modified: Wed, 18 Nov 2026 21:30:10 GMT  
		Size: 1.3 KB (1327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cac37ea642170f3c61d34761904b9adb72bb54e62df5ec1ac0142e49bbb4fc64`  
		Last Modified: Wed, 18 Nov 2026 21:30:10 GMT  
		Size: 4.5 MB (4519545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6264b24ca08c9f3a3732163c1f744ae665682592516bd9cee50a4379ace35792`  
		Last Modified: Wed, 18 Nov 2026 21:30:10 GMT  
		Size: 1.2 MB (1204632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:722aebc099c71010c8a47f7d77ba2c3e793f7757b5ee83697c49ca274268c2e7`  
		Last Modified: Wed, 18 Nov 2026 21:30:10 GMT  
		Size: 8.1 MB (8066489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ea81d0844b87a425124481d59d4624593934f103de3b9bd5d0c1509eb1cd630`  
		Last Modified: Wed, 18 Nov 2026 21:30:11 GMT  
		Size: 1.1 MB (1108979 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8ddc7514769298bceb0a99fa323e578e05204b2f4fe7aa0133236701a6015d4`  
		Last Modified: Wed, 18 Nov 2026 21:30:11 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9630b2c7be56fafcceb2f5720d4f3e44d2a14bef45fbd757aec75c06de7d8a2c`  
		Last Modified: Wed, 18 Nov 2026 21:30:11 GMT  
		Size: 3.1 KB (3145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f90ae0ddb7a983ad5feab964288b75c0a3fad806a776579cb20d35daad861f9`  
		Last Modified: Wed, 18 Nov 2026 21:30:14 GMT  
		Size: 119.7 MB (119730679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cb6c21f53191f70d69369b7258650e4f89d690061b282908a6bcb05fa56f13c`  
		Last Modified: Wed, 18 Nov 2026 21:30:12 GMT  
		Size: 21.5 KB (21519 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95d64e6e37d33c13433d04cf325c48551445d5b1123218a422033feb1ca3c62e`  
		Last Modified: Wed, 18 Nov 2026 21:30:13 GMT  
		Size: 6.1 KB (6103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:431b84d217fcaddc0fcc0df0d3b1a736da18f3edeb1eedd44597ba42b2a11ad1`  
		Last Modified: Wed, 18 Nov 2026 21:30:13 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19rc2-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:e24febf6ac4aee7362d989d68c0e026b7157fb0328ffa84b89e62f991e4b441d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6615799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03fa9b4c81c9532b7f2ee98a112b9653ad3d86ccacaf6f52f79b812f094e973a`

```dockerfile
```

-	Layers:
	-	`sha256:c3b1cdce6feff680dfe3b986866efc34e1013f154b2a2476031bdb141c25451b`  
		Last Modified: Wed, 18 Nov 2026 21:30:10 GMT  
		Size: 6.6 MB (6566198 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:135e5aaa6944fd75d6f28ea8480ddec020e52eb538baa2221e9148b3a5e14a78`  
		Last Modified: Wed, 18 Nov 2026 21:30:10 GMT  
		Size: 49.6 KB (49601 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19rc2-bookworm` - linux; 386

```console
$ docker pull postgres@sha256:6265d1dcd06d27c98e355d6a04d58c905e56314eb90edc70f8c10137c6cb6c8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.3 MB (101304062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d766b6ebaf7244cdbe20e740244e4370c9d7caa82a3151b3a8915d3f0a8aed3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1793827419'
# Wed, 18 Nov 2026 21:27:54 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 		install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql; 		install --verbose --directory --owner postgres --group postgres --mode 3777 /run/postgresql; 		mkdir -p /usr/local/lib/tmpfiles.d; 	printf '%s\n' 		'd /var/lib/postgresql 1777 postgres postgres' 		'd /run/postgresql 3777 postgres postgres' 		> /usr/local/lib/tmpfiles.d/postgresql-common.conf # buildkit
# Wed, 18 Nov 2026 21:28:00 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 21:28:07 GMT
ENV GOSU_VERSION=1.20
# Wed, 18 Nov 2026 21:28:07 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 18 Nov 2026 21:28:12 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Wed, 18 Nov 2026 21:28:12 GMT
ENV LANG=en_US.utf8
# Wed, 18 Nov 2026 21:28:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 21:28:15 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 18 Nov 2026 21:28:16 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 18 Nov 2026 21:28:16 GMT
ENV PG_MAJOR=19
# Wed, 18 Nov 2026 21:28:16 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/19/bin
# Wed, 18 Nov 2026 21:28:16 GMT
ENV PG_VERSION=19~rc2-1.pgdg12+1
# Wed, 18 Nov 2026 21:37:53 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Wed, 18 Nov 2026 21:37:53 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 18 Nov 2026 21:37:53 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Wed, 18 Nov 2026 21:37:53 GMT
VOLUME [/var/lib/postgresql]
# Wed, 18 Nov 2026 21:37:53 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 18 Nov 2026 21:37:53 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 18 Nov 2026 21:37:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 18 Nov 2026 21:37:53 GMT
STOPSIGNAL SIGINT
# Wed, 18 Nov 2026 21:37:53 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 18 Nov 2026 21:37:53 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:cf916cd28bf8a94b890c149d6b2cdc665c8beb3378aa9c98a18b6ec1bfe54b0c`  
		Last Modified: Thu, 05 Nov 2026 06:15:50 GMT  
		Size: 29.2 MB (29239212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84725dcec6008f3029de15cce1d212b86e00859631f68dd6029b7905e2182fa4`  
		Last Modified: Wed, 18 Nov 2026 21:38:08 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef4683baed1a966a4291f6193b461ffd210c076b31cad39bec11c57906f39520`  
		Last Modified: Wed, 18 Nov 2026 21:38:08 GMT  
		Size: 5.0 MB (4966183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec7dde72c693b099110362ecc4b924fc2761ee2cad751526f24b167106bca78f`  
		Last Modified: Wed, 18 Nov 2026 21:38:08 GMT  
		Size: 1.2 MB (1219595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77ae487aea4726a36bc71546b877b99cbc588022e0b9771072ba40128489498a`  
		Last Modified: Wed, 18 Nov 2026 21:38:08 GMT  
		Size: 8.1 MB (8066492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3887eb4a42a1f16ecddf52e7924d8f3c0e6eef931745fd98c4f1557f7f9932d4`  
		Last Modified: Wed, 18 Nov 2026 21:38:09 GMT  
		Size: 1.1 MB (1137538 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bca0de1e83ff4564019d9f09e4ed0a03f0e121d5c398023d03370166739ce08`  
		Last Modified: Wed, 18 Nov 2026 21:31:27 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb04ccede8307817e9afdcd5b3f1a8b08e13562e1e121fe25d548c25f42d6eff`  
		Last Modified: Wed, 18 Nov 2026 21:38:09 GMT  
		Size: 3.1 KB (3146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bc7eb05039afc2348df35bbc3b644cf36d7eaf8f26caa46c2400e662e77d693`  
		Last Modified: Wed, 18 Nov 2026 21:38:11 GMT  
		Size: 56.6 MB (56642643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a7001172c5cf679952fb1ffbb6ff1e395913087409f09fbf8644e52576d3426`  
		Last Modified: Wed, 18 Nov 2026 21:38:10 GMT  
		Size: 21.5 KB (21520 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b8a338c8b647bd5759d0bb5f107b8bce0524b3972311670256669596f9dcfd3`  
		Last Modified: Wed, 18 Nov 2026 21:38:10 GMT  
		Size: 6.1 KB (6107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68c4d8ff2ca1c2d1a8ee48a2bb72734541633e26e360581e46d7a85d563e479d`  
		Last Modified: Wed, 18 Nov 2026 21:38:10 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19rc2-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:a62f86bd219a6a6910c2decea7dcf051cb44450288c0b1e5ff7831feb04e3ca3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5734129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da9d5c6b5d34e50aef659254f47df3b627744986e03f8e3cfdf48f3b19d45ebe`

```dockerfile
```

-	Layers:
	-	`sha256:f815bec66f147f8690aad1a972e4a366a35b224d82ae2c9703f6e08b17effca5`  
		Last Modified: Wed, 18 Nov 2026 21:38:08 GMT  
		Size: 5.7 MB (5684770 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:57a6d14d758c9f2eba312211db55ac5f85abd5859798fd676e4dbaac0590a490`  
		Last Modified: Wed, 18 Nov 2026 21:38:08 GMT  
		Size: 49.4 KB (49359 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19rc2-bookworm` - linux; ppc64le

```console
$ docker pull postgres@sha256:5aceb6fa23946c960ad9ffbc178c6ece5d4d9dbc17fb3eca406bc8f1e1113e72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.7 MB (178687424 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eeb9019478b6718dd5f148d5019773d43db0c43c33a9b7e53fceee3080deca43`
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
ENV PG_VERSION=19~rc2-1.pgdg12+1
# Wed, 18 Nov 2026 21:28:30 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 	if apt-get install -s "postgresql-$PG_MAJOR-jit" > /dev/null 2>&1; then 		apt-get install -y --no-install-recommends "postgresql-$PG_MAJOR-jit=$PG_VERSION"; 	fi; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Wed, 18 Nov 2026 21:28:31 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 18 Nov 2026 21:28:31 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Wed, 18 Nov 2026 21:28:31 GMT
VOLUME [/var/lib/postgresql]
# Wed, 18 Nov 2026 21:28:31 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 18 Nov 2026 21:28:32 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 18 Nov 2026 21:28:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 18 Nov 2026 21:28:32 GMT
STOPSIGNAL SIGINT
# Wed, 18 Nov 2026 21:28:32 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 18 Nov 2026 21:28:32 GMT
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
	-	`sha256:93e829c1d9d92146581988328c58899bb8f22bc4d9c8d48fa72064033bd21d4d`  
		Last Modified: Wed, 18 Nov 2026 21:29:28 GMT  
		Size: 130.6 MB (130632509 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9332fc64f70c016d31ccecebfad22c9168f547d0157c29b1b3e7c09bb226e382`  
		Last Modified: Wed, 18 Nov 2026 21:29:26 GMT  
		Size: 21.5 KB (21514 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52a416fe87a959e7c3572b5de0e849f57bfdd87dc0162753cdf2b7988b9e46e0`  
		Last Modified: Wed, 18 Nov 2026 21:29:26 GMT  
		Size: 6.1 KB (6106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c58df113d25c381b99351720b0870f7a17f1821cb96e68aa5c1ea02e3ac22818`  
		Last Modified: Wed, 18 Nov 2026 21:29:26 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19rc2-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:91ca972bb2518c4df76f6aa974104cff4ce9433690c3828dff8ad47301eec083
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6613022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f6311d30d9619454751dcb23a9e645e41ae2d2274e76fc1a5c3b6e7545a2fe1`

```dockerfile
```

-	Layers:
	-	`sha256:a2550af99a4c63c22e8f373075bf413b259b3153546e7bcf816b97843c81814d`  
		Last Modified: Wed, 18 Nov 2026 21:29:24 GMT  
		Size: 6.6 MB (6563582 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4600e0c4f8f5135078174287be1da46c784350c7724ac4a2a34d6ead52bf5f10`  
		Last Modified: Wed, 18 Nov 2026 21:29:23 GMT  
		Size: 49.4 KB (49440 bytes)  
		MIME: application/vnd.in-toto+json
