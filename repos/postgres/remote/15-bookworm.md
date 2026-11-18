## `postgres:15-bookworm`

```console
$ docker pull postgres@sha256:f0c0fa184fc9dfb39acfa7fe684a33619f230e6a30a8e7a471aa9eb07a89d4a4
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
$ docker pull postgres@sha256:2c4a4939e370b84faab70a970ce455220bdbb916cff67bdee569604b51dc2500
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.4 MB (159386167 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:981078aea7b814d4d6b1a45013a5261b059c7ca7fd5998a80f55ae5e28f24371`
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
ENV PG_MAJOR=15
# Wed, 18 Nov 2026 21:29:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/15/bin
# Wed, 18 Nov 2026 21:29:23 GMT
ENV PG_VERSION=15.20-1.pgdg12+1
# Wed, 18 Nov 2026 21:31:27 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Wed, 18 Nov 2026 21:31:27 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 18 Nov 2026 21:31:27 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 18 Nov 2026 21:31:27 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Wed, 18 Nov 2026 21:31:27 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 18 Nov 2026 21:31:28 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 18 Nov 2026 21:31:28 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 18 Nov 2026 21:31:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 18 Nov 2026 21:31:28 GMT
STOPSIGNAL SIGINT
# Wed, 18 Nov 2026 21:31:28 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 18 Nov 2026 21:31:28 GMT
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
	-	`sha256:cab0c35d7ae70bf75008d8ceb4e1b6ce5aa5eaf8e713fe6500dbc4b66e8405df`  
		Last Modified: Wed, 18 Nov 2026 21:31:48 GMT  
		Size: 116.1 MB (116068696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46a0e4b0539f585dc636e3f930a70cba01c99919d9af1b5daef93c9e27a5aace`  
		Last Modified: Wed, 18 Nov 2026 21:31:46 GMT  
		Size: 9.8 KB (9839 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c32ccf851ef65c4d5acc9732e946392a7239f7824c53fd8af7f3df496b39f86`  
		Last Modified: Wed, 18 Nov 2026 21:31:46 GMT  
		Size: 168.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd40d26bff06d9463d909bcd5e2fe6d74aa413d6432a44f14666669b9cb8a07a`  
		Last Modified: Wed, 18 Nov 2026 21:31:46 GMT  
		Size: 6.1 KB (6105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:badac484d0afa671c45132c139a71c4fbfc98f47615fead855aba8d6fe6f8b2e`  
		Last Modified: Wed, 18 Nov 2026 21:31:47 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:15-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:182c8aa17df2b36bdf3139debc5af1022030d6dcb8335e22735fc3343866c285
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6268414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ab132cbc6052cb759bb239811b12f1ce21031900e532686fa55a0b4d888a202`

```dockerfile
```

-	Layers:
	-	`sha256:32712a0df024a79bb42d1e159094f88b544ebbe1d9b2dc6684131d4ffd925f76`  
		Last Modified: Wed, 18 Nov 2026 21:31:46 GMT  
		Size: 6.2 MB (6216858 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b6d048837b558be4f8c97e4195f7871913033eee79e42a2a602b64997f5df1a8`  
		Last Modified: Wed, 18 Nov 2026 21:31:45 GMT  
		Size: 51.6 KB (51556 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:15-bookworm` - linux; arm variant v7

```console
$ docker pull postgres@sha256:5f465a4a37589defe9204044630aa6cc2eaa9e803faf9da2c5527233c4a11150
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.5 MB (86487993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f94174ccf44edb470733d7acabb243a36691959a462923ab3c58eec64e354c08`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1793827419'
# Thu, 12 Nov 2026 21:14:32 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 12 Nov 2026 21:14:37 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 21:14:44 GMT
ENV GOSU_VERSION=1.19
# Thu, 12 Nov 2026 21:14:44 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 12 Nov 2026 21:14:49 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Thu, 12 Nov 2026 21:14:49 GMT
ENV LANG=en_US.utf8
# Thu, 12 Nov 2026 21:14:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 21:14:53 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 12 Nov 2026 21:14:54 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 12 Nov 2026 21:14:54 GMT
ENV PG_MAJOR=15
# Thu, 12 Nov 2026 21:14:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/15/bin
# Thu, 12 Nov 2026 21:14:54 GMT
ENV PG_VERSION=15.20-1.pgdg12+1
# Thu, 12 Nov 2026 21:25:21 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Thu, 12 Nov 2026 21:25:21 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 12 Nov 2026 21:25:21 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 12 Nov 2026 21:25:21 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 12 Nov 2026 21:25:21 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Thu, 12 Nov 2026 21:25:21 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 12 Nov 2026 21:25:21 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 12 Nov 2026 21:25:21 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 12 Nov 2026 21:25:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Nov 2026 21:25:21 GMT
STOPSIGNAL SIGINT
# Thu, 12 Nov 2026 21:25:21 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 12 Nov 2026 21:25:21 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:b37c96781b87a85cb04abbf5abfe88c91253a506348403ce0022810d702aa72c`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 24.0 MB (23961356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07dd5abe654fd616b05ed6794e07640e2843040b5abccc5939f057edcc5f0dae`  
		Last Modified: Thu, 12 Nov 2026 21:25:34 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29013807bb6d939f404835f9a745e2da1584d08ad427ddaeabbf552c6b7b678c`  
		Last Modified: Thu, 12 Nov 2026 21:25:34 GMT  
		Size: 3.7 MB (3742500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c8d223bb8cac5c1d886764a52906906207a2c6f2189e39fcd508ba0933aeffa`  
		Last Modified: Thu, 12 Nov 2026 21:25:34 GMT  
		Size: 1.2 MB (1216699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54cf766cd1f85b07e3feeb591ff4f2e6b60c83f4fd3291946773c65021b81352`  
		Last Modified: Thu, 12 Nov 2026 21:25:34 GMT  
		Size: 8.1 MB (8066420 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f89385215f7a801ee280bfb0ccb51fc71e58fc529a54a5c864b107643eac6f9`  
		Last Modified: Thu, 12 Nov 2026 21:25:35 GMT  
		Size: 1.1 MB (1067309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0658fbaa123f6251fdcafb2f6fa7a49c2d45defef698910879e56c0929418816`  
		Last Modified: Thu, 12 Nov 2026 21:25:35 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbf384689b8d8bf0e196af378c80c9267ddf34db550191b050536132c3fb6bd2`  
		Last Modified: Thu, 12 Nov 2026 21:25:35 GMT  
		Size: 3.1 KB (3146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:712c4c7ee70aa2b75567e3d7b98d4a146613dfa846fd699130599494144675be`  
		Last Modified: Thu, 12 Nov 2026 21:25:37 GMT  
		Size: 48.4 MB (48412851 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:723c5859c3fd5247d6fccbf43a5e51732d9b1c24d75513bc34aa06243b7feb56`  
		Last Modified: Thu, 12 Nov 2026 21:25:36 GMT  
		Size: 9.8 KB (9838 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4d1cb843100e4f89c993442b2570f47d2cca301a196ffa36aacee123e8d8a95`  
		Last Modified: Thu, 12 Nov 2026 21:25:36 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:544e2d557e2963d63a4d21bc61aa8db43d86f9a3f01608668d5748887f6e3d50`  
		Last Modified: Thu, 12 Nov 2026 21:25:36 GMT  
		Size: 169.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85bc056a3531fcf81b7c9f42becb0f53837e9f54e868c4b910ca74097e54a189`  
		Last Modified: Thu, 12 Nov 2026 21:25:37 GMT  
		Size: 6.1 KB (6112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9957c039ede7f75c7ba13dec4e05ff4caa8489998185ddee59b115458cde988f`  
		Last Modified: Thu, 12 Nov 2026 21:25:37 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:15-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:da25c24c98c19fd11e77df0bc62b81f56a654b60f5e9dfea7c4da02fd9ef02c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5648401 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da7050b81c2507fd09fe47fb9c5b6c2ed20bdb1c99c67f673e839456b09d4014`

```dockerfile
```

-	Layers:
	-	`sha256:48930d0027eeff198d15b5818160f464690e48f034b385dcbb189ac440626ea5`  
		Last Modified: Thu, 12 Nov 2026 21:25:34 GMT  
		Size: 5.6 MB (5594904 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:604e8b45961e52747acd02952a2d81b5eb1725816ab80456692439c545129499`  
		Last Modified: Thu, 12 Nov 2026 21:25:34 GMT  
		Size: 53.5 KB (53497 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:15-bookworm` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:e40c33aa909cf9053073ed822562934d60c39adc9cd8338da8d5c25d3d5c25d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.3 MB (157302674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65c8c90020dce2f4e728ef6a82a5aed5db095ae10b1d0b4fdd2e95d5e140a5bf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Wed, 18 Nov 2026 21:31:12 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 		install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql; 		install --verbose --directory --owner postgres --group postgres --mode 3777 /run/postgresql; 		mkdir -p /usr/local/lib/tmpfiles.d; 	printf '%s\n' 		'd /var/lib/postgresql 1777 postgres postgres' 		'd /run/postgresql 3777 postgres postgres' 		> /usr/local/lib/tmpfiles.d/postgresql-common.conf # buildkit
# Wed, 18 Nov 2026 21:31:16 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 21:31:22 GMT
ENV GOSU_VERSION=1.20
# Wed, 18 Nov 2026 21:31:22 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 18 Nov 2026 21:31:26 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Wed, 18 Nov 2026 21:31:26 GMT
ENV LANG=en_US.utf8
# Wed, 18 Nov 2026 21:31:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 21:31:29 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 18 Nov 2026 21:31:29 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 18 Nov 2026 21:31:29 GMT
ENV PG_MAJOR=15
# Wed, 18 Nov 2026 21:31:29 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/15/bin
# Wed, 18 Nov 2026 21:31:29 GMT
ENV PG_VERSION=15.20-1.pgdg12+1
# Wed, 18 Nov 2026 21:31:43 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Wed, 18 Nov 2026 21:31:43 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 18 Nov 2026 21:31:43 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 18 Nov 2026 21:31:43 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Wed, 18 Nov 2026 21:31:43 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 18 Nov 2026 21:31:43 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 18 Nov 2026 21:31:43 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 18 Nov 2026 21:31:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 18 Nov 2026 21:31:43 GMT
STOPSIGNAL SIGINT
# Wed, 18 Nov 2026 21:31:43 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 18 Nov 2026 21:31:43 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:2d66c782e4847b8495b17a4b86be1159aa13d140fe4fd17cb1d536953d5114c6`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 28.1 MB (28144358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d718ef3fe078141f71a650af81d7a9d7d252f2b61dde96a20d7fd3d3c7d5788e`  
		Last Modified: Wed, 18 Nov 2026 21:32:03 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e49fa0514f37b81344238d2fd0ea978bb110bcadddb2eb0b70e0442029dfd81`  
		Last Modified: Wed, 18 Nov 2026 21:32:03 GMT  
		Size: 4.5 MB (4519511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:745d54ecd710ed02eb3aafb1d86902171d1fee5e74ad7398ab0a091cb936e188`  
		Last Modified: Wed, 18 Nov 2026 21:32:03 GMT  
		Size: 1.2 MB (1204613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3fe852051a82138c5533fb2b05cb7dd5304eeb932aef867454efc72da6b3da9`  
		Last Modified: Wed, 18 Nov 2026 21:32:03 GMT  
		Size: 8.1 MB (8066482 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b84f4f429ef5fed0c49dc26714c0a70181f32a26bbb88dc9d124ae7c0e8b27f4`  
		Last Modified: Wed, 18 Nov 2026 21:32:04 GMT  
		Size: 1.1 MB (1108979 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4a108a119a0146ba78a9a46ffcd1e75bb584f1fdc331f49076f06791ebb44a6`  
		Last Modified: Wed, 18 Nov 2026 21:32:04 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d358027165df98c83f6df13b166a7446498b2cbed5240e4804aab85891f52bf`  
		Last Modified: Wed, 18 Nov 2026 21:32:04 GMT  
		Size: 3.1 KB (3142 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ad7354f5c328d4529cf366ca3aa1ded289b3ffac230819642efd043eaf1a042`  
		Last Modified: Wed, 18 Nov 2026 21:32:07 GMT  
		Size: 114.2 MB (114237847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13dc6ff26da597bc7ab6f993009ec691328cb3724c5f14af4a314edd181db48d`  
		Last Modified: Wed, 18 Nov 2026 21:32:05 GMT  
		Size: 9.8 KB (9841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78ed1fec6564d76deb8e3b6a4d47e605da0cfa090d7c41eb8de7177e08343eaa`  
		Last Modified: Wed, 18 Nov 2026 21:32:05 GMT  
		Size: 168.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c558c466641d4e008bd0bf967f02dc723aa00222650b671dcab28549fa0e26f`  
		Last Modified: Wed, 18 Nov 2026 21:32:05 GMT  
		Size: 6.1 KB (6105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:060c1a68763c8a219a7e1f34fcc0524b97b1408137e7b1e833f84f7c090b0371`  
		Last Modified: Wed, 18 Nov 2026 21:32:06 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:15-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:f4eb8cb8ef5685810dcd3d4580ed89e663beeaaa78534dfa626150b0cbecbb5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6274967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e16309c1c096530ad6ef0903f4d3676f5ce010ef7d6d526fb598f4495ae9d60`

```dockerfile
```

-	Layers:
	-	`sha256:97e22405702e2c80a44427274a465e83ac8de0feb7fa93d050daef0b35f74976`  
		Last Modified: Wed, 18 Nov 2026 21:32:03 GMT  
		Size: 6.2 MB (6223182 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a0e991b11386eabcda71e134b58b00cf299ef6c9fc48134550cedcc58d172793`  
		Last Modified: Wed, 18 Nov 2026 21:32:03 GMT  
		Size: 51.8 KB (51785 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:15-bookworm` - linux; 386

```console
$ docker pull postgres@sha256:7725dcaafeeb7d82960ebf80de5f3f67a829f59ce31bc0b3bdd1a3ac7ceeabc0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.5 MB (97542157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70ede1e13093fc8c9967396eb9aea5ac23926e61a3ee9cd70574e3c84d3f984f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1793827419'
# Wed, 18 Nov 2026 21:35:13 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 		install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql; 		install --verbose --directory --owner postgres --group postgres --mode 3777 /run/postgresql; 		mkdir -p /usr/local/lib/tmpfiles.d; 	printf '%s\n' 		'd /var/lib/postgresql 1777 postgres postgres' 		'd /run/postgresql 3777 postgres postgres' 		> /usr/local/lib/tmpfiles.d/postgresql-common.conf # buildkit
# Wed, 18 Nov 2026 21:35:18 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 21:35:25 GMT
ENV GOSU_VERSION=1.20
# Wed, 18 Nov 2026 21:35:25 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 18 Nov 2026 21:35:30 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Wed, 18 Nov 2026 21:35:30 GMT
ENV LANG=en_US.utf8
# Wed, 18 Nov 2026 21:35:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 21:35:33 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 18 Nov 2026 21:35:33 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Wed, 18 Nov 2026 21:35:33 GMT
ENV PG_MAJOR=15
# Wed, 18 Nov 2026 21:35:33 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/15/bin
# Wed, 18 Nov 2026 21:35:33 GMT
ENV PG_VERSION=15.20-1.pgdg12+1
# Wed, 18 Nov 2026 21:44:09 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Wed, 18 Nov 2026 21:44:09 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 18 Nov 2026 21:44:09 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 18 Nov 2026 21:44:09 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Wed, 18 Nov 2026 21:44:09 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 18 Nov 2026 21:44:09 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 18 Nov 2026 21:44:09 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 18 Nov 2026 21:44:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 18 Nov 2026 21:44:09 GMT
STOPSIGNAL SIGINT
# Wed, 18 Nov 2026 21:44:09 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 18 Nov 2026 21:44:09 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:cf916cd28bf8a94b890c149d6b2cdc665c8beb3378aa9c98a18b6ec1bfe54b0c`  
		Last Modified: Thu, 05 Nov 2026 06:15:50 GMT  
		Size: 29.2 MB (29239212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6479f34f04e25ef7d4c804473945902fc41e05b9f5ed1042aea57438b286a76`  
		Last Modified: Wed, 18 Nov 2026 21:44:23 GMT  
		Size: 1.3 KB (1329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:617a215e93f01bd2ccca16a319b930bf83ff9af5d54368ba6a0a5ef1a44dc20c`  
		Last Modified: Wed, 18 Nov 2026 21:44:23 GMT  
		Size: 5.0 MB (4966170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0af0bec9e5f48a62427713460083e1786a1bd8417e488b37fd95da3e8cc1b739`  
		Last Modified: Wed, 18 Nov 2026 21:44:23 GMT  
		Size: 1.2 MB (1219608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8ee8857c61e99cc7734b5a6df90ba4655e9aea262760ae9a6ba451d5e74e092`  
		Last Modified: Wed, 18 Nov 2026 21:44:24 GMT  
		Size: 8.1 MB (8066467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2657813768a192854ef4e06529a556c7f5c2dd0db3a101c00599f2697e71231a`  
		Last Modified: Wed, 18 Nov 2026 21:44:24 GMT  
		Size: 1.1 MB (1137521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a56da690413e4b26d6afb246687452de773e6d58459f49c26eae5731d1388c1a`  
		Last Modified: Wed, 18 Nov 2026 21:44:24 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59359a87210d6f133a8cc6f0087ca66d58910a5fbd2a467f2bbe228b56fa71c8`  
		Last Modified: Wed, 18 Nov 2026 21:44:25 GMT  
		Size: 3.1 KB (3142 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c71176452a1d24dbafa83d684eacc911058b593b2aed540a1ec7b88b50b9396`  
		Last Modified: Wed, 18 Nov 2026 21:44:26 GMT  
		Size: 52.9 MB (52892292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67bf59013bea3b0dd9676efbafaae42df3a33c5f8510baad8290ab41e1ad16ea`  
		Last Modified: Wed, 18 Nov 2026 21:44:25 GMT  
		Size: 9.8 KB (9841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23476519898bbdf5d7fa933e181d6cb637cedf86dc7c84d61fb4bb34679b60fa`  
		Last Modified: Wed, 18 Nov 2026 21:44:26 GMT  
		Size: 167.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ed488e904bdbb5ebd53b37019826dcca5e5bb60bf5cf16bd9cade59b93aead8`  
		Last Modified: Wed, 18 Nov 2026 21:44:26 GMT  
		Size: 6.1 KB (6107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e852e6ec2f969d84d62194766ca4c3162d5bc33514bc9cadb02745e99f85294f`  
		Last Modified: Wed, 18 Nov 2026 21:44:26 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:15-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:8da33e2f427676ebf2704c05cdcdafefa9513b8ff29c671b39b5db0b9a2eeaa0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5641686 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f057adcffcbb0180b1bada3bbd483f2bce8ad034a940d68754588f210fd50fe7`

```dockerfile
```

-	Layers:
	-	`sha256:da050dccc525b1b653abc35f04ab983c0f1aa70a06ed65eed21d4858f5804625`  
		Last Modified: Wed, 18 Nov 2026 21:44:23 GMT  
		Size: 5.6 MB (5590177 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ccfc4c2d0e9f4b5f62971a18e473e8dd64f1535fca2e4f23487cd5780abb03c9`  
		Last Modified: Wed, 18 Nov 2026 21:44:23 GMT  
		Size: 51.5 KB (51509 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:15-bookworm` - linux; ppc64le

```console
$ docker pull postgres@sha256:9ec71dcb2bde97a0a1e582b14c8a5eb87bead55874327f5b940e57af6f67437f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.9 MB (172893016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:003dcca05ec2e6dc1a04240fa20b2782248330dca34578c331998b910d092103`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 09:44:05 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 05 Nov 2026 09:44:19 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		less 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 09:44:33 GMT
ENV GOSU_VERSION=1.19
# Thu, 05 Nov 2026 09:44:33 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	rm -rf /var/lib/apt/lists/*; 	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 05 Nov 2026 09:44:43 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y --no-install-recommends locales; rm -rf /var/lib/apt/lists/*; 	echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; 	locale-gen; 	locale -a | grep 'en_US.utf8' # buildkit
# Thu, 05 Nov 2026 09:44:43 GMT
ENV LANG=en_US.utf8
# Thu, 05 Nov 2026 09:44:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libnss-wrapper 		xz-utils 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 09:44:49 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 05 Nov 2026 09:44:50 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	mkdir -p /usr/local/share/keyrings/; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	gpg --batch --export --armor "$key" > /usr/local/share/keyrings/postgres.gpg.asc; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" # buildkit
# Thu, 05 Nov 2026 09:44:50 GMT
ENV PG_MAJOR=15
# Thu, 05 Nov 2026 09:44:50 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/15/bin
# Thu, 05 Nov 2026 09:44:50 GMT
ENV PG_VERSION=15.20-1.pgdg12+1
# Thu, 12 Nov 2026 21:46:23 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	aptRepo="[ signed-by=/usr/local/share/keyrings/postgres.gpg.asc ] http://apt.postgresql.org/pub/repos/apt bookworm-pgdg main $PG_MAJOR"; 	case "$dpkgArch" in 		amd64 | arm64 | ppc64el) 			echo "deb $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src $aptRepo" > /etc/apt/sources.list.d/pgdg.list; 						savedAptMark="$(apt-mark showmanual)"; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						apt-get update; 			apt-get install -y --no-install-recommends dpkg-dev; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			_update_repo() { 				dpkg-scanpackages . > Packages; 				apt-get -o Acquire::GzipIndexes=false update; 			}; 			_update_repo; 						nproc="$(nproc)"; 			export DEB_BUILD_OPTIONS="nocheck parallel=$nproc"; 			apt-get build-dep -y postgresql-common-dev; 			apt-get source --compile postgresql-common-dev; 			_update_repo; 			apt-get build-dep -y "postgresql-$PG_MAJOR=$PG_VERSION"; 			apt-get source --compile "postgresql-$PG_MAJOR=$PG_VERSION"; 									apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			_update_repo; 			grep '^Package: ' Packages; 			cd /; 			;; 	esac; 		apt-get install -y --no-install-recommends postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y --no-install-recommends 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +; 		postgres --version # buildkit
# Thu, 12 Nov 2026 21:46:32 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 12 Nov 2026 21:46:39 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 12 Nov 2026 21:46:39 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 12 Nov 2026 21:46:40 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Thu, 12 Nov 2026 21:46:40 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 12 Nov 2026 21:46:40 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 12 Nov 2026 21:46:40 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 12 Nov 2026 21:46:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Nov 2026 21:46:40 GMT
STOPSIGNAL SIGINT
# Thu, 12 Nov 2026 21:46:40 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 12 Nov 2026 21:46:40 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:a3dff645b91d02e56b5f761df11ba1d58ba63ceca28ce0fd26bcdff159295e70`  
		Last Modified: Thu, 05 Nov 2026 06:14:37 GMT  
		Size: 32.1 MB (32093560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fac527a03b12a4ef061fe86cf9bf9f331d9d2a646faeaf4f6bd742e4be53a3d`  
		Last Modified: Thu, 05 Nov 2026 09:46:17 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbb68f2b74629f7bc2883b1d76171acd260559f506e70bf9873842421ba639a6`  
		Last Modified: Thu, 05 Nov 2026 09:46:17 GMT  
		Size: 5.4 MB (5368619 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:512f9b881453b2367731d8c27d57b873d280d48d033dad92c81cc684e645a0e1`  
		Last Modified: Thu, 05 Nov 2026 09:46:17 GMT  
		Size: 1.2 MB (1208860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a41b4a019a3eda5638f0b42104cdca5674729d9dced8eb98954805ccbae47a0e`  
		Last Modified: Thu, 05 Nov 2026 09:46:17 GMT  
		Size: 8.1 MB (8066557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50d2accf232231cf51ad68e11a9d1f928917f05dcb5a5fc230b816bdc66372ec`  
		Last Modified: Thu, 05 Nov 2026 09:46:18 GMT  
		Size: 1.3 MB (1283640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee084a0d1299770ff481a2aebed29dd162772793bb7d8cc8f2dcb4cfce56edcc`  
		Last Modified: Thu, 05 Nov 2026 09:46:18 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da62f174315f3a2e4afd0843362834a16a2c34ca556e654e368ac25c12b7f3b2`  
		Last Modified: Thu, 05 Nov 2026 09:46:18 GMT  
		Size: 3.1 KB (3145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5906c5fd489c3bfb8508d6b1559c2759eea66472cb704e606da75cdcdf9ca5cd`  
		Last Modified: Thu, 12 Nov 2026 21:47:47 GMT  
		Size: 124.9 MB (124850915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e77e49ab1d32ce4c54cef24fddbbe6dce12c8054f9de054f940ff90b6986fd7`  
		Last Modified: Thu, 12 Nov 2026 21:47:43 GMT  
		Size: 9.8 KB (9843 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e1294cc01ab18ae32f220c816df19d2b319ab0f5582a69eb9d2ec489475c3a9`  
		Last Modified: Thu, 12 Nov 2026 21:47:43 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ee8c4db30c6e620fb05799c6f5e5d4cf685cb34da3829d78b6d5626eeb9928d`  
		Last Modified: Thu, 12 Nov 2026 21:47:43 GMT  
		Size: 171.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd5d38c5305292048c7f6f1773423d67d4b25a94f9bcde29054527fe0dbf2036`  
		Last Modified: Thu, 12 Nov 2026 21:47:45 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fba791197497f26da28080724a9f96cc6961f0790618ee0d67674bd244a85745`  
		Last Modified: Thu, 12 Nov 2026 21:47:45 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:15-bookworm` - unknown; unknown

```console
$ docker pull postgres@sha256:1b7b7a92407c6a3339be790801e980e82253f5b7f7cd1f9bd76a64a3a8ca8175
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6273894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31bd5b2d4d31bc34b9a21ce2776edf295b807974f892f892cee07a568ba8f3bf`

```dockerfile
```

-	Layers:
	-	`sha256:1ec58eec62a0c8335a2114a7efe9f836270a978baf2b6233af34c9c9746e5731`  
		Last Modified: Thu, 12 Nov 2026 21:47:44 GMT  
		Size: 6.2 MB (6220544 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a01ed60d4b32cc8236e044cf3b836b77f854f385d27762f6b935b0cda707dc7e`  
		Last Modified: Thu, 12 Nov 2026 21:47:43 GMT  
		Size: 53.4 KB (53350 bytes)  
		MIME: application/vnd.in-toto+json
